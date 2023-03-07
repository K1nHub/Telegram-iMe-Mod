package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ConfigurationInfo;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebStorage;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.wallet.WalletConstants;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.group.GroupMembersFilter;
import com.smedialink.model.translation.TranslationArgs;
import com.smedialink.p031ui.base.mvp.JavaMvpFragment;
import com.smedialink.p031ui.custom.cells.TextDetailWithRankCell;
import com.smedialink.p031ui.debug.DebugPresenter;
import com.smedialink.p031ui.debug.DebugView;
import com.smedialink.p031ui.profile.ProfilePresenter;
import com.smedialink.p031ui.profile.ProfileView;
import com.smedialink.p031ui.topics.TopicProfileCell;
import com.smedialink.p031ui.topics.TopicsAlert;
import com.smedialink.services.FilteredChatParticipantsProcessingService;
import com.smedialink.storage.domain.model.common.Environment;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.fork.controller.ForkCommonController;
import org.fork.enums.ChatProfileTelegramIdMode;
import org.fork.enums.FilterActivityType;
import org.fork.enums.ParticipantsActionType;
import org.fork.enums.TranslationDialogType;
import org.fork.p046ui.dialog.AccountLevelAlert;
import org.fork.p046ui.dialog.DeleteServiceMessagesBottomSheet;
import org.fork.p046ui.dialog.SettingsHelpBottomSheet;
import org.fork.p046ui.dialog.TranslateAlert;
import org.fork.p046ui.fragment.SettingsToolsActivity;
import org.fork.p046ui.view.PinnedPlayerView;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.PhoneFormat.C3078PhoneFormat;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.AboutLinkCell;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Cells.DividerCell;
import org.telegram.p048ui.Cells.DrawerProfileCell;
import org.telegram.p048ui.Cells.GraySectionCell;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.NotificationsCheckCell;
import org.telegram.p048ui.Cells.RadioColorCell;
import org.telegram.p048ui.Cells.SettingsSearchCell;
import org.telegram.p048ui.Cells.SettingsSuggestionCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextDetailCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.UserCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.ChatRightsEditActivity;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.AnimatedEmojiDrawable;
import org.telegram.p048ui.Components.AnimatedFileDrawable;
import org.telegram.p048ui.Components.AnimationProperties;
import org.telegram.p048ui.Components.AudioPlayerAlert;
import org.telegram.p048ui.Components.AutoDeletePopupWrapper;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackButtonMenu;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.Bulletin;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.CanvasButton;
import org.telegram.p048ui.Components.ChatActivityInterface;
import org.telegram.p048ui.Components.ChatNotificationsPopupWrapper;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.CrossfadeDrawable;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.EmojiPacksAlert;
import org.telegram.p048ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p048ui.Components.FragmentContextView;
import org.telegram.p048ui.Components.HintView;
import org.telegram.p048ui.Components.ImageUpdater;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.GiftPremiumBottomSheet;
import org.telegram.p048ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p048ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p048ui.Components.Premium.ProfilePremiumCell;
import org.telegram.p048ui.Components.ProfileGalleryView;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RadialProgressView;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.ScamDrawable;
import org.telegram.p048ui.Components.ShareAlert;
import org.telegram.p048ui.Components.SharedMediaLayout;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
import org.telegram.p048ui.Components.StickerEmptyView;
import org.telegram.p048ui.Components.TimerDrawable;
import org.telegram.p048ui.Components.TypefaceSpan;
import org.telegram.p048ui.Components.UndoView;
import org.telegram.p048ui.Components.VectorAvatarThumbDrawable;
import org.telegram.p048ui.Components.voip.VoIPHelper;
import org.telegram.p048ui.DialogsActivity;
import org.telegram.p048ui.GroupCreateActivity;
import org.telegram.p048ui.PhotoViewer;
import org.telegram.p048ui.ProfileActivity;
import org.telegram.p048ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInfo;
import org.telegram.tgnet.TLRPC$ChannelLocation;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$ChannelParticipantsFilter;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$ChatParticipants;
import org.telegram.tgnet.TLRPC$ChatPhoto;
import org.telegram.tgnet.TLRPC$DecryptedMessageAction;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$Page;
import org.telegram.tgnet.TLRPC$PageBlock;
import org.telegram.tgnet.TLRPC$PageListItem;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$TL_account_getPassword;
import org.telegram.tgnet.TLRPC$TL_account_password;
import org.telegram.tgnet.TLRPC$TL_account_updateEmojiStatus;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_channelFull;
import org.telegram.tgnet.TLRPC$TL_channelLocation;
import org.telegram.tgnet.TLRPC$TL_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_channelParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_channelParticipantCreator;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsRecent;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipants;
import org.telegram.tgnet.TLRPC$TL_channels_getParticipants;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$TL_chatChannelParticipant;
import org.telegram.tgnet.TLRPC$TL_chatFull;
import org.telegram.tgnet.TLRPC$TL_chatParticipant;
import org.telegram.tgnet.TLRPC$TL_chatParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_chatParticipants;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionSetMessageTTL;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusEmpty;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_help_dismissSuggestion;
import org.telegram.tgnet.TLRPC$TL_inputGroupCall;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_inputPhoto;
import org.telegram.tgnet.TLRPC$TL_messageEncryptedAction;
import org.telegram.tgnet.TLRPC$TL_messages_getWebPage;
import org.telegram.tgnet.TLRPC$TL_messages_reportReaction;
import org.telegram.tgnet.TLRPC$TL_pageBlockAnchor;
import org.telegram.tgnet.TLRPC$TL_pageBlockList;
import org.telegram.tgnet.TLRPC$TL_pageBlockParagraph;
import org.telegram.tgnet.TLRPC$TL_pageListItemText;
import org.telegram.tgnet.TLRPC$TL_peerNotifySettings;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$TL_photos_photo;
import org.telegram.tgnet.TLRPC$TL_photos_updateProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_photos_uploadProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_userEmpty;
import org.telegram.tgnet.TLRPC$TL_userProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_userProfilePhotoEmpty;
import org.telegram.tgnet.TLRPC$TL_username;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
import org.telegram.tgnet.TLRPC$UserStatus;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.TLRPC$WebPage;
import p034j$.util.function.Consumer;
/* renamed from: org.telegram.ui.ProfileActivity */
/* loaded from: classes5.dex */
public class ProfileActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate, DialogsActivity.DialogsActivityDelegate, SharedMediaLayout.SharedMediaPreloaderDelegate, ImageUpdater.ImageUpdaterDelegate, SharedMediaLayout.Delegate, ProfileView, DebugView, OnLoadMoreListener {
    private static final int[] observers = {NotificationCenter.topicsDidLoad};
    private Property<C3222ActionBar, Float> ACTIONBAR_HEADER_PROGRESS;
    private final Property<ProfileActivity, Float> HEADER_SHADOW;
    private AboutLinkCell aboutLinkCell;
    private AccountLevelInformation accountLevelInformation;
    private int actionBarAnimationColorFrom;
    private Paint actionBarBackgroundPaint;
    private int addMemberRow;
    private int addToContactsRow;
    private int addToGroupButtonRow;
    private int addToGroupInfoRow;
    private int administratorsRow;
    private boolean albumMode;
    private boolean allowProfileAnimation;
    private boolean allowPullingDown;
    private DrawerProfileCell.AnimatedStatusView animatedStatusView;
    private ActionBarMenuItem animatingItem;
    private ActionBarMenuSubItem autoDeleteItem;
    TimerDrawable autoDeleteItemDrawable;
    AutoDeletePopupWrapper autoDeletePopupWrapper;
    private TLRPC$FileLocation avatar;
    private AnimatorSet avatarAnimation;
    private float avatarAnimationProgress;
    private TLRPC$FileLocation avatarBig;
    private int avatarColor;
    private FrameLayout avatarContainer;
    private FrameLayout avatarContainer2;
    private AvatarDrawable avatarDrawable;
    private AvatarImageView avatarImage;
    private RadialProgressView avatarProgressView;
    private float avatarScale;
    private float avatarX;
    private float avatarY;
    private ProfileGalleryView avatarsViewPager;
    private PagerIndicatorView avatarsViewPagerIndicatorView;
    private long banFromGroup;
    private int bioRow;
    private int blockedUsersRow;
    private TLRPC$BotInfo botInfo;
    private int bottomPaddingRow;
    private ActionBarMenuItem callItem;
    private boolean callItemVisible;
    private RLottieDrawable cameraDrawable;
    private boolean canSearchMembers;
    private RLottieDrawable cellCameraDrawable;
    private int channelInfoRow;
    private long chatId;
    private TLRPC$ChatFull chatInfo;
    private int chatRow;
    private int clearLogsRow;
    private NestedFrameLayout contentView;
    private boolean creatingChat;
    private CharSequence currentBio;
    private TLRPC$ChannelParticipant currentChannelParticipant;
    private TLRPC$Chat currentChat;
    private TLRPC$EncryptedChat currentEncryptedChat;
    private float currentExpanAnimatorFracture;
    private float currentExpandAnimatorValue;
    private TLRPC$TL_account_password currentPassword;
    private float customAvatarProgress;
    private float customPhotoOffset;
    private int dataRow;
    private int debugHeaderRow;
    @InjectPresenter
    public DebugPresenter debugPresenter;
    private int devicesRow;
    private int devicesSectionRow;
    private long dialogId;
    private int dialogIdRow;
    private boolean disableProfileAnimation;
    private boolean doNotSetForeground;
    private ActionBarMenuItem editItem;
    private boolean editItemVisible;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] emojiStatusDrawable;
    private int emptyRow;
    private StickerEmptyView emptyView;
    private ValueAnimator expandAnimator;
    private float[] expandAnimatorValues;
    private boolean expandPhoto;
    private float expandProgress;
    private float extraHeight;
    private ImageReceiver fallbackImage;
    private int faqRow;
    private int filtersRow;
    private boolean firstLayout;
    private boolean fragmentOpened;
    private boolean fragmentViewAttached;
    private HintView fwdRestrictedHint;
    private boolean hasCustomPhoto;
    private boolean hasFallbackPhoto;
    private boolean hasVoiceChatItem;
    private AnimatorSet headerAnimatorSet;
    protected float headerShadowAlpha;
    private AnimatorSet headerShadowAnimatorSet;
    private int helpHeaderRow;
    private int helpSectionCell;
    private ImageUpdater imageUpdater;
    private int infoHeaderRow;
    private int infoSectionRow;
    private float initialAnimationExtraHeight;
    private boolean invalidateScroll;
    private boolean isBot;
    public boolean isFragmentOpened;
    private boolean isFragmentPhoneNumber;
    private boolean isInLandscapeMode;
    private boolean[] isOnline;
    private boolean isPulledDown;
    private boolean isQrItemVisible;
    private boolean isTopic;
    private int joinRow;
    private int languageRow;
    private float lastEmojiStatusProgress;
    private int lastMeasuredContentHeight;
    private int lastMeasuredContentWidth;
    private int lastSectionRow;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private int listContentHeight;
    private RecyclerListView listView;
    private float listViewVelocityY;
    private boolean loadingUsers;
    private int locationRow;
    private Drawable lockIconDrawable;
    private AudioPlayerAlert.ClippingTextViewSwitcher mediaCounterTextView;
    private float mediaHeaderAnimationProgress;
    private boolean mediaHeaderVisible;
    private int membersEndRow;
    private GroupMembersFilter membersFilter;
    private int membersHeaderRow;
    private int membersSectionRow;
    private int membersStartRow;
    private long mergeDialogId;
    private SimpleTextView[] nameTextView;
    private String nameTextViewRightDrawableContentDescription;
    private float nameX;
    private float nameY;
    private int navigationBarAnimationColorFrom;
    private boolean needSendMessage;
    private boolean needTimerImage;
    private int notificationRow;
    private int notificationsDividerRow;
    HashSet<Integer> notificationsExceptionTopics;
    private int notificationsRow;
    private int notificationsSimpleRow;
    private int numberRow;
    private int numberSectionRow;
    private int onlineCount;
    private SimpleTextView[] onlineTextView;
    private float onlineX;
    private float onlineY;
    private boolean openAnimationInProgress;
    private boolean openingAvatar;
    private ActionBarMenuItem otherItem;
    private int overlayCountVisible;
    private OverlaysView overlaysView;
    private LongSparseArray<TLRPC$ChatParticipant> participantsMap;
    private int passwordSuggestionRow;
    private int passwordSuggestionSectionRow;
    private int phoneRow;
    private int phoneSuggestionRow;
    private int phoneSuggestionSectionRow;
    float photoDescriptionProgress;
    PinchToZoomHelper pinchToZoomHelper;
    private int playProfileAnimation;
    private int policyRow;
    private HashMap<Integer, Integer> positionToOffset;
    private CrossfadeDrawable premiumCrossfadeDrawable;
    private int premiumRow;
    private int premiumSectionsRow;
    private Drawable premiumStarDrawable;
    @InjectPresenter
    public ProfilePresenter presenter;
    private ImageLocation prevLoadedImageLocation;
    ChatActivityInterface previousTransitionFragment;
    private int privacyRow;
    private int profileTopicHeaderRow;
    private int profileTopicRow;
    private int profileTopicSectionRow;
    boolean profileTransitionInProgress;
    private PhotoViewer.PhotoViewerProvider provider;
    private ActionBarMenuItem qrItem;
    private AnimatorSet qrItemAnimation;
    private int questionRow;
    private boolean recreateMenuAfterAnimation;
    private Rect rect;
    private int reportDividerRow;
    private long reportReactionFromDialogId;
    private int reportReactionMessageId;
    private int reportReactionRow;
    private int reportRow;
    private boolean reportSpam;
    private Theme.ResourcesProvider resourcesProvider;
    private int rowCount;
    int savedScrollOffset;
    int savedScrollPosition;
    private ScamDrawable scamDrawable;
    private AnimatorSet scrimAnimatorSet;
    private Paint scrimPaint;
    private View scrimView;
    private boolean scrolling;
    private SearchAdapter searchAdapter;
    private ActionBarMenuItem searchItem;
    private RecyclerListView searchListView;
    private boolean searchMode;
    private int searchTransitionOffset;
    private float searchTransitionProgress;
    private Animator searchViewTransition;
    private int secretSettingsSectionRow;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
    private long selectedUser;
    private int sendLastLogsRow;
    private int sendLogsRow;
    private int sendMessageRow;
    private ActionBarMenuItem serviceMessagesItem;
    private boolean serviceMessagesItemVisible;
    private TextCell setAvatarCell;
    private int setAvatarRow;
    private int setAvatarSectionRow;
    private int setUsernameRow;
    private int settingsHelpRow;
    private int settingsKeyRow;
    private int settingsSectionRow;
    private int settingsSectionRow2;
    private int settingsTimerRow;
    private int settingsToolsRow;
    private int settingsTopicsRow;
    private SharedMediaLayout sharedMediaLayout;
    private boolean sharedMediaLayoutAttached;
    private SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
    private int sharedMediaRow;
    private boolean showAddToContacts;
    private ArrayList<Integer> sortedUsers;
    private int stickersRow;
    private int subscribersRequestsRow;
    private int subscribersRow;
    private int switchBackendRow;
    private ImageView timeItem;
    private TimerDrawable timerDrawable;
    private float titleAnimationsYDiff;
    private TopView topView;
    private int topicId;
    private ImageView transferButton;
    private boolean transitionAnimationInProress;
    private int transitionIndex;
    private View transitionOnlineText;
    private ImageView ttlIconView;
    private int unblockRow;
    private UndoView undoView;
    private ImageLocation uploadingImageLocation;
    private boolean userBlocked;
    private long userId;
    private TLRPC$UserFull userInfo;
    private int userInfoRow;
    private int usernameRow;
    private boolean usersEndReached;
    private int usersForceShowingIn;
    private String vcardFirstName;
    private String vcardLastName;
    private String vcardPhone;
    private Drawable verifiedCheckDrawable;
    private CrossfadeDrawable verifiedCrossfadeDrawable;
    private Drawable verifiedDrawable;
    private int versionRow;
    private ActionBarMenuItem videoCallItem;
    private boolean videoCallItemVisible;
    private final ArrayList<TLRPC$ChatParticipant> visibleChatParticipants;
    private final ArrayList<Integer> visibleSortedUsers;
    private Paint whitePaint;
    private RLottieImageView writeButton;
    private AnimatorSet writeButtonAnimation;

    private boolean isQrNeedVisible() {
        return true;
    }

    @Override // org.telegram.p048ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ boolean canFinishFragment() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
    }

    @Override // org.telegram.p048ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ void didUploadFailed() {
        ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
    }

    @Override // org.telegram.p048ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ String getInitialSearchString() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$getInitialSearchString(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$31500(ProfileActivity profileActivity, View view) {
        profileActivity.onTextDetailCellImageClicked(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$7300(ProfileActivity profileActivity) {
        profileActivity.onWriteButtonClick();
    }

    static /* synthetic */ int access$8712(ProfileActivity profileActivity, int i) {
        int i2 = profileActivity.listContentHeight + i;
        profileActivity.listContentHeight = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$providePresenter$0() {
        return ParametersHolderKt.parametersOf(Long.valueOf(this.userId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public ProfilePresenter providePresenter() {
        return (ProfilePresenter) KoinJavaComponent.get(ProfilePresenter.class, null, new Function0() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$providePresenter$0;
                lambda$providePresenter$0 = ProfileActivity.this.lambda$providePresenter$0();
                return lambda$providePresenter$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public DebugPresenter provideDebugPresenter() {
        return (DebugPresenter) KoinJavaComponent.get(DebugPresenter.class);
    }

    public void needLayoutTextPublic(float f) {
        needLayoutText(f);
    }

    public void showChooseMembersFilterDialog() {
        if (getParentActivity() == null) {
            return;
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3158R.string.contacts_filter_header));
        TLRPC$Chat tLRPC$Chat = this.currentChat;
        boolean z = tLRPC$Chat != null && ChatObject.hasAdminRights(tLRPC$Chat);
        TLRPC$Chat tLRPC$Chat2 = this.currentChat;
        List<GroupMembersFilter> availableFilters = GroupMembersFilter.getAvailableFilters(z, tLRPC$Chat2 != null && tLRPC$Chat2.megagroup);
        LinearLayout linearLayout = new LinearLayout(getParentActivity());
        linearLayout.setOrientation(1);
        builder.setView(linearLayout);
        for (int i = 0; i < availableFilters.size(); i++) {
            GroupMembersFilter groupMembersFilter = availableFilters.get(i);
            RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setTag(groupMembersFilter);
            radioColorCell.setBackground(Theme.getSelectorDrawable(false));
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(LocaleController.getInternalString(groupMembersFilter.getTitle()), this.membersFilter == groupMembersFilter);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ProfileActivity.this.lambda$showChooseMembersFilterDialog$1(builder, view);
                }
            });
        }
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChooseMembersFilterDialog$1(AlertDialog.Builder builder, View view) {
        this.membersFilter = (GroupMembersFilter) view.getTag();
        if (this.currentChat.megagroup) {
            this.usersEndReached = false;
            this.loadingUsers = false;
            this.participantsMap = new LongSparseArray<>();
            getConnectionsManager().cancelRequestsForGuid(this.classGuid);
            getChannelParticipants(true);
        } else {
            this.presenter.setNotMegagroupParticipants(false, this.chatInfo.participants.participants);
            this.presenter.filterNotMegagroupParticipants(this.membersFilter);
        }
        builder.getDismissRunnable().run();
    }

    public void processFilteredMembers() {
        GroupMembersFilter groupMembersFilter = this.membersFilter;
        if (groupMembersFilter == GroupMembersFilter.BLOCKED) {
            createMenuForBlockedParticipantsAction();
        } else if (groupMembersFilter == GroupMembersFilter.DELETED) {
            showMembersActionConfirmationAlert(ParticipantsActionType.DELETE);
        }
    }

    @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
    public void onLoadMore() {
        if (this.participantsMap == null || this.usersEndReached) {
            return;
        }
        getChannelParticipants(false);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void onFilteredMembers(ArrayList<TLRPC$ChatParticipant> arrayList) {
        this.chatInfo.participants.participants = arrayList;
        updateListAnimated(true);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showUserAccountLevel(AccountLevelInformation accountLevelInformation) {
        this.accountLevelInformation = accountLevelInformation;
        this.listAdapter.notifyItemChanged(this.dialogIdRow);
    }

    @Override // com.smedialink.p031ui.debug.DebugView
    public void showConfirmSwitchEnvironmentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        showDialog(DialogUtils.createDialog(getParentActivity(), dialogModel, callbacks$Callback, null));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return this.imageUpdater == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showChooseWalletEnvironmentDialog() {
        if (this.presenter != null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.formatStringInternal(C3158R.string.debug_option_choose_wallet_environment, this.debugPresenter.getCurrentWalletEnvironment()));
            builder.setItems(Environment.getNames(), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ProfileActivity.this.lambda$showChooseWalletEnvironmentDialog$2(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            showDialog(builder.create());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChooseWalletEnvironmentDialog$2(DialogInterface dialogInterface, int i) {
        this.debugPresenter.switchWalletEnvironment(Environment.values()[i]);
    }

    private void showMembersActionConfirmationAlert(final ParticipantsActionType participantsActionType) {
        AlertsCreator.showConfirmationDialog(this, getParentActivity(), null, LocaleController.getInternalString(participantsActionType.getConfirmationDescriptionTextResId()), LocaleController.getString(participantsActionType.getConfirmationButtonTextKey(), participantsActionType.getConfirmationButtonTextResId()), true, null, new Callbacks$Callback1() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda43
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ProfileActivity.this.lambda$showMembersActionConfirmationAlert$3(participantsActionType, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMembersActionConfirmationAlert$3(ParticipantsActionType participantsActionType, Boolean bool) {
        if (bool.booleanValue()) {
            startParticipantsProcessingService(participantsActionType);
        }
    }

    private void createMenuForBlockedParticipantsAction() {
        int i;
        String str;
        CharSequence[] charSequenceArr = new CharSequence[2];
        if (this.currentChat.isChannel()) {
            i = C3158R.string.ChannelAddToChannel;
            str = "ChannelAddToChannel";
        } else {
            i = C3158R.string.ChannelAddToGroup;
            str = "ChannelAddToGroup";
        }
        charSequenceArr[0] = LocaleController.getString(str, i);
        charSequenceArr[1] = LocaleController.getString("ChannelDeleteFromList", C3158R.string.ChannelDeleteFromList);
        int[] iArr = {C3158R.C3160drawable.msg_contact_add, C3158R.C3160drawable.msg_delete};
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ProfileActivity.this.lambda$createMenuForBlockedParticipantsAction$4(dialogInterface, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForBlockedParticipantsAction$4(DialogInterface dialogInterface, int i) {
        showMembersActionConfirmationAlert(i == 0 ? ParticipantsActionType.RETURN : ParticipantsActionType.UNBLOCK);
    }

    private void startParticipantsProcessingService(ParticipantsActionType participantsActionType) {
        if (AndroidUtilities.isServiceRunning(FilteredChatParticipantsProcessingService.class)) {
            showToast(LocaleController.getInternalString(C3158R.string.already_processing));
            return;
        }
        Intent intent = new Intent(ApplicationLoader.applicationContext, FilteredChatParticipantsProcessingService.class);
        intent.putExtra("chat_id", this.chatId);
        intent.putExtra("selected_filter_name", this.membersFilter.name());
        intent.putExtra("selected_participant_action", participantsActionType.name());
        ApplicationLoader.applicationContext.startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAccountLevelDialog() {
        showDialog(new AccountLevelAlert(getParentActivity(), this.accountLevelInformation, new AccountLevelAlert.OnVisibilityChangedListener() { // from class: org.telegram.ui.ProfileActivity.1
            @Override // org.fork.p046ui.dialog.AccountLevelAlert.OnVisibilityChangedListener
            public void onChanged(boolean z) {
                ProfileActivity.this.presenter.changeRankVisibility(z);
            }
        }).create());
    }

    private void onTransferButtonClicked() {
        if (this.playProfileAnimation != 0) {
            BaseFragment baseFragment = this.parentLayout.getFragmentStack().get(this.parentLayout.getFragmentStack().size() - 2);
            if (baseFragment instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) baseFragment;
                if (chatActivity.getDialogId() == this.userId) {
                    chatActivity.openAttachWallet();
                    finishFragment();
                    return;
                }
            }
        }
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
        if (user == null || (user instanceof TLRPC$TL_userEmpty)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", this.userId);
        bundle.putBoolean("open_wallet", true);
        if (!AndroidUtilities.isTablet()) {
            NotificationCenter notificationCenter = getNotificationCenter();
            int i = NotificationCenter.closeChats;
            notificationCenter.removeObserver(this, i);
            getNotificationCenter().postNotificationName(i, new Object[0]);
        }
        int i2 = getArguments().getInt("nearby_distance", -1);
        if (i2 >= 0) {
            bundle.putInt("nearby_distance", i2);
        }
        ChatActivity chatActivity2 = new ChatActivity(bundle);
        chatActivity2.setPreloadedSticker(getMediaDataController().getGreetingsSticker(), false);
        presentFragment(chatActivity2, true);
        if (AndroidUtilities.isTablet()) {
            finishFragment();
        }
    }

    private String getBotApiDialogIdText() {
        long dialogId = getDialogId();
        if (this.dialogId != 0 || this.userId != 0) {
            return String.valueOf(dialogId);
        }
        String valueOf = String.valueOf(Math.abs(this.chatId));
        if (ChatObject.isMegagroup(this.currentAccount, this.chatId) || ChatObject.isChannel(this.chatId, this.currentAccount)) {
            return "-100" + valueOf;
        }
        return "-" + valueOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDialogIdText() {
        if (ChatProfileTelegramIdMode.isTelegramIdMode(SharedConfig.selectedChatProfileTelegramIdMode)) {
            return String.valueOf(Math.abs(getDialogId()));
        }
        return getBotApiDialogIdText();
    }

    public int getTopicId() {
        return this.topicId;
    }

    /* renamed from: org.telegram.ui.ProfileActivity$AvatarImageView */
    /* loaded from: classes5.dex */
    public static class AvatarImageView extends BackupImageView {
        ProfileGalleryView avatarsViewPager;
        boolean drawForeground;
        private ImageReceiver.BitmapHolder drawableHolder;
        private float foregroundAlpha;
        private ImageReceiver foregroundImageReceiver;
        private final Paint placeholderPaint;
        private final RectF rect;

        public void setAvatarsViewPager(ProfileGalleryView profileGalleryView) {
            this.avatarsViewPager = profileGalleryView;
        }

        public AvatarImageView(Context context) {
            super(context);
            this.rect = new RectF();
            this.drawForeground = true;
            this.foregroundImageReceiver = new ImageReceiver(this);
            Paint paint = new Paint(1);
            this.placeholderPaint = paint;
            paint.setColor(-16777216);
        }

        public void setForegroundImage(ImageLocation imageLocation, String str, Drawable drawable) {
            this.foregroundImageReceiver.setImage(imageLocation, str, drawable, 0L, (String) null, (Object) null, 0);
            ImageReceiver.BitmapHolder bitmapHolder = this.drawableHolder;
            if (bitmapHolder != null) {
                bitmapHolder.release();
                this.drawableHolder = null;
            }
        }

        public void setForegroundImageDrawable(ImageReceiver.BitmapHolder bitmapHolder) {
            if (bitmapHolder != null) {
                this.foregroundImageReceiver.setImageBitmap(bitmapHolder.drawable);
            }
            ImageReceiver.BitmapHolder bitmapHolder2 = this.drawableHolder;
            if (bitmapHolder2 != null) {
                bitmapHolder2.release();
                this.drawableHolder = null;
            }
            this.drawableHolder = bitmapHolder;
        }

        public float getForegroundAlpha() {
            return this.foregroundAlpha;
        }

        public void setForegroundAlpha(float f) {
            this.foregroundAlpha = f;
            invalidate();
        }

        public void clearForeground() {
            AnimatedFileDrawable animation = this.foregroundImageReceiver.getAnimation();
            if (animation != null) {
                animation.removeSecondParentView(this);
            }
            this.foregroundImageReceiver.clearImage();
            ImageReceiver.BitmapHolder bitmapHolder = this.drawableHolder;
            if (bitmapHolder != null) {
                bitmapHolder.release();
                this.drawableHolder = null;
            }
            this.foregroundAlpha = BitmapDescriptorFactory.HUE_RED;
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.BackupImageView, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.foregroundImageReceiver.onDetachedFromWindow();
            ImageReceiver.BitmapHolder bitmapHolder = this.drawableHolder;
            if (bitmapHolder != null) {
                bitmapHolder.release();
                this.drawableHolder = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.BackupImageView, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.foregroundImageReceiver.onAttachedToWindow();
        }

        @Override // org.telegram.p048ui.Components.BackupImageView
        public void setRoundRadius(int i) {
            super.setRoundRadius(i);
            this.foregroundImageReceiver.setRoundRadius(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.BackupImageView, android.view.View
        public void onDraw(Canvas canvas) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = animatedEmojiDrawable != null ? animatedEmojiDrawable.getImageReceiver() : this.imageReceiver;
            if (imageReceiver != null && (this.foregroundAlpha < 1.0f || !this.drawForeground)) {
                imageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                imageReceiver.draw(canvas);
            }
            if (this.foregroundAlpha <= BitmapDescriptorFactory.HUE_RED || !this.drawForeground) {
                return;
            }
            if (this.foregroundImageReceiver.getDrawable() != null) {
                this.foregroundImageReceiver.setImageCoords(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                this.foregroundImageReceiver.setAlpha(this.foregroundAlpha);
                this.foregroundImageReceiver.draw(canvas);
                return;
            }
            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            this.placeholderPaint.setAlpha((int) (this.foregroundAlpha * 255.0f));
            float f = this.foregroundImageReceiver.getRoundRadius()[0];
            canvas.drawRoundRect(this.rect, f, f, this.placeholderPaint);
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            ProfileGalleryView profileGalleryView = this.avatarsViewPager;
            if (profileGalleryView != null) {
                profileGalleryView.invalidate();
            }
        }

        public void drawForeground(boolean z) {
            this.drawForeground = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$TopView */
    /* loaded from: classes5.dex */
    public class TopView extends View {
        private int currentColor;
        private Paint paint;

        public TopView(Context context) {
            super(context);
            this.paint = new Paint();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i) + AndroidUtilities.m50dp(3));
        }

        @Override // android.view.View
        public void setBackgroundColor(int i) {
            if (i != this.currentColor) {
                this.currentColor = i;
                this.paint.setColor(i);
                invalidate();
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float currentActionBarHeight = ProfileActivity.this.extraHeight + C3222ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + ProfileActivity.this.searchTransitionOffset;
            int i = (int) ((1.0f - ProfileActivity.this.mediaHeaderAnimationProgress) * currentActionBarHeight);
            if (i != 0) {
                ChatActivityInterface chatActivityInterface = ProfileActivity.this.previousTransitionFragment;
                if (chatActivityInterface != null && chatActivityInterface.getContentView() != null) {
                    Rect rect = AndroidUtilities.rectTmp2;
                    rect.set(0, 0, getMeasuredWidth(), i);
                    if (ProfileActivity.this.previousTransitionFragment.getActionBar() != null && !ProfileActivity.this.previousTransitionFragment.getContentView().blurWasDrawn() && ProfileActivity.this.previousTransitionFragment.getActionBar().getBackground() == null) {
                        this.paint.setColor(Theme.getColor("actionBarDefault", ProfileActivity.this.previousTransitionFragment.getResourceProvider()));
                        canvas.drawRect(rect, this.paint);
                    } else {
                        ProfileActivity.this.previousTransitionFragment.getContentView().drawBlurRect(canvas, getY(), rect, ProfileActivity.this.previousTransitionFragment.getActionBar().blurScrimPaint, true);
                    }
                }
                this.paint.setColor(this.currentColor);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), i, this.paint);
                ChatActivityInterface chatActivityInterface2 = ProfileActivity.this.previousTransitionFragment;
                if (chatActivityInterface2 != null) {
                    C3222ActionBar actionBar = chatActivityInterface2.getActionBar();
                    ActionBarMenu actionBarMenu = actionBar.menu;
                    if (actionBarMenu == null) {
                        actionBarMenu = actionBar.createMenu();
                    }
                    ActionBarMenu actionBarMenu2 = actionBarMenu;
                    int save = canvas.save();
                    canvas.translate(actionBar.getX() + actionBarMenu2.getX(), actionBar.getY() + actionBarMenu2.getY());
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, actionBarMenu2.getMeasuredWidth(), actionBarMenu2.getMeasuredHeight(), (int) ((1.0f - ProfileActivity.this.avatarAnimationProgress) * 255.0f), 31);
                    actionBarMenu2.draw(canvas);
                    canvas.restoreToCount(save);
                }
            }
            if (i != currentActionBarHeight) {
                this.paint.setColor(ProfileActivity.this.getThemedColor("windowBackgroundWhite"));
                Rect rect2 = AndroidUtilities.rectTmp2;
                rect2.set(0, i, getMeasuredWidth(), (int) currentActionBarHeight);
                ProfileActivity.this.contentView.drawBlurRect(canvas, getY(), rect2, this.paint, true);
            }
            if (((BaseFragment) ProfileActivity.this).parentLayout != null) {
                ((BaseFragment) ProfileActivity.this).parentLayout.drawHeaderShadow(canvas, (int) (ProfileActivity.this.headerShadowAlpha * 255.0f), (int) currentActionBarHeight);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$OverlaysView */
    /* loaded from: classes5.dex */
    public class OverlaysView extends View implements ProfileGalleryView.Callback {
        private float alpha;
        private float[] alphas;
        private final ValueAnimator animator;
        private final float[] animatorValues;
        private final Paint backgroundPaint;
        private final Paint barPaint;
        private final GradientDrawable bottomOverlayGradient;
        private final Rect bottomOverlayRect;
        private float currentAnimationValue;
        private int currentLoadingAnimationDirection;
        private float currentLoadingAnimationProgress;
        private float currentProgress;
        private boolean isOverlaysVisible;
        private long lastTime;
        private final float[] pressedOverlayAlpha;
        private final GradientDrawable[] pressedOverlayGradient;
        private final boolean[] pressedOverlayVisible;
        private int previousSelectedPotision;
        private float previousSelectedProgress;
        private final RectF rect;
        private final Paint selectedBarPaint;
        private int selectedPosition;
        private final int statusBarHeight;
        private final GradientDrawable topOverlayGradient;
        private final Rect topOverlayRect;

        public OverlaysView(Context context) {
            super(context);
            this.statusBarHeight = (!((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() || ((BaseFragment) ProfileActivity.this).inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight;
            this.topOverlayRect = new Rect();
            this.bottomOverlayRect = new Rect();
            this.rect = new RectF();
            this.animatorValues = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
            this.pressedOverlayGradient = new GradientDrawable[2];
            this.pressedOverlayVisible = new boolean[2];
            this.pressedOverlayAlpha = new float[2];
            this.alpha = BitmapDescriptorFactory.HUE_RED;
            this.alphas = null;
            this.previousSelectedPotision = -1;
            this.currentLoadingAnimationDirection = 1;
            setVisibility(8);
            Paint paint = new Paint(1);
            this.barPaint = paint;
            paint.setColor(1442840575);
            Paint paint2 = new Paint(1);
            this.selectedBarPaint = paint2;
            paint2.setColor(-1);
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1107296256, 0});
            this.topOverlayGradient = gradientDrawable;
            gradientDrawable.setShape(0);
            GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{1107296256, 0});
            this.bottomOverlayGradient = gradientDrawable2;
            gradientDrawable2.setShape(0);
            int i = 0;
            while (i < 2) {
                this.pressedOverlayGradient[i] = new GradientDrawable(i == 0 ? GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.RIGHT_LEFT, new int[]{838860800, 0});
                this.pressedOverlayGradient[i].setShape(0);
                i++;
            }
            Paint paint3 = new Paint(1);
            this.backgroundPaint = paint3;
            paint3.setColor(-16777216);
            paint3.setAlpha(66);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.animator = ofFloat;
            ofFloat.setDuration(250L);
            ofFloat.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$OverlaysView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ProfileActivity.OverlaysView.this.lambda$new$0(valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter(ProfileActivity.this) { // from class: org.telegram.ui.ProfileActivity.OverlaysView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (OverlaysView.this.isOverlaysVisible) {
                        return;
                    }
                    OverlaysView.this.setVisibility(8);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    OverlaysView.this.setVisibility(0);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
            float[] fArr = this.animatorValues;
            float animatedFraction = valueAnimator.getAnimatedFraction();
            this.currentAnimationValue = animatedFraction;
            setAlphaValue(AndroidUtilities.lerp(fArr, animatedFraction), true);
        }

        public void saveCurrentPageProgress() {
            this.previousSelectedProgress = this.currentProgress;
            this.previousSelectedPotision = this.selectedPosition;
            this.currentLoadingAnimationProgress = BitmapDescriptorFactory.HUE_RED;
            this.currentLoadingAnimationDirection = 1;
        }

        public void setAlphaValue(float f, boolean z) {
            if (Build.VERSION.SDK_INT > 18) {
                int i = (int) (255.0f * f);
                this.topOverlayGradient.setAlpha(i);
                this.bottomOverlayGradient.setAlpha(i);
                this.backgroundPaint.setAlpha((int) (66.0f * f));
                this.barPaint.setAlpha((int) (85.0f * f));
                this.selectedBarPaint.setAlpha(i);
                this.alpha = f;
            } else {
                setAlpha(f);
            }
            if (!z) {
                this.currentAnimationValue = f;
            }
            invalidate();
        }

        public boolean isOverlaysVisible() {
            return this.isOverlaysVisible;
        }

        public void setOverlaysVisible() {
            this.isOverlaysVisible = true;
            setVisibility(0);
        }

        public void setOverlaysVisible(boolean z, float f) {
            if (z != this.isOverlaysVisible) {
                this.isOverlaysVisible = z;
                this.animator.cancel();
                float lerp = AndroidUtilities.lerp(this.animatorValues, this.currentAnimationValue);
                if (z) {
                    this.animator.setDuration(((1.0f - lerp) * 250.0f) / f);
                } else {
                    this.animator.setDuration((250.0f * lerp) / f);
                }
                float[] fArr = this.animatorValues;
                fArr[0] = lerp;
                fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                this.animator.start();
            }
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            int currentActionBarHeight = this.statusBarHeight + C3222ActionBar.getCurrentActionBarHeight();
            this.topOverlayRect.set(0, 0, i, (int) (currentActionBarHeight * 0.5f));
            this.bottomOverlayRect.set(0, (int) (i2 - (AndroidUtilities.m51dp(72.0f) * 0.5f)), i, i2);
            this.topOverlayGradient.setBounds(0, this.topOverlayRect.bottom, i, currentActionBarHeight + AndroidUtilities.m51dp(16.0f));
            this.bottomOverlayGradient.setBounds(0, (i2 - AndroidUtilities.m51dp(72.0f)) - AndroidUtilities.m51dp(24.0f), i, this.bottomOverlayRect.top);
            int i5 = i / 5;
            this.pressedOverlayGradient[0].setBounds(0, 0, i5, i2);
            this.pressedOverlayGradient[1].setBounds(i - i5, 0, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x0217  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x023c  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0253  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0256  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r22) {
            /*
                Method dump skipped, instructions count: 798
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.OverlaysView.onDraw(android.graphics.Canvas):void");
        }

        @Override // org.telegram.p048ui.Components.ProfileGalleryView.Callback
        public void onDown(boolean z) {
            this.pressedOverlayVisible[!z ? 1 : 0] = true;
            postInvalidateOnAnimation();
        }

        @Override // org.telegram.p048ui.Components.ProfileGalleryView.Callback
        public void onRelease() {
            Arrays.fill(this.pressedOverlayVisible, false);
            postInvalidateOnAnimation();
        }

        @Override // org.telegram.p048ui.Components.ProfileGalleryView.Callback
        public void onPhotosLoaded() {
            ProfileActivity.this.updateProfileData(false);
        }

        @Override // org.telegram.p048ui.Components.ProfileGalleryView.Callback
        public void onVideoSet() {
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$NestedFrameLayout */
    /* loaded from: classes5.dex */
    public class NestedFrameLayout extends SizeNotifierFrameLayout implements NestedScrollingParent3 {
        private NestedScrollingParentHelper nestedScrollingParentHelper;

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onStopNestedScroll(View view) {
        }

        public NestedFrameLayout(Context context) {
            super(context);
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        }

        @Override // androidx.core.view.NestedScrollingParent3
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            try {
                if (view == ProfileActivity.this.listView && ProfileActivity.this.sharedMediaLayoutAttached) {
                    RecyclerListView currentListView = ProfileActivity.this.sharedMediaLayout.getCurrentListView();
                    if (ProfileActivity.this.sharedMediaLayout.getTop() == 0) {
                        iArr[1] = i4;
                        currentListView.scrollBy(0, i4);
                    }
                }
            } catch (Throwable th) {
                FileLog.m45e(th);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$NestedFrameLayout$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.NestedFrameLayout.this.lambda$onNestedScroll$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onNestedScroll$0() {
            try {
                RecyclerListView currentListView = ProfileActivity.this.sharedMediaLayout.getCurrentListView();
                if (currentListView == null || currentListView.getAdapter() == null) {
                    return;
                }
                currentListView.getAdapter().notifyDataSetChanged();
            } catch (Throwable unused) {
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            return super.onNestedPreFling(view, f, f2);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
            if (view == ProfileActivity.this.listView) {
                if (ProfileActivity.this.sharedMediaRow == -1 || !ProfileActivity.this.sharedMediaLayoutAttached) {
                    return;
                }
                boolean isSearchFieldVisible = ((BaseFragment) ProfileActivity.this).actionBar.isSearchFieldVisible();
                int top = ProfileActivity.this.sharedMediaLayout.getTop();
                boolean z = false;
                if (i2 >= 0) {
                    if (isSearchFieldVisible) {
                        RecyclerListView currentListView = ProfileActivity.this.sharedMediaLayout.getCurrentListView();
                        iArr[1] = i2;
                        if (top > 0) {
                            iArr[1] = iArr[1] - i2;
                        }
                        if (iArr[1] > 0) {
                            currentListView.scrollBy(0, iArr[1]);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (top <= 0) {
                    RecyclerListView currentListView2 = ProfileActivity.this.sharedMediaLayout.getCurrentListView();
                    int findFirstVisibleItemPosition = ((LinearLayoutManager) currentListView2.getLayoutManager()).findFirstVisibleItemPosition();
                    if (findFirstVisibleItemPosition != -1) {
                        RecyclerView.ViewHolder findViewHolderForAdapterPosition = currentListView2.findViewHolderForAdapterPosition(findFirstVisibleItemPosition);
                        int top2 = findViewHolderForAdapterPosition != null ? findViewHolderForAdapterPosition.itemView.getTop() : -1;
                        int paddingTop = currentListView2.getPaddingTop();
                        if (top2 != paddingTop || findFirstVisibleItemPosition != 0) {
                            iArr[1] = findFirstVisibleItemPosition != 0 ? i2 : Math.max(i2, top2 - paddingTop);
                            currentListView2.scrollBy(0, i2);
                            z = true;
                        }
                    }
                }
                if (isSearchFieldVisible) {
                    if (!z && top < 0) {
                        iArr[1] = i2 - Math.max(top, i2);
                    } else {
                        iArr[1] = i2;
                    }
                }
            }
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
            return ProfileActivity.this.sharedMediaRow != -1 && i == 2;
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onStopNestedScroll(View view, int i) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout
        public void drawList(Canvas canvas, boolean z) {
            super.drawList(canvas, z);
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, ProfileActivity.this.listView.getY());
            ProfileActivity.this.sharedMediaLayout.drawListForBlur(canvas);
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$PagerIndicatorView */
    /* loaded from: classes5.dex */
    public class PagerIndicatorView extends View {
        private final PagerAdapter adapter;
        private final ValueAnimator animator;
        private final float[] animatorValues;
        private final Paint backgroundPaint;
        private final RectF indicatorRect;
        private boolean isIndicatorVisible;
        private final TextPaint textPaint;

        public PagerIndicatorView(Context context) {
            super(context);
            this.indicatorRect = new RectF();
            this.animatorValues = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
            PagerAdapter adapter = ProfileActivity.this.avatarsViewPager.getAdapter();
            this.adapter = adapter;
            setVisibility(8);
            TextPaint textPaint = new TextPaint(1);
            this.textPaint = textPaint;
            textPaint.setColor(-1);
            textPaint.setTypeface(Typeface.SANS_SERIF);
            textPaint.setTextAlign(Paint.Align.CENTER);
            textPaint.setTextSize(AndroidUtilities.dpf2(15.0f));
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            paint.setColor(637534208);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.animator = ofFloat;
            ofFloat.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$PagerIndicatorView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ProfileActivity.PagerIndicatorView.this.lambda$new$0(valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter(ProfileActivity.this, ProfileActivity.this.expandPhoto) { // from class: org.telegram.ui.ProfileActivity.PagerIndicatorView.1
                final /* synthetic */ boolean val$expanded;

                {
                    this.val$expanded = r3;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (PagerIndicatorView.this.isIndicatorVisible) {
                        if (ProfileActivity.this.serviceMessagesItemVisible) {
                            ProfileActivity.this.serviceMessagesItem.setVisibility(8);
                        }
                        if (ProfileActivity.this.searchItem != null) {
                            ProfileActivity.this.searchItem.setClickable(false);
                        }
                        if (ProfileActivity.this.editItemVisible) {
                            ProfileActivity.this.editItem.setVisibility(8);
                        }
                        if (ProfileActivity.this.callItemVisible) {
                            ProfileActivity.this.callItem.setVisibility(8);
                        }
                        if (ProfileActivity.this.videoCallItemVisible) {
                            ProfileActivity.this.videoCallItem.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    PagerIndicatorView.this.setVisibility(8);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (ProfileActivity.this.serviceMessagesItemVisible) {
                        ProfileActivity.this.serviceMessagesItem.setVisibility(0);
                    }
                    if (ProfileActivity.this.searchItem != null && !this.val$expanded) {
                        ProfileActivity.this.searchItem.setClickable(true);
                    }
                    if (ProfileActivity.this.editItemVisible) {
                        ProfileActivity.this.editItem.setVisibility(0);
                    }
                    if (ProfileActivity.this.callItemVisible) {
                        ProfileActivity.this.callItem.setVisibility(0);
                    }
                    if (ProfileActivity.this.videoCallItemVisible) {
                        ProfileActivity.this.videoCallItem.setVisibility(0);
                    }
                    PagerIndicatorView.this.setVisibility(0);
                }
            });
            ProfileActivity.this.avatarsViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener(ProfileActivity.this) { // from class: org.telegram.ui.ProfileActivity.PagerIndicatorView.2
                private int prevPage;

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i, float f, int i2) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i) {
                    int realPosition = ProfileActivity.this.avatarsViewPager.getRealPosition(i);
                    PagerIndicatorView.this.invalidateIndicatorRect(this.prevPage != realPosition);
                    this.prevPage = realPosition;
                    PagerIndicatorView.this.updateAvatarItems();
                }
            });
            adapter.registerDataSetObserver(new DataSetObserver(ProfileActivity.this) { // from class: org.telegram.ui.ProfileActivity.PagerIndicatorView.3
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    int realCount = ProfileActivity.this.avatarsViewPager.getRealCount();
                    if (ProfileActivity.this.overlayCountVisible == 0 && realCount > 1 && realCount <= 20 && ProfileActivity.this.overlaysView.isOverlaysVisible()) {
                        ProfileActivity.this.overlayCountVisible = 1;
                    }
                    PagerIndicatorView.this.invalidateIndicatorRect(false);
                    PagerIndicatorView.this.refreshVisibility(1.0f);
                    PagerIndicatorView.this.updateAvatarItems();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
            float lerp = AndroidUtilities.lerp(this.animatorValues, valueAnimator.getAnimatedFraction());
            if (ProfileActivity.this.serviceMessagesItemVisible) {
                float f = 1.0f - lerp;
                ProfileActivity.this.serviceMessagesItem.setScaleX(f);
                ProfileActivity.this.serviceMessagesItem.setScaleY(f);
                ProfileActivity.this.serviceMessagesItem.setAlpha(f);
            }
            if (ProfileActivity.this.searchItem != null && !ProfileActivity.this.isPulledDown) {
                float f2 = 1.0f - lerp;
                ProfileActivity.this.searchItem.setScaleX(f2);
                ProfileActivity.this.searchItem.setScaleY(f2);
                ProfileActivity.this.searchItem.setAlpha(f2);
            }
            if (ProfileActivity.this.editItemVisible) {
                float f3 = 1.0f - lerp;
                ProfileActivity.this.editItem.setScaleX(f3);
                ProfileActivity.this.editItem.setScaleY(f3);
                ProfileActivity.this.editItem.setAlpha(f3);
            }
            if (ProfileActivity.this.callItemVisible) {
                float f4 = 1.0f - lerp;
                ProfileActivity.this.callItem.setScaleX(f4);
                ProfileActivity.this.callItem.setScaleY(f4);
                ProfileActivity.this.callItem.setAlpha(f4);
            }
            if (ProfileActivity.this.videoCallItemVisible) {
                float f5 = 1.0f - lerp;
                ProfileActivity.this.videoCallItem.setScaleX(f5);
                ProfileActivity.this.videoCallItem.setScaleY(f5);
                ProfileActivity.this.videoCallItem.setAlpha(f5);
            }
            setScaleX(lerp);
            setScaleY(lerp);
            setAlpha(lerp);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateAvatarItemsInternal() {
            if (ProfileActivity.this.otherItem == null || ProfileActivity.this.avatarsViewPager == null || !ProfileActivity.this.isPulledDown) {
                return;
            }
            if (ProfileActivity.this.avatarsViewPager.getRealPosition() == 0) {
                ProfileActivity.this.otherItem.hideSubItem(33);
                ProfileActivity.this.otherItem.showSubItem(36);
                return;
            }
            ProfileActivity.this.otherItem.showSubItem(33);
            ProfileActivity.this.otherItem.hideSubItem(36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateAvatarItems() {
            if (ProfileActivity.this.imageUpdater == null) {
                return;
            }
            if (ProfileActivity.this.otherItem.isSubMenuShowing()) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$PagerIndicatorView$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.PagerIndicatorView.this.updateAvatarItemsInternal();
                    }
                }, 500L);
            } else {
                updateAvatarItemsInternal();
            }
        }

        public boolean isIndicatorFullyVisible() {
            return this.isIndicatorVisible && !this.animator.isRunning();
        }

        public void setIndicatorVisible(boolean z, float f) {
            if (z != this.isIndicatorVisible) {
                this.isIndicatorVisible = z;
                this.animator.cancel();
                float lerp = AndroidUtilities.lerp(this.animatorValues, this.animator.getAnimatedFraction());
                if (f <= BitmapDescriptorFactory.HUE_RED) {
                    this.animator.setDuration(0L);
                } else if (z) {
                    this.animator.setDuration(((1.0f - lerp) * 250.0f) / f);
                } else {
                    this.animator.setDuration((250.0f * lerp) / f);
                }
                float[] fArr = this.animatorValues;
                fArr[0] = lerp;
                fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                this.animator.start();
            }
        }

        public void refreshVisibility(float f) {
            setIndicatorVisible(ProfileActivity.this.isPulledDown && ProfileActivity.this.avatarsViewPager.getRealCount() > 20, f);
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            invalidateIndicatorRect(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateIndicatorRect(boolean z) {
            if (z) {
                ProfileActivity.this.overlaysView.saveCurrentPageProgress();
            }
            ProfileActivity.this.overlaysView.invalidate();
            float measureText = this.textPaint.measureText(getCurrentTitle());
            this.indicatorRect.right = (getMeasuredWidth() - AndroidUtilities.m51dp(54.0f)) - (ProfileActivity.this.qrItem != null ? AndroidUtilities.m50dp(48) : 0);
            RectF rectF = this.indicatorRect;
            rectF.left = rectF.right - (measureText + AndroidUtilities.dpf2(16.0f));
            this.indicatorRect.top = (((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + AndroidUtilities.m51dp(15.0f);
            RectF rectF2 = this.indicatorRect;
            rectF2.bottom = rectF2.top + AndroidUtilities.m50dp(26);
            setPivotX(this.indicatorRect.centerX());
            setPivotY(this.indicatorRect.centerY());
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float dpf2 = AndroidUtilities.dpf2(12.0f);
            canvas.drawRoundRect(this.indicatorRect, dpf2, dpf2, this.backgroundPaint);
            canvas.drawText(getCurrentTitle(), this.indicatorRect.centerX(), this.indicatorRect.top + AndroidUtilities.dpf2(18.5f), this.textPaint);
        }

        private String getCurrentTitle() {
            return this.adapter.getPageTitle(ProfileActivity.this.avatarsViewPager.getCurrentItem()).toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ActionBarMenuItem getSecondaryMenuItem() {
            if (ProfileActivity.this.callItemVisible) {
                return ProfileActivity.this.callItem;
            }
            if (ProfileActivity.this.editItemVisible) {
                return ProfileActivity.this.editItem;
            }
            if (ProfileActivity.this.searchItem != null) {
                return ProfileActivity.this.searchItem;
            }
            return null;
        }
    }

    public ProfileActivity(Bundle bundle) {
        this(bundle, null);
    }

    public ProfileActivity(Bundle bundle, SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader) {
        super(bundle);
        this.membersFilter = GroupMembersFilter.defaultValue;
        this.nameTextView = new SimpleTextView[2];
        this.nameTextViewRightDrawableContentDescription = null;
        this.onlineTextView = new SimpleTextView[4];
        this.emojiStatusDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[2];
        this.scrimView = null;
        this.scrimPaint = new Paint(1) { // from class: org.telegram.ui.ProfileActivity.2
            @Override // android.graphics.Paint
            public void setAlpha(int i) {
                super.setAlpha(i);
                ((BaseFragment) ProfileActivity.this).fragmentView.invalidate();
            }
        };
        this.actionBarBackgroundPaint = new Paint(1);
        this.isOnline = new boolean[1];
        this.headerShadowAlpha = 1.0f;
        this.participantsMap = new LongSparseArray<>();
        this.allowProfileAnimation = true;
        this.disableProfileAnimation = false;
        this.positionToOffset = new HashMap<>();
        this.expandAnimatorValues = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
        this.whitePaint = new Paint();
        this.onlineCount = -1;
        this.rect = new Rect();
        this.visibleChatParticipants = new ArrayList<>();
        this.visibleSortedUsers = new ArrayList<>();
        this.usersForceShowingIn = 0;
        this.firstLayout = true;
        this.invalidateScroll = true;
        this.isQrItemVisible = true;
        this.actionBarAnimationColorFrom = 0;
        this.navigationBarAnimationColorFrom = 0;
        this.reportReactionMessageId = 0;
        this.reportReactionFromDialogId = 0L;
        this.notificationsExceptionTopics = new HashSet<>();
        this.HEADER_SHADOW = new AnimationProperties.FloatProperty<ProfileActivity>("headerShadow") { // from class: org.telegram.ui.ProfileActivity.3
            @Override // org.telegram.p048ui.Components.AnimationProperties.FloatProperty
            public void setValue(ProfileActivity profileActivity, float f) {
                ProfileActivity profileActivity2 = ProfileActivity.this;
                profileActivity2.headerShadowAlpha = f;
                profileActivity2.topView.invalidate();
            }

            @Override // android.util.Property
            public Float get(ProfileActivity profileActivity) {
                return Float.valueOf(ProfileActivity.this.headerShadowAlpha);
            }
        };
        this.provider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.ProfileActivity.4
            @Override // org.telegram.p048ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p048ui.PhotoViewer.PhotoViewerProvider
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i, boolean z) {
                TLRPC$Chat chat;
                TLRPC$ChatPhoto tLRPC$ChatPhoto;
                TLRPC$FileLocation tLRPC$FileLocation2;
                TLRPC$User user;
                TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto;
                if (tLRPC$FileLocation == null) {
                    return null;
                }
                if (ProfileActivity.this.userId == 0 ? ProfileActivity.this.chatId == 0 || (chat = ProfileActivity.this.getMessagesController().getChat(Long.valueOf(ProfileActivity.this.chatId))) == null || (tLRPC$ChatPhoto = chat.photo) == null || (tLRPC$FileLocation2 = tLRPC$ChatPhoto.photo_big) == null : (user = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId))) == null || (tLRPC$UserProfilePhoto = user.photo) == null || (tLRPC$FileLocation2 = tLRPC$UserProfilePhoto.photo_big) == null) {
                    tLRPC$FileLocation2 = null;
                }
                if (tLRPC$FileLocation2 != null && tLRPC$FileLocation2.local_id == tLRPC$FileLocation.local_id && tLRPC$FileLocation2.volume_id == tLRPC$FileLocation.volume_id && tLRPC$FileLocation2.dc_id == tLRPC$FileLocation.dc_id) {
                    int[] iArr = new int[2];
                    ProfileActivity.this.avatarImage.getLocationInWindow(iArr);
                    PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                    placeProviderObject.viewX = iArr[0];
                    placeProviderObject.viewY = iArr[1] - (Build.VERSION.SDK_INT >= 21 ? 0 : AndroidUtilities.statusBarHeight);
                    placeProviderObject.parentView = ProfileActivity.this.avatarImage;
                    placeProviderObject.imageReceiver = ProfileActivity.this.avatarImage.getImageReceiver();
                    if (ProfileActivity.this.userId != 0) {
                        placeProviderObject.dialogId = ProfileActivity.this.userId;
                    } else if (ProfileActivity.this.chatId != 0) {
                        placeProviderObject.dialogId = -ProfileActivity.this.chatId;
                    }
                    placeProviderObject.thumb = placeProviderObject.imageReceiver.getBitmapSafe();
                    placeProviderObject.size = -1L;
                    placeProviderObject.radius = ProfileActivity.this.avatarImage.getImageReceiver().getRoundRadius();
                    placeProviderObject.scale = ProfileActivity.this.avatarContainer.getScaleX();
                    placeProviderObject.canEdit = ProfileActivity.this.userId == ProfileActivity.this.getUserConfig().clientUserId;
                    return placeProviderObject;
                }
                return null;
            }

            @Override // org.telegram.p048ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p048ui.PhotoViewer.PhotoViewerProvider
            public void willHidePhotoViewer() {
                ProfileActivity.this.avatarImage.getImageReceiver().setVisible(true, true);
            }

            @Override // org.telegram.p048ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p048ui.PhotoViewer.PhotoViewerProvider
            public void openPhotoForEdit(String str, String str2, boolean z) {
                ProfileActivity.this.imageUpdater.openPhotoForEdit(str, str2, 0, z);
            }
        };
        this.ACTIONBAR_HEADER_PROGRESS = new AnimationProperties.FloatProperty<C3222ActionBar>("avatarAnimationProgress") { // from class: org.telegram.ui.ProfileActivity.39
            @Override // org.telegram.p048ui.Components.AnimationProperties.FloatProperty
            public void setValue(C3222ActionBar c3222ActionBar, float f) {
                ProfileActivity.this.mediaHeaderAnimationProgress = f;
                ProfileActivity.this.topView.invalidate();
                int themedColor = ProfileActivity.this.getThemedColor("profile_title");
                int themedColor2 = ProfileActivity.this.getThemedColor("player_actionBarTitle");
                int offsetColor = AndroidUtilities.getOffsetColor(themedColor, themedColor2, f, 1.0f);
                ProfileActivity.this.nameTextView[1].setTextColor(offsetColor);
                if (ProfileActivity.this.lockIconDrawable != null) {
                    ProfileActivity.this.lockIconDrawable.setColorFilter(offsetColor, PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.scamDrawable != null) {
                    ProfileActivity.this.scamDrawable.setColor(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor("avatar_subtitleInProfileBlue"), themedColor2, f, 1.0f));
                }
                ((BaseFragment) ProfileActivity.this).actionBar.setItemsColor(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor("actionBarDefaultIcon"), ProfileActivity.this.getThemedColor("actionBarActionModeDefaultIcon"), f, 1.0f), false);
                ((BaseFragment) ProfileActivity.this).actionBar.setItemsBackgroundColor(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor("avatar_actionBarSelectorBlue"), ProfileActivity.this.getThemedColor("actionBarActionModeDefaultSelector"), f, 1.0f), false);
                ProfileActivity.this.topView.invalidate();
                ProfileActivity.this.serviceMessagesItem.setIconColor(ProfileActivity.this.getThemedColor("actionBarDefaultIcon"));
                ProfileActivity.this.otherItem.setIconColor(ProfileActivity.this.getThemedColor("actionBarDefaultIcon"));
                ProfileActivity.this.callItem.setIconColor(ProfileActivity.this.getThemedColor("actionBarDefaultIcon"));
                ProfileActivity.this.videoCallItem.setIconColor(ProfileActivity.this.getThemedColor("actionBarDefaultIcon"));
                ProfileActivity.this.editItem.setIconColor(ProfileActivity.this.getThemedColor("actionBarDefaultIcon"));
                if (ProfileActivity.this.verifiedDrawable != null) {
                    ProfileActivity.this.verifiedDrawable.setColorFilter(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor("profile_verifiedBackground"), ProfileActivity.this.getThemedColor("player_actionBarTitle"), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.verifiedCheckDrawable != null) {
                    ProfileActivity.this.verifiedCheckDrawable.setColorFilter(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor("profile_verifiedCheck"), ProfileActivity.this.getThemedColor("windowBackgroundWhite"), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.premiumStarDrawable != null) {
                    ProfileActivity.this.premiumStarDrawable.setColorFilter(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor("profile_verifiedBackground"), ProfileActivity.this.getThemedColor("player_actionBarTitle"), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                ProfileActivity.this.updateEmojiStatusDrawableColor();
                if (ProfileActivity.this.avatarsViewPagerIndicatorView.getSecondaryMenuItem() != null) {
                    if (ProfileActivity.this.serviceMessagesItemVisible || ProfileActivity.this.videoCallItemVisible || ProfileActivity.this.editItemVisible || ProfileActivity.this.callItemVisible) {
                        ProfileActivity profileActivity = ProfileActivity.this;
                        profileActivity.needLayoutText(Math.min(1.0f, profileActivity.extraHeight / AndroidUtilities.m51dp(88.0f)));
                    }
                }
            }

            @Override // android.util.Property
            public Float get(C3222ActionBar c3222ActionBar) {
                return Float.valueOf(ProfileActivity.this.mediaHeaderAnimationProgress);
            }
        };
        this.scrimAnimatorSet = null;
        this.savedScrollPosition = -1;
        this.photoDescriptionProgress = -1.0f;
        this.sharedMediaPreloader = sharedMediaPreloader;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.userId = this.arguments.getLong("user_id", 0L);
        this.chatId = this.arguments.getLong("chat_id", 0L);
        this.albumMode = getAlbumsController().isDialogAlbum(-this.chatId);
        int i = this.arguments.getInt("topic_id", 0);
        this.topicId = i;
        this.isTopic = i != 0;
        this.banFromGroup = this.arguments.getLong("ban_chat_id", 0L);
        this.reportReactionMessageId = this.arguments.getInt("report_reaction_message_id", 0);
        this.reportReactionFromDialogId = this.arguments.getLong("report_reaction_from_dialog_id", 0L);
        this.showAddToContacts = this.arguments.getBoolean("show_add_to_contacts");
        this.vcardPhone = C3078PhoneFormat.stripExceptNumbers(this.arguments.getString("vcard_phone"));
        this.vcardFirstName = this.arguments.getString("vcard_first_name");
        this.vcardLastName = this.arguments.getString("vcard_last_name");
        this.reportSpam = this.arguments.getBoolean("reportSpam", false);
        if (!this.expandPhoto) {
            boolean z = this.arguments.getBoolean("expandPhoto", false);
            this.expandPhoto = z;
            if (z) {
                this.currentExpandAnimatorValue = 1.0f;
                this.needSendMessage = true;
            }
        }
        if (this.userId != 0) {
            long j = this.arguments.getLong("dialog_id", 0L);
            this.dialogId = j;
            if (j != 0) {
                this.currentEncryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(this.dialogId)));
            }
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
            if (user == null) {
                return false;
            }
            getNotificationCenter().addObserver(this, NotificationCenter.contactsDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.newSuggestionsAvailable);
            getNotificationCenter().addObserver(this, NotificationCenter.encryptedChatCreated);
            getNotificationCenter().addObserver(this, NotificationCenter.encryptedChatUpdated);
            getNotificationCenter().addObserver(this, NotificationCenter.blockedUsersDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.botInfoDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.privacyRulesUpdated);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.reloadInterface);
            this.userBlocked = getMessagesController().blockePeers.indexOfKey(this.userId) >= 0;
            if (user.bot) {
                this.isBot = true;
                MediaDataController mediaDataController = getMediaDataController();
                long j2 = user.f1633id;
                mediaDataController.loadBotInfo(j2, j2, true, this.classGuid);
            }
            this.userInfo = getMessagesController().getUserFull(this.userId);
            getMessagesController().loadFullUser(getMessagesController().getUser(Long.valueOf(this.userId)), this.classGuid, true);
            this.participantsMap = null;
            if (UserObject.isUserSelf(user)) {
                ImageUpdater imageUpdater = new ImageUpdater(true, 0, true);
                this.imageUpdater = imageUpdater;
                imageUpdater.setOpenWithFrontfaceCamera(true);
                ImageUpdater imageUpdater2 = this.imageUpdater;
                imageUpdater2.parentFragment = this;
                imageUpdater2.setDelegate(this);
                getMediaDataController().checkFeaturedStickers();
                getMessagesController().loadSuggestedFilters();
                getMessagesController().loadUserInfo(getUserConfig().getCurrentUser(), true, this.classGuid);
            }
            this.actionBarAnimationColorFrom = this.arguments.getInt("actionBarColor", 0);
        } else if (this.chatId == 0) {
            return false;
        } else {
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
            this.currentChat = chat;
            if (chat == null) {
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda30
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.this.lambda$onFragmentCreate$5(countDownLatch);
                    }
                });
                try {
                    countDownLatch.await();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
                if (this.currentChat == null) {
                    return false;
                }
                getMessagesController().putChat(this.currentChat, true);
            }
            if (this.currentChat.megagroup) {
                getChannelParticipants(true);
            } else {
                this.participantsMap = null;
            }
            getNotificationCenter().addObserver(this, NotificationCenter.chatInfoDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.chatOnlineCountDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.groupCallUpdated);
            this.sortedUsers = new ArrayList<>();
            updateOnlineCount(true);
            if (this.chatInfo == null) {
                this.chatInfo = getMessagesController().getChatFull(this.chatId);
            }
            if (ChatObject.isChannel(this.currentChat)) {
                getMessagesController().loadFullChat(this.chatId, this.classGuid, true);
            } else if (this.chatInfo == null) {
                this.chatInfo = getMessagesStorage().loadChatInfo(this.chatId, false, null, false, false);
            }
            updateExceptions();
        }
        if (this.sharedMediaPreloader == null) {
            this.sharedMediaPreloader = new SharedMediaLayout.SharedMediaPreloader(this);
        }
        this.sharedMediaPreloader.addDelegate(this);
        getNotificationCenter().addObservers(this, observers);
        getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().addObserver(this, NotificationCenter.didReceiveNewMessages);
        getNotificationCenter().addObserver(this, NotificationCenter.closeChats);
        getNotificationCenter().addObserver(this, NotificationCenter.topicsDidLoaded);
        getNotificationCenter().addObserver(this, NotificationCenter.updateSearchSettings);
        getNotificationCenter().addObserver(this, NotificationCenter.reloadDialogPhotos);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        updateRowsIds();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        if (this.arguments.containsKey("preload_messages")) {
            getMessagesController().ensureMessagesLoaded(this.userId, 0, null);
        }
        if (this.userId != 0 && UserObject.isUserSelf(getMessagesController().getUser(Long.valueOf(this.userId)))) {
            getConnectionsManager().sendRequest(new TLRPC$TL_account_getPassword(), new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda46
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.this.lambda$onFragmentCreate$6(tLObject, tLRPC$TL_error);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$5(CountDownLatch countDownLatch) {
        this.currentChat = getMessagesStorage().getChat(this.chatId);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$6(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_account_password) {
            this.currentPassword = (TLRPC$TL_account_password) tLObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateExceptions() {
        if (this.isTopic || !ChatObject.isForum(this.currentChat)) {
            return;
        }
        getNotificationsController().loadTopicsNotificationsExceptions(-this.chatId, new Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda41
            @Override // p034j$.util.function.Consumer
            public final void accept(Object obj) {
                ProfileActivity.this.lambda$updateExceptions$7((HashSet) obj);
            }

            @Override // p034j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Objects.requireNonNull(consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateExceptions$7(HashSet hashSet) {
        ListAdapter listAdapter;
        ArrayList arrayList = new ArrayList(hashSet);
        int i = 0;
        while (i < arrayList.size()) {
            if (getMessagesController().getTopicsController().findTopic(this.chatId, ((Integer) arrayList.get(i)).intValue()) == null) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        this.notificationsExceptionTopics.clear();
        this.notificationsExceptionTopics.addAll(arrayList);
        int i2 = this.notificationsRow;
        if (i2 < 0 || (listAdapter = this.listAdapter) == null) {
            return;
        }
        listAdapter.notifyItemChanged(i2);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.onDestroy();
        }
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader = this.sharedMediaPreloader;
        if (sharedMediaPreloader != null) {
            sharedMediaPreloader.onDestroy(this);
        }
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader2 = this.sharedMediaPreloader;
        if (sharedMediaPreloader2 != null) {
            sharedMediaPreloader2.removeDelegate(this);
        }
        getNotificationCenter().removeObservers(this, observers);
        getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().removeObserver(this, NotificationCenter.closeChats);
        getNotificationCenter().removeObserver(this, NotificationCenter.didReceiveNewMessages);
        getNotificationCenter().removeObserver(this, NotificationCenter.topicsDidLoaded);
        getNotificationCenter().removeObserver(this, NotificationCenter.updateSearchSettings);
        getNotificationCenter().removeObserver(this, NotificationCenter.reloadDialogPhotos);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        ProfileGalleryView profileGalleryView = this.avatarsViewPager;
        if (profileGalleryView != null) {
            profileGalleryView.onDestroy();
        }
        if (this.userId != 0) {
            getNotificationCenter().removeObserver(this, NotificationCenter.newSuggestionsAvailable);
            getNotificationCenter().removeObserver(this, NotificationCenter.contactsDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.encryptedChatCreated);
            getNotificationCenter().removeObserver(this, NotificationCenter.encryptedChatUpdated);
            getNotificationCenter().removeObserver(this, NotificationCenter.blockedUsersDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.botInfoDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.privacyRulesUpdated);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.reloadInterface);
            getMessagesController().cancelLoadFullUser(this.userId);
        } else if (this.chatId != 0) {
            getNotificationCenter().removeObserver(this, NotificationCenter.chatInfoDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.chatOnlineCountDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.groupCallUpdated);
        }
        AvatarImageView avatarImageView = this.avatarImage;
        if (avatarImageView != null) {
            avatarImageView.setImageDrawable(null);
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.clear();
        }
        PinchToZoomHelper pinchToZoomHelper = this.pinchToZoomHelper;
        if (pinchToZoomHelper != null) {
            pinchToZoomHelper.clear();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public C3222ActionBar createActionBar(Context context) {
        ChatActivity.ThemeDelegate themeDelegate;
        BaseFragment lastFragment = this.parentLayout.getLastFragment();
        if ((lastFragment instanceof ChatActivity) && (themeDelegate = ((ChatActivity) lastFragment).themeDelegate) != null && themeDelegate.getCurrentTheme() != null) {
            this.resourcesProvider = lastFragment.getResourceProvider();
        }
        C3222ActionBar c3222ActionBar = new C3222ActionBar(context, this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.5
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                ProfileActivity.this.avatarContainer.getHitRect(ProfileActivity.this.rect);
                if (ProfileActivity.this.rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar
            public void setItemsColor(int i, boolean z) {
                super.setItemsColor(i, z);
                if (z || ProfileActivity.this.ttlIconView == null) {
                    return;
                }
                ProfileActivity.this.ttlIconView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }
        };
        c3222ActionBar.setColorFilterMode(PorterDuff.Mode.SRC_IN);
        boolean z = true;
        c3222ActionBar.setForceSkipTouches(true);
        c3222ActionBar.setBackgroundColor(0);
        c3222ActionBar.setItemsBackgroundColor(getThemedColor("avatar_actionBarSelectorBlue"), false);
        c3222ActionBar.setItemsColor(getThemedColor("actionBarDefaultIcon"), false);
        c3222ActionBar.setBackButtonDrawable(new BackDrawable(false));
        c3222ActionBar.setCastShadows(false);
        c3222ActionBar.setAddToContainer(false);
        c3222ActionBar.setClipContent(true);
        c3222ActionBar.setOccupyStatusBar((Build.VERSION.SDK_INT < 21 || AndroidUtilities.isTablet() || this.inBubbleMode) ? false : false);
        final ImageView backButton = c3222ActionBar.getBackButton();
        backButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda24
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$createActionBar$9;
                lambda$createActionBar$9 = ProfileActivity.this.lambda$createActionBar$9(backButton, view);
                return lambda$createActionBar$9;
            }
        });
        return c3222ActionBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createActionBar$9(ImageView imageView, View view) {
        ActionBarPopupWindow show = BackButtonMenu.show(this, imageView, getDialogId(), getTopicId(), this.resourcesProvider);
        if (show != null) {
            show.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda25
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    ProfileActivity.this.lambda$createActionBar$8();
                }
            });
            dimBehindView(imageView, 0.3f);
            UndoView undoView = this.undoView;
            if (undoView != null) {
                undoView.hide(true, 1);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createActionBar$8() {
        dimBehindView(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:225:0x09b3  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0a30  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0b29  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0b39  */
    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(final android.content.Context r38) {
        /*
            Method dump skipped, instructions count: 2936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$6 */
    /* loaded from: classes5.dex */
    public class C61726 extends C3222ActionBar.ActionBarMenuOnItemClick {
        C61726() {
        }

        @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            String format;
            long j;
            if (ProfileActivity.this.getParentActivity() == null) {
                return;
            }
            if (i == IdFabric$Menu.PROFILE_SERVICE_MESSAGES) {
                if (ProfileActivity.this.chatInfo == null) {
                    return;
                }
                ProfileActivity.this.showDialog(new DeleteServiceMessagesBottomSheet(ProfileActivity.this.getParentActivity(), !ChatObject.isChannel(ProfileActivity.this.currentChat), ProfileActivity.this.currentChat.megagroup, ProfileActivity.this.chatId, ProfileActivity.this.topicId, -ProfileActivity.this.mergeDialogId, ProfileActivity.this.chatInfo.migrated_from_max_id));
            } else if (i == -1) {
                ProfileActivity.this.finishFragment();
            } else {
                String str = null;
                String str2 = null;
                if (i == 2) {
                    TLRPC$User user = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                    if (user == null) {
                        return;
                    }
                    if (!ProfileActivity.this.isBot || MessagesController.isSupportUser(user)) {
                        if (ProfileActivity.this.userBlocked) {
                            ProfileActivity.this.getMessagesController().unblockPeer(ProfileActivity.this.userId);
                            if (BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                                BulletinFactory.createBanBulletin(ProfileActivity.this, false).show();
                            }
                        } else if (ProfileActivity.this.reportSpam) {
                            ProfileActivity profileActivity = ProfileActivity.this;
                            AlertsCreator.showBlockReportSpamAlert(profileActivity, profileActivity.userId, user, null, ProfileActivity.this.currentEncryptedChat, false, null, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda9
                                @Override // org.telegram.messenger.MessagesStorage.IntCallback
                                public final void run(int i2) {
                                    ProfileActivity.C61726.this.lambda$onItemClick$0(i2);
                                }
                            }, ProfileActivity.this.resourcesProvider);
                        } else {
                            AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                            builder.setTitle(LocaleController.getString("BlockUser", C3158R.string.BlockUser));
                            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureBlockContact2", C3158R.string.AreYouSureBlockContact2, ContactsController.formatName(user.first_name, user.last_name))));
                            builder.setPositiveButton(LocaleController.getString("BlockContact", C3158R.string.BlockContact), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda2
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i2) {
                                    ProfileActivity.C61726.this.lambda$onItemClick$1(dialogInterface, i2);
                                }
                            });
                            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                            AlertDialog create = builder.create();
                            ProfileActivity.this.showDialog(create);
                            TextView textView = (TextView) create.getButton(-1);
                            if (textView != null) {
                                textView.setTextColor(ProfileActivity.this.getThemedColor("dialogTextRed2"));
                            }
                        }
                    } else if (!ProfileActivity.this.userBlocked) {
                        ProfileActivity.this.getMessagesController().blockPeer(ProfileActivity.this.userId);
                    } else {
                        ProfileActivity.this.getMessagesController().unblockPeer(ProfileActivity.this.userId);
                        ProfileActivity.this.getSendMessagesHelper().sendMessage("/start", ProfileActivity.this.userId, null, null, null, false, null, null, null, true, 0, null, false, null);
                        ProfileActivity.this.finishFragment();
                    }
                } else if (i == 1) {
                    TLRPC$User user2 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                    Bundle bundle = new Bundle();
                    bundle.putLong("user_id", user2.f1633id);
                    bundle.putBoolean("addContact", true);
                    ProfileActivity profileActivity2 = ProfileActivity.this;
                    profileActivity2.presentFragment(new ContactAddActivity(bundle, profileActivity2.resourcesProvider));
                } else if (i == 3) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean("onlySelect", true);
                    bundle2.putInt("dialogsType", 3);
                    bundle2.putString("selectAlertString", LocaleController.getString("SendContactToText", C3158R.string.SendContactToText));
                    bundle2.putString("selectAlertStringGroup", LocaleController.getString("SendContactToGroupText", C3158R.string.SendContactToGroupText));
                    DialogsActivity dialogsActivity = new DialogsActivity(bundle2);
                    dialogsActivity.setDelegate(ProfileActivity.this);
                    ProfileActivity.this.presentFragment(dialogsActivity);
                } else if (i == 4) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putLong("user_id", ProfileActivity.this.userId);
                    ProfileActivity profileActivity3 = ProfileActivity.this;
                    profileActivity3.presentFragment(new ContactAddActivity(bundle3, profileActivity3.resourcesProvider));
                } else if (i == 5) {
                    final TLRPC$User user3 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                    if (user3 == null || ProfileActivity.this.getParentActivity() == null) {
                        return;
                    }
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                    builder2.setTitle(LocaleController.getString("DeleteContact", C3158R.string.DeleteContact));
                    builder2.setMessage(LocaleController.getString("AreYouSureDeleteContact", C3158R.string.AreYouSureDeleteContact));
                    builder2.setPositiveButton(LocaleController.getString("Delete", C3158R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda4
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            ProfileActivity.C61726.this.lambda$onItemClick$2(user3, dialogInterface, i2);
                        }
                    });
                    builder2.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                    AlertDialog create2 = builder2.create();
                    ProfileActivity.this.showDialog(create2);
                    TextView textView2 = (TextView) create2.getButton(-1);
                    if (textView2 != null) {
                        textView2.setTextColor(ProfileActivity.this.getThemedColor("dialogTextRed2"));
                    }
                } else if (i == 7) {
                    ProfileActivity.this.leaveChatPressed();
                } else if (i == 23) {
                    AlertDialog.Builder builder3 = new AlertDialog.Builder(ProfileActivity.this.getContext());
                    builder3.setTitle(LocaleController.getPluralString("DeleteTopics", 1));
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getTopicsController().findTopic(ProfileActivity.this.chatId, ProfileActivity.this.topicId);
                    int i2 = C3158R.string.DeleteSelectedTopic;
                    Object[] objArr = new Object[1];
                    objArr[0] = findTopic == null ? "topic" : findTopic.title;
                    builder3.setMessage(LocaleController.formatString("DeleteSelectedTopic", i2, objArr));
                    builder3.setPositiveButton(LocaleController.getString("Delete", C3158R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity.6.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            ArrayList<Integer> arrayList = new ArrayList<>();
                            arrayList.add(Integer.valueOf(ProfileActivity.this.topicId));
                            ProfileActivity.this.getMessagesController().getTopicsController().deleteTopics(ProfileActivity.this.chatId, arrayList);
                            ProfileActivity.this.playProfileAnimation = 0;
                            if (((BaseFragment) ProfileActivity.this).parentLayout != null && ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack() != null) {
                                for (int i4 = 0; i4 < ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack().size(); i4++) {
                                    BaseFragment baseFragment = ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack().get(i4);
                                    if ((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).getTopicId() == ProfileActivity.this.topicId) {
                                        baseFragment.removeSelfFromStack();
                                    }
                                }
                            }
                            ProfileActivity.this.finishFragment();
                            BulletinFactory.m28of(Bulletin.BulletinWindow.make(ProfileActivity.this.getContext()), ProfileActivity.this.resourcesProvider).createSimpleBulletin(C3158R.C3164raw.ic_delete, LocaleController.getPluralString("TopicsDeleted", 1)).show();
                            dialogInterface.dismiss();
                        }
                    });
                    builder3.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), new DialogInterface.OnClickListener(this) { // from class: org.telegram.ui.ProfileActivity.6.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                            dialogInterface.dismiss();
                        }
                    });
                    AlertDialog create3 = builder3.create();
                    create3.show();
                    TextView textView3 = (TextView) create3.getButton(-1);
                    if (textView3 != null) {
                        textView3.setTextColor(Theme.getColor("dialogTextRed2"));
                    }
                } else if (i == 12) {
                    if (ProfileActivity.this.isTopic) {
                        new Bundle().putLong("chat_id", ProfileActivity.this.chatId);
                        ProfileActivity.this.presentFragment(TopicCreateFragment.create(ProfileActivity.this.chatId, ProfileActivity.this.topicId));
                        return;
                    }
                    Bundle bundle4 = new Bundle();
                    bundle4.putLong("chat_id", ProfileActivity.this.chatId);
                    ChatEditActivity chatEditActivity = new ChatEditActivity(bundle4);
                    chatEditActivity.setInfo(ProfileActivity.this.chatInfo);
                    ProfileActivity.this.presentFragment(chatEditActivity);
                } else if (i == 9) {
                    final TLRPC$User user4 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                    if (user4 == null) {
                        return;
                    }
                    Bundle bundle5 = new Bundle();
                    bundle5.putBoolean("onlySelect", true);
                    bundle5.putInt("dialogsType", 2);
                    bundle5.putBoolean("resetDelegate", false);
                    bundle5.putBoolean("closeFragment", false);
                    final DialogsActivity dialogsActivity2 = new DialogsActivity(bundle5);
                    dialogsActivity2.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda11
                        @Override // org.telegram.p048ui.DialogsActivity.DialogsActivityDelegate
                        public final boolean didSelectDialogs(DialogsActivity dialogsActivity3, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment) {
                            boolean lambda$onItemClick$6;
                            lambda$onItemClick$6 = ProfileActivity.C61726.this.lambda$onItemClick$6(user4, dialogsActivity2, dialogsActivity3, arrayList, charSequence, z, topicsFragment);
                            return lambda$onItemClick$6;
                        }
                    });
                    ProfileActivity.this.presentFragment(dialogsActivity2);
                } else if (i == 10) {
                    try {
                        if (ProfileActivity.this.userId != 0) {
                            TLRPC$User user5 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                            if (user5 == null) {
                                return;
                            }
                            if (ProfileActivity.this.botInfo != null && ProfileActivity.this.userInfo != null && !TextUtils.isEmpty(ProfileActivity.this.userInfo.about)) {
                                format = String.format("%s https://" + ProfileActivity.this.getMessagesController().linkPrefix + "/%s", ProfileActivity.this.userInfo.about, UserObject.getPublicUsername(user5));
                            } else {
                                format = String.format("https://" + ProfileActivity.this.getMessagesController().linkPrefix + "/%s", UserObject.getPublicUsername(user5));
                            }
                            str = format;
                        } else if (ProfileActivity.this.chatId != 0) {
                            TLRPC$Chat chat = ProfileActivity.this.getMessagesController().getChat(Long.valueOf(ProfileActivity.this.chatId));
                            if (chat == null) {
                                return;
                            }
                            if (ProfileActivity.this.chatInfo != null && !TextUtils.isEmpty(ProfileActivity.this.chatInfo.about)) {
                                str = String.format("%s\nhttps://" + ProfileActivity.this.getMessagesController().linkPrefix + "/%s", ProfileActivity.this.chatInfo.about, ChatObject.getPublicUsername(chat));
                            } else {
                                str = String.format("https://" + ProfileActivity.this.getMessagesController().linkPrefix + "/%s", ChatObject.getPublicUsername(chat));
                            }
                        }
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        Intent intent = new Intent("android.intent.action.SEND");
                        intent.setType("text/plain");
                        intent.putExtra("android.intent.extra.TEXT", str);
                        ProfileActivity.this.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("BotShare", C3158R.string.BotShare)), 500);
                    } catch (Exception e) {
                        FileLog.m45e(e);
                    }
                } else if (i == 14) {
                    try {
                        if (ProfileActivity.this.currentEncryptedChat != null) {
                            j = DialogObject.makeEncryptedDialogId(ProfileActivity.this.currentEncryptedChat.f1506id);
                        } else if (ProfileActivity.this.userId != 0) {
                            j = ProfileActivity.this.userId;
                        } else if (ProfileActivity.this.chatId == 0) {
                            return;
                        } else {
                            j = -ProfileActivity.this.chatId;
                        }
                        ProfileActivity.this.getMediaDataController().installShortcut(j);
                    } catch (Exception e2) {
                        FileLog.m45e(e2);
                    }
                } else if (i == 15 || i == 16) {
                    if (ProfileActivity.this.userId != 0) {
                        TLRPC$User user6 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                        if (user6 != null) {
                            VoIPHelper.startCall(user6, i == 16, ProfileActivity.this.userInfo != null && ProfileActivity.this.userInfo.video_calls_available, ProfileActivity.this.getParentActivity(), ProfileActivity.this.userInfo, ProfileActivity.this.getAccountInstance());
                        }
                    } else if (ProfileActivity.this.chatId != 0) {
                        if (ProfileActivity.this.getMessagesController().getGroupCall(ProfileActivity.this.chatId, false) != null) {
                            TLRPC$Chat tLRPC$Chat = ProfileActivity.this.currentChat;
                            Activity parentActivity = ProfileActivity.this.getParentActivity();
                            ProfileActivity profileActivity4 = ProfileActivity.this;
                            VoIPHelper.startCall(tLRPC$Chat, (TLRPC$InputPeer) null, (String) null, false, parentActivity, (BaseFragment) profileActivity4, profileActivity4.getAccountInstance());
                            return;
                        }
                        ProfileActivity profileActivity5 = ProfileActivity.this;
                        VoIPHelper.showGroupCallAlert(profileActivity5, profileActivity5.currentChat, null, false, ProfileActivity.this.getAccountInstance());
                    }
                } else if (i == 17) {
                    Bundle bundle6 = new Bundle();
                    bundle6.putLong("chat_id", ProfileActivity.this.chatId);
                    bundle6.putInt(SessionDescription.ATTR_TYPE, 2);
                    bundle6.putBoolean("open_search", true);
                    ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle6);
                    chatUsersActivity.setInfo(ProfileActivity.this.chatInfo);
                    ProfileActivity.this.presentFragment(chatUsersActivity);
                } else if (i == 18) {
                    ProfileActivity.this.openAddMember();
                } else if (i == 19) {
                    TLRPC$Chat chat2 = ProfileActivity.this.getMessagesController().getChat(Long.valueOf(ProfileActivity.this.chatId));
                    Bundle bundle7 = new Bundle();
                    bundle7.putLong("chat_id", ProfileActivity.this.chatId);
                    bundle7.putBoolean("is_megagroup", chat2.megagroup);
                    ProfileActivity.this.presentFragment(new StatisticActivity(bundle7));
                } else if (i == 22) {
                    ProfileActivity.this.openDiscussion();
                } else if (i == 38) {
                    ProfileActivity profileActivity6 = ProfileActivity.this;
                    ProfileActivity profileActivity7 = ProfileActivity.this;
                    profileActivity6.showDialog(new GiftPremiumBottomSheet(profileActivity7, profileActivity7.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId))));
                } else if (i == 20) {
                    AlertDialog.Builder builder4 = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                    builder4.setTitle(LocaleController.getString("AreYouSureSecretChatTitle", C3158R.string.AreYouSureSecretChatTitle));
                    builder4.setMessage(LocaleController.getString("AreYouSureSecretChat", C3158R.string.AreYouSureSecretChat));
                    builder4.setPositiveButton(LocaleController.getString("Start", C3158R.string.Start), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            ProfileActivity.C61726.this.lambda$onItemClick$7(dialogInterface, i3);
                        }
                    });
                    builder4.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                    ProfileActivity.this.showDialog(builder4.create());
                } else if (i == 21) {
                    if (ProfileActivity.this.getParentActivity() == null) {
                        return;
                    }
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 < 23 || ((i3 > 28 && !BuildVars.NO_SCOPED_STORAGE) || ProfileActivity.this.getParentActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)) {
                        ImageLocation imageLocation = ProfileActivity.this.avatarsViewPager.getImageLocation(ProfileActivity.this.avatarsViewPager.getRealPosition());
                        if (imageLocation == null) {
                            return;
                        }
                        final boolean z = imageLocation.imageType == 2;
                        File pathToAttach = FileLoader.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getPathToAttach(imageLocation.location, z ? "mp4" : null, true);
                        if (pathToAttach.exists()) {
                            MediaController.saveFile(pathToAttach.toString(), ProfileActivity.this.getParentActivity(), 0, null, null, new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda7
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ProfileActivity.C61726.this.lambda$onItemClick$8(z);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    ProfileActivity.this.getParentActivity().requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
                } else if (i == 30) {
                    ProfileActivity profileActivity8 = ProfileActivity.this;
                    profileActivity8.presentFragment(new ChangeNameActivity(profileActivity8.resourcesProvider));
                } else if (i == 31) {
                    ProfileActivity.this.presentFragment(new LogoutActivity());
                } else if (i == 33) {
                    int realPosition = ProfileActivity.this.avatarsViewPager.getRealPosition();
                    final TLRPC$Photo photo = ProfileActivity.this.avatarsViewPager.getPhoto(realPosition);
                    if (photo == null) {
                        return;
                    }
                    ProfileActivity.this.avatarsViewPager.startMovePhotoToBegin(realPosition);
                    TLRPC$TL_photos_updateProfilePhoto tLRPC$TL_photos_updateProfilePhoto = new TLRPC$TL_photos_updateProfilePhoto();
                    TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
                    tLRPC$TL_photos_updateProfilePhoto.f1618id = tLRPC$TL_inputPhoto;
                    tLRPC$TL_inputPhoto.f1516id = photo.f1523id;
                    tLRPC$TL_inputPhoto.access_hash = photo.access_hash;
                    tLRPC$TL_inputPhoto.file_reference = photo.file_reference;
                    final UserConfig userConfig = ProfileActivity.this.getUserConfig();
                    ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_photos_updateProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda10
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            ProfileActivity.C61726.this.lambda$onItemClick$10(userConfig, photo, tLObject, tLRPC$TL_error);
                        }
                    });
                    ProfileActivity.this.undoView.showWithAction(ProfileActivity.this.userId, 22, photo.video_sizes.isEmpty() ? null : 1);
                    TLRPC$User user7 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
                    TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 800);
                    if (user7 != null) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 90);
                        TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = user7.photo;
                        tLRPC$UserProfilePhoto.photo_id = photo.f1523id;
                        tLRPC$UserProfilePhoto.photo_small = closestPhotoSizeWithSize2.location;
                        tLRPC$UserProfilePhoto.photo_big = closestPhotoSizeWithSize.location;
                        userConfig.setCurrentUser(user7);
                        userConfig.saveConfig(true);
                        NotificationCenter.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
                        ProfileActivity.this.updateProfileData(true);
                    }
                    ProfileActivity.this.avatarsViewPager.commitMoveToBegin();
                } else if (i == 34) {
                    int realPosition2 = ProfileActivity.this.avatarsViewPager.getRealPosition();
                    ImageLocation imageLocation2 = ProfileActivity.this.avatarsViewPager.getImageLocation(realPosition2);
                    if (imageLocation2 == null) {
                        return;
                    }
                    File pathToAttach2 = FileLoader.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getPathToAttach(PhotoViewer.getFileLocation(imageLocation2), PhotoViewer.getFileLocationExt(imageLocation2), true);
                    boolean z2 = imageLocation2.imageType == 2;
                    if (z2) {
                        ImageLocation realImageLocation = ProfileActivity.this.avatarsViewPager.getRealImageLocation(realPosition2);
                        str2 = FileLoader.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getPathToAttach(PhotoViewer.getFileLocation(realImageLocation), PhotoViewer.getFileLocationExt(realImageLocation), true).getAbsolutePath();
                    }
                    ProfileActivity.this.imageUpdater.openPhotoForEdit(pathToAttach2.getAbsolutePath(), str2, 0, z2);
                } else if (i != 35) {
                    if (i == 36) {
                        ProfileActivity.this.onWriteButtonClick();
                    } else if (i != 37 || ProfileActivity.this.qrItem == null || ProfileActivity.this.qrItem.getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                    } else {
                        Bundle bundle8 = new Bundle();
                        bundle8.putLong("chat_id", ProfileActivity.this.chatId);
                        bundle8.putLong("user_id", ProfileActivity.this.userId);
                        ProfileActivity.this.presentFragment(new QrActivity(bundle8));
                    }
                } else {
                    AlertDialog.Builder builder5 = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                    ImageLocation imageLocation3 = ProfileActivity.this.avatarsViewPager.getImageLocation(ProfileActivity.this.avatarsViewPager.getRealPosition());
                    if (imageLocation3 == null) {
                        return;
                    }
                    if (imageLocation3.imageType == 2) {
                        builder5.setTitle(LocaleController.getString("AreYouSureDeleteVideoTitle", C3158R.string.AreYouSureDeleteVideoTitle));
                        builder5.setMessage(LocaleController.formatString("AreYouSureDeleteVideo", C3158R.string.AreYouSureDeleteVideo, new Object[0]));
                    } else {
                        builder5.setTitle(LocaleController.getString("AreYouSureDeletePhotoTitle", C3158R.string.AreYouSureDeletePhotoTitle));
                        builder5.setMessage(LocaleController.formatString("AreYouSureDeletePhoto", C3158R.string.AreYouSureDeletePhoto, new Object[0]));
                    }
                    builder5.setPositiveButton(LocaleController.getString("Delete", C3158R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            ProfileActivity.C61726.this.lambda$onItemClick$11(dialogInterface, i4);
                        }
                    });
                    builder5.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                    AlertDialog create4 = builder5.create();
                    ProfileActivity.this.showDialog(create4);
                    TextView textView4 = (TextView) create4.getButton(-1);
                    if (textView4 != null) {
                        textView4.setTextColor(ProfileActivity.this.getThemedColor("dialogTextRed2"));
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(int i) {
            if (i == 1) {
                NotificationCenter notificationCenter = ProfileActivity.this.getNotificationCenter();
                ProfileActivity profileActivity = ProfileActivity.this;
                int i2 = NotificationCenter.closeChats;
                notificationCenter.removeObserver(profileActivity, i2);
                ProfileActivity.this.getNotificationCenter().postNotificationName(i2, new Object[0]);
                ProfileActivity.this.playProfileAnimation = 0;
                ProfileActivity.this.finishFragment();
                return;
            }
            ProfileActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.peerSettingsDidLoad, Long.valueOf(ProfileActivity.this.userId));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(DialogInterface dialogInterface, int i) {
            ProfileActivity.this.getMessagesController().blockPeer(ProfileActivity.this.userId);
            if (BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                BulletinFactory.createBanBulletin(ProfileActivity.this, true).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(TLRPC$User tLRPC$User, DialogInterface dialogInterface, int i) {
            ArrayList<TLRPC$User> arrayList = new ArrayList<>();
            arrayList.add(tLRPC$User);
            ProfileActivity.this.getContactsController().deleteContact(arrayList, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onItemClick$6(final TLRPC$User tLRPC$User, final DialogsActivity dialogsActivity, final DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment) {
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
            final long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            TLRPC$Chat chat = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getChat(Long.valueOf(-j));
            if (chat != null && (chat.creator || ((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.add_admins))) {
                ProfileActivity.this.getMessagesController().checkIsInChat(false, chat, tLRPC$User, new MessagesController.IsInChatCheckedCallback() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda8
                    @Override // org.telegram.messenger.MessagesController.IsInChatCheckedCallback
                    public final void run(boolean z2, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2, String str) {
                        ProfileActivity.C61726.this.lambda$onItemClick$4(j, dialogsActivity, z2, tLRPC$TL_chatAdminRights2, str);
                    }
                });
            } else {
                AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                int i = C3158R.string.AddBot;
                builder.setTitle(LocaleController.getString("AddBot", i));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("AddMembersAlertNamesText", C3158R.string.AddMembersAlertNamesText, UserObject.getUserName(tLRPC$User), chat == null ? "" : chat.title)));
                builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                builder.setPositiveButton(LocaleController.getString("AddBot", i), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProfileActivity.C61726.this.lambda$onItemClick$5(j, dialogsActivity2, tLRPC$User, dialogInterface, i2);
                    }
                });
                ProfileActivity.this.showDialog(builder.create());
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(final long j, final DialogsActivity dialogsActivity, final boolean z, final TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.C61726.this.lambda$onItemClick$3(j, tLRPC$TL_chatAdminRights, str, z, dialogsActivity);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$3(long j, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, String str, boolean z, final DialogsActivity dialogsActivity) {
            ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(ProfileActivity.this.userId, -j, tLRPC$TL_chatAdminRights, null, null, str, 2, true, !z, null);
            chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ProfileActivity.6.3
                @Override // org.telegram.p048ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
                public void didChangeOwner(TLRPC$User tLRPC$User) {
                }

                @Override // org.telegram.p048ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
                public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str2) {
                    ProfileActivity.this.disableProfileAnimation = true;
                    dialogsActivity.removeSelfFromStack();
                    NotificationCenter notificationCenter = ProfileActivity.this.getNotificationCenter();
                    ProfileActivity profileActivity = ProfileActivity.this;
                    int i2 = NotificationCenter.closeChats;
                    notificationCenter.removeObserver(profileActivity, i2);
                    ProfileActivity.this.getNotificationCenter().postNotificationName(i2, new Object[0]);
                }
            });
            ProfileActivity.this.presentFragment(chatRightsEditActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$5(long j, DialogsActivity dialogsActivity, TLRPC$User tLRPC$User, DialogInterface dialogInterface, int i) {
            ProfileActivity.this.disableProfileAnimation = true;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            long j2 = -j;
            bundle.putLong("chat_id", j2);
            if (ProfileActivity.this.getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                ChatActivity chatActivity = new ChatActivity(bundle);
                NotificationCenter notificationCenter = ProfileActivity.this.getNotificationCenter();
                ProfileActivity profileActivity = ProfileActivity.this;
                int i2 = NotificationCenter.closeChats;
                notificationCenter.removeObserver(profileActivity, i2);
                ProfileActivity.this.getNotificationCenter().postNotificationName(i2, new Object[0]);
                ProfileActivity.this.getMessagesController().addUserToChat(j2, tLRPC$User, 0, null, chatActivity, true, null, null);
                ProfileActivity.this.presentFragment(chatActivity, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$7(DialogInterface dialogInterface, int i) {
            ProfileActivity.this.creatingChat = true;
            ProfileActivity.this.getSecretChatHelper().startSecretChat(ProfileActivity.this.getParentActivity(), ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$8(boolean z) {
            if (ProfileActivity.this.getParentActivity() == null) {
                return;
            }
            BulletinFactory.createSaveToGalleryBulletin(ProfileActivity.this, z, null).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$10(final UserConfig userConfig, final TLRPC$Photo tLRPC$Photo, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.C61726.this.lambda$onItemClick$9(tLObject, userConfig, tLRPC$Photo);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$9(TLObject tLObject, UserConfig userConfig, TLRPC$Photo tLRPC$Photo) {
            ProfileActivity.this.avatarsViewPager.finishSettingMainPhoto();
            if (tLObject instanceof TLRPC$TL_photos_photo) {
                TLRPC$TL_photos_photo tLRPC$TL_photos_photo = (TLRPC$TL_photos_photo) tLObject;
                ProfileActivity.this.getMessagesController().putUsers(tLRPC$TL_photos_photo.users, false);
                TLRPC$User user = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
                if (tLRPC$TL_photos_photo.photo instanceof TLRPC$TL_photo) {
                    ProfileActivity.this.avatarsViewPager.replaceFirstPhoto(tLRPC$Photo, tLRPC$TL_photos_photo.photo);
                    if (user != null) {
                        user.photo.photo_id = tLRPC$TL_photos_photo.photo.f1523id;
                        userConfig.setCurrentUser(user);
                        userConfig.saveConfig(true);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$11(DialogInterface dialogInterface, int i) {
            TLRPC$Photo tLRPC$Photo;
            int realPosition = ProfileActivity.this.avatarsViewPager.getRealPosition();
            TLRPC$Photo photo = ProfileActivity.this.avatarsViewPager.getPhoto(realPosition);
            TLRPC$UserFull userInfo = ProfileActivity.this.getUserInfo();
            if (ProfileActivity.this.hasFallbackPhoto && photo != null && userInfo != null && (tLRPC$Photo = userInfo.fallback_photo) != null && tLRPC$Photo.f1523id == photo.f1523id) {
                userInfo.fallback_photo = null;
                userInfo.flags &= -4194305;
                ProfileActivity.this.getMessagesStorage().updateUserInfo(userInfo, true);
                ProfileActivity.this.updateProfileData(false);
            }
            if (ProfileActivity.this.avatarsViewPager.getRealCount() == 1) {
                ProfileActivity.this.setForegroundImage(true);
            }
            if (photo == null || ProfileActivity.this.avatarsViewPager.getRealPosition() == 0) {
                ProfileActivity.this.getMessagesController().deleteUserPhoto(null);
            } else {
                TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
                tLRPC$TL_inputPhoto.f1516id = photo.f1523id;
                tLRPC$TL_inputPhoto.access_hash = photo.access_hash;
                byte[] bArr = photo.file_reference;
                tLRPC$TL_inputPhoto.file_reference = bArr;
                if (bArr == null) {
                    tLRPC$TL_inputPhoto.file_reference = new byte[0];
                }
                ProfileActivity.this.getMessagesController().deleteUserPhoto(tLRPC$TL_inputPhoto);
                ProfileActivity.this.getMessagesStorage().clearUserPhoto(ProfileActivity.this.userId, photo.f1523id);
            }
            if (ProfileActivity.this.avatarsViewPager.removePhotoAtIndex(realPosition)) {
                ProfileActivity.this.avatarsViewPager.setVisibility(8);
                ProfileActivity.this.avatarImage.setForegroundAlpha(1.0f);
                ProfileActivity.this.avatarContainer.setVisibility(0);
                ProfileActivity.this.doNotSetForeground = true;
                View findViewByPosition = ProfileActivity.this.layoutManager.findViewByPosition(0);
                if (findViewByPosition != null) {
                    ProfileActivity.this.listView.smoothScrollBy(0, findViewByPosition.getTop() - AndroidUtilities.m50dp(88), CubicBezierInterpolator.EASE_OUT_QUINT);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$7 */
    /* loaded from: classes5.dex */
    public class C61767 extends NestedFrameLayout {
        private Paint grayPaint;
        private boolean ignoreLayout;
        private final ArrayList<View> sortedChildren;
        private final Comparator<View> viewComparator;
        private boolean wasPortrait;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        C61767(Context context) {
            super(context);
            this.grayPaint = new Paint();
            this.sortedChildren = new ArrayList<>();
            this.viewComparator = ProfileActivity$7$$ExternalSyntheticLambda1.INSTANCE;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (!ProfileActivity.this.pinchToZoomHelper.isInOverlayMode()) {
                if (ProfileActivity.this.sharedMediaLayout == null || !ProfileActivity.this.sharedMediaLayout.isInFastScroll() || !ProfileActivity.this.sharedMediaLayout.isPinnedToTop()) {
                    if (ProfileActivity.this.sharedMediaLayout == null || !ProfileActivity.this.sharedMediaLayout.checkPinchToZoom(motionEvent)) {
                        return super.dispatchTouchEvent(motionEvent);
                    }
                    return true;
                }
                return ProfileActivity.this.sharedMediaLayout.dispatchFastScrollEvent(motionEvent);
            }
            return ProfileActivity.this.pinchToZoomHelper.onTouchEvent(motionEvent);
        }

        /* JADX WARN: Removed duplicated region for block: B:154:0x0561  */
        /* JADX WARN: Removed duplicated region for block: B:163:0x059f  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x05a4  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x05b6  */
        /* JADX WARN: Removed duplicated region for block: B:180:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r18, int r19) {
            /*
                Method dump skipped, instructions count: 1481
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.C61767.onMeasure(int, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            if (ProfileActivity.this.selectAnimatedEmojiDialog != null) {
                ProfileActivity.this.selectAnimatedEmojiDialog.dismiss();
                ProfileActivity.this.selectAnimatedEmojiDialog = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ProfileActivity profileActivity = ProfileActivity.this;
            profileActivity.savedScrollPosition = -1;
            profileActivity.firstLayout = false;
            ProfileActivity.this.invalidateScroll = false;
            ProfileActivity.this.checkListViewScroll();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$$1(View view, View view2) {
            return (int) (view.getY() - view2.getY());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int top;
            FragmentContextView fragmentContextView;
            boolean z;
            int i;
            ProfileActivity.this.whitePaint.setColor(ProfileActivity.this.getThemedColor("windowBackgroundWhite"));
            if (ProfileActivity.this.listView.getVisibility() != 0) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, ProfileActivity.this.searchListView.getTop() + ProfileActivity.this.extraHeight + ProfileActivity.this.searchTransitionOffset, getMeasuredWidth(), top + getMeasuredHeight(), ProfileActivity.this.whitePaint);
            } else {
                this.grayPaint.setColor(ProfileActivity.this.getThemedColor("windowBackgroundGray"));
                if (ProfileActivity.this.transitionAnimationInProress) {
                    ProfileActivity.this.whitePaint.setAlpha((int) (ProfileActivity.this.listView.getAlpha() * 255.0f));
                }
                if (ProfileActivity.this.transitionAnimationInProress) {
                    this.grayPaint.setAlpha((int) (ProfileActivity.this.listView.getAlpha() * 255.0f));
                }
                int childCount = ProfileActivity.this.listView.getChildCount();
                this.sortedChildren.clear();
                boolean z2 = false;
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (ProfileActivity.this.listView.getChildAdapterPosition(ProfileActivity.this.listView.getChildAt(i2)) != -1) {
                        this.sortedChildren.add(ProfileActivity.this.listView.getChildAt(i2));
                    } else {
                        z2 = true;
                    }
                }
                Collections.sort(this.sortedChildren, this.viewComparator);
                float y = ProfileActivity.this.listView.getY();
                int size = this.sortedChildren.size();
                if (!ProfileActivity.this.openAnimationInProgress && size > 0 && !z2) {
                    y += this.sortedChildren.get(0).getY();
                }
                float f = y;
                boolean z3 = false;
                float f2 = 1.0f;
                for (int i3 = 0; i3 < size; i3++) {
                    View view = this.sortedChildren.get(i3);
                    boolean z4 = view.getBackground() != null;
                    int y2 = (int) (ProfileActivity.this.listView.getY() + view.getY());
                    if (z3 == z4) {
                        if (view.getAlpha() == 1.0f) {
                            f2 = 1.0f;
                        }
                    } else {
                        if (z3) {
                            z = z4;
                            canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), y2, this.grayPaint);
                            i = y2;
                        } else {
                            z = z4;
                            if (f2 != 1.0f) {
                                float f3 = y2;
                                i = y2;
                                canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), f3, this.grayPaint);
                                ProfileActivity.this.whitePaint.setAlpha((int) (f2 * 255.0f));
                                canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), f3, ProfileActivity.this.whitePaint);
                                ProfileActivity.this.whitePaint.setAlpha(255);
                            } else {
                                i = y2;
                                canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), i, ProfileActivity.this.whitePaint);
                            }
                        }
                        f = i;
                        f2 = view.getAlpha();
                        z3 = z;
                    }
                }
                if (z3) {
                    canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), ProfileActivity.this.listView.getBottom(), this.grayPaint);
                } else if (f2 != 1.0f) {
                    canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), ProfileActivity.this.listView.getBottom(), this.grayPaint);
                    ProfileActivity.this.whitePaint.setAlpha((int) (f2 * 255.0f));
                    canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), ProfileActivity.this.listView.getBottom(), ProfileActivity.this.whitePaint);
                    ProfileActivity.this.whitePaint.setAlpha(255);
                } else {
                    canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), ProfileActivity.this.listView.getBottom(), ProfileActivity.this.whitePaint);
                }
            }
            super.dispatchDraw(canvas);
            ProfileActivity profileActivity = ProfileActivity.this;
            if (profileActivity.profileTransitionInProgress && ((BaseFragment) profileActivity).parentLayout.getFragmentStack().size() > 1) {
                BaseFragment baseFragment = ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack().get(((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack().size() - 2);
                if ((baseFragment instanceof ChatActivity) && (fragmentContextView = ((ChatActivity) baseFragment).getFragmentContextView()) != null && fragmentContextView.isCallStyle()) {
                    float dpf2 = ProfileActivity.this.extraHeight / AndroidUtilities.dpf2(fragmentContextView.getStyleHeight());
                    float f4 = dpf2 <= 1.0f ? dpf2 : 1.0f;
                    canvas.save();
                    canvas.translate(fragmentContextView.getX(), fragmentContextView.getY());
                    fragmentContextView.setDrawOverlay(true);
                    fragmentContextView.setCollapseTransition(true, ProfileActivity.this.extraHeight, f4);
                    fragmentContextView.draw(canvas);
                    fragmentContextView.setCollapseTransition(false, ProfileActivity.this.extraHeight, f4);
                    fragmentContextView.setDrawOverlay(false);
                    canvas.restore();
                }
            }
            if (ProfileActivity.this.scrimPaint.getAlpha() > 0) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), ProfileActivity.this.scrimPaint);
            }
            if (ProfileActivity.this.scrimView != null) {
                int save = canvas.save();
                canvas.translate(ProfileActivity.this.scrimView.getLeft(), ProfileActivity.this.scrimView.getTop());
                if (ProfileActivity.this.scrimView == ((BaseFragment) ProfileActivity.this).actionBar.getBackButton()) {
                    int alpha = ProfileActivity.this.actionBarBackgroundPaint.getAlpha();
                    ProfileActivity.this.actionBarBackgroundPaint.setAlpha((int) ((alpha * (ProfileActivity.this.scrimPaint.getAlpha() / 255.0f)) / 0.3f));
                    float max = Math.max(ProfileActivity.this.scrimView.getMeasuredWidth(), ProfileActivity.this.scrimView.getMeasuredHeight()) / 2;
                    canvas.drawCircle(max, max, 0.7f * max, ProfileActivity.this.actionBarBackgroundPaint);
                    ProfileActivity.this.actionBarBackgroundPaint.setAlpha(alpha);
                }
                ProfileActivity.this.scrimView.draw(canvas);
                canvas.restoreToCount(save);
            }
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (ProfileActivity.this.pinchToZoomHelper.isInOverlayMode() && (view == ProfileActivity.this.avatarContainer2 || view == ((BaseFragment) ProfileActivity.this).actionBar || view == ProfileActivity.this.writeButton || view == ProfileActivity.this.transferButton)) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            ProfileActivity.this.fragmentViewAttached = true;
            for (int i = 0; i < ProfileActivity.this.emojiStatusDrawable.length; i++) {
                if (ProfileActivity.this.emojiStatusDrawable[i] != null) {
                    ProfileActivity.this.emojiStatusDrawable[i].attach();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            ProfileActivity.this.fragmentViewAttached = false;
            for (int i = 0; i < ProfileActivity.this.emojiStatusDrawable.length; i++) {
                if (ProfileActivity.this.emojiStatusDrawable[i] != null) {
                    ProfileActivity.this.emojiStatusDrawable[i].detach();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$11 */
    /* loaded from: classes5.dex */
    public class C612711 extends DefaultItemAnimator {
        int animationIndex = -1;

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        protected long getAddAnimationDelay(long j, long j2, long j3) {
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public long getAddDuration() {
            return 220L;
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        protected long getMoveAnimationDelay() {
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public long getMoveDuration() {
            return 220L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public long getRemoveDuration() {
            return 220L;
        }

        C612711() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void onAllAnimationsDone() {
            super.onAllAnimationsDone();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$11$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.C612711.this.lambda$onAllAnimationsDone$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAllAnimationsDone$0() {
            ProfileActivity.this.getNotificationCenter().onAnimationFinish(this.animationIndex);
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void runPendingAnimations() {
            boolean z = !this.mPendingRemovals.isEmpty();
            boolean z2 = !this.mPendingMoves.isEmpty();
            boolean z3 = !this.mPendingChanges.isEmpty();
            boolean z4 = !this.mPendingAdditions.isEmpty();
            if (z || z2 || z4 || z3) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$11$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ProfileActivity.C612711.this.lambda$runPendingAnimations$1(valueAnimator);
                    }
                });
                ofFloat.setDuration(getMoveDuration());
                ofFloat.start();
                this.animationIndex = ProfileActivity.this.getNotificationCenter().setAnimationInProgress(this.animationIndex, null);
            }
            super.runPendingAnimations();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$runPendingAnimations$1(ValueAnimator valueAnimator) {
            ProfileActivity.this.listView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(final long j, Context context, View view, int i, float f, float f2) {
        TLRPC$ChatParticipant tLRPC$ChatParticipant;
        float f3;
        float f4;
        ListAdapter listAdapter;
        if (getParentActivity() == null) {
            return;
        }
        this.listView.stopScroll();
        if (i == this.infoHeaderRow || i == this.numberSectionRow) {
            SharedConfig.setProfileInfoHidden(!SharedConfig.isProfileInfoHidden);
            updateRowsIds();
            this.listAdapter.notifyDataSetChanged();
        } else if (i == this.profileTopicRow) {
            showDialog(new TopicsAlert(this, Collections.singletonList(Long.valueOf(getDialogId())), false, null));
        } else if (i == this.dialogIdRow) {
            showDialog(AlertsCreator.createProfileIdDialog(view.getContext(), getDialogIdText()));
        } else if (i == this.settingsToolsRow) {
            presentFragment(new SettingsToolsActivity());
        } else if (i == this.settingsTopicsRow) {
            presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        } else if (i == this.settingsHelpRow) {
            showDialog(new SettingsHelpBottomSheet(SettingsHelpBottomSheet.ScreenType.COMMON_SETTINGS, this));
        } else if (i == this.notificationsSimpleRow) {
            boolean isDialogMuted = getMessagesController().isDialogMuted(j, this.topicId);
            getNotificationsController().muteDialog(j, this.topicId, !isDialogMuted);
            BulletinFactory.createMuteBulletin(this, !isDialogMuted, null).show();
            updateExceptions();
            int i2 = this.notificationsSimpleRow;
            if (i2 >= 0 && (listAdapter = this.listAdapter) != null) {
                listAdapter.notifyItemChanged(i2);
            }
        } else if (i == this.addToContactsRow) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", user.f1633id);
            bundle.putBoolean("addContact", true);
            bundle.putString("phone", this.vcardPhone);
            bundle.putString("first_name_card", this.vcardFirstName);
            bundle.putString("last_name_card", this.vcardLastName);
            presentFragment(new ContactAddActivity(bundle, this.resourcesProvider));
        } else if (i == this.reportReactionRow) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
            builder.setTitle(LocaleController.getString("ReportReaction", C3158R.string.ReportReaction));
            builder.setMessage(LocaleController.getString("ReportAlertReaction", C3158R.string.ReportAlertReaction));
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-this.reportReactionFromDialogId));
            final CheckBoxCell[] checkBoxCellArr = new CheckBoxCell[1];
            if (chat != null && ChatObject.canBlockUsers(chat)) {
                LinearLayout linearLayout = new LinearLayout(getParentActivity());
                linearLayout.setOrientation(1);
                checkBoxCellArr[0] = new CheckBoxCell(getParentActivity(), 1, this.resourcesProvider);
                checkBoxCellArr[0].setBackgroundDrawable(Theme.getSelectorDrawable(false));
                checkBoxCellArr[0].setText(LocaleController.getString("BanUser", C3158R.string.BanUser), "", true, false);
                checkBoxCellArr[0].setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(16) : AndroidUtilities.m50dp(8), 0, LocaleController.isRTL ? AndroidUtilities.m50dp(8) : AndroidUtilities.m50dp(16), 0);
                linearLayout.addView(checkBoxCellArr[0], LayoutHelper.createLinear(-1, -2));
                checkBoxCellArr[0].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda21
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ProfileActivity.lambda$createView$10(checkBoxCellArr, view2);
                    }
                });
                builder.setView(linearLayout);
            }
            builder.setPositiveButton(LocaleController.getString("ReportChat", C3158R.string.ReportChat), new DialogInterface$OnClickListenerC612913(checkBoxCellArr));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), new DialogInterface.OnClickListener(this) { // from class: org.telegram.ui.ProfileActivity.14
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i3) {
                    dialogInterface.dismiss();
                }
            });
            TextView textView = (TextView) builder.show().getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor("dialogTextRed2"));
            }
        }
        if (i == this.settingsKeyRow) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("chat_id", DialogObject.getEncryptedChatId(this.dialogId));
            presentFragment(new IdenticonActivity(bundle2));
        } else if (i == this.settingsTimerRow) {
            showDialog(AlertsCreator.createTTLAlert(getParentActivity(), this.currentEncryptedChat, this.resourcesProvider).create());
        } else if (i == this.notificationsRow) {
            if ((LocaleController.isRTL && f <= AndroidUtilities.m50dp(76)) || (!LocaleController.isRTL && f >= view.getMeasuredWidth() - AndroidUtilities.m50dp(76))) {
                if (view instanceof NotificationsCheckCell) {
                    NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                    boolean z = !notificationsCheckCell.isChecked();
                    boolean isGlobalNotificationsEnabled = getNotificationsController().isGlobalNotificationsEnabled(j);
                    String sharedPrefKey = NotificationsController.getSharedPrefKey(j, this.topicId);
                    long j2 = 0;
                    if (z) {
                        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
                        if (isGlobalNotificationsEnabled) {
                            edit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey);
                        } else {
                            edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 0);
                        }
                        if (this.topicId == 0) {
                            getMessagesStorage().setDialogFlags(j, 0L);
                            TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(j);
                            if (tLRPC$Dialog != null) {
                                tLRPC$Dialog.notify_settings = new TLRPC$TL_peerNotifySettings();
                            }
                        }
                        edit.apply();
                    } else {
                        SharedPreferences.Editor edit2 = MessagesController.getNotificationsSettings(this.currentAccount).edit();
                        if (!isGlobalNotificationsEnabled) {
                            edit2.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey);
                        } else {
                            edit2.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 2);
                            j2 = 1;
                        }
                        getNotificationsController().removeNotificationsForDialog(j);
                        if (this.topicId == 0) {
                            getMessagesStorage().setDialogFlags(j, j2);
                            TLRPC$Dialog tLRPC$Dialog2 = getMessagesController().dialogs_dict.get(j);
                            if (tLRPC$Dialog2 != null) {
                                TLRPC$TL_peerNotifySettings tLRPC$TL_peerNotifySettings = new TLRPC$TL_peerNotifySettings();
                                tLRPC$Dialog2.notify_settings = tLRPC$TL_peerNotifySettings;
                                if (isGlobalNotificationsEnabled) {
                                    tLRPC$TL_peerNotifySettings.mute_until = Integer.MAX_VALUE;
                                }
                            }
                        }
                        edit2.apply();
                    }
                    updateExceptions();
                    getNotificationsController().updateServerNotificationsSettings(j, this.topicId);
                    notificationsCheckCell.setChecked(z);
                    RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findViewHolderForPosition(this.notificationsRow);
                    if (holder != null) {
                        this.listAdapter.onBindViewHolder(holder, this.notificationsRow);
                        return;
                    }
                    return;
                }
                return;
            }
            ChatNotificationsPopupWrapper chatNotificationsPopupWrapper = new ChatNotificationsPopupWrapper(context, this.currentAccount, null, true, true, new ChatNotificationsPopupWrapper.Callback() { // from class: org.telegram.ui.ProfileActivity.15
                @Override // org.telegram.p048ui.Components.ChatNotificationsPopupWrapper.Callback
                public /* synthetic */ void dismiss() {
                    ChatNotificationsPopupWrapper.Callback.CC.$default$dismiss(this);
                }

                @Override // org.telegram.p048ui.Components.ChatNotificationsPopupWrapper.Callback
                public void toggleSound() {
                    SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(((BaseFragment) ProfileActivity.this).currentAccount);
                    boolean z2 = !notificationsSettings.getBoolean("sound_enabled_" + NotificationsController.getSharedPrefKey(j, ProfileActivity.this.topicId), true);
                    notificationsSettings.edit().putBoolean("sound_enabled_" + NotificationsController.getSharedPrefKey(j, ProfileActivity.this.topicId), z2).apply();
                    if (BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                        ProfileActivity profileActivity = ProfileActivity.this;
                        BulletinFactory.createSoundEnabledBulletin(profileActivity, !z2, profileActivity.getResourceProvider()).show();
                    }
                }

                @Override // org.telegram.p048ui.Components.ChatNotificationsPopupWrapper.Callback
                public void muteFor(int i3) {
                    if (i3 == 0) {
                        if (ProfileActivity.this.getMessagesController().isDialogMuted(j, ProfileActivity.this.topicId)) {
                            toggleMute();
                        }
                        if (BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                            ProfileActivity profileActivity = ProfileActivity.this;
                            BulletinFactory.createMuteBulletin(profileActivity, 4, i3, profileActivity.getResourceProvider()).show();
                            return;
                        }
                        return;
                    }
                    ProfileActivity.this.getNotificationsController().muteUntil(j, ProfileActivity.this.topicId, i3);
                    if (BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                        ProfileActivity profileActivity2 = ProfileActivity.this;
                        BulletinFactory.createMuteBulletin(profileActivity2, 5, i3, profileActivity2.getResourceProvider()).show();
                    }
                    ProfileActivity.this.updateExceptions();
                    if (ProfileActivity.this.notificationsRow < 0 || ProfileActivity.this.listAdapter == null) {
                        return;
                    }
                    ProfileActivity.this.listAdapter.notifyItemChanged(ProfileActivity.this.notificationsRow);
                }

                @Override // org.telegram.p048ui.Components.ChatNotificationsPopupWrapper.Callback
                public void showCustomize() {
                    if (j != 0) {
                        Bundle bundle3 = new Bundle();
                        bundle3.putLong("dialog_id", j);
                        bundle3.putInt("topic_id", ProfileActivity.this.topicId);
                        ProfileActivity profileActivity = ProfileActivity.this;
                        profileActivity.presentFragment(new ProfileNotificationsActivity(bundle3, profileActivity.resourcesProvider));
                    }
                }

                @Override // org.telegram.p048ui.Components.ChatNotificationsPopupWrapper.Callback
                public void toggleMute() {
                    boolean isDialogMuted2 = ProfileActivity.this.getMessagesController().isDialogMuted(j, ProfileActivity.this.topicId);
                    ProfileActivity.this.getNotificationsController().muteDialog(j, ProfileActivity.this.topicId, !isDialogMuted2);
                    if (((BaseFragment) ProfileActivity.this).fragmentView != null) {
                        BulletinFactory.createMuteBulletin(ProfileActivity.this, !isDialogMuted2, null).show();
                    }
                    ProfileActivity.this.updateExceptions();
                    if (ProfileActivity.this.notificationsRow < 0 || ProfileActivity.this.listAdapter == null) {
                        return;
                    }
                    ProfileActivity.this.listAdapter.notifyItemChanged(ProfileActivity.this.notificationsRow);
                }

                @Override // org.telegram.p048ui.Components.ChatNotificationsPopupWrapper.Callback
                public void openExceptions() {
                    Bundle bundle3 = new Bundle();
                    bundle3.putLong("dialog_id", j);
                    TopicsNotifySettingsFragments topicsNotifySettingsFragments = new TopicsNotifySettingsFragments(bundle3);
                    topicsNotifySettingsFragments.setExceptions(ProfileActivity.this.notificationsExceptionTopics);
                    ProfileActivity.this.presentFragment(topicsNotifySettingsFragments);
                }
            }, getResourceProvider());
            chatNotificationsPopupWrapper.lambda$update$11(j, this.topicId, this.notificationsExceptionTopics);
            if (AndroidUtilities.isTablet()) {
                ViewGroup view2 = this.parentLayout.getView();
                f3 = view2.getX() + view2.getPaddingLeft() + f;
                f4 = f2 + view2.getY() + view2.getPaddingTop();
            } else {
                f3 = f;
                f4 = f2;
            }
            chatNotificationsPopupWrapper.showAsOptions(this, view, f3, f4);
        } else if (i == this.unblockRow) {
            getMessagesController().unblockPeer(this.userId);
            if (BulletinFactory.canShowBulletin(this)) {
                BulletinFactory.createBanBulletin(this, false).show();
            }
        } else if (i == this.addToGroupButtonRow) {
            try {
                this.actionBar.getActionBarMenuOnItemClick().onItemClick(9);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        } else if (i == this.sendMessageRow) {
            onWriteButtonClick();
        } else if (i == this.reportRow) {
            AlertsCreator.createReportAlert(getParentActivity(), getDialogId(), 0, this, this.resourcesProvider, null);
        } else if (i >= this.membersStartRow && i < this.membersEndRow) {
            if (!this.sortedUsers.isEmpty()) {
                tLRPC$ChatParticipant = this.chatInfo.participants.participants.get(this.sortedUsers.get(i - this.membersStartRow).intValue());
            } else {
                tLRPC$ChatParticipant = this.chatInfo.participants.participants.get(i - this.membersStartRow);
            }
            onMemberClick(tLRPC$ChatParticipant, false);
        } else if (i == this.addMemberRow) {
            openAddMember();
        } else if (i == this.usernameRow) {
            processOnClickOrPress(i, view, f, f2);
        } else if (i == this.locationRow) {
            if (this.chatInfo.location instanceof TLRPC$TL_channelLocation) {
                LocationActivity locationActivity = new LocationActivity(5);
                locationActivity.setChatLocation(this.chatId, (TLRPC$TL_channelLocation) this.chatInfo.location);
                presentFragment(locationActivity);
            }
        } else if (i == this.joinRow) {
            getMessagesController().addUserToChat(this.currentChat.f1494id, getUserConfig().getCurrentUser(), 0, null, this, null);
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.closeSearchByActiveAction, new Object[0]);
        } else if (i == this.subscribersRow) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("chat_id", this.chatId);
            bundle3.putInt(SessionDescription.ATTR_TYPE, 2);
            ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle3);
            chatUsersActivity.setInfo(this.chatInfo);
            presentFragment(chatUsersActivity);
        } else if (i == this.subscribersRequestsRow) {
            presentFragment(new MemberRequestsActivity(this.chatId));
        } else if (i == this.administratorsRow) {
            Bundle bundle4 = new Bundle();
            bundle4.putLong("chat_id", this.chatId);
            bundle4.putInt(SessionDescription.ATTR_TYPE, 1);
            ChatUsersActivity chatUsersActivity2 = new ChatUsersActivity(bundle4);
            chatUsersActivity2.setInfo(this.chatInfo);
            presentFragment(chatUsersActivity2);
        } else if (i == this.blockedUsersRow) {
            Bundle bundle5 = new Bundle();
            bundle5.putLong("chat_id", this.chatId);
            bundle5.putInt(SessionDescription.ATTR_TYPE, 0);
            ChatUsersActivity chatUsersActivity3 = new ChatUsersActivity(bundle5);
            chatUsersActivity3.setInfo(this.chatInfo);
            presentFragment(chatUsersActivity3);
        } else if (i == this.notificationRow) {
            presentFragment(new NotificationsSettingsActivity());
        } else if (i == this.privacyRow) {
            presentFragment(new PrivacySettingsActivity().setCurrentPassword(this.currentPassword));
        } else if (i == this.dataRow) {
            presentFragment(new DataSettingsActivity());
        } else if (i == this.chatRow) {
            presentFragment(new ThemeActivity(0));
        } else if (i == this.filtersRow) {
            presentFragment(new FiltersSetupActivity());
        } else if (i == this.stickersRow) {
            presentFragment(new StickersActivity(0, null));
        } else if (i == this.devicesRow) {
            presentFragment(new SessionsActivity(0));
        } else if (i == this.questionRow) {
            showDialog(AlertsCreator.createSupportAlert(this, this.resourcesProvider));
        } else if (i == this.faqRow) {
            Browser.openUrl(getParentActivity(), LocaleController.getString("TelegramFaqUrl", C3158R.string.TelegramFaqUrl));
        } else if (i == this.policyRow) {
            Browser.openUrl(getParentActivity(), LocaleController.getString("PrivacyPolicyUrl", C3158R.string.PrivacyPolicyUrl));
        } else if (i == this.sendLogsRow) {
            sendLogs(getParentActivity(), false);
        } else if (i == this.sendLastLogsRow) {
            sendLogs(getParentActivity(), true);
        } else if (i == this.clearLogsRow) {
            FileLog.cleanupLogs();
        } else if (i == this.switchBackendRow) {
            if (getParentActivity() == null) {
                return;
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
            builder2.setMessage(LocaleController.getString("AreYouSure", C3158R.string.AreYouSure));
            builder2.setTitle(LocaleController.getString("AppName", C3158R.string.AppName));
            builder2.setPositiveButton(LocaleController.getString("OK", C3158R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    ProfileActivity.this.lambda$createView$11(dialogInterface, i3);
                }
            });
            builder2.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
            showDialog(builder2.create());
        } else if (i == this.languageRow) {
            presentFragment(new LanguageSelectActivity());
        } else if (i == this.setUsernameRow) {
            presentFragment(new ChangeUsernameActivity());
        } else if (i == this.bioRow) {
            if (this.userInfo != null) {
                presentFragment(new ChangeBioActivity());
            }
        } else if (i == this.numberRow) {
            presentFragment(new ActionIntroActivity(3));
        } else if (i == this.setAvatarRow) {
            onWriteButtonClick();
        } else if (i == this.premiumRow) {
            presentFragment(new PremiumPreviewFragment("settings"));
        } else {
            processOnClickOrPress(i, view, f, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$10(CheckBoxCell[] checkBoxCellArr, View view) {
        checkBoxCellArr[0].setChecked(!checkBoxCellArr[0].isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$13 */
    /* loaded from: classes5.dex */
    public class DialogInterface$OnClickListenerC612913 implements DialogInterface.OnClickListener {
        final /* synthetic */ CheckBoxCell[] val$cells;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onClick$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        DialogInterface$OnClickListenerC612913(CheckBoxCell[] checkBoxCellArr) {
            this.val$cells = checkBoxCellArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            TLRPC$TL_messages_reportReaction tLRPC$TL_messages_reportReaction = new TLRPC$TL_messages_reportReaction();
            tLRPC$TL_messages_reportReaction.user_id = ProfileActivity.this.getMessagesController().getInputUser(ProfileActivity.this.userId);
            tLRPC$TL_messages_reportReaction.peer = ProfileActivity.this.getMessagesController().getInputPeer(ProfileActivity.this.reportReactionFromDialogId);
            tLRPC$TL_messages_reportReaction.f1595id = ProfileActivity.this.reportReactionMessageId;
            ConnectionsManager.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).sendRequest(tLRPC$TL_messages_reportReaction, ProfileActivity$13$$ExternalSyntheticLambda0.INSTANCE);
            CheckBoxCell[] checkBoxCellArr = this.val$cells;
            if (checkBoxCellArr[0] != null && checkBoxCellArr[0].isChecked()) {
                ProfileActivity.this.getMessagesController().deleteParticipantFromChat(-ProfileActivity.this.reportReactionFromDialogId, ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId)));
            }
            ProfileActivity.this.reportReactionMessageId = 0;
            ProfileActivity.this.updateListAnimated(false);
            BulletinFactory.m27of(ProfileActivity.this).createReportSent(ProfileActivity.this.resourcesProvider).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(DialogInterface dialogInterface, int i) {
        SharedConfig.pushAuthKey = null;
        SharedConfig.pushAuthKeyId = null;
        SharedConfig.saveConfig();
        getConnectionsManager().switchBackend(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$16 */
    /* loaded from: classes5.dex */
    public class C613216 implements RecyclerListView.OnItemLongClickListener {
        private int debugMenuTelegramItemsCount;
        private int pressCount = 0;
        final /* synthetic */ Context val$context;

        C613216(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListener
        public boolean onItemClick(View view, int i) {
            int i2;
            String str;
            String string;
            int i3;
            String str2;
            int i4;
            String str3;
            String str4;
            String str5;
            String str6;
            String str7;
            int i5;
            String str8;
            if (i != ProfileActivity.this.dialogIdRow) {
                if (i != ProfileActivity.this.versionRow) {
                    if (i < ProfileActivity.this.membersStartRow || i >= ProfileActivity.this.membersEndRow) {
                        return ProfileActivity.this.processOnClickOrPress(i, view, view.getWidth() / 2.0f, (int) (view.getHeight() * 0.75f));
                    }
                    return ProfileActivity.this.onMemberClick(!ProfileActivity.this.sortedUsers.isEmpty() ? (TLRPC$ChatParticipant) ProfileActivity.this.visibleChatParticipants.get(((Integer) ProfileActivity.this.sortedUsers.get(i - ProfileActivity.this.membersStartRow)).intValue()) : (TLRPC$ChatParticipant) ProfileActivity.this.visibleChatParticipants.get(i - ProfileActivity.this.membersStartRow), true);
                }
                int i6 = this.pressCount + 1;
                this.pressCount = i6;
                if (i6 >= 2 || BuildVars.DEBUG_PRIVATE_VERSION) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                    builder.setTitle(LocaleController.getString("DebugMenu", C3158R.string.DebugMenu));
                    CharSequence[] charSequenceArr = new CharSequence[26];
                    charSequenceArr[0] = LocaleController.getString("DebugMenuImportContacts", C3158R.string.DebugMenuImportContacts);
                    charSequenceArr[1] = LocaleController.getString("DebugMenuReloadContacts", C3158R.string.DebugMenuReloadContacts);
                    charSequenceArr[2] = LocaleController.getString("DebugMenuResetContacts", C3158R.string.DebugMenuResetContacts);
                    charSequenceArr[3] = LocaleController.getString("DebugMenuResetDialogs", C3158R.string.DebugMenuResetDialogs);
                    if (BuildVars.DEBUG_VERSION) {
                        string = null;
                    } else {
                        if (BuildVars.LOGS_ENABLED) {
                            i2 = C3158R.string.DebugMenuDisableLogs;
                            str = "DebugMenuDisableLogs";
                        } else {
                            i2 = C3158R.string.DebugMenuEnableLogs;
                            str = "DebugMenuEnableLogs";
                        }
                        string = LocaleController.getString(str, i2);
                    }
                    charSequenceArr[4] = string;
                    if (SharedConfig.inappCamera) {
                        i3 = C3158R.string.DebugMenuDisableCamera;
                        str2 = "DebugMenuDisableCamera";
                    } else {
                        i3 = C3158R.string.DebugMenuEnableCamera;
                        str2 = "DebugMenuEnableCamera";
                    }
                    charSequenceArr[5] = LocaleController.getString(str2, i3);
                    charSequenceArr[6] = LocaleController.getString("DebugMenuClearMediaCache", C3158R.string.DebugMenuClearMediaCache);
                    charSequenceArr[7] = LocaleController.getString("DebugMenuCallSettings", C3158R.string.DebugMenuCallSettings);
                    charSequenceArr[8] = null;
                    charSequenceArr[9] = (BuildVars.DEBUG_PRIVATE_VERSION || BuildVars.isStandaloneApp()) ? LocaleController.getString("DebugMenuCheckAppUpdate", C3158R.string.DebugMenuCheckAppUpdate) : null;
                    charSequenceArr[10] = LocaleController.getString("DebugMenuReadAllDialogs", C3158R.string.DebugMenuReadAllDialogs);
                    if (SharedConfig.pauseMusicOnRecord) {
                        i4 = C3158R.string.DebugMenuDisablePauseMusic;
                        str3 = "DebugMenuDisablePauseMusic";
                    } else {
                        i4 = C3158R.string.DebugMenuEnablePauseMusic;
                        str3 = "DebugMenuEnablePauseMusic";
                    }
                    charSequenceArr[11] = LocaleController.getString(str3, i4);
                    if (!BuildVars.DEBUG_VERSION || AndroidUtilities.isTablet() || Build.VERSION.SDK_INT < 23) {
                        str4 = null;
                    } else {
                        if (SharedConfig.smoothKeyboard) {
                            i5 = C3158R.string.DebugMenuDisableSmoothKeyboard;
                            str8 = "DebugMenuDisableSmoothKeyboard";
                        } else {
                            i5 = C3158R.string.DebugMenuEnableSmoothKeyboard;
                            str8 = "DebugMenuEnableSmoothKeyboard";
                        }
                        str4 = LocaleController.getString(str8, i5);
                    }
                    charSequenceArr[12] = str4;
                    charSequenceArr[13] = BuildVars.DEBUG_PRIVATE_VERSION ? SharedConfig.disableVoiceAudioEffects ? "Enable voip audio effects" : "Disable voip audio effects" : null;
                    int i7 = Build.VERSION.SDK_INT;
                    charSequenceArr[14] = i7 >= 21 ? SharedConfig.noStatusBar ? "Show status bar background" : "Hide status bar background" : null;
                    boolean z = BuildVars.DEBUG_PRIVATE_VERSION;
                    charSequenceArr[15] = z ? "Clean app update" : null;
                    charSequenceArr[16] = z ? "Reset suggestions" : null;
                    if (z) {
                        str5 = LocaleController.getString(SharedConfig.forceRtmpStream ? C3158R.string.DebugMenuDisableForceRtmpStreamFlag : C3158R.string.DebugMenuEnableForceRtmpStreamFlag);
                    } else {
                        str5 = null;
                    }
                    charSequenceArr[17] = str5;
                    charSequenceArr[18] = BuildVars.DEBUG_PRIVATE_VERSION ? LocaleController.getString(C3158R.string.DebugMenuClearWebViewCache) : null;
                    if (i7 >= 19) {
                        str6 = LocaleController.getString(SharedConfig.debugWebView ? C3158R.string.DebugMenuDisableWebViewDebug : C3158R.string.DebugMenuEnableWebViewDebug);
                    } else {
                        str6 = null;
                    }
                    charSequenceArr[19] = str6;
                    charSequenceArr[20] = (AndroidUtilities.isTabletInternal() && BuildVars.DEBUG_PRIVATE_VERSION) ? SharedConfig.forceDisableTabletMode ? "Enable tablet mode" : "Disable tablet mode" : null;
                    charSequenceArr[21] = null;
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        str7 = LocaleController.getString(SharedConfig.isFloatingDebugActive ? C3158R.string.FloatingDebugDisable : C3158R.string.FloatingDebugEnable);
                    } else {
                        str7 = null;
                    }
                    charSequenceArr[22] = str7;
                    boolean z2 = BuildVars.DEBUG_PRIVATE_VERSION;
                    charSequenceArr[23] = z2 ? "Force remove premium suggestions" : null;
                    charSequenceArr[24] = z2 ? "Share device info" : null;
                    charSequenceArr[25] = z2 ? "Force performance class" : null;
                    final Context context = this.val$context;
                    builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i8) {
                            ProfileActivity.C613216.this.lambda$onItemClick$4(context, dialogInterface, i8);
                        }
                    });
                    this.debugMenuTelegramItemsCount = 26;
                    CharSequence[] charSequenceArr2 = new CharSequence[4];
                    charSequenceArr2[0] = null;
                    DebugPresenter debugPresenter = ProfileActivity.this.debugPresenter;
                    charSequenceArr2[1] = debugPresenter != null ? LocaleController.formatStringInternal(C3158R.string.debug_option_choose_wallet_environment, debugPresenter.getCurrentWalletEnvironment()) : null;
                    DebugPresenter debugPresenter2 = ProfileActivity.this.debugPresenter;
                    charSequenceArr2[2] = (debugPresenter2 == null || !debugPresenter2.isStageEnvironment()) ? null : LocaleController.getInternalString(C3158R.string.debug_option_reset_airdrop);
                    charSequenceArr2[3] = SharedConfig.isDebugForceHighPerformanceEnabled ? "Disable high productivity mode" : "Enable high productivity mode";
                    builder.addItems(charSequenceArr2);
                    builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                    ProfileActivity.this.showDialog(builder.create());
                } else {
                    try {
                        Toast.makeText(ProfileActivity.this.getParentActivity(), "¯\\_(ツ)_/¯", 0).show();
                    } catch (Exception e) {
                        FileLog.m45e(e);
                    }
                }
                return true;
            }
            DialogsFactoryKt.showChatProfileTelegramIdDialog(ProfileActivity.this, new Callbacks$Callback() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda2
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    ProfileActivity.C613216.this.lambda$onItemClick$0();
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ProfileActivity.this.listAdapter.notifyItemChanged(ProfileActivity.this.dialogIdRow);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(Context context, DialogInterface dialogInterface, int i) {
            Long l;
            Long l2;
            String str;
            int i2 = this.debugMenuTelegramItemsCount;
            if (i >= i2) {
                int i3 = i - i2;
                if (i3 == 0) {
                    SharedConfig.setDebugThemeSwitchEnabled(!SharedConfig.isDebugThemeSwitchEnabled);
                    return;
                } else if (i3 == 1) {
                    ProfileActivity.this.showChooseWalletEnvironmentDialog();
                    return;
                } else if (i3 != 2) {
                    if (i3 == 3) {
                        SharedConfig.setDebugForceHighPerformanceEnabled(!SharedConfig.isDebugForceHighPerformanceEnabled);
                        return;
                    }
                    return;
                } else {
                    DebugPresenter debugPresenter = ProfileActivity.this.debugPresenter;
                    if (debugPresenter != null) {
                        debugPresenter.resetAirdropInformation();
                        return;
                    }
                    return;
                }
            }
            int i4 = 0;
            if (i == 0) {
                ProfileActivity.this.getUserConfig().syncContacts = true;
                ProfileActivity.this.getUserConfig().saveConfig(false);
                ProfileActivity.this.getContactsController().forceImportContacts();
            } else if (i == 1) {
                ProfileActivity.this.getContactsController().loadContacts(false, 0L);
            } else if (i == 2) {
                ProfileActivity.this.getContactsController().resetImportedContacts();
            } else if (i == 3) {
                ProfileActivity.this.getMessagesController().forceResetDialogs();
            } else if (i == 4) {
                BuildVars.LOGS_ENABLED = !BuildVars.LOGS_ENABLED;
                ApplicationLoader.applicationContext.getSharedPreferences("systemConfig", 0).edit().putBoolean("logsEnabled", BuildVars.LOGS_ENABLED).commit();
                ProfileActivity.this.updateRowsIds();
                ProfileActivity.this.listAdapter.notifyDataSetChanged();
            } else if (i == 5) {
                SharedConfig.toggleInappCamera();
            } else if (i == 6) {
                ProfileActivity.this.getMessagesStorage().clearSentMedia();
                SharedConfig.setNoSoundHintShowed(false);
                MessagesController.getGlobalMainSettings().edit().remove("archivehint").remove("proximityhint").remove("archivehint_l").remove("gifhint").remove("reminderhint").remove("soundHint").remove("themehint").remove("bganimationhint").remove("filterhint").commit();
                MessagesController.getEmojiSettings(((BaseFragment) ProfileActivity.this).currentAccount).edit().remove("featured_hidden").remove("emoji_featured_hidden").commit();
                SharedConfig.textSelectionHintShows = 0;
                SharedConfig.lockRecordAudioVideoHint = 0;
                SharedConfig.stickersReorderingHintUsed = false;
                SharedConfig.forwardingOptionsHintShown = false;
                SharedConfig.messageSeenHintCount = 3;
                SharedConfig.emojiInteractionsHintCount = 3;
                SharedConfig.dayNightThemeSwitchHintCount = 3;
                SharedConfig.fastScrollHintCount = 3;
                ChatThemeController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).clearCache();
                ProfileActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.newSuggestionsAvailable, new Object[0]);
                RestrictedLanguagesSelectActivity.cleanup();
            } else if (i == 7) {
                VoIPHelper.showCallDebugSettings(ProfileActivity.this.getParentActivity());
            } else if (i == 8) {
                SharedConfig.toggleRoundCamera16to9();
            } else if (i == 9) {
                ((LaunchActivity) ProfileActivity.this.getParentActivity()).checkAppUpdate(true);
            } else if (i == 10) {
                ProfileActivity.this.getMessagesStorage().readAllDialogs(-1);
            } else if (i == 11) {
                SharedConfig.togglePauseMusicOnRecord();
            } else if (i == 12) {
                SharedConfig.toggleSmoothKeyboard();
                if (!SharedConfig.smoothKeyboard || ProfileActivity.this.getParentActivity() == null) {
                    return;
                }
                ProfileActivity.this.getParentActivity().getWindow().setSoftInputMode(16);
            } else if (i == 13) {
                SharedConfig.toggleDisableVoiceAudioEffects();
            } else if (i == 14) {
                SharedConfig.toggleNoStatusBar();
                if (ProfileActivity.this.getParentActivity() == null || Build.VERSION.SDK_INT < 21) {
                    return;
                }
                if (SharedConfig.noStatusBar) {
                    ProfileActivity.this.getParentActivity().getWindow().setStatusBarColor(0);
                } else {
                    ProfileActivity.this.getParentActivity().getWindow().setStatusBarColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                }
            } else if (i == 15) {
                SharedConfig.pendingAppUpdate = null;
                SharedConfig.saveConfig();
                NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.appUpdateAvailable, new Object[0]);
            } else if (i == 16) {
                Set<String> set = ProfileActivity.this.getMessagesController().pendingSuggestions;
                set.add("VALIDATE_PHONE_NUMBER");
                set.add("VALIDATE_PASSWORD");
                ProfileActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.newSuggestionsAvailable, new Object[0]);
            } else if (i == 17) {
                SharedConfig.toggleForceRTMPStream();
            } else if (i == 18) {
                ApplicationLoader.applicationContext.deleteDatabase("webview.db");
                ApplicationLoader.applicationContext.deleteDatabase("webviewCache.db");
                WebStorage.getInstance().deleteAllData();
            } else if (i == 19) {
                SharedConfig.toggleDebugWebView();
                Toast.makeText(ProfileActivity.this.getParentActivity(), LocaleController.getString(SharedConfig.debugWebView ? C3158R.string.DebugMenuWebViewDebugEnabled : C3158R.string.DebugMenuWebViewDebugDisabled), 0).show();
            } else if (i == 20) {
                SharedConfig.toggleForceDisableTabletMode();
                Activity findActivity = AndroidUtilities.findActivity(context);
                Intent launchIntentForPackage = findActivity.getPackageManager().getLaunchIntentForPackage(findActivity.getPackageName());
                findActivity.finishAffinity();
                findActivity.startActivity(launchIntentForPackage);
                System.exit(0);
            } else if (i == 21) {
                SharedConfig.useLNavigation = !SharedConfig.useLNavigation;
                SharedConfig.saveConfig();
                ProfileActivity.this.getParentActivity().recreate();
            } else if (i == 22) {
                FloatingDebugController.setActive((LaunchActivity) ProfileActivity.this.getParentActivity(), !FloatingDebugController.isActive());
            } else if (i == 23) {
                TLRPC$TL_help_dismissSuggestion tLRPC$TL_help_dismissSuggestion = new TLRPC$TL_help_dismissSuggestion();
                tLRPC$TL_help_dismissSuggestion.suggestion = "VALIDATE_PHONE_NUMBER";
                tLRPC$TL_help_dismissSuggestion.peer = new TLRPC$TL_inputPeerEmpty();
                ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_help_dismissSuggestion, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        ProfileActivity.C613216.this.lambda$onItemClick$2(tLObject, tLRPC$TL_error);
                    }
                });
            } else if (i != 24) {
                if (i == 25) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                    builder.setTitle("Force performance class");
                    int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
                    final int measureDevicePerformanceClass = SharedConfig.measureDevicePerformanceClass();
                    CharSequence[] charSequenceArr = new CharSequence[3];
                    StringBuilder sb = new StringBuilder();
                    sb.append(devicePerformanceClass == 2 ? "**HIGH**" : "HIGH");
                    sb.append(measureDevicePerformanceClass == 2 ? " (measured)" : "");
                    charSequenceArr[0] = AndroidUtilities.replaceTags(sb.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(devicePerformanceClass == 1 ? "**AVERAGE**" : "AVERAGE");
                    sb2.append(measureDevicePerformanceClass == 1 ? " (measured)" : "");
                    charSequenceArr[1] = AndroidUtilities.replaceTags(sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(devicePerformanceClass == 0 ? "**LOW**" : "LOW");
                    sb3.append(measureDevicePerformanceClass != 0 ? "" : " (measured)");
                    charSequenceArr[2] = AndroidUtilities.replaceTags(sb3.toString());
                    builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface2, int i5) {
                            ProfileActivity.C613216.lambda$onItemClick$3(measureDevicePerformanceClass, dialogInterface2, i5);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                    builder.show();
                }
            } else {
                int i5 = ConnectionsManager.CPU_COUNT;
                String str2 = "activity";
                int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
                StringBuilder sb4 = new StringBuilder();
                long j = 0;
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                long j7 = 0;
                long j8 = 0;
                while (i4 < i5) {
                    Long sysInfoLong = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i4 + "/cpufreq/cpuinfo_min_freq");
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("/sys/devices/system/cpu/cpu");
                    sb5.append(i4);
                    int i6 = i5;
                    sb5.append("/cpufreq/cpuinfo_cur_freq");
                    Long sysInfoLong2 = AndroidUtilities.getSysInfoLong(sb5.toString());
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("/sys/devices/system/cpu/cpu");
                    sb6.append(i4);
                    int i7 = memoryClass;
                    sb6.append("/cpufreq/cpuinfo_max_freq");
                    Long sysInfoLong3 = AndroidUtilities.getSysInfoLong(sb6.toString());
                    Long sysInfoLong4 = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i4 + "/cpu_capacity");
                    sb4.append("#");
                    sb4.append(i4);
                    sb4.append(" ");
                    String str3 = str2;
                    if (sysInfoLong != null) {
                        sb4.append("min=");
                        l2 = sysInfoLong4;
                        str = "\n";
                        sb4.append(sysInfoLong.longValue() / 1000);
                        sb4.append(" ");
                        j += sysInfoLong.longValue() / 1000;
                        j2++;
                    } else {
                        l2 = sysInfoLong4;
                        str = "\n";
                    }
                    if (sysInfoLong2 != null) {
                        sb4.append("cur=");
                        sb4.append(sysInfoLong2.longValue() / 1000);
                        sb4.append(" ");
                        j3 += sysInfoLong2.longValue() / 1000;
                        j4++;
                    }
                    if (sysInfoLong3 != null) {
                        sb4.append("max=");
                        sb4.append(sysInfoLong3.longValue() / 1000);
                        sb4.append(" ");
                        j5 += sysInfoLong3.longValue() / 1000;
                        j6++;
                    }
                    if (l2 != null) {
                        sb4.append("cpc=");
                        Long l3 = l2;
                        sb4.append(l3);
                        sb4.append(" ");
                        j7 += l3.longValue();
                        j8++;
                    }
                    sb4.append(str);
                    i4++;
                    i5 = i6;
                    memoryClass = i7;
                    str2 = str3;
                }
                int i8 = i5;
                int i9 = memoryClass;
                String str4 = str2;
                StringBuilder sb7 = new StringBuilder();
                sb7.append(Build.MANUFACTURER);
                sb7.append(", ");
                sb7.append(Build.MODEL);
                sb7.append(" (");
                sb7.append(Build.PRODUCT);
                sb7.append(", ");
                sb7.append(Build.DEVICE);
                sb7.append(") ");
                sb7.append(" (android ");
                int i10 = Build.VERSION.SDK_INT;
                sb7.append(i10);
                sb7.append(")\n");
                if (i10 >= 31) {
                    sb7.append("SoC: ");
                    sb7.append(Build.SOC_MANUFACTURER);
                    sb7.append(", ");
                    sb7.append(Build.SOC_MODEL);
                    sb7.append("\n");
                }
                String sysInfoString = AndroidUtilities.getSysInfoString("/sys/kernel/gpu/gpu_model");
                if (sysInfoString != null) {
                    sb7.append("GPU: ");
                    sb7.append(sysInfoString);
                    Long sysInfoLong5 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_min_clock");
                    Long sysInfoLong6 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_mm_min_clock");
                    Long sysInfoLong7 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_max_clock");
                    if (sysInfoLong5 != null) {
                        sb7.append(", min=");
                        l = sysInfoLong6;
                        sb7.append(sysInfoLong5.longValue() / 1000);
                    } else {
                        l = sysInfoLong6;
                    }
                    if (l != null) {
                        sb7.append(", mmin=");
                        sb7.append(l.longValue() / 1000);
                    }
                    if (sysInfoLong7 != null) {
                        sb7.append(", max=");
                        sb7.append(sysInfoLong7.longValue() / 1000);
                    }
                    sb7.append("\n");
                }
                ConfigurationInfo deviceConfigurationInfo = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService(str4)).getDeviceConfigurationInfo();
                sb7.append("GLES Version: ");
                sb7.append(deviceConfigurationInfo.getGlEsVersion());
                sb7.append("\n");
                sb7.append("Memory: class=");
                sb7.append(AndroidUtilities.formatFileSize(i9 * 1024 * 1024));
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) ApplicationLoader.applicationContext.getSystemService(str4)).getMemoryInfo(memoryInfo);
                sb7.append(", total=");
                sb7.append(AndroidUtilities.formatFileSize(memoryInfo.totalMem));
                sb7.append(", avail=");
                sb7.append(AndroidUtilities.formatFileSize(memoryInfo.availMem));
                sb7.append(", low?=");
                sb7.append(memoryInfo.lowMemory);
                sb7.append(" (threshold=");
                sb7.append(AndroidUtilities.formatFileSize(memoryInfo.threshold));
                sb7.append(")");
                sb7.append("\n");
                sb7.append("Current class: ");
                sb7.append(SharedConfig.performanceClassName(SharedConfig.getDevicePerformanceClass()));
                sb7.append(", measured: ");
                sb7.append(SharedConfig.performanceClassName(SharedConfig.measureDevicePerformanceClass()));
                if (i10 >= 31) {
                    sb7.append(", suggest=");
                    sb7.append(Build.VERSION.MEDIA_PERFORMANCE_CLASS);
                }
                sb7.append("\n");
                sb7.append(i8);
                sb7.append(" CPUs");
                if (j2 > 0) {
                    sb7.append(", avgMinFreq=");
                    sb7.append(j / j2);
                }
                if (j4 > 0) {
                    sb7.append(", avgCurFreq=");
                    sb7.append(j3 / j4);
                }
                if (j6 > 0) {
                    sb7.append(", avgMaxFreq=");
                    sb7.append(j5 / j6);
                }
                if (j8 > 0) {
                    sb7.append(", avgCapacity=");
                    sb7.append(j7 / j8);
                }
                sb7.append("\n");
                sb7.append((CharSequence) sb4);
                ProfileActivity.this.showDialog(new DialogC61331(ProfileActivity.this.getParentActivity(), null, sb7.toString(), false, null, false));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            TLRPC$TL_help_dismissSuggestion tLRPC$TL_help_dismissSuggestion = new TLRPC$TL_help_dismissSuggestion();
            tLRPC$TL_help_dismissSuggestion.suggestion = "VALIDATE_PASSWORD";
            tLRPC$TL_help_dismissSuggestion.peer = new TLRPC$TL_inputPeerEmpty();
            ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_help_dismissSuggestion, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                    ProfileActivity.C613216.this.lambda$onItemClick$1(tLObject2, tLRPC$TL_error2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            ProfileActivity.this.getMessagesController().lambda$new$15();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ProfileActivity$16$1 */
        /* loaded from: classes5.dex */
        public class DialogC61331 extends ShareAlert {
            DialogC61331(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2) {
                super(context, arrayList, str, z, str2, z2);
            }

            @Override // org.telegram.p048ui.Components.ShareAlert
            protected void onSend(final LongSparseArray<TLRPC$Dialog> longSparseArray, final int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$16$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.C613216.DialogC61331.this.lambda$onSend$0(longSparseArray, i);
                    }
                }, 250L);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onSend$0(LongSparseArray longSparseArray, int i) {
                BulletinFactory.createInviteSentBulletin(ProfileActivity.this.getParentActivity(), ProfileActivity.this.contentView, longSparseArray.size(), longSparseArray.size() == 1 ? ((TLRPC$Dialog) longSparseArray.valueAt(0)).f1500id : 0L, i, getThemedColor("undo_background"), getThemedColor("undo_infoColor")).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onItemClick$3(int i, DialogInterface dialogInterface, int i2) {
            int i3 = 2 - i2;
            if (i3 == i) {
                SharedConfig.overrideDevicePerformanceClass(-1);
            } else {
                SharedConfig.overrideDevicePerformanceClass(i3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$13(android.view.View r8, int r9) {
        /*
            r7 = this;
            if (r9 >= 0) goto L3
            return
        L3:
            int r8 = r7.numberRow
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            boolean r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$32700(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L50
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$32800(r0)
            int r0 = r0.size()
            if (r9 >= r0) goto L2b
            org.telegram.ui.ProfileActivity$SearchAdapter r8 = r7.searchAdapter
            java.util.ArrayList r8 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$32800(r8)
            java.lang.Object r8 = r8.get(r9)
            goto L9d
        L2b:
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$32800(r0)
            int r0 = r0.size()
            int r0 = r0 + r2
            int r9 = r9 - r0
            if (r9 < 0) goto L9d
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$32900(r0)
            int r0 = r0.size()
            if (r9 >= r0) goto L9d
            org.telegram.ui.ProfileActivity$SearchAdapter r8 = r7.searchAdapter
            java.util.ArrayList r8 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$32900(r8)
            java.lang.Object r8 = r8.get(r9)
            goto L9d
        L50:
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$20800(r0)
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L5e
            int r9 = r9 + (-1)
        L5e:
            if (r9 < 0) goto L77
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$20800(r0)
            int r0 = r0.size()
            if (r9 >= r0) goto L77
            org.telegram.ui.ProfileActivity$SearchAdapter r8 = r7.searchAdapter
            java.util.ArrayList r8 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$20800(r8)
            java.lang.Object r8 = r8.get(r9)
            goto L9d
        L77:
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$20800(r0)
            int r0 = r0.size()
            int r0 = r0 + r2
            int r9 = r9 - r0
            if (r9 < 0) goto L9d
            org.telegram.ui.ProfileActivity$SearchAdapter r0 = r7.searchAdapter
            java.util.ArrayList r0 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$33000(r0)
            int r0 = r0.size()
            if (r9 >= r0) goto L9d
            org.telegram.ui.ProfileActivity$SearchAdapter r8 = r7.searchAdapter
            java.util.ArrayList r8 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$33000(r8)
            java.lang.Object r8 = r8.get(r9)
            r9 = 0
            goto L9e
        L9d:
            r9 = 1
        L9e:
            boolean r0 = r8 instanceof org.telegram.p048ui.ProfileActivity.SearchAdapter.SearchResult
            if (r0 == 0) goto La9
            r0 = r8
            org.telegram.ui.ProfileActivity$SearchAdapter$SearchResult r0 = (org.telegram.p048ui.ProfileActivity.SearchAdapter.SearchResult) r0
            org.telegram.p048ui.ProfileActivity.SearchAdapter.SearchResult.access$33100(r0)
            goto Lca
        La9:
            boolean r0 = r8 instanceof org.telegram.messenger.MessagesController.FaqSearchResult
            if (r0 == 0) goto Lca
            r0 = r8
            org.telegram.messenger.MessagesController$FaqSearchResult r0 = (org.telegram.messenger.MessagesController.FaqSearchResult) r0
            int r3 = r7.currentAccount
            org.telegram.messenger.NotificationCenter r3 = org.telegram.messenger.NotificationCenter.getInstance(r3)
            int r4 = org.telegram.messenger.NotificationCenter.openArticle
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]
            org.telegram.ui.ProfileActivity$SearchAdapter r6 = r7.searchAdapter
            org.telegram.tgnet.TLRPC$WebPage r6 = org.telegram.p048ui.ProfileActivity.SearchAdapter.access$33200(r6)
            r5[r1] = r6
            java.lang.String r0 = r0.url
            r5[r2] = r0
            r3.postNotificationName(r4, r5)
        Lca:
            if (r9 == 0) goto Ld3
            if (r8 == 0) goto Ld3
            org.telegram.ui.ProfileActivity$SearchAdapter r9 = r7.searchAdapter
            r9.addRecent(r8)
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.lambda$createView$13(android.view.View, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$15(View view, int i) {
        if (this.searchAdapter.isSearchWas() || this.searchAdapter.recentSearches.isEmpty()) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C3158R.string.ClearSearchAlertTitle));
        builder.setMessage(LocaleController.getString(C3158R.string.ClearSearchAlert));
        builder.setPositiveButton(LocaleController.getString("ClearButton", C3158R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ProfileActivity.this.lambda$createView$14(dialogInterface, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed2"));
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(DialogInterface dialogInterface, int i) {
        this.searchAdapter.clearRecent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(TLObject tLObject) {
        this.currentChannelParticipant = ((TLRPC$TL_channels_channelParticipant) tLObject).participant;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.this.lambda$createView$16(tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(TLRPC$Chat tLRPC$Chat, View view) {
        long j = this.userId;
        long j2 = this.banFromGroup;
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights = tLRPC$Chat.default_banned_rights;
        TLRPC$ChannelParticipant tLRPC$ChannelParticipant = this.currentChannelParticipant;
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, j2, null, tLRPC$TL_chatBannedRights, tLRPC$ChannelParticipant != null ? tLRPC$ChannelParticipant.banned_rights : null, "", 1, true, false, null);
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ProfileActivity.19
            @Override // org.telegram.p048ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2, String str) {
                ProfileActivity.this.removeSelfFromStack();
            }

            @Override // org.telegram.p048ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC$User tLRPC$User) {
                ProfileActivity.this.undoView.showWithAction(-ProfileActivity.this.chatId, ProfileActivity.this.currentChat.megagroup ? 10 : 9, tLRPC$User);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$20 */
    /* loaded from: classes5.dex */
    public class C613820 extends FrameLayout {
        CanvasButton canvasButton;

        C613820(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (ProfileActivity.this.transitionOnlineText != null) {
                canvas.save();
                canvas.translate(ProfileActivity.this.onlineTextView[0].getX(), ProfileActivity.this.onlineTextView[0].getY());
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, ProfileActivity.this.transitionOnlineText.getMeasuredWidth(), ProfileActivity.this.transitionOnlineText.getMeasuredHeight(), (int) ((1.0f - ProfileActivity.this.avatarAnimationProgress) * 255.0f), 31);
                ProfileActivity.this.transitionOnlineText.draw(canvas);
                canvas.restore();
                canvas.restore();
                invalidate();
            }
            if (ProfileActivity.this.hasFallbackPhoto) {
                ProfileActivity profileActivity = ProfileActivity.this;
                if (profileActivity.photoDescriptionProgress == BitmapDescriptorFactory.HUE_RED || profileActivity.customAvatarProgress == 1.0f) {
                    return;
                }
                float y = ProfileActivity.this.onlineTextView[1].getY() + (ProfileActivity.this.onlineTextView[1].getMeasuredHeight() / 2.0f);
                float m50dp = AndroidUtilities.m50dp(22);
                float m50dp2 = ((AndroidUtilities.m50dp(28) - ProfileActivity.this.customPhotoOffset) + ProfileActivity.this.onlineTextView[1].getX()) - m50dp;
                ProfileActivity.this.fallbackImage.setImageCoords(m50dp2, y - (m50dp / 2.0f), m50dp, m50dp);
                ProfileActivity.this.fallbackImage.setAlpha(ProfileActivity.this.photoDescriptionProgress);
                canvas.save();
                ProfileActivity profileActivity2 = ProfileActivity.this;
                float f = profileActivity2.photoDescriptionProgress;
                canvas.scale(f, f, profileActivity2.fallbackImage.getCenterX(), ProfileActivity.this.fallbackImage.getCenterY());
                ProfileActivity.this.fallbackImage.draw(canvas);
                canvas.restore();
                if (ProfileActivity.this.customAvatarProgress == BitmapDescriptorFactory.HUE_RED) {
                    if (this.canvasButton == null) {
                        CanvasButton canvasButton = new CanvasButton(this);
                        this.canvasButton = canvasButton;
                        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.ProfileActivity$20$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                ProfileActivity.C613820.this.lambda$dispatchDraw$0();
                            }
                        });
                    }
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(m50dp2 - AndroidUtilities.m50dp(4), y - AndroidUtilities.m50dp(14), m50dp2 + ProfileActivity.this.onlineTextView[2].getTextWidth() + (AndroidUtilities.m50dp(28) * (1.0f - ProfileActivity.this.customAvatarProgress)) + AndroidUtilities.m50dp(4), y + AndroidUtilities.m50dp(14));
                    this.canvasButton.setRect(rectF);
                    this.canvasButton.setRounded(true);
                    this.canvasButton.setColor(0, ColorUtils.setAlphaComponent(-1, 50));
                    this.canvasButton.draw(canvas);
                    return;
                }
                CanvasButton canvasButton2 = this.canvasButton;
                if (canvasButton2 != null) {
                    canvasButton2.cancelRipple();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$0() {
            if (ProfileActivity.this.customAvatarProgress != 1.0f) {
                ProfileActivity.this.avatarsViewPager.scrollToLastItem();
            }
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            CanvasButton canvasButton = this.canvasButton;
            return (canvasButton != null && canvasButton.checkTouchEvent(motionEvent)) || super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            CanvasButton canvasButton = this.canvasButton;
            return (canvasButton != null && canvasButton.checkTouchEvent(motionEvent)) || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            ProfileActivity.this.fallbackImage.onAttachedToWindow();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            ProfileActivity.this.fallbackImage.onDetachedFromWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(View view) {
        RecyclerView.ViewHolder findContainingViewHolder;
        Integer num;
        TLRPC$Document findDocument;
        Bulletin createContainsEmojiBulletin;
        if (this.avatarBig != null) {
            return;
        }
        View view2 = null;
        TLRPC$TL_forumTopic tLRPC$TL_forumTopic = null;
        if (this.isTopic && !getMessagesController().premiumLocked) {
            ArrayList<TLRPC$TL_forumTopic> topics = getMessagesController().getTopicsController().getTopics(this.chatId);
            if (topics != null) {
                for (int i = 0; tLRPC$TL_forumTopic == null && i < topics.size(); i++) {
                    TLRPC$TL_forumTopic tLRPC$TL_forumTopic2 = topics.get(i);
                    if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1547id == this.topicId) {
                        tLRPC$TL_forumTopic = tLRPC$TL_forumTopic2;
                    }
                }
                if (tLRPC$TL_forumTopic != null) {
                    long j = tLRPC$TL_forumTopic.icon_emoji_id;
                    if (j == 0 || (findDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, j)) == null || (createContainsEmojiBulletin = BulletinFactory.m27of(this).createContainsEmojiBulletin(findDocument, true, new Utilities.Callback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda45
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            ProfileActivity.this.lambda$createView$19((TLRPC$InputStickerSet) obj);
                        }
                    })) == null) {
                        return;
                    }
                    createContainsEmojiBulletin.show();
                    return;
                }
                return;
            }
            return;
        }
        if (!AndroidUtilities.isTablet() && !this.isInLandscapeMode && this.avatarImage.getImageReceiver().hasNotThumb() && !AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
            this.openingAvatar = true;
            this.allowPullingDown = true;
            int i2 = 0;
            while (true) {
                if (i2 >= this.listView.getChildCount()) {
                    break;
                }
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView.getChildAdapterPosition(recyclerListView.getChildAt(i2)) == 0) {
                    view2 = this.listView.getChildAt(i2);
                    break;
                }
                i2++;
            }
            if (view2 != null && (findContainingViewHolder = this.listView.findContainingViewHolder(view2)) != null && (num = this.positionToOffset.get(Integer.valueOf(findContainingViewHolder.getAdapterPosition()))) != null) {
                this.listView.smoothScrollBy(0, -(num.intValue() + ((this.listView.getPaddingTop() - view2.getTop()) - this.actionBar.getMeasuredHeight())), CubicBezierInterpolator.EASE_OUT_QUINT);
                return;
            }
        }
        openAvatar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(TLRPC$InputStickerSet tLRPC$InputStickerSet) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(tLRPC$InputStickerSet);
        showDialog(new EmojiPacksAlert(this, getParentActivity(), this.resourcesProvider, arrayList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$21(View view) {
        if (this.avatarBig == null && !this.isTopic) {
            openAvatar();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(View view) {
        if (this.writeButton.getTag() != null) {
            return;
        }
        onTransferButtonClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$23(View view) {
        if (this.writeButton.getTag() != null) {
            return;
        }
        onWriteButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(ValueAnimator valueAnimator) {
        setAvatarExpandProgress(valueAnimator.getAnimatedFraction());
    }

    private void setAvatarExpandProgress(float f) {
        int themedColor;
        SimpleTextView[] simpleTextViewArr;
        int currentActionBarHeight = C3222ActionBar.getCurrentActionBarHeight() + (this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
        float[] fArr = this.expandAnimatorValues;
        this.currentExpanAnimatorFracture = f;
        float lerp = AndroidUtilities.lerp(fArr, f);
        this.currentExpandAnimatorValue = lerp;
        checkPhotoDescriptionAlpha();
        this.avatarContainer.setScaleX(this.avatarScale);
        this.avatarContainer.setScaleY(this.avatarScale);
        this.avatarContainer.setTranslationX(AndroidUtilities.lerp(this.avatarX, (float) BitmapDescriptorFactory.HUE_RED, lerp));
        this.avatarContainer.setTranslationY(AndroidUtilities.lerp((float) Math.ceil(this.avatarY), (float) BitmapDescriptorFactory.HUE_RED, lerp));
        this.avatarImage.setRoundRadius((int) AndroidUtilities.lerp(getSmallAvatarRoundRadius(), (float) BitmapDescriptorFactory.HUE_RED, lerp));
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            float f2 = 1.0f - lerp;
            actionBarMenuItem.setAlpha(f2);
            this.searchItem.setScaleY(f2);
            this.searchItem.setVisibility(0);
            ActionBarMenuItem actionBarMenuItem2 = this.searchItem;
            actionBarMenuItem2.setClickable(actionBarMenuItem2.getAlpha() > 0.5f);
            if (this.qrItem != null) {
                float m50dp = AndroidUtilities.m50dp(48) * lerp;
                this.qrItem.setTranslationX(m50dp);
                this.avatarsViewPagerIndicatorView.setTranslationX(m50dp - AndroidUtilities.m50dp(48));
            }
        }
        if (this.extraHeight > AndroidUtilities.m51dp(88.0f) && this.expandProgress < 0.33f) {
            refreshNameAndOnlineXY();
        }
        ScamDrawable scamDrawable = this.scamDrawable;
        if (scamDrawable != null) {
            scamDrawable.setColor(ColorUtils.blendARGB(getThemedColor("avatar_subtitleInProfileBlue"), Color.argb(179, 255, 255, 255), lerp));
        }
        Drawable drawable = this.lockIconDrawable;
        if (drawable != null) {
            drawable.setColorFilter(ColorUtils.blendARGB(getThemedColor("chat_lockIcon"), -1, lerp), PorterDuff.Mode.MULTIPLY);
        }
        CrossfadeDrawable crossfadeDrawable = this.verifiedCrossfadeDrawable;
        if (crossfadeDrawable != null) {
            crossfadeDrawable.setProgress(lerp);
        }
        CrossfadeDrawable crossfadeDrawable2 = this.premiumCrossfadeDrawable;
        if (crossfadeDrawable2 != null) {
            crossfadeDrawable2.setProgress(lerp);
        }
        updateEmojiStatusDrawableColor(lerp);
        float dpf2 = AndroidUtilities.dpf2(8.0f);
        float dpf22 = AndroidUtilities.dpf2(18.0f) - this.nameTextView[1].getLeft();
        float f3 = currentActionBarHeight;
        float dpf23 = ((this.extraHeight + f3) - AndroidUtilities.dpf2(38.0f)) - this.nameTextView[1].getBottom();
        float f4 = this.nameX;
        float f5 = this.nameY;
        float f6 = 1.0f - lerp;
        float f7 = f6 * f6;
        float f8 = f6 * 2.0f * lerp;
        float f9 = lerp * lerp;
        float f10 = (f4 * f7) + ((dpf2 + f4 + ((dpf22 - f4) / 2.0f)) * f8) + (dpf22 * f9);
        float f11 = (f5 * f7) + ((dpf2 + f5 + ((dpf23 - f5) / 2.0f)) * f8) + (dpf23 * f9);
        float dpf24 = AndroidUtilities.dpf2(16.0f) - this.onlineTextView[1].getLeft();
        float dpf25 = ((this.extraHeight + f3) - AndroidUtilities.dpf2(18.0f)) - this.onlineTextView[1].getBottom();
        float f12 = this.onlineX;
        float f13 = this.onlineY;
        float f14 = (f12 * f7) + ((dpf2 + f12 + ((dpf24 - f12) / 2.0f)) * f8) + (dpf24 * f9);
        float f15 = (f7 * f13) + (f8 * (dpf2 + f13 + ((dpf25 - f13) / 2.0f))) + (f9 * dpf25);
        this.nameTextView[1].setTranslationX(f10);
        this.nameTextView[1].setTranslationY(f11);
        this.onlineTextView[1].setTranslationX(this.customPhotoOffset + f14);
        this.onlineTextView[1].setTranslationY(f15);
        this.mediaCounterTextView.setTranslationX(f14);
        this.mediaCounterTextView.setTranslationY(f15);
        Object tag = this.onlineTextView[1].getTag();
        if (tag instanceof String) {
            themedColor = getThemedColor((String) tag);
        } else {
            themedColor = getThemedColor("avatar_subtitleInProfileBlue");
        }
        this.onlineTextView[1].setTextColor(ColorUtils.blendARGB(themedColor, Color.argb(179, 255, 255, 255), lerp));
        if (this.extraHeight > AndroidUtilities.m51dp(88.0f)) {
            this.nameTextView[1].setPivotY(AndroidUtilities.lerp(0, simpleTextViewArr[1].getMeasuredHeight(), lerp));
            this.nameTextView[1].setScaleX(AndroidUtilities.lerp(1.12f, 1.67f, lerp));
            this.nameTextView[1].setScaleY(AndroidUtilities.lerp(1.12f, 1.67f, lerp));
        }
        needLayoutText(Math.min(1.0f, this.extraHeight / AndroidUtilities.m51dp(88.0f)));
        this.nameTextView[1].setTextColor(ColorUtils.blendARGB(getThemedColor("profile_title"), -1, lerp));
        this.actionBar.setItemsColor(ColorUtils.blendARGB(getThemedColor("actionBarDefaultIcon"), -1, lerp), false);
        this.actionBar.setMenuOffsetSuppressed(true);
        this.avatarImage.setForegroundAlpha(lerp);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.avatarContainer.getLayoutParams();
        layoutParams.width = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(42.0f), this.listView.getMeasuredWidth() / this.avatarScale, lerp);
        layoutParams.height = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(42.0f), (this.extraHeight + f3) / this.avatarScale, lerp);
        layoutParams.leftMargin = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(64.0f), (float) BitmapDescriptorFactory.HUE_RED, lerp);
        this.avatarContainer.requestLayout();
    }

    private int getSmallAvatarRoundRadius() {
        if (this.chatId != 0 && ChatObject.isForum(getMessagesController().getChat(Long.valueOf(this.chatId)))) {
            return AndroidUtilities.m50dp(16);
        }
        return AndroidUtilities.m50dp(21);
    }

    private void updateTtlIcon() {
        TLRPC$UserFull tLRPC$UserFull;
        if (this.ttlIconView == null) {
            return;
        }
        boolean z = false;
        if (this.currentEncryptedChat == null && (((tLRPC$UserFull = this.userInfo) != null && tLRPC$UserFull.ttl_period > 0) || (this.chatInfo != null && ChatObject.canUserDoAdminAction(this.currentChat, 13) && this.chatInfo.ttl_period > 0))) {
            z = true;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.ttlIconView, z, 0.8f, this.fragmentOpened);
    }

    public long getDialogId() {
        long j = this.dialogId;
        if (j != 0) {
            return j;
        }
        long j2 = this.userId;
        return j2 != 0 ? j2 : -this.chatId;
    }

    public void getEmojiStatusLocation(Rect rect) {
        SimpleTextView[] simpleTextViewArr = this.nameTextView;
        if (simpleTextViewArr[1] == null) {
            return;
        }
        if (simpleTextViewArr[1].getRightDrawable() == null) {
            rect.set(this.nameTextView[1].getWidth() - 1, (this.nameTextView[1].getHeight() / 2) - 1, this.nameTextView[1].getWidth() + 1, (this.nameTextView[1].getHeight() / 2) + 1);
            return;
        }
        rect.set(this.nameTextView[1].getRightDrawable().getBounds());
        rect.offset((int) (rect.centerX() * (this.nameTextView[1].getScaleX() - 1.0f)), 0);
        rect.offset((int) this.nameTextView[1].getX(), (int) this.nameTextView[1].getY());
    }

    public void goToForum() {
        if (getParentLayout() != null && getParentLayout().getFragmentStack() != null) {
            int i = 0;
            while (i < getParentLayout().getFragmentStack().size()) {
                BaseFragment baseFragment = getParentLayout().getFragmentStack().get(i);
                if (baseFragment instanceof DialogsActivity) {
                    DialogsActivity dialogsActivity = (DialogsActivity) baseFragment;
                    RightSlidingDialogContainer rightSlidingDialogContainer = dialogsActivity.rightSlidingDialogContainer;
                    if (rightSlidingDialogContainer != null) {
                        BaseFragment fragment = rightSlidingDialogContainer.getFragment();
                        if ((fragment instanceof TopicsFragment) && ((TopicsFragment) fragment).getDialogId() == getDialogId()) {
                            dialogsActivity.rightSlidingDialogContainer.lambda$presentFragment$1();
                        }
                    }
                } else if (baseFragment instanceof ChatActivity) {
                    if (((ChatActivity) baseFragment).getDialogId() == getDialogId()) {
                        getParentLayout().removeFragmentFromStack(baseFragment);
                        i--;
                    }
                } else if (baseFragment instanceof TopicsFragment) {
                    if (((TopicsFragment) baseFragment).getDialogId() == getDialogId()) {
                        getParentLayout().removeFragmentFromStack(baseFragment);
                        i--;
                    }
                } else if ((baseFragment instanceof ProfileActivity) && baseFragment != this) {
                    ProfileActivity profileActivity = (ProfileActivity) baseFragment;
                    if (profileActivity.getDialogId() == getDialogId() && profileActivity.isTopic) {
                        getParentLayout().removeFragmentFromStack(baseFragment);
                        i--;
                    }
                }
                i++;
            }
        }
        this.playProfileAnimation = 0;
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        presentFragment(new TopicsFragment(bundle));
    }

    public void showStatusSelect() {
        if (this.selectAnimatedEmojiDialog != null) {
            return;
        }
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        Rect rect = AndroidUtilities.rectTmp2;
        getEmojiStatusLocation(rect);
        int i = this.nameTextView[1].getScaleX() < 1.5f ? 16 : 32;
        int m50dp = (-(this.avatarContainer2.getHeight() - rect.centerY())) - AndroidUtilities.m50dp(i);
        int min = (int) Math.min(AndroidUtilities.m50dp(324), AndroidUtilities.displaySize.x * 0.95f);
        int centerX = rect.centerX();
        int clamp = MathUtils.clamp(centerX - (min / 2), 0, AndroidUtilities.displaySize.x - min);
        int i2 = centerX - clamp;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawableArr[1] != null) {
            boolean z = swapAnimatedEmojiDrawableArr[1].getDrawable() instanceof AnimatedEmojiDrawable;
        }
        C615132 c615132 = new C615132(this, getContext(), true, Integer.valueOf(Math.max(0, i2)), 0, this.resourcesProvider, i, selectAnimatedEmojiDialogWindowArr);
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
        if (user != null) {
            TLRPC$EmojiStatus tLRPC$EmojiStatus = user.emoji_status;
            if ((tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatusUntil) && ((TLRPC$TL_emojiStatusUntil) tLRPC$EmojiStatus).until > ((int) (System.currentTimeMillis() / 1000))) {
                c615132.setExpireDateHint(((TLRPC$TL_emojiStatusUntil) user.emoji_status).until);
            }
        }
        if (user != null && !getForkCommonController().isShowPremiumStatusEnabled()) {
            c615132.setSelected(getUserConfig().getEmojiStatus());
        } else {
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr2 = this.emojiStatusDrawable;
            c615132.setSelected((swapAnimatedEmojiDrawableArr2[1] == null || !(swapAnimatedEmojiDrawableArr2[1].getDrawable() instanceof AnimatedEmojiDrawable)) ? null : Long.valueOf(((AnimatedEmojiDrawable) this.emojiStatusDrawable[1].getDrawable()).getDocumentId()));
        }
        c615132.setSaveState(3);
        c615132.setScrimDrawable(this.emojiStatusDrawable[1], this.nameTextView[1]);
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(c615132, -2, -2) { // from class: org.telegram.ui.ProfileActivity.33
            @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                ProfileActivity.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        int[] iArr = new int[2];
        SimpleTextView[] simpleTextViewArr = this.nameTextView;
        if (simpleTextViewArr[1] != null) {
            simpleTextViewArr[1].getLocationOnScreen(iArr);
        }
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this.fragmentView, clamp, m50dp, 51);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$32 */
    /* loaded from: classes5.dex */
    public class C615132 extends SelectAnimatedEmojiDialog {
        final /* synthetic */ SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] val$popup;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C615132(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, Theme.ResourcesProvider resourcesProvider, int i2, SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr) {
            super(baseFragment, context, z, num, i, resourcesProvider, i2);
            this.val$popup = selectAnimatedEmojiDialogWindowArr;
        }

        @Override // org.telegram.p048ui.SelectAnimatedEmojiDialog
        protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
            TLRPC$TL_account_updateEmojiStatus tLRPC$TL_account_updateEmojiStatus = new TLRPC$TL_account_updateEmojiStatus();
            if (l == null) {
                tLRPC$TL_account_updateEmojiStatus.emoji_status = new TLRPC$TL_emojiStatusEmpty();
            } else if (num != null) {
                TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil = new TLRPC$TL_emojiStatusUntil();
                tLRPC$TL_account_updateEmojiStatus.emoji_status = tLRPC$TL_emojiStatusUntil;
                tLRPC$TL_emojiStatusUntil.document_id = l.longValue();
                ((TLRPC$TL_emojiStatusUntil) tLRPC$TL_account_updateEmojiStatus.emoji_status).until = num.intValue();
            } else {
                TLRPC$TL_emojiStatus tLRPC$TL_emojiStatus = new TLRPC$TL_emojiStatus();
                tLRPC$TL_account_updateEmojiStatus.emoji_status = tLRPC$TL_emojiStatus;
                tLRPC$TL_emojiStatus.document_id = l.longValue();
            }
            TLRPC$User user = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getUser(Long.valueOf(UserConfig.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getClientUserId()));
            if (user != null) {
                user.emoji_status = tLRPC$TL_account_updateEmojiStatus.emoji_status;
                MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).updateEmojiStatusUntilUpdate(user.f1633id, user.emoji_status);
                NotificationCenter.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).postNotificationName(NotificationCenter.userEmojiStatusUpdated, user);
            }
            boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).isShowPremiumStatusEnabled();
            for (int i = 0; i < 2; i++) {
                if (ProfileActivity.this.emojiStatusDrawable[i] != null) {
                    if (l == null || !isShowPremiumStatusEnabled) {
                        ProfileActivity.this.emojiStatusDrawable[i].set(ProfileActivity.this.getPremiumCrossfadeDrawable(), true);
                    } else {
                        ProfileActivity.this.emojiStatusDrawable[i].set(l.longValue(), true);
                    }
                }
            }
            if (l != null && isShowPremiumStatusEnabled) {
                ProfileActivity.this.animatedStatusView.animateChange(ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(l));
            }
            ProfileActivity.this.updateEmojiStatusDrawableColor();
            ProfileActivity.this.updateEmojiStatusEffectPosition();
            ConnectionsManager.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).sendRequest(tLRPC$TL_account_updateEmojiStatus, ProfileActivity$32$$ExternalSyntheticLambda0.INSTANCE);
            if (this.val$popup[0] != null) {
                ProfileActivity.this.selectAnimatedEmojiDialog = null;
                this.val$popup[0].dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onEmojiSelected$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            boolean z = tLObject instanceof TLRPC$TL_boolTrue;
        }
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public TLRPC$Chat getCurrentChat() {
        return this.currentChat;
    }

    public TLRPC$UserFull getUserInfo() {
        return this.userInfo;
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public boolean isFragmentOpened() {
        return this.isFragmentOpened;
    }

    private void openAvatar() {
        TLRPC$Chat chat;
        TLRPC$ChatPhoto tLRPC$ChatPhoto;
        ImageLocation imageLocation;
        if (this.listView.getScrollState() == 1) {
            return;
        }
        if (this.userId != 0) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
            TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = user.photo;
            if (tLRPC$UserProfilePhoto == null || tLRPC$UserProfilePhoto.photo_big == null) {
                return;
            }
            PhotoViewer.getInstance().setParentActivity(this);
            TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto2 = user.photo;
            int i = tLRPC$UserProfilePhoto2.dc_id;
            if (i != 0) {
                tLRPC$UserProfilePhoto2.photo_big.dc_id = i;
            }
            PhotoViewer.getInstance().openPhoto(user.photo.photo_big, this.provider);
        } else if (this.chatId == 0 || (tLRPC$ChatPhoto = (chat = getMessagesController().getChat(Long.valueOf(this.chatId))).photo) == null || tLRPC$ChatPhoto.photo_big == null) {
        } else {
            PhotoViewer.getInstance().setParentActivity(this);
            TLRPC$ChatPhoto tLRPC$ChatPhoto2 = chat.photo;
            int i2 = tLRPC$ChatPhoto2.dc_id;
            if (i2 != 0) {
                tLRPC$ChatPhoto2.photo_big.dc_id = i2;
            }
            TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
            if (tLRPC$ChatFull != null) {
                TLRPC$Photo tLRPC$Photo = tLRPC$ChatFull.chat_photo;
                if ((tLRPC$Photo instanceof TLRPC$TL_photo) && !tLRPC$Photo.video_sizes.isEmpty()) {
                    imageLocation = ImageLocation.getForPhoto(this.chatInfo.chat_photo.video_sizes.get(0), this.chatInfo.chat_photo);
                    PhotoViewer.getInstance().openPhotoWithVideo(chat.photo.photo_big, imageLocation, this.provider);
                }
            }
            imageLocation = null;
            PhotoViewer.getInstance().openPhotoWithVideo(chat.photo.photo_big, imageLocation, this.provider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWriteButtonClick() {
        if (this.userId != 0) {
            boolean z = true;
            if (this.imageUpdater != null) {
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
                if (user == null) {
                    user = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                }
                if (user == null) {
                    return;
                }
                ImageUpdater imageUpdater = this.imageUpdater;
                TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = user.photo;
                imageUpdater.openMenu((tLRPC$UserProfilePhoto == null || tLRPC$UserProfilePhoto.photo_big == null || (tLRPC$UserProfilePhoto instanceof TLRPC$TL_userProfilePhotoEmpty)) ? false : false, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.this.lambda$onWriteButtonClick$25();
                    }
                }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda10
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        ProfileActivity.this.lambda$onWriteButtonClick$26(dialogInterface);
                    }
                }, 0);
                this.cameraDrawable.setCurrentFrame(0);
                this.cameraDrawable.setCustomEndFrame(43);
                this.cellCameraDrawable.setCurrentFrame(0);
                this.cellCameraDrawable.setCustomEndFrame(43);
                this.writeButton.playAnimation();
                TextCell textCell = this.setAvatarCell;
                if (textCell != null) {
                    textCell.getImageView().playAnimation();
                    return;
                }
                return;
            } else if (this.playProfileAnimation != 0 && (this.parentLayout.getFragmentStack().get(this.parentLayout.getFragmentStack().size() - 2) instanceof ChatActivity)) {
                finishFragment();
                return;
            } else {
                TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(this.userId));
                if (user2 == null || (user2 instanceof TLRPC$TL_userEmpty)) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", this.userId);
                if (getMessagesController().checkCanOpenChat(bundle, this)) {
                    boolean z2 = this.arguments.getBoolean("removeFragmentOnChatOpen", true);
                    if (!AndroidUtilities.isTablet() && z2) {
                        NotificationCenter notificationCenter = getNotificationCenter();
                        int i = NotificationCenter.closeChats;
                        notificationCenter.removeObserver(this, i);
                        getNotificationCenter().postNotificationName(i, new Object[0]);
                    }
                    int i2 = getArguments().getInt("nearby_distance", -1);
                    if (i2 >= 0) {
                        bundle.putInt("nearby_distance", i2);
                    }
                    ChatActivity chatActivity = new ChatActivity(bundle);
                    chatActivity.setPreloadedSticker(getMediaDataController().getGreetingsSticker(), false);
                    presentFragment(chatActivity, z2);
                    if (AndroidUtilities.isTablet()) {
                        finishFragment();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        openDiscussion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWriteButtonClick$25() {
        MessagesController.getInstance(this.currentAccount).deleteUserPhoto(null);
        this.cameraDrawable.setCurrentFrame(0);
        this.cellCameraDrawable.setCurrentFrame(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWriteButtonClick$26(DialogInterface dialogInterface) {
        if (!this.imageUpdater.isUploadingImage()) {
            this.cameraDrawable.setCustomEndFrame(86);
            this.cellCameraDrawable.setCustomEndFrame(86);
            this.writeButton.playAnimation();
            TextCell textCell = this.setAvatarCell;
            if (textCell != null) {
                textCell.getImageView().playAnimation();
                return;
            }
            return;
        }
        this.cameraDrawable.setCurrentFrame(0, false);
        this.cellCameraDrawable.setCurrentFrame(0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDiscussion() {
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if (tLRPC$ChatFull == null || tLRPC$ChatFull.linked_chat_id == 0) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatInfo.linked_chat_id);
        if (getMessagesController().checkCanOpenChat(bundle, this)) {
            presentFragment(new ChatActivity(bundle));
        }
    }

    public boolean onMemberClick(TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z) {
        return onMemberClick(tLRPC$ChatParticipant, z, false);
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public boolean onMemberClick(final TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        TLRPC$ChannelParticipant tLRPC$ChannelParticipant;
        boolean z7;
        int i;
        String str;
        if (getParentActivity() == null) {
            return false;
        }
        if (z) {
            final TLRPC$User user = getMessagesController().getUser(Long.valueOf(tLRPC$ChatParticipant.user_id));
            if (user == null || tLRPC$ChatParticipant.user_id == getUserConfig().getClientUserId()) {
                return false;
            }
            this.selectedUser = tLRPC$ChatParticipant.user_id;
            if (ChatObject.isChannel(this.currentChat)) {
                TLRPC$ChannelParticipant tLRPC$ChannelParticipant2 = ((TLRPC$TL_chatChannelParticipant) tLRPC$ChatParticipant).channelParticipant;
                getMessagesController().getUser(Long.valueOf(tLRPC$ChatParticipant.user_id));
                z3 = ChatObject.canAddAdmins(this.currentChat);
                if (z3 && ((tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantCreator) || ((tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantAdmin) && !tLRPC$ChannelParticipant2.can_edit))) {
                    z3 = false;
                }
                boolean z8 = ChatObject.canBlockUsers(this.currentChat) && (!((tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantAdmin) || (tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantCreator)) || tLRPC$ChannelParticipant2.can_edit);
                z5 = this.currentChat.gigagroup ? false : z8;
                z4 = tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantAdmin;
                boolean z9 = z8;
                tLRPC$ChannelParticipant = tLRPC$ChannelParticipant2;
                z6 = z9;
            } else {
                TLRPC$Chat tLRPC$Chat = this.currentChat;
                boolean z10 = tLRPC$Chat.creator || ((tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipant) && (ChatObject.canBlockUsers(tLRPC$Chat) || tLRPC$ChatParticipant.inviter_id == getUserConfig().getClientUserId()));
                z3 = this.currentChat.creator;
                z4 = tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantAdmin;
                z5 = z3;
                z6 = z10;
                tLRPC$ChannelParticipant = null;
            }
            ArrayList arrayList = z2 ? null : new ArrayList();
            ArrayList arrayList2 = z2 ? null : new ArrayList();
            final ArrayList arrayList3 = z2 ? null : new ArrayList();
            if (z3) {
                if (z2) {
                    return true;
                }
                if (z4) {
                    i = C3158R.string.EditAdminRights;
                    str = "EditAdminRights";
                } else {
                    i = C3158R.string.SetAsAdmin;
                    str = "SetAsAdmin";
                }
                arrayList.add(LocaleController.getString(str, i));
                arrayList2.add(Integer.valueOf(C3158R.C3160drawable.msg_admins));
                arrayList3.add(0);
            }
            if (z5) {
                if (z2) {
                    return true;
                }
                arrayList.add(LocaleController.getString("ChangePermissions", C3158R.string.ChangePermissions));
                arrayList2.add(Integer.valueOf(C3158R.C3160drawable.msg_permissions));
                arrayList3.add(1);
            }
            if (!z6) {
                z7 = false;
            } else if (z2) {
                return true;
            } else {
                arrayList.add(LocaleController.getString("KickFromGroup", C3158R.string.KickFromGroup));
                arrayList2.add(Integer.valueOf(C3158R.C3160drawable.msg_remove));
                arrayList3.add(2);
                z7 = true;
            }
            if (z2 || arrayList.isEmpty()) {
                return false;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
            final TLRPC$ChannelParticipant tLRPC$ChannelParticipant3 = tLRPC$ChannelParticipant;
            final boolean z11 = z4;
            builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), AndroidUtilities.toIntArray(arrayList2), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ProfileActivity.this.lambda$onMemberClick$28(arrayList3, tLRPC$ChatParticipant, tLRPC$ChannelParticipant3, user, z11, dialogInterface, i2);
                }
            });
            AlertDialog create = builder.create();
            showDialog(create);
            if (z7) {
                create.setItemColor(arrayList.size() - 1, getThemedColor("dialogTextRed2"), getThemedColor("dialogRedIcon"));
            }
        } else if (tLRPC$ChatParticipant.user_id == getUserConfig().getClientUserId()) {
            return false;
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", tLRPC$ChatParticipant.user_id);
            bundle.putBoolean("preload_messages", true);
            presentFragment(new ProfileActivity(bundle));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMemberClick$28(ArrayList arrayList, final TLRPC$ChatParticipant tLRPC$ChatParticipant, final TLRPC$ChannelParticipant tLRPC$ChannelParticipant, final TLRPC$User tLRPC$User, final boolean z, DialogInterface dialogInterface, int i) {
        if (((Integer) arrayList.get(i)).intValue() == 2) {
            kickUser(this.selectedUser, tLRPC$ChatParticipant);
            return;
        }
        final int intValue = ((Integer) arrayList.get(i)).intValue();
        if (intValue != 1 || (!(tLRPC$ChannelParticipant instanceof TLRPC$TL_channelParticipantAdmin) && !(tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantAdmin))) {
            if (tLRPC$ChannelParticipant != null) {
                openRightsEdit(intValue, tLRPC$User, tLRPC$ChatParticipant, tLRPC$ChannelParticipant.admin_rights, tLRPC$ChannelParticipant.banned_rights, tLRPC$ChannelParticipant.rank, z);
                return;
            } else {
                openRightsEdit(intValue, tLRPC$User, tLRPC$ChatParticipant, null, null, "", z);
                return;
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString("AppName", C3158R.string.AppName));
        builder.setMessage(LocaleController.formatString("AdminWillBeRemoved", C3158R.string.AdminWillBeRemoved, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
        builder.setPositiveButton(LocaleController.getString("OK", C3158R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                ProfileActivity.this.lambda$onMemberClick$27(tLRPC$ChannelParticipant, intValue, tLRPC$User, tLRPC$ChatParticipant, z, dialogInterface2, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMemberClick$27(TLRPC$ChannelParticipant tLRPC$ChannelParticipant, int i, TLRPC$User tLRPC$User, TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, DialogInterface dialogInterface, int i2) {
        if (tLRPC$ChannelParticipant != null) {
            openRightsEdit(i, tLRPC$User, tLRPC$ChatParticipant, tLRPC$ChannelParticipant.admin_rights, tLRPC$ChannelParticipant.banned_rights, tLRPC$ChannelParticipant.rank, z);
        } else {
            openRightsEdit(i, tLRPC$User, tLRPC$ChatParticipant, null, null, "", z);
        }
    }

    private void openRightsEdit(final int i, final TLRPC$User tLRPC$User, final TLRPC$ChatParticipant tLRPC$ChatParticipant, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str, final boolean z) {
        final boolean[] zArr = new boolean[1];
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(tLRPC$User.f1633id, this.chatId, tLRPC$TL_chatAdminRights, this.currentChat.default_banned_rights, tLRPC$TL_chatBannedRights, str, i, true, false, null) { // from class: org.telegram.ui.ProfileActivity.34
            @Override // org.telegram.p048ui.ActionBar.BaseFragment
            public void onTransitionAnimationEnd(boolean z2, boolean z3) {
                if (!z2 && z3 && zArr[0] && BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                    BulletinFactory.createPromoteToAdminBulletin(ProfileActivity.this, tLRPC$User.first_name).show();
                }
            }
        };
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ProfileActivity.35
            @Override // org.telegram.p048ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i2, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2, String str2) {
                boolean z2;
                TLRPC$ChatParticipant tLRPC$TL_chatParticipant;
                int i3 = i;
                int i4 = 0;
                if (i3 != 0) {
                    if (i3 == 1 && i2 == 0 && ProfileActivity.this.currentChat.megagroup && ProfileActivity.this.chatInfo != null && ProfileActivity.this.chatInfo.participants != null) {
                        int i5 = 0;
                        while (true) {
                            if (i5 >= ProfileActivity.this.chatInfo.participants.participants.size()) {
                                z2 = false;
                                break;
                            } else if (MessageObject.getPeerId(((TLRPC$TL_chatChannelParticipant) ProfileActivity.this.chatInfo.participants.participants.get(i5)).channelParticipant.peer) == tLRPC$ChatParticipant.user_id) {
                                ProfileActivity.this.chatInfo.participants_count--;
                                ProfileActivity.this.chatInfo.participants.participants.remove(i5);
                                z2 = true;
                                break;
                            } else {
                                i5++;
                            }
                        }
                        if (ProfileActivity.this.chatInfo != null && ProfileActivity.this.chatInfo.participants != null) {
                            while (true) {
                                if (i4 >= ProfileActivity.this.chatInfo.participants.participants.size()) {
                                    break;
                                } else if (ProfileActivity.this.chatInfo.participants.participants.get(i4).user_id == tLRPC$ChatParticipant.user_id) {
                                    ProfileActivity.this.chatInfo.participants.participants.remove(i4);
                                    z2 = true;
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                        }
                        if (z2) {
                            ProfileActivity.this.updateOnlineCount(true);
                            ProfileActivity.this.updateRowsIds();
                            ProfileActivity.this.listAdapter.notifyDataSetChanged();
                            return;
                        }
                        return;
                    }
                    return;
                }
                TLRPC$ChatParticipant tLRPC$ChatParticipant2 = tLRPC$ChatParticipant;
                if (tLRPC$ChatParticipant2 instanceof TLRPC$TL_chatChannelParticipant) {
                    TLRPC$TL_chatChannelParticipant tLRPC$TL_chatChannelParticipant = (TLRPC$TL_chatChannelParticipant) tLRPC$ChatParticipant2;
                    if (i2 == 1) {
                        TLRPC$TL_channelParticipantAdmin tLRPC$TL_channelParticipantAdmin = new TLRPC$TL_channelParticipantAdmin();
                        tLRPC$TL_chatChannelParticipant.channelParticipant = tLRPC$TL_channelParticipantAdmin;
                        tLRPC$TL_channelParticipantAdmin.flags |= 4;
                    } else {
                        tLRPC$TL_chatChannelParticipant.channelParticipant = new TLRPC$TL_channelParticipant();
                    }
                    tLRPC$TL_chatChannelParticipant.channelParticipant.inviter_id = ProfileActivity.this.getUserConfig().getClientUserId();
                    tLRPC$TL_chatChannelParticipant.channelParticipant.peer = new TLRPC$TL_peerUser();
                    TLRPC$ChannelParticipant tLRPC$ChannelParticipant = tLRPC$TL_chatChannelParticipant.channelParticipant;
                    TLRPC$Peer tLRPC$Peer = tLRPC$ChannelParticipant.peer;
                    TLRPC$ChatParticipant tLRPC$ChatParticipant3 = tLRPC$ChatParticipant;
                    tLRPC$Peer.user_id = tLRPC$ChatParticipant3.user_id;
                    tLRPC$ChannelParticipant.date = tLRPC$ChatParticipant3.date;
                    tLRPC$ChannelParticipant.banned_rights = tLRPC$TL_chatBannedRights2;
                    tLRPC$ChannelParticipant.admin_rights = tLRPC$TL_chatAdminRights2;
                    tLRPC$ChannelParticipant.rank = str2;
                } else if (tLRPC$ChatParticipant2 != null) {
                    if (i2 == 1) {
                        tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipantAdmin();
                    } else {
                        tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipant();
                    }
                    TLRPC$ChatParticipant tLRPC$ChatParticipant4 = tLRPC$ChatParticipant;
                    tLRPC$TL_chatParticipant.user_id = tLRPC$ChatParticipant4.user_id;
                    tLRPC$TL_chatParticipant.date = tLRPC$ChatParticipant4.date;
                    tLRPC$TL_chatParticipant.inviter_id = tLRPC$ChatParticipant4.inviter_id;
                    int indexOf = ProfileActivity.this.chatInfo.participants.participants.indexOf(tLRPC$ChatParticipant);
                    if (indexOf >= 0) {
                        ProfileActivity.this.chatInfo.participants.participants.set(indexOf, tLRPC$TL_chatParticipant);
                    }
                }
                if (i2 != 1 || z) {
                    return;
                }
                zArr[0] = true;
            }

            @Override // org.telegram.p048ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC$User tLRPC$User2) {
                ProfileActivity.this.undoView.showWithAction(-ProfileActivity.this.chatId, ProfileActivity.this.currentChat.megagroup ? 10 : 9, tLRPC$User2);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processOnClickOrPress(final int i, final View view, final float f, final float f2) {
        TLRPC$Chat chat;
        String str;
        String str2;
        TLRPC$UserFull tLRPC$UserFull;
        View view2 = view;
        if (i == this.usernameRow || i == this.setUsernameRow) {
            if (this.userId != 0) {
                TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
                str = UserObject.getPublicUsername(user);
                if (user == null || str == null) {
                    return false;
                }
            } else if (this.chatId == 0 || (chat = getMessagesController().getChat(Long.valueOf(this.chatId))) == null || !ChatObject.isPublic(chat)) {
                return false;
            } else {
                str = chat.username;
            }
            if (this.userId == 0) {
                TLRPC$Chat chat2 = getMessagesController().getChat(Long.valueOf(this.chatId));
                String str3 = "https://" + getLink(ChatObject.getPublicUsername(chat2), this.topicId);
                showDialog(new DialogC615536(getParentActivity(), null, str3, false, str3, false));
            } else {
                try {
                    BulletinFactory.m27of(this).createCopyBulletin(LocaleController.getString("UsernameCopied", C3158R.string.UsernameCopied), this.resourcesProvider).show();
                    ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", "@" + str));
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            return true;
        } else if (i == this.phoneRow || i == this.numberRow) {
            final TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(this.userId));
            if (user2 == null || (str2 = user2.phone) == null || str2.length() == 0 || getParentActivity() == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (i == this.phoneRow) {
                TLRPC$UserFull tLRPC$UserFull2 = this.userInfo;
                if (tLRPC$UserFull2 != null && tLRPC$UserFull2.phone_calls_available) {
                    arrayList3.add(Integer.valueOf(C3158R.C3160drawable.msg_calls));
                    arrayList.add(LocaleController.getString("CallViaTelegram", C3158R.string.CallViaTelegram));
                    arrayList2.add(2);
                    if (Build.VERSION.SDK_INT >= 18 && this.userInfo.video_calls_available) {
                        arrayList3.add(Integer.valueOf(C3158R.C3160drawable.msg_videocall));
                        arrayList.add(LocaleController.getString("VideoCallViaTelegram", C3158R.string.VideoCallViaTelegram));
                        arrayList2.add(3);
                    }
                }
                if (!this.isFragmentPhoneNumber) {
                    arrayList3.add(Integer.valueOf(C3158R.C3160drawable.msg_calls_regular));
                    arrayList.add(LocaleController.getString("Call", C3158R.string.Call));
                    arrayList2.add(0);
                }
            }
            arrayList3.add(Integer.valueOf(C3158R.C3160drawable.msg_copy));
            arrayList.add(LocaleController.getString("Copy", C3158R.string.Copy));
            arrayList2.add(1);
            final AtomicReference atomicReference = new AtomicReference();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this, getContext(), C3158R.C3160drawable.popup_fixed_alert, this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.37
                Path path = new Path();

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view3, long j) {
                    canvas.save();
                    this.path.rewind();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(view3.getLeft(), view3.getTop(), view3.getRight(), view3.getBottom());
                    this.path.addRoundRect(rectF, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), Path.Direction.CW);
                    canvas.clipPath(this.path);
                    boolean drawChild = super.drawChild(canvas, view3, j);
                    canvas.restore();
                    return drawChild;
                }
            };
            actionBarPopupWindowLayout.setFitItems(true);
            for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                final int intValue = ((Integer) arrayList2.get(i2)).intValue();
                ActionBarMenuItem.addItem(actionBarPopupWindowLayout, ((Integer) arrayList3.get(i2)).intValue(), (CharSequence) arrayList.get(i2), false, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        ProfileActivity.this.lambda$processOnClickOrPress$29(atomicReference, intValue, user2, view3);
                    }
                });
            }
            if (this.isFragmentPhoneNumber) {
                FrameLayout frameLayout = new FrameLayout(getContext());
                frameLayout.setBackgroundColor(Theme.getColor("actionBarDefaultSubmenuSeparator", this.resourcesProvider));
                actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 8));
                TextView textView = new TextView(getContext());
                textView.setPadding(AndroidUtilities.m50dp(13), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(13), AndroidUtilities.m50dp(8));
                textView.setTextSize(1, 13.0f);
                textView.setTextColor(Theme.getColor("actionBarDefaultSubmenuItem", this.resourcesProvider));
                textView.setLinkTextColor(Theme.getColor("windowBackgroundWhiteValueText", this.resourcesProvider));
                textView.setBackground(Theme.createRadSelectorDrawable(Theme.getColor("dialogButtonSelector", this.resourcesProvider), 0, 6));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.getString(C3158R.string.AnonymousNumberNotice)));
                int indexOf = TextUtils.indexOf((CharSequence) spannableStringBuilder, '*');
                int lastIndexOf = TextUtils.lastIndexOf(spannableStringBuilder, '*');
                if (indexOf != -1 && lastIndexOf != -1 && indexOf != lastIndexOf) {
                    spannableStringBuilder.replace(lastIndexOf, lastIndexOf + 1, (CharSequence) "");
                    spannableStringBuilder.replace(indexOf, indexOf + 1, (CharSequence) "");
                    int i3 = lastIndexOf - 1;
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), indexOf, i3, 33);
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(textView.getLinkTextColors().getDefaultColor()), indexOf, i3, 33);
                }
                textView.setText(spannableStringBuilder);
                textView.setOnClickListener(ProfileActivity$$ExternalSyntheticLambda22.INSTANCE);
                int i4 = C3158R.C3161id.fit_width_tag;
                frameLayout.setTag(i4, 1);
                textView.setTag(i4, 1);
                actionBarPopupWindowLayout.addView((View) textView, LayoutHelper.createLinear(-2, -2));
            }
            ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
            actionBarPopupWindow.setPauseNotifications(true);
            actionBarPopupWindow.setDismissAnimationDuration(220);
            actionBarPopupWindow.setOutsideTouchable(true);
            actionBarPopupWindow.setClippingEnabled(true);
            actionBarPopupWindow.setAnimationStyle(C3158R.style.PopupContextAnimation);
            actionBarPopupWindow.setFocusable(true);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
            actionBarPopupWindow.setInputMethodMode(2);
            actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
            atomicReference.set(actionBarPopupWindow);
            float f3 = f;
            float f4 = f2;
            while (view2 != null && view2 != getFragmentView()) {
                f3 += view2.getX();
                f4 += view2.getY();
                view2 = (View) view2.getParent();
            }
            if (AndroidUtilities.isTablet()) {
                ViewGroup view3 = this.parentLayout.getView();
                f3 += view3.getX() + view3.getPaddingLeft();
                f4 += view3.getY() + view3.getPaddingTop();
            }
            actionBarPopupWindow.showAtLocation(getFragmentView(), 0, (int) (f3 - (actionBarPopupWindowLayout.getMeasuredWidth() / 2.0f)), (int) f4);
            actionBarPopupWindow.dimBehind();
            return true;
        } else if (i == this.channelInfoRow || i == this.userInfoRow || i == this.locationRow || i == this.bioRow) {
            if (i == this.bioRow && ((tLRPC$UserFull = this.userInfo) == null || TextUtils.isEmpty(tLRPC$UserFull.about))) {
                return false;
            }
            if ((view2 instanceof AboutLinkCell) && ((AboutLinkCell) view2).onClick()) {
                return false;
            }
            String str4 = null;
            if (i == this.locationRow) {
                TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
                if (tLRPC$ChatFull != null) {
                    TLRPC$ChannelLocation tLRPC$ChannelLocation = tLRPC$ChatFull.location;
                    if (tLRPC$ChannelLocation instanceof TLRPC$TL_channelLocation) {
                        str4 = ((TLRPC$TL_channelLocation) tLRPC$ChannelLocation).address;
                    }
                }
            } else if (i == this.channelInfoRow) {
                TLRPC$ChatFull tLRPC$ChatFull2 = this.chatInfo;
                if (tLRPC$ChatFull2 != null) {
                    str4 = tLRPC$ChatFull2.about;
                }
            } else {
                TLRPC$UserFull tLRPC$UserFull3 = this.userInfo;
                if (tLRPC$UserFull3 != null) {
                    str4 = tLRPC$UserFull3.about;
                }
            }
            final String str5 = str4;
            if (TextUtils.isEmpty(str5)) {
                return false;
            }
            MessagesController.getInstance(this.currentAccount).getTranslateController().isContextTranslateEnabled();
            final boolean[] zArr = new boolean[1];
            zArr[0] = i == this.bioRow || i == this.channelInfoRow || i == this.userInfoRow;
            LocaleController.getInstance().getCurrentLocale().getLanguage();
            new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.this.lambda$processOnClickOrPress$32(zArr, str5, i, f, f2, view);
                }
            }.run();
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$36 */
    /* loaded from: classes5.dex */
    public class DialogC615536 extends ShareAlert {
        DialogC615536(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2) {
            super(context, arrayList, str, z, str2, z2);
        }

        @Override // org.telegram.p048ui.Components.ShareAlert
        protected void onSend(final LongSparseArray<TLRPC$Dialog> longSparseArray, final int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$36$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.DialogC615536.this.lambda$onSend$0(longSparseArray, i);
                }
            }, 250L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSend$0(LongSparseArray longSparseArray, int i) {
            BulletinFactory.createInviteSentBulletin(ProfileActivity.this.getParentActivity(), ProfileActivity.this.contentView, longSparseArray.size(), longSparseArray.size() == 1 ? ((TLRPC$Dialog) longSparseArray.valueAt(0)).f1500id : 0L, i, getThemedColor("undo_background"), getThemedColor("undo_infoColor")).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processOnClickOrPress$29(AtomicReference atomicReference, int i, TLRPC$User tLRPC$User, View view) {
        ((ActionBarPopupWindow) atomicReference.get()).dismiss();
        if (i == 0) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:+" + tLRPC$User.phone));
                intent.addFlags(268435456);
                getParentActivity().startActivityForResult(intent, 500);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        } else if (i == 1) {
            try {
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", "+" + tLRPC$User.phone));
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    BulletinFactory.m27of(this).createCopyBulletin(LocaleController.getString("PhoneCopied", C3158R.string.PhoneCopied)).show();
                }
            } catch (Exception e2) {
                FileLog.m45e(e2);
            }
        } else if ((i == 2 || i == 3) && getParentActivity() != null) {
            boolean z = i == 3;
            TLRPC$UserFull tLRPC$UserFull = this.userInfo;
            VoIPHelper.startCall(tLRPC$User, z, tLRPC$UserFull != null && tLRPC$UserFull.video_calls_available, getParentActivity(), this.userInfo, getAccountInstance());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$processOnClickOrPress$30(View view) {
        try {
            view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://fragment.com")));
        } catch (ActivityNotFoundException e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processOnClickOrPress$32(boolean[] zArr, final String str, final int i, float f, float f2, View view) {
        if (getParentActivity() == null) {
            return;
        }
        boolean z = false;
        CharSequence[] charSequenceArr = zArr[0] ? new CharSequence[]{LocaleController.getString("Copy", C3158R.string.Copy), LocaleController.getString("TranslateMessage", C3158R.string.TranslateMessage)} : new CharSequence[]{LocaleController.getString("Copy", C3158R.string.Copy)};
        int[] iArr = zArr[0] ? new int[]{C3158R.C3160drawable.msg_copy, C3158R.C3160drawable.msg_translate} : new int[]{C3158R.C3160drawable.msg_copy};
        final AtomicReference atomicReference = new AtomicReference();
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this, getContext(), C3158R.C3160drawable.popup_fixed_alert, this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.38
            Path path = new Path();

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view2, long j) {
                canvas.save();
                this.path.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                this.path.addRoundRect(rectF, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), Path.Direction.CW);
                canvas.clipPath(this.path);
                boolean drawChild = super.drawChild(canvas, view2, j);
                canvas.restore();
                return drawChild;
            }
        };
        actionBarPopupWindowLayout.setFitItems(true);
        int i2 = 0;
        while (i2 < iArr.length) {
            final int i3 = i2;
            ActionBarMenuItem.addItem(actionBarPopupWindowLayout, iArr[i2], charSequenceArr[i2], z, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ProfileActivity.this.lambda$processOnClickOrPress$31(atomicReference, i3, str, i, view2);
                }
            });
            i2++;
            z = false;
        }
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(220);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C3158R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE));
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        atomicReference.set(actionBarPopupWindow);
        float f3 = f;
        float f4 = f2;
        for (View view2 = view; view2 != null && view2 != getFragmentView(); view2 = (View) view2.getParent()) {
            f3 += view2.getX();
            f4 += view2.getY();
        }
        if (AndroidUtilities.isTablet()) {
            ViewGroup view3 = this.parentLayout.getView();
            f3 += view3.getX() + view3.getPaddingLeft();
            f4 += view3.getY() + view3.getPaddingTop();
        }
        actionBarPopupWindow.showAtLocation(getFragmentView(), 0, (int) (f3 - (actionBarPopupWindowLayout.getMeasuredWidth() / 2.0f)), (int) f4);
        actionBarPopupWindow.dimBehind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processOnClickOrPress$31(AtomicReference atomicReference, int i, String str, int i2, View view) {
        ((ActionBarPopupWindow) atomicReference.get()).dismiss();
        try {
            if (i == 0) {
                AndroidUtilities.addToClipboard(str);
                if (i2 == this.bioRow) {
                    BulletinFactory.m27of(this).createCopyBulletin(LocaleController.getString("BioCopied", C3158R.string.BioCopied)).show();
                } else {
                    BulletinFactory.m27of(this).createCopyBulletin(LocaleController.getString("TextCopied", C3158R.string.TextCopied)).show();
                }
            } else if (i != 1) {
            } else {
                showDialog(TranslateAlert.createInstanceForForkTranslation(this.parentLayout.getLastFragment(), new TranslationArgs(TranslationDialogType.INCOMING, str, null), null, MessagesController.getInstance(UserConfig.selectedAccount).isChatNoForwards(-this.dialogId)));
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveChatPressed() {
        boolean isForum = ChatObject.isForum(this.currentChat);
        AlertsCreator.createClearOrDeleteDialogAlert(this, false, this.currentChat, null, false, isForum, !isForum, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda44
            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
            public final void run(boolean z) {
                ProfileActivity.this.lambda$leaveChatPressed$35(z);
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$leaveChatPressed$35(boolean z) {
        this.playProfileAnimation = 0;
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.closeChats;
        notificationCenter.removeObserver(this, i);
        getNotificationCenter().postNotificationName(i, new Object[0]);
        finishFragment();
        getNotificationCenter().postNotificationName(NotificationCenter.needDeleteDialog, Long.valueOf(-this.currentChat.f1494id), null, this.currentChat, Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getChannelParticipants(boolean z) {
        LongSparseArray<TLRPC$ChatParticipant> longSparseArray;
        if (this.loadingUsers || (longSparseArray = this.participantsMap) == null || this.chatInfo == null) {
            return;
        }
        this.loadingUsers = true;
        final int i = (longSparseArray.size() == 0 || !z) ? 0 : 300;
        final TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants = new TLRPC$TL_channels_getParticipants();
        tLRPC$TL_channels_getParticipants.channel = getMessagesController().getInputChannel(this.chatId);
        tLRPC$TL_channels_getParticipants.filter = new TLRPC$TL_channelParticipantsRecent();
        tLRPC$TL_channels_getParticipants.offset = z ? 0 : this.participantsMap.size();
        TLRPC$ChannelParticipantsFilter serverFilter = this.membersFilter.getServerFilter();
        tLRPC$TL_channels_getParticipants.filter = serverFilter;
        serverFilter.f1493q = "";
        tLRPC$TL_channels_getParticipants.limit = 200;
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tLRPC$TL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda49
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ProfileActivity.this.lambda$getChannelParticipants$38(tLRPC$TL_channels_getParticipants, i, tLObject, tLRPC$TL_error);
            }
        }), this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChannelParticipants$37(final TLRPC$TL_error tLRPC$TL_error, final TLObject tLObject, final TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants) {
        getNotificationCenter().doOnIdle(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$getChannelParticipants$36(tLRPC$TL_error, tLObject, tLRPC$TL_channels_getParticipants);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChannelParticipants$38(final TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants, int i, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$getChannelParticipants$37(tLRPC$TL_error, tLObject, tLRPC$TL_channels_getParticipants);
            }
        }, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChannelParticipants$36(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants) {
        if (tLRPC$TL_error == null) {
            TLRPC$TL_channels_channelParticipants tLRPC$TL_channels_channelParticipants = (TLRPC$TL_channels_channelParticipants) tLObject;
            getMessagesController().putUsers(tLRPC$TL_channels_channelParticipants.users, false);
            getMessagesController().putChats(tLRPC$TL_channels_channelParticipants.chats, false);
            if (tLRPC$TL_channels_channelParticipants.users.size() < 200) {
                this.usersEndReached = true;
            }
            if (tLRPC$TL_channels_getParticipants.offset == 0) {
                this.participantsMap.clear();
                this.chatInfo.participants = new TLRPC$TL_chatParticipants();
                getMessagesStorage().putUsersAndChats(tLRPC$TL_channels_channelParticipants.users, tLRPC$TL_channels_channelParticipants.chats, true, true);
                getMessagesStorage().updateChannelUsers(this.chatId, tLRPC$TL_channels_channelParticipants.participants);
            }
            for (int i = 0; i < tLRPC$TL_channels_channelParticipants.participants.size(); i++) {
                TLRPC$TL_chatChannelParticipant tLRPC$TL_chatChannelParticipant = new TLRPC$TL_chatChannelParticipant();
                TLRPC$ChannelParticipant tLRPC$ChannelParticipant = tLRPC$TL_channels_channelParticipants.participants.get(i);
                tLRPC$TL_chatChannelParticipant.channelParticipant = tLRPC$ChannelParticipant;
                tLRPC$TL_chatChannelParticipant.inviter_id = tLRPC$ChannelParticipant.inviter_id;
                long peerId = MessageObject.getPeerId(tLRPC$ChannelParticipant.peer);
                tLRPC$TL_chatChannelParticipant.user_id = peerId;
                tLRPC$TL_chatChannelParticipant.date = tLRPC$TL_chatChannelParticipant.channelParticipant.date;
                if (this.participantsMap.indexOfKey(peerId) < 0) {
                    TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
                    if (tLRPC$ChatFull.participants == null) {
                        tLRPC$ChatFull.participants = new TLRPC$TL_chatParticipants();
                    }
                    if (this.membersFilter != GroupMembersFilter.DELETED || UserObject.isDeleted(getMessagesController().getUser(Long.valueOf(tLRPC$TL_chatChannelParticipant.user_id)))) {
                        this.chatInfo.participants.participants.add(tLRPC$TL_chatChannelParticipant);
                        this.participantsMap.put(tLRPC$TL_chatChannelParticipant.user_id, tLRPC$TL_chatChannelParticipant);
                    }
                }
            }
        }
        this.loadingUsers = false;
        saveScrollPosition();
        updateListAnimated(true);
    }

    private void setMediaHeaderVisible(boolean z) {
        if (this.mediaHeaderVisible == z) {
            return;
        }
        this.mediaHeaderVisible = z;
        AnimatorSet animatorSet = this.headerAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.headerShadowAnimatorSet;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        final ActionBarMenuItem searchItem = this.sharedMediaLayout.getSearchItem();
        if (!this.mediaHeaderVisible) {
            if (this.serviceMessagesItemVisible) {
                this.serviceMessagesItem.setVisibility(0);
            }
            if (this.callItemVisible) {
                this.callItem.setVisibility(0);
            }
            if (this.videoCallItemVisible) {
                this.videoCallItem.setVisibility(0);
            }
            if (this.editItemVisible) {
                this.editItem.setVisibility(0);
            }
            this.otherItem.setVisibility(0);
        } else {
            if (this.sharedMediaLayout.isSearchItemVisible()) {
                searchItem.setVisibility(0);
            }
            if (this.sharedMediaLayout.isCalendarItemVisible()) {
                this.sharedMediaLayout.photoVideoOptionsItem.setVisibility(0);
            } else {
                this.sharedMediaLayout.photoVideoOptionsItem.setVisibility(4);
            }
            if (this.sharedMediaLayout.isMembersFilterItemVisible()) {
                this.sharedMediaLayout.getMembersFilterItem().setVisibility(0);
            } else {
                this.sharedMediaLayout.getMembersFilterItem().setVisibility(4);
            }
            if (this.sharedMediaLayout.isMembersFilterItemVisible() && this.sharedMediaLayout.isMembersMenuVisible()) {
                this.sharedMediaLayout.getMembersMenuItem().setVisibility(0);
            } else {
                this.sharedMediaLayout.getMembersMenuItem().setVisibility(4);
            }
        }
        C3222ActionBar c3222ActionBar = this.actionBar;
        if (c3222ActionBar != null) {
            c3222ActionBar.createMenu().requestLayout();
        }
        ArrayList arrayList = new ArrayList();
        ActionBarMenuItem actionBarMenuItem = this.serviceMessagesItem;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem, property, fArr));
        ActionBarMenuItem actionBarMenuItem2 = this.serviceMessagesItem;
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        fArr2[0] = z ? -AndroidUtilities.m50dp(10) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem2, property2, fArr2));
        ImageView membersFilterItem = this.sharedMediaLayout.getMembersFilterItem();
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(membersFilterItem, property3, fArr3));
        ImageView membersFilterItem2 = this.sharedMediaLayout.getMembersFilterItem();
        Property property4 = View.TRANSLATION_Y;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(10);
        arrayList.add(ObjectAnimator.ofFloat(membersFilterItem2, property4, fArr4));
        ImageView membersMenuItem = this.sharedMediaLayout.getMembersMenuItem();
        Property property5 = View.ALPHA;
        float[] fArr5 = new float[1];
        fArr5[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(membersMenuItem, property5, fArr5));
        ImageView membersMenuItem2 = this.sharedMediaLayout.getMembersMenuItem();
        Property property6 = View.TRANSLATION_Y;
        float[] fArr6 = new float[1];
        fArr6[0] = z ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(10);
        arrayList.add(ObjectAnimator.ofFloat(membersMenuItem2, property6, fArr6));
        ActionBarMenuItem actionBarMenuItem3 = this.callItem;
        Property property7 = View.ALPHA;
        float[] fArr7 = new float[1];
        fArr7[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, property7, fArr7));
        ActionBarMenuItem actionBarMenuItem4 = this.videoCallItem;
        Property property8 = View.ALPHA;
        float[] fArr8 = new float[1];
        fArr8[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem4, property8, fArr8));
        ActionBarMenuItem actionBarMenuItem5 = this.otherItem;
        Property property9 = View.ALPHA;
        float[] fArr9 = new float[1];
        fArr9[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem5, property9, fArr9));
        ActionBarMenuItem actionBarMenuItem6 = this.editItem;
        Property property10 = View.ALPHA;
        float[] fArr10 = new float[1];
        fArr10[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem6, property10, fArr10));
        ActionBarMenuItem actionBarMenuItem7 = this.callItem;
        Property property11 = View.TRANSLATION_Y;
        float[] fArr11 = new float[1];
        fArr11[0] = z ? -AndroidUtilities.m50dp(10) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem7, property11, fArr11));
        ActionBarMenuItem actionBarMenuItem8 = this.videoCallItem;
        Property property12 = View.TRANSLATION_Y;
        float[] fArr12 = new float[1];
        fArr12[0] = z ? -AndroidUtilities.m50dp(10) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem8, property12, fArr12));
        ActionBarMenuItem actionBarMenuItem9 = this.otherItem;
        Property property13 = View.TRANSLATION_Y;
        float[] fArr13 = new float[1];
        fArr13[0] = z ? -AndroidUtilities.m50dp(10) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem9, property13, fArr13));
        ActionBarMenuItem actionBarMenuItem10 = this.editItem;
        Property property14 = View.TRANSLATION_Y;
        float[] fArr14 = new float[1];
        fArr14[0] = z ? -AndroidUtilities.m50dp(10) : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem10, property14, fArr14));
        Property property15 = View.ALPHA;
        float[] fArr15 = new float[1];
        fArr15[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(searchItem, property15, fArr15));
        Property property16 = View.TRANSLATION_Y;
        float[] fArr16 = new float[1];
        fArr16[0] = z ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(10);
        arrayList.add(ObjectAnimator.ofFloat(searchItem, property16, fArr16));
        ImageView imageView = this.sharedMediaLayout.photoVideoOptionsItem;
        Property property17 = View.ALPHA;
        float[] fArr17 = new float[1];
        fArr17[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(imageView, property17, fArr17));
        ImageView imageView2 = this.sharedMediaLayout.photoVideoOptionsItem;
        Property property18 = View.TRANSLATION_Y;
        float[] fArr18 = new float[1];
        fArr18[0] = z ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(10);
        arrayList.add(ObjectAnimator.ofFloat(imageView2, property18, fArr18));
        C3222ActionBar c3222ActionBar2 = this.actionBar;
        Property<C3222ActionBar, Float> property19 = this.ACTIONBAR_HEADER_PROGRESS;
        float[] fArr19 = new float[1];
        fArr19[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(c3222ActionBar2, property19, fArr19));
        SimpleTextView simpleTextView = this.onlineTextView[1];
        Property property20 = View.ALPHA;
        float[] fArr20 = new float[1];
        fArr20[0] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(simpleTextView, property20, fArr20));
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = this.mediaCounterTextView;
        Property property21 = View.ALPHA;
        float[] fArr21 = new float[1];
        fArr21[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        arrayList.add(ObjectAnimator.ofFloat(clippingTextViewSwitcher, property21, fArr21));
        if (z) {
            arrayList.add(ObjectAnimator.ofFloat(this, this.HEADER_SHADOW, BitmapDescriptorFactory.HUE_RED));
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.headerAnimatorSet = animatorSet3;
        animatorSet3.playTogether(arrayList);
        this.headerAnimatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.headerAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.40
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ProfileActivity.this.headerAnimatorSet != null) {
                    if (ProfileActivity.this.mediaHeaderVisible) {
                        if (ProfileActivity.this.serviceMessagesItemVisible) {
                            ProfileActivity.this.serviceMessagesItem.setVisibility(4);
                        }
                        if (ProfileActivity.this.callItemVisible) {
                            ProfileActivity.this.callItem.setVisibility(8);
                        }
                        if (ProfileActivity.this.videoCallItemVisible) {
                            ProfileActivity.this.videoCallItem.setVisibility(8);
                        }
                        if (ProfileActivity.this.editItemVisible) {
                            ProfileActivity.this.editItem.setVisibility(8);
                        }
                        ProfileActivity.this.otherItem.setVisibility(8);
                    } else {
                        if (ProfileActivity.this.sharedMediaLayout.isSearchItemVisible()) {
                            searchItem.setVisibility(0);
                        }
                        ProfileActivity.this.sharedMediaLayout.photoVideoOptionsItem.setVisibility(4);
                        ProfileActivity.this.sharedMediaLayout.getMembersFilterItem().setVisibility(4);
                        ProfileActivity.this.headerShadowAnimatorSet = new AnimatorSet();
                        AnimatorSet animatorSet4 = ProfileActivity.this.headerShadowAnimatorSet;
                        ProfileActivity profileActivity = ProfileActivity.this;
                        animatorSet4.playTogether(ObjectAnimator.ofFloat(profileActivity, profileActivity.HEADER_SHADOW, 1.0f));
                        ProfileActivity.this.headerShadowAnimatorSet.setDuration(100L);
                        ProfileActivity.this.headerShadowAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.40.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                ProfileActivity.this.headerShadowAnimatorSet = null;
                            }
                        });
                        ProfileActivity.this.headerShadowAnimatorSet.start();
                    }
                }
                ProfileActivity.this.headerAnimatorSet = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ProfileActivity.this.headerAnimatorSet = null;
            }
        });
        this.headerAnimatorSet.setDuration(150L);
        this.headerAnimatorSet.start();
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
        needLayoutText(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddMember() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("addToGroup", true);
        bundle.putLong("chatId", this.currentChat.f1494id);
        GroupCreateActivity groupCreateActivity = new GroupCreateActivity(bundle);
        groupCreateActivity.setInfo(this.chatInfo);
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if (tLRPC$ChatFull != null && tLRPC$ChatFull.participants != null) {
            LongSparseArray<TLObject> longSparseArray = new LongSparseArray<>();
            for (int i = 0; i < this.chatInfo.participants.participants.size(); i++) {
                longSparseArray.put(this.chatInfo.participants.participants.get(i).user_id, null);
            }
            groupCreateActivity.setIgnoreUsers(longSparseArray);
        }
        groupCreateActivity.setDelegate(new GroupCreateActivity.ContactsAddActivityDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda54
            @Override // org.telegram.p048ui.GroupCreateActivity.ContactsAddActivityDelegate
            public final void didSelectUsers(ArrayList arrayList, int i2) {
                ProfileActivity.this.lambda$openAddMember$40(arrayList, i2);
            }

            @Override // org.telegram.p048ui.GroupCreateActivity.ContactsAddActivityDelegate
            public /* synthetic */ void needAddBot(TLRPC$User tLRPC$User) {
                GroupCreateActivity.ContactsAddActivityDelegate.CC.$default$needAddBot(this, tLRPC$User);
            }
        });
        presentFragment(groupCreateActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddMember$40(final ArrayList arrayList, int i) {
        HashSet hashSet = new HashSet();
        if (this.chatInfo.participants.participants != null) {
            for (int i2 = 0; i2 < this.chatInfo.participants.participants.size(); i2++) {
                hashSet.add(Long.valueOf(this.chatInfo.participants.participants.get(i2).user_id));
            }
        }
        final int size = arrayList.size();
        final int[] iArr = new int[1];
        for (int i3 = 0; i3 < size; i3++) {
            TLRPC$User tLRPC$User = (TLRPC$User) arrayList.get(i3);
            getMessagesController().addUserToChat(this.chatId, tLRPC$User, i, null, this, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.this.lambda$openAddMember$39(iArr, size, arrayList);
                }
            });
            if (!hashSet.contains(Long.valueOf(tLRPC$User.f1633id))) {
                TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
                if (tLRPC$ChatFull.participants == null) {
                    tLRPC$ChatFull.participants = new TLRPC$TL_chatParticipants();
                }
                if (ChatObject.isChannel(this.currentChat)) {
                    TLRPC$TL_chatChannelParticipant tLRPC$TL_chatChannelParticipant = new TLRPC$TL_chatChannelParticipant();
                    TLRPC$TL_channelParticipant tLRPC$TL_channelParticipant = new TLRPC$TL_channelParticipant();
                    tLRPC$TL_chatChannelParticipant.channelParticipant = tLRPC$TL_channelParticipant;
                    tLRPC$TL_channelParticipant.inviter_id = getUserConfig().getClientUserId();
                    tLRPC$TL_chatChannelParticipant.channelParticipant.peer = new TLRPC$TL_peerUser();
                    TLRPC$ChannelParticipant tLRPC$ChannelParticipant = tLRPC$TL_chatChannelParticipant.channelParticipant;
                    tLRPC$ChannelParticipant.peer.user_id = tLRPC$User.f1633id;
                    tLRPC$ChannelParticipant.date = getConnectionsManager().getCurrentTime();
                    tLRPC$TL_chatChannelParticipant.user_id = tLRPC$User.f1633id;
                    this.chatInfo.participants.participants.add(tLRPC$TL_chatChannelParticipant);
                } else {
                    TLRPC$TL_chatParticipant tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipant();
                    tLRPC$TL_chatParticipant.user_id = tLRPC$User.f1633id;
                    tLRPC$TL_chatParticipant.inviter_id = getAccountInstance().getUserConfig().clientUserId;
                    this.chatInfo.participants.participants.add(tLRPC$TL_chatParticipant);
                }
                this.chatInfo.participants_count++;
                getMessagesController().putUser(tLRPC$User, false);
            }
        }
        updateListAnimated(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddMember$39(int[] iArr, int i, ArrayList arrayList) {
        int i2 = iArr[0] + 1;
        iArr[0] = i2;
        if (i2 != i || this.fragmentView == null || getParentActivity() == null) {
            return;
        }
        BulletinFactory.m27of(this).createUsersAddedBulletin(arrayList, this.currentChat).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkListViewScroll() {
        View view;
        if (this.listView.getVisibility() != 0) {
            return;
        }
        if (this.sharedMediaLayoutAttached) {
            this.sharedMediaLayout.setVisibleHeight(this.listView.getMeasuredHeight() - this.sharedMediaLayout.getTop());
        }
        if (this.listView.getChildCount() <= 0 || this.openAnimationInProgress) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.listView.getChildCount()) {
                view = null;
                break;
            }
            RecyclerListView recyclerListView = this.listView;
            if (recyclerListView.getChildAdapterPosition(recyclerListView.getChildAt(i)) == 0) {
                view = this.listView.getChildAt(i);
                break;
            }
            i++;
        }
        RecyclerListView.Holder holder = view != null ? (RecyclerListView.Holder) this.listView.findContainingViewHolder(view) : null;
        int i2 = ((view == null ? 0 : view.getTop()) < 0 || (holder != null ? holder.getAdapterPosition() : -1) != 0) ? 0 : 0;
        boolean z = this.imageUpdater == null && this.actionBar.isSearchFieldVisible();
        int i3 = this.sharedMediaRow;
        if (i3 != -1 && !z) {
            RecyclerListView.Holder holder2 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(i3);
            z = holder2 != null && holder2.itemView.getTop() <= 0;
        }
        setMediaHeaderVisible(z);
        float f = i2;
        if (this.extraHeight == f || this.transitionAnimationInProress) {
            return;
        }
        this.extraHeight = f;
        this.topView.invalidate();
        if (this.playProfileAnimation != 0) {
            this.allowProfileAnimation = this.extraHeight != BitmapDescriptorFactory.HUE_RED;
        }
        needLayout(true);
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public void updateSelectedMediaTabText() {
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout == null || this.mediaCounterTextView == null) {
            return;
        }
        int closestTab = sharedMediaLayout.getClosestTab();
        int[] lastMediaCount = this.sharedMediaPreloader.getLastMediaCount();
        if (closestTab == 0) {
            if (lastMediaCount[7] == 0 && lastMediaCount[6] == 0) {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Media", lastMediaCount[0], new Object[0]));
            } else if (this.sharedMediaLayout.getPhotosVideosTypeFilter() == 1 || lastMediaCount[7] == 0) {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Photos", lastMediaCount[6], new Object[0]));
            } else if (this.sharedMediaLayout.getPhotosVideosTypeFilter() == 2 || lastMediaCount[6] == 0) {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Videos", lastMediaCount[7], new Object[0]));
            } else {
                this.mediaCounterTextView.setText(String.format("%s, %s", LocaleController.formatPluralString("Photos", lastMediaCount[6], new Object[0]), LocaleController.formatPluralString("Videos", lastMediaCount[7], new Object[0])));
            }
        } else if (closestTab == 1) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("Files", lastMediaCount[1], new Object[0]));
        } else if (closestTab == 2) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("Voice", lastMediaCount[2], new Object[0]));
        } else if (closestTab == 3) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("Links", lastMediaCount[3], new Object[0]));
        } else if (closestTab == 4) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("MusicFiles", lastMediaCount[4], new Object[0]));
        } else if (closestTab == 5) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("GIFs", lastMediaCount[5], new Object[0]));
        } else if (closestTab == 6) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("CommonGroups", this.userInfo.common_chats_count, new Object[0]));
        } else if (closestTab == 7) {
            this.mediaCounterTextView.setText(this.onlineTextView[1].getText());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needLayout(boolean z) {
        OverlaysView overlaysView;
        BackupImageView currentItemView;
        ValueAnimator valueAnimator;
        SimpleTextView[] simpleTextViewArr;
        TLRPC$ChatFull tLRPC$ChatFull;
        int i = 0;
        int currentActionBarHeight = (this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + C3222ActionBar.getCurrentActionBarHeight();
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null && !this.openAnimationInProgress) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) recyclerListView.getLayoutParams();
            if (layoutParams.topMargin != currentActionBarHeight) {
                layoutParams.topMargin = currentActionBarHeight;
                this.listView.setLayoutParams(layoutParams);
            }
        }
        if (this.avatarContainer != null) {
            float min = Math.min(1.0f, this.extraHeight / AndroidUtilities.m51dp(88.0f));
            this.listView.setTopGlowOffset((int) this.extraHeight);
            this.listView.setOverScrollMode((this.extraHeight <= ((float) AndroidUtilities.m51dp(88.0f)) || this.extraHeight >= ((float) (this.listView.getMeasuredWidth() - currentActionBarHeight))) ? 0 : 2);
            RLottieImageView rLottieImageView = this.writeButton;
            if (rLottieImageView != null) {
                rLottieImageView.setTranslationY(((((this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + C3222ActionBar.getCurrentActionBarHeight()) + this.extraHeight) + this.searchTransitionOffset) - AndroidUtilities.m51dp(29.5f));
                if (!this.openAnimationInProgress) {
                    boolean z2 = min > 0.2f && !this.searchMode && (this.imageUpdater == null || this.setAvatarRow == -1);
                    if (z2 && this.chatId != 0) {
                        z2 = (!ChatObject.isChannel(this.currentChat) || this.currentChat.megagroup || (tLRPC$ChatFull = this.chatInfo) == null || tLRPC$ChatFull.linked_chat_id == 0 || this.infoHeaderRow == -1) ? false : true;
                    }
                    if (z2 != (this.writeButton.getTag() == null)) {
                        if (z2) {
                            this.writeButton.setTag(null);
                        } else {
                            this.writeButton.setTag(0);
                        }
                        AnimatorSet animatorSet = this.writeButtonAnimation;
                        if (animatorSet != null) {
                            this.writeButtonAnimation = null;
                            animatorSet.cancel();
                        }
                        if (z) {
                            AnimatorSet animatorSet2 = new AnimatorSet();
                            this.writeButtonAnimation = animatorSet2;
                            if (z2) {
                                animatorSet2.setInterpolator(new DecelerateInterpolator());
                                this.writeButtonAnimation.playTogether(ObjectAnimator.ofFloat(this.writeButton, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.writeButton, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.writeButton, View.ALPHA, 1.0f));
                            } else {
                                animatorSet2.setInterpolator(new AccelerateInterpolator());
                                this.writeButtonAnimation.playTogether(ObjectAnimator.ofFloat(this.writeButton, View.SCALE_X, 0.2f), ObjectAnimator.ofFloat(this.writeButton, View.SCALE_Y, 0.2f), ObjectAnimator.ofFloat(this.writeButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                            }
                            this.writeButtonAnimation.setDuration(150L);
                            this.writeButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.41
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    if (ProfileActivity.this.writeButtonAnimation == null || !ProfileActivity.this.writeButtonAnimation.equals(animator)) {
                                        return;
                                    }
                                    ProfileActivity.this.writeButtonAnimation = null;
                                }
                            });
                            this.writeButtonAnimation.start();
                        } else {
                            this.writeButton.setScaleX(z2 ? 1.0f : 0.2f);
                            this.writeButton.setScaleY(z2 ? 1.0f : 0.2f);
                            this.writeButton.setAlpha(z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    if (this.qrItem != null) {
                        updateQrItemVisibility(z);
                        if (!z) {
                            float m50dp = AndroidUtilities.m50dp(48) * this.qrItem.getAlpha();
                            this.qrItem.setTranslationX(m50dp);
                            PagerIndicatorView pagerIndicatorView = this.avatarsViewPagerIndicatorView;
                            if (pagerIndicatorView != null) {
                                pagerIndicatorView.setTranslationX(m50dp - AndroidUtilities.m50dp(48));
                            }
                        }
                    }
                }
            }
            this.avatarX = (-AndroidUtilities.dpf2(47.0f)) * min;
            float f = AndroidUtilities.density;
            this.avatarY = (((this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + ((C3222ActionBar.getCurrentActionBarHeight() / 2.0f) * (min + 1.0f))) - (f * 21.0f)) + (f * 27.0f * min) + this.actionBar.getTranslationY();
            float f2 = this.openAnimationInProgress ? this.initialAnimationExtraHeight : this.extraHeight;
            if (f2 > AndroidUtilities.m51dp(88.0f) || this.isPulledDown) {
                float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, (f2 - AndroidUtilities.m51dp(88.0f)) / ((this.listView.getMeasuredWidth() - currentActionBarHeight) - AndroidUtilities.m51dp(88.0f))));
                this.expandProgress = max;
                this.avatarScale = AndroidUtilities.lerp(1.4285715f, 2.4285715f, Math.min(1.0f, max * 3.0f));
                float min2 = Math.min(AndroidUtilities.dpf2(2000.0f), Math.max(AndroidUtilities.dpf2(1100.0f), Math.abs(this.listViewVelocityY))) / AndroidUtilities.dpf2(1100.0f);
                if (this.allowPullingDown && (this.openingAvatar || this.expandProgress >= 0.33f)) {
                    if (!this.isPulledDown) {
                        if (this.otherItem != null) {
                            if (!getMessagesController().isChatNoForwards(this.currentChat)) {
                                this.otherItem.showSubItem(21);
                            } else {
                                this.otherItem.hideSubItem(21);
                            }
                            if (this.imageUpdater != null) {
                                this.otherItem.showSubItem(36);
                                this.otherItem.showSubItem(34);
                                this.otherItem.showSubItem(35);
                                this.otherItem.hideSubItem(33);
                                this.otherItem.hideSubItem(31);
                            }
                        }
                        ActionBarMenuItem actionBarMenuItem = this.searchItem;
                        if (actionBarMenuItem != null) {
                            actionBarMenuItem.setEnabled(false);
                        }
                        this.isPulledDown = true;
                        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
                        this.overlaysView.setOverlaysVisible(true, min2);
                        this.avatarsViewPagerIndicatorView.refreshVisibility(min2);
                        this.avatarsViewPager.setCreateThumbFromParent(true);
                        this.avatarsViewPager.getAdapter().notifyDataSetChanged();
                        this.expandAnimator.cancel();
                        float lerp = AndroidUtilities.lerp(this.expandAnimatorValues, this.currentExpanAnimatorFracture);
                        float[] fArr = this.expandAnimatorValues;
                        fArr[0] = lerp;
                        fArr[1] = 1.0f;
                        this.expandAnimator.setDuration(((1.0f - lerp) * 250.0f) / min2);
                        this.expandAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.42
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                ProfileActivity.this.setForegroundImage(false);
                                ProfileActivity.this.avatarsViewPager.setAnimatedFileMaybe(ProfileActivity.this.avatarImage.getImageReceiver().getAnimation());
                                ProfileActivity.this.avatarsViewPager.resetCurrentItem();
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ProfileActivity.this.expandAnimator.removeListener(this);
                                ProfileActivity.this.topView.setBackgroundColor(-16777216);
                                ProfileActivity.this.avatarContainer.setVisibility(8);
                                ProfileActivity.this.avatarsViewPager.setVisibility(0);
                            }
                        });
                        this.expandAnimator.start();
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.avatarsViewPager.getLayoutParams();
                    layoutParams2.width = this.listView.getMeasuredWidth();
                    float f3 = f2 + currentActionBarHeight;
                    layoutParams2.height = (int) f3;
                    this.avatarsViewPager.requestLayout();
                    if (!this.expandAnimator.isRunning()) {
                        float m50dp2 = (this.openAnimationInProgress && this.playProfileAnimation == 2) ? (-(1.0f - this.avatarAnimationProgress)) * AndroidUtilities.m50dp(50) : BitmapDescriptorFactory.HUE_RED;
                        this.onlineX = AndroidUtilities.dpf2(16.0f) - this.onlineTextView[1].getLeft();
                        this.nameTextView[1].setTranslationX(AndroidUtilities.dpf2(18.0f) - this.nameTextView[1].getLeft());
                        this.nameTextView[1].setTranslationY(((f3 - AndroidUtilities.dpf2(38.0f)) - this.nameTextView[1].getBottom()) + m50dp2);
                        this.onlineTextView[1].setTranslationX(this.onlineX + this.customPhotoOffset);
                        this.onlineTextView[1].setTranslationY(((f3 - AndroidUtilities.dpf2(18.0f)) - this.onlineTextView[1].getBottom()) + m50dp2);
                        this.mediaCounterTextView.setTranslationX(this.onlineTextView[1].getTranslationX());
                        this.mediaCounterTextView.setTranslationY(this.onlineTextView[1].getTranslationY());
                    }
                } else {
                    if (this.isPulledDown) {
                        this.isPulledDown = false;
                        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
                        ActionBarMenuItem actionBarMenuItem2 = this.otherItem;
                        if (actionBarMenuItem2 != null) {
                            actionBarMenuItem2.hideSubItem(21);
                            if (this.imageUpdater != null) {
                                this.otherItem.hideSubItem(33);
                                this.otherItem.hideSubItem(34);
                                this.otherItem.hideSubItem(35);
                                this.otherItem.showSubItem(36);
                                this.otherItem.showSubItem(31);
                                this.otherItem.showSubItem(30);
                            }
                        }
                        ActionBarMenuItem actionBarMenuItem3 = this.searchItem;
                        if (actionBarMenuItem3 != null) {
                            actionBarMenuItem3.setEnabled(!this.scrolling);
                        }
                        this.overlaysView.setOverlaysVisible(false, min2);
                        this.avatarsViewPagerIndicatorView.refreshVisibility(min2);
                        this.expandAnimator.cancel();
                        this.avatarImage.getImageReceiver().setAllowStartAnimation(true);
                        this.avatarImage.getImageReceiver().startAnimation();
                        float lerp2 = AndroidUtilities.lerp(this.expandAnimatorValues, this.currentExpanAnimatorFracture);
                        float[] fArr2 = this.expandAnimatorValues;
                        fArr2[0] = lerp2;
                        fArr2[1] = 0.0f;
                        if (!this.isInLandscapeMode) {
                            this.expandAnimator.setDuration((lerp2 * 250.0f) / min2);
                        } else {
                            this.expandAnimator.setDuration(0L);
                        }
                        this.topView.setBackgroundColor(getThemedColor("avatar_backgroundActionBarBlue"));
                        if (!this.doNotSetForeground && (currentItemView = this.avatarsViewPager.getCurrentItemView()) != null) {
                            if (currentItemView.getImageReceiver().getDrawable() instanceof VectorAvatarThumbDrawable) {
                                this.avatarImage.drawForeground(false);
                            } else {
                                this.avatarImage.drawForeground(true);
                                this.avatarImage.setForegroundImageDrawable(currentItemView.getImageReceiver().getDrawableSafe());
                            }
                        }
                        this.avatarImage.setForegroundAlpha(1.0f);
                        this.avatarContainer.setVisibility(0);
                        this.avatarsViewPager.setVisibility(8);
                        this.expandAnimator.start();
                    }
                    this.avatarContainer.setScaleX(this.avatarScale);
                    this.avatarContainer.setScaleY(this.avatarScale);
                    ValueAnimator valueAnimator2 = this.expandAnimator;
                    if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
                        refreshNameAndOnlineXY();
                        this.nameTextView[1].setTranslationX(this.nameX);
                        this.nameTextView[1].setTranslationY(this.nameY);
                        this.onlineTextView[1].setTranslationX(this.onlineX + this.customPhotoOffset);
                        this.onlineTextView[1].setTranslationY(this.onlineY);
                        this.mediaCounterTextView.setTranslationX(this.onlineX);
                        this.mediaCounterTextView.setTranslationY(this.onlineY);
                    }
                }
            }
            if (this.openAnimationInProgress && this.playProfileAnimation == 2) {
                float currentActionBarHeight2 = (((this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + (C3222ActionBar.getCurrentActionBarHeight() / 2.0f)) - (AndroidUtilities.density * 21.0f)) + this.actionBar.getTranslationY();
                this.nameTextView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                double d = currentActionBarHeight2;
                this.nameTextView[0].setTranslationY(((float) Math.floor(d)) + AndroidUtilities.m51dp(1.3f));
                this.onlineTextView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                this.onlineTextView[0].setTranslationY(((float) Math.floor(d)) + AndroidUtilities.m50dp(24));
                this.nameTextView[0].setScaleX(1.0f);
                this.nameTextView[0].setScaleY(1.0f);
                this.nameTextView[1].setPivotY(simpleTextViewArr[1].getMeasuredHeight());
                this.nameTextView[1].setScaleX(1.67f);
                this.nameTextView[1].setScaleY(1.67f);
                this.avatarScale = AndroidUtilities.lerp(1.0f, 2.4285715f, this.avatarAnimationProgress);
                this.avatarImage.setRoundRadius((int) AndroidUtilities.lerp(getSmallAvatarRoundRadius(), (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress));
                this.avatarContainer.setTranslationX(AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress));
                this.avatarContainer.setTranslationY(AndroidUtilities.lerp((float) Math.ceil(d), (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress));
                float measuredWidth = (this.avatarContainer.getMeasuredWidth() - AndroidUtilities.m50dp(42)) * this.avatarScale;
                this.timeItem.setTranslationX(this.avatarContainer.getX() + AndroidUtilities.m50dp(16) + measuredWidth);
                this.timeItem.setTranslationY(this.avatarContainer.getY() + AndroidUtilities.m50dp(15) + measuredWidth);
                this.avatarContainer.setScaleX(this.avatarScale);
                this.avatarContainer.setScaleY(this.avatarScale);
                this.overlaysView.setAlphaValue(this.avatarAnimationProgress, false);
                this.actionBar.setItemsColor(ColorUtils.blendARGB(getThemedColor("actionBarDefaultIcon"), -1, this.avatarAnimationProgress), false);
                ScamDrawable scamDrawable = this.scamDrawable;
                if (scamDrawable != null) {
                    scamDrawable.setColor(ColorUtils.blendARGB(getThemedColor("avatar_subtitleInProfileBlue"), Color.argb(179, 255, 255, 255), this.avatarAnimationProgress));
                }
                Drawable drawable = this.lockIconDrawable;
                if (drawable != null) {
                    drawable.setColorFilter(ColorUtils.blendARGB(getThemedColor("chat_lockIcon"), -1, this.avatarAnimationProgress), PorterDuff.Mode.MULTIPLY);
                }
                CrossfadeDrawable crossfadeDrawable = this.verifiedCrossfadeDrawable;
                if (crossfadeDrawable != null) {
                    crossfadeDrawable.setProgress(this.avatarAnimationProgress);
                    this.nameTextView[1].invalidate();
                }
                CrossfadeDrawable crossfadeDrawable2 = this.premiumCrossfadeDrawable;
                if (crossfadeDrawable2 != null) {
                    crossfadeDrawable2.setProgress(this.avatarAnimationProgress);
                    this.nameTextView[1].invalidate();
                }
                updateEmojiStatusDrawableColor(this.avatarAnimationProgress);
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.avatarContainer.getLayoutParams();
                int lerp3 = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(42.0f), (this.extraHeight + currentActionBarHeight) / this.avatarScale, this.avatarAnimationProgress);
                layoutParams3.height = lerp3;
                layoutParams3.width = lerp3;
                layoutParams3.leftMargin = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(64.0f), (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress);
                this.avatarContainer.requestLayout();
            } else if (this.extraHeight <= AndroidUtilities.m51dp(88.0f)) {
                this.avatarScale = ((min * 18.0f) + 42.0f) / 42.0f;
                float f4 = (0.12f * min) + 1.0f;
                ValueAnimator valueAnimator3 = this.expandAnimator;
                if (valueAnimator3 == null || !valueAnimator3.isRunning()) {
                    this.avatarContainer.setScaleX(this.avatarScale);
                    this.avatarContainer.setScaleY(this.avatarScale);
                    this.avatarContainer.setTranslationX(this.avatarX);
                    this.avatarContainer.setTranslationY((float) Math.ceil(this.avatarY));
                    float m50dp3 = (AndroidUtilities.m50dp(42) * this.avatarScale) - AndroidUtilities.m50dp(42);
                    this.timeItem.setTranslationX(this.avatarContainer.getX() + AndroidUtilities.m50dp(16) + m50dp3);
                    this.timeItem.setTranslationY(this.avatarContainer.getY() + AndroidUtilities.m50dp(15) + m50dp3);
                }
                this.nameX = AndroidUtilities.density * (-21.0f) * min;
                this.nameY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m51dp(1.3f) + (AndroidUtilities.m50dp(7) * min) + (this.titleAnimationsYDiff * (1.0f - this.avatarAnimationProgress));
                this.onlineX = AndroidUtilities.density * (-21.0f) * min;
                this.onlineY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m50dp(24) + (((float) Math.floor(AndroidUtilities.density * 11.0f)) * min);
                while (true) {
                    SimpleTextView[] simpleTextViewArr2 = this.nameTextView;
                    if (i >= simpleTextViewArr2.length) {
                        break;
                    }
                    if (simpleTextViewArr2[i] != null) {
                        ValueAnimator valueAnimator4 = this.expandAnimator;
                        if (valueAnimator4 == null || !valueAnimator4.isRunning()) {
                            this.nameTextView[i].setTranslationX(this.nameX);
                            this.nameTextView[i].setTranslationY(this.nameY);
                            this.onlineTextView[i].setTranslationX(this.onlineX + this.customPhotoOffset);
                            this.onlineTextView[i].setTranslationY(this.onlineY);
                            if (i == 1) {
                                this.mediaCounterTextView.setTranslationX(this.onlineX);
                                this.mediaCounterTextView.setTranslationY(this.onlineY);
                            }
                        }
                        this.nameTextView[i].setScaleX(f4);
                        this.nameTextView[i].setScaleY(f4);
                    }
                    i++;
                }
            }
            if (!this.openAnimationInProgress && ((valueAnimator = this.expandAnimator) == null || !valueAnimator.isRunning())) {
                needLayoutText(min);
            }
        }
        if (this.isPulledDown || ((overlaysView = this.overlaysView) != null && overlaysView.animator != null && this.overlaysView.animator.isRunning())) {
            ViewGroup.LayoutParams layoutParams4 = this.overlaysView.getLayoutParams();
            layoutParams4.width = this.listView.getMeasuredWidth();
            layoutParams4.height = (int) (this.extraHeight + currentActionBarHeight);
            this.overlaysView.requestLayout();
        }
        updateEmojiStatusEffectPosition();
    }

    public void updateQrItemVisibility(boolean z) {
        if (this.qrItem == null) {
            return;
        }
        boolean z2 = isQrNeedVisible() && Math.min(1.0f, this.extraHeight / ((float) AndroidUtilities.m51dp(88.0f))) > 0.5f && this.searchTransitionProgress > 0.5f;
        if (z) {
            if (z2 != this.isQrItemVisible) {
                this.isQrItemVisible = z2;
                AnimatorSet animatorSet = this.qrItemAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.qrItemAnimation = null;
                }
                this.qrItem.setClickable(this.isQrItemVisible);
                this.qrItemAnimation = new AnimatorSet();
                if (this.qrItem.getVisibility() != 8 || z2) {
                    this.qrItem.setVisibility(0);
                }
                if (z2) {
                    this.qrItemAnimation.setInterpolator(new DecelerateInterpolator());
                    this.qrItemAnimation.playTogether(ObjectAnimator.ofFloat(this.qrItem, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.qrItem, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.avatarsViewPagerIndicatorView, View.TRANSLATION_X, -AndroidUtilities.m50dp(48)));
                } else {
                    this.qrItemAnimation.setInterpolator(new AccelerateInterpolator());
                    this.qrItemAnimation.playTogether(ObjectAnimator.ofFloat(this.qrItem, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.qrItem, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.avatarsViewPagerIndicatorView, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                }
                this.qrItemAnimation.setDuration(150L);
                this.qrItemAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.43
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ProfileActivity.this.qrItemAnimation = null;
                    }
                });
                this.qrItemAnimation.start();
                return;
            }
            return;
        }
        AnimatorSet animatorSet2 = this.qrItemAnimation;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
            this.qrItemAnimation = null;
        }
        this.isQrItemVisible = z2;
        this.qrItem.setClickable(z2);
        this.qrItem.setAlpha(z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.qrItem.setVisibility(z2 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setForegroundImage(boolean z) {
        Drawable drawable = this.avatarImage.getImageReceiver().getDrawable();
        String str = null;
        if (drawable instanceof VectorAvatarThumbDrawable) {
            this.avatarImage.setForegroundImage(null, null, drawable);
        } else if (drawable instanceof AnimatedFileDrawable) {
            AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) drawable;
            this.avatarImage.setForegroundImage(null, null, animatedFileDrawable);
            if (z) {
                animatedFileDrawable.addSecondParentView(this.avatarImage);
            }
        } else {
            ImageLocation imageLocation = this.avatarsViewPager.getImageLocation(0);
            if (imageLocation != null && imageLocation.imageType == 2) {
                str = "avatar";
            }
            this.avatarImage.setForegroundImage(imageLocation, str, drawable);
        }
    }

    private void refreshNameAndOnlineXY() {
        this.nameX = AndroidUtilities.m51dp(-21.0f) + (this.avatarContainer.getMeasuredWidth() * (this.avatarScale - 1.4285715f));
        this.nameY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m51dp(1.3f) + AndroidUtilities.m51dp(7.0f) + ((this.avatarContainer.getMeasuredHeight() * (this.avatarScale - 1.4285715f)) / 2.0f);
        this.onlineX = AndroidUtilities.m51dp(-21.0f) + (this.avatarContainer.getMeasuredWidth() * (this.avatarScale - 1.4285715f));
        this.onlineY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m50dp(24) + ((float) Math.floor(AndroidUtilities.density * 11.0f)) + ((this.avatarContainer.getMeasuredHeight() * (this.avatarScale - 1.4285715f)) / 2.0f);
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public RecyclerListView getListView() {
        return this.listView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needLayoutText(float f) {
        SharedMediaLayout sharedMediaLayout;
        float scaleX = this.nameTextView[1].getScaleX();
        float f2 = this.extraHeight > ((float) AndroidUtilities.m51dp(88.0f)) ? 1.67f : 1.12f;
        if (this.extraHeight <= AndroidUtilities.m51dp(88.0f) || scaleX == f2) {
            int m50dp = AndroidUtilities.isTablet() ? AndroidUtilities.m50dp(490) : AndroidUtilities.displaySize.x;
            this.avatarsViewPagerIndicatorView.getSecondaryMenuItem();
            int i = 0;
            int i2 = this.serviceMessagesItemVisible ? 48 : 0;
            if (this.editItemVisible) {
                i2 += 48;
            }
            if (this.callItemVisible) {
                i2 += 48;
            }
            if (this.videoCallItemVisible) {
                i2 += 48;
            }
            if (this.searchItem != null) {
                i2 += 48;
            }
            float f3 = (i2 * (1.0f - this.mediaHeaderAnimationProgress)) + 40.0f + 126.0f;
            if (this.mediaHeaderVisible && (sharedMediaLayout = this.sharedMediaLayout) != null && sharedMediaLayout.getMembersFilterItem().getVisibility() == 0) {
                i = 48;
            }
            int m51dp = AndroidUtilities.m51dp(f3 + i);
            int i3 = m50dp - m51dp;
            float f4 = m50dp;
            int max = (int) ((f4 - (m51dp * Math.max((float) BitmapDescriptorFactory.HUE_RED, 1.0f - (f != 1.0f ? (0.15f * f) / (1.0f - f) : 1.0f)))) - this.nameTextView[1].getTranslationX());
            float measureText = (this.nameTextView[1].getPaint().measureText(this.nameTextView[1].getText().toString()) * scaleX) + this.nameTextView[1].getSideDrawablesSize();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.nameTextView[1].getLayoutParams();
            int i4 = layoutParams.width;
            float f5 = max;
            if (f5 < measureText) {
                layoutParams.width = Math.max(i3, (int) Math.ceil((max - AndroidUtilities.m50dp(24)) / (((f2 - scaleX) * 7.0f) + scaleX)));
            } else {
                layoutParams.width = (int) Math.ceil(measureText);
            }
            int min = (int) Math.min(((f4 - this.nameTextView[1].getX()) / scaleX) - AndroidUtilities.m50dp(8), layoutParams.width);
            layoutParams.width = min;
            if (min != i4) {
                this.nameTextView[1].requestLayout();
            }
            float measureText2 = this.onlineTextView[1].getPaint().measureText(this.onlineTextView[1].getText().toString());
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.onlineTextView[1].getLayoutParams();
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.mediaCounterTextView.getLayoutParams();
            int i5 = layoutParams2.width;
            int ceil = (int) Math.ceil(this.onlineTextView[1].getTranslationX() + AndroidUtilities.m50dp(8) + (AndroidUtilities.m50dp(40) * (1.0f - f)));
            layoutParams2.rightMargin = ceil;
            layoutParams3.rightMargin = ceil;
            if (f5 < measureText2) {
                int ceil2 = (int) Math.ceil(max);
                layoutParams2.width = ceil2;
                layoutParams3.width = ceil2;
            } else {
                layoutParams2.width = -2;
                layoutParams3.width = -2;
            }
            if (i5 != layoutParams2.width) {
                this.onlineTextView[2].getLayoutParams().width = layoutParams2.width;
                this.onlineTextView[2].requestLayout();
                this.onlineTextView[3].getLayoutParams().width = layoutParams2.width;
                this.onlineTextView[3].requestLayout();
                this.onlineTextView[1].requestLayout();
                this.mediaCounterTextView.requestLayout();
            }
        }
    }

    private void fixLayout() {
        View view = this.fragmentView;
        if (view == null) {
            return;
        }
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ProfileActivity.44
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (((BaseFragment) ProfileActivity.this).fragmentView != null) {
                    ProfileActivity.this.checkListViewScroll();
                    ProfileActivity.this.needLayout(true);
                    ((BaseFragment) ProfileActivity.this).fragmentView.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                return true;
            }
        });
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        View findViewByPosition;
        super.onConfigurationChanged(configuration);
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.onConfigurationChanged(configuration);
        }
        invalidateIsInLandscapeMode();
        if (this.isInLandscapeMode && this.isPulledDown && (findViewByPosition = this.layoutManager.findViewByPosition(0)) != null) {
            this.listView.scrollBy(0, findViewByPosition.getTop() - AndroidUtilities.m50dp(88));
        }
        fixLayout();
    }

    private void invalidateIsInLandscapeMode() {
        Point point = new Point();
        getParentActivity().getWindowManager().getDefaultDisplay().getSize(point);
        this.isInLandscapeMode = point.x > point.y;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, final Object... objArr) {
        TLRPC$Chat tLRPC$Chat;
        TLRPC$ChatParticipants tLRPC$ChatParticipants;
        TLRPC$Chat tLRPC$Chat2;
        RecyclerListView recyclerListView;
        RecyclerListView recyclerListView2;
        RecyclerListView.Holder holder;
        if (i == NotificationCenter.topicsDidLoad) {
            updateRowsIds();
            try {
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    listAdapter.notifyDataSetChanged();
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i == NotificationCenter.updateInterfaces) {
            int intValue = ((Integer) objArr[0]).intValue();
            boolean z = ((MessagesController.UPDATE_MASK_AVATAR & intValue) == 0 && (MessagesController.UPDATE_MASK_NAME & intValue) == 0 && (MessagesController.UPDATE_MASK_STATUS & intValue) == 0 && (MessagesController.UPDATE_MASK_EMOJI_STATUS & intValue) == 0) ? false : true;
            if (this.userId != 0) {
                if (z) {
                    updateProfileData(true);
                }
                if ((intValue & MessagesController.UPDATE_MASK_PHONE) == 0 || (recyclerListView2 = this.listView) == null || (holder = (RecyclerListView.Holder) recyclerListView2.findViewHolderForPosition(this.phoneRow)) == null) {
                    return;
                }
                this.listAdapter.onBindViewHolder(holder, this.phoneRow);
            } else if (this.chatId != 0) {
                if ((MessagesController.UPDATE_MASK_CHAT & intValue) != 0 || (MessagesController.UPDATE_MASK_CHAT_AVATAR & intValue) != 0 || (MessagesController.UPDATE_MASK_CHAT_NAME & intValue) != 0 || (MessagesController.UPDATE_MASK_CHAT_MEMBERS & intValue) != 0 || (MessagesController.UPDATE_MASK_STATUS & intValue) != 0) {
                    if ((MessagesController.UPDATE_MASK_CHAT & intValue) != 0) {
                        updateListAnimated(true);
                    } else {
                        updateOnlineCount(true);
                    }
                    updateProfileData(true);
                }
                if (!z || (recyclerListView = this.listView) == null) {
                    return;
                }
                int childCount = recyclerListView.getChildCount();
                while (r2 < childCount) {
                    View childAt = this.listView.getChildAt(r2);
                    if (childAt instanceof UserCell) {
                        ((UserCell) childAt).update(intValue);
                    }
                    r2++;
                }
            }
        } else if (i == NotificationCenter.chatOnlineCountDidLoad) {
            Long l = (Long) objArr[0];
            if (this.chatInfo == null || (tLRPC$Chat2 = this.currentChat) == null || tLRPC$Chat2.f1494id != l.longValue()) {
                return;
            }
            this.chatInfo.online_count = ((Integer) objArr[1]).intValue();
            updateOnlineCount(true);
            updateProfileData(false);
        } else if (i == NotificationCenter.contactsDidLoad) {
            createActionBarMenu(true);
        } else if (i == NotificationCenter.encryptedChatCreated) {
            if (this.creatingChat) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda37
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.this.lambda$didReceivedNotification$41(objArr);
                    }
                });
            }
        } else if (i == NotificationCenter.encryptedChatUpdated) {
            TLRPC$EncryptedChat tLRPC$EncryptedChat = (TLRPC$EncryptedChat) objArr[0];
            TLRPC$EncryptedChat tLRPC$EncryptedChat2 = this.currentEncryptedChat;
            if (tLRPC$EncryptedChat2 == null || tLRPC$EncryptedChat.f1506id != tLRPC$EncryptedChat2.f1506id) {
                return;
            }
            this.currentEncryptedChat = tLRPC$EncryptedChat;
            updateListAnimated(false);
        } else if (i == NotificationCenter.blockedUsersDidLoad) {
            boolean z2 = this.userBlocked;
            boolean z3 = getMessagesController().blockePeers.indexOfKey(this.userId) >= 0;
            this.userBlocked = z3;
            if (z2 != z3) {
                createActionBarMenu(true);
                updateListAnimated(false);
                ImageView imageView = this.transferButton;
                if (imageView != null) {
                    imageView.setVisibility(this.userBlocked ? 8 : 0);
                }
            }
        } else if (i == NotificationCenter.groupCallUpdated) {
            Long l2 = (Long) objArr[0];
            if (this.currentChat != null) {
                long longValue = l2.longValue();
                TLRPC$Chat tLRPC$Chat3 = this.currentChat;
                if (longValue == tLRPC$Chat3.f1494id && ChatObject.canManageCalls(tLRPC$Chat3)) {
                    TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(l2.longValue());
                    if (chatFull != null) {
                        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
                        if (tLRPC$ChatFull != null) {
                            chatFull.participants = tLRPC$ChatFull.participants;
                        }
                        this.chatInfo = chatFull;
                    }
                    TLRPC$ChatFull tLRPC$ChatFull2 = this.chatInfo;
                    if (tLRPC$ChatFull2 != null) {
                        TLRPC$TL_inputGroupCall tLRPC$TL_inputGroupCall = tLRPC$ChatFull2.call;
                        if ((tLRPC$TL_inputGroupCall != null || this.hasVoiceChatItem) && (tLRPC$TL_inputGroupCall == null || !this.hasVoiceChatItem)) {
                            return;
                        }
                        createActionBarMenu(false);
                    }
                }
            }
        } else if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC$ChatFull tLRPC$ChatFull3 = (TLRPC$ChatFull) objArr[0];
            if (tLRPC$ChatFull3.f1495id == this.chatId) {
                boolean booleanValue = ((Boolean) objArr[2]).booleanValue();
                TLRPC$ChatFull tLRPC$ChatFull4 = this.chatInfo;
                if ((tLRPC$ChatFull4 instanceof TLRPC$TL_channelFull) && tLRPC$ChatFull3.participants == null) {
                    tLRPC$ChatFull3.participants = tLRPC$ChatFull4.participants;
                }
                if (tLRPC$ChatFull4 == null && (tLRPC$ChatFull3 instanceof TLRPC$TL_channelFull)) {
                    r2 = 1;
                }
                TLRPC$Chat tLRPC$Chat4 = this.currentChat;
                if (tLRPC$Chat4 != null && tLRPC$Chat4.megagroup && !this.membersFilter.isDefault()) {
                    tLRPC$ChatFull3.participants = this.chatInfo.participants;
                } else if (this.presenter != null && (tLRPC$Chat = this.currentChat) != null && !ChatObject.isChannel(tLRPC$Chat) && !ChatObject.isMegagroup(this.currentChat) && (tLRPC$ChatParticipants = tLRPC$ChatFull3.participants) != null) {
                    this.presenter.setNotMegagroupParticipants(true, tLRPC$ChatParticipants.participants);
                }
                this.chatInfo = tLRPC$ChatFull3;
                if (this.mergeDialogId == 0) {
                    long j = tLRPC$ChatFull3.migrated_from_chat_id;
                    if (j != 0) {
                        this.mergeDialogId = -j;
                        getMediaDataController().getMediaCount(this.mergeDialogId, this.topicId, 0, this.classGuid, true);
                    }
                }
                fetchUsersFromChannelInfo();
                ProfileGalleryView profileGalleryView = this.avatarsViewPager;
                if (profileGalleryView != null && !this.isTopic) {
                    profileGalleryView.setChatInfo(this.chatInfo);
                }
                updateListAnimated(true);
                TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
                if (chat != null) {
                    this.currentChat = chat;
                    createActionBarMenu(true);
                }
                if (this.currentChat.megagroup && (r2 != 0 || !booleanValue)) {
                    getChannelParticipants(true);
                }
                updateAutoDeleteItem();
                updateTtlIcon();
            }
        } else if (i == NotificationCenter.closeChats) {
            removeSelfFromStack(true);
        } else if (i == NotificationCenter.botInfoDidLoad) {
            TLRPC$BotInfo tLRPC$BotInfo = (TLRPC$BotInfo) objArr[0];
            if (tLRPC$BotInfo.user_id == this.userId) {
                this.botInfo = tLRPC$BotInfo;
                updateListAnimated(false);
            }
        } else if (i == NotificationCenter.userInfoDidLoad) {
            if (((Long) objArr[0]).longValue() == this.userId) {
                TLRPC$UserFull tLRPC$UserFull = (TLRPC$UserFull) objArr[1];
                this.userInfo = tLRPC$UserFull;
                if (this.imageUpdater != null) {
                    if (this.listAdapter != null && !TextUtils.equals(tLRPC$UserFull.about, this.currentBio)) {
                        this.listAdapter.notifyItemChanged(this.bioRow);
                    }
                } else {
                    if (!this.openAnimationInProgress && !this.callItemVisible) {
                        createActionBarMenu(true);
                    } else {
                        this.recreateMenuAfterAnimation = true;
                    }
                    updateListAnimated(false);
                    SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
                    if (sharedMediaLayout != null) {
                        sharedMediaLayout.setCommonGroupsCount(this.userInfo.common_chats_count);
                        updateSelectedMediaTabText();
                        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader = this.sharedMediaPreloader;
                        if (sharedMediaPreloader == null || sharedMediaPreloader.isMediaWasLoaded()) {
                            resumeDelayedFragmentAnimation();
                            needLayout(true);
                        }
                    }
                }
                updateAutoDeleteItem();
                updateTtlIcon();
            }
        } else if (i == NotificationCenter.privacyRulesUpdated) {
            if (this.qrItem != null) {
                updateQrItemVisibility(true);
            }
        } else if (i == NotificationCenter.didReceiveNewMessages) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            long dialogId = getDialogId();
            if (dialogId == ((Long) objArr[0]).longValue()) {
                DialogObject.isEncryptedDialog(dialogId);
                ArrayList arrayList = (ArrayList) objArr[1];
                while (r2 < arrayList.size()) {
                    MessageObject messageObject = (MessageObject) arrayList.get(r2);
                    if (this.currentEncryptedChat != null) {
                        TLRPC$MessageAction tLRPC$MessageAction = messageObject.messageOwner.action;
                        if (tLRPC$MessageAction instanceof TLRPC$TL_messageEncryptedAction) {
                            TLRPC$DecryptedMessageAction tLRPC$DecryptedMessageAction = tLRPC$MessageAction.encryptedAction;
                            if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionSetMessageTTL) {
                                TLRPC$TL_decryptedMessageActionSetMessageTTL tLRPC$TL_decryptedMessageActionSetMessageTTL = (TLRPC$TL_decryptedMessageActionSetMessageTTL) tLRPC$DecryptedMessageAction;
                                ListAdapter listAdapter2 = this.listAdapter;
                                if (listAdapter2 != null) {
                                    listAdapter2.notifyDataSetChanged();
                                }
                            }
                        }
                    }
                    r2++;
                }
            }
        } else if (i == NotificationCenter.emojiLoaded) {
            RecyclerListView recyclerListView3 = this.listView;
            if (recyclerListView3 != null) {
                recyclerListView3.invalidateViews();
            }
        } else if (i == NotificationCenter.reloadInterface) {
            updateListAnimated(false);
        } else if (i == NotificationCenter.newSuggestionsAvailable) {
            int i3 = this.passwordSuggestionRow;
            int i4 = this.phoneSuggestionRow;
            updateRowsIds();
            if (i3 == this.passwordSuggestionRow && i4 == this.phoneSuggestionRow) {
                return;
            }
            this.listAdapter.notifyDataSetChanged();
        } else if (i == NotificationCenter.topicsDidLoaded) {
            if (this.isTopic) {
                updateProfileData(false);
            }
        } else if (i == NotificationCenter.updateSearchSettings) {
            SearchAdapter searchAdapter = this.searchAdapter;
            if (searchAdapter != null) {
                searchAdapter.searchArray = searchAdapter.onCreateSearchArray();
                this.searchAdapter.recentSearches.clear();
                this.searchAdapter.updateSearchArray();
                SearchAdapter searchAdapter2 = this.searchAdapter;
                searchAdapter2.search(searchAdapter2.lastSearchString);
            }
        } else if (i == NotificationCenter.reloadDialogPhotos) {
            updateProfileData(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$41(Object[] objArr) {
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.closeChats;
        notificationCenter.removeObserver(this, i);
        getNotificationCenter().postNotificationName(i, new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putInt("enc_id", ((TLRPC$EncryptedChat) objArr[0]).f1506id);
        presentFragment(new ChatActivity(bundle), true);
    }

    private void updateAutoDeleteItem() {
        if (this.autoDeleteItem == null || this.autoDeletePopupWrapper == null) {
            return;
        }
        int i = 0;
        TLRPC$UserFull tLRPC$UserFull = this.userInfo;
        if (tLRPC$UserFull != null || this.chatInfo != null) {
            i = tLRPC$UserFull != null ? tLRPC$UserFull.ttl_period : this.chatInfo.ttl_period;
        }
        this.autoDeleteItemDrawable.setTime(i);
        this.autoDeletePopupWrapper.lambda$updateItems$7(i);
    }

    private void updateTimeItem() {
        TimerDrawable timerDrawable = this.timerDrawable;
        if (timerDrawable == null) {
            return;
        }
        TLRPC$EncryptedChat tLRPC$EncryptedChat = this.currentEncryptedChat;
        if (tLRPC$EncryptedChat != null) {
            timerDrawable.setTime(tLRPC$EncryptedChat.ttl);
            this.timeItem.setTag(1);
            this.timeItem.setVisibility(0);
            return;
        }
        TLRPC$UserFull tLRPC$UserFull = this.userInfo;
        if (tLRPC$UserFull != null) {
            timerDrawable.setTime(tLRPC$UserFull.ttl_period);
            if (this.needTimerImage && this.userInfo.ttl_period != 0) {
                this.timeItem.setTag(1);
                this.timeItem.setVisibility(0);
                return;
            }
            this.timeItem.setTag(null);
            this.timeItem.setVisibility(8);
            return;
        }
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if (tLRPC$ChatFull != null) {
            timerDrawable.setTime(tLRPC$ChatFull.ttl_period);
            if (this.needTimerImage && this.chatInfo.ttl_period != 0) {
                this.timeItem.setTag(1);
                this.timeItem.setVisibility(0);
                return;
            }
            this.timeItem.setTag(null);
            this.timeItem.setVisibility(8);
            return;
        }
        this.timeItem.setTag(null);
        this.timeItem.setVisibility(8);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return this.playProfileAnimation == 0;
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.SharedMediaPreloaderDelegate
    public void mediaCountUpdated() {
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null && (sharedMediaPreloader = this.sharedMediaPreloader) != null) {
            sharedMediaLayout.setNewMediaCounts(sharedMediaPreloader.getLastMediaCount());
        }
        updateSharedMediaRows();
        updateSelectedMediaTabText();
        if (this.userInfo != null) {
            resumeDelayedFragmentAnimation();
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        TLRPC$User user;
        super.onResume();
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.onResume();
        }
        invalidateIsInLandscapeMode();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            this.firstLayout = true;
            listAdapter.notifyDataSetChanged();
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onResume();
            setParentActivityTitle(LocaleController.getString("Settings", C3158R.string.Settings));
        }
        updateProfileData(true);
        fixLayout();
        SimpleTextView[] simpleTextViewArr = this.nameTextView;
        if (simpleTextViewArr[1] != null) {
            setParentActivityTitle(simpleTextViewArr[1].getText());
        }
        if (this.userId == 0 || (user = getMessagesController().getUser(Long.valueOf(this.userId))) == null || user.photo != null || this.extraHeight < AndroidUtilities.m51dp(88.0f)) {
            return;
        }
        this.expandAnimator.cancel();
        float[] fArr = this.expandAnimatorValues;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        setAvatarExpandProgress(1.0f);
        this.avatarsViewPager.setVisibility(8);
        this.extraHeight = AndroidUtilities.m51dp(88.0f);
        this.allowPullingDown = false;
        this.layoutManager.scrollToPositionWithOffset(0, AndroidUtilities.m50dp(88) - this.listView.getPaddingTop());
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onPause();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        SharedMediaLayout sharedMediaLayout;
        ProfileGalleryView profileGalleryView = this.avatarsViewPager;
        if (profileGalleryView != null && profileGalleryView.getVisibility() == 0 && this.avatarsViewPager.getRealCount() > 1) {
            this.avatarsViewPager.getHitRect(this.rect);
            if (this.rect.contains((int) motionEvent.getX(), ((int) motionEvent.getY()) - this.actionBar.getMeasuredHeight())) {
                return false;
            }
        }
        if (this.sharedMediaRow == -1 || (sharedMediaLayout = this.sharedMediaLayout) == null) {
            return true;
        }
        if (sharedMediaLayout.isSwipeBackEnabled()) {
            this.sharedMediaLayout.getHitRect(this.rect);
            if (this.rect.contains((int) motionEvent.getX(), ((int) motionEvent.getY()) - this.actionBar.getMeasuredHeight())) {
                return this.sharedMediaLayout.isCurrentTabFirst();
            }
            return true;
        }
        return false;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            return super.canBeginSlide();
        }
        return false;
    }

    public UndoView getUndoView() {
        return this.undoView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        SharedMediaLayout sharedMediaLayout;
        return this.actionBar.isEnabled() && (this.sharedMediaRow == -1 || (sharedMediaLayout = this.sharedMediaLayout) == null || !sharedMediaLayout.closeActionMode());
    }

    public boolean isSettings() {
        return this.imageUpdater != null;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    public void setPlayProfileAnimation(int i) {
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        if (AndroidUtilities.isTablet()) {
            return;
        }
        this.needTimerImage = i != 0;
        if (globalMainSettings.getBoolean("view_animations", true)) {
            this.playProfileAnimation = i;
        } else if (i == 2) {
            this.expandPhoto = true;
        }
    }

    private void updateSharedMediaRows() {
        if (this.listAdapter == null) {
            return;
        }
        updateListAnimated(false);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        this.isFragmentOpened = z;
        if (((!z && z2) || (z && !z2)) && this.playProfileAnimation != 0 && this.allowProfileAnimation && !this.isPulledDown) {
            this.openAnimationInProgress = true;
        }
        if (z) {
            if (this.imageUpdater != null) {
                this.transitionIndex = getNotificationCenter().setAnimationInProgress(this.transitionIndex, new int[]{NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats, NotificationCenter.mediaCountDidLoad, NotificationCenter.mediaCountsDidLoad, NotificationCenter.userInfoDidLoad});
            } else {
                this.transitionIndex = getNotificationCenter().setAnimationInProgress(this.transitionIndex, new int[]{NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats, NotificationCenter.mediaCountDidLoad, NotificationCenter.mediaCountsDidLoad});
            }
            if (Build.VERSION.SDK_INT >= 21 && !z2 && getParentActivity() != null) {
                this.navigationBarAnimationColorFrom = getParentActivity().getWindow().getNavigationBarColor();
            }
        }
        this.transitionAnimationInProress = true;
        checkPhotoDescriptionAlpha();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            if (!z2) {
                int i = this.playProfileAnimation;
                if (i != 0 && this.allowProfileAnimation) {
                    if (i == 1) {
                        this.currentExpandAnimatorValue = BitmapDescriptorFactory.HUE_RED;
                    }
                    this.openAnimationInProgress = false;
                    checkListViewScroll();
                    if (this.recreateMenuAfterAnimation) {
                        createActionBarMenu(true);
                    }
                }
                if (!this.fragmentOpened) {
                    this.fragmentOpened = true;
                    this.invalidateScroll = true;
                    this.fragmentView.requestLayout();
                }
            }
            getNotificationCenter().onAnimationFinish(this.transitionIndex);
        }
        this.transitionAnimationInProress = false;
        checkPhotoDescriptionAlpha();
    }

    @Keep
    public float getAvatarAnimationProgress() {
        return this.avatarAnimationProgress;
    }

    @Keep
    public void setAvatarAnimationProgress(float f) {
        int profileBackColorForId;
        int profileTextColorForId;
        this.currentExpandAnimatorValue = f;
        this.avatarAnimationProgress = f;
        checkPhotoDescriptionAlpha();
        this.listView.setAlpha(f);
        this.listView.setTranslationX(AndroidUtilities.m50dp(48) - (AndroidUtilities.m50dp(48) * f));
        long j = 5;
        if (this.playProfileAnimation != 2 || (profileBackColorForId = this.avatarColor) == 0) {
            profileBackColorForId = AvatarDrawable.getProfileBackColorForId((this.userId != 0 || (ChatObject.isChannel(this.chatId, this.currentAccount) && !this.currentChat.megagroup)) ? 5L : this.chatId, this.resourcesProvider);
        }
        int i = this.actionBarAnimationColorFrom;
        if (i == 0) {
            i = getThemedColor("actionBarDefault");
        }
        this.topView.setBackgroundColor(ColorUtils.blendARGB(SharedConfig.chatBlurEnabled() ? ColorUtils.setAlphaComponent(i, 0) : i, profileBackColorForId, f));
        this.timerDrawable.setBackgroundColor(ColorUtils.blendARGB(i, profileBackColorForId, f));
        this.actionBar.setItemsColor(ColorUtils.blendARGB(getThemedColor("actionBarDefaultIcon"), AvatarDrawable.getIconColorForId((this.userId != 0 || (ChatObject.isChannel(this.chatId, this.currentAccount) && !this.currentChat.megagroup)) ? 5L : this.chatId, this.resourcesProvider), f), false);
        int themedColor = getThemedColor("profile_title");
        int themedColor2 = getThemedColor("actionBarDefaultTitle");
        for (int i2 = 0; i2 < 2; i2++) {
            SimpleTextView[] simpleTextViewArr = this.nameTextView;
            if (simpleTextViewArr[i2] != null && (i2 != 1 || this.playProfileAnimation != 2)) {
                simpleTextViewArr[i2].setTextColor(ColorUtils.blendARGB(themedColor2, themedColor, f));
            }
        }
        if (this.isOnline[0]) {
            profileTextColorForId = getThemedColor("profile_status");
        } else {
            if (this.userId == 0 && (!ChatObject.isChannel(this.chatId, this.currentAccount) || this.currentChat.megagroup)) {
                j = this.chatId;
            }
            profileTextColorForId = AvatarDrawable.getProfileTextColorForId(j, this.resourcesProvider);
        }
        int themedColor3 = getThemedColor(this.isOnline[0] ? "chat_status" : "actionBarDefaultSubtitle");
        for (int i3 = 0; i3 < 3; i3++) {
            SimpleTextView[] simpleTextViewArr2 = this.onlineTextView;
            if (simpleTextViewArr2[i3] != null && i3 != 1 && (i3 != 2 || this.playProfileAnimation != 2)) {
                simpleTextViewArr2[i3].setTextColor(ColorUtils.blendARGB(themedColor3, profileTextColorForId, f));
            }
        }
        this.extraHeight = this.initialAnimationExtraHeight * f;
        long j2 = this.userId;
        if (j2 == 0) {
            j2 = this.chatId;
        }
        int profileColorForId = AvatarDrawable.getProfileColorForId(j2, this.resourcesProvider);
        long j3 = this.userId;
        if (j3 == 0) {
            j3 = this.chatId;
        }
        int colorForId = AvatarDrawable.getColorForId(j3);
        if (profileColorForId != colorForId) {
            this.avatarDrawable.setColor(ColorUtils.blendARGB(colorForId, profileColorForId, f));
            this.avatarImage.invalidate();
        }
        int i4 = this.navigationBarAnimationColorFrom;
        if (i4 != 0) {
            setNavigationBarColor(ColorUtils.blendARGB(i4, getNavigationBarColor(), f));
        }
        this.topView.invalidate();
        needLayout(true);
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        AboutLinkCell aboutLinkCell = this.aboutLinkCell;
        if (aboutLinkCell != null) {
            aboutLinkCell.invalidate();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return Theme.getColor("windowBackgroundGray", this.resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0504  */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.AnimatorSet onCustomTransitionAnimation(boolean r17, final java.lang.Runnable r18) {
        /*
            Method dump skipped, instructions count: 1452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.onCustomTransitionAnimation(boolean, java.lang.Runnable):android.animation.AnimatorSet");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomTransitionAnimation$42(ValueAnimator valueAnimator) {
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getAverageColor(ImageReceiver imageReceiver) {
        if (imageReceiver.getDrawable() instanceof VectorAvatarThumbDrawable) {
            return ((VectorAvatarThumbDrawable) imageReceiver.getDrawable()).gradientTools.getAverageColor();
        }
        return AndroidUtilities.calcBitmapColor(this.avatarImage.getImageReceiver().getBitmap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOnlineCount(boolean z) {
        TLRPC$UserStatus tLRPC$UserStatus;
        this.onlineCount = 0;
        final int currentTime = getConnectionsManager().getCurrentTime();
        this.sortedUsers.clear();
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if ((tLRPC$ChatFull instanceof TLRPC$TL_chatFull) || ((tLRPC$ChatFull instanceof TLRPC$TL_channelFull) && tLRPC$ChatFull.participants_count <= 200 && tLRPC$ChatFull.participants != null)) {
            for (int i = 0; i < this.chatInfo.participants.participants.size(); i++) {
                TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.chatInfo.participants.participants.get(i).user_id));
                if (user != null && (tLRPC$UserStatus = user.status) != null && ((tLRPC$UserStatus.expires > currentTime || user.f1633id == getUserConfig().getClientUserId()) && user.status.expires > 10000)) {
                    this.onlineCount++;
                }
                this.sortedUsers.add(Integer.valueOf(i));
            }
            try {
                Collections.sort(this.sortedUsers, new Comparator() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda40
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$updateOnlineCount$43;
                        lambda$updateOnlineCount$43 = ProfileActivity.this.lambda$updateOnlineCount$43(currentTime, (Integer) obj, (Integer) obj2);
                        return lambda$updateOnlineCount$43;
                    }
                });
            } catch (Exception e) {
                FileLog.m45e(e);
            }
            if (z && this.listAdapter != null && this.membersStartRow > 0) {
                AndroidUtilities.updateVisibleRows(this.listView);
            }
            if (this.sharedMediaLayout == null || this.sharedMediaRow == -1) {
                return;
            }
            if ((this.sortedUsers.size() > 5 || this.usersForceShowingIn == 2) && this.usersForceShowingIn != 1) {
                this.sharedMediaLayout.setChatUsers(this.sortedUsers, this.chatInfo);
            }
        } else if ((tLRPC$ChatFull instanceof TLRPC$TL_channelFull) && tLRPC$ChatFull.participants_count > 200) {
            this.onlineCount = tLRPC$ChatFull.online_count;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0093 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ int lambda$updateOnlineCount$43(int r5, java.lang.Integer r6, java.lang.Integer r7) {
        /*
            r4 = this;
            org.telegram.messenger.MessagesController r0 = r4.getMessagesController()
            org.telegram.tgnet.TLRPC$ChatFull r1 = r4.chatInfo
            org.telegram.tgnet.TLRPC$ChatParticipants r1 = r1.participants
            java.util.ArrayList<org.telegram.tgnet.TLRPC$ChatParticipant> r1 = r1.participants
            int r7 = r7.intValue()
            java.lang.Object r7 = r1.get(r7)
            org.telegram.tgnet.TLRPC$ChatParticipant r7 = (org.telegram.tgnet.TLRPC$ChatParticipant) r7
            long r1 = r7.user_id
            java.lang.Long r7 = java.lang.Long.valueOf(r1)
            org.telegram.tgnet.TLRPC$User r7 = r0.getUser(r7)
            org.telegram.messenger.MessagesController r0 = r4.getMessagesController()
            org.telegram.tgnet.TLRPC$ChatFull r1 = r4.chatInfo
            org.telegram.tgnet.TLRPC$ChatParticipants r1 = r1.participants
            java.util.ArrayList<org.telegram.tgnet.TLRPC$ChatParticipant> r1 = r1.participants
            int r6 = r6.intValue()
            java.lang.Object r6 = r1.get(r6)
            org.telegram.tgnet.TLRPC$ChatParticipant r6 = (org.telegram.tgnet.TLRPC$ChatParticipant) r6
            long r1 = r6.user_id
            java.lang.Long r6 = java.lang.Long.valueOf(r1)
            org.telegram.tgnet.TLRPC$User r6 = r0.getUser(r6)
            r0 = 50000(0xc350, float:7.0065E-41)
            r1 = -110(0xffffffffffffff92, float:NaN)
            r2 = 0
            if (r7 == 0) goto L59
            boolean r3 = r7.bot
            if (r3 == 0) goto L4b
            r7 = -110(0xffffffffffffff92, float:NaN)
            goto L5a
        L4b:
            boolean r3 = r7.self
            if (r3 == 0) goto L52
            int r7 = r5 + r0
            goto L5a
        L52:
            org.telegram.tgnet.TLRPC$UserStatus r7 = r7.status
            if (r7 == 0) goto L59
            int r7 = r7.expires
            goto L5a
        L59:
            r7 = 0
        L5a:
            if (r6 == 0) goto L6f
            boolean r3 = r6.bot
            if (r3 == 0) goto L61
            goto L70
        L61:
            boolean r1 = r6.self
            if (r1 == 0) goto L68
            int r1 = r5 + r0
            goto L70
        L68:
            org.telegram.tgnet.TLRPC$UserStatus r5 = r6.status
            if (r5 == 0) goto L6f
            int r1 = r5.expires
            goto L70
        L6f:
            r1 = 0
        L70:
            r5 = -1
            r6 = 1
            if (r7 <= 0) goto L7d
            if (r1 <= 0) goto L7d
            if (r7 <= r1) goto L79
            return r6
        L79:
            if (r7 >= r1) goto L7c
            return r5
        L7c:
            return r2
        L7d:
            if (r7 >= 0) goto L88
            if (r1 >= 0) goto L88
            if (r7 <= r1) goto L84
            return r6
        L84:
            if (r7 >= r1) goto L87
            return r5
        L87:
            return r2
        L88:
            if (r7 >= 0) goto L8c
            if (r1 > 0) goto L90
        L8c:
            if (r7 != 0) goto L91
            if (r1 == 0) goto L91
        L90:
            return r5
        L91:
            if (r1 >= 0) goto L95
            if (r7 > 0) goto L99
        L95:
            if (r1 != 0) goto L9a
            if (r7 == 0) goto L9a
        L99:
            return r6
        L9a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.lambda$updateOnlineCount$43(int, java.lang.Integer, java.lang.Integer):int");
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        this.chatInfo = tLRPC$ChatFull;
        if (tLRPC$ChatFull != null) {
            long j = tLRPC$ChatFull.migrated_from_chat_id;
            if (j != 0 && this.mergeDialogId == 0) {
                this.mergeDialogId = -j;
                getMediaDataController().getMediaCounts(this.mergeDialogId, this.topicId, this.classGuid);
            }
        }
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.setChatInfo(this.chatInfo);
        }
        ProfileGalleryView profileGalleryView = this.avatarsViewPager;
        if (profileGalleryView != null && !this.isTopic) {
            profileGalleryView.setChatInfo(this.chatInfo);
        }
        fetchUsersFromChannelInfo();
    }

    public void setUserInfo(TLRPC$UserFull tLRPC$UserFull) {
        this.userInfo = tLRPC$UserFull;
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public boolean canSearchMembers() {
        return this.canSearchMembers;
    }

    private void fetchUsersFromChannelInfo() {
        TLRPC$Chat tLRPC$Chat = this.currentChat;
        if (tLRPC$Chat == null || !tLRPC$Chat.megagroup) {
            return;
        }
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if (!(tLRPC$ChatFull instanceof TLRPC$TL_channelFull) || tLRPC$ChatFull.participants == null) {
            return;
        }
        for (int i = 0; i < this.chatInfo.participants.participants.size(); i++) {
            TLRPC$ChatParticipant tLRPC$ChatParticipant = this.chatInfo.participants.participants.get(i);
            this.participantsMap.put(tLRPC$ChatParticipant.user_id, tLRPC$ChatParticipant);
        }
    }

    private void kickUser(long j, TLRPC$ChatParticipant tLRPC$ChatParticipant) {
        if (j != 0) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(j));
            getMessagesController().deleteParticipantFromChat(this.chatId, user);
            if (this.currentChat != null && user != null && BulletinFactory.canShowBulletin(this)) {
                BulletinFactory.createRemoveFromChatBulletin(this, user, this.currentChat.title).show();
            }
            if (this.chatInfo.participants.participants.remove(tLRPC$ChatParticipant)) {
                updateListAnimated(true);
                return;
            }
            return;
        }
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.closeChats;
        notificationCenter.removeObserver(this, i);
        if (AndroidUtilities.isTablet()) {
            getNotificationCenter().postNotificationName(i, Long.valueOf(-this.chatId));
        } else {
            getNotificationCenter().postNotificationName(i, new Object[0]);
        }
        getMessagesController().deleteParticipantFromChat(this.chatId, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())));
        this.playProfileAnimation = 0;
        finishFragment();
    }

    public boolean isChat() {
        return this.chatId != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0113, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated) == false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRowsIds() {
        /*
            Method dump skipped, instructions count: 1918
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.updateRowsIds():void");
    }

    private Drawable getScamDrawable(int i) {
        if (this.scamDrawable == null) {
            ScamDrawable scamDrawable = new ScamDrawable(11, i);
            this.scamDrawable = scamDrawable;
            scamDrawable.setColor(getThemedColor("avatar_subtitleInProfileBlue"));
        }
        return this.scamDrawable;
    }

    private Drawable getLockIconDrawable() {
        if (this.lockIconDrawable == null) {
            this.lockIconDrawable = Theme.chat_lockIconDrawable.getConstantState().newDrawable().mutate();
        }
        return this.lockIconDrawable;
    }

    private Drawable getVerifiedCrossfadeDrawable() {
        if (this.verifiedCrossfadeDrawable == null) {
            this.verifiedDrawable = Theme.profile_verifiedDrawable.getConstantState().newDrawable().mutate();
            this.verifiedCheckDrawable = Theme.profile_verifiedCheckDrawable.getConstantState().newDrawable().mutate();
            this.verifiedCrossfadeDrawable = new CrossfadeDrawable(new CombinedDrawable(this.verifiedDrawable, this.verifiedCheckDrawable), ContextCompat.getDrawable(getParentActivity(), C3158R.C3160drawable.verified_profile));
        }
        return this.verifiedCrossfadeDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getPremiumCrossfadeDrawable() {
        if (this.premiumCrossfadeDrawable == null) {
            Drawable mutate = ContextCompat.getDrawable(getParentActivity(), C3158R.C3160drawable.msg_premium_liststar).mutate();
            this.premiumStarDrawable = mutate;
            mutate.setColorFilter(getThemedColor("profile_verifiedBackground"), PorterDuff.Mode.MULTIPLY);
            this.premiumCrossfadeDrawable = new CrossfadeDrawable(this.premiumStarDrawable, ContextCompat.getDrawable(getParentActivity(), C3158R.C3160drawable.msg_premium_prolfilestar).mutate());
        }
        return this.premiumCrossfadeDrawable;
    }

    private Drawable getEmojiStatusDrawable(TLRPC$EmojiStatus tLRPC$EmojiStatus, boolean z, boolean z2, int i) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawableArr[i] == null) {
            swapAnimatedEmojiDrawableArr[i] = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.nameTextView[i], AndroidUtilities.m50dp(24), i == 0 ? 7 : 2);
            if (this.fragmentViewAttached) {
                this.emojiStatusDrawable[i].attach();
            }
        }
        boolean isShowPremiumBadgeEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumBadgeEnabled();
        boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(this.currentAccount).isShowPremiumStatusEnabled();
        if (isShowPremiumBadgeEnabled || isShowPremiumStatusEnabled) {
            if (isShowPremiumStatusEnabled && (tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatus)) {
                this.emojiStatusDrawable[i].set(((TLRPC$TL_emojiStatus) tLRPC$EmojiStatus).document_id, z2);
            } else {
                if (isShowPremiumStatusEnabled && (tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatusUntil)) {
                    TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil = (TLRPC$TL_emojiStatusUntil) tLRPC$EmojiStatus;
                    if (tLRPC$TL_emojiStatusUntil.until > ((int) (System.currentTimeMillis() / 1000)) && !this.reportSpam) {
                        this.emojiStatusDrawable[i].set(tLRPC$TL_emojiStatusUntil.document_id, z2);
                    }
                }
                this.emojiStatusDrawable[i].set(getPremiumCrossfadeDrawable(), z2);
            }
        }
        updateEmojiStatusDrawableColor();
        return this.emojiStatusDrawable[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmojiStatusDrawableColor() {
        updateEmojiStatusDrawableColor(this.lastEmojiStatusProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmojiStatusDrawableColor(float f) {
        int blendARGB = ColorUtils.blendARGB(AndroidUtilities.getOffsetColor(getThemedColor("profile_verifiedBackground"), getThemedColor("player_actionBarTitle"), this.mediaHeaderAnimationProgress, 1.0f), -1, f);
        for (int i = 0; i < 2; i++) {
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
            if (swapAnimatedEmojiDrawableArr[i] != null) {
                swapAnimatedEmojiDrawableArr[i].setColor(Integer.valueOf(blendARGB));
            }
        }
        this.animatedStatusView.setColor(blendARGB);
        this.lastEmojiStatusProgress = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmojiStatusEffectPosition() {
        this.animatedStatusView.setScaleX(this.nameTextView[1].getScaleX());
        this.animatedStatusView.setScaleY(this.nameTextView[1].getScaleY());
        this.animatedStatusView.translate(this.nameTextView[1].getX() + (this.nameTextView[1].getRightDrawableX() * this.nameTextView[1].getScaleX()), this.nameTextView[1].getY() + (this.nameTextView[1].getHeight() - ((this.nameTextView[1].getHeight() - this.nameTextView[1].getRightDrawableY()) * this.nameTextView[1].getScaleY())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0353, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_emojiStatusUntil) r9).until > ((int) (java.lang.System.currentTimeMillis() / 1000))) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0411, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_emojiStatusUntil) r1).until > ((int) (java.lang.System.currentTimeMillis() / 1000))) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x05ec, code lost:
        if (r37.chatInfo.can_view_participants != false) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0828, code lost:
        if (r37.nameTextView[r10].setText(r1) != false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0852, code lost:
        if (r37.nameTextView[r10].setText(r1) != false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x0854, code lost:
        r13 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0458 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x07d3  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x097f  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x098f  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0a07  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0a5d  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0a60  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0a69  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0a6f  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0a7c  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0aad  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0ab5  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0ac1  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0acf  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0af0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0b13  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ba A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0b23  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0b38  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0b6c  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x049b A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0a8c A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateProfileData(boolean r38) {
        /*
            Method dump skipped, instructions count: 2936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.updateProfileData(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$44(View view) {
        showStatusSelect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$45(TLRPC$User tLRPC$User, SimpleTextView simpleTextView, View view) {
        ImageLocation forDocument;
        PremiumPreviewBottomSheet premiumPreviewBottomSheet = new PremiumPreviewBottomSheet(this, this.currentAccount, tLRPC$User, this.resourcesProvider);
        simpleTextView.getLocationOnScreen(new int[2]);
        premiumPreviewBottomSheet.startEnterFromX = simpleTextView.rightDrawableX;
        premiumPreviewBottomSheet.startEnterFromY = simpleTextView.rightDrawableY;
        premiumPreviewBottomSheet.startEnterFromScale = simpleTextView.getScaleX();
        premiumPreviewBottomSheet.startEnterFromX1 = simpleTextView.getLeft();
        premiumPreviewBottomSheet.startEnterFromY1 = simpleTextView.getTop();
        premiumPreviewBottomSheet.startEnterFromView = simpleTextView;
        Drawable rightDrawable = simpleTextView.getRightDrawable();
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
        if (rightDrawable == swapAnimatedEmojiDrawableArr[1] && swapAnimatedEmojiDrawableArr[1] != null && (swapAnimatedEmojiDrawableArr[1].getDrawable() instanceof AnimatedEmojiDrawable)) {
            premiumPreviewBottomSheet.startEnterFromScale *= 0.98f;
            TLRPC$Document document = ((AnimatedEmojiDrawable) this.emojiStatusDrawable[1].getDrawable()).getDocument();
            if (document != null) {
                BackupImageView backupImageView = new BackupImageView(getContext());
                String str = "160_160";
                SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document.thumbs, "windowBackgroundWhiteGrayIcon", 0.2f);
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                if (MimeTypes.VIDEO_WEBM.equals(document.mime_type)) {
                    forDocument = ImageLocation.getForDocument(document);
                    str = "160_160_" + ImageLoader.AUTOPLAY_FILTER;
                    if (svgThumb != null) {
                        svgThumb.overrideWidthAndHeight(512, 512);
                    }
                } else {
                    if (svgThumb != null && MessageObject.isAnimatedStickerDocument(document, false)) {
                        svgThumb.overrideWidthAndHeight(512, 512);
                    }
                    forDocument = ImageLocation.getForDocument(document);
                }
                String str2 = str;
                backupImageView.setLayerNum(7);
                backupImageView.setRoundRadius(AndroidUtilities.m50dp(4));
                backupImageView.setImage(forDocument, str2, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "140_140", svgThumb, document);
                if (AnimatedEmojiDrawable.isDefaultStatusEmoji(this.emojiStatusDrawable[1].getDrawable())) {
                    backupImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteBlueIcon"), PorterDuff.Mode.SRC_IN));
                } else if (((AnimatedEmojiDrawable) this.emojiStatusDrawable[1].getDrawable()).canOverrideColor()) {
                    backupImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.SRC_IN));
                    premiumPreviewBottomSheet.statusStickerSet = MessageObject.getInputStickerSet(document);
                } else {
                    premiumPreviewBottomSheet.statusStickerSet = MessageObject.getInputStickerSet(document);
                }
                premiumPreviewBottomSheet.overrideTitleIcon = backupImageView;
                premiumPreviewBottomSheet.isEmojiStatus = true;
            }
        }
        showDialog(premiumPreviewBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$46(View view) {
        goToForum();
    }

    /* JADX WARN: Removed duplicated region for block: B:226:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:299:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createActionBarMenu(boolean r17) {
        /*
            Method dump skipped, instructions count: 1508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.createActionBarMenu(boolean):void");
    }

    private void createAutoDeleteItem(Context context) {
        int i;
        AutoDeletePopupWrapper autoDeletePopupWrapper = new AutoDeletePopupWrapper(context, this.otherItem.getPopupLayout().getSwipeBack(), new AutoDeletePopupWrapper.Callback() { // from class: org.telegram.ui.ProfileActivity.46
            @Override // org.telegram.p048ui.Components.AutoDeletePopupWrapper.Callback
            public void dismiss() {
                ProfileActivity.this.otherItem.toggleSubMenu();
            }

            @Override // org.telegram.p048ui.Components.AutoDeletePopupWrapper.Callback
            public void setAutoDeleteHistory(int i2, int i3) {
                ProfileActivity.this.setAutoDeleteHistory(i2, i3);
            }

            @Override // org.telegram.p048ui.Components.AutoDeletePopupWrapper.Callback
            public void showGlobalAutoDeleteScreen() {
                ProfileActivity.this.presentFragment(new AutoDeleteMessagesActivity());
                dismiss();
            }
        }, false, 0, this.resourcesProvider);
        this.autoDeletePopupWrapper = autoDeletePopupWrapper;
        if (this.dialogId > 0 || this.userId > 0) {
            autoDeletePopupWrapper.allowExtenededHint();
        }
        TLRPC$UserFull tLRPC$UserFull = this.userInfo;
        if (tLRPC$UserFull == null && this.chatInfo == null) {
            i = 0;
        } else {
            i = tLRPC$UserFull != null ? tLRPC$UserFull.ttl_period : this.chatInfo.ttl_period;
        }
        TimerDrawable ttlIcon = TimerDrawable.getTtlIcon(i);
        this.autoDeleteItemDrawable = ttlIcon;
        this.autoDeleteItem = this.otherItem.addSwipeBackItem(0, ttlIcon, LocaleController.getString("AutoDeletePopupTitle", C3158R.string.AutoDeletePopupTitle), this.autoDeletePopupWrapper.windowLayout);
        this.otherItem.addColoredGap();
        updateAutoDeleteItem();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public int getThemedColor(String str) {
        return Theme.getColor(str, this.resourcesProvider);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public Drawable getThemedDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Drawable drawable = resourcesProvider != null ? resourcesProvider.getDrawable(str) : null;
        return drawable != null ? drawable : super.getThemedDrawable(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAutoDeleteHistory(int i, int i2) {
        long dialogId = getDialogId();
        getMessagesController().setDialogHistoryTTL(dialogId, i);
        if (this.userInfo == null && this.chatInfo == null) {
            return;
        }
        UndoView undoView = this.undoView;
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(dialogId));
        TLRPC$UserFull tLRPC$UserFull = this.userInfo;
        undoView.showWithAction(dialogId, i2, user, Integer.valueOf(tLRPC$UserFull != null ? tLRPC$UserFull.ttl_period : this.chatInfo.ttl_period), (Runnable) null, (Runnable) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.invalidateViews();
        }
    }

    @Override // org.telegram.p048ui.DialogsActivity.DialogsActivityDelegate
    public boolean didSelectDialogs(DialogsActivity dialogsActivity, ArrayList<MessagesStorage.TopicKey> arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment) {
        long j = arrayList.get(0).dialogId;
        Bundle bundle = new Bundle();
        bundle.putBoolean("scrollToTopOnResume", true);
        if (DialogObject.isEncryptedDialog(j)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j));
        } else if (DialogObject.isUserDialog(j)) {
            bundle.putLong("user_id", j);
        } else if (DialogObject.isChatDialog(j)) {
            bundle.putLong("chat_id", -j);
        }
        if (getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
            NotificationCenter notificationCenter = getNotificationCenter();
            int i = NotificationCenter.closeChats;
            notificationCenter.removeObserver(this, i);
            getNotificationCenter().postNotificationName(i, new Object[0]);
            presentFragment(new ChatActivity(bundle), true);
            removeSelfFromStack();
            getSendMessagesHelper().sendMessage(getMessagesController().getUser(Long.valueOf(this.userId)), j, (MessageObject) null, (MessageObject) null, (TLRPC$ReplyMarkup) null, (HashMap<String, String>) null, true, 0, (String) null);
            if (!TextUtils.isEmpty(charSequence)) {
                SendMessagesHelper.prepareSendingText(AccountInstance.getInstance(this.currentAccount), charSequence.toString(), j, true, 0, null);
            }
            return true;
        }
        return false;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        boolean z;
        boolean z2;
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onRequestPermissionsResultFragment(i, strArr, iArr);
        }
        if (i == 101 || i == 102) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
            if (user == null) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= iArr.length) {
                    z = true;
                    break;
                } else if (iArr[i2] != 0) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (iArr.length > 0 && z) {
                boolean z3 = i == 102;
                TLRPC$UserFull tLRPC$UserFull = this.userInfo;
                VoIPHelper.startCall(user, z3, tLRPC$UserFull != null && tLRPC$UserFull.video_calls_available, getParentActivity(), this.userInfo, getAccountInstance());
                return;
            }
            VoIPHelper.permissionDenied(getParentActivity(), null, i);
        } else if (i != 103 || this.currentChat == null) {
        } else {
            int i3 = 0;
            while (true) {
                if (i3 >= iArr.length) {
                    z2 = true;
                    break;
                } else if (iArr[i3] != 0) {
                    z2 = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (iArr.length > 0 && z2) {
                VoIPHelper.startCall(this.currentChat, (TLRPC$InputPeer) null, (String) null, getMessagesController().getGroupCall(this.chatId, false) == null, getParentActivity(), this, getAccountInstance());
                return;
            }
            VoIPHelper.permissionDenied(getParentActivity(), null, i);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void dismissCurrentDialog() {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater == null || !imageUpdater.dismissCurrentDialog(this.visibleDialog)) {
            super.dismissCurrentDialog();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean dismissDialogOnPause(Dialog dialog) {
        ImageUpdater imageUpdater = this.imageUpdater;
        return (imageUpdater == null || imageUpdater.dismissDialogOnPause(dialog)) && super.dismissDialogOnPause(dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator searchExpandTransition(final boolean z) {
        if (z) {
            AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
            AndroidUtilities.setAdjustResizeToNothing(getParentActivity(), this.classGuid);
        }
        Animator animator = this.searchViewTransition;
        if (animator != null) {
            animator.removeAllListeners();
            this.searchViewTransition.cancel();
        }
        float[] fArr = new float[2];
        fArr[0] = this.searchTransitionProgress;
        fArr[1] = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        final float f = this.extraHeight;
        this.searchListView.setTranslationY(f);
        this.searchListView.setVisibility(0);
        this.searchItem.setVisibility(0);
        this.listView.setVisibility(0);
        needLayout(true);
        this.avatarContainer.setVisibility(0);
        this.nameTextView[1].setVisibility(0);
        this.onlineTextView[1].setVisibility(0);
        this.actionBar.onSearchFieldVisibilityChanged(this.searchTransitionProgress > 0.5f);
        int i = this.searchTransitionProgress > 0.5f ? 0 : 8;
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(i);
        }
        if (this.qrItem != null) {
            updateQrItemVisibility(false);
        }
        this.searchItem.setVisibility(i);
        this.searchItem.getSearchContainer().setVisibility(this.searchTransitionProgress <= 0.5f ? 0 : 8);
        this.searchListView.setEmptyView(this.emptyView);
        this.avatarContainer.setClickable(false);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ProfileActivity.this.lambda$searchExpandTransition$47(ofFloat, f, z, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.47
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                ProfileActivity.this.updateSearchViewState(z);
                ProfileActivity.this.avatarContainer.setClickable(true);
                if (z) {
                    ProfileActivity.this.searchItem.requestFocusOnSearchView();
                }
                ProfileActivity.this.needLayout(true);
                ProfileActivity.this.searchViewTransition = null;
                ((BaseFragment) ProfileActivity.this).fragmentView.invalidate();
                if (z) {
                    ProfileActivity.this.invalidateScroll = true;
                    ProfileActivity.this.saveScrollPosition();
                    AndroidUtilities.requestAdjustResize(ProfileActivity.this.getParentActivity(), ((BaseFragment) ProfileActivity.this).classGuid);
                    ProfileActivity.this.emptyView.setPreventMoving(false);
                }
            }
        });
        if (!z) {
            this.invalidateScroll = true;
            saveScrollPosition();
            AndroidUtilities.requestAdjustNothing(getParentActivity(), this.classGuid);
            this.emptyView.setPreventMoving(true);
        }
        ofFloat.setDuration(220L);
        ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.searchViewTransition = ofFloat;
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchExpandTransition$47(ValueAnimator valueAnimator, float f, boolean z, ValueAnimator valueAnimator2) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.searchTransitionProgress = floatValue;
        float f2 = (floatValue - 0.5f) / 0.5f;
        float f3 = (0.5f - floatValue) / 0.5f;
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = BitmapDescriptorFactory.HUE_RED;
        }
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            f3 = BitmapDescriptorFactory.HUE_RED;
        }
        float f4 = -f;
        this.searchTransitionOffset = (int) ((1.0f - floatValue) * f4);
        this.searchListView.setTranslationY(floatValue * f);
        this.emptyView.setTranslationY(f * this.searchTransitionProgress);
        this.listView.setTranslationY(f4 * (1.0f - this.searchTransitionProgress));
        this.listView.setScaleX(1.0f - ((1.0f - this.searchTransitionProgress) * 0.01f));
        this.listView.setScaleY(1.0f - ((1.0f - this.searchTransitionProgress) * 0.01f));
        this.listView.setAlpha(this.searchTransitionProgress);
        needLayout(true);
        this.listView.setAlpha(f2);
        this.searchListView.setAlpha(1.0f - this.searchTransitionProgress);
        this.searchListView.setScaleX((this.searchTransitionProgress * 0.05f) + 1.0f);
        this.searchListView.setScaleY((this.searchTransitionProgress * 0.05f) + 1.0f);
        this.emptyView.setAlpha(1.0f - f2);
        this.avatarContainer.setAlpha(f2);
        this.nameTextView[1].setAlpha(f2);
        this.onlineTextView[1].setAlpha(f2);
        this.searchItem.getSearchField().setAlpha(f3);
        if (z && this.searchTransitionProgress < 0.7f) {
            this.searchItem.requestFocusOnSearchView();
        }
        this.searchItem.getSearchContainer().setVisibility(this.searchTransitionProgress < 0.5f ? 0 : 8);
        int i = this.searchTransitionProgress > 0.5f ? 0 : 8;
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(i);
            this.otherItem.setAlpha(f2);
        }
        ActionBarMenuItem actionBarMenuItem2 = this.qrItem;
        if (actionBarMenuItem2 != null) {
            actionBarMenuItem2.setAlpha(f2);
            updateQrItemVisibility(false);
        }
        this.searchItem.setVisibility(i);
        this.actionBar.onSearchFieldVisibilityChanged(this.searchTransitionProgress < 0.5f);
        ActionBarMenuItem actionBarMenuItem3 = this.otherItem;
        if (actionBarMenuItem3 != null) {
            actionBarMenuItem3.setAlpha(f2);
        }
        ActionBarMenuItem actionBarMenuItem4 = this.qrItem;
        if (actionBarMenuItem4 != null) {
            actionBarMenuItem4.setAlpha(f2);
        }
        this.searchItem.setAlpha(f2);
        this.topView.invalidate();
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchViewState(boolean z) {
        int i = 0;
        int i2 = z ? 8 : 0;
        this.listView.setVisibility(i2);
        this.searchListView.setVisibility(z ? 0 : 8);
        this.searchItem.getSearchContainer().setVisibility(z ? 0 : 8);
        this.actionBar.onSearchFieldVisibilityChanged(z);
        this.avatarContainer.setVisibility(i2);
        this.nameTextView[1].setVisibility(i2);
        this.onlineTextView[1].setVisibility(i2);
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setAlpha(1.0f);
            this.otherItem.setVisibility(i2);
        }
        ActionBarMenuItem actionBarMenuItem2 = this.qrItem;
        if (actionBarMenuItem2 != null) {
            actionBarMenuItem2.setAlpha(1.0f);
            this.qrItem.setVisibility((z || !isQrNeedVisible()) ? 8 : 8);
        }
        this.searchItem.setVisibility(i2);
        this.avatarContainer.setAlpha(1.0f);
        this.nameTextView[1].setAlpha(1.0f);
        this.onlineTextView[1].setAlpha(1.0f);
        this.searchItem.setAlpha(1.0f);
        this.listView.setAlpha(1.0f);
        this.searchListView.setAlpha(1.0f);
        this.emptyView.setAlpha(1.0f);
        if (z) {
            this.searchListView.setEmptyView(this.emptyView);
        } else {
            this.emptyView.setVisibility(8);
        }
    }

    @Override // org.telegram.p048ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void onUploadProgressChanged(float f) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(f);
        this.avatarsViewPager.setUploadProgress(this.uploadingImageLocation, f);
    }

    @Override // org.telegram.p048ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p048ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputFile tLRPC$InputFile2, final double d, final String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2, boolean z, final TLRPC$VideoSize tLRPC$VideoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$didUploadPhoto$50(tLRPC$InputFile, tLRPC$InputFile2, tLRPC$VideoSize, d, str, tLRPC$PhotoSize2, tLRPC$PhotoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$49(final String str, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$didUploadPhoto$48(tLRPC$TL_error, tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$48(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, String str) {
        if (tLRPC$TL_error == null) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId()));
            if (user == null) {
                user = getUserConfig().getCurrentUser();
                if (user == null) {
                    return;
                }
                getMessagesController().putUser(user, false);
            } else {
                getUserConfig().setCurrentUser(user);
            }
            TLRPC$TL_photos_photo tLRPC$TL_photos_photo = (TLRPC$TL_photos_photo) tLObject;
            ArrayList<TLRPC$PhotoSize> arrayList = tLRPC$TL_photos_photo.photo.sizes;
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
            TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, 800);
            TLRPC$VideoSize closestVideoSizeWithSize = tLRPC$TL_photos_photo.photo.video_sizes.isEmpty() ? null : FileLoader.getClosestVideoSizeWithSize(tLRPC$TL_photos_photo.photo.video_sizes, 1000);
            TLRPC$TL_userProfilePhoto tLRPC$TL_userProfilePhoto = new TLRPC$TL_userProfilePhoto();
            user.photo = tLRPC$TL_userProfilePhoto;
            tLRPC$TL_userProfilePhoto.photo_id = tLRPC$TL_photos_photo.photo.f1523id;
            if (closestPhotoSizeWithSize != null) {
                tLRPC$TL_userProfilePhoto.photo_small = closestPhotoSizeWithSize.location;
            }
            if (closestPhotoSizeWithSize2 != null) {
                tLRPC$TL_userProfilePhoto.photo_big = closestPhotoSizeWithSize2.location;
            }
            if (closestPhotoSizeWithSize != null && this.avatar != null) {
                FileLoader.getInstance(this.currentAccount).getPathToAttach(this.avatar, true).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true));
                ImageLoader.getInstance().replaceImageInCache(this.avatar.volume_id + "_" + this.avatar.local_id + "@50_50", closestPhotoSizeWithSize.location.volume_id + "_" + closestPhotoSizeWithSize.location.local_id + "@50_50", ImageLocation.getForUserOrChat(user, 1), false);
            }
            if (closestVideoSizeWithSize != null && str != null) {
                new File(str).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestVideoSizeWithSize, "mp4", true));
            } else if (closestPhotoSizeWithSize2 != null && this.avatarBig != null) {
                FileLoader.getInstance(this.currentAccount).getPathToAttach(this.avatarBig, true).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize2, true));
            }
            getMessagesStorage().addDialogPhoto(user.f1633id, tLRPC$TL_photos_photo.photo);
            ArrayList<TLRPC$User> arrayList2 = new ArrayList<>();
            arrayList2.add(user);
            getMessagesStorage().putUsersAndChats(arrayList2, null, false, true);
            TLRPC$UserFull userFull = getMessagesController().getUserFull(this.userId);
            userFull.profile_photo = tLRPC$TL_photos_photo.photo;
            getMessagesStorage().updateUserInfo(userFull, false);
        }
        this.allowPullingDown = (AndroidUtilities.isTablet() || this.isInLandscapeMode || !this.avatarImage.getImageReceiver().hasNotThumb() || AndroidUtilities.isAccessibilityScreenReaderEnabled()) ? false : true;
        this.avatar = null;
        this.avatarBig = null;
        ProfileGalleryView profileGalleryView = this.avatarsViewPager;
        profileGalleryView.scrolledByUser = true;
        profileGalleryView.removeUploadingImage(this.uploadingImageLocation);
        this.avatarsViewPager.setCreateThumbFromParent(false);
        updateProfileData(true);
        showAvatarProgress(false, true);
        getNotificationCenter().postNotificationName(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_ALL));
        getNotificationCenter().postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
        getUserConfig().saveConfig(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$50(TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, TLRPC$VideoSize tLRPC$VideoSize, double d, final String str, TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$PhotoSize tLRPC$PhotoSize2) {
        if (tLRPC$InputFile != null || tLRPC$InputFile2 != null || tLRPC$VideoSize != null) {
            TLRPC$TL_photos_uploadProfilePhoto tLRPC$TL_photos_uploadProfilePhoto = new TLRPC$TL_photos_uploadProfilePhoto();
            if (tLRPC$InputFile != null) {
                tLRPC$TL_photos_uploadProfilePhoto.file = tLRPC$InputFile;
                tLRPC$TL_photos_uploadProfilePhoto.flags |= 1;
            }
            if (tLRPC$InputFile2 != null) {
                tLRPC$TL_photos_uploadProfilePhoto.video = tLRPC$InputFile2;
                int i = tLRPC$TL_photos_uploadProfilePhoto.flags | 2;
                tLRPC$TL_photos_uploadProfilePhoto.flags = i;
                tLRPC$TL_photos_uploadProfilePhoto.video_start_ts = d;
                tLRPC$TL_photos_uploadProfilePhoto.flags = i | 4;
            }
            if (tLRPC$VideoSize != null) {
                tLRPC$TL_photos_uploadProfilePhoto.video_emoji_markup = tLRPC$VideoSize;
                tLRPC$TL_photos_uploadProfilePhoto.flags |= 16;
            }
            getConnectionsManager().sendRequest(tLRPC$TL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda48
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.this.lambda$didUploadPhoto$49(str, tLObject, tLRPC$TL_error);
                }
            });
        } else {
            if (tLRPC$PhotoSize != null) {
                this.avatar = tLRPC$PhotoSize.location;
            }
            this.avatarBig = tLRPC$PhotoSize2.location;
            this.avatarImage.setImage(ImageLocation.getForLocal(this.avatar), "50_50", this.avatarDrawable, (Object) null);
            if (this.setAvatarRow != -1) {
                updateRowsIds();
                ListAdapter listAdapter = this.listAdapter;
                if (listAdapter != null) {
                    listAdapter.notifyDataSetChanged();
                }
                needLayout(true);
            }
            ProfileGalleryView profileGalleryView = this.avatarsViewPager;
            ImageLocation forLocal = ImageLocation.getForLocal(this.avatarBig);
            this.uploadingImageLocation = forLocal;
            profileGalleryView.addUploadingImage(forLocal, ImageLocation.getForLocal(this.avatar));
            showAvatarProgress(true, false);
        }
        this.actionBar.createMenu().requestLayout();
    }

    private void showAvatarProgress(final boolean z, boolean z2) {
        if (this.avatarProgressView == null) {
            return;
        }
        AnimatorSet animatorSet = this.avatarAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.avatarAnimation = null;
        }
        if (!z2) {
            if (z) {
                this.avatarProgressView.setAlpha(1.0f);
                this.avatarProgressView.setVisibility(0);
                return;
            }
            this.avatarProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.avatarProgressView.setVisibility(4);
            return;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.avatarAnimation = animatorSet2;
        if (z) {
            this.avatarProgressView.setVisibility(0);
            this.avatarAnimation.playTogether(ObjectAnimator.ofFloat(this.avatarProgressView, View.ALPHA, 1.0f));
        } else {
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this.avatarProgressView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
        }
        this.avatarAnimation.setDuration(180L);
        this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.48
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ProfileActivity.this.avatarAnimation == null || ProfileActivity.this.avatarProgressView == null) {
                    return;
                }
                if (!z) {
                    ProfileActivity.this.avatarProgressView.setVisibility(4);
                }
                ProfileActivity.this.avatarAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ProfileActivity.this.avatarAnimation = null;
            }
        });
        this.avatarAnimation.start();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onActivityResult(i, i2, intent);
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        String str;
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater == null || (str = imageUpdater.currentPicturePath) == null) {
            return;
        }
        bundle.putString("path", str);
    }

    public void restoreSelfArgs(Bundle bundle) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.currentPicturePath = bundle.getString("path");
        }
    }

    public static void sendLogs(final Activity activity, final boolean z) {
        if (activity == null) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(activity, 3);
        alertDialog.setCanCancel(false);
        alertDialog.show();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.lambda$sendLogs$52(z, alertDialog, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendLogs$52(boolean z, final AlertDialog alertDialog, final Activity activity) {
        ZipOutputStream zipOutputStream;
        try {
            File logsDir = AndroidUtilities.getLogsDir();
            if (logsDir == null) {
                return;
            }
            final File file = new File(logsDir, "logs.zip");
            if (file.exists()) {
                file.delete();
            }
            ArrayList arrayList = new ArrayList();
            for (File file2 : logsDir.listFiles()) {
                arrayList.add(file2);
            }
            File file3 = new File(ApplicationLoader.getFilesDirFixed(), "malformed_database/");
            if (file3.exists() && file3.isDirectory()) {
                for (File file4 : file3.listFiles()) {
                    arrayList.add(file4);
                }
            }
            final boolean[] zArr = new boolean[1];
            long currentTimeMillis = System.currentTimeMillis();
            BufferedInputStream bufferedInputStream = null;
            try {
                zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                try {
                    try {
                        byte[] bArr = new byte[65536];
                        for (int i = 0; i < arrayList.size(); i++) {
                            File file5 = (File) arrayList.get(i);
                            if ((file5.getName().contains("cache4") || ((!z && !file5.getName().contains("_mtproto")) || currentTimeMillis - file5.lastModified() <= 86400000)) && file5.exists()) {
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file5), 65536);
                                try {
                                    zipOutputStream.putNextEntry(new ZipEntry(file5.getName()));
                                    while (true) {
                                        int read = bufferedInputStream2.read(bArr, 0, 65536);
                                        if (read == -1) {
                                            break;
                                        }
                                        zipOutputStream.write(bArr, 0, read);
                                    }
                                    bufferedInputStream2.close();
                                } catch (Exception e) {
                                    e = e;
                                    bufferedInputStream = bufferedInputStream2;
                                    e.printStackTrace();
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (zipOutputStream != null) {
                                        zipOutputStream.close();
                                    }
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda27
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ProfileActivity.lambda$sendLogs$51(AlertDialog.this, zArr, activity, file);
                                        }
                                    });
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedInputStream = bufferedInputStream2;
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (zipOutputStream != null) {
                                        zipOutputStream.close();
                                    }
                                    throw th;
                                }
                            }
                        }
                        zArr[0] = true;
                    } catch (Exception e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
                zipOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                zipOutputStream = null;
            }
            zipOutputStream.close();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.lambda$sendLogs$51(AlertDialog.this, zArr, activity, file);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendLogs$51(AlertDialog alertDialog, boolean[] zArr, Activity activity, File file) {
        Uri fromFile;
        try {
            alertDialog.dismiss();
        } catch (Exception unused) {
        }
        if (!zArr[0]) {
            if (activity != null) {
                Toast.makeText(activity, LocaleController.getString("ErrorOccurred", C3158R.string.ErrorOccurred), 0).show();
                return;
            }
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            fromFile = FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", file);
        } else {
            fromFile = Uri.fromFile(file);
        }
        Intent intent = new Intent("android.intent.action.SEND");
        if (i >= 24) {
            intent.addFlags(1);
        }
        intent.setType("message/rfc822");
        intent.putExtra("android.intent.extra.EMAIL", "");
        intent.putExtra("android.intent.extra.SUBJECT", "Logs from " + LocaleController.getInstance().formatterStats.format(System.currentTimeMillis()));
        intent.putExtra("android.intent.extra.STREAM", fromFile);
        if (activity != null) {
            try {
                activity.startActivityForResult(Intent.createChooser(intent, "Select email application."), 500);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View dividerCell;
            TextDetailWithRankCell textDetailWithRankCell;
            TextInfoPrivacyCell textInfoPrivacyCell;
            String str;
            if (i == IdFabric$ViewTypes.TOPIC) {
                textDetailWithRankCell = new TopicProfileCell(this.mContext, ProfileActivity.this.getDialogId());
            } else if (i == IdFabric$ViewTypes.TEXT_DETAIL_WITH_RANGE) {
                TextDetailWithRankCell textDetailWithRankCell2 = new TextDetailWithRankCell(this.mContext);
                textDetailWithRankCell2.setContentDescriptionValueFirst(true);
                textDetailWithRankCell = textDetailWithRankCell2;
            } else {
                switch (i) {
                    case 1:
                        textDetailWithRankCell = new HeaderCell(this.mContext, 23, ProfileActivity.this.resourcesProvider);
                        break;
                    case 2:
                    case 19:
                        TextDetailCell textDetailCell = new TextDetailCell(this.mContext, ProfileActivity.this.resourcesProvider, i == 19);
                        textDetailCell.setContentDescriptionValueFirst(true);
                        textInfoPrivacyCell = textDetailCell;
                        textDetailWithRankCell = textInfoPrivacyCell;
                        break;
                    case 3:
                        ProfileActivity profileActivity = ProfileActivity.this;
                        Context context = this.mContext;
                        ProfileActivity profileActivity2 = ProfileActivity.this;
                        textDetailWithRankCell = profileActivity.aboutLinkCell = new AboutLinkCell(context, profileActivity2, profileActivity2.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.1
                            @Override // org.telegram.p048ui.Cells.AboutLinkCell
                            protected void didPressUrl(String str2, Browser.Progress progress) {
                                ProfileActivity.this.openUrl(str2, progress);
                            }

                            @Override // org.telegram.p048ui.Cells.AboutLinkCell
                            protected void didResizeEnd() {
                                ProfileActivity.this.layoutManager.mIgnoreTopPadding = false;
                            }

                            @Override // org.telegram.p048ui.Cells.AboutLinkCell
                            protected void didResizeStart() {
                                ProfileActivity.this.layoutManager.mIgnoreTopPadding = true;
                            }
                        };
                        break;
                    case 4:
                        textDetailWithRankCell = new TextCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 5:
                        dividerCell = new DividerCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        dividerCell.setPadding(AndroidUtilities.m50dp(20), AndroidUtilities.m50dp(4), 0, 0);
                        textDetailWithRankCell = dividerCell;
                        break;
                    case 6:
                        textDetailWithRankCell = new NotificationsCheckCell(this.mContext, 23, 70, false, ProfileActivity.this.resourcesProvider);
                        break;
                    case 7:
                        textDetailWithRankCell = new ShadowSectionCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 8:
                        textDetailWithRankCell = new UserCell(this.mContext, ProfileActivity.this.addMemberRow == -1 ? 9 : 6, 0, true, ProfileActivity.this.resourcesProvider);
                        break;
                    case 9:
                    case 10:
                    case 14:
                    case 16:
                    default:
                        TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(this.mContext, 10, ProfileActivity.this.resourcesProvider);
                        textInfoPrivacyCell2.getTextView().setGravity(1);
                        textInfoPrivacyCell2.getTextView().setTextColor(ProfileActivity.this.getThemedColor("windowBackgroundWhiteGrayText3"));
                        textInfoPrivacyCell2.getTextView().setMovementMethod(null);
                        try {
                            PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
                            int i2 = packageInfo.versionCode;
                            int i3 = i2 / 10;
                            int i4 = i2 % 10;
                            if (i4 == 1 || i4 == 2) {
                                str = "store bundled " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                            } else if (BuildVars.isStandaloneApp()) {
                                str = "direct " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                            } else {
                                str = "universal " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                            }
                            textInfoPrivacyCell2.setText(LocaleController.formatString("TelegramVersion", C3158R.string.TelegramVersion, String.format(Locale.US, "v%s (%d) %s", packageInfo.versionName, Integer.valueOf(i3), str)));
                        } catch (Exception e) {
                            FileLog.m45e(e);
                        }
                        textInfoPrivacyCell2.getTextView().setPadding(0, AndroidUtilities.m50dp(14), 0, AndroidUtilities.m50dp(14));
                        textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3158R.C3160drawable.greydivider_bottom, ProfileActivity.this.getThemedColor("windowBackgroundGrayShadow")));
                        textInfoPrivacyCell = textInfoPrivacyCell2;
                        textDetailWithRankCell = textInfoPrivacyCell;
                        break;
                    case 11:
                        textDetailWithRankCell = new View(this, this.mContext) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.2
                            @Override // android.view.View
                            protected void onMeasure(int i5, int i6) {
                                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i5), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824));
                            }
                        };
                        break;
                    case 12:
                        dividerCell = new View(this.mContext) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.3
                            private int lastPaddingHeight = 0;
                            private int lastListViewHeight = 0;

                            @Override // android.view.View
                            protected void onMeasure(int i5, int i6) {
                                if (this.lastListViewHeight != ProfileActivity.this.listView.getMeasuredHeight()) {
                                    this.lastPaddingHeight = 0;
                                }
                                this.lastListViewHeight = ProfileActivity.this.listView.getMeasuredHeight();
                                int childCount = ProfileActivity.this.listView.getChildCount();
                                if (childCount == ProfileActivity.this.listAdapter.getItemCount()) {
                                    int i7 = 0;
                                    for (int i8 = 0; i8 < childCount; i8++) {
                                        int childAdapterPosition = ProfileActivity.this.listView.getChildAdapterPosition(ProfileActivity.this.listView.getChildAt(i8));
                                        if (childAdapterPosition >= 0 && childAdapterPosition != ProfileActivity.this.bottomPaddingRow) {
                                            i7 += ProfileActivity.this.listView.getChildAt(i8).getMeasuredHeight();
                                        }
                                    }
                                    int measuredHeight = ((BaseFragment) ProfileActivity.this).fragmentView == null ? 0 : ((((BaseFragment) ProfileActivity.this).fragmentView.getMeasuredHeight() - C3222ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - i7;
                                    if (measuredHeight > AndroidUtilities.m50dp(88)) {
                                        measuredHeight = 0;
                                    }
                                    int i9 = measuredHeight > 0 ? measuredHeight : 0;
                                    int measuredWidth = ProfileActivity.this.listView.getMeasuredWidth();
                                    this.lastPaddingHeight = i9;
                                    setMeasuredDimension(measuredWidth, i9);
                                    return;
                                }
                                setMeasuredDimension(ProfileActivity.this.listView.getMeasuredWidth(), this.lastPaddingHeight);
                            }
                        };
                        dividerCell.setBackground(new ColorDrawable(0));
                        textDetailWithRankCell = dividerCell;
                        break;
                    case 13:
                        if (ProfileActivity.this.sharedMediaLayout.getParent() != null) {
                            ((ViewGroup) ProfileActivity.this.sharedMediaLayout.getParent()).removeView(ProfileActivity.this.sharedMediaLayout);
                        }
                        textDetailWithRankCell = ProfileActivity.this.sharedMediaLayout;
                        break;
                    case 15:
                        textDetailWithRankCell = new SettingsSuggestionCell(this.mContext, ProfileActivity.this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.4
                            @Override // org.telegram.p048ui.Cells.SettingsSuggestionCell
                            protected void onYesClick(int i5) {
                                NotificationCenter notificationCenter = ProfileActivity.this.getNotificationCenter();
                                ProfileActivity profileActivity3 = ProfileActivity.this;
                                int i6 = NotificationCenter.newSuggestionsAvailable;
                                notificationCenter.removeObserver(profileActivity3, i6);
                                ProfileActivity.this.getMessagesController().removeSuggestion(0L, i5 == 0 ? "VALIDATE_PHONE_NUMBER" : "VALIDATE_PASSWORD");
                                ProfileActivity.this.getNotificationCenter().addObserver(ProfileActivity.this, i6);
                                if (i5 == 0) {
                                    int unused = ProfileActivity.this.phoneSuggestionRow;
                                } else {
                                    int unused2 = ProfileActivity.this.passwordSuggestionRow;
                                }
                                ProfileActivity.this.updateListAnimated(false);
                            }

                            @Override // org.telegram.p048ui.Cells.SettingsSuggestionCell
                            protected void onNoClick(int i5) {
                                if (i5 == 0) {
                                    ProfileActivity.this.presentFragment(new ActionIntroActivity(3));
                                } else {
                                    ProfileActivity.this.presentFragment(new TwoStepVerificationSetupActivity(8, null));
                                }
                            }
                        };
                        break;
                    case 17:
                        textDetailWithRankCell = new TextInfoPrivacyCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 18:
                        textDetailWithRankCell = new ProfilePremiumCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 20:
                        textDetailWithRankCell = new TextCheckCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                }
            }
            if (i != 13) {
                textDetailWithRankCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            }
            return new RecyclerListView.Holder(textDetailWithRankCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.itemView == ProfileActivity.this.sharedMediaLayout) {
                ProfileActivity.this.sharedMediaLayoutAttached = true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.itemView == ProfileActivity.this.sharedMediaLayout) {
                ProfileActivity.this.sharedMediaLayoutAttached = false;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:171:0x0454 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:174:0x0461  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x0466  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r20, int r21) {
            /*
                Method dump skipped, instructions count: 3824
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.ProfileActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
            ProfileActivity.this.showAccountLevelDialog();
        }

        private CharSequence alsoUsernamesString(String str, ArrayList<TLRPC$TL_username> arrayList, CharSequence charSequence) {
            if (arrayList == null) {
                return charSequence;
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            int i = 0;
            while (i < arrayList2.size()) {
                if (!((TLRPC$TL_username) arrayList2.get(i)).active || (str != null && str.equals(((TLRPC$TL_username) arrayList2.get(i)).username))) {
                    arrayList2.remove(i);
                    i--;
                }
                i++;
            }
            SpannableStringBuilder spannableStringBuilder = charSequence;
            if (arrayList2.size() > 0) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    final String str2 = ((TLRPC$TL_username) arrayList2.get(i2)).username;
                    SpannableString spannableString = new SpannableString("@" + str2);
                    spannableString.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ProfileActivity.ListAdapter.5
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            String str3 = ProfileActivity.this.getMessagesController().linkPrefix + "/" + str2;
                            if (ProfileActivity.this.currentChat == null || !ProfileActivity.this.currentChat.noforwards) {
                                AndroidUtilities.addToClipboard(str3);
                                ProfileActivity.this.undoView.showWithAction(0L, 56, (Runnable) null);
                            }
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            textPaint.setUnderlineText(false);
                        }
                    }, 0, spannableString.length(), 33);
                    spannableString.setSpan(new ForegroundColorSpan(ProfileActivity.this.getThemedColor("chat_messageLinkIn")), 0, spannableString.length(), 33);
                    spannableStringBuilder2.append((CharSequence) spannableString);
                    if (i2 < arrayList2.size() - 1) {
                        spannableStringBuilder2.append((CharSequence) ", ");
                    }
                }
                String string = LocaleController.getString("UsernameAlso", C3158R.string.UsernameAlso);
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(string);
                int indexOf = string.indexOf("%1$s");
                spannableStringBuilder = spannableStringBuilder3;
                if (indexOf >= 0) {
                    spannableStringBuilder3.replace(indexOf, indexOf + 4, (CharSequence) spannableStringBuilder2);
                    spannableStringBuilder = spannableStringBuilder3;
                }
            }
            return spannableStringBuilder;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() == ProfileActivity.this.setAvatarRow) {
                ProfileActivity.this.setAvatarCell = null;
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            if (ProfileActivity.this.notificationRow != -1) {
                int adapterPosition = viewHolder.getAdapterPosition();
                return adapterPosition == ProfileActivity.this.dialogIdRow || adapterPosition == ProfileActivity.this.settingsToolsRow || adapterPosition == ProfileActivity.this.settingsTopicsRow || adapterPosition == ProfileActivity.this.settingsHelpRow || adapterPosition == ProfileActivity.this.notificationRow || adapterPosition == ProfileActivity.this.numberRow || adapterPosition == ProfileActivity.this.privacyRow || adapterPosition == ProfileActivity.this.languageRow || adapterPosition == ProfileActivity.this.setUsernameRow || adapterPosition == ProfileActivity.this.bioRow || adapterPosition == ProfileActivity.this.versionRow || adapterPosition == ProfileActivity.this.dataRow || adapterPosition == ProfileActivity.this.chatRow || adapterPosition == ProfileActivity.this.questionRow || adapterPosition == ProfileActivity.this.devicesRow || adapterPosition == ProfileActivity.this.filtersRow || adapterPosition == ProfileActivity.this.stickersRow || adapterPosition == ProfileActivity.this.faqRow || adapterPosition == ProfileActivity.this.policyRow || adapterPosition == ProfileActivity.this.sendLogsRow || adapterPosition == ProfileActivity.this.sendLastLogsRow || adapterPosition == ProfileActivity.this.clearLogsRow || adapterPosition == ProfileActivity.this.switchBackendRow || adapterPosition == ProfileActivity.this.setAvatarRow || adapterPosition == ProfileActivity.this.addToGroupButtonRow || adapterPosition == ProfileActivity.this.premiumRow;
            }
            View view = viewHolder.itemView;
            if (view instanceof UserCell) {
                Object currentObject = ((UserCell) view).getCurrentObject();
                if ((currentObject instanceof TLRPC$User) && UserObject.isUserSelf((TLRPC$User) currentObject)) {
                    return false;
                }
            }
            int itemViewType = viewHolder.getItemViewType();
            return (itemViewType == 1 || itemViewType == 5 || itemViewType == 7 || itemViewType == 11 || itemViewType == 12 || itemViewType == 13 || itemViewType == 9 || itemViewType == 10) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ProfileActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i != ProfileActivity.this.profileTopicRow) {
                if (i != ProfileActivity.this.dialogIdRow) {
                    if (i == ProfileActivity.this.profileTopicHeaderRow || i == ProfileActivity.this.infoHeaderRow || i == ProfileActivity.this.membersHeaderRow || i == ProfileActivity.this.settingsSectionRow2 || i == ProfileActivity.this.numberSectionRow || i == ProfileActivity.this.helpHeaderRow || i == ProfileActivity.this.debugHeaderRow) {
                        return 1;
                    }
                    if (i == ProfileActivity.this.phoneRow || i == ProfileActivity.this.locationRow || i == ProfileActivity.this.numberRow) {
                        return 2;
                    }
                    if (i == ProfileActivity.this.usernameRow || i == ProfileActivity.this.setUsernameRow) {
                        return 19;
                    }
                    if (i == ProfileActivity.this.userInfoRow || i == ProfileActivity.this.channelInfoRow || i == ProfileActivity.this.bioRow) {
                        return 3;
                    }
                    if (i == ProfileActivity.this.settingsToolsRow || i == ProfileActivity.this.settingsTopicsRow || i == ProfileActivity.this.settingsHelpRow || i == ProfileActivity.this.settingsTimerRow || i == ProfileActivity.this.settingsKeyRow || i == ProfileActivity.this.reportRow || i == ProfileActivity.this.reportReactionRow || i == ProfileActivity.this.subscribersRow || i == ProfileActivity.this.subscribersRequestsRow || i == ProfileActivity.this.administratorsRow || i == ProfileActivity.this.blockedUsersRow || i == ProfileActivity.this.addMemberRow || i == ProfileActivity.this.joinRow || i == ProfileActivity.this.unblockRow || i == ProfileActivity.this.sendMessageRow || i == ProfileActivity.this.notificationRow || i == ProfileActivity.this.privacyRow || i == ProfileActivity.this.languageRow || i == ProfileActivity.this.dataRow || i == ProfileActivity.this.chatRow || i == ProfileActivity.this.questionRow || i == ProfileActivity.this.devicesRow || i == ProfileActivity.this.filtersRow || i == ProfileActivity.this.stickersRow || i == ProfileActivity.this.faqRow || i == ProfileActivity.this.policyRow || i == ProfileActivity.this.sendLogsRow || i == ProfileActivity.this.sendLastLogsRow || i == ProfileActivity.this.clearLogsRow || i == ProfileActivity.this.switchBackendRow || i == ProfileActivity.this.setAvatarRow || i == ProfileActivity.this.addToGroupButtonRow || i == ProfileActivity.this.addToContactsRow) {
                        return 4;
                    }
                    if (i == ProfileActivity.this.notificationsDividerRow) {
                        return 5;
                    }
                    if (i == ProfileActivity.this.notificationsRow) {
                        return 6;
                    }
                    if (i == ProfileActivity.this.notificationsSimpleRow) {
                        return 20;
                    }
                    if (i == ProfileActivity.this.profileTopicSectionRow || i == ProfileActivity.this.infoSectionRow || i == ProfileActivity.this.lastSectionRow || i == ProfileActivity.this.membersSectionRow || i == ProfileActivity.this.secretSettingsSectionRow || i == ProfileActivity.this.settingsSectionRow || i == ProfileActivity.this.devicesSectionRow || i == ProfileActivity.this.helpSectionCell || i == ProfileActivity.this.setAvatarSectionRow || i == ProfileActivity.this.passwordSuggestionSectionRow || i == ProfileActivity.this.phoneSuggestionSectionRow || i == ProfileActivity.this.premiumSectionsRow || i == ProfileActivity.this.reportDividerRow) {
                        return 7;
                    }
                    if (i < ProfileActivity.this.membersStartRow || i >= ProfileActivity.this.membersEndRow) {
                        if (i == ProfileActivity.this.emptyRow) {
                            return 11;
                        }
                        if (i == ProfileActivity.this.bottomPaddingRow) {
                            return 12;
                        }
                        if (i == ProfileActivity.this.sharedMediaRow) {
                            return 13;
                        }
                        if (i == ProfileActivity.this.versionRow) {
                            return 14;
                        }
                        if (i == ProfileActivity.this.passwordSuggestionRow || i == ProfileActivity.this.phoneSuggestionRow) {
                            return 15;
                        }
                        if (i == ProfileActivity.this.addToGroupInfoRow) {
                            return 17;
                        }
                        return i == ProfileActivity.this.premiumRow ? 18 : 0;
                    }
                    return 8;
                }
                return IdFabric$ViewTypes.TEXT_DETAIL_WITH_RANGE;
            }
            return IdFabric$ViewTypes.TOPIC;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$SearchAdapter */
    /* loaded from: classes5.dex */
    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC$WebPage faqWebPage;
        private String lastSearchString;
        private boolean loadingFaqPage;
        private Context mContext;
        private Runnable searchRunnable;
        private boolean searchWas;
        private SearchResult[] searchArray = onCreateSearchArray();
        private ArrayList<MessagesController.FaqSearchResult> faqSearchArray = new ArrayList<>();
        private ArrayList<CharSequence> resultNames = new ArrayList<>();
        private ArrayList<SearchResult> searchResults = new ArrayList<>();
        private ArrayList<MessagesController.FaqSearchResult> faqSearchResults = new ArrayList<>();
        private ArrayList<Object> recentSearches = new ArrayList<>();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ProfileActivity$SearchAdapter$SearchResult */
        /* loaded from: classes5.dex */
        public class SearchResult {
            private int guid;
            private int iconResId;
            private int num;
            private Runnable openRunnable;
            private String[] path;
            private String rowName;
            private String searchTitle;

            public SearchResult(SearchAdapter searchAdapter, int i, String str, int i2, Runnable runnable) {
                this(i, str, null, null, null, i2, runnable);
            }

            public SearchResult(SearchAdapter searchAdapter, int i, String str, String str2, int i2, Runnable runnable) {
                this(i, str, null, str2, null, i2, runnable);
            }

            public SearchResult(SearchAdapter searchAdapter, int i, String str, String str2, String str3, int i2, Runnable runnable) {
                this(i, str, str2, str3, null, i2, runnable);
            }

            public SearchResult(int i, String str, String str2, String str3, String str4, int i2, Runnable runnable) {
                this.guid = i;
                this.searchTitle = str;
                this.rowName = str2;
                this.openRunnable = runnable;
                this.iconResId = i2;
                if (str3 != null && str4 != null) {
                    this.path = new String[]{str3, str4};
                } else if (str3 != null) {
                    this.path = new String[]{str3};
                }
            }

            public boolean equals(Object obj) {
                return (obj instanceof SearchResult) && this.guid == ((SearchResult) obj).guid;
            }

            public String toString() {
                SerializedData serializedData = new SerializedData();
                serializedData.writeInt32(this.num);
                serializedData.writeInt32(1);
                serializedData.writeInt32(this.guid);
                return Utilities.bytesToHex(serializedData.toByteArray());
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void open() {
                this.openRunnable.run();
                AndroidUtilities.scrollToFragmentRow(((BaseFragment) ProfileActivity.this).parentLayout, this.rowName);
            }
        }

        public SearchAdapter(Context context) {
            this.mContext = context;
            updateSearchArray();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSearchArray() {
            String[] strArr;
            SearchResult searchResult;
            HashMap hashMap = new HashMap();
            int i = 0;
            while (true) {
                SearchResult[] searchResultArr = this.searchArray;
                if (i >= searchResultArr.length) {
                    break;
                }
                if (searchResultArr[i] != null) {
                    hashMap.put(Integer.valueOf(searchResultArr[i].guid), this.searchArray[i]);
                }
                i++;
            }
            Set<String> stringSet = MessagesController.getGlobalMainSettings().getStringSet("settingsSearchRecent2", null);
            if (stringSet != null) {
                for (String str : stringSet) {
                    try {
                        SerializedData serializedData = new SerializedData(Utilities.hexToBytes(str));
                        int readInt32 = serializedData.readInt32(false);
                        int readInt322 = serializedData.readInt32(false);
                        if (readInt322 == 0) {
                            String readString = serializedData.readString(false);
                            int readInt323 = serializedData.readInt32(false);
                            if (readInt323 > 0) {
                                strArr = new String[readInt323];
                                for (int i2 = 0; i2 < readInt323; i2++) {
                                    strArr[i2] = serializedData.readString(false);
                                }
                            } else {
                                strArr = null;
                            }
                            MessagesController.FaqSearchResult faqSearchResult = new MessagesController.FaqSearchResult(readString, strArr, serializedData.readString(false));
                            faqSearchResult.num = readInt32;
                            this.recentSearches.add(faqSearchResult);
                        } else if (readInt322 == 1 && (searchResult = (SearchResult) hashMap.get(Integer.valueOf(serializedData.readInt32(false)))) != null) {
                            searchResult.num = readInt32;
                            this.recentSearches.add(searchResult);
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            Collections.sort(this.recentSearches, new Comparator() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda128
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$updateSearchArray$0;
                    lambda$updateSearchArray$0 = ProfileActivity.SearchAdapter.this.lambda$updateSearchArray$0(obj, obj2);
                    return lambda$updateSearchArray$0;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$updateSearchArray$0(Object obj, Object obj2) {
            int num = getNum(obj);
            int num2 = getNum(obj2);
            if (num < num2) {
                return -1;
            }
            return num > num2 ? 1 : 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SearchResult[] onCreateSearchArray() {
            SearchResult[] searchResultArr = new SearchResult[125];
            searchResultArr[0] = new SearchResult(this, 500, LocaleController.getString("EditName", C3158R.string.EditName), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$1();
                }
            });
            searchResultArr[1] = new SearchResult(this, 501, LocaleController.getString("ChangePhoneNumber", C3158R.string.ChangePhoneNumber), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda96
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$2();
                }
            });
            searchResultArr[2] = new SearchResult(this, 502, LocaleController.getString("AddAnotherAccount", C3158R.string.AddAnotherAccount), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$3();
                }
            });
            searchResultArr[3] = new SearchResult(this, 503, LocaleController.getString("UserBio", C3158R.string.UserBio), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$4();
                }
            });
            String string = LocaleController.getString(C3158R.string.AddPhoto);
            final ProfileActivity profileActivity = ProfileActivity.this;
            searchResultArr[4] = new SearchResult(this, 504, string, 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda127
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.access$7300(ProfileActivity.this);
                }
            });
            int i = C3158R.string.NotificationsAndSounds;
            String string2 = LocaleController.getString("NotificationsAndSounds", i);
            int i2 = C3158R.C3160drawable.msg_notifications;
            searchResultArr[5] = new SearchResult(this, 1, string2, i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$6();
                }
            });
            searchResultArr[6] = new SearchResult(this, 2, LocaleController.getString("NotificationsPrivateChats", C3158R.string.NotificationsPrivateChats), LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$7();
                }
            });
            searchResultArr[7] = new SearchResult(this, 3, LocaleController.getString("NotificationsGroups", C3158R.string.NotificationsGroups), LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda122
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$8();
                }
            });
            searchResultArr[8] = new SearchResult(this, 4, LocaleController.getString("NotificationsChannels", C3158R.string.NotificationsChannels), LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$9();
                }
            });
            searchResultArr[9] = new SearchResult(this, 5, LocaleController.getString("VoipNotificationSettings", C3158R.string.VoipNotificationSettings), "callsSectionRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda121
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$10();
                }
            });
            searchResultArr[10] = new SearchResult(this, 6, LocaleController.getString("BadgeNumber", C3158R.string.BadgeNumber), "badgeNumberSection", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda123
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$11();
                }
            });
            searchResultArr[11] = new SearchResult(this, 7, LocaleController.getString("InAppNotifications", C3158R.string.InAppNotifications), "inappSectionRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$12();
                }
            });
            searchResultArr[12] = new SearchResult(this, 8, LocaleController.getString("ContactJoined", C3158R.string.ContactJoined), "contactJoinedRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$13();
                }
            });
            searchResultArr[13] = new SearchResult(this, 9, LocaleController.getString("PinnedMessages", C3158R.string.PinnedMessages), "pinnedMessageRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$14();
                }
            });
            searchResultArr[14] = new SearchResult(this, 10, LocaleController.getString("ResetAllNotifications", C3158R.string.ResetAllNotifications), "resetNotificationsRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda107
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$15();
                }
            });
            searchResultArr[15] = new SearchResult(this, 11, LocaleController.getString(C3158R.string.NotificationsService), "notificationsServiceRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$16();
                }
            });
            searchResultArr[16] = new SearchResult(this, 12, LocaleController.getString(C3158R.string.NotificationsServiceConnection), "notificationsServiceConnectionRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$17();
                }
            });
            searchResultArr[17] = new SearchResult(this, 13, LocaleController.getString(C3158R.string.RepeatNotifications), "repeatRow", LocaleController.getString("NotificationsAndSounds", i), i2, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda102
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$18();
                }
            });
            int i3 = C3158R.string.PrivacySettings;
            String string3 = LocaleController.getString("PrivacySettings", i3);
            int i4 = C3158R.C3160drawable.msg_secret;
            searchResultArr[18] = new SearchResult(this, 100, string3, i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$19();
                }
            });
            searchResultArr[19] = new SearchResult(this, 101, LocaleController.getString("BlockedUsers", C3158R.string.BlockedUsers), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$20();
                }
            });
            searchResultArr[20] = new SearchResult(this, 105, LocaleController.getString("PrivacyPhone", C3158R.string.PrivacyPhone), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda72
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$21();
                }
            });
            searchResultArr[21] = new SearchResult(this, 102, LocaleController.getString("PrivacyLastSeen", C3158R.string.PrivacyLastSeen), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$22();
                }
            });
            searchResultArr[22] = new SearchResult(this, 103, LocaleController.getString("PrivacyProfilePhoto", C3158R.string.PrivacyProfilePhoto), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$23();
                }
            });
            searchResultArr[23] = new SearchResult(this, 104, LocaleController.getString("PrivacyForwards", C3158R.string.PrivacyForwards), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda98
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$24();
                }
            });
            searchResultArr[24] = new SearchResult(this, 122, LocaleController.getString("PrivacyP2P", C3158R.string.PrivacyP2P), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$25();
                }
            });
            int i5 = C3158R.string.Calls;
            searchResultArr[25] = new SearchResult(this, 106, LocaleController.getString("Calls", i5), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$26();
                }
            });
            searchResultArr[26] = new SearchResult(this, 107, LocaleController.getString("GroupsAndChannels", C3158R.string.GroupsAndChannels), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda100
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$27();
                }
            });
            searchResultArr[27] = new SearchResult(this, 123, LocaleController.getString("PrivacyVoiceMessages", C3158R.string.PrivacyVoiceMessages), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$28();
                }
            });
            searchResultArr[28] = new SearchResult(this, 108, LocaleController.getString("Passcode", C3158R.string.Passcode), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda90
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$29();
                }
            });
            searchResultArr[29] = new SearchResult(this, 109, LocaleController.getString("TwoStepVerification", C3158R.string.TwoStepVerification), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$30();
                }
            });
            searchResultArr[30] = new SearchResult(this, 110, LocaleController.getString("SessionsTitle", C3158R.string.SessionsTitle), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda104
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$31();
                }
            });
            searchResultArr[31] = ProfileActivity.this.getMessagesController().autoarchiveAvailable ? new SearchResult(this, 121, LocaleController.getString("ArchiveAndMute", C3158R.string.ArchiveAndMute), "newChatsRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$32();
                }
            }) : null;
            searchResultArr[32] = new SearchResult(this, 112, LocaleController.getString("DeleteAccountIfAwayFor2", C3158R.string.DeleteAccountIfAwayFor2), "deleteAccountRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$33();
                }
            });
            searchResultArr[33] = new SearchResult(this, 113, LocaleController.getString("PrivacyPaymentsClear", C3158R.string.PrivacyPaymentsClear), "paymentsClearRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$34();
                }
            });
            searchResultArr[34] = new SearchResult(this, 114, LocaleController.getString("WebSessionsTitle", C3158R.string.WebSessionsTitle), LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$35();
                }
            });
            searchResultArr[35] = new SearchResult(this, 115, LocaleController.getString("SyncContactsDelete", C3158R.string.SyncContactsDelete), "contactsDeleteRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda108
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$36();
                }
            });
            searchResultArr[36] = new SearchResult(this, 116, LocaleController.getString("SyncContacts", C3158R.string.SyncContacts), "contactsSyncRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda117
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$37();
                }
            });
            searchResultArr[37] = new SearchResult(this, 117, LocaleController.getString("SuggestContacts", C3158R.string.SuggestContacts), "contactsSuggestRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$38();
                }
            });
            searchResultArr[38] = new SearchResult(this, 118, LocaleController.getString("MapPreviewProvider", C3158R.string.MapPreviewProvider), "secretMapRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$39();
                }
            });
            searchResultArr[39] = new SearchResult(this, 119, LocaleController.getString("SecretWebPage", C3158R.string.SecretWebPage), "secretWebpageRow", LocaleController.getString("PrivacySettings", i3), i4, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$40();
                }
            });
            int i6 = C3158R.string.Devices;
            String string4 = LocaleController.getString(i6);
            int i7 = C3158R.C3160drawable.msg_devices;
            searchResultArr[40] = new SearchResult(this, 120, string4, i7, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$41();
                }
            });
            searchResultArr[41] = new SearchResult(this, 121, LocaleController.getString(C3158R.string.TerminateAllSessions), "terminateAllSessionsRow", LocaleController.getString(i6), i7, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$42();
                }
            });
            searchResultArr[42] = new SearchResult(this, 122, LocaleController.getString(C3158R.string.LinkDesktopDevice), LocaleController.getString(i6), i7, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$43();
                }
            });
            int i8 = C3158R.string.DataSettings;
            String string5 = LocaleController.getString("DataSettings", i8);
            int i9 = C3158R.C3160drawable.msg_data;
            searchResultArr[43] = new SearchResult(this, 200, string5, i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$44();
                }
            });
            searchResultArr[44] = new SearchResult(this, 201, LocaleController.getString("DataUsage", C3158R.string.DataUsage), "usageSectionRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$45();
                }
            });
            int i10 = C3158R.string.StorageUsage;
            searchResultArr[45] = new SearchResult(this, 202, LocaleController.getString("StorageUsage", i10), LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda77
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$46();
                }
            });
            searchResultArr[46] = new SearchResult(203, LocaleController.getString("KeepMedia", C3158R.string.KeepMedia), "keepMediaRow", LocaleController.getString("DataSettings", i8), LocaleController.getString("StorageUsage", i10), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda80
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$47();
                }
            });
            searchResultArr[47] = new SearchResult(204, LocaleController.getString("ClearMediaCache", C3158R.string.ClearMediaCache), "cacheRow", LocaleController.getString("DataSettings", i8), LocaleController.getString("StorageUsage", i10), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$48();
                }
            });
            searchResultArr[48] = new SearchResult(205, LocaleController.getString("LocalDatabase", C3158R.string.LocalDatabase), "databaseRow", LocaleController.getString("DataSettings", i8), LocaleController.getString("StorageUsage", i10), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda120
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$49();
                }
            });
            searchResultArr[49] = new SearchResult(this, 206, LocaleController.getString("NetworkUsage", C3158R.string.NetworkUsage), LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$50();
                }
            });
            searchResultArr[50] = new SearchResult(this, 207, LocaleController.getString("AutomaticMediaDownload", C3158R.string.AutomaticMediaDownload), "mediaDownloadSectionRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$51();
                }
            });
            searchResultArr[51] = new SearchResult(this, 208, LocaleController.getString("WhenUsingMobileData", C3158R.string.WhenUsingMobileData), LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda111
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$52();
                }
            });
            searchResultArr[52] = new SearchResult(this, 209, LocaleController.getString("WhenConnectedOnWiFi", C3158R.string.WhenConnectedOnWiFi), LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$53();
                }
            });
            searchResultArr[53] = new SearchResult(this, 210, LocaleController.getString("WhenRoaming", C3158R.string.WhenRoaming), LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$54();
                }
            });
            searchResultArr[54] = new SearchResult(this, 211, LocaleController.getString("ResetAutomaticMediaDownload", C3158R.string.ResetAutomaticMediaDownload), "resetDownloadRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$55();
                }
            });
            searchResultArr[55] = new SearchResult(this, 212, LocaleController.getString("AutoplayMedia", C3158R.string.AutoplayMedia), "autoplayHeaderRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda65
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$56();
                }
            });
            searchResultArr[56] = new SearchResult(this, 213, LocaleController.getString("AutoplayGIF", C3158R.string.AutoplayGIF), "autoplayGifsRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$57();
                }
            });
            searchResultArr[57] = new SearchResult(this, 214, LocaleController.getString("AutoplayVideo", C3158R.string.AutoplayVideo), "autoplayVideoRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$58();
                }
            });
            searchResultArr[58] = new SearchResult(this, 215, LocaleController.getString("Streaming", C3158R.string.Streaming), "streamSectionRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda94
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$59();
                }
            });
            searchResultArr[59] = new SearchResult(this, 216, LocaleController.getString("EnableStreaming", C3158R.string.EnableStreaming), "enableStreamRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda53
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$60();
                }
            });
            searchResultArr[60] = new SearchResult(this, 217, LocaleController.getString("Calls", i5), "callsSectionRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda89
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$61();
                }
            });
            searchResultArr[61] = new SearchResult(this, 218, LocaleController.getString("VoipUseLessData", C3158R.string.VoipUseLessData), "useLessDataForCallsRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$62();
                }
            });
            searchResultArr[62] = new SearchResult(this, 219, LocaleController.getString("VoipQuickReplies", C3158R.string.VoipQuickReplies), "quickRepliesRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda112
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$63();
                }
            });
            int i11 = C3158R.string.ProxySettings;
            searchResultArr[63] = new SearchResult(this, 220, LocaleController.getString("ProxySettings", i11), LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$64();
                }
            });
            searchResultArr[64] = new SearchResult(221, LocaleController.getString("UseProxyForCalls", C3158R.string.UseProxyForCalls), "callsRow", LocaleController.getString("DataSettings", i8), LocaleController.getString("ProxySettings", i11), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$65();
                }
            });
            searchResultArr[65] = new SearchResult(this, 111, LocaleController.getString("PrivacyDeleteCloudDrafts", C3158R.string.PrivacyDeleteCloudDrafts), "clearDraftsRow", LocaleController.getString("DataSettings", i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda87
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$66();
                }
            });
            int i12 = C3158R.string.SaveToGallery;
            searchResultArr[66] = new SearchResult(this, 222, LocaleController.getString(i12), "saveToGallerySectionRow", LocaleController.getString(i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$67();
                }
            });
            searchResultArr[67] = new SearchResult(223, LocaleController.getString(C3158R.string.SaveToGalleryPrivate), "saveToGalleryPeerRow", LocaleController.getString(i8), LocaleController.getString(i12), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$68();
                }
            });
            searchResultArr[68] = new SearchResult(224, LocaleController.getString(C3158R.string.SaveToGalleryGroups), "saveToGalleryGroupsRow", LocaleController.getString(i8), LocaleController.getString(i12), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$69();
                }
            });
            searchResultArr[69] = new SearchResult(225, LocaleController.getString(C3158R.string.SaveToGalleryChannels), "saveToGalleryChannelsRow", LocaleController.getString(i8), LocaleController.getString(i12), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$70();
                }
            });
            int i13 = C3158R.string.ChatSettings;
            String string6 = LocaleController.getString("ChatSettings", i13);
            int i14 = C3158R.C3160drawable.msg_msgbubble3;
            searchResultArr[70] = new SearchResult(this, 300, string6, i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$71();
                }
            });
            searchResultArr[71] = new SearchResult(this, 301, LocaleController.getString("TextSizeHeader", C3158R.string.TextSizeHeader), "textSizeHeaderRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$72();
                }
            });
            searchResultArr[72] = new SearchResult(this, 302, LocaleController.getString(C3158R.string.ChangeChatBackground), LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$73();
                }
            });
            String string7 = LocaleController.getString("SetColor", C3158R.string.SetColor);
            String string8 = LocaleController.getString("ChatSettings", i13);
            int i15 = C3158R.string.ChatBackground;
            searchResultArr[73] = new SearchResult(303, string7, null, string8, LocaleController.getString("ChatBackground", i15), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$74();
                }
            });
            searchResultArr[74] = new SearchResult(304, LocaleController.getString("ResetChatBackgrounds", C3158R.string.ResetChatBackgrounds), "resetRow", LocaleController.getString("ChatSettings", i13), LocaleController.getString("ChatBackground", i15), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda118
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$75();
                }
            });
            searchResultArr[75] = new SearchResult(this, 306, LocaleController.getString("ColorTheme", C3158R.string.ColorTheme), "themeHeaderRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$76();
                }
            });
            int i16 = C3158R.string.BrowseThemes;
            searchResultArr[76] = new SearchResult(this, 319, LocaleController.getString(i16), null, LocaleController.getString(i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda95
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$77();
                }
            });
            searchResultArr[77] = new SearchResult(320, LocaleController.getString(C3158R.string.CreateNewTheme), "createNewThemeRow", LocaleController.getString(i13), LocaleController.getString(i16), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda101
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$78();
                }
            });
            searchResultArr[78] = new SearchResult(this, 321, LocaleController.getString(C3158R.string.BubbleRadius), "bubbleRadiusHeaderRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$79();
                }
            });
            searchResultArr[79] = new SearchResult(this, 322, LocaleController.getString(C3158R.string.ChatList), "chatListHeaderRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$80();
                }
            });
            searchResultArr[80] = new SearchResult(this, 323, LocaleController.getString(C3158R.string.ChatListSwipeGesture), "swipeGestureHeaderRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$81();
                }
            });
            searchResultArr[81] = new SearchResult(this, 324, LocaleController.getString(C3158R.string.AppIcon), "appIconHeaderRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda116
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$82();
                }
            });
            searchResultArr[82] = new SearchResult(this, 305, LocaleController.getString("AutoNightTheme", C3158R.string.AutoNightTheme), LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$83();
                }
            });
            searchResultArr[83] = new SearchResult(this, 307, LocaleController.getString("ChromeCustomTabs", C3158R.string.ChromeCustomTabs), "customTabsRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$84();
                }
            });
            searchResultArr[84] = new SearchResult(this, 308, LocaleController.getString("DirectShare", C3158R.string.DirectShare), "directShareRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$85();
                }
            });
            searchResultArr[85] = new SearchResult(this, 309, LocaleController.getString("EnableAnimations", C3158R.string.EnableAnimations), "enableAnimationsRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$86();
                }
            });
            searchResultArr[86] = new SearchResult(this, 310, LocaleController.getString("RaiseToSpeak", C3158R.string.RaiseToSpeak), "raiseToSpeakRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$87();
                }
            });
            searchResultArr[87] = new SearchResult(this, 325, LocaleController.getString(C3158R.string.MicrophoneForVoiceMessages), "bluetoothScoRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda115
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$88();
                }
            });
            searchResultArr[88] = new SearchResult(this, 311, LocaleController.getString("SendByEnter", C3158R.string.SendByEnter), "sendByEnterRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda83
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$89();
                }
            });
            searchResultArr[89] = SharedConfig.canBlurChat() ? new SearchResult(this, 326, LocaleController.getString(C3158R.string.BlurInChat), "chatBlurRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda119
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$90();
                }
            }) : null;
            searchResultArr[90] = new SearchResult(this, 318, LocaleController.getString("DistanceUnits", C3158R.string.DistanceUnits), "distanceRow", LocaleController.getString("ChatSettings", i13), i14, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$91();
                }
            });
            int i17 = C3158R.string.StickersName;
            String string9 = LocaleController.getString(i17);
            int i18 = C3158R.C3160drawable.msg_sticker;
            searchResultArr[91] = new SearchResult(this, 600, string9, i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$92();
                }
            });
            searchResultArr[92] = new SearchResult(this, 601, LocaleController.getString("SuggestStickers", C3158R.string.SuggestStickers), "suggestRow", LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$93();
                }
            });
            searchResultArr[93] = new SearchResult(this, 602, LocaleController.getString("FeaturedStickers", C3158R.string.FeaturedStickers), "featuredStickersHeaderRow", LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$94();
                }
            });
            searchResultArr[94] = new SearchResult(this, 603, LocaleController.getString("Masks", C3158R.string.Masks), null, LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda81
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$95();
                }
            });
            searchResultArr[95] = new SearchResult(this, 604, LocaleController.getString("ArchivedStickers", C3158R.string.ArchivedStickers), null, LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$96();
                }
            });
            searchResultArr[96] = new SearchResult(this, 605, LocaleController.getString("ArchivedMasks", C3158R.string.ArchivedMasks), null, LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda97
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$97();
                }
            });
            searchResultArr[97] = new SearchResult(this, 606, LocaleController.getString(C3158R.string.LargeEmoji), "largeEmojiRow", LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda91
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$98();
                }
            });
            searchResultArr[98] = new SearchResult(this, 607, LocaleController.getString(C3158R.string.LoopAnimatedStickers), "loopRow", LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$99();
                }
            });
            int i19 = C3158R.string.Emoji;
            String string10 = LocaleController.getString(i19);
            String string11 = LocaleController.getString(i17);
            int i20 = C3158R.C3160drawable.input_smile;
            searchResultArr[99] = new SearchResult(this, 608, string10, null, string11, i20, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$100();
                }
            });
            searchResultArr[100] = new SearchResult(609, LocaleController.getString(C3158R.string.SuggestAnimatedEmoji), "suggestAnimatedEmojiRow", LocaleController.getString(i17), LocaleController.getString(i19), i20, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$101();
                }
            });
            searchResultArr[101] = new SearchResult(610, LocaleController.getString(C3158R.string.FeaturedEmojiPacks), "featuredStickersHeaderRow", LocaleController.getString(i17), LocaleController.getString(i19), i20, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda60
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$102();
                }
            });
            searchResultArr[102] = new SearchResult(this, 611, LocaleController.getString(C3158R.string.DoubleTapSetting), null, LocaleController.getString(i17), i18, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$103();
                }
            });
            int i21 = C3158R.string.Filters;
            String string12 = LocaleController.getString(i21);
            int i22 = C3158R.C3160drawable.msg_folder;
            searchResultArr[103] = new SearchResult(this, 700, string12, null, i22, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$104();
                }
            });
            searchResultArr[104] = new SearchResult(this, 701, LocaleController.getString(C3158R.string.CreateNewFilter), "createFilterRow", LocaleController.getString(i21), i22, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda82
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$105();
                }
            });
            searchResultArr[105] = isPremiumFeatureAvailable(-1) ? new SearchResult(this, 800, LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$106();
                }
            }) : null;
            searchResultArr[106] = isPremiumFeatureAvailable(0) ? new SearchResult(this, 801, LocaleController.getString(C3158R.string.PremiumPreviewLimits), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda110
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$107();
                }
            }) : null;
            searchResultArr[107] = isPremiumFeatureAvailable(11) ? new SearchResult(this, 802, LocaleController.getString(C3158R.string.PremiumPreviewEmoji), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda109
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$108();
                }
            }) : null;
            searchResultArr[108] = isPremiumFeatureAvailable(1) ? new SearchResult(this, 803, LocaleController.getString(C3158R.string.PremiumPreviewUploads), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$109();
                }
            }) : null;
            searchResultArr[109] = isPremiumFeatureAvailable(2) ? new SearchResult(this, 804, LocaleController.getString(C3158R.string.PremiumPreviewDownloadSpeed), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$110();
                }
            }) : null;
            searchResultArr[110] = isPremiumFeatureAvailable(8) ? new SearchResult(this, 805, LocaleController.getString(C3158R.string.PremiumPreviewVoiceToText), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda114
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$111();
                }
            }) : null;
            searchResultArr[111] = isPremiumFeatureAvailable(3) ? new SearchResult(this, 806, LocaleController.getString(C3158R.string.PremiumPreviewNoAds), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$112();
                }
            }) : null;
            searchResultArr[112] = isPremiumFeatureAvailable(4) ? new SearchResult(this, 807, LocaleController.getString(C3158R.string.PremiumPreviewReactions), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$113();
                }
            }) : null;
            searchResultArr[113] = isPremiumFeatureAvailable(5) ? new SearchResult(this, 808, LocaleController.getString(C3158R.string.PremiumPreviewStickers), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda113
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$114();
                }
            }) : null;
            searchResultArr[114] = isPremiumFeatureAvailable(9) ? new SearchResult(this, 809, LocaleController.getString(C3158R.string.PremiumPreviewAdvancedChatManagement), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$115();
                }
            }) : null;
            searchResultArr[115] = isPremiumFeatureAvailable(6) ? new SearchResult(this, 810, LocaleController.getString(C3158R.string.PremiumPreviewProfileBadge), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$116();
                }
            }) : null;
            searchResultArr[116] = isPremiumFeatureAvailable(7) ? new SearchResult(this, 811, LocaleController.getString(C3158R.string.PremiumPreviewAnimatedProfiles), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda93
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$117();
                }
            }) : null;
            searchResultArr[117] = isPremiumFeatureAvailable(10) ? new SearchResult(this, 812, LocaleController.getString(C3158R.string.PremiumPreviewAppIcon), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$118();
                }
            }) : null;
            searchResultArr[118] = isPremiumFeatureAvailable(12) ? new SearchResult(this, 813, LocaleController.getString(C3158R.string.PremiumPreviewEmojiStatus), LocaleController.getString(C3158R.string.TelegramPremium), C3158R.C3160drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$119();
                }
            }) : null;
            int i23 = C3158R.string.Language;
            String string13 = LocaleController.getString("Language", i23);
            int i24 = C3158R.C3160drawable.msg_language;
            searchResultArr[119] = new SearchResult(this, 400, string13, i24, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda105
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$120();
                }
            });
            searchResultArr[120] = new SearchResult(this, WalletConstants.ERROR_CODE_MERCHANT_ACCOUNT_ERROR, LocaleController.getString(C3158R.string.ShowTranslateButton), LocaleController.getString(i23), i24, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$121();
                }
            });
            searchResultArr[121] = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getTranslateController().isContextTranslateEnabled() ? new SearchResult(this, WalletConstants.ERROR_CODE_SPENDING_LIMIT_EXCEEDED, LocaleController.getString(C3158R.string.DoNotTranslate), LocaleController.getString(i23), i24, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$122();
                }
            }) : null;
            String string14 = LocaleController.getString("AskAQuestion", C3158R.string.AskAQuestion);
            int i25 = C3158R.string.SettingsHelp;
            String string15 = LocaleController.getString("SettingsHelp", i25);
            int i26 = C3158R.C3160drawable.msg_help;
            searchResultArr[122] = new SearchResult(this, WalletConstants.ERROR_CODE_SERVICE_UNAVAILABLE, string14, string15, i26, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda88
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$123();
                }
            });
            searchResultArr[123] = new SearchResult(this, 403, LocaleController.getString("TelegramFAQ", C3158R.string.TelegramFAQ), LocaleController.getString("SettingsHelp", i25), i26, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda106
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$124();
                }
            });
            searchResultArr[124] = new SearchResult(this, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, LocaleController.getString("PrivacyPolicy", C3158R.string.PrivacyPolicy), LocaleController.getString("SettingsHelp", i25), i26, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$125();
                }
            });
            return searchResultArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$1() {
            ProfileActivity profileActivity = ProfileActivity.this;
            profileActivity.presentFragment(new ChangeNameActivity(profileActivity.resourcesProvider));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$2() {
            ProfileActivity.this.presentFragment(new ActionIntroActivity(3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$3() {
            int i = 0;
            while (true) {
                if (i >= 5) {
                    i = -1;
                    break;
                } else if (!UserConfig.getInstance(i).isClientActivated()) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                ProfileActivity.this.presentFragment(new LoginActivity(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$4() {
            if (ProfileActivity.this.userInfo != null) {
                ProfileActivity.this.presentFragment(new ChangeBioActivity());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$6() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$7() {
            ProfileActivity.this.presentFragment(new NotificationsCustomSettingsActivity(1, new ArrayList(), true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$8() {
            ProfileActivity.this.presentFragment(new NotificationsCustomSettingsActivity(0, new ArrayList(), true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$9() {
            ProfileActivity.this.presentFragment(new NotificationsCustomSettingsActivity(2, new ArrayList(), true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$10() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$11() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$12() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$13() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$14() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$15() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$16() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$17() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$18() {
            ProfileActivity.this.presentFragment(new NotificationsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$19() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$20() {
            ProfileActivity.this.presentFragment(new PrivacyUsersActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$21() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(6, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$22() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(0, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$23() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(4, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$24() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(5, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$25() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(3, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$26() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(2, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$27() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(1, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$28() {
            if (!ProfileActivity.this.getUserConfig().isPremium()) {
                try {
                    ((BaseFragment) ProfileActivity.this).fragmentView.performHapticFeedback(3, 2);
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
                BulletinFactory.m27of(ProfileActivity.this).createRestrictVoiceMessagesPremiumBulletin().show();
                return;
            }
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(8, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$29() {
            ProfileActivity.this.presentFragment(PasscodeActivity.determineOpenFragment());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$30() {
            ProfileActivity.this.presentFragment(new TwoStepVerificationActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$31() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$32() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$33() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$34() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$35() {
            ProfileActivity.this.presentFragment(new SessionsActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$36() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$37() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$38() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$39() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$40() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$41() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$42() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$43() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0).setHighlightLinkDesktopDevice());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$44() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$45() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$46() {
            ProfileActivity.this.presentFragment(new CacheControlActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$47() {
            ProfileActivity.this.presentFragment(new CacheControlActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$48() {
            ProfileActivity.this.presentFragment(new CacheControlActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$49() {
            ProfileActivity.this.presentFragment(new CacheControlActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$50() {
            ProfileActivity.this.presentFragment(new DataUsage2Activity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$51() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$52() {
            ProfileActivity.this.presentFragment(new DataAutoDownloadActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$53() {
            ProfileActivity.this.presentFragment(new DataAutoDownloadActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$54() {
            ProfileActivity.this.presentFragment(new DataAutoDownloadActivity(2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$55() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$56() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$57() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$58() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$59() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$60() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$61() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$62() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$63() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$64() {
            ProfileActivity.this.presentFragment(new ProxyListActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$65() {
            ProfileActivity.this.presentFragment(new ProxyListActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$66() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$67() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$68() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$69() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$70() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$71() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$72() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$73() {
            ProfileActivity.this.presentFragment(new WallpapersListActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$74() {
            ProfileActivity.this.presentFragment(new WallpapersListActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$75() {
            ProfileActivity.this.presentFragment(new WallpapersListActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$76() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$77() {
            ProfileActivity.this.presentFragment(new ThemeActivity(3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$78() {
            ProfileActivity.this.presentFragment(new ThemeActivity(3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$79() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$80() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$81() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$82() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$83() {
            ProfileActivity.this.presentFragment(new ThemeActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$84() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$85() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$86() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$87() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$88() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$89() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$90() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$91() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$92() {
            ProfileActivity.this.presentFragment(new StickersActivity(0, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$93() {
            ProfileActivity.this.presentFragment(new StickersActivity(0, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$94() {
            ProfileActivity.this.presentFragment(new StickersActivity(0, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$95() {
            ProfileActivity.this.presentFragment(new StickersActivity(1, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$96() {
            ProfileActivity.this.presentFragment(new ArchivedStickersActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$97() {
            ProfileActivity.this.presentFragment(new ArchivedStickersActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$98() {
            ProfileActivity.this.presentFragment(new StickersActivity(0, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$99() {
            ProfileActivity.this.presentFragment(new StickersActivity(0, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$100() {
            ProfileActivity.this.presentFragment(new StickersActivity(5, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$101() {
            ProfileActivity.this.presentFragment(new StickersActivity(5, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$102() {
            ProfileActivity.this.presentFragment(new StickersActivity(5, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$103() {
            ProfileActivity.this.presentFragment(new ReactionsDoubleTapManageActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$104() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$105() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$106() {
            ProfileActivity.this.presentFragment(new PremiumPreviewFragment("settings"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$107() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 0, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$108() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 11, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$109() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 1, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$110() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 2, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$111() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 8, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$112() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 3, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$113() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 4, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$114() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 5, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$115() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 9, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$116() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 6, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$117() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 7, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$118() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 10, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$119() {
            ProfileActivity.this.showDialog(new PremiumFeatureBottomSheet(ProfileActivity.this, 12, false).setForceAbout());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$120() {
            ProfileActivity.this.presentFragment(new LanguageSelectActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$121() {
            ProfileActivity.this.presentFragment(new LanguageSelectActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$122() {
            ProfileActivity.this.presentFragment(new LanguageSelectActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$123() {
            ProfileActivity profileActivity = ProfileActivity.this;
            profileActivity.showDialog(AlertsCreator.createSupportAlert(profileActivity, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$124() {
            Browser.openUrl(ProfileActivity.this.getParentActivity(), LocaleController.getString("TelegramFaqUrl", C3158R.string.TelegramFaqUrl));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$125() {
            Browser.openUrl(ProfileActivity.this.getParentActivity(), LocaleController.getString("PrivacyPolicyUrl", C3158R.string.PrivacyPolicyUrl));
        }

        private boolean isPremiumFeatureAvailable(int i) {
            if (!ProfileActivity.this.getMessagesController().premiumLocked || ProfileActivity.this.getUserConfig().isPremium()) {
                return i == -1 || ProfileActivity.this.getMessagesController().premiumFeaturesTypesToPosition.get(i, -1) != -1;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadFaqWebPage() {
            TLRPC$WebPage tLRPC$WebPage = ProfileActivity.this.getMessagesController().faqWebPage;
            this.faqWebPage = tLRPC$WebPage;
            if (tLRPC$WebPage != null) {
                this.faqSearchArray.addAll(ProfileActivity.this.getMessagesController().faqSearchArray);
            }
            if (this.faqWebPage != null || this.loadingFaqPage) {
                return;
            }
            this.loadingFaqPage = true;
            TLRPC$TL_messages_getWebPage tLRPC$TL_messages_getWebPage = new TLRPC$TL_messages_getWebPage();
            tLRPC$TL_messages_getWebPage.url = LocaleController.getString("TelegramFaqUrl", C3158R.string.TelegramFaqUrl);
            tLRPC$TL_messages_getWebPage.hash = 0;
            ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda129
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.SearchAdapter.this.lambda$loadFaqWebPage$127(tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadFaqWebPage$127(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject instanceof TLRPC$WebPage) {
                final ArrayList arrayList = new ArrayList();
                TLRPC$WebPage tLRPC$WebPage = (TLRPC$WebPage) tLObject;
                TLRPC$Page tLRPC$Page = tLRPC$WebPage.cached_page;
                if (tLRPC$Page != null) {
                    int size = tLRPC$Page.blocks.size();
                    for (int i = 0; i < size; i++) {
                        TLRPC$PageBlock tLRPC$PageBlock = tLRPC$WebPage.cached_page.blocks.get(i);
                        if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockList) {
                            String str = null;
                            if (i != 0) {
                                TLRPC$PageBlock tLRPC$PageBlock2 = tLRPC$WebPage.cached_page.blocks.get(i - 1);
                                if (tLRPC$PageBlock2 instanceof TLRPC$TL_pageBlockParagraph) {
                                    str = ArticleViewer.getPlainText(((TLRPC$TL_pageBlockParagraph) tLRPC$PageBlock2).text).toString();
                                }
                            }
                            TLRPC$TL_pageBlockList tLRPC$TL_pageBlockList = (TLRPC$TL_pageBlockList) tLRPC$PageBlock;
                            int size2 = tLRPC$TL_pageBlockList.items.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                TLRPC$PageListItem tLRPC$PageListItem = tLRPC$TL_pageBlockList.items.get(i2);
                                if (tLRPC$PageListItem instanceof TLRPC$TL_pageListItemText) {
                                    TLRPC$TL_pageListItemText tLRPC$TL_pageListItemText = (TLRPC$TL_pageListItemText) tLRPC$PageListItem;
                                    String url = ArticleViewer.getUrl(tLRPC$TL_pageListItemText.text);
                                    String charSequence = ArticleViewer.getPlainText(tLRPC$TL_pageListItemText.text).toString();
                                    if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(charSequence)) {
                                        arrayList.add(new MessagesController.FaqSearchResult(charSequence, str != null ? new String[]{LocaleController.getString("SettingsSearchFaq", C3158R.string.SettingsSearchFaq), str} : new String[]{LocaleController.getString("SettingsSearchFaq", C3158R.string.SettingsSearchFaq)}, url));
                                    }
                                }
                            }
                        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAnchor) {
                            break;
                        }
                    }
                    this.faqWebPage = tLRPC$WebPage;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda126
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.SearchAdapter.this.lambda$loadFaqWebPage$126(arrayList);
                    }
                });
            }
            this.loadingFaqPage = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadFaqWebPage$126(ArrayList arrayList) {
            this.faqSearchArray.addAll(arrayList);
            ProfileActivity.this.getMessagesController().faqSearchArray = arrayList;
            ProfileActivity.this.getMessagesController().faqWebPage = this.faqWebPage;
            if (this.searchWas) {
                return;
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.searchWas) {
                return this.searchResults.size() + (this.faqSearchResults.isEmpty() ? 0 : this.faqSearchResults.size() + 1);
            }
            return (this.recentSearches.isEmpty() ? 0 : this.recentSearches.size() + 1) + (this.faqSearchArray.isEmpty() ? 0 : this.faqSearchArray.size() + 1);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString("SettingsFaqSearchTitle", C3158R.string.SettingsFaqSearchTitle));
                    return;
                } else if (itemViewType != 2) {
                    return;
                } else {
                    ((HeaderCell) viewHolder.itemView).setText(LocaleController.getString("SettingsRecent", C3158R.string.SettingsRecent));
                    return;
                }
            }
            SettingsSearchCell settingsSearchCell = (SettingsSearchCell) viewHolder.itemView;
            if (this.searchWas) {
                if (i < this.searchResults.size()) {
                    SearchResult searchResult = this.searchResults.get(i);
                    SearchResult searchResult2 = i > 0 ? this.searchResults.get(i - 1) : null;
                    settingsSearchCell.setTextAndValueAndIcon(this.resultNames.get(i), searchResult.path, (searchResult2 == null || searchResult2.iconResId != searchResult.iconResId) ? searchResult.iconResId : 0, i < this.searchResults.size() - 1);
                    return;
                }
                int size = i - (this.searchResults.size() + 1);
                settingsSearchCell.setTextAndValue(this.resultNames.get(this.searchResults.size() + size), this.faqSearchResults.get(size).path, true, size < this.searchResults.size() - 1);
                return;
            }
            if (!this.recentSearches.isEmpty()) {
                i--;
            }
            if (i < this.recentSearches.size()) {
                Object obj = this.recentSearches.get(i);
                if (obj instanceof SearchResult) {
                    SearchResult searchResult3 = (SearchResult) obj;
                    settingsSearchCell.setTextAndValue(searchResult3.searchTitle, searchResult3.path, false, i < this.recentSearches.size() - 1);
                    return;
                } else if (obj instanceof MessagesController.FaqSearchResult) {
                    MessagesController.FaqSearchResult faqSearchResult = (MessagesController.FaqSearchResult) obj;
                    settingsSearchCell.setTextAndValue(faqSearchResult.title, faqSearchResult.path, true, i < this.recentSearches.size() - 1);
                    return;
                } else {
                    return;
                }
            }
            int size2 = i - (this.recentSearches.size() + 1);
            MessagesController.FaqSearchResult faqSearchResult2 = this.faqSearchArray.get(size2);
            settingsSearchCell.setTextAndValue(faqSearchResult2.title, faqSearchResult2.path, true, size2 < this.recentSearches.size() - 1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View settingsSearchCell;
            if (i == 0) {
                settingsSearchCell = new SettingsSearchCell(this.mContext);
            } else if (i == 1) {
                settingsSearchCell = new GraySectionCell(this.mContext);
            } else {
                settingsSearchCell = new HeaderCell(this.mContext, 16);
            }
            settingsSearchCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(settingsSearchCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.searchWas) {
                if (i >= this.searchResults.size() && i == this.searchResults.size()) {
                    return 1;
                }
            } else if (i == 0) {
                return !this.recentSearches.isEmpty() ? 2 : 1;
            } else if (!this.recentSearches.isEmpty() && i == this.recentSearches.size() + 1) {
                return 1;
            }
            return 0;
        }

        public void addRecent(Object obj) {
            int indexOf = this.recentSearches.indexOf(obj);
            if (indexOf >= 0) {
                this.recentSearches.remove(indexOf);
            }
            this.recentSearches.add(0, obj);
            if (!this.searchWas) {
                notifyDataSetChanged();
            }
            if (this.recentSearches.size() > 20) {
                ArrayList<Object> arrayList = this.recentSearches;
                arrayList.remove(arrayList.size() - 1);
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size = this.recentSearches.size();
            for (int i = 0; i < size; i++) {
                Object obj2 = this.recentSearches.get(i);
                if (obj2 instanceof SearchResult) {
                    ((SearchResult) obj2).num = i;
                } else if (obj2 instanceof MessagesController.FaqSearchResult) {
                    ((MessagesController.FaqSearchResult) obj2).num = i;
                }
                linkedHashSet.add(obj2.toString());
            }
            MessagesController.getGlobalMainSettings().edit().putStringSet("settingsSearchRecent2", linkedHashSet).commit();
        }

        public void clearRecent() {
            this.recentSearches.clear();
            MessagesController.getGlobalMainSettings().edit().remove("settingsSearchRecent2").commit();
            notifyDataSetChanged();
        }

        private int getNum(Object obj) {
            if (obj instanceof SearchResult) {
                return ((SearchResult) obj).num;
            }
            if (obj instanceof MessagesController.FaqSearchResult) {
                return ((MessagesController.FaqSearchResult) obj).num;
            }
            return 0;
        }

        public void search(final String str) {
            this.lastSearchString = str;
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            if (TextUtils.isEmpty(str)) {
                this.searchWas = false;
                this.searchResults.clear();
                this.faqSearchResults.clear();
                this.resultNames.clear();
                ProfileActivity.this.emptyView.stickerView.getImageReceiver().startAnimation();
                ProfileActivity.this.emptyView.title.setText(LocaleController.getString("SettingsNoRecent", C3158R.string.SettingsNoRecent));
                notifyDataSetChanged();
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda124
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$search$129(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$129(final String str) {
            SpannableStringBuilder spannableStringBuilder;
            String str2;
            int i;
            String str3;
            SpannableStringBuilder spannableStringBuilder2;
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            String str4 = " ";
            String[] split = str.split(" ");
            String[] strArr = new String[split.length];
            int i2 = 0;
            while (true) {
                spannableStringBuilder = null;
                if (i2 >= split.length) {
                    break;
                }
                strArr[i2] = LocaleController.getInstance().getTranslitString(split[i2]);
                if (strArr[i2].equals(split[i2])) {
                    strArr[i2] = null;
                }
                i2++;
            }
            int i3 = 0;
            while (true) {
                SearchResult[] searchResultArr = this.searchArray;
                if (i3 >= searchResultArr.length) {
                    break;
                }
                SearchResult searchResult = searchResultArr[i3];
                if (searchResult != null) {
                    String str5 = " " + searchResult.searchTitle.toLowerCase();
                    SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder;
                    int i4 = 0;
                    while (i4 < split.length) {
                        if (split[i4].length() != 0) {
                            String str6 = split[i4];
                            int indexOf = str5.indexOf(" " + str6);
                            if (indexOf < 0 && strArr[i4] != null) {
                                str6 = strArr[i4];
                                indexOf = str5.indexOf(" " + str6);
                            }
                            if (indexOf >= 0) {
                                spannableStringBuilder2 = spannableStringBuilder3 == null ? new SpannableStringBuilder(searchResult.searchTitle) : spannableStringBuilder3;
                                str3 = str5;
                                spannableStringBuilder2.setSpan(new ForegroundColorSpan(ProfileActivity.this.getThemedColor("windowBackgroundWhiteBlueText4")), indexOf, str6.length() + indexOf, 33);
                            }
                        } else {
                            str3 = str5;
                            spannableStringBuilder2 = spannableStringBuilder3;
                        }
                        if (spannableStringBuilder2 != null && i4 == split.length - 1) {
                            if (searchResult.guid == 502) {
                                int i5 = -1;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= 5) {
                                        break;
                                    } else if (!UserConfig.getInstance(i6).isClientActivated()) {
                                        i5 = i6;
                                        break;
                                    } else {
                                        i6++;
                                    }
                                }
                                if (i5 < 0) {
                                }
                            }
                            arrayList.add(searchResult);
                            arrayList3.add(spannableStringBuilder2);
                        }
                        i4++;
                        spannableStringBuilder3 = spannableStringBuilder2;
                        str5 = str3;
                    }
                }
                i3++;
                spannableStringBuilder = null;
            }
            if (this.faqWebPage != null) {
                int size = this.faqSearchArray.size();
                int i7 = 0;
                while (i7 < size) {
                    MessagesController.FaqSearchResult faqSearchResult = this.faqSearchArray.get(i7);
                    String str7 = str4 + faqSearchResult.title.toLowerCase();
                    int i8 = 0;
                    SpannableStringBuilder spannableStringBuilder4 = null;
                    while (i8 < split.length) {
                        if (split[i8].length() != 0) {
                            String str8 = split[i8];
                            int indexOf2 = str7.indexOf(str4 + str8);
                            if (indexOf2 < 0 && strArr[i8] != null) {
                                str8 = strArr[i8];
                                indexOf2 = str7.indexOf(str4 + str8);
                            }
                            if (indexOf2 >= 0) {
                                if (spannableStringBuilder4 == null) {
                                    str2 = str4;
                                    spannableStringBuilder4 = new SpannableStringBuilder(faqSearchResult.title);
                                } else {
                                    str2 = str4;
                                }
                                i = size;
                                spannableStringBuilder4.setSpan(new ForegroundColorSpan(ProfileActivity.this.getThemedColor("windowBackgroundWhiteBlueText4")), indexOf2, str8.length() + indexOf2, 33);
                            }
                        } else {
                            str2 = str4;
                            i = size;
                        }
                        if (spannableStringBuilder4 != null && i8 == split.length - 1) {
                            arrayList2.add(faqSearchResult);
                            arrayList3.add(spannableStringBuilder4);
                        }
                        i8++;
                        str4 = str2;
                        size = i;
                    }
                    i7++;
                    str4 = str4;
                    size = size;
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda125
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$search$128(str, arrayList, arrayList2, arrayList3);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$128(String str, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
            if (str.equals(this.lastSearchString)) {
                if (!this.searchWas) {
                    ProfileActivity.this.emptyView.stickerView.getImageReceiver().startAnimation();
                    ProfileActivity.this.emptyView.title.setText(LocaleController.getString("SettingsNoResults", C3158R.string.SettingsNoResults));
                }
                this.searchWas = true;
                this.searchResults = arrayList;
                this.faqSearchResults = arrayList2;
                this.resultNames = arrayList3;
                notifyDataSetChanged();
                ProfileActivity.this.emptyView.stickerView.getImageReceiver().startAnimation();
            }
        }

        public boolean isSearchWas() {
            return this.searchWas;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUrl(String str, Browser.Progress progress) {
        if (str.startsWith("@")) {
            getMessagesController().openByUserName(str.substring(1), this, 0, progress);
        } else if (str.startsWith("#")) {
            DialogsActivity dialogsActivity = new DialogsActivity(null);
            dialogsActivity.setSearchString(str);
            presentFragment(dialogsActivity);
        } else if (!str.startsWith("/") || this.parentLayout.getFragmentStack().size() <= 1) {
        } else {
            BaseFragment baseFragment = this.parentLayout.getFragmentStack().get(this.parentLayout.getFragmentStack().size() - 2);
            if (baseFragment instanceof ChatActivity) {
                finishFragment();
                ((ChatActivity) baseFragment).chatActivityEnterView.setCommand(null, str, false, false);
            }
        }
    }

    private void dimBehindView(View view, float f) {
        this.scrimView = view;
        dimBehindView(f);
    }

    private void dimBehindView(boolean z) {
        dimBehindView(z ? 0.2f : BitmapDescriptorFactory.HUE_RED);
    }

    private void dimBehindView(float f) {
        ValueAnimator ofFloat;
        boolean z = f > BitmapDescriptorFactory.HUE_RED;
        this.fragmentView.invalidate();
        AnimatorSet animatorSet = this.scrimAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.scrimAnimatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        if (z) {
            ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, f);
            arrayList.add(ofFloat);
        } else {
            ofFloat = ValueAnimator.ofFloat(this.scrimPaint.getAlpha() / 255.0f, BitmapDescriptorFactory.HUE_RED);
            arrayList.add(ofFloat);
        }
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ProfileActivity.this.lambda$dimBehindView$53(valueAnimator);
            }
        });
        this.scrimAnimatorSet.playTogether(arrayList);
        this.scrimAnimatorSet.setDuration(z ? 150L : 220L);
        if (!z) {
            this.scrimAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.49
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ProfileActivity.this.scrimView = null;
                    ((BaseFragment) ProfileActivity.this).fragmentView.invalidate();
                }
            });
        }
        this.scrimAnimatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dimBehindView$53(ValueAnimator valueAnimator) {
        this.scrimPaint.setAlpha((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        if (this.resourcesProvider != null) {
            return null;
        }
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda50
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ProfileActivity.this.lambda$getThemeDescriptions$54();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"expandImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.transferButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "profile_actionIcon"));
        arrayList.add(new ThemeDescription(this.transferButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "profile_actionBackground"));
        arrayList.add(new ThemeDescription(this.transferButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "profile_actionPressedBackground"));
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            arrayList.addAll(sharedMediaLayout.getThemeDescriptions());
        }
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.searchListView, 0, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, "actionBarDefaultSubmenuBackground"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, "actionBarDefaultSubmenuItem"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "actionBarDefaultSubmenuItemIcon"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_actionBarSelectorBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "chat_lockIcon"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_subtitleInProfileBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundActionBarBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "profile_title"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "profile_status"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_subtitleInProfileBlue"));
        if (this.mediaCounterTextView != null) {
            arrayList.add(new ThemeDescription(this.mediaCounterTextView.getTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, themeDescriptionDelegate, "player_actionBarSubtitle"));
            arrayList.add(new ThemeDescription(this.mediaCounterTextView.getNextTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, themeDescriptionDelegate, "player_actionBarSubtitle"));
        }
        arrayList.add(new ThemeDescription(this.topView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "avatar_backgroundActionBarBlue"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.avatarImage, 0, null, null, Theme.avatarDrawables, null, "avatar_text"));
        arrayList.add(new ThemeDescription(this.avatarImage, 0, null, null, new Drawable[]{this.avatarDrawable}, null, "avatar_backgroundInProfileBlue"));
        arrayList.add(new ThemeDescription(this.writeButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "profile_actionIcon"));
        arrayList.add(new ThemeDescription(this.writeButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "profile_actionBackground"));
        arrayList.add(new ThemeDescription(this.writeButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "profile_actionPressedBackground"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGreenText2"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteRedText5"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText2"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueButton"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayIcon"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueIcon"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"detailTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{SettingsSuggestionCell.class}, new String[]{"detailTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteLinkText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"yesButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "featuredStickers_buttonText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{SettingsSuggestionCell.class}, new String[]{"yesButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "featuredStickers_addButton"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{SettingsSuggestionCell.class}, new String[]{"yesButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "featuredStickers_addButtonPressed"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"noButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "featuredStickers_buttonText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{SettingsSuggestionCell.class}, new String[]{"noButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "featuredStickers_addButton"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{SettingsSuggestionCell.class}, new String[]{"noButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "featuredStickers_addButtonPressed"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{UserCell.class}, new String[]{"adminTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "profile_creatorIcon"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayIcon"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "windowBackgroundWhiteBlueText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, "avatar_text"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundRed"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundOrange"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundViolet"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundGreen"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundCyan"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundPink"));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "undo_background"));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "undo_cancelColor"));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "undo_cancelColor"));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "undo_infoColor"));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "undo_infoColor"));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "undo_infoColor"));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "undo_infoColor"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AboutLinkCell.class}, Theme.profile_aboutTextPaint, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{AboutLinkCell.class}, Theme.profile_aboutTextPaint, null, null, "windowBackgroundWhiteLinkText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AboutLinkCell.class}, Theme.linkSelectionPaint, null, null, "windowBackgroundWhiteLinkSelection"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "key_graySectionText"));
        arrayList.add(new ThemeDescription(this.searchListView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, "graySection"));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{SettingsSearchCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{SettingsSearchCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{SettingsSearchCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayIcon"));
        if (this.mediaHeaderVisible) {
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, new Drawable[]{this.verifiedCheckDrawable}, null, "player_actionBarTitle"));
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, new Drawable[]{this.verifiedDrawable}, null, "windowBackgroundWhite"));
        } else {
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, new Drawable[]{this.verifiedCheckDrawable}, null, "profile_verifiedCheck"));
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, new Drawable[]{this.verifiedDrawable}, null, "profile_verifiedBackground"));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$54() {
        PinnedPlayerView pinnedPlayerView = this.pinnedPlayerView;
        if (pinnedPlayerView != null) {
            pinnedPlayerView.updateColors();
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof AboutLinkCell) {
                    ((AboutLinkCell) childAt).updateColors();
                } else if (childAt instanceof TopicProfileCell) {
                    ((TopicProfileCell) childAt).updateColors();
                } else if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
        if (!this.isPulledDown) {
            SimpleTextView[] simpleTextViewArr = this.onlineTextView;
            if (simpleTextViewArr[1] != null) {
                Object tag = simpleTextViewArr[1].getTag();
                for (int i2 = 0; i2 < 2; i2++) {
                    if (tag instanceof String) {
                        this.onlineTextView[i2 + 1].setTextColor(getThemedColor((String) tag));
                    } else {
                        this.onlineTextView[i2 + 1].setTextColor(getThemedColor("avatar_subtitleInProfileBlue"));
                    }
                }
            }
            Drawable drawable = this.lockIconDrawable;
            if (drawable != null) {
                drawable.setColorFilter(getThemedColor("chat_lockIcon"), PorterDuff.Mode.MULTIPLY);
            }
            ScamDrawable scamDrawable = this.scamDrawable;
            if (scamDrawable != null) {
                scamDrawable.setColor(getThemedColor("avatar_subtitleInProfileBlue"));
            }
            SimpleTextView[] simpleTextViewArr2 = this.nameTextView;
            if (simpleTextViewArr2[1] != null) {
                simpleTextViewArr2[1].setTextColor(getThemedColor("profile_title"));
            }
            C3222ActionBar c3222ActionBar = this.actionBar;
            if (c3222ActionBar != null) {
                c3222ActionBar.setItemsColor(getThemedColor("actionBarDefaultIcon"), false);
                this.actionBar.setItemsBackgroundColor(getThemedColor("avatar_actionBarSelectorBlue"), false);
            }
        }
        updateEmojiStatusDrawableColor();
    }

    public void updateListAnimated(boolean z) {
        TLRPC$Chat tLRPC$Chat;
        if (this.listAdapter == null) {
            if (z) {
                updateOnlineCount(false);
            }
            updateRowsIds();
            return;
        }
        this.sharedMediaLayout.setMembersMenuVisible(this.membersFilter.getNeedShowAction() && (tLRPC$Chat = this.currentChat) != null && ChatObject.hasAdminRights(tLRPC$Chat) && !this.chatInfo.participants.participants.isEmpty(), this.membersFilter);
        DiffCallback diffCallback = new DiffCallback();
        diffCallback.oldRowCount = this.rowCount;
        diffCallback.fillPositions(diffCallback.oldPositionToItem);
        diffCallback.oldChatParticipant.clear();
        diffCallback.oldChatParticipantSorted.clear();
        diffCallback.oldChatParticipant.addAll(this.visibleChatParticipants);
        diffCallback.oldChatParticipantSorted.addAll(this.visibleSortedUsers);
        diffCallback.oldMembersStartRow = this.membersStartRow;
        diffCallback.oldMembersEndRow = this.membersEndRow;
        if (z) {
            updateOnlineCount(false);
        }
        saveScrollPosition();
        updateRowsIds();
        diffCallback.fillPositions(diffCallback.newPositionToItem);
        try {
            DiffUtil.calculateDiff(diffCallback).dispatchUpdatesTo(this.listAdapter);
        } catch (Exception unused) {
            this.listAdapter.notifyDataSetChanged();
        }
        int i = this.savedScrollPosition;
        if (i >= 0) {
            this.layoutManager.scrollToPositionWithOffset(i, this.savedScrollOffset - this.listView.getPaddingTop());
        }
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveScrollPosition() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null || this.layoutManager == null || recyclerListView.getChildCount() <= 0) {
            return;
        }
        View view = null;
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < this.listView.getChildCount(); i3++) {
            RecyclerListView recyclerListView2 = this.listView;
            int childAdapterPosition = recyclerListView2.getChildAdapterPosition(recyclerListView2.getChildAt(i3));
            View childAt = this.listView.getChildAt(i3);
            if (childAdapterPosition != -1 && childAt.getTop() < i) {
                i = childAt.getTop();
                i2 = childAdapterPosition;
                view = childAt;
            }
        }
        if (view != null) {
            this.savedScrollPosition = i2;
            int top = view.getTop();
            this.savedScrollOffset = top;
            if (this.savedScrollPosition == 0 && !this.allowPullingDown && top > AndroidUtilities.m50dp(88)) {
                this.savedScrollOffset = AndroidUtilities.m50dp(88);
            }
            this.layoutManager.scrollToPositionWithOffset(i2, view.getTop() - this.listView.getPaddingTop());
        }
    }

    @Override // org.telegram.p048ui.Components.SharedMediaLayout.Delegate
    public void scrollToSharedMedia() {
        this.layoutManager.scrollToPositionWithOffset(this.sharedMediaRow, -this.listView.getPaddingTop());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTextDetailCellImageClicked(View view) {
        View view2 = (View) view.getParent();
        if (view2.getTag() == null || ((Integer) view2.getTag()).intValue() != this.usernameRow) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        bundle.putLong("user_id", this.userId);
        presentFragment(new QrActivity(bundle));
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        try {
            Drawable mutate = this.fragmentView.getContext().getResources().getDrawable(C3158R.C3160drawable.floating_shadow_profile).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(56), getThemedColor("profile_actionBackground"), getThemedColor("profile_actionPressedBackground")), 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
            this.writeButton.setBackground(combinedDrawable);
            this.transferButton.setBackground(combinedDrawable.mutate());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$DiffCallback */
    /* loaded from: classes5.dex */
    public class DiffCallback extends DiffUtil.Callback {
        SparseIntArray newPositionToItem;
        ArrayList<TLRPC$ChatParticipant> oldChatParticipant;
        ArrayList<Integer> oldChatParticipantSorted;
        int oldMembersEndRow;
        int oldMembersStartRow;
        SparseIntArray oldPositionToItem;
        int oldRowCount;

        private DiffCallback() {
            this.oldPositionToItem = new SparseIntArray();
            this.newPositionToItem = new SparseIntArray();
            this.oldChatParticipant = new ArrayList<>();
            this.oldChatParticipantSorted = new ArrayList<>();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldRowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return ProfileActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            TLRPC$ChatParticipant tLRPC$ChatParticipant;
            if (i2 >= ProfileActivity.this.membersStartRow && i2 < ProfileActivity.this.membersEndRow && i >= this.oldMembersStartRow && i < this.oldMembersEndRow) {
                if (!this.oldChatParticipantSorted.isEmpty()) {
                    tLRPC$ChatParticipant = this.oldChatParticipant.get(this.oldChatParticipantSorted.get(i - this.oldMembersStartRow).intValue());
                } else {
                    tLRPC$ChatParticipant = this.oldChatParticipant.get(i - this.oldMembersStartRow);
                }
                return tLRPC$ChatParticipant.user_id == (!ProfileActivity.this.sortedUsers.isEmpty() ? (TLRPC$ChatParticipant) ProfileActivity.this.visibleChatParticipants.get(((Integer) ProfileActivity.this.visibleSortedUsers.get(i2 - ProfileActivity.this.membersStartRow)).intValue()) : (TLRPC$ChatParticipant) ProfileActivity.this.visibleChatParticipants.get(i2 - ProfileActivity.this.membersStartRow)).user_id;
            }
            int i3 = this.oldPositionToItem.get(i, -1);
            return i3 == this.newPositionToItem.get(i2, -1) && i3 >= 0;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return areItemsTheSame(i, i2);
        }

        public void fillPositions(SparseIntArray sparseIntArray) {
            sparseIntArray.clear();
            put(1, ProfileActivity.this.profileTopicHeaderRow, sparseIntArray);
            put(2, ProfileActivity.this.profileTopicRow, sparseIntArray);
            put(3, ProfileActivity.this.profileTopicSectionRow, sparseIntArray);
            put(4, ProfileActivity.this.settingsToolsRow, sparseIntArray);
            put(5, ProfileActivity.this.settingsTopicsRow, sparseIntArray);
            put(6, ProfileActivity.this.settingsHelpRow, sparseIntArray);
            put(7, ProfileActivity.this.dialogIdRow, sparseIntArray);
            put(8, ProfileActivity.this.setAvatarRow, sparseIntArray);
            put(9, ProfileActivity.this.setAvatarSectionRow, sparseIntArray);
            put(10, ProfileActivity.this.numberSectionRow, sparseIntArray);
            put(11, ProfileActivity.this.numberRow, sparseIntArray);
            put(12, ProfileActivity.this.setUsernameRow, sparseIntArray);
            put(13, ProfileActivity.this.bioRow, sparseIntArray);
            put(14, ProfileActivity.this.phoneSuggestionRow, sparseIntArray);
            put(15, ProfileActivity.this.phoneSuggestionSectionRow, sparseIntArray);
            put(16, ProfileActivity.this.passwordSuggestionRow, sparseIntArray);
            put(17, ProfileActivity.this.passwordSuggestionSectionRow, sparseIntArray);
            put(18, ProfileActivity.this.settingsSectionRow, sparseIntArray);
            put(19, ProfileActivity.this.settingsSectionRow2, sparseIntArray);
            put(20, ProfileActivity.this.notificationRow, sparseIntArray);
            put(21, ProfileActivity.this.languageRow, sparseIntArray);
            put(22, ProfileActivity.this.premiumRow, sparseIntArray);
            put(23, ProfileActivity.this.premiumSectionsRow, sparseIntArray);
            put(24, ProfileActivity.this.privacyRow, sparseIntArray);
            put(25, ProfileActivity.this.dataRow, sparseIntArray);
            put(26, ProfileActivity.this.chatRow, sparseIntArray);
            put(27, ProfileActivity.this.filtersRow, sparseIntArray);
            put(28, ProfileActivity.this.stickersRow, sparseIntArray);
            put(29, ProfileActivity.this.devicesRow, sparseIntArray);
            put(30, ProfileActivity.this.devicesSectionRow, sparseIntArray);
            put(31, ProfileActivity.this.helpHeaderRow, sparseIntArray);
            put(32, ProfileActivity.this.questionRow, sparseIntArray);
            put(33, ProfileActivity.this.faqRow, sparseIntArray);
            put(34, ProfileActivity.this.policyRow, sparseIntArray);
            put(35, ProfileActivity.this.helpSectionCell, sparseIntArray);
            put(36, ProfileActivity.this.debugHeaderRow, sparseIntArray);
            put(37, ProfileActivity.this.sendLogsRow, sparseIntArray);
            put(38, ProfileActivity.this.sendLastLogsRow, sparseIntArray);
            put(39, ProfileActivity.this.clearLogsRow, sparseIntArray);
            put(40, ProfileActivity.this.switchBackendRow, sparseIntArray);
            put(41, ProfileActivity.this.versionRow, sparseIntArray);
            put(42, ProfileActivity.this.emptyRow, sparseIntArray);
            put(43, ProfileActivity.this.bottomPaddingRow, sparseIntArray);
            put(44, ProfileActivity.this.infoHeaderRow, sparseIntArray);
            put(45, ProfileActivity.this.phoneRow, sparseIntArray);
            put(46, ProfileActivity.this.locationRow, sparseIntArray);
            put(47, ProfileActivity.this.userInfoRow, sparseIntArray);
            put(48, ProfileActivity.this.channelInfoRow, sparseIntArray);
            put(49, ProfileActivity.this.usernameRow, sparseIntArray);
            put(50, ProfileActivity.this.notificationsDividerRow, sparseIntArray);
            put(51, ProfileActivity.this.reportDividerRow, sparseIntArray);
            put(52, ProfileActivity.this.notificationsRow, sparseIntArray);
            put(53, ProfileActivity.this.infoSectionRow, sparseIntArray);
            put(54, ProfileActivity.this.sendMessageRow, sparseIntArray);
            put(55, ProfileActivity.this.reportRow, sparseIntArray);
            put(56, ProfileActivity.this.reportReactionRow, sparseIntArray);
            put(57, ProfileActivity.this.addToContactsRow, sparseIntArray);
            put(58, ProfileActivity.this.settingsTimerRow, sparseIntArray);
            put(59, ProfileActivity.this.settingsKeyRow, sparseIntArray);
            put(60, ProfileActivity.this.secretSettingsSectionRow, sparseIntArray);
            put(61, ProfileActivity.this.membersHeaderRow, sparseIntArray);
            put(62, ProfileActivity.this.addMemberRow, sparseIntArray);
            put(63, ProfileActivity.this.subscribersRow, sparseIntArray);
            put(64, ProfileActivity.this.subscribersRequestsRow, sparseIntArray);
            put(65, ProfileActivity.this.administratorsRow, sparseIntArray);
            put(66, ProfileActivity.this.blockedUsersRow, sparseIntArray);
            put(67, ProfileActivity.this.membersSectionRow, sparseIntArray);
            put(68, ProfileActivity.this.sharedMediaRow, sparseIntArray);
            put(69, ProfileActivity.this.unblockRow, sparseIntArray);
            put(70, ProfileActivity.this.addToGroupButtonRow, sparseIntArray);
            put(71, ProfileActivity.this.addToGroupInfoRow, sparseIntArray);
            put(72, ProfileActivity.this.joinRow, sparseIntArray);
            put(73, ProfileActivity.this.lastSectionRow, sparseIntArray);
            put(74, ProfileActivity.this.notificationsSimpleRow, sparseIntArray);
        }

        private void put(int i, int i2, SparseIntArray sparseIntArray) {
            if (i2 >= 0) {
                sparseIntArray.put(i2, i);
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        int themedColor;
        if (this.isPulledDown) {
            return false;
        }
        if (this.actionBar.isActionModeShowed()) {
            themedColor = getThemedColor("actionBarActionModeDefault");
        } else if (this.mediaHeaderVisible) {
            themedColor = getThemedColor("windowBackgroundWhite");
        } else {
            themedColor = getThemedColor("actionBarDefault");
        }
        return ColorUtils.calculateLuminance(themedColor) > 0.699999988079071d;
    }

    public String getLink(String str, int i) {
        String str2 = getMessagesController().linkPrefix + "/" + str;
        if (i != 0) {
            return str2 + "/" + i;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPhotoDescriptionAlpha() {
        int i = this.playProfileAnimation;
        if (i == 1 && (!this.fragmentOpened || this.openAnimationInProgress)) {
            this.photoDescriptionProgress = BitmapDescriptorFactory.HUE_RED;
        } else if (i == 2 && (!this.fragmentOpened || this.openAnimationInProgress)) {
            this.photoDescriptionProgress = this.onlineTextView[1].getAlpha();
        } else if (this.userId == UserConfig.getInstance(this.currentAccount).clientUserId) {
            this.photoDescriptionProgress = this.currentExpandAnimatorValue * (1.0f - this.customAvatarProgress);
        } else {
            this.photoDescriptionProgress = this.currentExpandAnimatorValue * this.customAvatarProgress;
        }
        if (this.userId == UserConfig.getInstance(this.currentAccount).clientUserId) {
            if (this.hasFallbackPhoto) {
                this.customPhotoOffset = AndroidUtilities.m50dp(28) * this.photoDescriptionProgress;
                SimpleTextView[] simpleTextViewArr = this.onlineTextView;
                if (simpleTextViewArr[2] != null) {
                    simpleTextViewArr[2].setAlpha(this.currentExpandAnimatorValue);
                    this.onlineTextView[3].setAlpha(1.0f - this.currentExpandAnimatorValue);
                    this.onlineTextView[1].setTranslationX(this.onlineX + this.customPhotoOffset);
                    this.avatarContainer2.invalidate();
                    return;
                }
                return;
            }
            SimpleTextView[] simpleTextViewArr2 = this.onlineTextView;
            if (simpleTextViewArr2[2] != null) {
                simpleTextViewArr2[2].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.onlineTextView[3].setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        } else if (this.hasCustomPhoto) {
            SimpleTextView[] simpleTextViewArr3 = this.onlineTextView;
            if (simpleTextViewArr3[2] != null) {
                simpleTextViewArr3[2].setAlpha(this.photoDescriptionProgress);
            }
        } else {
            SimpleTextView[] simpleTextViewArr4 = this.onlineTextView;
            if (simpleTextViewArr4[2] != null) {
                simpleTextViewArr4[2].setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }
}
