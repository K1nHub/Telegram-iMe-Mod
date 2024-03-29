package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
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
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
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
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
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
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
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
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.feature.navigation.NavDirection;
import com.iMe.feature.navigation.NavigationBundle;
import com.iMe.feature.navigation.NavigationScreen;
import com.iMe.feature.profile.ProfileData;
import com.iMe.feature.profile.ProfilePresenter;
import com.iMe.feature.profile.ProfileSocialCell;
import com.iMe.feature.profile.ProfileView;
import com.iMe.feature.socialMedias.SocialAuthDomain;
import com.iMe.feature.socialMedias.SocialDialog;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.twitter.TwitterFragment;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.enums.ChatProfileTelegramIdMode;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.enums.ParticipantsActionType;
import com.iMe.fork.enums.SettingsToolsCategory;
import com.iMe.fork.enums.SocialDialogActions;
import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.fork.p023ui.dialog.AccountLevelAlert;
import com.iMe.fork.p023ui.dialog.DeleteServiceMessagesBottomSheet;
import com.iMe.fork.p023ui.dialog.TranslateAlert;
import com.iMe.fork.p023ui.fragment.ChatProfileActivity;
import com.iMe.fork.p023ui.fragment.CombineContextMenuActivity;
import com.iMe.fork.p023ui.fragment.ReactionsSettingsActivity;
import com.iMe.fork.p023ui.fragment.SettingsToolsCategoryActivity;
import com.iMe.fork.p023ui.fragment.SettingsToolsMessageActivity;
import com.iMe.fork.p023ui.fragment.SortingFilterSettingsActivity;
import com.iMe.fork.p023ui.view.PinnedPlayerView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.group.GroupMembersFilter;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.p030ui.base.mvp.JavaMvpFragment;
import com.iMe.p030ui.custom.cells.TextDetailWithRankCell;
import com.iMe.p030ui.debug.DebugPresenter;
import com.iMe.p030ui.debug.DebugView;
import com.iMe.p030ui.topics.TopicProfileCell;
import com.iMe.services.FilteredChatParticipantsProcessingService;
import com.iMe.storage.domain.model.common.Environment;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
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
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.PhoneFormat.C3544PhoneFormat;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FlagSecureReason;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.AlertDialog$$ExternalSyntheticLambda6;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.AboutLinkCell;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.DividerCell;
import org.telegram.p043ui.Cells.DrawerProfileCell;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.NotificationsCheckCell;
import org.telegram.p043ui.Cells.RadioColorCell;
import org.telegram.p043ui.Cells.SettingsSearchCell;
import org.telegram.p043ui.Cells.SettingsSuggestionCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextDetailCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnimatedColor;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.AudioPlayerAlert;
import org.telegram.p043ui.Components.AutoDeletePopupWrapper;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackButtonMenu;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CanvasButton;
import org.telegram.p043ui.Components.ChatActivityInterface;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CrossfadeDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiPacksAlert;
import org.telegram.p043ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.p043ui.Components.FragmentContextView;
import org.telegram.p043ui.Components.HintView;
import org.telegram.p043ui.Components.ImageUpdater;
import org.telegram.p043ui.Components.InstantCameraView;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.MediaActivity;
import org.telegram.p043ui.Components.MessagePrivateSeenView;
import org.telegram.p043ui.Components.Paint.PersistColorPalette;
import org.telegram.p043ui.Components.Premium.GiftPremiumBottomSheet;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumPreviewBottomSheet;
import org.telegram.p043ui.Components.Premium.ProfilePremiumCell;
import org.telegram.p043ui.Components.ProfileGalleryView;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RadialProgressView;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ScamDrawable;
import org.telegram.p043ui.Components.ShareAlert;
import org.telegram.p043ui.Components.SharedMediaLayout;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.StickerEmptyView;
import org.telegram.p043ui.Components.Text;
import org.telegram.p043ui.Components.TimerDrawable;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Components.UndoView;
import org.telegram.p043ui.Components.VectorAvatarThumbDrawable;
import org.telegram.p043ui.Components.voip.VoIPHelper;
import org.telegram.p043ui.ContactAddActivity;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.GroupCreateActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.p043ui.Stories.ProfileStoriesView;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.p043ui.Stories.recorder.DualCameraView;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
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
import org.telegram.tgnet.TLRPC$TL_channelFull;
import org.telegram.tgnet.TLRPC$TL_channelLocation;
import org.telegram.tgnet.TLRPC$TL_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_channelParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_channelParticipantCreator;
import org.telegram.tgnet.TLRPC$TL_channelParticipantsRecent;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipants;
import org.telegram.tgnet.TLRPC$TL_channels_getParticipants;
import org.telegram.tgnet.TLRPC$TL_channels_updateEmojiStatus;
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
import org.telegram.tgnet.TLRPC$TL_messages_webPage;
import org.telegram.tgnet.TLRPC$TL_pageBlockAnchor;
import org.telegram.tgnet.TLRPC$TL_pageBlockList;
import org.telegram.tgnet.TLRPC$TL_pageBlockParagraph;
import org.telegram.tgnet.TLRPC$TL_pageListItemText;
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
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
import p033j$.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.ToIntFunction;
import timber.log.Timber;
/* renamed from: org.telegram.ui.ProfileActivity */
/* loaded from: classes5.dex */
public class ProfileActivity extends JavaMvpFragment implements ProfileView, DebugView, OnLoadMoreListener, NotificationCenter.NotificationCenterDelegate, DialogsActivity.DialogsActivityDelegate, SharedMediaLayout.SharedMediaPreloaderDelegate, ImageUpdater.ImageUpdaterDelegate, SharedMediaLayout.Delegate {
    private static final int[] observers = {NotificationCenter.topicsDidLoad};
    private Property<C3704ActionBar, Float> ACTIONBAR_HEADER_PROGRESS;
    private final Property<ProfileActivity, Float> HEADER_SHADOW;
    private AboutLinkCell aboutLinkCell;
    private AccountLevelInformation accountLevelInformation;
    private int actionBarAnimationColorFrom;
    private int actionBarBackgroundColor;
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
    int avatarUploadingRequest;
    private float avatarX;
    private float avatarY;
    private ProfileGalleryView avatarsViewPager;
    private PagerIndicatorView avatarsViewPagerIndicatorView;
    private long banFromGroup;
    private int bioRow;
    private int blockedUsersRow;
    private View blurredView;
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
    private ImageLocation customImageLocation;
    private float customPhotoOffset;
    private int dataRow;
    private int debugHeaderRow;
    @InjectPresenter
    public DebugPresenter debugPresenter;
    private int debugThemeSwitchRow;
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
    private FlagSecureReason flagSecure;
    RLottieImageView floatingButton;
    FrameLayout floatingButtonContainer;
    float floatingButtonHideProgress;
    boolean floatingHidden;
    private final AccelerateDecelerateInterpolator floatingInterpolator;
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
    private boolean isToggleHiddenChatsItemVisible;
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
    private int liteModeRow;
    private boolean loadingBoostsStats;
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
    private String nameTextViewRightDrawable2ContentDescription;
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
    private boolean openSimilar;
    private boolean openingAvatar;
    private ActionBarMenuItem otherItem;
    private int overlayCountVisible;
    private OverlaysView overlaysView;
    private LongSparseArray<TLRPC$ChatParticipant> participantsMap;
    private int passwordSuggestionRow;
    private int passwordSuggestionSectionRow;
    private MessagesController.PeerColor peerColor;
    private int phoneRow;
    private int phoneSuggestionRow;
    private int phoneSuggestionSectionRow;
    float photoDescriptionProgress;
    PinchToZoomHelper pinchToZoomHelper;
    private int playProfileAnimation;
    private int policyRow;
    private HashMap<Integer, Integer> positionToOffset;
    private boolean preloadedChannelEmojiStatuses;
    private final CrossfadeDrawable[] premiumCrossfadeDrawable;
    private int premiumGiftingRow;
    private int premiumRow;
    private int premiumSectionsRow;
    private final Drawable[] premiumStarDrawable;
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
    public boolean saved;
    int savedScrollOffset;
    int savedScrollPosition;
    boolean savedScrollToSharedMedia;
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
    private int settingsRow;
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
    boolean showBoostsAlert;
    private ShowDrawable showStatusButton;
    private int socialsRow;
    private ArrayList<Integer> sortedUsers;
    private int stickersRow;
    private ProfileStoriesView storyView;
    private int subscribersRequestsRow;
    private int subscribersRow;
    private int switchBackendRow;
    private ImageView timeItem;
    private TimerDrawable timerDrawable;
    private float titleAnimationsYDiff;
    private ActionBarMenuSubItem toggleArchiveItem;
    private ActionBarMenuSubItem toggleHiddenChatsItem;
    private TopView topView;
    private long topicId;
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
    private final Drawable[] verifiedCheckDrawable;
    private final CrossfadeDrawable[] verifiedCrossfadeDrawable;
    private final Drawable[] verifiedDrawable;
    private int versionRow;
    private ActionBarMenuItem videoCallItem;
    private boolean videoCallItemVisible;
    private final ArrayList<TLRPC$ChatParticipant> visibleChatParticipants;
    private final ArrayList<Integer> visibleSortedUsers;
    private boolean waitCanSendStoryRequest;
    private Paint whitePaint;
    private RLottieImageView writeButton;
    private AnimatorSet writeButtonAnimation;

    private boolean isQrNeedVisible() {
        return true;
    }

    @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ boolean canFinishFragment() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
    }

    @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ void didUploadFailed() {
        ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
    }

    @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ String getInitialSearchString() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$getInitialSearchString(this);
    }

    static /* synthetic */ int access$10112(ProfileActivity profileActivity, int i) {
        int i2 = profileActivity.listContentHeight + i;
        profileActivity.listContentHeight = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$33400(ProfileActivity profileActivity, View view) {
        profileActivity.onTextDetailCellImageClicked(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$7900(ProfileActivity profileActivity) {
        profileActivity.onWriteButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$providePresenter$0() {
        return ParametersHolderKt.parametersOf(new ProfileData(this.userId, this.chatId, getBotApiDialogIdText()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public ProfilePresenter providePresenter() {
        return (ProfilePresenter) KoinJavaComponent.get(ProfilePresenter.class, null, new Function0() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda65
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

    public static ProfileActivity newInstanceForDialogId(long j) {
        return newInstanceForDialogId(j, new Bundle());
    }

    public static ProfileActivity newInstanceForDialogId(long j, Bundle bundle) {
        if (DialogObject.isEncryptedDialog(j)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j));
        } else if (DialogObject.isUserDialog(j)) {
            bundle.putLong("user_id", j);
        } else {
            bundle.putLong("chat_id", -j);
        }
        return new ProfileActivity(bundle);
    }

    public void needLayoutTextPublic(float f) {
        needLayoutText(f);
    }

    public void showChooseMembersFilterDialog() {
        if (getParentActivity() == null) {
            return;
        }
        final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3632R.string.contacts_filter_header));
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
            radioColorCell.setPadding(AndroidUtilities.m107dp(4), 0, AndroidUtilities.m107dp(4), 0);
            radioColorCell.setTag(groupMembersFilter);
            radioColorCell.setBackground(Theme.getSelectorDrawable(false));
            radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
            radioColorCell.setTextAndValue(groupMembersFilter.getTitle(), this.membersFilter == groupMembersFilter);
            linearLayout.addView(radioColorCell);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda27
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

    @Override // com.iMe.feature.profile.ProfileView
    public void onFilteredMembers(ArrayList<TLRPC$ChatParticipant> arrayList) {
        this.chatInfo.participants.participants = arrayList;
        updateListAnimated(true);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void showUserAccountLevel(AccountLevelInformation accountLevelInformation) {
        this.accountLevelInformation = accountLevelInformation;
        this.listAdapter.notifyItemChanged(this.dialogIdRow);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void showNeedAuthorizeDialog(DialogModel dialogModel) {
        showDialog(DialogUtils.createDialog(getParentActivity(), dialogModel, null, null));
    }

    @Override // com.iMe.p030ui.debug.DebugView
    public void showConfirmSwitchEnvironmentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        showDialog(DialogUtils.createDialog(getParentActivity(), dialogModel, callbacks$Callback, null));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isAllowPinnedPlayer() {
        return this.imageUpdater == null;
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void openSocialAuthScreen(SocialAuthDomain socialAuthDomain) {
        Context context = getContext();
        Intent intent = new Intent(context, NavigationScreen.class);
        intent.addFlags(536870912);
        intent.putExtra("nav_bundle", new NavigationBundle(socialAuthDomain, NavDirection.SOCIAL_AUTH));
        context.startActivity(intent);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void openTwitterScreen(long j, SocialNetwork socialNetwork) {
        presentFragment(TwitterFragment.newInstance(j, socialNetwork), false, true);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void showResetConfirmationDialog(DialogModel dialogModel, final SocialNetwork socialNetwork) {
        AlertDialog createDialog = DialogUtils.createDialog(getContext(), dialogModel, new Callbacks$Callback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda39
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                ProfileActivity.this.lambda$showResetConfirmationDialog$2(socialNetwork);
            }
        }, null);
        showDialog(createDialog);
        createDialog.redPositive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showResetConfirmationDialog$2(SocialNetwork socialNetwork) {
        this.presenter.onResetSocialNetwork(socialNetwork);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void updateSocialCell() {
        updateRowsIds();
        int i = this.socialsRow;
        if (i != -1) {
            this.listAdapter.notifyItemChanged(i);
        }
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void openSocialWeb(SocialNetwork socialNetwork) {
        Context context = getContext();
        Intent intent = new Intent(context, NavigationScreen.class);
        intent.addFlags(536870912);
        intent.putExtra("nav_bundle", new NavigationBundle(socialNetwork, NavDirection.SOCIAL_WEB));
        context.startActivity(intent);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void showBeforeConnectMessage(final SocialNetwork socialNetwork, DialogModel dialogModel) {
        showDialog(DialogUtils.createDialog(getContext(), dialogModel, new Callbacks$Callback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda40
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                ProfileActivity.this.lambda$showBeforeConnectMessage$4(socialNetwork);
            }
        }, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBeforeConnectMessage$4(SocialNetwork socialNetwork) {
        this.presenter.onSocialBeforeConfirmed(socialNetwork);
    }

    public void showSocialMenuBottomSheet(final SocialNetwork socialNetwork) {
        showDialog(DialogsFactoryKt.createOptionsBottomSheetDialog(this, socialNetwork.getSocialName(), SocialDialogActions.getActions(socialNetwork.getHasEditAccess()), SocialDialogActions.getIcons(socialNetwork.getHasEditAccess()), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ProfileActivity.this.lambda$showSocialMenuBottomSheet$5(socialNetwork, dialogInterface, i);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSocialMenuBottomSheet$5(SocialNetwork socialNetwork, DialogInterface dialogInterface, int i) {
        this.presenter.onSocialNetworkAction(SocialDialogActions.mapByOrdinal(i), socialNetwork);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAvatar() {
        openAvatar(-1);
    }

    private void setTextInfoHiddenChats() {
        if (getParentActivity() == null) {
            return;
        }
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getParentActivity());
        linksTextView.setTag(C3632R.C3635id.fit_width_tag, 1);
        linksTextView.setPadding(AndroidUtilities.m107dp(13), 0, AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8));
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        linksTextView.setText(LocaleController.getInternalString(getHiddenChatsController().isChatHidden(getDialogId()) ? C3632R.string.hidden_chats_info_unhide : C3632R.string.hidden_chats_info_search_chats));
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        actionBarMenuItem.addSubItem(linksTextView, actionBarMenuItem.getPopupLayout().getMeasuredWidth(), -2);
        this.otherItem.setFitSubItems(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateArchiveItem() {
        ActionBarMenuSubItem actionBarMenuSubItem = this.toggleArchiveItem;
        if (actionBarMenuSubItem == null) {
            return;
        }
        actionBarMenuSubItem.setVisibility(8);
        if (getMessagesController().hasDialog(getDialogId())) {
            this.toggleArchiveItem.setVisibility(getHiddenChatsController().isChatHidden(getDialogId()) ? 8 : 0);
            if (getMessagesController().isArchivedDialog(getDialogId())) {
                this.toggleArchiveItem.setText(LocaleController.getString("Unarchive", C3632R.string.Unarchive));
                this.toggleArchiveItem.setIcon(C3632R.C3634drawable.msg_unarchive);
                return;
            }
            this.toggleArchiveItem.setText(LocaleController.getString("Archive", C3632R.string.Archive));
            this.toggleArchiveItem.setIcon(C3632R.C3634drawable.msg_archive);
        }
    }

    private void updateHiddenChatsItem() {
        ActionBarMenuSubItem actionBarMenuSubItem = this.toggleHiddenChatsItem;
        if (actionBarMenuSubItem == null) {
            return;
        }
        actionBarMenuSubItem.setVisibility(8);
        if (getMessagesController().hasDialog(getDialogId())) {
            this.toggleHiddenChatsItem.setVisibility(0);
            this.toggleHiddenChatsItem.setText(LocaleController.getInternalString(getHiddenChatsController().isChatHidden(getDialogId()) ? C3632R.string.hidden_chats_unhide_chats : C3632R.string.hidden_chats_hide_chats));
            this.toggleHiddenChatsItem.setIcon(C3632R.C3634drawable.fork_filter_icon_mask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideOrUnhideChats(final boolean z) {
        getHiddenChatsController().hideChats(getDialogId(), !z);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$hideOrUnhideChats$6();
            }
        }, 150L);
        getUndoView().showWithAction(0L, z ? 23 : 2, Boolean.TRUE, null, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$hideOrUnhideChats$7(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideOrUnhideChats$6() {
        updateHiddenChatsItem();
        updateArchiveItem();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideOrUnhideChats$7(boolean z) {
        getHiddenChatsController().hideChats(getDialogId(), z);
        updateHiddenChatsItem();
        updateArchiveItem();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showChooseWalletEnvironmentDialog() {
        if (this.presenter == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.formatStringInternal(C3632R.string.debug_option_choose_wallet_environment, this.debugPresenter.getCurrentWalletEnvironment()));
        builder.setItems(Environment.getNames(), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ProfileActivity.this.lambda$showChooseWalletEnvironmentDialog$8(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChooseWalletEnvironmentDialog$8(DialogInterface dialogInterface, int i) {
        this.debugPresenter.switchWalletEnvironment(Environment.values()[i]);
    }

    private void showMembersActionConfirmationAlert(final ParticipantsActionType participantsActionType) {
        AlertsCreator.showConfirmationDialog(this, getParentActivity(), null, LocaleController.getInternalString(participantsActionType.getConfirmationDescriptionTextResId()), LocaleController.getString(participantsActionType.getConfirmationButtonTextKey(), participantsActionType.getConfirmationButtonTextResId()), true, null, new Callbacks$Callback1() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda38
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ProfileActivity.this.lambda$showMembersActionConfirmationAlert$9(participantsActionType, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMembersActionConfirmationAlert$9(ParticipantsActionType participantsActionType, Boolean bool) {
        if (bool.booleanValue()) {
            startParticipantsProcessingService(participantsActionType);
        }
    }

    private void createMenuForBlockedParticipantsAction() {
        int i;
        String str;
        CharSequence[] charSequenceArr = new CharSequence[2];
        if (this.currentChat.isChannel()) {
            i = C3632R.string.ChannelAddToChannel;
            str = "ChannelAddToChannel";
        } else {
            i = C3632R.string.ChannelAddToGroup;
            str = "ChannelAddToGroup";
        }
        charSequenceArr[0] = LocaleController.getString(str, i);
        charSequenceArr[1] = LocaleController.getString("ChannelDeleteFromList", C3632R.string.ChannelDeleteFromList);
        int[] iArr = {C3632R.C3634drawable.msg_contact_add, C3632R.C3634drawable.msg_delete};
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ProfileActivity.this.lambda$createMenuForBlockedParticipantsAction$10(dialogInterface, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenuForBlockedParticipantsAction$10(DialogInterface dialogInterface, int i) {
        showMembersActionConfirmationAlert(i == 0 ? ParticipantsActionType.RETURN : ParticipantsActionType.UNBLOCK);
    }

    private void startParticipantsProcessingService(ParticipantsActionType participantsActionType) {
        if (AndroidUtilities.isServiceRunning(FilteredChatParticipantsProcessingService.class)) {
            showToast(LocaleController.getInternalString(C3632R.string.already_processing));
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
            @Override // com.iMe.fork.p023ui.dialog.AccountLevelAlert.OnVisibilityChangedListener
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
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
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
        if (ChatProfileTelegramIdMode.isTelegramIdMode(ChatProfileTelegramIdMode.mapNameToEnum(getChatProfileController().getSelectedChatProfileTelegramIdMode()))) {
            return String.valueOf(Math.abs(getDialogId()));
        }
        return getBotApiDialogIdText();
    }

    private void onSocialRowClicked() {
        Timber.m7e("onSocialRowClicked", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateTransferButton(float f) {
        ProfileStoriesView profileStoriesView;
        if (this.transferButton == null || (profileStoriesView = this.storyView) == null || profileStoriesView.isEmpty()) {
            return;
        }
        float m107dp = AndroidUtilities.m107dp(76) * f;
        this.transferButton.setTranslationX(m107dp);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.transferButton.getLayoutParams();
        marginLayoutParams.topMargin = (int) (-m107dp);
        this.transferButton.setLayoutParams(marginLayoutParams);
    }

    /* renamed from: of */
    public static ProfileActivity m54of(long j) {
        Bundle bundle = new Bundle();
        if (j >= 0) {
            bundle.putLong("user_id", j);
        } else {
            bundle.putLong("chat_id", -j);
        }
        return new ProfileActivity(bundle);
    }

    public long getTopicId() {
        return this.topicId;
    }

    /* renamed from: org.telegram.ui.ProfileActivity$AvatarImageView */
    /* loaded from: classes5.dex */
    public static class AvatarImageView extends BackupImageView {
        ProfileGalleryView avatarsViewPager;
        public float bounceScale;
        public boolean drawAvatar;
        boolean drawForeground;
        private ImageReceiver.BitmapHolder drawableHolder;
        private float foregroundAlpha;
        private ImageReceiver foregroundImageReceiver;
        private boolean hasStories;
        private final Paint placeholderPaint;
        float progressToExpand;
        private float progressToInsets;
        private final RectF rect;

        public ChatActivityInterface getPrevFragment() {
            return null;
        }

        public void setAvatarsViewPager(ProfileGalleryView profileGalleryView) {
            this.avatarsViewPager = profileGalleryView;
        }

        public AvatarImageView(Context context) {
            super(context);
            this.rect = new RectF();
            this.drawAvatar = true;
            this.bounceScale = 1.0f;
            this.drawForeground = true;
            this.progressToInsets = 1.0f;
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
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
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
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.foregroundImageReceiver.onAttachedToWindow();
        }

        @Override // org.telegram.p043ui.Components.BackupImageView
        public void setRoundRadius(int i) {
            super.setRoundRadius(i);
            this.foregroundImageReceiver.setRoundRadius(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
        public void onDraw(Canvas canvas) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            ImageReceiver imageReceiver = animatedEmojiDrawable != null ? animatedEmojiDrawable.getImageReceiver() : this.imageReceiver;
            canvas.save();
            float f = this.bounceScale;
            canvas.scale(f, f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            float dpf2 = (this.hasStories ? (int) AndroidUtilities.dpf2(3.5f) : 0.0f) * (1.0f - this.progressToExpand);
            float f2 = this.progressToInsets;
            float f3 = this.foregroundAlpha;
            float f4 = dpf2 * f2 * (1.0f - f3);
            if (imageReceiver != null && (f3 < 1.0f || !this.drawForeground)) {
                float f5 = f4 * 2.0f;
                imageReceiver.setImageCoords(f4, f4, getMeasuredWidth() - f5, getMeasuredHeight() - f5);
                if (this.drawAvatar) {
                    imageReceiver.draw(canvas);
                }
            }
            if (this.foregroundAlpha > BitmapDescriptorFactory.HUE_RED && this.drawForeground) {
                if (this.foregroundImageReceiver.getDrawable() != null) {
                    float f6 = 2.0f * f4;
                    this.foregroundImageReceiver.setImageCoords(f4, f4, getMeasuredWidth() - f6, getMeasuredHeight() - f6);
                    this.foregroundImageReceiver.setAlpha(this.foregroundAlpha);
                    this.foregroundImageReceiver.draw(canvas);
                } else {
                    this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    this.placeholderPaint.setAlpha((int) (this.foregroundAlpha * 255.0f));
                    float f7 = this.foregroundImageReceiver.getRoundRadius()[0];
                    canvas.drawRoundRect(this.rect, f7, f7, this.placeholderPaint);
                }
            }
            canvas.restore();
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            ProfileGalleryView profileGalleryView = this.avatarsViewPager;
            if (profileGalleryView != null) {
                profileGalleryView.invalidate();
            }
        }

        public void setProgressToStoriesInsets(float f) {
            if (f == this.progressToInsets) {
                return;
            }
            this.progressToInsets = f;
            invalidate();
        }

        public void drawForeground(boolean z) {
            this.drawForeground = z;
        }

        public void setHasStories(boolean z) {
            if (this.hasStories == z) {
                return;
            }
            this.hasStories = z;
            invalidate();
        }

        public void setProgressToExpand(float f) {
            if (this.progressToExpand == f) {
                return;
            }
            this.progressToExpand = f;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$TopView */
    /* loaded from: classes5.dex */
    public class TopView extends View {
        private LinearGradient backgroundGradient;
        private int backgroundGradientColor1;
        private int backgroundGradientColor2;
        private int backgroundGradientHeight;
        private final Paint backgroundPaint;
        public int color1;
        private final AnimatedColor color1Animated;
        public int color2;
        private final AnimatedColor color2Animated;
        private int currentColor;
        private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
        private int emojiColor;
        private boolean emojiLoaded;
        public final AnimatedFloat emojiLoadedT;
        private final AnimatedFloat hasColorAnimated;
        private boolean hasColorById;
        private boolean hasEmoji;
        private Paint paint;

        public TopView(Context context) {
            super(context);
            this.paint = new Paint();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.hasColorAnimated = new AnimatedFloat(this, 350L, cubicBezierInterpolator);
            this.color1Animated = new AnimatedColor(this, 350L, cubicBezierInterpolator);
            this.color2Animated = new AnimatedColor(this, 350L, cubicBezierInterpolator);
            this.backgroundPaint = new Paint(1);
            this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, false, AndroidUtilities.m107dp(20), 13);
            this.emojiLoadedT = new AnimatedFloat(this, 0L, 440L, cubicBezierInterpolator);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i) + AndroidUtilities.m107dp(3));
        }

        @Override // android.view.View
        public void setBackgroundColor(int i) {
            if (i != this.currentColor) {
                this.currentColor = i;
                this.paint.setColor(i);
                invalidate();
                if (this.hasColorById) {
                    return;
                }
                ProfileActivity.this.actionBarBackgroundColor = this.currentColor;
            }
        }

        public void setBackgroundColorId(MessagesController.PeerColor peerColor, boolean z) {
            if (peerColor != null) {
                this.hasColorById = true;
                this.color1 = peerColor.getBgColor1(Theme.isCurrentThemeDark());
                int bgColor2 = peerColor.getBgColor2(Theme.isCurrentThemeDark());
                this.color2 = bgColor2;
                ProfileActivity.this.actionBarBackgroundColor = ColorUtils.blendARGB(this.color1, bgColor2, 0.25f);
                this.emojiColor = PeerColorActivity.adaptProfileEmojiColor(this.color1);
            } else {
                ProfileActivity.this.actionBarBackgroundColor = this.currentColor;
                this.hasColorById = false;
                ProfileActivity profileActivity = ProfileActivity.this;
                int i = Theme.key_actionBarDefault;
                if (AndroidUtilities.computePerceivedBrightness(profileActivity.getThemedColor(i)) > 0.8f) {
                    this.emojiColor = ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText);
                } else if (AndroidUtilities.computePerceivedBrightness(ProfileActivity.this.getThemedColor(i)) < 0.2f) {
                    this.emojiColor = Theme.multAlpha(ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultTitle), 0.5f);
                } else {
                    this.emojiColor = PeerColorActivity.adaptProfileEmojiColor(ProfileActivity.this.getThemedColor(i));
                }
            }
            if (!z) {
                this.color1Animated.set(this.color1, true);
                this.color2Animated.set(this.color2, true);
            }
            invalidate();
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.emoji.attach();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.emoji.detach();
        }

        public void setBackgroundEmojiId(long j, boolean z) {
            this.emoji.set(j, z);
            this.emoji.setColor(Integer.valueOf(this.emojiColor));
            this.hasEmoji = this.hasEmoji || !(j == 0 || j == -1);
            invalidate();
        }

        private boolean isEmojiLoaded() {
            if (this.emojiLoaded) {
                return true;
            }
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
            if (swapAnimatedEmojiDrawable == null || !(swapAnimatedEmojiDrawable.getDrawable() instanceof AnimatedEmojiDrawable)) {
                return false;
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) this.emoji.getDrawable();
            if (animatedEmojiDrawable.getImageReceiver() == null || !animatedEmojiDrawable.getImageReceiver().hasImageLoaded()) {
                return false;
            }
            this.emojiLoaded = true;
            return true;
        }

        @Override // android.view.View
        protected void onDraw(final Canvas canvas) {
            float currentActionBarHeight = ProfileActivity.this.extraHeight + C3704ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + ProfileActivity.this.searchTransitionOffset;
            int i = (int) ((1.0f - ProfileActivity.this.mediaHeaderAnimationProgress) * currentActionBarHeight);
            if (i != 0) {
                ChatActivityInterface chatActivityInterface = ProfileActivity.this.previousTransitionFragment;
                if (chatActivityInterface != null && chatActivityInterface.getContentView() != null) {
                    Rect rect = AndroidUtilities.rectTmp2;
                    rect.set(0, 0, getMeasuredWidth(), i);
                    if (ProfileActivity.this.previousTransitionFragment.getActionBar() != null && !ProfileActivity.this.previousTransitionFragment.getContentView().blurWasDrawn() && ProfileActivity.this.previousTransitionFragment.getActionBar().getBackground() == null) {
                        this.paint.setColor(Theme.getColor(Theme.key_actionBarDefault, ProfileActivity.this.previousTransitionFragment.getResourceProvider()));
                        canvas.drawRect(rect, this.paint);
                    } else {
                        ProfileActivity.this.previousTransitionFragment.getContentView().drawBlurRect(canvas, getY(), rect, ProfileActivity.this.previousTransitionFragment.getActionBar().blurScrimPaint, true);
                    }
                }
                this.paint.setColor(this.currentColor);
                int i2 = this.color1Animated.set(this.color1);
                int i3 = this.color2Animated.set(this.color2);
                int m107dp = AndroidUtilities.statusBarHeight + AndroidUtilities.m107dp(144);
                if (this.backgroundGradient == null || this.backgroundGradientColor1 != i2 || this.backgroundGradientColor2 != i3 || this.backgroundGradientHeight != m107dp) {
                    this.backgroundGradientHeight = m107dp;
                    this.backgroundGradientColor2 = i3;
                    this.backgroundGradientColor1 = i2;
                    LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, m107dp, new int[]{i3, i2}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                    this.backgroundGradient = linearGradient;
                    this.backgroundPaint.setShader(linearGradient);
                }
                float f = (ProfileActivity.this.playProfileAnimation == 0 ? 1.0f : ProfileActivity.this.avatarAnimationProgress) * this.hasColorAnimated.set(this.hasColorById);
                if (f < 1.0f) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), i, this.paint);
                }
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    this.backgroundPaint.setAlpha((int) (f * 255.0f));
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), i, this.backgroundPaint);
                }
                if (this.hasEmoji && this.emojiLoadedT.set(isEmojiLoaded()) > BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    canvas.clipRect(0, 0, getMeasuredWidth(), i);
                    PeerColorActivity.drawProfileIconPattern(getMeasuredWidth() - AndroidUtilities.m107dp(46), ((((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + AndroidUtilities.m107dp(144)) - ((1.0f - (ProfileActivity.this.extraHeight / AndroidUtilities.m107dp(88))) * AndroidUtilities.m107dp(33)), (((ProfileActivity.this.extraHeight / AndroidUtilities.m107dp(88)) - 1.0f) * 0.2f) + 1.0f, new Utilities.Callback4() { // from class: org.telegram.ui.ProfileActivity$TopView$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback4
                        public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                            ProfileActivity.TopView.this.lambda$onDraw$0(canvas, (Float) obj, (Float) obj2, (Float) obj3, (Float) obj4);
                        }
                    });
                    canvas.restore();
                }
                ChatActivityInterface chatActivityInterface2 = ProfileActivity.this.previousTransitionFragment;
                if (chatActivityInterface2 != null) {
                    C3704ActionBar actionBar = chatActivityInterface2.getActionBar();
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
                this.paint.setColor(ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                Rect rect2 = AndroidUtilities.rectTmp2;
                rect2.set(0, i, getMeasuredWidth(), (int) currentActionBarHeight);
                ProfileActivity.this.contentView.drawBlurRect(canvas, getY(), rect2, this.paint, true);
            }
            if (((BaseFragment) ProfileActivity.this).parentLayout != null) {
                ((BaseFragment) ProfileActivity.this).parentLayout.drawHeaderShadow(canvas, (int) (ProfileActivity.this.headerShadowAlpha * 255.0f), (int) currentActionBarHeight);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0(Canvas canvas, Float f, Float f2, Float f3, Float f4) {
            this.emoji.setAlpha((int) (f4.floatValue() * 255.0f * Math.min(1.0f, ProfileActivity.this.extraHeight / AndroidUtilities.m107dp(88))));
            this.emoji.setBounds((int) (f.floatValue() - (f3.floatValue() * 0.45f)), (int) (f2.floatValue() - (f3.floatValue() * 0.45f)), (int) (f.floatValue() + (f3.floatValue() * 0.45f)), (int) (f2.floatValue() + (f3.floatValue() * 0.45f)));
            this.emoji.draw(canvas);
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
            int currentActionBarHeight = this.statusBarHeight + C3704ActionBar.getCurrentActionBarHeight();
            this.topOverlayRect.set(0, 0, i, (int) (currentActionBarHeight * 0.5f));
            this.bottomOverlayRect.set(0, (int) (i2 - (AndroidUtilities.m108dp(72.0f) * 0.5f)), i, i2);
            this.topOverlayGradient.setBounds(0, this.topOverlayRect.bottom, i, currentActionBarHeight + AndroidUtilities.m108dp(16.0f));
            this.bottomOverlayGradient.setBounds(0, (i2 - AndroidUtilities.m108dp(72.0f)) - AndroidUtilities.m108dp(24.0f), i, this.bottomOverlayRect.top);
            int i5 = i / 5;
            this.pressedOverlayGradient[0].setBounds(0, 0, i5, i2);
            this.pressedOverlayGradient[1].setBounds(i - i5, 0, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x020d  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0231  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0248  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x024b  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r22) {
            /*
                Method dump skipped, instructions count: 783
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.OverlaysView.onDraw(android.graphics.Canvas):void");
        }

        @Override // org.telegram.p043ui.Components.ProfileGalleryView.Callback
        public void onDown(boolean z) {
            this.pressedOverlayVisible[!z ? 1 : 0] = true;
            postInvalidateOnAnimation();
        }

        @Override // org.telegram.p043ui.Components.ProfileGalleryView.Callback
        public void onRelease() {
            Arrays.fill(this.pressedOverlayVisible, false);
            postInvalidateOnAnimation();
        }

        @Override // org.telegram.p043ui.Components.ProfileGalleryView.Callback
        public void onPhotosLoaded() {
            ProfileActivity.this.updateProfileData(false);
        }

        @Override // org.telegram.p043ui.Components.ProfileGalleryView.Callback
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
                boolean z = true;
                if (view == ProfileActivity.this.listView && ProfileActivity.this.sharedMediaLayoutAttached) {
                    RecyclerListView currentListView = ProfileActivity.this.sharedMediaLayout.getCurrentListView();
                    if (ProfileActivity.this.sharedMediaLayout.getTop() == 0) {
                        iArr[1] = i4;
                        currentListView.scrollBy(0, i4);
                    }
                }
                if (i2 == 0 || i5 != 0) {
                    return;
                }
                ProfileActivity profileActivity = ProfileActivity.this;
                if (i2 <= 0) {
                    z = false;
                }
                profileActivity.hideFloatingButton(z);
            } catch (Throwable th) {
                FileLog.m102e(th);
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
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout
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
                        }
                    } else {
                        PagerIndicatorView.this.setVisibility(8);
                    }
                    ProfileActivity.this.updateStoriesViewBounds(false);
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
                    ProfileActivity.this.updateStoriesViewBounds(false);
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
                float f2 = BitmapDescriptorFactory.HUE_RED;
                if (f <= BitmapDescriptorFactory.HUE_RED) {
                    this.animator.setDuration(0L);
                } else if (z) {
                    this.animator.setDuration(((1.0f - lerp) * 250.0f) / f);
                } else {
                    this.animator.setDuration((250.0f * lerp) / f);
                }
                float[] fArr = this.animatorValues;
                fArr[0] = lerp;
                if (z) {
                    f2 = 1.0f;
                }
                fArr[1] = f2;
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
            this.indicatorRect.right = (getMeasuredWidth() - AndroidUtilities.m108dp(54.0f)) - (ProfileActivity.this.qrItem != null ? AndroidUtilities.m107dp(48) : 0);
            RectF rectF = this.indicatorRect;
            rectF.left = rectF.right - (measureText + AndroidUtilities.dpf2(16.0f));
            this.indicatorRect.top = (((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + AndroidUtilities.m108dp(15.0f);
            RectF rectF2 = this.indicatorRect;
            rectF2.bottom = rectF2.top + AndroidUtilities.m107dp(26);
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
        this.nameTextViewRightDrawable2ContentDescription = null;
        this.onlineTextView = new SimpleTextView[4];
        this.verifiedDrawable = new Drawable[2];
        this.premiumStarDrawable = new Drawable[2];
        this.emojiStatusDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[2];
        this.verifiedCheckDrawable = new Drawable[2];
        this.verifiedCrossfadeDrawable = new CrossfadeDrawable[2];
        this.premiumCrossfadeDrawable = new CrossfadeDrawable[2];
        this.scrimView = null;
        this.scrimPaint = new Paint(1) { // from class: org.telegram.ui.ProfileActivity.2
            @Override // android.graphics.Paint
            public void setAlpha(int i) {
                super.setAlpha(i);
                ProfileActivity.this.fragmentView.invalidate();
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
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
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
            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC$FileLocation tLRPC$FileLocation, int i, boolean z) {
                TLRPC$Chat chat;
                TLRPC$ChatPhoto tLRPC$ChatPhoto;
                TLRPC$FileLocation tLRPC$FileLocation2;
                TLRPC$User user;
                TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto;
                if (tLRPC$FileLocation == null) {
                    return null;
                }
                if (ProfileActivity.this.customImageLocation != null) {
                    tLRPC$FileLocation2 = tLRPC$FileLocation;
                } else if (ProfileActivity.this.userId == 0 ? ProfileActivity.this.chatId == 0 || (chat = ProfileActivity.this.getMessagesController().getChat(Long.valueOf(ProfileActivity.this.chatId))) == null || (tLRPC$ChatPhoto = chat.photo) == null || (tLRPC$FileLocation2 = tLRPC$ChatPhoto.photo_big) == null : (user = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId))) == null || (tLRPC$UserProfilePhoto = user.photo) == null || (tLRPC$FileLocation2 = tLRPC$UserProfilePhoto.photo_big) == null) {
                    tLRPC$FileLocation2 = null;
                }
                if (tLRPC$FileLocation2 != null && tLRPC$FileLocation2.local_id == tLRPC$FileLocation.local_id && tLRPC$FileLocation2.volume_id == tLRPC$FileLocation.volume_id && tLRPC$FileLocation2.dc_id == tLRPC$FileLocation.dc_id) {
                    int[] iArr = new int[2];
                    ProfileActivity.this.avatarImage.getLocationInWindow(iArr);
                    PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                    placeProviderObject.viewX = iArr[0];
                    placeProviderObject.viewY = iArr[1] - (Build.VERSION.SDK_INT >= 21 ? 0 : AndroidUtilities.statusBarHeight);
                    placeProviderObject.parentView = ProfileActivity.this.customImageLocation != null ? ProfileActivity.this.avatarsViewPager.getCurrentItemView() : ProfileActivity.this.avatarImage;
                    placeProviderObject.imageReceiver = (ProfileActivity.this.customImageLocation != null ? ProfileActivity.this.avatarsViewPager.getCurrentItemView() : ProfileActivity.this.avatarImage).getImageReceiver();
                    if (ProfileActivity.this.userId != 0) {
                        placeProviderObject.dialogId = ProfileActivity.this.userId;
                    } else if (ProfileActivity.this.chatId != 0) {
                        placeProviderObject.dialogId = -ProfileActivity.this.chatId;
                    }
                    placeProviderObject.thumb = placeProviderObject.imageReceiver.getBitmapSafe();
                    placeProviderObject.size = -1L;
                    placeProviderObject.radius = (ProfileActivity.this.customImageLocation != null ? ProfileActivity.this.avatarsViewPager.getCurrentItemView() : ProfileActivity.this.avatarImage).getImageReceiver().getRoundRadius();
                    placeProviderObject.scale = ProfileActivity.this.customImageLocation != null ? ProfileActivity.this.avatarsViewPager.getCurrentItemView().getScaleX() : ProfileActivity.this.avatarContainer.getScaleX();
                    placeProviderObject.canEdit = ProfileActivity.this.userId == ProfileActivity.this.getUserConfig().clientUserId;
                    return placeProviderObject;
                }
                return null;
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void willHidePhotoViewer() {
                ProfileActivity.this.avatarImage.getImageReceiver().setVisible(true, true);
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void openPhotoForEdit(String str, String str2, boolean z) {
                ProfileActivity.this.imageUpdater.openPhotoForEdit(str, str2, 0, z);
            }
        };
        this.floatingInterpolator = new AccelerateDecelerateInterpolator();
        this.ACTIONBAR_HEADER_PROGRESS = new AnimationProperties.FloatProperty<C3704ActionBar>("avatarAnimationProgress") { // from class: org.telegram.ui.ProfileActivity.43
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
            public void setValue(C3704ActionBar c3704ActionBar, float f) {
                int themedColor;
                int themedColor2;
                ProfileActivity.this.mediaHeaderAnimationProgress = f;
                if (ProfileActivity.this.storyView != null) {
                    ProfileActivity.this.storyView.setActionBarActionMode(f);
                }
                ProfileActivity.this.topView.invalidate();
                int themedColor3 = ProfileActivity.this.getThemedColor(Theme.key_profile_title);
                ProfileActivity profileActivity = ProfileActivity.this;
                int i = Theme.key_player_actionBarTitle;
                int themedColor4 = profileActivity.getThemedColor(i);
                int offsetColor = AndroidUtilities.getOffsetColor(themedColor3, themedColor4, f, 1.0f);
                ProfileActivity.this.nameTextView[1].setTextColor(offsetColor);
                if (ProfileActivity.this.lockIconDrawable != null) {
                    ProfileActivity.this.lockIconDrawable.setColorFilter(offsetColor, PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.scamDrawable != null) {
                    ProfileActivity.this.scamDrawable.setColor(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor(Theme.key_avatar_subtitleInProfileBlue), themedColor4, f, 1.0f));
                }
                int i2 = -1;
                ((BaseFragment) ProfileActivity.this).actionBar.setItemsColor(AndroidUtilities.getOffsetColor(ProfileActivity.this.peerColor != null ? -1 : ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultIcon), ProfileActivity.this.getThemedColor(Theme.key_actionBarActionModeDefaultIcon), f, 1.0f), false);
                if (ProfileActivity.this.peerColor != null) {
                    themedColor = 1090519039;
                } else {
                    themedColor = ProfileActivity.this.peerColor != null ? 553648127 : ProfileActivity.this.getThemedColor(Theme.key_avatar_actionBarSelectorBlue);
                }
                ((BaseFragment) ProfileActivity.this).actionBar.setItemsBackgroundColor(AndroidUtilities.getOffsetColor(themedColor, ProfileActivity.this.getThemedColor(Theme.key_actionBarActionModeDefaultSelector), f, 1.0f), false);
                ProfileActivity.this.topView.invalidate();
                ProfileActivity.this.serviceMessagesItem.setIconColor(ProfileActivity.this.peerColor != null ? -1 : ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultIcon));
                ProfileActivity.this.otherItem.setIconColor(ProfileActivity.this.peerColor != null ? -1 : ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultIcon));
                ProfileActivity.this.callItem.setIconColor(ProfileActivity.this.peerColor != null ? -1 : ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultIcon));
                ProfileActivity.this.videoCallItem.setIconColor(ProfileActivity.this.peerColor != null ? -1 : ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultIcon));
                ProfileActivity.this.editItem.setIconColor(ProfileActivity.this.peerColor != null ? -1 : ProfileActivity.this.getThemedColor(Theme.key_actionBarDefaultIcon));
                if (ProfileActivity.this.verifiedDrawable[0] != null) {
                    ProfileActivity.this.verifiedDrawable[0].setColorFilter(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor(Theme.key_profile_verifiedBackground), ProfileActivity.this.getThemedColor(i), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.verifiedDrawable[1] != null) {
                    if (ProfileActivity.this.peerColor != null) {
                        themedColor2 = Theme.adaptHSV(ColorUtils.blendARGB(ProfileActivity.this.peerColor.getColor2(), ProfileActivity.this.peerColor.hasColor6(Theme.isCurrentThemeDark()) ? ProfileActivity.this.peerColor.getColor5() : ProfileActivity.this.peerColor.getColor3(), 0.4f), 0.1f, Theme.isCurrentThemeDark() ? -0.1f : -0.08f);
                    } else {
                        themedColor2 = ProfileActivity.this.getThemedColor(Theme.key_profile_verifiedBackground);
                    }
                    ProfileActivity.this.verifiedDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(themedColor2, ProfileActivity.this.getThemedColor(i), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.verifiedCheckDrawable[0] != null) {
                    ProfileActivity.this.verifiedCheckDrawable[0].setColorFilter(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor(Theme.key_profile_verifiedCheck), ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhite), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.verifiedCheckDrawable[1] != null) {
                    if (ProfileActivity.this.peerColor == null) {
                        ProfileActivity profileActivity2 = ProfileActivity.this;
                        i2 = profileActivity2.applyPeerColor(profileActivity2.getThemedColor(Theme.key_profile_verifiedCheck));
                    }
                    ProfileActivity.this.verifiedCheckDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(i2, ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhite), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.premiumStarDrawable[0] != null) {
                    ProfileActivity.this.premiumStarDrawable[0].setColorFilter(AndroidUtilities.getOffsetColor(ProfileActivity.this.getThemedColor(Theme.key_profile_verifiedBackground), ProfileActivity.this.getThemedColor(i), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                if (ProfileActivity.this.premiumStarDrawable[1] != null) {
                    ProfileActivity profileActivity3 = ProfileActivity.this;
                    int applyPeerColor = profileActivity3.applyPeerColor(profileActivity3.getThemedColor(Theme.key_profile_verifiedBackground));
                    ProfileActivity profileActivity4 = ProfileActivity.this;
                    ProfileActivity.this.premiumStarDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(applyPeerColor, profileActivity4.applyPeerColor(profileActivity4.getThemedColor(i)), f, 1.0f), PorterDuff.Mode.MULTIPLY);
                }
                ProfileActivity.this.updateEmojiStatusDrawableColor();
                if (ProfileActivity.this.avatarsViewPagerIndicatorView.getSecondaryMenuItem() != null) {
                    if (ProfileActivity.this.serviceMessagesItemVisible || ProfileActivity.this.videoCallItemVisible || ProfileActivity.this.editItemVisible || ProfileActivity.this.callItemVisible) {
                        ProfileActivity profileActivity5 = ProfileActivity.this;
                        profileActivity5.needLayoutText(Math.min(1.0f, profileActivity5.extraHeight / AndroidUtilities.m108dp(88.0f)));
                    }
                }
            }

            @Override // android.util.Property
            public Float get(C3704ActionBar c3704ActionBar) {
                return Float.valueOf(ProfileActivity.this.mediaHeaderAnimationProgress);
            }
        };
        this.scrimAnimatorSet = null;
        this.savedScrollPosition = -1;
        this.photoDescriptionProgress = -1.0f;
        this.sharedMediaPreloader = sharedMediaPreloader;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.userId = this.arguments.getLong("user_id", 0L);
        this.chatId = this.arguments.getLong("chat_id", 0L);
        this.albumMode = getAlbumsController().isDialogAlbum(-this.chatId);
        this.topicId = this.arguments.getLong("topic_id", 0L);
        this.saved = this.arguments.getBoolean("saved", false);
        this.openSimilar = this.arguments.getBoolean("similar", false);
        this.isTopic = this.topicId != 0;
        this.banFromGroup = this.arguments.getLong("ban_chat_id", 0L);
        this.reportReactionMessageId = this.arguments.getInt("report_reaction_message_id", 0);
        this.reportReactionFromDialogId = this.arguments.getLong("report_reaction_from_dialog_id", 0L);
        this.showAddToContacts = this.arguments.getBoolean("show_add_to_contacts", true);
        this.vcardPhone = C3544PhoneFormat.stripExceptNumbers(this.arguments.getString("vcard_phone"));
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
            FlagSecureReason flagSecureReason = this.flagSecure;
            if (flagSecureReason != null) {
                flagSecureReason.invalidate();
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
                long j2 = user.f1751id;
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
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda52
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.this.lambda$onFragmentCreate$11(countDownLatch);
                    }
                });
                try {
                    countDownLatch.await();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                if (this.currentChat == null) {
                    return false;
                }
                getMessagesController().putChat(this.currentChat, true);
            }
            FlagSecureReason flagSecureReason2 = this.flagSecure;
            if (flagSecureReason2 != null) {
                flagSecureReason2.invalidate();
            }
            if (this.currentChat.megagroup) {
                getChannelParticipants(true);
            } else {
                this.participantsMap = null;
            }
            getNotificationCenter().addObserver(this, NotificationCenter.chatInfoDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.chatOnlineCountDidLoad);
            getNotificationCenter().addObserver(this, NotificationCenter.groupCallUpdated);
            getNotificationCenter().addObserver(this, NotificationCenter.channelRightsUpdated);
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
        getNotificationCenter().addObserver(this, NotificationCenter.storiesUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.storiesReadUpdated);
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
            getConnectionsManager().sendRequest(new TLRPC$TL_account_getPassword(), new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda71
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.this.lambda$onFragmentCreate$12(tLObject, tLRPC$TL_error);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$11(CountDownLatch countDownLatch) {
        this.currentChat = getMessagesStorage().getChat(this.chatId);
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$12(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_account_password) {
            this.currentPassword = (TLRPC$TL_account_password) tLObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateExceptions() {
        if (this.isTopic || !ChatObject.isForum(this.currentChat)) {
            return;
        }
        getNotificationsController().loadTopicsNotificationsExceptions(-this.chatId, new Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda63
            @Override // p033j$.util.function.Consumer
            public final void accept(Object obj) {
                ProfileActivity.this.lambda$updateExceptions$13((HashSet) obj);
            }

            @Override // p033j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateExceptions$13(HashSet hashSet) {
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
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
        getNotificationCenter().removeObserver(this, NotificationCenter.storiesUpdated);
        getNotificationCenter().removeObserver(this, NotificationCenter.storiesReadUpdated);
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
            getNotificationCenter().removeObserver(this, NotificationCenter.channelRightsUpdated);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public C3704ActionBar createActionBar(Context context) {
        ChatActivity.ThemeDelegate themeDelegate;
        BaseFragment lastFragment = this.parentLayout.getLastFragment();
        if ((lastFragment instanceof ChatActivity) && (themeDelegate = ((ChatActivity) lastFragment).themeDelegate) != null && themeDelegate.getCurrentTheme() != null) {
            this.resourcesProvider = lastFragment.getResourceProvider();
        }
        C3704ActionBar c3704ActionBar = new C3704ActionBar(context, this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.5
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                ProfileActivity.this.avatarContainer.getHitRect(ProfileActivity.this.rect);
                if (ProfileActivity.this.rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar
            public void setItemsColor(int i, boolean z) {
                super.setItemsColor(i, z);
                if (z || ProfileActivity.this.ttlIconView == null) {
                    return;
                }
                ProfileActivity.this.ttlIconView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                ProfileActivity.this.updateStoriesViewBounds(false);
            }
        };
        c3704ActionBar.setColorFilterMode(PorterDuff.Mode.SRC_IN);
        boolean z = true;
        c3704ActionBar.setForceSkipTouches(true);
        c3704ActionBar.setBackgroundColor(0);
        c3704ActionBar.setItemsBackgroundColor(this.peerColor != null ? 553648127 : getThemedColor(Theme.key_avatar_actionBarSelectorBlue), false);
        c3704ActionBar.setItemsColor(getThemedColor(Theme.key_actionBarDefaultIcon), false);
        c3704ActionBar.setBackButtonDrawable(new BackDrawable(false));
        c3704ActionBar.setCastShadows(false);
        c3704ActionBar.setAddToContainer(false);
        c3704ActionBar.setClipContent(true);
        if (Build.VERSION.SDK_INT < 21 || AndroidUtilities.isTablet() || this.inBubbleMode) {
            z = false;
        }
        c3704ActionBar.setOccupyStatusBar(z);
        final ImageView backButton = c3704ActionBar.getBackButton();
        backButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda31
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$createActionBar$15;
                lambda$createActionBar$15 = ProfileActivity.this.lambda$createActionBar$15(backButton, view);
                return lambda$createActionBar$15;
            }
        });
        return c3704ActionBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createActionBar$15(ImageView imageView, View view) {
        ActionBarPopupWindow show = BackButtonMenu.show(this, imageView, getDialogId(), getTopicId(), this.resourcesProvider);
        if (show != null) {
            show.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda32
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    ProfileActivity.this.lambda$createActionBar$14();
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
    public /* synthetic */ void lambda$createActionBar$14() {
        dimBehindView(false);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void setParentLayout(INavigationLayout iNavigationLayout) {
        super.setParentLayout(iNavigationLayout);
        FlagSecureReason flagSecureReason = this.flagSecure;
        if (flagSecureReason != null) {
            flagSecureReason.detach();
            this.flagSecure = null;
        }
        if (iNavigationLayout == null || iNavigationLayout.getParentActivity() == null) {
            return;
        }
        this.flagSecure = new FlagSecureReason(iNavigationLayout.getParentActivity().getWindow(), new FlagSecureReason.FlagSecureCondition() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda66
            @Override // org.telegram.messenger.FlagSecureReason.FlagSecureCondition
            public final boolean run() {
                boolean lambda$setParentLayout$16;
                lambda$setParentLayout$16 = ProfileActivity.this.lambda$setParentLayout$16();
                return lambda$setParentLayout$16;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$setParentLayout$16() {
        return this.currentEncryptedChat != null || getMessagesController().isChatNoForwards(this.currentChat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0a00  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0a79  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0b5e  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0b6e  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0bad  */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createView(final android.content.Context r32) {
        /*
            Method dump skipped, instructions count: 3072
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.createView(android.content.Context):android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$6 */
    /* loaded from: classes5.dex */
    public class C69966 extends C3704ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ BaseFragment val$lastFragment;

        C69966(BaseFragment baseFragment) {
            this.val$lastFragment = baseFragment;
        }

        @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
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
                return;
            }
            String str = null;
            String str2 = null;
            if (i == IdFabric$Menu.TOGGLE_ARCHIVE) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.C69966.this.lambda$onItemClick$0();
                    }
                }, 150L);
                if (ProfileActivity.this.getMessagesController().toggleArchive(ProfileActivity.this.getDialogId()) != 1) {
                    BulletinFactory.m66of(ProfileActivity.this.getLayoutContainer(), null).createSimpleBulletin(C3632R.raw.info, LocaleController.getString("Unarchive", C3632R.string.Unarchive), LocaleController.getString("ChatWasMovedToMainList", C3632R.string.ChatWasMovedToMainList), LocaleController.getString("Undo", C3632R.string.Undo).toUpperCase(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileActivity.C69966.this.lambda$onItemClick$1();
                        }
                    }).show();
                    return;
                }
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                if (globalMainSettings.getBoolean("archivehint_l", false) || SharedConfig.archiveHidden) {
                    r7 = true;
                }
                if (!r7) {
                    globalMainSettings.edit().putBoolean("archivehint_l", true).commit();
                }
                ProfileActivity.this.getUndoView().showWithAction(0L, r7 ? 2 : 3, null, new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.C69966.this.lambda$onItemClick$2();
                    }
                });
            } else if (i == IdFabric$Menu.TOGGLE_HIDDEN_CHATS) {
                if (ProfileActivity.this.getHiddenChatsController().isChatHidden(ProfileActivity.this.getDialogId())) {
                    ProfileActivity.this.hideOrUnhideChats(true);
                    return;
                }
                BaseFragment baseFragment = this.val$lastFragment;
                if (baseFragment != null) {
                    ProfileActivity.this.showDialog(AlertsCreator.createHideChatsDialog(baseFragment, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            ProfileActivity.C69966.this.lambda$onItemClick$3(dialogInterface, i2);
                        }
                    }));
                }
            } else if (i == -1) {
                ProfileActivity.this.finishFragment();
            } else if (i == 2) {
                final TLRPC$User user = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
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
                        AlertsCreator.showBlockReportSpamAlert(profileActivity, profileActivity.userId, user, null, ProfileActivity.this.currentEncryptedChat, false, null, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda14
                            @Override // org.telegram.messenger.MessagesStorage.IntCallback
                            public final void run(int i2) {
                                ProfileActivity.C69966.this.lambda$onItemClick$4(i2);
                            }
                        }, ProfileActivity.this.resourcesProvider);
                    } else {
                        AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                        builder.setTitle(LocaleController.getString("BlockUser", C3632R.string.BlockUser));
                        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureBlockContact2", C3632R.string.AreYouSureBlockContact2, ContactsController.formatName(user.first_name, user.last_name))));
                        builder.setPositiveButton(LocaleController.getString("BlockContact", C3632R.string.BlockContact), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda0
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i2) {
                                ProfileActivity.C69966.this.lambda$onItemClick$5(dialogInterface, i2);
                            }
                        });
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                        AlertDialog create = builder.create();
                        ProfileActivity.this.showDialog(create);
                        TextView textView = (TextView) create.getButton(-1);
                        if (textView != null) {
                            textView.setTextColor(ProfileActivity.this.getThemedColor(Theme.key_text_RedBold));
                        }
                    }
                } else if (ProfileActivity.this.userBlocked) {
                    ProfileActivity.this.getMessagesController().unblockPeer(ProfileActivity.this.userId, new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileActivity.C69966.this.lambda$onItemClick$7();
                        }
                    });
                    ProfileActivity.this.finishFragment();
                } else {
                    ProfileActivity profileActivity2 = ProfileActivity.this;
                    AlertsCreator.createClearOrDeleteDialogAlert(profileActivity2, false, profileActivity2.currentChat, user, ProfileActivity.this.currentEncryptedChat != null, true, true, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda13
                        @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                        public final void run(boolean z) {
                            ProfileActivity.C69966.this.lambda$onItemClick$6(user, z);
                        }
                    }, ProfileActivity.this.getResourceProvider());
                }
            } else if (i == 1) {
                TLRPC$User user2 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId));
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", user2.f1751id);
                bundle.putBoolean("addContact", true);
                ProfileActivity.this.openAddToContact(user2, bundle);
            } else if (i == 3) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("onlySelect", true);
                bundle2.putInt("dialogsType", 3);
                bundle2.putString("selectAlertString", LocaleController.getString("SendContactToText", C3632R.string.SendContactToText));
                bundle2.putString("selectAlertStringGroup", LocaleController.getString("SendContactToGroupText", C3632R.string.SendContactToGroupText));
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
                builder2.setTitle(LocaleController.getString("DeleteContact", C3632R.string.DeleteContact));
                builder2.setMessage(LocaleController.getString("AreYouSureDeleteContact", C3632R.string.AreYouSureDeleteContact));
                builder2.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProfileActivity.C69966.this.lambda$onItemClick$8(user3, dialogInterface, i2);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                AlertDialog create2 = builder2.create();
                ProfileActivity.this.showDialog(create2);
                TextView textView2 = (TextView) create2.getButton(-1);
                if (textView2 != null) {
                    textView2.setTextColor(ProfileActivity.this.getThemedColor(Theme.key_text_RedBold));
                }
            } else if (i == 7) {
                ProfileActivity.this.leaveChatPressed();
            } else if (i == 23) {
                AlertDialog.Builder builder3 = new AlertDialog.Builder(ProfileActivity.this.getContext());
                builder3.setTitle(LocaleController.getPluralString("DeleteTopics", 1));
                TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getTopicsController().findTopic(ProfileActivity.this.chatId, ProfileActivity.this.topicId);
                int i2 = C3632R.string.DeleteSelectedTopic;
                Object[] objArr = new Object[1];
                objArr[0] = findTopic == null ? "topic" : findTopic.title;
                builder3.setMessage(LocaleController.formatString("DeleteSelectedTopic", i2, objArr));
                builder3.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity.6.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        ArrayList<Integer> arrayList = new ArrayList<>();
                        arrayList.add(Integer.valueOf((int) ProfileActivity.this.topicId));
                        ProfileActivity.this.getMessagesController().getTopicsController().deleteTopics(ProfileActivity.this.chatId, arrayList);
                        ProfileActivity.this.playProfileAnimation = 0;
                        if (((BaseFragment) ProfileActivity.this).parentLayout != null && ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack() != null) {
                            for (int i4 = 0; i4 < ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack().size(); i4++) {
                                BaseFragment baseFragment2 = ((BaseFragment) ProfileActivity.this).parentLayout.getFragmentStack().get(i4);
                                if ((baseFragment2 instanceof ChatActivity) && ((ChatActivity) baseFragment2).getTopicId() == ProfileActivity.this.topicId) {
                                    baseFragment2.removeSelfFromStack();
                                }
                            }
                        }
                        ProfileActivity.this.finishFragment();
                        Context context = ProfileActivity.this.getContext();
                        if (context != null) {
                            BulletinFactory.m66of(Bulletin.BulletinWindow.make(context), ProfileActivity.this.resourcesProvider).createSimpleBulletin(C3632R.raw.ic_delete, LocaleController.getPluralString("TopicsDeleted", 1)).show();
                        }
                        dialogInterface.dismiss();
                    }
                });
                builder3.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener(this) { // from class: org.telegram.ui.ProfileActivity.6.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        dialogInterface.dismiss();
                    }
                });
                AlertDialog create3 = builder3.create();
                create3.show();
                TextView textView3 = (TextView) create3.getButton(-1);
                if (textView3 != null) {
                    textView3.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                }
            } else if (i == 12) {
                if (ProfileActivity.this.isTopic) {
                    new Bundle().putLong("chat_id", ProfileActivity.this.chatId);
                    ProfileActivity.this.presentFragment(TopicCreateFragment.create(ProfileActivity.this.chatId, ProfileActivity.this.topicId));
                    return;
                }
                Bundle bundle4 = new Bundle();
                if (ProfileActivity.this.chatId != 0) {
                    bundle4.putLong("chat_id", ProfileActivity.this.chatId);
                } else if (ProfileActivity.this.isBot) {
                    bundle4.putLong("user_id", ProfileActivity.this.userId);
                }
                ChatEditActivity chatEditActivity = new ChatEditActivity(bundle4);
                if (ProfileActivity.this.chatInfo != null) {
                    chatEditActivity.setInfo(ProfileActivity.this.chatInfo);
                } else {
                    chatEditActivity.setInfo(ProfileActivity.this.userInfo);
                }
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
                dialogsActivity2.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda17
                    @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
                    public final boolean didSelectDialogs(DialogsActivity dialogsActivity3, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                        boolean lambda$onItemClick$12;
                        lambda$onItemClick$12 = ProfileActivity.C69966.this.lambda$onItemClick$12(user4, dialogsActivity2, dialogsActivity3, arrayList, charSequence, z, topicsFragment, callbacks$Callback1);
                        return lambda$onItemClick$12;
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
                    ProfileActivity.this.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("BotShare", C3632R.string.BotShare)), 500);
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            } else if (i == 14) {
                try {
                    if (ProfileActivity.this.currentEncryptedChat != null) {
                        j = DialogObject.makeEncryptedDialogId(ProfileActivity.this.currentEncryptedChat.f1614id);
                    } else if (ProfileActivity.this.userId != 0) {
                        j = ProfileActivity.this.userId;
                    } else if (ProfileActivity.this.chatId == 0) {
                        return;
                    } else {
                        j = -ProfileActivity.this.chatId;
                    }
                    ProfileActivity.this.getMediaDataController().installShortcut(j);
                } catch (Exception e2) {
                    FileLog.m102e(e2);
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
                        VoIPHelper.startCall(tLRPC$Chat, null, null, false, parentActivity, profileActivity4, profileActivity4.getAccountInstance());
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
                if (!ProfileActivity.this.chatInfo.can_view_stats) {
                    bundle7.putBoolean("only_boosts", true);
                }
                ProfileActivity.this.presentFragment(new StatisticActivity(bundle7));
            } else if (i == 22) {
                ProfileActivity.this.openDiscussion();
            } else if (i == 38) {
                ProfileActivity profileActivity6 = ProfileActivity.this;
                ProfileActivity profileActivity7 = ProfileActivity.this;
                profileActivity6.showDialog(new GiftPremiumBottomSheet(profileActivity7, profileActivity7.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId))));
            } else if (i == 39) {
                Bundle bundle8 = new Bundle();
                bundle8.putInt(SessionDescription.ATTR_TYPE, 2);
                bundle8.putLong("dialog_id", -ProfileActivity.this.chatId);
                MediaActivity mediaActivity = new MediaActivity(bundle8, null);
                mediaActivity.setChatInfo(ProfileActivity.this.chatInfo);
                ProfileActivity.this.presentFragment(mediaActivity);
            } else if (i == 20) {
                AlertDialog.Builder builder4 = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                builder4.setTitle(LocaleController.getString("AreYouSureSecretChatTitle", C3632R.string.AreYouSureSecretChatTitle));
                builder4.setMessage(LocaleController.getString("AreYouSureSecretChat", C3632R.string.AreYouSureSecretChat));
                builder4.setPositiveButton(LocaleController.getString("Start", C3632R.string.Start), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        ProfileActivity.C69966.this.lambda$onItemClick$13(dialogInterface, i3);
                    }
                });
                builder4.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
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
                    r7 = imageLocation.imageType == 2;
                    File pathToAttach = FileLoader.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getPathToAttach(imageLocation.location, r7 ? "mp4" : null, true);
                    if (pathToAttach.exists()) {
                        MediaController.saveFile(pathToAttach.toString(), ProfileActivity.this.getParentActivity(), 0, null, null, new Utilities.Callback() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda15
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                ProfileActivity.C69966.this.lambda$onItemClick$14(r2, (Uri) obj);
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
            } else if (i == 40) {
                ProfileActivity.this.presentFragment(new PeerColorActivity(0L).startOnProfile().setOnApplied(ProfileActivity.this));
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
                tLRPC$TL_photos_updateProfilePhoto.f1732id = tLRPC$TL_inputPhoto;
                tLRPC$TL_inputPhoto.f1624id = photo.f1632id;
                tLRPC$TL_inputPhoto.access_hash = photo.access_hash;
                tLRPC$TL_inputPhoto.file_reference = photo.file_reference;
                final UserConfig userConfig = ProfileActivity.this.getUserConfig();
                ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_photos_updateProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda16
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        ProfileActivity.C69966.this.lambda$onItemClick$16(userConfig, photo, tLObject, tLRPC$TL_error);
                    }
                });
                ProfileActivity.this.undoView.showWithAction(ProfileActivity.this.userId, 22, photo.video_sizes.isEmpty() ? null : 1);
                TLRPC$User user7 = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 800);
                if (user7 != null) {
                    TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 90);
                    TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = user7.photo;
                    tLRPC$UserProfilePhoto.photo_id = photo.f1632id;
                    tLRPC$UserProfilePhoto.photo_small = closestPhotoSizeWithSize2.location;
                    tLRPC$UserProfilePhoto.photo_big = closestPhotoSizeWithSize.location;
                    userConfig.setCurrentUser(user7);
                    userConfig.saveConfig(true);
                    NotificationCenter.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
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
                boolean z = imageLocation2.imageType == 2;
                if (z) {
                    ImageLocation realImageLocation = ProfileActivity.this.avatarsViewPager.getRealImageLocation(realPosition2);
                    str2 = FileLoader.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getPathToAttach(PhotoViewer.getFileLocation(realImageLocation), PhotoViewer.getFileLocationExt(realImageLocation), true).getAbsolutePath();
                }
                ProfileActivity.this.imageUpdater.openPhotoForEdit(pathToAttach2.getAbsolutePath(), str2, 0, z);
            } else if (i != 35) {
                if (i == 36) {
                    ProfileActivity.this.onWriteButtonClick();
                } else if (i != 37 || ProfileActivity.this.qrItem == null || ProfileActivity.this.qrItem.getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                } else {
                    Bundle bundle9 = new Bundle();
                    bundle9.putLong("chat_id", ProfileActivity.this.chatId);
                    bundle9.putLong("user_id", ProfileActivity.this.userId);
                    ProfileActivity.this.presentFragment(new QrActivity(bundle9));
                }
            } else {
                AlertDialog.Builder builder5 = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                ImageLocation imageLocation3 = ProfileActivity.this.avatarsViewPager.getImageLocation(ProfileActivity.this.avatarsViewPager.getRealPosition());
                if (imageLocation3 == null) {
                    return;
                }
                if (imageLocation3.imageType == 2) {
                    builder5.setTitle(LocaleController.getString("AreYouSureDeleteVideoTitle", C3632R.string.AreYouSureDeleteVideoTitle));
                    builder5.setMessage(LocaleController.formatString("AreYouSureDeleteVideo", C3632R.string.AreYouSureDeleteVideo, new Object[0]));
                } else {
                    builder5.setTitle(LocaleController.getString("AreYouSureDeletePhotoTitle", C3632R.string.AreYouSureDeletePhotoTitle));
                    builder5.setMessage(LocaleController.formatString("AreYouSureDeletePhoto", C3632R.string.AreYouSureDeletePhoto, new Object[0]));
                }
                builder5.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        ProfileActivity.C69966.this.lambda$onItemClick$17(dialogInterface, i4);
                    }
                });
                builder5.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                AlertDialog create4 = builder5.create();
                ProfileActivity.this.showDialog(create4);
                TextView textView4 = (TextView) create4.getButton(-1);
                if (textView4 != null) {
                    textView4.setTextColor(ProfileActivity.this.getThemedColor(Theme.key_text_RedBold));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ProfileActivity.this.updateArchiveItem();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1() {
            ProfileActivity.this.getMessagesController().toggleArchive(ProfileActivity.this.getDialogId());
            ProfileActivity.this.updateArchiveItem();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2() {
            ProfileActivity.this.getMessagesController().toggleArchive(ProfileActivity.this.getDialogId());
            ProfileActivity.this.updateArchiveItem();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$3(DialogInterface dialogInterface, int i) {
            ProfileActivity.this.hideOrUnhideChats(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(int i) {
            if (i == 1) {
                NotificationCenter notificationCenter = ProfileActivity.this.getNotificationCenter();
                ProfileActivity profileActivity = ProfileActivity.this;
                int i2 = NotificationCenter.closeChats;
                notificationCenter.removeObserver(profileActivity, i2);
                ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i2, new Object[0]);
                ProfileActivity.this.playProfileAnimation = 0;
                ProfileActivity.this.finishFragment();
                return;
            }
            ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.peerSettingsDidLoad, Long.valueOf(ProfileActivity.this.userId));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$5(DialogInterface dialogInterface, int i) {
            ProfileActivity.this.getMessagesController().blockPeer(ProfileActivity.this.userId);
            if (BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                BulletinFactory.createBanBulletin(ProfileActivity.this, true).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$6(TLRPC$User tLRPC$User, boolean z) {
            if (ProfileActivity.this.getParentLayout() == null) {
                return;
            }
            List<BaseFragment> fragmentStack = ProfileActivity.this.getParentLayout().getFragmentStack();
            if (((fragmentStack == null || fragmentStack.size() < 2) ? null : fragmentStack.get(fragmentStack.size() - 2)) instanceof ChatActivity) {
                ProfileActivity.this.getParentLayout().removeFragmentFromStack(fragmentStack.size() - 2);
            }
            ProfileActivity.this.finishFragment();
            ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needDeleteDialog, Long.valueOf(ProfileActivity.this.dialogId), tLRPC$User, ProfileActivity.this.currentChat, Boolean.valueOf(z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$7() {
            ProfileActivity.this.getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m94of("/start", ProfileActivity.this.userId, null, null, null, false, null, null, null, true, 0, null, false, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$8(TLRPC$User tLRPC$User, DialogInterface dialogInterface, int i) {
            ArrayList<TLRPC$User> arrayList = new ArrayList<>();
            arrayList.add(tLRPC$User);
            ProfileActivity.this.getContactsController().deleteContact(arrayList, true);
            if (tLRPC$User != null) {
                tLRPC$User.contact = false;
                ProfileActivity.this.updateListAnimated(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onItemClick$12(final TLRPC$User tLRPC$User, final DialogsActivity dialogsActivity, final DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
            if (callbacks$Callback1 != null) {
                callbacks$Callback1.invoke(null);
                return true;
            }
            final long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            TLRPC$Chat chat = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getChat(Long.valueOf(-j));
            if (chat != null && (chat.creator || ((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.add_admins))) {
                ProfileActivity.this.getMessagesController().checkIsInChat(false, chat, tLRPC$User, new MessagesController.IsInChatCheckedCallback() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.MessagesController.IsInChatCheckedCallback
                    public final void run(boolean z2, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2, String str) {
                        ProfileActivity.C69966.this.lambda$onItemClick$10(j, dialogsActivity, z2, tLRPC$TL_chatAdminRights2, str);
                    }
                });
            } else {
                AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                int i = C3632R.string.AddBot;
                builder.setTitle(LocaleController.getString("AddBot", i));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("AddMembersAlertNamesText", C3632R.string.AddMembersAlertNamesText, UserObject.getUserName(tLRPC$User), chat == null ? "" : chat.title)));
                builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                builder.setPositiveButton(LocaleController.getString("AddBot", i), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        ProfileActivity.C69966.this.lambda$onItemClick$11(j, dialogsActivity2, tLRPC$User, dialogInterface, i2);
                    }
                });
                ProfileActivity.this.showDialog(builder.create());
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$10(final long j, final DialogsActivity dialogsActivity, final boolean z, final TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.C69966.this.lambda$onItemClick$9(j, tLRPC$TL_chatAdminRights, str, z, dialogsActivity);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$9(long j, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, String str, boolean z, final DialogsActivity dialogsActivity) {
            ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(ProfileActivity.this.userId, -j, tLRPC$TL_chatAdminRights, null, null, str, 2, true, !z, null);
            chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ProfileActivity.6.3
                @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
                public void didChangeOwner(TLRPC$User tLRPC$User) {
                }

                @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
                public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str2) {
                    ProfileActivity.this.disableProfileAnimation = true;
                    dialogsActivity.removeSelfFromStack();
                    NotificationCenter notificationCenter = ProfileActivity.this.getNotificationCenter();
                    ProfileActivity profileActivity = ProfileActivity.this;
                    int i2 = NotificationCenter.closeChats;
                    notificationCenter.removeObserver(profileActivity, i2);
                    ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i2, new Object[0]);
                }
            });
            ProfileActivity.this.presentFragment(chatRightsEditActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$11(long j, DialogsActivity dialogsActivity, TLRPC$User tLRPC$User, DialogInterface dialogInterface, int i) {
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
                ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i2, new Object[0]);
                ProfileActivity.this.getMessagesController().addUserToChat(j2, tLRPC$User, 0, null, chatActivity, true, null, null);
                ProfileActivity.this.presentFragment(chatActivity, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$13(DialogInterface dialogInterface, int i) {
            ProfileActivity.this.creatingChat = true;
            ProfileActivity.this.getSecretChatHelper().startSecretChat(ProfileActivity.this.getParentActivity(), ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$14(boolean z, Uri uri) {
            if (ProfileActivity.this.getParentActivity() == null) {
                return;
            }
            BulletinFactory.createSaveToGalleryBulletin(ProfileActivity.this, z, (Theme.ResourcesProvider) null).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$16(final UserConfig userConfig, final TLRPC$Photo tLRPC$Photo, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$6$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.C69966.this.lambda$onItemClick$15(tLObject, userConfig, tLRPC$Photo);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$15(TLObject tLObject, UserConfig userConfig, TLRPC$Photo tLRPC$Photo) {
            ProfileActivity.this.avatarsViewPager.finishSettingMainPhoto();
            if (tLObject instanceof TLRPC$TL_photos_photo) {
                TLRPC$TL_photos_photo tLRPC$TL_photos_photo = (TLRPC$TL_photos_photo) tLObject;
                ProfileActivity.this.getMessagesController().putUsers(tLRPC$TL_photos_photo.users, false);
                TLRPC$User user = ProfileActivity.this.getMessagesController().getUser(Long.valueOf(userConfig.clientUserId));
                if (tLRPC$TL_photos_photo.photo instanceof TLRPC$TL_photo) {
                    ProfileActivity.this.avatarsViewPager.replaceFirstPhoto(tLRPC$Photo, tLRPC$TL_photos_photo.photo);
                    if (user != null) {
                        user.photo.photo_id = tLRPC$TL_photos_photo.photo.f1632id;
                        userConfig.setCurrentUser(user);
                        userConfig.saveConfig(true);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$17(DialogInterface dialogInterface, int i) {
            TLRPC$Photo tLRPC$Photo;
            int realPosition = ProfileActivity.this.avatarsViewPager.getRealPosition();
            TLRPC$Photo photo = ProfileActivity.this.avatarsViewPager.getPhoto(realPosition);
            TLRPC$UserFull userInfo = ProfileActivity.this.getUserInfo();
            if (ProfileActivity.this.avatar == null || realPosition != 0) {
                if (ProfileActivity.this.hasFallbackPhoto && photo != null && userInfo != null && (tLRPC$Photo = userInfo.fallback_photo) != null && tLRPC$Photo.f1632id == photo.f1632id) {
                    userInfo.fallback_photo = null;
                    userInfo.flags &= -4194305;
                    ProfileActivity.this.getMessagesStorage().updateUserInfo(userInfo, true);
                    ProfileActivity.this.updateProfileData(false);
                }
                if (ProfileActivity.this.avatarsViewPager.getRealCount() == 1) {
                    ProfileActivity.this.setForegroundImage(true);
                }
                if (photo == null || ProfileActivity.this.avatarsViewPager.getRealPosition() == 0) {
                    TLRPC$Photo photo2 = ProfileActivity.this.avatarsViewPager.getPhoto(1);
                    if (photo2 != null) {
                        ProfileActivity.this.getUserConfig().getCurrentUser().photo = new TLRPC$TL_userProfilePhoto();
                        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, 90);
                        TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(photo2.sizes, 1000);
                        if (closestPhotoSizeWithSize != null && closestPhotoSizeWithSize2 != null) {
                            ProfileActivity.this.getUserConfig().getCurrentUser().photo.photo_small = closestPhotoSizeWithSize.location;
                            ProfileActivity.this.getUserConfig().getCurrentUser().photo.photo_big = closestPhotoSizeWithSize2.location;
                        }
                    } else {
                        ProfileActivity.this.getUserConfig().getCurrentUser().photo = new TLRPC$TL_userProfilePhotoEmpty();
                    }
                    ProfileActivity.this.getMessagesController().deleteUserPhoto(null);
                } else {
                    TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
                    tLRPC$TL_inputPhoto.f1624id = photo.f1632id;
                    tLRPC$TL_inputPhoto.access_hash = photo.access_hash;
                    byte[] bArr = photo.file_reference;
                    tLRPC$TL_inputPhoto.file_reference = bArr;
                    if (bArr == null) {
                        tLRPC$TL_inputPhoto.file_reference = new byte[0];
                    }
                    ProfileActivity.this.getMessagesController().deleteUserPhoto(tLRPC$TL_inputPhoto);
                    ProfileActivity.this.getMessagesStorage().clearUserPhoto(ProfileActivity.this.userId, photo.f1632id);
                }
                if (ProfileActivity.this.avatarsViewPager.removePhotoAtIndex(realPosition)) {
                    ProfileActivity.this.avatarsViewPager.setVisibility(8);
                    ProfileActivity.this.avatarImage.setForegroundAlpha(1.0f);
                    ProfileActivity.this.avatarContainer.setVisibility(0);
                    ProfileActivity.this.doNotSetForeground = true;
                    View findViewByPosition = ProfileActivity.this.layoutManager.findViewByPosition(0);
                    if (findViewByPosition != null) {
                        ProfileActivity.this.listView.smoothScrollBy(0, findViewByPosition.getTop() - AndroidUtilities.m107dp(88), CubicBezierInterpolator.EASE_OUT_QUINT);
                        return;
                    }
                    return;
                }
                return;
            }
            ProfileActivity.this.imageUpdater.cancel();
            ProfileActivity profileActivity = ProfileActivity.this;
            if (profileActivity.avatarUploadingRequest != 0) {
                profileActivity.getConnectionsManager().cancelRequest(ProfileActivity.this.avatarUploadingRequest, true);
            }
            ProfileActivity.this.allowPullingDown = (AndroidUtilities.isTablet() || ProfileActivity.this.isInLandscapeMode || !ProfileActivity.this.avatarImage.getImageReceiver().hasNotThumb() || AndroidUtilities.isAccessibilityScreenReaderEnabled()) ? false : true;
            ProfileActivity.this.avatar = null;
            ProfileActivity.this.avatarBig = null;
            ProfileActivity.this.avatarsViewPager.scrolledByUser = true;
            ProfileActivity.this.avatarsViewPager.removeUploadingImage(ProfileActivity.this.uploadingImageLocation);
            ProfileActivity.this.avatarsViewPager.setCreateThumbFromParent(false);
            ProfileActivity.this.updateProfileData(true);
            ProfileActivity.this.showAvatarProgress(false, true);
            ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_ALL));
            ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
            ProfileActivity.this.getUserConfig().saveConfig(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$7 */
    /* loaded from: classes5.dex */
    public class C70007 extends NestedFrameLayout {
        private Paint grayPaint;
        private boolean ignoreLayout;
        private final ArrayList<View> sortedChildren;
        private final Comparator<View> viewComparator;
        private boolean wasPortrait;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        C70007(Context context) {
            super(context);
            this.grayPaint = new Paint();
            this.sortedChildren = new ArrayList<>();
            this.viewComparator = new Comparator() { // from class: org.telegram.ui.ProfileActivity$7$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$$1;
                    lambda$$1 = ProfileActivity.C70007.lambda$$1((View) obj, (View) obj2);
                    return lambda$$1;
                }
            };
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

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            boolean z;
            int m108dp;
            int i3;
            int i4;
            View view;
            boolean z2;
            int measuredWidth;
            int max;
            int currentActionBarHeight = C3704ActionBar.getCurrentActionBarHeight() + (((BaseFragment) ProfileActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
            if (ProfileActivity.this.listView != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ProfileActivity.this.listView.getLayoutParams();
                if (layoutParams.topMargin != currentActionBarHeight) {
                    layoutParams.topMargin = currentActionBarHeight;
                }
            }
            if (ProfileActivity.this.searchListView != null) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) ProfileActivity.this.searchListView.getLayoutParams();
                if (layoutParams2.topMargin != currentActionBarHeight) {
                    layoutParams2.topMargin = currentActionBarHeight;
                }
            }
            int size = View.MeasureSpec.getSize(i2);
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, 1073741824));
            if (ProfileActivity.this.lastMeasuredContentWidth == getMeasuredWidth() && ProfileActivity.this.lastMeasuredContentHeight == getMeasuredHeight()) {
                z = false;
            } else {
                z = (ProfileActivity.this.lastMeasuredContentWidth == 0 || ProfileActivity.this.lastMeasuredContentWidth == getMeasuredWidth()) ? false : true;
                ProfileActivity.this.listContentHeight = 0;
                int itemCount = ProfileActivity.this.listAdapter.getItemCount();
                ProfileActivity.this.lastMeasuredContentWidth = getMeasuredWidth();
                ProfileActivity.this.lastMeasuredContentHeight = getMeasuredHeight();
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(ProfileActivity.this.listView.getMeasuredHeight(), 0);
                ProfileActivity.this.positionToOffset.clear();
                for (int i5 = 0; i5 < itemCount; i5++) {
                    int itemViewType = ProfileActivity.this.listAdapter.getItemViewType(i5);
                    ProfileActivity.this.positionToOffset.put(Integer.valueOf(i5), Integer.valueOf(ProfileActivity.this.listContentHeight));
                    if (itemViewType != 13) {
                        RecyclerView.ViewHolder createViewHolder = ProfileActivity.this.listAdapter.createViewHolder(null, itemViewType);
                        ProfileActivity.this.listAdapter.onBindViewHolder(createViewHolder, i5);
                        createViewHolder.itemView.measure(makeMeasureSpec, makeMeasureSpec2);
                        ProfileActivity.access$10112(ProfileActivity.this, createViewHolder.itemView.getMeasuredHeight());
                    } else {
                        ProfileActivity profileActivity = ProfileActivity.this;
                        ProfileActivity.access$10112(profileActivity, profileActivity.listView.getMeasuredHeight());
                    }
                }
                if (ProfileActivity.this.emptyView != null) {
                    ((FrameLayout.LayoutParams) ProfileActivity.this.emptyView.getLayoutParams()).topMargin = AndroidUtilities.m107dp(88) + AndroidUtilities.statusBarHeight;
                }
            }
            ProfileActivity profileActivity2 = ProfileActivity.this;
            if (profileActivity2.previousTransitionFragment != null) {
                profileActivity2.nameTextView[0].setRightPadding(ProfileActivity.this.nameTextView[0].getMeasuredWidth() - ProfileActivity.this.previousTransitionFragment.getAvatarContainer().getTitleTextView().getMeasuredWidth());
            }
            if (ProfileActivity.this.fragmentOpened || (!ProfileActivity.this.expandPhoto && (!ProfileActivity.this.openAnimationInProgress || ProfileActivity.this.playProfileAnimation != 2))) {
                if (ProfileActivity.this.fragmentOpened && !ProfileActivity.this.openAnimationInProgress && !ProfileActivity.this.firstLayout) {
                    boolean z3 = true;
                    this.ignoreLayout = true;
                    if (!ProfileActivity.this.isInLandscapeMode && !AndroidUtilities.isTablet()) {
                        m108dp = ProfileActivity.this.listView.getMeasuredWidth();
                        i3 = Math.max(0, getMeasuredHeight() - ((ProfileActivity.this.listContentHeight + AndroidUtilities.m107dp(88)) + currentActionBarHeight));
                    } else {
                        m108dp = AndroidUtilities.m108dp(88.0f);
                        i3 = 0;
                    }
                    if (ProfileActivity.this.banFromGroup == 0) {
                        ProfileActivity.this.listView.setBottomGlowOffset(0);
                    } else {
                        i3 += AndroidUtilities.m107dp(48);
                        ProfileActivity.this.listView.setBottomGlowOffset(AndroidUtilities.m107dp(48));
                    }
                    int paddingTop = ProfileActivity.this.listView.getPaddingTop();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= ProfileActivity.this.listView.getChildCount()) {
                            i4 = -1;
                            view = null;
                            break;
                        }
                        int childAdapterPosition = ProfileActivity.this.listView.getChildAdapterPosition(ProfileActivity.this.listView.getChildAt(i6));
                        if (childAdapterPosition != -1) {
                            View childAt = ProfileActivity.this.listView.getChildAt(i6);
                            i4 = childAdapterPosition;
                            view = childAt;
                            break;
                        }
                        i6++;
                    }
                    if (view == null && (view = ProfileActivity.this.listView.getChildAt(0)) != null) {
                        RecyclerView.ViewHolder findContainingViewHolder = ProfileActivity.this.listView.findContainingViewHolder(view);
                        int adapterPosition = findContainingViewHolder.getAdapterPosition();
                        i4 = adapterPosition == -1 ? findContainingViewHolder.getPosition() : adapterPosition;
                    }
                    int top = view != null ? view.getTop() : m108dp;
                    if ((((BaseFragment) ProfileActivity.this).actionBar.isSearchFieldVisible() || ProfileActivity.this.openSimilar) && ProfileActivity.this.sharedMediaRow >= 0) {
                        ProfileActivity.this.layoutManager.scrollToPositionWithOffset(ProfileActivity.this.sharedMediaRow, -m108dp);
                    } else {
                        if (ProfileActivity.this.invalidateScroll || paddingTop != m108dp) {
                            ProfileActivity profileActivity3 = ProfileActivity.this;
                            if (profileActivity3.savedScrollPosition >= 0) {
                                LinearLayoutManager linearLayoutManager = profileActivity3.layoutManager;
                                ProfileActivity profileActivity4 = ProfileActivity.this;
                                linearLayoutManager.scrollToPositionWithOffset(profileActivity4.savedScrollPosition, profileActivity4.savedScrollOffset - m108dp);
                            } else if ((!z || !profileActivity3.allowPullingDown) && view != null) {
                                if (i4 == 0 && !ProfileActivity.this.allowPullingDown && top > AndroidUtilities.m107dp(88)) {
                                    top = AndroidUtilities.m107dp(88);
                                }
                                ProfileActivity.this.layoutManager.scrollToPositionWithOffset(i4, top - m108dp);
                                z3 = true;
                            } else {
                                ProfileActivity.this.layoutManager.scrollToPositionWithOffset(0, AndroidUtilities.m107dp(88) - m108dp);
                            }
                        }
                        z3 = false;
                    }
                    if (paddingTop == m108dp && ProfileActivity.this.listView.getPaddingBottom() == i3) {
                        z2 = z3;
                    } else {
                        ProfileActivity.this.listView.setPadding(0, m108dp, 0, i3);
                        z2 = true;
                    }
                    if (z2) {
                        measureChildWithMargins(ProfileActivity.this.listView, i, 0, i2, 0);
                        try {
                            ProfileActivity.this.listView.layout(0, currentActionBarHeight, ProfileActivity.this.listView.getMeasuredWidth(), ProfileActivity.this.listView.getMeasuredHeight() + currentActionBarHeight);
                        } catch (Exception e) {
                            FileLog.m102e(e);
                        }
                    }
                    this.ignoreLayout = false;
                }
            } else {
                this.ignoreLayout = true;
                if (ProfileActivity.this.expandPhoto) {
                    if (ProfileActivity.this.searchItem != null) {
                        ProfileActivity.this.searchItem.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        ProfileActivity.this.searchItem.setEnabled(false);
                        ProfileActivity.this.searchItem.setVisibility(8);
                    }
                    ProfileActivity.this.nameTextView[1].setTextColor(-1);
                    ProfileActivity.this.nameTextView[1].setPivotY(ProfileActivity.this.nameTextView[1].getMeasuredHeight());
                    ProfileActivity.this.nameTextView[1].setScaleX(1.67f);
                    ProfileActivity.this.nameTextView[1].setScaleY(1.67f);
                    if (ProfileActivity.this.scamDrawable != null) {
                        ProfileActivity.this.scamDrawable.setColor(Color.argb(179, 255, 255, 255));
                    }
                    if (ProfileActivity.this.lockIconDrawable != null) {
                        ProfileActivity.this.lockIconDrawable.setColorFilter(-1, PorterDuff.Mode.MULTIPLY);
                    }
                    if (ProfileActivity.this.verifiedCrossfadeDrawable[0] != null) {
                        ProfileActivity.this.verifiedCrossfadeDrawable[0].setProgress(1.0f);
                    }
                    if (ProfileActivity.this.verifiedCrossfadeDrawable[1] != null) {
                        ProfileActivity.this.verifiedCrossfadeDrawable[1].setProgress(1.0f);
                    }
                    if (ProfileActivity.this.premiumCrossfadeDrawable[0] != null) {
                        ProfileActivity.this.premiumCrossfadeDrawable[0].setProgress(1.0f);
                    }
                    if (ProfileActivity.this.premiumCrossfadeDrawable[1] != null) {
                        ProfileActivity.this.premiumCrossfadeDrawable[1].setProgress(1.0f);
                    }
                    ProfileActivity.this.updateEmojiStatusDrawableColor(1.0f);
                    ProfileActivity.this.onlineTextView[1].setTextColor(-1275068417);
                    ((BaseFragment) ProfileActivity.this).actionBar.setItemsBackgroundColor(1090519039, false);
                    ((BaseFragment) ProfileActivity.this).actionBar.setItemsColor(-1, false);
                    ProfileActivity.this.overlaysView.setOverlaysVisible();
                    ProfileActivity.this.overlaysView.setAlphaValue(1.0f, false);
                    ProfileActivity.this.avatarImage.setForegroundAlpha(1.0f);
                    ProfileActivity.this.avatarContainer.setVisibility(8);
                    ProfileActivity.this.avatarsViewPager.resetCurrentItem();
                    ProfileActivity.this.avatarsViewPager.setVisibility(0);
                    if (ProfileActivity.this.showStatusButton != null) {
                        ProfileActivity.this.showStatusButton.setBackgroundColor(603979775);
                    }
                    if (ProfileActivity.this.storyView != null) {
                        ProfileActivity.this.storyView.setExpandProgress(1.0f);
                    }
                    ProfileActivity.this.animateTransferButton(1.0f);
                    ProfileActivity.this.expandPhoto = false;
                }
                ProfileActivity.this.allowPullingDown = true;
                ProfileActivity.this.isPulledDown = true;
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
                if (ProfileActivity.this.otherItem != null) {
                    if (!ProfileActivity.this.getMessagesController().isChatNoForwards(ProfileActivity.this.currentChat)) {
                        ProfileActivity.this.otherItem.showSubItem(21);
                    } else {
                        ProfileActivity.this.otherItem.hideSubItem(21);
                    }
                    if (ProfileActivity.this.imageUpdater != null) {
                        ProfileActivity.this.otherItem.showSubItem(34);
                        ProfileActivity.this.otherItem.showSubItem(35);
                        ProfileActivity.this.otherItem.hideSubItem(31);
                    }
                }
                ProfileActivity.this.currentExpanAnimatorFracture = 1.0f;
                if (!ProfileActivity.this.isInLandscapeMode) {
                    measuredWidth = ProfileActivity.this.listView.getMeasuredWidth();
                    max = Math.max(0, getMeasuredHeight() - ((ProfileActivity.this.listContentHeight + AndroidUtilities.m107dp(88)) + currentActionBarHeight));
                } else {
                    measuredWidth = AndroidUtilities.m108dp(88.0f);
                    max = 0;
                }
                if (ProfileActivity.this.banFromGroup == 0) {
                    ProfileActivity.this.listView.setBottomGlowOffset(0);
                } else {
                    max += AndroidUtilities.m107dp(48);
                    ProfileActivity.this.listView.setBottomGlowOffset(AndroidUtilities.m107dp(48));
                }
                ProfileActivity.this.initialAnimationExtraHeight = measuredWidth - currentActionBarHeight;
                if (ProfileActivity.this.playProfileAnimation == 0) {
                    ProfileActivity profileActivity5 = ProfileActivity.this;
                    profileActivity5.extraHeight = profileActivity5.initialAnimationExtraHeight;
                }
                ProfileActivity.this.layoutManager.scrollToPositionWithOffset(0, -currentActionBarHeight);
                ProfileActivity.this.listView.setPadding(0, measuredWidth, 0, max);
                measureChildWithMargins(ProfileActivity.this.listView, i, 0, i2, 0);
                ProfileActivity.this.listView.layout(0, currentActionBarHeight, ProfileActivity.this.listView.getMeasuredWidth(), ProfileActivity.this.listView.getMeasuredHeight() + currentActionBarHeight);
                this.ignoreLayout = false;
            }
            boolean z4 = size > View.MeasureSpec.getSize(i);
            if (z4 != this.wasPortrait) {
                post(new Runnable() { // from class: org.telegram.ui.ProfileActivity$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.C70007.this.lambda$onMeasure$0();
                    }
                });
                this.wasPortrait = z4;
            }
            if (ProfileActivity.this.searchItem == null || ProfileActivity.this.qrItem == null) {
                return;
            }
            AndroidUtilities.m107dp(48);
            float unused = ProfileActivity.this.currentExpandAnimatorValue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            if (ProfileActivity.this.selectAnimatedEmojiDialog != null) {
                ProfileActivity.this.selectAnimatedEmojiDialog.dismiss();
                ProfileActivity.this.selectAnimatedEmojiDialog = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
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
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int top;
            FragmentContextView fragmentContextView;
            boolean z;
            int i;
            ProfileActivity.this.whitePaint.setColor(ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
            boolean z2 = false;
            if (ProfileActivity.this.listView.getVisibility() != 0) {
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, ProfileActivity.this.searchListView.getTop() + ProfileActivity.this.extraHeight + ProfileActivity.this.searchTransitionOffset, getMeasuredWidth(), top + getMeasuredHeight(), ProfileActivity.this.whitePaint);
            } else {
                this.grayPaint.setColor(ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundGray));
                if (ProfileActivity.this.transitionAnimationInProress) {
                    ProfileActivity.this.whitePaint.setAlpha((int) (ProfileActivity.this.listView.getAlpha() * 255.0f));
                }
                if (ProfileActivity.this.transitionAnimationInProress) {
                    this.grayPaint.setAlpha((int) (ProfileActivity.this.listView.getAlpha() * 255.0f));
                }
                int childCount = ProfileActivity.this.listView.getChildCount();
                this.sortedChildren.clear();
                boolean z3 = false;
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (ProfileActivity.this.listView.getChildAdapterPosition(ProfileActivity.this.listView.getChildAt(i2)) != -1) {
                        this.sortedChildren.add(ProfileActivity.this.listView.getChildAt(i2));
                    } else {
                        z3 = true;
                    }
                }
                Collections.sort(this.sortedChildren, this.viewComparator);
                float y = ProfileActivity.this.listView.getY();
                int size = this.sortedChildren.size();
                if (!ProfileActivity.this.openAnimationInProgress && size > 0 && !z3) {
                    y += this.sortedChildren.get(0).getY();
                }
                float f = y;
                float f2 = 1.0f;
                boolean z4 = false;
                int i3 = 0;
                while (i3 < size) {
                    View view = this.sortedChildren.get(i3);
                    boolean z5 = view.getBackground() != null ? true : z2;
                    int y2 = (int) (ProfileActivity.this.listView.getY() + view.getY());
                    if (z4 == z5) {
                        if (view.getAlpha() == 1.0f) {
                            f2 = 1.0f;
                        }
                    } else {
                        if (z4) {
                            z = z5;
                            canvas.drawRect(ProfileActivity.this.listView.getX(), f, ProfileActivity.this.listView.getX() + ProfileActivity.this.listView.getMeasuredWidth(), y2, this.grayPaint);
                            i = y2;
                        } else {
                            z = z5;
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
                        z4 = z;
                    }
                    i3++;
                    z2 = false;
                }
                if (z4) {
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
                    if (dpf2 > 1.0f) {
                        dpf2 = 1.0f;
                    }
                    canvas.save();
                    canvas.translate(fragmentContextView.getX(), fragmentContextView.getY());
                    fragmentContextView.setDrawOverlay(true);
                    fragmentContextView.setCollapseTransition(true, ProfileActivity.this.extraHeight, dpf2);
                    fragmentContextView.draw(canvas);
                    fragmentContextView.setCollapseTransition(false, ProfileActivity.this.extraHeight, dpf2);
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
            if (ProfileActivity.this.blurredView == null || ProfileActivity.this.blurredView.getVisibility() != 0) {
                return;
            }
            if (ProfileActivity.this.blurredView.getAlpha() != 1.0f) {
                if (ProfileActivity.this.blurredView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    canvas.saveLayerAlpha(ProfileActivity.this.blurredView.getLeft(), ProfileActivity.this.blurredView.getTop(), ProfileActivity.this.blurredView.getRight(), ProfileActivity.this.blurredView.getBottom(), (int) (ProfileActivity.this.blurredView.getAlpha() * 255.0f), 31);
                    canvas.translate(ProfileActivity.this.blurredView.getLeft(), ProfileActivity.this.blurredView.getTop());
                    ProfileActivity.this.blurredView.draw(canvas);
                    canvas.restore();
                    return;
                }
                return;
            }
            ProfileActivity.this.blurredView.draw(canvas);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if ((ProfileActivity.this.pinchToZoomHelper.isInOverlayMode() && (view == ProfileActivity.this.avatarContainer2 || view == ((BaseFragment) ProfileActivity.this).actionBar || view == ProfileActivity.this.writeButton || view == ProfileActivity.this.transferButton)) || view == ProfileActivity.this.blurredView) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
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
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
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
    public class C694711 extends DefaultItemAnimator {
        int animationIndex = -1;

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        protected long getAddAnimationDelay(long j, long j2, long j3) {
            return 0L;
        }

        C694711() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void onAllAnimationsDone() {
            super.onAllAnimationsDone();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$11$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.C694711.this.lambda$onAllAnimationsDone$0();
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
                        ProfileActivity.C694711.this.lambda$runPendingAnimations$1(valueAnimator);
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
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x021e  */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$20(final long r22, android.content.Context r24, android.view.View r25, int r26, float r27, float r28) {
        /*
            Method dump skipped, instructions count: 1703
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.lambda$createView$20(long, android.content.Context, android.view.View, int, float, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$17(CheckBoxCell[] checkBoxCellArr, View view) {
        checkBoxCellArr[0].setChecked(!checkBoxCellArr[0].isChecked(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$13 */
    /* loaded from: classes5.dex */
    public class DialogInterface$OnClickListenerC694913 implements DialogInterface.OnClickListener {
        final /* synthetic */ CheckBoxCell[] val$cells;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onClick$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        DialogInterface$OnClickListenerC694913(CheckBoxCell[] checkBoxCellArr) {
            this.val$cells = checkBoxCellArr;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            TLRPC$TL_messages_reportReaction tLRPC$TL_messages_reportReaction = new TLRPC$TL_messages_reportReaction();
            tLRPC$TL_messages_reportReaction.user_id = ProfileActivity.this.getMessagesController().getInputUser(ProfileActivity.this.userId);
            tLRPC$TL_messages_reportReaction.peer = ProfileActivity.this.getMessagesController().getInputPeer(ProfileActivity.this.reportReactionFromDialogId);
            tLRPC$TL_messages_reportReaction.f1708id = ProfileActivity.this.reportReactionMessageId;
            ConnectionsManager.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).sendRequest(tLRPC$TL_messages_reportReaction, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$13$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.DialogInterface$OnClickListenerC694913.lambda$onClick$0(tLObject, tLRPC$TL_error);
                }
            });
            CheckBoxCell[] checkBoxCellArr = this.val$cells;
            if (checkBoxCellArr[0] != null && checkBoxCellArr[0].isChecked()) {
                ProfileActivity.this.getMessagesController().deleteParticipantFromChat(-ProfileActivity.this.reportReactionFromDialogId, ProfileActivity.this.getMessagesController().getUser(Long.valueOf(ProfileActivity.this.userId)));
            }
            ProfileActivity.this.reportReactionMessageId = 0;
            ProfileActivity.this.updateListAnimated(false);
            BulletinFactory.m65of(ProfileActivity.this).createReportSent(ProfileActivity.this.resourcesProvider).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(DialogInterface dialogInterface, int i) {
        SharedConfig.pushAuthKey = null;
        SharedConfig.pushAuthKeyId = null;
        SharedConfig.saveConfig();
        getConnectionsManager().switchBackend(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$16 */
    /* loaded from: classes5.dex */
    public class C695216 implements RecyclerListView.OnItemLongClickListener {
        private int debugMenuTelegramItemsCount;
        private int pressCount = 0;
        final /* synthetic */ Context val$context;

        C695216(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
        public boolean onItemClick(View view, int i) {
            int i2;
            String str;
            String string;
            int i3;
            String str2;
            String str3;
            String str4;
            String str5;
            if (i != ProfileActivity.this.socialsRow) {
                if (i != ProfileActivity.this.dialogIdRow) {
                    if (i != ProfileActivity.this.versionRow) {
                        if (i < ProfileActivity.this.membersStartRow || i >= ProfileActivity.this.membersEndRow) {
                            return ProfileActivity.this.processOnClickOrPress(i, view, view.getWidth() / 2.0f, (int) (view.getHeight() * 0.75f));
                        }
                        return ProfileActivity.this.onMemberClick(!ProfileActivity.this.sortedUsers.isEmpty() ? (TLRPC$ChatParticipant) ProfileActivity.this.visibleChatParticipants.get(((Integer) ProfileActivity.this.sortedUsers.get(i - ProfileActivity.this.membersStartRow)).intValue()) : (TLRPC$ChatParticipant) ProfileActivity.this.visibleChatParticipants.get(i - ProfileActivity.this.membersStartRow), true, view);
                    }
                    int i4 = this.pressCount + 1;
                    this.pressCount = i4;
                    if (i4 >= 2 || BuildVars.DEBUG_PRIVATE_VERSION) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(ProfileActivity.this.getParentActivity(), ProfileActivity.this.resourcesProvider);
                        builder.setTitle(LocaleController.getString("DebugMenu", C3632R.string.DebugMenu));
                        CharSequence[] charSequenceArr = new CharSequence[28];
                        charSequenceArr[0] = LocaleController.getString("DebugMenuImportContacts", C3632R.string.DebugMenuImportContacts);
                        charSequenceArr[1] = LocaleController.getString("DebugMenuReloadContacts", C3632R.string.DebugMenuReloadContacts);
                        charSequenceArr[2] = LocaleController.getString("DebugMenuResetContacts", C3632R.string.DebugMenuResetContacts);
                        charSequenceArr[3] = LocaleController.getString("DebugMenuResetDialogs", C3632R.string.DebugMenuResetDialogs);
                        if (BuildVars.DEBUG_VERSION) {
                            string = null;
                        } else {
                            if (BuildVars.LOGS_ENABLED) {
                                i2 = C3632R.string.DebugMenuDisableLogs;
                                str = "DebugMenuDisableLogs";
                            } else {
                                i2 = C3632R.string.DebugMenuEnableLogs;
                                str = "DebugMenuEnableLogs";
                            }
                            string = LocaleController.getString(str, i2);
                        }
                        charSequenceArr[4] = string;
                        if (SharedConfig.inappCamera) {
                            i3 = C3632R.string.DebugMenuDisableCamera;
                            str2 = "DebugMenuDisableCamera";
                        } else {
                            i3 = C3632R.string.DebugMenuEnableCamera;
                            str2 = "DebugMenuEnableCamera";
                        }
                        charSequenceArr[5] = LocaleController.getString(str2, i3);
                        charSequenceArr[6] = LocaleController.getString("DebugMenuClearMediaCache", C3632R.string.DebugMenuClearMediaCache);
                        charSequenceArr[7] = LocaleController.getString("DebugMenuCallSettings", C3632R.string.DebugMenuCallSettings);
                        charSequenceArr[8] = null;
                        charSequenceArr[9] = (BuildVars.DEBUG_PRIVATE_VERSION || ApplicationLoader.isStandaloneBuild()) ? LocaleController.getString("DebugMenuCheckAppUpdate", C3632R.string.DebugMenuCheckAppUpdate) : null;
                        charSequenceArr[10] = LocaleController.getString("DebugMenuReadAllDialogs", C3632R.string.DebugMenuReadAllDialogs);
                        charSequenceArr[11] = BuildVars.DEBUG_PRIVATE_VERSION ? SharedConfig.disableVoiceAudioEffects ? "Enable voip audio effects" : "Disable voip audio effects" : null;
                        boolean z = BuildVars.DEBUG_PRIVATE_VERSION;
                        charSequenceArr[12] = z ? "Clean app update" : null;
                        charSequenceArr[13] = z ? "Reset suggestions" : null;
                        charSequenceArr[14] = z ? LocaleController.getString(C3632R.string.DebugMenuClearWebViewCache) : null;
                        if (Build.VERSION.SDK_INT >= 19) {
                            str3 = LocaleController.getString(SharedConfig.debugWebView ? C3632R.string.DebugMenuDisableWebViewDebug : C3632R.string.DebugMenuEnableWebViewDebug);
                        } else {
                            str3 = null;
                        }
                        charSequenceArr[15] = str3;
                        charSequenceArr[16] = (AndroidUtilities.isTabletInternal() && BuildVars.DEBUG_PRIVATE_VERSION) ? SharedConfig.forceDisableTabletMode ? "Enable tablet mode" : "Disable tablet mode" : null;
                        if (BuildVars.DEBUG_PRIVATE_VERSION) {
                            str4 = LocaleController.getString(SharedConfig.isFloatingDebugActive ? C3632R.string.FloatingDebugDisable : C3632R.string.FloatingDebugEnable);
                        } else {
                            str4 = null;
                        }
                        charSequenceArr[17] = str4;
                        boolean z2 = BuildVars.DEBUG_PRIVATE_VERSION;
                        charSequenceArr[18] = z2 ? "Force remove premium suggestions" : null;
                        charSequenceArr[19] = z2 ? "Share device info" : null;
                        charSequenceArr[20] = "Force performance class";
                        charSequenceArr[21] = (!z2 || InstantCameraView.allowBigSizeCameraDebug()) ? null : !SharedConfig.bigCameraForRound ? "Force big camera for round" : "Disable big camera for round";
                        charSequenceArr[22] = LocaleController.getString(DualCameraView.dualAvailableStatic(ProfileActivity.this.getContext()) ? "DebugMenuDualOff" : "DebugMenuDualOn");
                        charSequenceArr[23] = BuildVars.DEBUG_VERSION ? SharedConfig.useSurfaceInStories ? "back to TextureView in stories" : "use SurfaceView in stories" : null;
                        charSequenceArr[24] = BuildVars.DEBUG_PRIVATE_VERSION ? SharedConfig.photoViewerBlur ? "do not blur in photoviewer" : "blur in photoviewer" : null;
                        charSequenceArr[25] = !SharedConfig.payByInvoice ? "Enable Invoice Payment" : "Disable Invoice Payment";
                        boolean z3 = BuildVars.DEBUG_PRIVATE_VERSION;
                        charSequenceArr[26] = z3 ? "Update Attach Bots" : null;
                        if (z3) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(SharedConfig.forceLessData ? "Disable using less data" : "Use less data on stories");
                            sb.append(ApplicationLoader.isConnectionSlow() ? " (connection is already slow)" : "");
                            str5 = sb.toString();
                        } else {
                            str5 = null;
                        }
                        charSequenceArr[27] = str5;
                        final Context context = this.val$context;
                        builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda1
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i5) {
                                ProfileActivity.C695216.this.lambda$onItemClick$4(context, dialogInterface, i5);
                            }
                        });
                        this.debugMenuTelegramItemsCount = 28;
                        CharSequence[] charSequenceArr2 = new CharSequence[2];
                        DebugPresenter debugPresenter = ProfileActivity.this.debugPresenter;
                        charSequenceArr2[0] = debugPresenter != null ? LocaleController.formatStringInternal(C3632R.string.debug_option_choose_wallet_environment, debugPresenter.getCurrentWalletEnvironment()) : null;
                        DebugPresenter debugPresenter2 = ProfileActivity.this.debugPresenter;
                        charSequenceArr2[1] = (debugPresenter2 == null || !debugPresenter2.isStageEnvironment()) ? null : LocaleController.getInternalString(C3632R.string.debug_option_reset_airdrop);
                        builder.addItems(charSequenceArr2);
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                        ProfileActivity.this.showDialog(builder.create());
                    } else {
                        try {
                            Toast.makeText(ProfileActivity.this.getParentActivity(), LocaleController.getString("DebugMenuLongPress", C3632R.string.DebugMenuLongPress), 0).show();
                        } catch (Exception e) {
                            FileLog.m102e(e);
                        }
                    }
                    return true;
                }
                DialogsFactoryKt.showChatProfileTelegramIdDialog(ProfileActivity.this, false, new Callbacks$Callback() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda2
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        ProfileActivity.C695216.this.lambda$onItemClick$0();
                    }
                });
                return true;
            }
            if (ProfileActivity.this.presenter != null) {
                Timber.m9d("onLongItemClick", new Object[0]);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ProfileActivity.this.updateListAnimated(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(Context context, DialogInterface dialogInterface, int i) {
            long j;
            String str;
            Long l;
            DebugPresenter debugPresenter;
            int i2 = this.debugMenuTelegramItemsCount;
            if (i >= i2) {
                int i3 = i - i2;
                if (i3 == 0) {
                    ProfileActivity.this.showChooseWalletEnvironmentDialog();
                    return;
                } else if (i3 != 1 || (debugPresenter = ProfileActivity.this.debugPresenter) == null) {
                    return;
                } else {
                    debugPresenter.resetAirdropInformation();
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
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m105d("app start time = " + ApplicationLoader.startTime);
                    try {
                        FileLog.m105d("buildVersion = " + ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0).versionCode);
                    } catch (Exception e) {
                        FileLog.m102e(e);
                    }
                }
            } else if (i == 5) {
                SharedConfig.toggleInappCamera();
            } else if (i == 6) {
                ProfileActivity.this.getMessagesStorage().clearSentMedia();
                SharedConfig.setNoSoundHintShowed(false);
                MessagesController.getGlobalMainSettings().edit().remove("archivehint").remove("proximityhint").remove("archivehint_l").remove("speedhint").remove("gifhint").remove("reminderhint").remove("soundHint").remove("themehint").remove("bganimationhint").remove("filterhint").remove("n_0").remove("storyprvhint").remove("storyhint").remove("storyhint2").remove("storydualhint").remove("storysvddualhint").remove("stories_camera").remove("dualcam").remove("dualmatrix").remove("dual_available").remove("archivehint").remove("askNotificationsAfter").remove("askNotificationsDuration").remove("viewoncehint").remove("taptostorysoundhint").remove("nothanos").remove("voiceoncehint").remove("savedhint").apply();
                MessagesController.getEmojiSettings(((BaseFragment) ProfileActivity.this).currentAccount).edit().remove("featured_hidden").remove("emoji_featured_hidden").commit();
                SharedConfig.textSelectionHintShows = 0;
                SharedConfig.lockRecordAudioVideoHint = 0;
                SharedConfig.stickersReorderingHintUsed = false;
                SharedConfig.forwardingOptionsHintShown = false;
                SharedConfig.replyingOptionsHintShown = false;
                SharedConfig.messageSeenHintCount = 3;
                SharedConfig.emojiInteractionsHintCount = 3;
                SharedConfig.dayNightThemeSwitchHintCount = 3;
                SharedConfig.fastScrollHintCount = 3;
                SharedConfig.stealthModeSendMessageConfirm = 2;
                SharedConfig.updateStealthModeSendMessageConfirm(2);
                SharedConfig.setStoriesReactionsLongPressHintUsed(false);
                SharedConfig.setStoriesIntroShown(false);
                SharedConfig.setMultipleReactionsPromoShowed(false);
                ChatThemeController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).clearCache();
                ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, new Object[0]);
                RestrictedLanguagesSelectActivity.cleanup();
                PersistColorPalette.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).cleanup();
                ProfileActivity.this.getMessagesController().getMainSettings().edit().remove("peerColors").remove("profilePeerColors").remove("boostingappearance").commit();
            } else if (i == 7) {
                VoIPHelper.showCallDebugSettings(ProfileActivity.this.getParentActivity());
            } else if (i == 8) {
                SharedConfig.toggleRoundCamera16to9();
            } else if (i == 9) {
                ((LaunchActivity) ProfileActivity.this.getParentActivity()).checkAppUpdate(true);
            } else if (i == 10) {
                ProfileActivity.this.getMessagesStorage().readAllDialogs(-1);
            } else if (i == 11) {
                SharedConfig.toggleDisableVoiceAudioEffects();
            } else if (i == 12) {
                SharedConfig.pendingAppUpdate = null;
                SharedConfig.saveConfig();
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
            } else if (i == 13) {
                Set<String> set = ProfileActivity.this.getMessagesController().pendingSuggestions;
                set.add("VALIDATE_PHONE_NUMBER");
                set.add("VALIDATE_PASSWORD");
                ProfileActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, new Object[0]);
            } else if (i == 14) {
                ApplicationLoader.applicationContext.deleteDatabase("webview.db");
                ApplicationLoader.applicationContext.deleteDatabase("webviewCache.db");
                WebStorage.getInstance().deleteAllData();
            } else if (i == 15) {
                SharedConfig.toggleDebugWebView();
                Toast.makeText(ProfileActivity.this.getParentActivity(), LocaleController.getString(SharedConfig.debugWebView ? C3632R.string.DebugMenuWebViewDebugEnabled : C3632R.string.DebugMenuWebViewDebugDisabled), 0).show();
            } else if (i == 16) {
                SharedConfig.toggleForceDisableTabletMode();
                Activity findActivity = AndroidUtilities.findActivity(context);
                Intent launchIntentForPackage = findActivity.getPackageManager().getLaunchIntentForPackage(findActivity.getPackageName());
                findActivity.finishAffinity();
                findActivity.startActivity(launchIntentForPackage);
                System.exit(0);
            } else if (i == 17) {
                FloatingDebugController.setActive((LaunchActivity) ProfileActivity.this.getParentActivity(), !FloatingDebugController.isActive());
            } else if (i == 18) {
                ProfileActivity.this.getMessagesController().loadAppConfig();
                TLRPC$TL_help_dismissSuggestion tLRPC$TL_help_dismissSuggestion = new TLRPC$TL_help_dismissSuggestion();
                tLRPC$TL_help_dismissSuggestion.suggestion = "VALIDATE_PHONE_NUMBER";
                tLRPC$TL_help_dismissSuggestion.peer = new TLRPC$TL_inputPeerEmpty();
                ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_help_dismissSuggestion, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$16$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        ProfileActivity.C695216.this.lambda$onItemClick$2(tLObject, tLRPC$TL_error);
                    }
                });
            } else if (i != 19) {
                if (i == 20) {
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
                            ProfileActivity.C695216.lambda$onItemClick$3(measureDevicePerformanceClass, dialogInterface2, i5);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                    builder.show();
                } else if (i == 21) {
                    SharedConfig.toggleRoundCamera();
                } else if (i == 22) {
                    boolean dualAvailableStatic = DualCameraView.dualAvailableStatic(ProfileActivity.this.getContext());
                    MessagesController.getGlobalMainSettings().edit().putBoolean("dual_available", !dualAvailableStatic).apply();
                    try {
                        Toast.makeText(ProfileActivity.this.getParentActivity(), LocaleController.getString(!dualAvailableStatic ? C3632R.string.DebugMenuDualOnToast : C3632R.string.DebugMenuDualOffToast), 0).show();
                    } catch (Exception unused) {
                    }
                } else if (i == 23) {
                    SharedConfig.toggleSurfaceInStories();
                    while (i4 < ProfileActivity.this.getParentLayout().getFragmentStack().size()) {
                        ProfileActivity.this.getParentLayout().getFragmentStack().get(i4).storyViewer = null;
                        i4++;
                    }
                } else if (i == 24) {
                    SharedConfig.togglePhotoViewerBlur();
                } else if (i == 25) {
                    SharedConfig.togglePaymentByInvoice();
                } else if (i == 26) {
                    ProfileActivity.this.getMediaDataController().loadAttachMenuBots(false, true);
                } else if (i == 27) {
                    SharedConfig.setForceLessData(!SharedConfig.forceLessData);
                }
            } else {
                int i5 = ConnectionsManager.CPU_COUNT;
                String str2 = "activity";
                int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
                StringBuilder sb4 = new StringBuilder();
                long j2 = 0;
                long j3 = 0;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                long j7 = 0;
                long j8 = 0;
                long j9 = 0;
                while (i4 < i5) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("/sys/devices/system/cpu/cpu");
                    sb5.append(i4);
                    int i6 = i5;
                    sb5.append("/cpufreq/cpuinfo_min_freq");
                    Long sysInfoLong = AndroidUtilities.getSysInfoLong(sb5.toString());
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("/sys/devices/system/cpu/cpu");
                    sb6.append(i4);
                    int i7 = memoryClass;
                    sb6.append("/cpufreq/cpuinfo_cur_freq");
                    Long sysInfoLong2 = AndroidUtilities.getSysInfoLong(sb6.toString());
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("/sys/devices/system/cpu/cpu");
                    sb7.append(i4);
                    String str3 = str2;
                    sb7.append("/cpufreq/cpuinfo_max_freq");
                    Long sysInfoLong3 = AndroidUtilities.getSysInfoLong(sb7.toString());
                    Long sysInfoLong4 = AndroidUtilities.getSysInfoLong("/sys/devices/system/cpu/cpu" + i4 + "/cpu_capacity");
                    sb4.append("#");
                    sb4.append(i4);
                    sb4.append(" ");
                    int i8 = i4;
                    if (sysInfoLong != null) {
                        sb4.append("min=");
                        str = "\n";
                        l = sysInfoLong3;
                        sb4.append(sysInfoLong.longValue() / 1000);
                        sb4.append(" ");
                        j2 += sysInfoLong.longValue() / 1000;
                        j3++;
                    } else {
                        str = "\n";
                        l = sysInfoLong3;
                    }
                    if (sysInfoLong2 != null) {
                        sb4.append("cur=");
                        sb4.append(sysInfoLong2.longValue() / 1000);
                        sb4.append(" ");
                        j4 += sysInfoLong2.longValue() / 1000;
                        j5++;
                    }
                    if (l != null) {
                        sb4.append("max=");
                        sb4.append(l.longValue() / 1000);
                        sb4.append(" ");
                        j6 += l.longValue() / 1000;
                        j7++;
                    }
                    if (sysInfoLong4 != null) {
                        sb4.append("cpc=");
                        sb4.append(sysInfoLong4);
                        sb4.append(" ");
                        j8 += sysInfoLong4.longValue();
                        j9++;
                    }
                    sb4.append(str);
                    i4 = i8 + 1;
                    i5 = i6;
                    memoryClass = i7;
                    str2 = str3;
                }
                int i9 = i5;
                int i10 = memoryClass;
                String str4 = str2;
                StringBuilder sb8 = new StringBuilder();
                sb8.append(Build.MANUFACTURER);
                sb8.append(", ");
                sb8.append(Build.MODEL);
                sb8.append(" (");
                sb8.append(Build.PRODUCT);
                sb8.append(", ");
                sb8.append(Build.DEVICE);
                sb8.append(") ");
                sb8.append(" (android ");
                int i11 = Build.VERSION.SDK_INT;
                sb8.append(i11);
                sb8.append(")\n");
                if (i11 >= 31) {
                    sb8.append("SoC: ");
                    sb8.append(Build.SOC_MANUFACTURER);
                    sb8.append(", ");
                    sb8.append(Build.SOC_MODEL);
                    sb8.append("\n");
                }
                String sysInfoString = AndroidUtilities.getSysInfoString("/sys/kernel/gpu/gpu_model");
                if (sysInfoString != null) {
                    sb8.append("GPU: ");
                    sb8.append(sysInfoString);
                    Long sysInfoLong5 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_min_clock");
                    Long sysInfoLong6 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_mm_min_clock");
                    Long sysInfoLong7 = AndroidUtilities.getSysInfoLong("/sys/kernel/gpu/gpu_max_clock");
                    if (sysInfoLong5 != null) {
                        sb8.append(", min=");
                        j = j4;
                        sb8.append(sysInfoLong5.longValue() / 1000);
                    } else {
                        j = j4;
                    }
                    if (sysInfoLong6 != null) {
                        sb8.append(", mmin=");
                        sb8.append(sysInfoLong6.longValue() / 1000);
                    }
                    if (sysInfoLong7 != null) {
                        sb8.append(", max=");
                        sb8.append(sysInfoLong7.longValue() / 1000);
                    }
                    sb8.append("\n");
                } else {
                    j = j4;
                }
                ConfigurationInfo deviceConfigurationInfo = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService(str4)).getDeviceConfigurationInfo();
                sb8.append("GLES Version: ");
                sb8.append(deviceConfigurationInfo.getGlEsVersion());
                sb8.append("\n");
                sb8.append("Memory: class=");
                sb8.append(AndroidUtilities.formatFileSize(i10 * 1024 * 1024));
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) ApplicationLoader.applicationContext.getSystemService(str4)).getMemoryInfo(memoryInfo);
                sb8.append(", total=");
                sb8.append(AndroidUtilities.formatFileSize(memoryInfo.totalMem));
                sb8.append(", avail=");
                sb8.append(AndroidUtilities.formatFileSize(memoryInfo.availMem));
                sb8.append(", low?=");
                sb8.append(memoryInfo.lowMemory);
                sb8.append(" (threshold=");
                sb8.append(AndroidUtilities.formatFileSize(memoryInfo.threshold));
                sb8.append(")");
                sb8.append("\n");
                sb8.append("Current class: ");
                sb8.append(SharedConfig.performanceClassName(SharedConfig.getDevicePerformanceClass()));
                sb8.append(", measured: ");
                sb8.append(SharedConfig.performanceClassName(SharedConfig.measureDevicePerformanceClass()));
                if (i11 >= 31) {
                    sb8.append(", suggest=");
                    sb8.append(Build.VERSION.MEDIA_PERFORMANCE_CLASS);
                }
                sb8.append("\n");
                sb8.append(i9);
                sb8.append(" CPUs");
                if (j3 > 0) {
                    sb8.append(", avgMinFreq=");
                    sb8.append(j2 / j3);
                }
                if (j5 > 0) {
                    sb8.append(", avgCurFreq=");
                    sb8.append(j / j5);
                }
                if (j7 > 0) {
                    sb8.append(", avgMaxFreq=");
                    sb8.append(j6 / j7);
                }
                if (j9 > 0) {
                    sb8.append(", avgCapacity=");
                    sb8.append(j8 / j9);
                }
                sb8.append("\n");
                sb8.append((CharSequence) sb4);
                ProfileActivity.this.listCodecs("video/avc", sb8);
                ProfileActivity.this.listCodecs(MimeTypes.VIDEO_H265, sb8);
                ProfileActivity.this.showDialog(new DialogC69531(ProfileActivity.this.getParentActivity(), null, sb8.toString(), false, null, false));
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
                    ProfileActivity.C695216.this.lambda$onItemClick$1(tLObject2, tLRPC$TL_error2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            ProfileActivity.this.getMessagesController().loadAppConfig();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ProfileActivity$16$1 */
        /* loaded from: classes5.dex */
        public class DialogC69531 extends ShareAlert {
            DialogC69531(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2) {
                super(context, arrayList, str, z, str2, z2);
            }

            @Override // org.telegram.p043ui.Components.ShareAlert
            protected void onSend(final LongSparseArray<TLRPC$Dialog> longSparseArray, final int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$16$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.C695216.DialogC69531.this.lambda$onSend$0(longSparseArray, i);
                    }
                }, 250L);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onSend$0(LongSparseArray longSparseArray, int i) {
                BulletinFactory.createInviteSentBulletin(ProfileActivity.this.getParentActivity(), ProfileActivity.this.contentView, longSparseArray.size(), longSparseArray.size() == 1 ? ((TLRPC$Dialog) longSparseArray.valueAt(0)).f1608id : 0L, i, getThemedColor(Theme.key_undo_background), getThemedColor(Theme.key_undo_infoColor)).show();
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
    /* JADX WARN: Removed duplicated region for block: B:56:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$21(android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.lambda$createView$21(android.view.View, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$23(View view, int i) {
        if (this.searchAdapter.isSearchWas() || this.searchAdapter.recentSearches.isEmpty()) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C3632R.string.ClearSearchAlertTitle));
        builder.setMessage(LocaleController.getString(C3632R.string.ClearSearchAlert));
        builder.setPositiveButton(LocaleController.getString("ClearButton", C3632R.string.ClearButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                ProfileActivity.this.lambda$createView$22(dialogInterface, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(DialogInterface dialogInterface, int i) {
        this.searchAdapter.clearRecent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(TLObject tLObject) {
        this.currentChannelParticipant = ((TLRPC$TL_channels_channelParticipant) tLObject).participant;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$25(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda53
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.this.lambda$createView$24(tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$26(TLRPC$Chat tLRPC$Chat, View view) {
        long j = this.userId;
        long j2 = this.banFromGroup;
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights = tLRPC$Chat.default_banned_rights;
        TLRPC$ChannelParticipant tLRPC$ChannelParticipant = this.currentChannelParticipant;
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, j2, null, tLRPC$TL_chatBannedRights, tLRPC$ChannelParticipant != null ? tLRPC$ChannelParticipant.banned_rights : null, "", 1, true, false, null);
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ProfileActivity.19
            @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2, String str) {
                ProfileActivity.this.removeSelfFromStack();
            }

            @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC$User tLRPC$User) {
                ProfileActivity.this.undoView.showWithAction(-ProfileActivity.this.chatId, ProfileActivity.this.currentChat.megagroup ? 10 : 9, tLRPC$User);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$20 */
    /* loaded from: classes5.dex */
    public class C695820 extends FrameLayout {
        CanvasButton canvasButton;

        C695820(Context context) {
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
                float m107dp = AndroidUtilities.m107dp(22);
                float m107dp2 = ((AndroidUtilities.m107dp(28) - ProfileActivity.this.customPhotoOffset) + ProfileActivity.this.onlineTextView[1].getX()) - m107dp;
                ProfileActivity.this.fallbackImage.setImageCoords(m107dp2, y - (m107dp / 2.0f), m107dp, m107dp);
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
                                ProfileActivity.C695820.this.lambda$dispatchDraw$0();
                            }
                        });
                    }
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(m107dp2 - AndroidUtilities.m107dp(4), y - AndroidUtilities.m107dp(14), m107dp2 + ProfileActivity.this.onlineTextView[2].getTextWidth() + (AndroidUtilities.m107dp(28) * (1.0f - ProfileActivity.this.customAvatarProgress)) + AndroidUtilities.m107dp(4), y + AndroidUtilities.m107dp(14));
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
    public /* synthetic */ void lambda$createView$28(View view) {
        TLRPC$Document findDocument;
        Bulletin createContainsEmojiBulletin;
        if (this.avatarBig != null) {
            return;
        }
        if (this.isTopic && !getMessagesController().premiumFeaturesBlocked()) {
            ArrayList<TLRPC$TL_forumTopic> topics = getMessagesController().getTopicsController().getTopics(this.chatId);
            if (topics != null) {
                TLRPC$TL_forumTopic tLRPC$TL_forumTopic = null;
                for (int i = 0; tLRPC$TL_forumTopic == null && i < topics.size(); i++) {
                    TLRPC$TL_forumTopic tLRPC$TL_forumTopic2 = topics.get(i);
                    if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1658id == this.topicId) {
                        tLRPC$TL_forumTopic = tLRPC$TL_forumTopic2;
                    }
                }
                if (tLRPC$TL_forumTopic != null) {
                    long j = tLRPC$TL_forumTopic.icon_emoji_id;
                    if (j == 0 || (findDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, j)) == null || (createContainsEmojiBulletin = BulletinFactory.m65of(this).createContainsEmojiBulletin(findDocument, 1, new Utilities.Callback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda68
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            ProfileActivity.this.lambda$createView$27((TLRPC$InputStickerSet) obj);
                        }
                    })) == null) {
                        return;
                    }
                    createContainsEmojiBulletin.show();
                }
            }
        } else if (!expandAvatar()) {
            openAvatar();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$27(TLRPC$InputStickerSet tLRPC$InputStickerSet) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(tLRPC$InputStickerSet);
        showDialog(new EmojiPacksAlert(this, getParentActivity(), this.resourcesProvider, arrayList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$29(View view) {
        if (this.avatarBig == null && !this.isTopic) {
            openAvatar();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$30(View view) {
        if (this.writeButton.getTag() != null) {
            return;
        }
        onTransferButtonClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$31(View view) {
        if (this.writeButton.getTag() != null) {
            return;
        }
        onWriteButtonClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$32(ValueAnimator valueAnimator) {
        setAvatarExpandProgress(valueAnimator.getAnimatedFraction());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$33(View view) {
        finishPreviewFragment();
    }

    private void createFloatingActionButton(Context context) {
        if (getMessagesController().storiesEnabled() && getDialogId() <= 0 && ChatObject.isChannelAndNotMegaGroup(-getDialogId(), this.currentAccount)) {
            StoriesController storiesController = getMessagesController().getStoriesController();
            if (storiesController.canPostStories(getDialogId())) {
                this.waitCanSendStoryRequest = true;
                storiesController.canSendStoryFor(getDialogId(), new com.google.android.exoplayer2.util.Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda36
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ProfileActivity.this.lambda$createFloatingActionButton$34((Boolean) obj);
                    }
                }, false, this.resourcesProvider);
                final long dialogId = getDialogId();
                FrameLayout frameLayout = new FrameLayout(context);
                this.floatingButtonContainer = frameLayout;
                frameLayout.setVisibility(0);
                NestedFrameLayout nestedFrameLayout = this.contentView;
                FrameLayout frameLayout2 = this.floatingButtonContainer;
                int i = Build.VERSION.SDK_INT;
                int i2 = i >= 21 ? 56 : 60;
                int i3 = i >= 21 ? 56 : 60;
                boolean z = LocaleController.isRTL;
                nestedFrameLayout.addView(frameLayout2, LayoutHelper.createFrame(i2, i3, (z ? 3 : 5) | 80, z ? 14 : 0, 0, z ? 0 : 14, 14));
                this.floatingButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda22
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ProfileActivity.this.lambda$createFloatingActionButton$37(dialogId, view);
                    }
                });
                RLottieImageView rLottieImageView = new RLottieImageView(context);
                this.floatingButton = rLottieImageView;
                rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
                this.floatingButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionIcon), PorterDuff.Mode.MULTIPLY));
                if (i >= 21) {
                    StateListAnimator stateListAnimator = new StateListAnimator();
                    FrameLayout frameLayout3 = this.floatingButtonContainer;
                    Property property = View.TRANSLATION_Z;
                    stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(frameLayout3, property, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(4)).setDuration(200L));
                    stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this.floatingButtonContainer, property, AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(2)).setDuration(200L));
                    this.floatingButtonContainer.setStateListAnimator(stateListAnimator);
                    this.floatingButtonContainer.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.ProfileActivity.35
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setOval(0, 0, AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
                        }
                    });
                }
                this.floatingButtonContainer.addView(this.floatingButton, LayoutHelper.createFrame(-1, -1));
                this.floatingButton.setAnimation(C3632R.raw.write_contacts_fab_icon_camera, 56, 56);
                this.floatingButtonContainer.setContentDescription(LocaleController.getString("AccDescrCaptureStory", C3632R.string.AccDescrCaptureStory));
                updateFloatingButtonColor();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatingActionButton$34(Boolean bool) {
        this.waitCanSendStoryRequest = false;
        this.showBoostsAlert = !bool.booleanValue();
        hideFloatingButton(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatingActionButton$37(final long j, View view) {
        if (this.showBoostsAlert) {
            if (this.loadingBoostsStats) {
                return;
            }
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            this.loadingBoostsStats = true;
            messagesController.getBoostsController().getBoostsStats(j, new com.google.android.exoplayer2.util.Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda37
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    ProfileActivity.this.lambda$createFloatingActionButton$36(j, (TL_stories$TL_premium_boostsStatus) obj);
                }
            });
            return;
        }
        StoryRecorder.getInstance(getParentActivity(), this.currentAccount).selectedPeerId(getDialogId()).canChangePeer(false).closeToWhenSent(new StoryRecorder.ClosingViewProvider() { // from class: org.telegram.ui.ProfileActivity.34
            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.ClosingViewProvider
            public void preLayout(long j2, Runnable runnable) {
                ProfileActivity.this.avatarImage.setHasStories(ProfileActivity.this.needInsetForStories());
                if (j2 == ProfileActivity.this.getDialogId()) {
                    ProfileActivity.this.collapseAvatarInstant();
                }
                AndroidUtilities.runOnUIThread(runnable, 30L);
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.ClosingViewProvider
            public StoryRecorder.SourceView getView(long j2) {
                if (j2 != ProfileActivity.this.getDialogId()) {
                    return null;
                }
                return StoryRecorder.SourceView.fromAvatarImage(ProfileActivity.this.avatarImage);
            }
        }).open(StoryRecorder.SourceView.fromFloatingButton(this.floatingButtonContainer), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatingActionButton$36(long j, TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        this.loadingBoostsStats = false;
        if (tL_stories$TL_premium_boostsStatus == null) {
            return;
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(lastFragment, lastFragment.getContext(), 18, this.currentAccount, this.resourcesProvider);
        limitReachedBottomSheet.setBoostsStats(tL_stories$TL_premium_boostsStatus, false);
        limitReachedBottomSheet.setDialogId(j);
        limitReachedBottomSheet.showStatisticButtonInLink(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$createFloatingActionButton$35();
            }
        });
        limitReachedBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFloatingActionButton$35() {
        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        bundle.putBoolean("is_megagroup", chat.megagroup);
        bundle.putBoolean("start_from_boosts", true);
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if (tLRPC$ChatFull == null || !tLRPC$ChatFull.can_view_stats) {
            bundle.putBoolean("only_boosts", true);
        }
        presentFragment(new StatisticActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collapseAvatarInstant() {
        if (!this.allowPullingDown || this.currentExpandAnimatorValue <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        this.layoutManager.scrollToPositionWithOffset(0, AndroidUtilities.m107dp(88) - this.listView.getPaddingTop());
        this.listView.post(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$collapseAvatarInstant$38();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$collapseAvatarInstant$38() {
        needLayout(true);
        if (this.expandAnimator.isRunning()) {
            this.expandAnimator.cancel();
        }
        setAvatarExpandProgress(1.0f);
    }

    private void updateFloatingButtonColor() {
        if (getParentActivity() == null || this.floatingButtonContainer == null) {
            return;
        }
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m107dp(56), applyPeerColor(Theme.getColor(Theme.key_chats_actionBackground), false), applyPeerColor(Theme.getColor(Theme.key_chats_actionPressedBackground), false));
        if (Build.VERSION.SDK_INT < 21) {
            Drawable mutate = ContextCompat.getDrawable(getParentActivity(), C3632R.C3634drawable.floating_shadow).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
            createSimpleSelectorCircleDrawable = combinedDrawable;
        }
        this.floatingButtonContainer.setBackground(createSimpleSelectorCircleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingButton(boolean z) {
        if (this.floatingHidden == z || this.floatingButtonContainer == null || this.waitCanSendStoryRequest) {
            return;
        }
        this.floatingHidden = z;
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = new float[2];
        fArr[0] = this.floatingButtonHideProgress;
        fArr[1] = this.floatingHidden ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ProfileActivity.this.lambda$hideFloatingButton$39(valueAnimator);
            }
        });
        animatorSet.playTogether(ofFloat);
        animatorSet.setDuration(300L);
        animatorSet.setInterpolator(this.floatingInterpolator);
        this.floatingButtonContainer.setClickable(!z);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideFloatingButton$39(ValueAnimator valueAnimator) {
        this.floatingButtonHideProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateFloatingButtonOffset();
    }

    private void updateFloatingButtonOffset() {
        FrameLayout frameLayout = this.floatingButtonContainer;
        if (frameLayout != null) {
            frameLayout.setTranslationY(AndroidUtilities.m107dp(100) * this.floatingButtonHideProgress);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean expandAvatar() {
        RecyclerView.ViewHolder findContainingViewHolder;
        Integer num;
        if (!AndroidUtilities.isTablet() && !this.isInLandscapeMode && this.avatarImage.getImageReceiver().hasNotThumb() && !AndroidUtilities.isAccessibilityScreenReaderEnabled()) {
            this.openingAvatar = true;
            this.allowPullingDown = true;
            View view = null;
            int i = 0;
            while (true) {
                if (i >= this.listView.getChildCount()) {
                    break;
                }
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView.getChildAdapterPosition(recyclerListView.getChildAt(i)) == 0) {
                    view = this.listView.getChildAt(i);
                    break;
                }
                i++;
            }
            if (view != null && (findContainingViewHolder = this.listView.findContainingViewHolder(view)) != null && (num = this.positionToOffset.get(Integer.valueOf(findContainingViewHolder.getAdapterPosition()))) != null) {
                this.listView.smoothScrollBy(0, -(num.intValue() + ((this.listView.getPaddingTop() - view.getTop()) - this.actionBar.getMeasuredHeight())), CubicBezierInterpolator.EASE_OUT_QUINT);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setAvatarExpandProgress(float r23) {
        /*
            Method dump skipped, instructions count: 779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.setAvatarExpandProgress(float):void");
    }

    private int getSmallAvatarRoundRadius() {
        if (this.chatId != 0 && ChatObject.isForum(getMessagesController().getChat(Long.valueOf(this.chatId)))) {
            return AndroidUtilities.m107dp(16);
        }
        return AndroidUtilities.m107dp(21);
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
        presentFragment(TopicsFragment.getTopicsOrChat(this, bundle));
    }

    public void showStatusSelect() {
        if (this.selectAnimatedEmojiDialog != null) {
            return;
        }
        final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        Rect rect = AndroidUtilities.rectTmp2;
        getEmojiStatusLocation(rect);
        int i = this.nameTextView[1].getScaleX() < 1.5f ? 16 : 32;
        int m107dp = (-(this.avatarContainer2.getHeight() - rect.centerY())) - AndroidUtilities.m107dp(i);
        int min = (int) Math.min(AndroidUtilities.m107dp(324), AndroidUtilities.displaySize.x * 0.95f);
        int centerX = rect.centerX();
        int clamp = MathUtils.clamp(centerX - (min / 2), 0, AndroidUtilities.displaySize.x - min);
        int i2 = centerX - clamp;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawableArr[1] != null) {
            boolean z = swapAnimatedEmojiDrawableArr[1].getDrawable() instanceof AnimatedEmojiDrawable;
        }
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), true, Integer.valueOf(Math.max(0, i2)), this.currentChat == null ? 0 : 9, true, this.resourcesProvider, i) { // from class: org.telegram.ui.ProfileActivity.36
            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
            protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
                TLRPC$TL_channels_updateEmojiStatus tLRPC$TL_channels_updateEmojiStatus;
                if (ProfileActivity.this.currentChat == null) {
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
                    tLRPC$TL_channels_updateEmojiStatus = tLRPC$TL_account_updateEmojiStatus;
                    if (user != null) {
                        user.emoji_status = tLRPC$TL_account_updateEmojiStatus.emoji_status;
                        MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).updateEmojiStatusUntilUpdate(user.f1751id, user.emoji_status);
                        NotificationCenter.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.userEmojiStatusUpdated, user);
                        tLRPC$TL_channels_updateEmojiStatus = tLRPC$TL_account_updateEmojiStatus;
                    }
                } else {
                    TLRPC$TL_channels_updateEmojiStatus tLRPC$TL_channels_updateEmojiStatus2 = new TLRPC$TL_channels_updateEmojiStatus();
                    tLRPC$TL_channels_updateEmojiStatus2.channel = MessagesController.getInputChannel(ProfileActivity.this.currentChat);
                    if (l == null) {
                        tLRPC$TL_channels_updateEmojiStatus2.emoji_status = new TLRPC$TL_emojiStatusEmpty();
                    } else if (num != null) {
                        TLRPC$TL_emojiStatusUntil tLRPC$TL_emojiStatusUntil2 = new TLRPC$TL_emojiStatusUntil();
                        tLRPC$TL_channels_updateEmojiStatus2.emoji_status = tLRPC$TL_emojiStatusUntil2;
                        tLRPC$TL_emojiStatusUntil2.document_id = l.longValue();
                        ((TLRPC$TL_emojiStatusUntil) tLRPC$TL_channels_updateEmojiStatus2.emoji_status).until = num.intValue();
                    } else {
                        TLRPC$TL_emojiStatus tLRPC$TL_emojiStatus2 = new TLRPC$TL_emojiStatus();
                        tLRPC$TL_channels_updateEmojiStatus2.emoji_status = tLRPC$TL_emojiStatus2;
                        tLRPC$TL_emojiStatus2.document_id = l.longValue();
                    }
                    tLRPC$TL_channels_updateEmojiStatus = tLRPC$TL_channels_updateEmojiStatus2;
                    if (ProfileActivity.this.currentChat != null) {
                        ProfileActivity.this.currentChat.emoji_status = tLRPC$TL_channels_updateEmojiStatus2.emoji_status;
                        MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).updateEmojiStatusUntilUpdate(-ProfileActivity.this.currentChat.f1602id, ProfileActivity.this.currentChat.emoji_status);
                        NotificationCenter.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_EMOJI_STATUS));
                        tLRPC$TL_channels_updateEmojiStatus = tLRPC$TL_channels_updateEmojiStatus2;
                    }
                }
                boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).isShowPremiumStatusEnabled();
                for (int i3 = 0; i3 < 2; i3++) {
                    if (ProfileActivity.this.emojiStatusDrawable[i3] != null) {
                        if ((l == null && ProfileActivity.this.currentChat == null) || !isShowPremiumStatusEnabled) {
                            ProfileActivity.this.emojiStatusDrawable[i3].set(ProfileActivity.this.getPremiumCrossfadeDrawable(i3), true);
                        } else if (l != null) {
                            ProfileActivity.this.emojiStatusDrawable[i3].set(l.longValue(), true);
                        } else {
                            ProfileActivity.this.emojiStatusDrawable[i3].set((Drawable) null, true);
                        }
                    }
                }
                if (l != null && isShowPremiumStatusEnabled) {
                    ProfileActivity.this.animatedStatusView.animateChange(ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(l));
                }
                ProfileActivity.this.updateEmojiStatusDrawableColor();
                ProfileActivity.this.updateEmojiStatusEffectPosition();
                ConnectionsManager.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).sendRequest(tLRPC$TL_channels_updateEmojiStatus, null);
                if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                    ProfileActivity.this.selectAnimatedEmojiDialog = null;
                    selectAnimatedEmojiDialogWindowArr[0].dismiss();
                }
            }
        };
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
        if (user != null) {
            selectAnimatedEmojiDialog.setExpireDateHint(DialogObject.getEmojiStatusUntil(user.emoji_status));
        }
        if (user != null && !getForkCommonController().isShowPremiumStatusEnabled()) {
            selectAnimatedEmojiDialog.setSelected(getUserConfig().getEmojiStatus());
        } else {
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr2 = this.emojiStatusDrawable;
            selectAnimatedEmojiDialog.setSelected((swapAnimatedEmojiDrawableArr2[1] == null || !(swapAnimatedEmojiDrawableArr2[1].getDrawable() instanceof AnimatedEmojiDrawable)) ? null : Long.valueOf(((AnimatedEmojiDrawable) this.emojiStatusDrawable[1].getDrawable()).getDocumentId()));
        }
        selectAnimatedEmojiDialog.setSaveState(3);
        selectAnimatedEmojiDialog.setScrimDrawable(this.emojiStatusDrawable[1], this.nameTextView[1]);
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, -2, -2) { // from class: org.telegram.ui.ProfileActivity.37
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
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
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this.fragmentView, clamp, m107dp, 51);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
    public TLRPC$Chat getCurrentChat() {
        return this.currentChat;
    }

    public TLRPC$UserFull getUserInfo() {
        return this.userInfo;
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
    public boolean isFragmentOpened() {
        return this.isFragmentOpened;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void openAvatar(int r22) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.openAvatar(int):void");
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
                if (tLRPC$UserProfilePhoto == null || tLRPC$UserProfilePhoto.photo_big == null || (tLRPC$UserProfilePhoto instanceof TLRPC$TL_userProfilePhotoEmpty)) {
                    z = false;
                }
                imageUpdater.openMenu(z, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda50
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.this.lambda$onWriteButtonClick$40();
                    }
                }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda13
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        ProfileActivity.this.lambda$onWriteButtonClick$41(dialogInterface);
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
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
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
    public /* synthetic */ void lambda$onWriteButtonClick$40() {
        MessagesController.getInstance(this.currentAccount).deleteUserPhoto(null);
        this.cameraDrawable.setCurrentFrame(0);
        this.cellCameraDrawable.setCurrentFrame(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onWriteButtonClick$41(DialogInterface dialogInterface) {
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

    public boolean onMemberClick(TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, View view) {
        return onMemberClick(tLRPC$ChatParticipant, z, false, view);
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
    public boolean onMemberClick(final TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, boolean z2, View view) {
        boolean z3;
        TLRPC$ChannelParticipant tLRPC$ChannelParticipant;
        boolean z4;
        boolean z5;
        boolean z6;
        int i;
        String str;
        boolean z7 = false;
        if (getParentActivity() == null || tLRPC$ChatParticipant == null) {
            return false;
        }
        if (z) {
            final TLRPC$User user = getMessagesController().getUser(Long.valueOf(tLRPC$ChatParticipant.user_id));
            if (user != null && tLRPC$ChatParticipant.user_id != getUserConfig().getClientUserId()) {
                this.selectedUser = tLRPC$ChatParticipant.user_id;
                if (ChatObject.isChannel(this.currentChat)) {
                    TLRPC$ChannelParticipant tLRPC$ChannelParticipant2 = ((TLRPC$TL_chatChannelParticipant) tLRPC$ChatParticipant).channelParticipant;
                    getMessagesController().getUser(Long.valueOf(tLRPC$ChatParticipant.user_id));
                    boolean canAddAdmins = ChatObject.canAddAdmins(this.currentChat);
                    if (canAddAdmins && ((tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantCreator) || ((tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantAdmin) && !tLRPC$ChannelParticipant2.can_edit))) {
                        canAddAdmins = false;
                    }
                    boolean z8 = ChatObject.canBlockUsers(this.currentChat) && (!((tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantAdmin) || (tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantCreator)) || tLRPC$ChannelParticipant2.can_edit);
                    z3 = tLRPC$ChannelParticipant2 instanceof TLRPC$TL_channelParticipantAdmin;
                    tLRPC$ChannelParticipant = tLRPC$ChannelParticipant2;
                    z4 = canAddAdmins;
                    z6 = z8;
                    z5 = this.currentChat.gigagroup ? false : z8;
                } else {
                    TLRPC$Chat tLRPC$Chat = this.currentChat;
                    boolean z9 = tLRPC$Chat.creator || ((tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipant) && (ChatObject.canBlockUsers(tLRPC$Chat) || tLRPC$ChatParticipant.inviter_id == getUserConfig().getClientUserId()));
                    z3 = tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantAdmin;
                    tLRPC$ChannelParticipant = null;
                    z4 = this.currentChat.creator;
                    z5 = z4;
                    z6 = z9;
                }
                final boolean z10 = z3;
                if (z4 || z5 || z6) {
                    z7 = true;
                }
                if (!z2 && z7) {
                    final TLRPC$ChannelParticipant tLRPC$ChannelParticipant3 = tLRPC$ChannelParticipant;
                    final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda69
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            ProfileActivity.this.lambda$onMemberClick$42(tLRPC$ChannelParticipant3, user, tLRPC$ChatParticipant, z10, (Integer) obj);
                        }
                    };
                    ItemOptions scrimViewBackground = ItemOptions.makeOptions(this, view).setScrimViewBackground(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundWhite)));
                    int i2 = C3632R.C3634drawable.msg_admins;
                    if (z10) {
                        i = C3632R.string.EditAdminRights;
                        str = "EditAdminRights";
                    } else {
                        i = C3632R.string.SetAsAdmin;
                        str = "SetAsAdmin";
                    }
                    final TLRPC$ChannelParticipant tLRPC$ChannelParticipant4 = tLRPC$ChannelParticipant;
                    scrimViewBackground.addIf(z4, i2, LocaleController.getString(str, i), new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda42
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileActivity.lambda$onMemberClick$43(Utilities.Callback.this);
                        }
                    }).addIf(z5, C3632R.C3634drawable.msg_permissions, LocaleController.getString("ChangePermissions", C3632R.string.ChangePermissions), new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda54
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileActivity.this.lambda$onMemberClick$45(tLRPC$ChannelParticipant4, tLRPC$ChatParticipant, user, callback);
                        }
                    }).addIf(z6, C3632R.C3634drawable.msg_remove, (CharSequence) LocaleController.getString("KickFromGroup", C3632R.string.KickFromGroup), true, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda55
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileActivity.this.lambda$onMemberClick$46(tLRPC$ChatParticipant);
                        }
                    }).setMinWidth(190).show();
                }
            }
            return z7;
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
    public /* synthetic */ void lambda$onMemberClick$42(TLRPC$ChannelParticipant tLRPC$ChannelParticipant, TLRPC$User tLRPC$User, TLRPC$ChatParticipant tLRPC$ChatParticipant, boolean z, Integer num) {
        if (tLRPC$ChannelParticipant != null) {
            openRightsEdit(num.intValue(), tLRPC$User, tLRPC$ChatParticipant, tLRPC$ChannelParticipant.admin_rights, tLRPC$ChannelParticipant.banned_rights, tLRPC$ChannelParticipant.rank, z);
        } else {
            openRightsEdit(num.intValue(), tLRPC$User, tLRPC$ChatParticipant, null, null, "", z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onMemberClick$43(Utilities.Callback callback) {
        callback.run(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMemberClick$45(TLRPC$ChannelParticipant tLRPC$ChannelParticipant, TLRPC$ChatParticipant tLRPC$ChatParticipant, TLRPC$User tLRPC$User, final Utilities.Callback callback) {
        if ((tLRPC$ChannelParticipant instanceof TLRPC$TL_channelParticipantAdmin) || (tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantAdmin)) {
            if (getParentActivity() == null) {
                return;
            }
            showDialog(new AlertDialog.Builder(getParentActivity(), this.resourcesProvider).setTitle(LocaleController.getString("AppName", C3632R.string.AppName)).setMessage(LocaleController.formatString("AdminWillBeRemoved", C3632R.string.AdminWillBeRemoved, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name))).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda7
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ProfileActivity.lambda$onMemberClick$44(Utilities.Callback.this, dialogInterface, i);
                }
            }).setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null).create());
            return;
        }
        callback.run(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onMemberClick$44(Utilities.Callback callback, DialogInterface dialogInterface, int i) {
        callback.run(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMemberClick$46(TLRPC$ChatParticipant tLRPC$ChatParticipant) {
        kickUser(this.selectedUser, tLRPC$ChatParticipant);
    }

    private void openRightsEdit(final int i, final TLRPC$User tLRPC$User, final TLRPC$ChatParticipant tLRPC$ChatParticipant, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str, final boolean z) {
        final boolean[] zArr = new boolean[1];
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(tLRPC$User.f1751id, this.chatId, tLRPC$TL_chatAdminRights, this.currentChat.default_banned_rights, tLRPC$TL_chatBannedRights, str, i, true, false, null) { // from class: org.telegram.ui.ProfileActivity.38
            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public void onTransitionAnimationEnd(boolean z2, boolean z3) {
                if (!z2 && z3 && zArr[0] && BulletinFactory.canShowBulletin(ProfileActivity.this)) {
                    BulletinFactory.createPromoteToAdminBulletin(ProfileActivity.this, tLRPC$User.first_name).show();
                }
            }
        };
        chatRightsEditActivity.setDelegate(new ChatRightsEditActivity.ChatRightsEditActivityDelegate() { // from class: org.telegram.ui.ProfileActivity.39
            @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
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

            @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
            public void didChangeOwner(TLRPC$User tLRPC$User2) {
                ProfileActivity.this.undoView.showWithAction(-ProfileActivity.this.chatId, ProfileActivity.this.currentChat.megagroup ? 10 : 9, tLRPC$User2);
            }
        });
        presentFragment(chatRightsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean processOnClickOrPress(final int i, final View view, final float f, final float f2) {
        TLRPC$Chat chat;
        String publicUsername;
        String sb;
        String str;
        TLRPC$UserFull tLRPC$UserFull;
        View view2 = view;
        if (i == this.usernameRow || i == this.setUsernameRow) {
            if (this.userId != 0) {
                TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.userId));
                publicUsername = UserObject.getPublicUsername(user);
                if (user == null || publicUsername == null) {
                    return false;
                }
            } else if (this.chatId == 0 || (chat = getMessagesController().getChat(Long.valueOf(this.chatId))) == null || (this.topicId == 0 && !ChatObject.isPublic(chat))) {
                return false;
            } else {
                publicUsername = ChatObject.getPublicUsername(chat);
            }
            if (this.userId == 0) {
                TLRPC$Chat chat2 = getMessagesController().getChat(Long.valueOf(this.chatId));
                if (ChatObject.isPublic(chat2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("https://");
                    sb2.append(getMessagesController().linkPrefix);
                    sb2.append("/");
                    sb2.append(ChatObject.getPublicUsername(chat2));
                    sb2.append(this.topicId != 0 ? "/" + this.topicId : "");
                    sb = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("https://");
                    sb3.append(getMessagesController().linkPrefix);
                    sb3.append("/c/");
                    sb3.append(chat2.f1602id);
                    sb3.append(this.topicId != 0 ? "/" + this.topicId : "");
                    sb = sb3.toString();
                }
                String str2 = sb;
                showDialog(new DialogC698040(getParentActivity(), null, str2, false, str2, false));
                return true;
            }
            try {
                BulletinFactory.m65of(this).createCopyBulletin(LocaleController.getString("UsernameCopied", C3632R.string.UsernameCopied), this.resourcesProvider).show();
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", "@" + publicUsername));
                return true;
            } catch (Exception e) {
                FileLog.m102e(e);
                return true;
            }
        } else if (i == this.phoneRow || i == this.numberRow) {
            final TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(this.userId));
            if (user2 == null || (str = user2.phone) == null || str.length() == 0 || getParentActivity() == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (i == this.phoneRow) {
                TLRPC$UserFull tLRPC$UserFull2 = this.userInfo;
                if (tLRPC$UserFull2 != null && tLRPC$UserFull2.phone_calls_available) {
                    arrayList3.add(Integer.valueOf(C3632R.C3634drawable.msg_calls));
                    arrayList.add(LocaleController.getString("CallViaTelegram", C3632R.string.CallViaTelegram));
                    arrayList2.add(2);
                    if (Build.VERSION.SDK_INT >= 18 && this.userInfo.video_calls_available) {
                        arrayList3.add(Integer.valueOf(C3632R.C3634drawable.msg_videocall));
                        arrayList.add(LocaleController.getString("VideoCallViaTelegram", C3632R.string.VideoCallViaTelegram));
                        arrayList2.add(3);
                    }
                }
                if (!this.isFragmentPhoneNumber) {
                    arrayList3.add(Integer.valueOf(C3632R.C3634drawable.msg_calls_regular));
                    arrayList.add(LocaleController.getString("Call", C3632R.string.Call));
                    arrayList2.add(0);
                }
            }
            arrayList3.add(Integer.valueOf(C3632R.C3634drawable.msg_copy));
            arrayList.add(LocaleController.getString("Copy", C3632R.string.Copy));
            arrayList2.add(1);
            final AtomicReference atomicReference = new AtomicReference();
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this, getContext(), C3632R.C3634drawable.popup_fixed_alert, this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.41
                Path path = new Path();

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view3, long j) {
                    canvas.save();
                    this.path.rewind();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(view3.getLeft(), view3.getTop(), view3.getRight(), view3.getBottom());
                    this.path.addRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Path.Direction.CW);
                    canvas.clipPath(this.path);
                    boolean drawChild = super.drawChild(canvas, view3, j);
                    canvas.restore();
                    return drawChild;
                }
            };
            actionBarPopupWindowLayout.setFitItems(true);
            for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                final int intValue = ((Integer) arrayList2.get(i2)).intValue();
                ActionBarMenuItem.addItem(actionBarPopupWindowLayout, ((Integer) arrayList3.get(i2)).intValue(), (CharSequence) arrayList.get(i2), false, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda24
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        ProfileActivity.this.lambda$processOnClickOrPress$47(atomicReference, intValue, user2, view3);
                    }
                });
            }
            if (this.isFragmentPhoneNumber) {
                FrameLayout frameLayout = new FrameLayout(getContext());
                frameLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator, this.resourcesProvider));
                actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 8));
                TextView textView = new TextView(getContext());
                textView.setPadding(AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8));
                textView.setTextSize(1, 13.0f);
                textView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider));
                textView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteValueText, this.resourcesProvider));
                textView.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector, this.resourcesProvider), 0, 6));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.AnonymousNumberNotice)));
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
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda29
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        ProfileActivity.lambda$processOnClickOrPress$48(view3);
                    }
                });
                int i4 = C3632R.C3635id.fit_width_tag;
                frameLayout.setTag(i4, 1);
                textView.setTag(i4, 1);
                actionBarPopupWindowLayout.addView((View) textView, LayoutHelper.createLinear(-2, -2));
            }
            ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
            actionBarPopupWindow.setPauseNotifications(true);
            actionBarPopupWindow.setDismissAnimationDuration(220);
            actionBarPopupWindow.setOutsideTouchable(true);
            actionBarPopupWindow.setClippingEnabled(true);
            actionBarPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation);
            actionBarPopupWindow.setFocusable(true);
            actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE));
            actionBarPopupWindow.setInputMethodMode(2);
            actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
            atomicReference.set(actionBarPopupWindow);
            float f3 = f;
            float f4 = f2;
            while (view2 != getFragmentView() && view2 != null) {
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
            String str3 = null;
            if (i == this.locationRow) {
                TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
                if (tLRPC$ChatFull != null) {
                    TLRPC$ChannelLocation tLRPC$ChannelLocation = tLRPC$ChatFull.location;
                    if (tLRPC$ChannelLocation instanceof TLRPC$TL_channelLocation) {
                        str3 = ((TLRPC$TL_channelLocation) tLRPC$ChannelLocation).address;
                    }
                }
            } else if (i == this.channelInfoRow) {
                TLRPC$ChatFull tLRPC$ChatFull2 = this.chatInfo;
                if (tLRPC$ChatFull2 != null) {
                    str3 = tLRPC$ChatFull2.about;
                }
            } else {
                TLRPC$UserFull tLRPC$UserFull3 = this.userInfo;
                if (tLRPC$UserFull3 != null) {
                    str3 = tLRPC$UserFull3.about;
                }
            }
            final String str4 = str3;
            if (TextUtils.isEmpty(str4)) {
                return false;
            }
            final String[] strArr = {"und"};
            MessagesController.getInstance(this.currentAccount).getTranslateController().isContextTranslateEnabled();
            final boolean[] zArr = new boolean[1];
            zArr[0] = i == this.bioRow || i == this.channelInfoRow || i == this.userInfoRow;
            final String language = LocaleController.getInstance().getCurrentLocale().getLanguage();
            new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.this.lambda$processOnClickOrPress$51(zArr, str4, i, strArr, language, f, f2, view);
                }
            }.run();
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ProfileActivity$40 */
    /* loaded from: classes5.dex */
    public class DialogC698040 extends ShareAlert {
        DialogC698040(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2) {
            super(context, arrayList, str, z, str2, z2);
        }

        @Override // org.telegram.p043ui.Components.ShareAlert
        protected void onSend(final LongSparseArray<TLRPC$Dialog> longSparseArray, final int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$40$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.DialogC698040.this.lambda$onSend$0(longSparseArray, i);
                }
            }, 250L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSend$0(LongSparseArray longSparseArray, int i) {
            BulletinFactory.createInviteSentBulletin(ProfileActivity.this.getParentActivity(), ProfileActivity.this.contentView, longSparseArray.size(), longSparseArray.size() == 1 ? ((TLRPC$Dialog) longSparseArray.valueAt(0)).f1608id : 0L, i, getThemedColor(Theme.key_undo_background), getThemedColor(Theme.key_undo_infoColor)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processOnClickOrPress$47(AtomicReference atomicReference, int i, TLRPC$User tLRPC$User, View view) {
        ((ActionBarPopupWindow) atomicReference.get()).dismiss();
        if (i == 0) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:+" + tLRPC$User.phone));
                intent.addFlags(268435456);
                getParentActivity().startActivityForResult(intent, 500);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        } else if (i == 1) {
            try {
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", "+" + tLRPC$User.phone));
                if (AndroidUtilities.shouldShowClipboardToast()) {
                    BulletinFactory.m65of(this).createCopyBulletin(LocaleController.getString("PhoneCopied", C3632R.string.PhoneCopied)).show();
                }
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
        } else if ((i == 2 || i == 3) && getParentActivity() != null) {
            boolean z = i == 3;
            TLRPC$UserFull tLRPC$UserFull = this.userInfo;
            VoIPHelper.startCall(tLRPC$User, z, tLRPC$UserFull != null && tLRPC$UserFull.video_calls_available, getParentActivity(), this.userInfo, getAccountInstance());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$processOnClickOrPress$48(View view) {
        try {
            view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://fragment.com")));
        } catch (ActivityNotFoundException e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processOnClickOrPress$51(boolean[] zArr, final String str, final int i, final String[] strArr, final String str2, float f, float f2, View view) {
        if (getParentActivity() == null) {
            return;
        }
        boolean z = false;
        CharSequence[] charSequenceArr = zArr[0] ? new CharSequence[]{LocaleController.getString("Copy", C3632R.string.Copy), LocaleController.getString("TranslateMessage", C3632R.string.TranslateMessage)} : new CharSequence[]{LocaleController.getString("Copy", C3632R.string.Copy)};
        int[] iArr = zArr[0] ? new int[]{C3632R.C3634drawable.msg_copy, C3632R.C3634drawable.msg_translate} : new int[]{C3632R.C3634drawable.msg_copy};
        final AtomicReference atomicReference = new AtomicReference();
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this, getContext(), C3632R.C3634drawable.popup_fixed_alert, this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.42
            Path path = new Path();

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view2, long j) {
                canvas.save();
                this.path.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                this.path.addRoundRect(rectF, AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), Path.Direction.CW);
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
            ActionBarMenuItem.addItem(actionBarPopupWindowLayout, iArr[i2], charSequenceArr[i2], z, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda23
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ProfileActivity.this.lambda$processOnClickOrPress$50(atomicReference, i3, str, i, strArr, str2, view2);
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
        actionBarPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE));
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
    public /* synthetic */ void lambda$processOnClickOrPress$50(AtomicReference atomicReference, int i, String str, int i2, String[] strArr, String str2, View view) {
        ((ActionBarPopupWindow) atomicReference.get()).dismiss();
        try {
            if (i == 0) {
                AndroidUtilities.addToClipboard(str);
                if (i2 == this.bioRow) {
                    BulletinFactory.m65of(this).createCopyBulletin(LocaleController.getString("BioCopied", C3632R.string.BioCopied)).show();
                } else {
                    BulletinFactory.m65of(this).createCopyBulletin(LocaleController.getString("TextCopied", C3632R.string.TextCopied)).show();
                }
            } else if (i != 1) {
            } else {
                showDialog(TranslateAlert.createInstanceForForkTranslation(this.parentLayout.getLastFragment(), new TranslationArgs(TranslationDialogType.INCOMING, str, null), null, MessagesController.getInstance(UserConfig.selectedAccount).isChatNoForwards(-this.dialogId)));
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leaveChatPressed() {
        boolean isForum = ChatObject.isForum(this.currentChat);
        AlertsCreator.createClearOrDeleteDialogAlert(this, false, this.currentChat, null, false, isForum, !isForum, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda67
            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
            public final void run(boolean z) {
                ProfileActivity.this.lambda$leaveChatPressed$54(z);
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$leaveChatPressed$54(boolean z) {
        this.playProfileAnimation = 0;
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.closeChats;
        notificationCenter.removeObserver(this, i);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
        finishFragment();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needDeleteDialog, Long.valueOf(-this.currentChat.f1602id), null, this.currentChat, Boolean.valueOf(z));
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
        serverFilter.f1601q = "";
        tLRPC$TL_channels_getParticipants.limit = 200;
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tLRPC$TL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda73
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ProfileActivity.this.lambda$getChannelParticipants$57(tLRPC$TL_channels_getParticipants, i, tLObject, tLRPC$TL_error);
            }
        }), this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChannelParticipants$56(final TLRPC$TL_error tLRPC$TL_error, final TLObject tLObject, final TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants) {
        getNotificationCenter().doOnIdle(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$getChannelParticipants$55(tLRPC$TL_error, tLObject, tLRPC$TL_channels_getParticipants);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChannelParticipants$57(final TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants, int i, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$getChannelParticipants$56(tLRPC$TL_error, tLObject, tLRPC$TL_channels_getParticipants);
            }
        }, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChannelParticipants$55(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants) {
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
                    GroupMembersFilter groupMembersFilter = this.membersFilter;
                    if (groupMembersFilter == GroupMembersFilter.DELETED) {
                        if (!UserObject.isDeleted(getMessagesController().getUser(Long.valueOf(tLRPC$TL_chatChannelParticipant.user_id)))) {
                        }
                        this.chatInfo.participants.participants.add(tLRPC$TL_chatChannelParticipant);
                        this.participantsMap.put(tLRPC$TL_chatChannelParticipant.user_id, tLRPC$TL_chatChannelParticipant);
                    } else {
                        if (groupMembersFilter == GroupMembersFilter.PREMIUM && !getMessagesController().getUser(Long.valueOf(tLRPC$TL_chatChannelParticipant.user_id)).premium) {
                        }
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
        updateStoriesViewBounds(false);
        C3704ActionBar c3704ActionBar = this.actionBar;
        if (c3704ActionBar != null) {
            c3704ActionBar.createMenu().requestLayout();
        }
        ArrayList arrayList = new ArrayList();
        ActionBarMenuItem actionBarMenuItem = this.serviceMessagesItem;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem, property, fArr));
        ActionBarMenuItem actionBarMenuItem2 = this.serviceMessagesItem;
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        fArr2[0] = z ? -AndroidUtilities.m107dp(10) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem2, property2, fArr2));
        ImageView membersFilterItem = this.sharedMediaLayout.getMembersFilterItem();
        Property property3 = View.ALPHA;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(membersFilterItem, property3, fArr3));
        ImageView membersFilterItem2 = this.sharedMediaLayout.getMembersFilterItem();
        Property property4 = View.TRANSLATION_Y;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? 0.0f : AndroidUtilities.m107dp(10);
        arrayList.add(ObjectAnimator.ofFloat(membersFilterItem2, property4, fArr4));
        ImageView membersMenuItem = this.sharedMediaLayout.getMembersMenuItem();
        Property property5 = View.ALPHA;
        float[] fArr5 = new float[1];
        fArr5[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(membersMenuItem, property5, fArr5));
        ImageView membersMenuItem2 = this.sharedMediaLayout.getMembersMenuItem();
        Property property6 = View.TRANSLATION_Y;
        float[] fArr6 = new float[1];
        fArr6[0] = z ? 0.0f : AndroidUtilities.m107dp(10);
        arrayList.add(ObjectAnimator.ofFloat(membersMenuItem2, property6, fArr6));
        ActionBarMenuItem actionBarMenuItem3 = this.callItem;
        Property property7 = View.ALPHA;
        float[] fArr7 = new float[1];
        fArr7[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, property7, fArr7));
        ActionBarMenuItem actionBarMenuItem4 = this.videoCallItem;
        Property property8 = View.ALPHA;
        float[] fArr8 = new float[1];
        fArr8[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem4, property8, fArr8));
        ActionBarMenuItem actionBarMenuItem5 = this.otherItem;
        Property property9 = View.ALPHA;
        float[] fArr9 = new float[1];
        fArr9[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem5, property9, fArr9));
        ActionBarMenuItem actionBarMenuItem6 = this.editItem;
        Property property10 = View.ALPHA;
        float[] fArr10 = new float[1];
        fArr10[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem6, property10, fArr10));
        ActionBarMenuItem actionBarMenuItem7 = this.callItem;
        Property property11 = View.TRANSLATION_Y;
        float[] fArr11 = new float[1];
        fArr11[0] = z ? -AndroidUtilities.m107dp(10) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem7, property11, fArr11));
        ActionBarMenuItem actionBarMenuItem8 = this.videoCallItem;
        Property property12 = View.TRANSLATION_Y;
        float[] fArr12 = new float[1];
        fArr12[0] = z ? -AndroidUtilities.m107dp(10) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem8, property12, fArr12));
        ActionBarMenuItem actionBarMenuItem9 = this.otherItem;
        Property property13 = View.TRANSLATION_Y;
        float[] fArr13 = new float[1];
        fArr13[0] = z ? -AndroidUtilities.m107dp(10) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem9, property13, fArr13));
        ActionBarMenuItem actionBarMenuItem10 = this.editItem;
        Property property14 = View.TRANSLATION_Y;
        float[] fArr14 = new float[1];
        fArr14[0] = z ? -AndroidUtilities.m107dp(10) : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem10, property14, fArr14));
        Property property15 = View.ALPHA;
        float[] fArr15 = new float[1];
        fArr15[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(searchItem, property15, fArr15));
        Property property16 = View.TRANSLATION_Y;
        float[] fArr16 = new float[1];
        fArr16[0] = z ? 0.0f : AndroidUtilities.m107dp(10);
        arrayList.add(ObjectAnimator.ofFloat(searchItem, property16, fArr16));
        ImageView imageView = this.sharedMediaLayout.photoVideoOptionsItem;
        Property property17 = View.ALPHA;
        float[] fArr17 = new float[1];
        fArr17[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(imageView, property17, fArr17));
        ImageView imageView2 = this.sharedMediaLayout.photoVideoOptionsItem;
        Property property18 = View.TRANSLATION_Y;
        float[] fArr18 = new float[1];
        fArr18[0] = z ? 0.0f : AndroidUtilities.m107dp(10);
        arrayList.add(ObjectAnimator.ofFloat(imageView2, property18, fArr18));
        C3704ActionBar c3704ActionBar2 = this.actionBar;
        Property<C3704ActionBar, Float> property19 = this.ACTIONBAR_HEADER_PROGRESS;
        float[] fArr19 = new float[1];
        fArr19[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(c3704ActionBar2, property19, fArr19));
        SimpleTextView simpleTextView = this.onlineTextView[1];
        Property property20 = View.ALPHA;
        float[] fArr20 = new float[1];
        fArr20[0] = z ? 0.0f : 1.0f;
        arrayList.add(ObjectAnimator.ofFloat(simpleTextView, property20, fArr20));
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = this.mediaCounterTextView;
        Property property21 = View.ALPHA;
        float[] fArr21 = new float[1];
        fArr21[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(clippingTextViewSwitcher, property21, fArr21));
        if (z) {
            arrayList.add(ObjectAnimator.ofFloat(this, this.HEADER_SHADOW, BitmapDescriptorFactory.HUE_RED));
        }
        if (this.storyView != null) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ProfileActivity.this.lambda$setMediaHeaderVisible$58(valueAnimator);
                }
            });
            arrayList.add(ofFloat);
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.headerAnimatorSet = animatorSet3;
        animatorSet3.playTogether(arrayList);
        this.headerAnimatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.headerAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.44
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
                        ProfileActivity.this.headerShadowAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.44.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                ProfileActivity.this.headerShadowAnimatorSet = null;
                            }
                        });
                        ProfileActivity.this.headerShadowAnimatorSet.start();
                    }
                }
                ProfileActivity.this.updateStoriesViewBounds(false);
                ProfileActivity.this.headerAnimatorSet = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ProfileActivity.this.headerAnimatorSet = null;
            }
        });
        this.headerAnimatorSet.setDuration(150L);
        this.headerAnimatorSet.start();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
        needLayoutText(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMediaHeaderVisible$58(ValueAnimator valueAnimator) {
        updateStoriesViewBounds(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddMember() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("addToGroup", true);
        bundle.putLong("chatId", this.currentChat.f1602id);
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
        groupCreateActivity.setDelegate(new GroupCreateActivity.ContactsAddActivityDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda79
            @Override // org.telegram.p043ui.GroupCreateActivity.ContactsAddActivityDelegate
            public final void didSelectUsers(ArrayList arrayList, int i2) {
                ProfileActivity.this.lambda$openAddMember$62(arrayList, i2);
            }

            @Override // org.telegram.p043ui.GroupCreateActivity.ContactsAddActivityDelegate
            public /* synthetic */ void needAddBot(TLRPC$User tLRPC$User) {
                GroupCreateActivity.ContactsAddActivityDelegate.CC.$default$needAddBot(this, tLRPC$User);
            }
        });
        presentFragment(groupCreateActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddMember$62(ArrayList arrayList, int i) {
        TLRPC$ChatParticipants tLRPC$ChatParticipants;
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList2 = new ArrayList();
        TLRPC$ChatFull tLRPC$ChatFull = this.chatInfo;
        if (tLRPC$ChatFull != null && (tLRPC$ChatParticipants = tLRPC$ChatFull.participants) != null && tLRPC$ChatParticipants.participants != null) {
            for (int i2 = 0; i2 < this.chatInfo.participants.participants.size(); i2++) {
                hashSet.add(Long.valueOf(this.chatInfo.participants.participants.get(i2).user_id));
            }
        }
        getMessagesController().addUsersToChat(this.currentChat, this, arrayList, i, new androidx.core.util.Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda33
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                arrayList2.add((TLRPC$User) obj);
            }
        }, new androidx.core.util.Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda34
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ProfileActivity.this.lambda$openAddMember$60((TLRPC$User) obj);
            }
        }, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$openAddMember$61(arrayList2, hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddMember$60(TLRPC$User tLRPC$User) {
        for (int i = 0; i < this.chatInfo.participants.participants.size(); i++) {
            if (this.chatInfo.participants.participants.get(i).user_id == tLRPC$User.f1751id) {
                this.chatInfo.participants.participants.remove(i);
                updateListAnimated(true);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddMember$61(ArrayList arrayList, HashSet hashSet) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC$User tLRPC$User = (TLRPC$User) arrayList.get(i);
            if (!hashSet.contains(Long.valueOf(tLRPC$User.f1751id))) {
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
                    tLRPC$ChannelParticipant.peer.user_id = tLRPC$User.f1751id;
                    tLRPC$ChannelParticipant.date = getConnectionsManager().getCurrentTime();
                    tLRPC$TL_chatChannelParticipant.user_id = tLRPC$User.f1751id;
                    this.chatInfo.participants.participants.add(tLRPC$TL_chatChannelParticipant);
                } else {
                    TLRPC$TL_chatParticipant tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipant();
                    tLRPC$TL_chatParticipant.user_id = tLRPC$User.f1751id;
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
        int top = view == null ? 0 : view.getTop();
        int adapterPosition = holder != null ? holder.getAdapterPosition() : -1;
        if (top < 0 || adapterPosition != 0) {
            top = 0;
        }
        boolean z = this.imageUpdater == null && this.actionBar.isSearchFieldVisible();
        int i2 = this.sharedMediaRow;
        if (i2 != -1 && !z) {
            RecyclerListView.Holder holder2 = (RecyclerListView.Holder) this.listView.findViewHolderForAdapterPosition(i2);
            z = holder2 != null && holder2.itemView.getTop() <= 0;
        }
        setMediaHeaderVisible(z);
        float f = top;
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

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
    public void updateSelectedMediaTabText() {
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout == null || this.mediaCounterTextView == null) {
            return;
        }
        int closestTab = sharedMediaLayout.getClosestTab();
        int[] lastMediaCount = this.sharedMediaPreloader.getLastMediaCount();
        if (closestTab == 0) {
            if (lastMediaCount[7] <= 0 && lastMediaCount[6] <= 0) {
                if (lastMediaCount[0] <= 0) {
                    this.mediaCounterTextView.setText(LocaleController.getString(C3632R.string.SharedMedia));
                } else {
                    this.mediaCounterTextView.setText(LocaleController.formatPluralString("Media", lastMediaCount[0], new Object[0]));
                }
            } else if (this.sharedMediaLayout.getPhotosVideosTypeFilter() == 1 || lastMediaCount[7] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Photos", lastMediaCount[6], new Object[0]));
            } else if (this.sharedMediaLayout.getPhotosVideosTypeFilter() == 2 || lastMediaCount[6] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Videos", lastMediaCount[7], new Object[0]));
            } else {
                this.mediaCounterTextView.setText(String.format("%s, %s", LocaleController.formatPluralString("Photos", lastMediaCount[6], new Object[0]), LocaleController.formatPluralString("Videos", lastMediaCount[7], new Object[0])));
            }
        } else if (closestTab == 1) {
            if (lastMediaCount[1] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.getString(C3632R.string.Files));
            } else {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Files", lastMediaCount[1], new Object[0]));
            }
        } else if (closestTab == 2) {
            if (lastMediaCount[2] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.getString(C3632R.string.Voice));
            } else {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Voice", lastMediaCount[2], new Object[0]));
            }
        } else if (closestTab == 3) {
            if (lastMediaCount[3] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.getString(C3632R.string.SharedLinks));
            } else {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("Links", lastMediaCount[3], new Object[0]));
            }
        } else if (closestTab == 4) {
            if (lastMediaCount[4] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.getString(C3632R.string.Music));
            } else {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("MusicFiles", lastMediaCount[4], new Object[0]));
            }
        } else if (closestTab == 5) {
            if (lastMediaCount[5] <= 0) {
                this.mediaCounterTextView.setText(LocaleController.getString(C3632R.string.AccDescrGIFs));
            } else {
                this.mediaCounterTextView.setText(LocaleController.formatPluralString("GIFs", lastMediaCount[5], new Object[0]));
            }
        } else if (closestTab == 6) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("CommonGroups", this.userInfo.common_chats_count, new Object[0]));
        } else if (closestTab == 7) {
            this.mediaCounterTextView.setText(this.onlineTextView[1].getText());
        } else if (closestTab == 8) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("ProfileStoriesCount", this.sharedMediaLayout.getStoriesCount(closestTab), new Object[0]));
        } else if (closestTab == 13) {
            MessagesController.ChannelRecommendations channelRecommendations = MessagesController.getInstance(this.currentAccount).getChannelRecommendations(this.chatId);
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("Channels", channelRecommendations == null ? 0 : channelRecommendations.chats.size() + channelRecommendations.more, new Object[0]));
        } else if (closestTab == 12) {
            this.mediaCounterTextView.setText(LocaleController.formatPluralString("SavedMessagesCount", Math.max(1, getMessagesController().getSavedMessagesController().getMessagesCount(getDialogId())), new Object[0]));
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
        int currentActionBarHeight = (this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + C3704ActionBar.getCurrentActionBarHeight();
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null && !this.openAnimationInProgress) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) recyclerListView.getLayoutParams();
            if (layoutParams.topMargin != currentActionBarHeight) {
                layoutParams.topMargin = currentActionBarHeight;
                this.listView.setLayoutParams(layoutParams);
            }
        }
        if (this.avatarContainer != null) {
            float min = Math.min(1.0f, this.extraHeight / AndroidUtilities.m108dp(88.0f));
            this.listView.setTopGlowOffset((int) this.extraHeight);
            this.listView.setOverScrollMode((this.extraHeight <= ((float) AndroidUtilities.m108dp(88.0f)) || this.extraHeight >= ((float) (this.listView.getMeasuredWidth() - currentActionBarHeight))) ? 0 : 2);
            RLottieImageView rLottieImageView = this.writeButton;
            if (rLottieImageView != null) {
                rLottieImageView.setTranslationY(((((this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + C3704ActionBar.getCurrentActionBarHeight()) + this.extraHeight) + this.searchTransitionOffset) - AndroidUtilities.m108dp(29.5f));
                boolean z2 = min > 0.2f && !this.searchMode && (this.imageUpdater == null || this.setAvatarRow == -1);
                if (z2 && this.chatId != 0) {
                    z2 = (!ChatObject.isChannel(this.currentChat) || this.currentChat.megagroup || (tLRPC$ChatFull = this.chatInfo) == null || tLRPC$ChatFull.linked_chat_id == 0 || this.infoHeaderRow == -1) ? false : true;
                }
                if (!this.openAnimationInProgress) {
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
                            this.writeButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.45
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
                            this.writeButton.setAlpha(z2 ? 1.0f : 0.0f);
                        }
                    }
                    if (this.qrItem != null) {
                        updateQrItemVisibility(z);
                        if (!z) {
                            float m107dp = AndroidUtilities.m107dp(48) * this.qrItem.getAlpha();
                            this.qrItem.setTranslationX(m107dp);
                            PagerIndicatorView pagerIndicatorView = this.avatarsViewPagerIndicatorView;
                            if (pagerIndicatorView != null) {
                                pagerIndicatorView.setTranslationX(m107dp - AndroidUtilities.m107dp(48));
                            }
                        }
                    }
                }
                ProfileStoriesView profileStoriesView = this.storyView;
                if (profileStoriesView != null) {
                    profileStoriesView.setExpandCoords(this.avatarContainer2.getMeasuredWidth() - AndroidUtilities.m107dp(40), z2, (this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + C3704ActionBar.getCurrentActionBarHeight() + this.extraHeight + this.searchTransitionOffset);
                }
            }
            this.avatarX = (-AndroidUtilities.dpf2(47.0f)) * min;
            float f = AndroidUtilities.density;
            this.avatarY = (((this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + ((C3704ActionBar.getCurrentActionBarHeight() / 2.0f) * (min + 1.0f))) - (f * 21.0f)) + (f * 27.0f * min) + this.actionBar.getTranslationY();
            float f2 = this.openAnimationInProgress ? this.initialAnimationExtraHeight : this.extraHeight;
            if (f2 > AndroidUtilities.m108dp(88.0f) || this.isPulledDown) {
                float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, (f2 - AndroidUtilities.m108dp(88.0f)) / ((this.listView.getMeasuredWidth() - currentActionBarHeight) - AndroidUtilities.m108dp(88.0f))));
                this.expandProgress = max;
                this.avatarScale = AndroidUtilities.lerp(1.4285715f, 2.4285715f, Math.min(1.0f, max * 3.0f));
                ProfileStoriesView profileStoriesView2 = this.storyView;
                if (profileStoriesView2 != null) {
                    profileStoriesView2.invalidate();
                }
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
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
                        this.overlaysView.setOverlaysVisible(true, min2);
                        this.avatarsViewPagerIndicatorView.refreshVisibility(min2);
                        this.avatarsViewPager.setCreateThumbFromParent(true);
                        this.avatarsViewPager.getAdapter().notifyDataSetChanged();
                        this.expandAnimator.cancel();
                        float lerp = AndroidUtilities.lerp(this.expandAnimatorValues, this.currentExpanAnimatorFracture);
                        float[] fArr = this.expandAnimatorValues;
                        fArr[0] = lerp;
                        fArr[1] = 1.0f;
                        ProfileStoriesView profileStoriesView3 = this.storyView;
                        if (profileStoriesView3 != null && !profileStoriesView3.isEmpty()) {
                            this.expandAnimator.setInterpolator(new FastOutSlowInInterpolator());
                            this.expandAnimator.setDuration((((1.0f - lerp) * 1.3f) * 250.0f) / min2);
                        } else {
                            this.expandAnimator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                            this.expandAnimator.setDuration(((1.0f - lerp) * 250.0f) / min2);
                        }
                        this.expandAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.46
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
                        float m107dp2 = (this.openAnimationInProgress && this.playProfileAnimation == 2) ? (-(1.0f - this.avatarAnimationProgress)) * AndroidUtilities.m107dp(50) : BitmapDescriptorFactory.HUE_RED;
                        this.onlineX = AndroidUtilities.dpf2(16.0f) - this.onlineTextView[1].getLeft();
                        this.nameTextView[1].setTranslationX(AndroidUtilities.dpf2(18.0f) - this.nameTextView[1].getLeft());
                        this.nameTextView[1].setTranslationY(((f3 - AndroidUtilities.dpf2(38.0f)) - this.nameTextView[1].getBottom()) + m107dp2);
                        this.onlineTextView[1].setTranslationX(this.onlineX + this.customPhotoOffset);
                        this.onlineTextView[1].setTranslationY(((f3 - AndroidUtilities.dpf2(18.0f)) - this.onlineTextView[1].getBottom()) + m107dp2);
                        this.mediaCounterTextView.setTranslationX(this.onlineTextView[1].getTranslationX());
                        this.mediaCounterTextView.setTranslationY(this.onlineTextView[1].getTranslationY());
                    }
                } else {
                    if (this.isPulledDown) {
                        this.isPulledDown = false;
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
                        ActionBarMenuItem actionBarMenuItem2 = this.otherItem;
                        if (actionBarMenuItem2 != null) {
                            actionBarMenuItem2.hideSubItem(21);
                            if (this.imageUpdater != null) {
                                this.otherItem.hideSubItem(33);
                                this.otherItem.hideSubItem(34);
                                this.otherItem.hideSubItem(35);
                                this.otherItem.showSubItem(36);
                                this.otherItem.showSubItem(31);
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
                        this.expandAnimator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                        if (!this.isInLandscapeMode) {
                            this.expandAnimator.setDuration((lerp2 * 250.0f) / min2);
                        } else {
                            this.expandAnimator.setDuration(0L);
                        }
                        this.topView.setBackgroundColor(getThemedColor(Theme.key_avatar_backgroundActionBarBlue));
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
                float currentActionBarHeight2 = (((this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0) + (C3704ActionBar.getCurrentActionBarHeight() / 2.0f)) - (AndroidUtilities.density * 21.0f)) + this.actionBar.getTranslationY();
                this.nameTextView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                double d = currentActionBarHeight2;
                this.nameTextView[0].setTranslationY(((float) Math.floor(d)) + AndroidUtilities.m108dp(1.3f));
                this.onlineTextView[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                this.onlineTextView[0].setTranslationY(((float) Math.floor(d)) + AndroidUtilities.m107dp(24));
                this.nameTextView[0].setScaleX(1.0f);
                this.nameTextView[0].setScaleY(1.0f);
                this.nameTextView[1].setPivotY(simpleTextViewArr[1].getMeasuredHeight());
                this.nameTextView[1].setScaleX(1.67f);
                this.nameTextView[1].setScaleY(1.67f);
                this.avatarScale = AndroidUtilities.lerp(1.0f, 2.4285715f, this.avatarAnimationProgress);
                ProfileStoriesView profileStoriesView4 = this.storyView;
                if (profileStoriesView4 != null) {
                    profileStoriesView4.setExpandProgress(1.0f);
                }
                animateTransferButton(1.0f);
                this.avatarImage.setRoundRadius((int) AndroidUtilities.lerp(getSmallAvatarRoundRadius(), (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress));
                this.avatarContainer.setTranslationX(AndroidUtilities.lerp((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress));
                this.avatarContainer.setTranslationY(AndroidUtilities.lerp((float) Math.ceil(d), (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress));
                float measuredWidth = (this.avatarContainer.getMeasuredWidth() - AndroidUtilities.m107dp(42)) * this.avatarScale;
                this.timeItem.setTranslationX(this.avatarContainer.getX() + AndroidUtilities.m107dp(16) + measuredWidth);
                this.timeItem.setTranslationY(this.avatarContainer.getY() + AndroidUtilities.m107dp(15) + measuredWidth);
                this.avatarContainer.setScaleX(this.avatarScale);
                this.avatarContainer.setScaleY(this.avatarScale);
                this.overlaysView.setAlphaValue(this.avatarAnimationProgress, false);
                this.actionBar.setItemsColor(ColorUtils.blendARGB(this.peerColor != null ? -1 : getThemedColor(Theme.key_actionBarDefaultIcon), -1, this.avatarAnimationProgress), false);
                ScamDrawable scamDrawable = this.scamDrawable;
                if (scamDrawable != null) {
                    scamDrawable.setColor(ColorUtils.blendARGB(getThemedColor(Theme.key_avatar_subtitleInProfileBlue), Color.argb(179, 255, 255, 255), this.avatarAnimationProgress));
                }
                Drawable drawable = this.lockIconDrawable;
                if (drawable != null) {
                    drawable.setColorFilter(ColorUtils.blendARGB(getThemedColor(Theme.key_chat_lockIcon), -1, this.avatarAnimationProgress), PorterDuff.Mode.MULTIPLY);
                }
                CrossfadeDrawable[] crossfadeDrawableArr = this.verifiedCrossfadeDrawable;
                if (crossfadeDrawableArr[1] != null) {
                    crossfadeDrawableArr[1].setProgress(this.avatarAnimationProgress);
                    this.nameTextView[1].invalidate();
                }
                CrossfadeDrawable[] crossfadeDrawableArr2 = this.premiumCrossfadeDrawable;
                if (crossfadeDrawableArr2[1] != null) {
                    crossfadeDrawableArr2[1].setProgress(this.avatarAnimationProgress);
                    this.nameTextView[1].invalidate();
                }
                updateEmojiStatusDrawableColor(this.avatarAnimationProgress);
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.avatarContainer.getLayoutParams();
                int lerp3 = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(42.0f), (this.extraHeight + currentActionBarHeight) / this.avatarScale, this.avatarAnimationProgress);
                layoutParams3.height = lerp3;
                layoutParams3.width = lerp3;
                layoutParams3.leftMargin = (int) AndroidUtilities.lerp(AndroidUtilities.dpf2(64.0f), (float) BitmapDescriptorFactory.HUE_RED, this.avatarAnimationProgress);
                this.avatarContainer.requestLayout();
            } else if (this.extraHeight <= AndroidUtilities.m108dp(88.0f)) {
                this.avatarScale = ((18.0f * min) + 42.0f) / 42.0f;
                ProfileStoriesView profileStoriesView5 = this.storyView;
                if (profileStoriesView5 != null) {
                    profileStoriesView5.invalidate();
                }
                float f4 = (0.12f * min) + 1.0f;
                ValueAnimator valueAnimator3 = this.expandAnimator;
                if (valueAnimator3 == null || !valueAnimator3.isRunning()) {
                    this.avatarContainer.setScaleX(this.avatarScale);
                    this.avatarContainer.setScaleY(this.avatarScale);
                    this.avatarContainer.setTranslationX(this.avatarX);
                    this.avatarContainer.setTranslationY((float) Math.ceil(this.avatarY));
                    float m107dp3 = (AndroidUtilities.m107dp(42) * this.avatarScale) - AndroidUtilities.m107dp(42);
                    this.timeItem.setTranslationX(this.avatarContainer.getX() + AndroidUtilities.m107dp(16) + m107dp3);
                    this.timeItem.setTranslationY(this.avatarContainer.getY() + AndroidUtilities.m107dp(15) + m107dp3);
                }
                this.nameX = AndroidUtilities.density * (-21.0f) * min;
                this.nameY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m108dp(1.3f) + (AndroidUtilities.m107dp(7) * min) + (this.titleAnimationsYDiff * (1.0f - this.avatarAnimationProgress));
                this.onlineX = AndroidUtilities.density * (-21.0f) * min;
                this.onlineY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m107dp(24) + (((float) Math.floor(AndroidUtilities.density * 11.0f)) * min);
                ShowDrawable showDrawable = this.showStatusButton;
                if (showDrawable != null) {
                    showDrawable.setAlpha((int) (255.0f * min));
                }
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
        boolean z2 = isQrNeedVisible() && Math.min(1.0f, this.extraHeight / ((float) AndroidUtilities.m108dp(88.0f))) > 0.5f && this.searchTransitionProgress > 0.5f;
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
                    this.qrItemAnimation.playTogether(ObjectAnimator.ofFloat(this.qrItem, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.qrItem, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.avatarsViewPagerIndicatorView, View.TRANSLATION_X, -AndroidUtilities.m107dp(48)));
                } else {
                    this.qrItemAnimation.setInterpolator(new AccelerateInterpolator());
                    this.qrItemAnimation.playTogether(ObjectAnimator.ofFloat(this.qrItem, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.qrItem, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.avatarsViewPagerIndicatorView, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                }
                this.qrItemAnimation.setDuration(150L);
                this.qrItemAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.47
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
        this.qrItem.setAlpha(z2 ? 1.0f : 0.0f);
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
        this.nameX = AndroidUtilities.m108dp(-21.0f) + (this.avatarContainer.getMeasuredWidth() * (this.avatarScale - 1.4285715f));
        this.nameY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m108dp(1.3f) + AndroidUtilities.m108dp(7.0f) + ((this.avatarContainer.getMeasuredHeight() * (this.avatarScale - 1.4285715f)) / 2.0f);
        this.onlineX = AndroidUtilities.m108dp(-21.0f) + (this.avatarContainer.getMeasuredWidth() * (this.avatarScale - 1.4285715f));
        this.onlineY = ((float) Math.floor(this.avatarY)) + AndroidUtilities.m107dp(24) + ((float) Math.floor(AndroidUtilities.density * 11.0f)) + ((this.avatarContainer.getMeasuredHeight() * (this.avatarScale - 1.4285715f)) / 2.0f);
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
    public RecyclerListView getListView() {
        return this.listView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void needLayoutText(float f) {
        SharedMediaLayout sharedMediaLayout;
        float scaleX = this.nameTextView[1].getScaleX();
        float f2 = this.extraHeight > ((float) AndroidUtilities.m108dp(88.0f)) ? 1.67f : 1.12f;
        if (this.extraHeight <= AndroidUtilities.m108dp(88.0f) || scaleX == f2) {
            int m107dp = AndroidUtilities.isTablet() ? AndroidUtilities.m107dp(490) : AndroidUtilities.displaySize.x;
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
            int m108dp = AndroidUtilities.m108dp(f3 + i);
            int i3 = m107dp - m108dp;
            float f4 = m107dp;
            int max = (int) ((f4 - (m108dp * Math.max((float) BitmapDescriptorFactory.HUE_RED, 1.0f - (f != 1.0f ? (0.15f * f) / (1.0f - f) : 1.0f)))) - this.nameTextView[1].getTranslationX());
            float measureText = (this.nameTextView[1].getPaint().measureText(this.nameTextView[1].getText().toString()) * scaleX) + this.nameTextView[1].getSideDrawablesSize();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.nameTextView[1].getLayoutParams();
            int i4 = layoutParams.width;
            float f5 = max;
            if (f5 < measureText) {
                layoutParams.width = Math.max(i3, (int) Math.ceil((max - AndroidUtilities.m107dp(24)) / (((f2 - scaleX) * 7.0f) + scaleX)));
            } else {
                layoutParams.width = (int) Math.ceil(measureText);
            }
            int min = (int) Math.min(((f4 - this.nameTextView[1].getX()) / scaleX) - AndroidUtilities.m107dp(8), layoutParams.width);
            layoutParams.width = min;
            if (min != i4) {
                this.nameTextView[1].requestLayout();
            }
            float measureText2 = this.onlineTextView[1].getPaint().measureText(this.onlineTextView[1].getText().toString()) + this.onlineTextView[1].getRightDrawableWidth();
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.onlineTextView[1].getLayoutParams();
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.mediaCounterTextView.getLayoutParams();
            int i5 = layoutParams2.width;
            int ceil = (int) Math.ceil(this.onlineTextView[1].getTranslationX() + AndroidUtilities.m107dp(8) + (AndroidUtilities.m107dp(40) * (1.0f - f)));
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
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ProfileActivity.48
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ProfileActivity profileActivity = ProfileActivity.this;
                if (profileActivity.fragmentView != null) {
                    profileActivity.checkListViewScroll();
                    ProfileActivity.this.needLayout(true);
                    ProfileActivity.this.fragmentView.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                return true;
            }
        });
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        View findViewByPosition;
        super.onConfigurationChanged(configuration);
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.onConfigurationChanged(configuration);
        }
        invalidateIsInLandscapeMode();
        if (this.isInLandscapeMode && this.isPulledDown && (findViewByPosition = this.layoutManager.findViewByPosition(0)) != null) {
            this.listView.scrollBy(0, findViewByPosition.getTop() - AndroidUtilities.m107dp(88));
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
        AvatarImageView avatarImageView;
        TLRPC$Chat tLRPC$Chat;
        TLRPC$ChatParticipants tLRPC$ChatParticipants;
        TLRPC$ChatFull tLRPC$ChatFull;
        TLRPC$ChatFull tLRPC$ChatFull2;
        TLRPC$TL_inputGroupCall tLRPC$TL_inputGroupCall;
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
                if ((MessagesController.UPDATE_MASK_CHAT & intValue) != 0 || (MessagesController.UPDATE_MASK_CHAT_AVATAR & intValue) != 0 || (MessagesController.UPDATE_MASK_CHAT_NAME & intValue) != 0 || (MessagesController.UPDATE_MASK_CHAT_MEMBERS & intValue) != 0 || (MessagesController.UPDATE_MASK_STATUS & intValue) != 0 || (MessagesController.UPDATE_MASK_EMOJI_STATUS & intValue) != 0) {
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
            if (this.chatInfo == null || (tLRPC$Chat2 = this.currentChat) == null || tLRPC$Chat2.f1602id != l.longValue()) {
                return;
            }
            this.chatInfo.online_count = ((Integer) objArr[1]).intValue();
            updateOnlineCount(true);
            updateProfileData(false);
        } else if (i == NotificationCenter.contactsDidLoad || i == NotificationCenter.channelRightsUpdated) {
            createActionBarMenu(true);
        } else if (i == NotificationCenter.encryptedChatCreated) {
            if (this.creatingChat) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.this.lambda$didReceivedNotification$63(objArr);
                    }
                });
            }
        } else if (i == NotificationCenter.encryptedChatUpdated) {
            TLRPC$EncryptedChat tLRPC$EncryptedChat = (TLRPC$EncryptedChat) objArr[0];
            TLRPC$EncryptedChat tLRPC$EncryptedChat2 = this.currentEncryptedChat;
            if (tLRPC$EncryptedChat2 == null || tLRPC$EncryptedChat.f1614id != tLRPC$EncryptedChat2.f1614id) {
                return;
            }
            this.currentEncryptedChat = tLRPC$EncryptedChat;
            updateListAnimated(false);
            FlagSecureReason flagSecureReason = this.flagSecure;
            if (flagSecureReason != null) {
                flagSecureReason.invalidate();
            }
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
                if (longValue == tLRPC$Chat3.f1602id && ChatObject.canManageCalls(tLRPC$Chat3)) {
                    TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(l2.longValue());
                    if (chatFull != null) {
                        TLRPC$ChatFull tLRPC$ChatFull3 = this.chatInfo;
                        if (tLRPC$ChatFull3 != null) {
                            chatFull.participants = tLRPC$ChatFull3.participants;
                        }
                        this.chatInfo = chatFull;
                    }
                    SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
                    if (sharedMediaLayout != null) {
                        sharedMediaLayout.setChatInfo(this.chatInfo);
                    }
                    TLRPC$ChatFull tLRPC$ChatFull4 = this.chatInfo;
                    if (tLRPC$ChatFull4 != null && (((tLRPC$TL_inputGroupCall = tLRPC$ChatFull4.call) == null && !this.hasVoiceChatItem) || (tLRPC$TL_inputGroupCall != null && this.hasVoiceChatItem))) {
                        createActionBarMenu(false);
                    }
                    ProfileStoriesView profileStoriesView = this.storyView;
                    if (profileStoriesView != null && (tLRPC$ChatFull2 = this.chatInfo) != null) {
                        profileStoriesView.setStories(tLRPC$ChatFull2.stories);
                    }
                    AvatarImageView avatarImageView2 = this.avatarImage;
                    if (avatarImageView2 != null) {
                        avatarImageView2.setHasStories(needInsetForStories());
                    }
                }
            }
        } else if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC$ChatFull tLRPC$ChatFull5 = (TLRPC$ChatFull) objArr[0];
            if (tLRPC$ChatFull5.f1603id == this.chatId) {
                boolean booleanValue = ((Boolean) objArr[2]).booleanValue();
                TLRPC$ChatFull tLRPC$ChatFull6 = this.chatInfo;
                if ((tLRPC$ChatFull6 instanceof TLRPC$TL_channelFull) && tLRPC$ChatFull5.participants == null) {
                    tLRPC$ChatFull5.participants = tLRPC$ChatFull6.participants;
                }
                if (tLRPC$ChatFull6 == null && (tLRPC$ChatFull5 instanceof TLRPC$TL_channelFull)) {
                    r2 = 1;
                }
                TLRPC$Chat tLRPC$Chat4 = this.currentChat;
                if (tLRPC$Chat4 != null && tLRPC$Chat4.megagroup && !this.membersFilter.isDefault()) {
                    tLRPC$ChatFull5.participants = this.chatInfo.participants;
                } else if (this.presenter != null && (tLRPC$Chat = this.currentChat) != null && !ChatObject.isChannel(tLRPC$Chat) && !ChatObject.isMegagroup(this.currentChat) && (tLRPC$ChatParticipants = tLRPC$ChatFull5.participants) != null) {
                    this.presenter.setNotMegagroupParticipants(true, tLRPC$ChatParticipants.participants);
                }
                this.chatInfo = tLRPC$ChatFull5;
                if (this.mergeDialogId == 0) {
                    long j = tLRPC$ChatFull5.migrated_from_chat_id;
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
                FlagSecureReason flagSecureReason2 = this.flagSecure;
                if (flagSecureReason2 != null) {
                    flagSecureReason2.invalidate();
                }
                if (this.currentChat.megagroup && (r2 != 0 || !booleanValue)) {
                    getChannelParticipants(true);
                }
                updateAutoDeleteItem();
                updateTtlIcon();
                ProfileStoriesView profileStoriesView2 = this.storyView;
                if (profileStoriesView2 != null && (tLRPC$ChatFull = this.chatInfo) != null) {
                    profileStoriesView2.setStories(tLRPC$ChatFull.stories);
                }
                AvatarImageView avatarImageView3 = this.avatarImage;
                if (avatarImageView3 != null) {
                    avatarImageView3.setHasStories(needInsetForStories());
                }
                SharedMediaLayout sharedMediaLayout2 = this.sharedMediaLayout;
                if (sharedMediaLayout2 != null) {
                    sharedMediaLayout2.setChatInfo(this.chatInfo);
                }
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
                ProfileStoriesView profileStoriesView3 = this.storyView;
                if (profileStoriesView3 != null) {
                    profileStoriesView3.setStories(tLRPC$UserFull.stories);
                }
                AvatarImageView avatarImageView4 = this.avatarImage;
                if (avatarImageView4 != null) {
                    avatarImageView4.setHasStories(needInsetForStories());
                }
                SharedMediaLayout sharedMediaLayout3 = this.sharedMediaLayout;
                if (sharedMediaLayout3 != null) {
                    sharedMediaLayout3.setUserInfo(this.userInfo);
                }
                if (this.imageUpdater != null) {
                    if (this.listAdapter != null && !TextUtils.equals(this.userInfo.about, this.currentBio)) {
                        this.listAdapter.notifyItemChanged(this.bioRow);
                    }
                } else {
                    if (!this.openAnimationInProgress && !this.callItemVisible) {
                        createActionBarMenu(true);
                    } else {
                        this.recreateMenuAfterAnimation = true;
                    }
                    updateListAnimated(false);
                    SharedMediaLayout sharedMediaLayout4 = this.sharedMediaLayout;
                    if (sharedMediaLayout4 != null) {
                        sharedMediaLayout4.setCommonGroupsCount(this.userInfo.common_chats_count);
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
            if (i3 == this.passwordSuggestionRow && i4 == this.phoneSuggestionRow && objArr == null) {
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
        } else if ((i == NotificationCenter.storiesUpdated || i == NotificationCenter.storiesReadUpdated) && (avatarImageView = this.avatarImage) != null) {
            avatarImageView.setHasStories(needInsetForStories());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$63(Object[] objArr) {
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.closeChats;
        notificationCenter.removeObserver(this, i);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putInt("enc_id", ((TLRPC$EncryptedChat) objArr[0]).f1614id);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return this.playProfileAnimation == 0;
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.SharedMediaPreloaderDelegate
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        TLRPC$User user;
        View view;
        super.onResume();
        updateArchiveItem();
        updateHiddenChatsItem();
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
        if (!this.parentLayout.isInPreviewMode() && (view = this.blurredView) != null && view.getVisibility() == 0) {
            this.blurredView.setVisibility(8);
            this.blurredView.setBackground(null);
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onResume();
            setParentActivityTitle(LocaleController.getString("Settings", C3632R.string.Settings));
        }
        updateProfileData(true);
        fixLayout();
        SimpleTextView[] simpleTextViewArr = this.nameTextView;
        if (simpleTextViewArr[1] != null) {
            setParentActivityTitle(simpleTextViewArr[1].getText());
        }
        if (this.userId != 0 && (user = getMessagesController().getUser(Long.valueOf(this.userId))) != null && user.photo == null && this.extraHeight >= AndroidUtilities.m108dp(88.0f)) {
            this.expandAnimator.cancel();
            float[] fArr = this.expandAnimatorValues;
            fArr[0] = 1.0f;
            fArr[1] = 0.0f;
            setAvatarExpandProgress(1.0f);
            this.avatarsViewPager.setVisibility(8);
            this.extraHeight = AndroidUtilities.m108dp(88.0f);
            this.allowPullingDown = false;
            this.layoutManager.scrollToPositionWithOffset(0, AndroidUtilities.m107dp(88) - this.listView.getPaddingTop());
        }
        FlagSecureReason flagSecureReason = this.flagSecure;
        if (flagSecureReason != null) {
            flagSecureReason.attach();
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
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
        FlagSecureReason flagSecureReason = this.flagSecure;
        if (flagSecureReason != null) {
            flagSecureReason.detach();
        }
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.onPause();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        SharedMediaLayout sharedMediaLayout;
        ProfileGalleryView profileGalleryView = this.avatarsViewPager;
        if (profileGalleryView != null && profileGalleryView.getVisibility() == 0 && this.avatarsViewPager.getRealCount() > 1) {
            this.avatarsViewPager.getHitRect(this.rect);
            if (motionEvent != null && this.rect.contains((int) motionEvent.getX(), ((int) motionEvent.getY()) - this.actionBar.getMeasuredHeight())) {
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            return super.canBeginSlide();
        }
        return false;
    }

    public UndoView getUndoView() {
        return this.undoView;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        SharedMediaLayout sharedMediaLayout;
        if (!closeStoryViewer() && this.actionBar.isEnabled()) {
            return this.sharedMediaRow == -1 || (sharedMediaLayout = this.sharedMediaLayout) == null || !sharedMediaLayout.closeActionMode();
        }
        return false;
    }

    public boolean isSettings() {
        return this.imageUpdater != null;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
        super.onBecomeFullyHidden();
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        super.onTransitionAnimationStart(z, z2);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
            View view = this.blurredView;
            if (view != null && view.getVisibility() == 0) {
                this.blurredView.setVisibility(8);
                this.blurredView.setBackground(null);
            }
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
        if (this.playProfileAnimation == 2) {
            this.avatarImage.setProgressToExpand(f);
        }
        this.listView.setAlpha(f);
        this.listView.setTranslationX(AndroidUtilities.m107dp(48) - (AndroidUtilities.m107dp(48) * f));
        long j = 5;
        if (this.playProfileAnimation != 2 || (profileBackColorForId = this.avatarColor) == 0) {
            profileBackColorForId = AvatarDrawable.getProfileBackColorForId((this.userId != 0 || (ChatObject.isChannel(this.chatId, this.currentAccount) && !this.currentChat.megagroup)) ? 5L : this.chatId, this.resourcesProvider);
        }
        int i = this.actionBarAnimationColorFrom;
        if (i == 0) {
            i = getThemedColor(Theme.key_actionBarDefault);
        }
        this.topView.setBackgroundColor(ColorUtils.blendARGB(SharedConfig.chatBlurEnabled() ? ColorUtils.setAlphaComponent(i, 0) : i, profileBackColorForId, f));
        this.timerDrawable.setBackgroundColor(ColorUtils.blendARGB(i, profileBackColorForId, f));
        this.actionBar.setItemsColor(ColorUtils.blendARGB(this.peerColor != null ? -1 : getThemedColor(Theme.key_actionBarDefaultIcon), AvatarDrawable.getIconColorForId((this.userId != 0 || (ChatObject.isChannel(this.chatId, this.currentAccount) && !this.currentChat.megagroup)) ? 5L : this.chatId, this.resourcesProvider), this.avatarAnimationProgress), false);
        int themedColor = getThemedColor(Theme.key_profile_title);
        int themedColor2 = getThemedColor(Theme.key_actionBarDefaultTitle);
        for (int i2 = 0; i2 < 2; i2++) {
            SimpleTextView[] simpleTextViewArr = this.nameTextView;
            if (simpleTextViewArr[i2] != null && (i2 != 1 || this.playProfileAnimation != 2)) {
                simpleTextViewArr[i2].setTextColor(ColorUtils.blendARGB(themedColor2, themedColor, f));
            }
        }
        if (this.isOnline[0]) {
            profileTextColorForId = getThemedColor(Theme.key_profile_status);
        } else {
            if (this.userId == 0 && (!ChatObject.isChannel(this.chatId, this.currentAccount) || this.currentChat.megagroup)) {
                j = this.chatId;
            }
            profileTextColorForId = AvatarDrawable.getProfileTextColorForId(j, this.resourcesProvider);
        }
        int themedColor3 = getThemedColor(this.isOnline[0] ? Theme.key_chat_status : Theme.key_actionBarDefaultSubtitle);
        int i3 = 0;
        while (i3 < 3) {
            SimpleTextView[] simpleTextViewArr2 = this.onlineTextView;
            if (simpleTextViewArr2[i3] != null && i3 != 1 && (i3 != 2 || this.playProfileAnimation != 2)) {
                simpleTextViewArr2[i3].setTextColor(ColorUtils.blendARGB(i3 == 0 ? themedColor3 : applyPeerColor(themedColor3, true, Boolean.valueOf(this.isOnline[0])), i3 == 0 ? profileTextColorForId : applyPeerColor(profileTextColorForId, true, Boolean.valueOf(this.isOnline[0])), f));
            }
            i3++;
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
        if (getDialogId() > 0) {
            AvatarImageView avatarImageView = this.avatarImage;
            if (avatarImageView != null) {
                avatarImageView.setProgressToStoriesInsets(this.avatarAnimationProgress);
            }
            ProfileStoriesView profileStoriesView = this.storyView;
            if (profileStoriesView != null) {
                profileStoriesView.setProgressToStoriesInsets(this.avatarAnimationProgress);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:187:0x0597  */
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.AnimatorSet onCustomTransitionAnimation(boolean r18, final java.lang.Runnable r19) {
        /*
            Method dump skipped, instructions count: 1598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.onCustomTransitionAnimation(boolean, java.lang.Runnable):android.animation.AnimatorSet");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomTransitionAnimation$64(ValueAnimator valueAnimator) {
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        updateStoriesViewBounds(true);
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
                if (user != null && (tLRPC$UserStatus = user.status) != null && ((tLRPC$UserStatus.expires > currentTime || user.f1751id == getUserConfig().getClientUserId()) && user.status.expires > 10000)) {
                    this.onlineCount++;
                }
                this.sortedUsers.add(Integer.valueOf(i));
            }
            try {
                Collections.sort(this.sortedUsers, Comparator.EL.reversed(Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda64
                    @Override // p033j$.util.function.ToIntFunction
                    public final int applyAsInt(Object obj) {
                        int lambda$updateOnlineCount$65;
                        lambda$updateOnlineCount$65 = ProfileActivity.this.lambda$updateOnlineCount$65(currentTime, obj);
                        return lambda$updateOnlineCount$65;
                    }
                })));
            } catch (Exception e) {
                FileLog.m102e(e);
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
    public /* synthetic */ int lambda$updateOnlineCount$65(int i, Object obj) {
        TLRPC$User user = getMessagesController().getUser(Long.valueOf(this.chatInfo.participants.participants.get(((Integer) obj).intValue()).user_id));
        if (user != null) {
            if (user.bot) {
                return -110;
            }
            if (user.self) {
                return i + 50000;
            }
            TLRPC$UserStatus tLRPC$UserStatus = user.status;
            if (tLRPC$UserStatus != null) {
                return tLRPC$UserStatus.expires;
            }
            return Integer.MIN_VALUE;
        }
        return Integer.MIN_VALUE;
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        TLRPC$ChatFull tLRPC$ChatFull2;
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
        ProfileStoriesView profileStoriesView = this.storyView;
        if (profileStoriesView != null && (tLRPC$ChatFull2 = this.chatInfo) != null) {
            profileStoriesView.setStories(tLRPC$ChatFull2.stories);
        }
        AvatarImageView avatarImageView = this.avatarImage;
        if (avatarImageView != null) {
            avatarImageView.setHasStories(needInsetForStories());
        }
        fetchUsersFromChannelInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needInsetForStories() {
        return getMessagesController().getStoriesController().hasStories(getDialogId());
    }

    public void setUserInfo(TLRPC$UserFull tLRPC$UserFull) {
        this.userInfo = tLRPC$UserFull;
        ProfileStoriesView profileStoriesView = this.storyView;
        if (profileStoriesView != null) {
            profileStoriesView.setStories(tLRPC$UserFull.stories);
        }
        AvatarImageView avatarImageView = this.avatarImage;
        if (avatarImageView != null) {
            avatarImageView.setHasStories(needInsetForStories());
        }
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.setUserInfo(this.userInfo);
        }
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
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
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, Long.valueOf(-this.chatId));
        } else {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
        }
        getMessagesController().deleteParticipantFromChat(this.chatId, getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId())));
        this.playProfileAnimation = 0;
        finishFragment();
    }

    public boolean isChat() {
        return this.chatId != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0150, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated) == false) goto L73;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRowsIds() {
        /*
            Method dump skipped, instructions count: 2198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.updateRowsIds():void");
    }

    private Drawable getScamDrawable(int i) {
        if (this.scamDrawable == null) {
            ScamDrawable scamDrawable = new ScamDrawable(11, i);
            this.scamDrawable = scamDrawable;
            scamDrawable.setColor(getThemedColor(Theme.key_avatar_subtitleInProfileBlue));
        }
        return this.scamDrawable;
    }

    private Drawable getLockIconDrawable() {
        if (this.lockIconDrawable == null) {
            this.lockIconDrawable = Theme.chat_lockIconDrawable.getConstantState().newDrawable().mutate();
        }
        return this.lockIconDrawable;
    }

    private Drawable getVerifiedCrossfadeDrawable(int i) {
        MessagesController.PeerColor peerColor;
        if (this.verifiedCrossfadeDrawable[i] == null) {
            this.verifiedDrawable[i] = Theme.profile_verifiedDrawable.getConstantState().newDrawable().mutate();
            this.verifiedCheckDrawable[i] = Theme.profile_verifiedCheckDrawable.getConstantState().newDrawable().mutate();
            if (i == 1 && (peerColor = this.peerColor) != null) {
                this.verifiedDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(Theme.adaptHSV(ColorUtils.blendARGB(peerColor.getColor2(), this.peerColor.hasColor6(Theme.isCurrentThemeDark()) ? this.peerColor.getColor5() : this.peerColor.getColor3(), 0.4f), 0.1f, Theme.isCurrentThemeDark() ? -0.1f : -0.08f), getThemedColor(Theme.key_player_actionBarTitle), this.mediaHeaderAnimationProgress, 1.0f), PorterDuff.Mode.MULTIPLY);
                this.verifiedCheckDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(-1, getThemedColor(Theme.key_windowBackgroundWhite), this.mediaHeaderAnimationProgress, 1.0f), PorterDuff.Mode.MULTIPLY);
            }
            this.verifiedCrossfadeDrawable[i] = new CrossfadeDrawable(new CombinedDrawable(this.verifiedDrawable[i], this.verifiedCheckDrawable[i]), ContextCompat.getDrawable(getParentActivity(), C3632R.C3634drawable.verified_profile));
        }
        return this.verifiedCrossfadeDrawable[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getPremiumCrossfadeDrawable(int i) {
        if (this.premiumCrossfadeDrawable[i] == null) {
            this.premiumStarDrawable[i] = ContextCompat.getDrawable(getParentActivity(), C3632R.C3634drawable.msg_premium_liststar).mutate();
            int themedColor = getThemedColor(Theme.key_profile_verifiedBackground);
            if (i == 1) {
                themedColor = applyPeerColor(themedColor);
            }
            this.premiumStarDrawable[i].setColorFilter(themedColor, PorterDuff.Mode.MULTIPLY);
            this.premiumCrossfadeDrawable[i] = new CrossfadeDrawable(this.premiumStarDrawable[i], ContextCompat.getDrawable(getParentActivity(), C3632R.C3634drawable.msg_premium_prolfilestar).mutate());
        }
        return this.premiumCrossfadeDrawable[i];
    }

    private Drawable getEmojiStatusDrawable(TLRPC$EmojiStatus tLRPC$EmojiStatus, boolean z, boolean z2, int i) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawableArr[i] == null) {
            swapAnimatedEmojiDrawableArr[i] = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.nameTextView[i], AndroidUtilities.m107dp(24), i == 0 ? 7 : 2);
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
                this.emojiStatusDrawable[i].set(getPremiumCrossfadeDrawable(i), z2);
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
        int offsetColor;
        for (int i = 0; i < 2; i++) {
            MessagesController.PeerColor peerColor = this.peerColor;
            if (peerColor != null && i == 1) {
                offsetColor = ColorUtils.blendARGB(peerColor.getColor2(), this.peerColor.hasColor6(Theme.isCurrentThemeDark()) ? this.peerColor.getColor5() : this.peerColor.getColor3(), 0.5f);
            } else {
                offsetColor = AndroidUtilities.getOffsetColor(getThemedColor(Theme.key_profile_verifiedBackground), getThemedColor(Theme.key_player_actionBarTitle), this.mediaHeaderAnimationProgress, 1.0f);
            }
            int blendARGB = ColorUtils.blendARGB(offsetColor, -1, f);
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable[] swapAnimatedEmojiDrawableArr = this.emojiStatusDrawable;
            if (swapAnimatedEmojiDrawableArr[i] != null) {
                swapAnimatedEmojiDrawableArr[i].setColor(Integer.valueOf(blendARGB));
            }
            if (i == 1) {
                this.animatedStatusView.setColor(blendARGB);
            }
        }
        this.lastEmojiStatusProgress = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmojiStatusEffectPosition() {
        this.animatedStatusView.setScaleX(this.nameTextView[1].getScaleX());
        this.animatedStatusView.setScaleY(this.nameTextView[1].getScaleY());
        this.animatedStatusView.translate(this.nameTextView[1].getX() + (this.nameTextView[1].getRightDrawableX() * this.nameTextView[1].getScaleX()), this.nameTextView[1].getY() + (this.nameTextView[1].getHeight() - ((this.nameTextView[1].getHeight() - this.nameTextView[1].getRightDrawableY()) * this.nameTextView[1].getScaleY())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(32:54|(1:56)|57|(1:(1:60)(1:(1:65)(1:64)))|66|(1:70)|(3:72|(1:74)(1:304)|303)(1:305)|76|(2:78|(2:80|(1:82))(1:264))(2:265|(1:302)(2:271|(1:273)(2:274|(1:276)(27:277|(1:279)(1:301)|280|(1:300)(1:286)|287|(2:289|(4:291|(1:299)(1:295)|296|(1:298)))|84|(1:263)(1:88)|89|90|91|92|(3:94|(2:96|97)(17:99|(2:103|(12:117|(1:220)(1:120)|121|(1:219)(1:124)|125|(1:218)(1:128)|129|(1:131)(1:217)|132|(1:134)(1:216)|135|(4:137|(1:189)(2:141|(1:143)(4:182|(1:184)|185|(1:187)(1:188)))|(2:145|(9:151|152|153|154|(1:158)|159|(1:163)|164|(2:168|169)))|(8:180|181|154|(1:158)|159|(2:161|163)|164|(1:171)(3:166|168|169))(9:176|177|153|154|(0)|159|(0)|164|(0)(0)))(9:(4:191|(1:215)(2:195|(1:197)(1:214))|(2:199|(9:205|152|153|154|(0)|159|(0)|164|(0)(0)))|(8:213|181|154|(0)|159|(0)|164|(0)(0))(1:210))|177|153|154|(0)|159|(0)|164|(0)(0))))|221|(0)|220|121|(0)|219|125|(0)|218|129|(0)(0)|132|(0)(0)|135|(0)(0))|98)|222|223|(1:225)(2:253|(10:260|227|(1:229)|230|(1:232)|233|(1:252)(1:241)|242|(1:244)(1:251)|245)(1:259))|226|227|(0)|230|(0)|233|(3:235|237|239)|252|242|(0)(0)|245))))|83|84|(1:86)|263|89|90|91|92|(0)|222|223|(0)(0)|226|227|(0)|230|(0)|233|(0)|252|242|(0)(0)|245) */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x06f7, code lost:
        if (r34.chatInfo.can_view_participants != false) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0923, code lost:
        if (r34.nameTextView[r14].setText(r1) != false) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x094b, code lost:
        if (r34.nameTextView[r14].setText(r1) != false) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x094d, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0168, code lost:
        if (r5.photoId != r1.photoId) goto L303;
     */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0518 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x062f  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x063e  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0bdf  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0be5  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0bf2  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x0559 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:641:0x0c02 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateProfileData(boolean r35) {
        /*
            Method dump skipped, instructions count: 3352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.updateProfileData(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$67(View view) {
        MessagePrivateSeenView.showSheet(getContext(), this.currentAccount, this.dialogId, true, null, new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$updateProfileData$66();
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$66() {
        getMessagesController().reloadUser(this.dialogId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$68(View view) {
        showStatusSelect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$69(TLRPC$User tLRPC$User, SimpleTextView simpleTextView, View view) {
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
                SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document.thumbs, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f);
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
                backupImageView.setRoundRadius(AndroidUtilities.m107dp(4));
                backupImageView.setImage(forDocument, str2, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "140_140", svgThumb, document);
                if (((AnimatedEmojiDrawable) this.emojiStatusDrawable[1].getDrawable()).canOverrideColor()) {
                    backupImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon), PorterDuff.Mode.SRC_IN));
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
    public /* synthetic */ void lambda$updateProfileData$70(View view) {
        showStatusSelect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateProfileData$71(View view) {
        goToForum();
    }

    private void updatedPeerColor() {
        SharedMediaLayout.ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner;
        TextView textView;
        int themedColor;
        int themedColor2;
        TopView topView = this.topView;
        if (topView != null) {
            topView.setBackgroundColorId(this.peerColor, true);
        }
        SimpleTextView[] simpleTextViewArr = this.onlineTextView;
        if (simpleTextViewArr[1] != null) {
            if (simpleTextViewArr[1].getTag() instanceof Integer) {
                themedColor2 = getThemedColor(((Integer) this.onlineTextView[1].getTag()).intValue());
            } else {
                themedColor2 = getThemedColor(Theme.key_avatar_subtitleInProfileBlue);
            }
            this.onlineTextView[1].setTextColor(ColorUtils.blendARGB(applyPeerColor(themedColor2, true, Boolean.valueOf(this.isOnline[0])), -1275068417, this.currentExpandAnimatorValue));
        }
        ShowDrawable showDrawable = this.showStatusButton;
        if (showDrawable != null) {
            showDrawable.setBackgroundColor(ColorUtils.blendARGB(Theme.multAlpha(Theme.adaptHSV(this.actionBarBackgroundColor, 0.18f, -0.1f), 0.5f), 603979775, this.currentExpandAnimatorValue));
        }
        C3704ActionBar c3704ActionBar = this.actionBar;
        if (c3704ActionBar != null) {
            c3704ActionBar.setItemsBackgroundColor(this.peerColor != null ? 553648127 : getThemedColor(Theme.key_avatar_actionBarSelectorBlue), false);
            this.actionBar.setItemsColor(ColorUtils.blendARGB(this.peerColor != null ? -1 : getThemedColor(Theme.key_actionBarDefaultIcon), AvatarDrawable.getIconColorForId((this.userId != 0 || (ChatObject.isChannel(this.chatId, this.currentAccount) && !this.currentChat.megagroup)) ? 5L : this.chatId, this.resourcesProvider), this.avatarAnimationProgress), false);
        }
        if (this.verifiedDrawable[1] != null) {
            MessagesController.PeerColor peerColor = this.peerColor;
            if (peerColor != null) {
                themedColor = Theme.adaptHSV(ColorUtils.blendARGB(peerColor.getColor2(), this.peerColor.hasColor6(Theme.isCurrentThemeDark()) ? this.peerColor.getColor5() : this.peerColor.getColor3(), 0.4f), 0.1f, Theme.isCurrentThemeDark() ? -0.1f : -0.08f);
            } else {
                themedColor = getThemedColor(Theme.key_profile_verifiedBackground);
            }
            this.verifiedDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(themedColor, getThemedColor(Theme.key_player_actionBarTitle), this.mediaHeaderAnimationProgress, 1.0f), PorterDuff.Mode.MULTIPLY);
        }
        if (this.verifiedCheckDrawable[1] != null) {
            this.verifiedCheckDrawable[1].setColorFilter(AndroidUtilities.getOffsetColor(this.peerColor != null ? -1 : applyPeerColor(getThemedColor(Theme.key_profile_verifiedCheck)), getThemedColor(Theme.key_windowBackgroundWhite), this.mediaHeaderAnimationProgress, 1.0f), PorterDuff.Mode.MULTIPLY);
        }
        SimpleTextView[] simpleTextViewArr2 = this.nameTextView;
        if (simpleTextViewArr2[1] != null) {
            simpleTextViewArr2[1].setTextColor(ColorUtils.blendARGB(this.peerColor != null ? -1 : getThemedColor(Theme.key_profile_title), -1, this.currentExpandAnimatorValue));
        }
        AutoDeletePopupWrapper autoDeletePopupWrapper = this.autoDeletePopupWrapper;
        if (autoDeletePopupWrapper != null && (textView = autoDeletePopupWrapper.textView) != null) {
            textView.invalidate();
        }
        AndroidUtilities.forEachViews((RecyclerView) this.listView, (com.google.android.exoplayer2.util.Consumer<View>) new com.google.android.exoplayer2.util.Consumer() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda35
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                ProfileActivity.this.lambda$updatedPeerColor$72((View) obj);
            }
        });
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null && (scrollSlidingTextTabStripInner = sharedMediaLayout.scrollSlidingTextTabStrip) != null) {
            scrollSlidingTextTabStripInner.updateColors();
        }
        writeButtonSetBackground();
        updateEmojiStatusDrawableColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatedPeerColor$72(View view) {
        if (view instanceof HeaderCell) {
            ((HeaderCell) view).setTextColor(applyPeerColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader), false));
        } else if (view instanceof TextDetailCell) {
            ((TextDetailCell) view).valueTextView.setTextColor(applyPeerColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2), false));
        } else if (view instanceof TextCell) {
            ((TextCell) view).updateColors();
        } else if (view instanceof NotificationsCheckCell) {
            ((NotificationsCheckCell) view).getCheckBox().invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int applyPeerColor(int i) {
        return applyPeerColor(i, true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int applyPeerColor(int i, boolean z) {
        return applyPeerColor(i, z, null);
    }

    private int applyPeerColor(int i, boolean z, Boolean bool) {
        if (z && this.peerColor != null) {
            int themedColor = getThemedColor(z ? Theme.key_actionBarDefault : Theme.key_windowBackgroundWhiteBlueIcon);
            int blendARGB = ColorUtils.blendARGB(this.peerColor.getStoryColor1(Theme.isCurrentThemeDark()), this.peerColor.getStoryColor2(Theme.isCurrentThemeDark()), 0.5f);
            int bgColor1 = z ? blendARGB : this.peerColor.getBgColor1(Theme.isCurrentThemeDark());
            if (!Theme.hasHue(themedColor)) {
                return (bool == null || bool.booleanValue()) ? blendARGB : Theme.adaptHSV(Theme.multAlpha(blendARGB, 0.7f), -0.2f, 0.2f);
            }
            boolean isCurrentThemeDark = Theme.isCurrentThemeDark();
            if (bool != null && !bool.booleanValue()) {
                blendARGB = Theme.multAlpha(blendARGB, 0.7f);
            }
            return Theme.changeColorAccent(themedColor, bgColor1, i, isCurrentThemeDark, blendARGB);
        }
        return i;
    }

    private int applyPeerColor2(int i) {
        MessagesController.PeerColor peerColor = this.peerColor;
        if (peerColor != null) {
            int bgColor2 = peerColor.getBgColor2(Theme.isCurrentThemeDark());
            return Theme.changeColorAccent(getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon), bgColor2, i, Theme.isCurrentThemeDark(), bgColor2);
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:242:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0668  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0696  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x06c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createActionBarMenu(boolean r17) {
        /*
            Method dump skipped, instructions count: 1743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.createActionBarMenu(boolean):void");
    }

    private void createAutoDeleteItem(Context context) {
        int i;
        this.autoDeletePopupWrapper = new AutoDeletePopupWrapper(context, this.otherItem.getPopupLayout().getSwipeBack(), new AutoDeletePopupWrapper.Callback() { // from class: org.telegram.ui.ProfileActivity.50
            @Override // org.telegram.p043ui.Components.AutoDeletePopupWrapper.Callback
            public void dismiss() {
                ProfileActivity.this.otherItem.toggleSubMenu();
            }

            @Override // org.telegram.p043ui.Components.AutoDeletePopupWrapper.Callback
            public void setAutoDeleteHistory(int i2, int i3) {
                ProfileActivity.this.setAutoDeleteHistory(i2, i3);
            }

            @Override // org.telegram.p043ui.Components.AutoDeletePopupWrapper.Callback
            public void showGlobalAutoDeleteScreen() {
                ProfileActivity.this.presentFragment(new AutoDeleteMessagesActivity());
                dismiss();
            }
        }, false, 0, this.resourcesProvider);
        if (this.dialogId > 0 || this.userId > 0) {
            this.autoDeletePopupWrapper.allowExtendedHint(applyPeerColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueText), false));
        }
        TLRPC$UserFull tLRPC$UserFull = this.userInfo;
        if (tLRPC$UserFull == null && this.chatInfo == null) {
            i = 0;
        } else {
            i = tLRPC$UserFull != null ? tLRPC$UserFull.ttl_period : this.chatInfo.ttl_period;
        }
        TimerDrawable ttlIcon = TimerDrawable.getTtlIcon(i);
        this.autoDeleteItemDrawable = ttlIcon;
        this.autoDeleteItem = this.otherItem.addSwipeBackItem(0, ttlIcon, LocaleController.getString("AutoDeletePopupTitle", C3632R.string.AutoDeletePopupTitle), this.autoDeletePopupWrapper.windowLayout);
        this.otherItem.addColoredGap();
        updateAutoDeleteItem();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.invalidateViews();
        }
    }

    @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
    public boolean didSelectDialogs(DialogsActivity dialogsActivity, ArrayList<MessagesStorage.TopicKey> arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1<ArrayList<MessageObject>> callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(null);
            return true;
        }
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
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
            presentFragment(new ChatActivity(bundle), true);
            removeSelfFromStack();
            getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m82of(getMessagesController().getUser(Long.valueOf(this.userId)), j, (MessageObject) null, (MessageObject) null, (TLRPC$ReplyMarkup) null, (HashMap<String, String>) null, true, 0, (String) null));
            if (!TextUtils.isEmpty(charSequence)) {
                SendMessagesHelper.prepareSendingText(AccountInstance.getInstance(this.currentAccount), charSequence.toString(), j, true, 0, null);
            }
            return true;
        }
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
                VoIPHelper.startCall(this.currentChat, null, null, getMessagesController().getGroupCall(this.chatId, false) == null, getParentActivity(), this, getAccountInstance());
                return;
            }
            VoIPHelper.permissionDenied(getParentActivity(), null, i);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void dismissCurrentDialog() {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater == null || !imageUpdater.dismissCurrentDialog(this.visibleDialog)) {
            super.dismissCurrentDialog();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
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
        this.onlineTextView[3].setVisibility(0);
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
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ProfileActivity.this.lambda$searchExpandTransition$73(ofFloat, f, z, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.51
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                ProfileActivity.this.updateSearchViewState(z);
                ProfileActivity.this.avatarContainer.setClickable(true);
                if (z) {
                    ProfileActivity.this.searchItem.requestFocusOnSearchView();
                }
                ProfileActivity.this.needLayout(true);
                ProfileActivity.this.searchViewTransition = null;
                ProfileActivity.this.fragmentView.invalidate();
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
    public /* synthetic */ void lambda$searchExpandTransition$73(ValueAnimator valueAnimator, float f, boolean z, ValueAnimator valueAnimator2) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.searchTransitionProgress = floatValue;
        float f2 = (floatValue - 0.5f) / 0.5f;
        float f3 = (0.5f - floatValue) / 0.5f;
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = 0.0f;
        }
        if (f3 < BitmapDescriptorFactory.HUE_RED) {
            f3 = 0.0f;
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
        ProfileStoriesView profileStoriesView = this.storyView;
        if (profileStoriesView != null) {
            profileStoriesView.setAlpha(f2);
        }
        this.nameTextView[1].setAlpha(f2);
        this.onlineTextView[1].setAlpha(f2);
        this.onlineTextView[3].setAlpha(f2);
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
        ProfileStoriesView profileStoriesView = this.storyView;
        if (profileStoriesView != null) {
            profileStoriesView.setVisibility(i2);
        }
        this.nameTextView[1].setVisibility(i2);
        this.onlineTextView[1].setVisibility(i2);
        this.onlineTextView[3].setVisibility(i2);
        ActionBarMenuItem actionBarMenuItem = this.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setAlpha(1.0f);
            this.otherItem.setVisibility(i2);
        }
        ActionBarMenuItem actionBarMenuItem2 = this.qrItem;
        if (actionBarMenuItem2 != null) {
            actionBarMenuItem2.setAlpha(1.0f);
            ActionBarMenuItem actionBarMenuItem3 = this.qrItem;
            if (z || !isQrNeedVisible()) {
                i = 8;
            }
            actionBarMenuItem3.setVisibility(i);
        }
        this.searchItem.setVisibility(i2);
        this.avatarContainer.setAlpha(1.0f);
        ProfileStoriesView profileStoriesView2 = this.storyView;
        if (profileStoriesView2 != null) {
            profileStoriesView2.setAlpha(1.0f);
        }
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

    @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void onUploadProgressChanged(float f) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(f);
        this.avatarsViewPager.setUploadProgress(this.uploadingImageLocation, f);
    }

    @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputFile tLRPC$InputFile2, final double d, final String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2, boolean z, final TLRPC$VideoSize tLRPC$VideoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$didUploadPhoto$76(tLRPC$InputFile, tLRPC$InputFile2, tLRPC$VideoSize, d, str, tLRPC$PhotoSize2, tLRPC$PhotoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$75(final String str, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.this.lambda$didUploadPhoto$74(tLRPC$TL_error, tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$74(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, String str) {
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
            tLRPC$TL_userProfilePhoto.photo_id = tLRPC$TL_photos_photo.photo.f1632id;
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
            getMessagesController().getDialogPhotos(user.f1751id).addPhotoAtStart(tLRPC$TL_photos_photo.photo);
            ArrayList arrayList2 = new ArrayList();
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
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_ALL));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        getUserConfig().saveConfig(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$76(TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, TLRPC$VideoSize tLRPC$VideoSize, double d, final String str, TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$PhotoSize tLRPC$PhotoSize2) {
        if (tLRPC$InputFile != null || tLRPC$InputFile2 != null || tLRPC$VideoSize != null) {
            if (this.avatar == null) {
                return;
            }
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
            this.avatarUploadingRequest = getConnectionsManager().sendRequest(tLRPC$TL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda72
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.this.lambda$didUploadPhoto$75(str, tLObject, tLRPC$TL_error);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void showAvatarProgress(final boolean z, boolean z2) {
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
        this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.52
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onActivityResult(i, i2, intent);
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
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
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                ProfileActivity.lambda$sendLogs$78(AlertDialog.this, z, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendLogs$78(final AlertDialog alertDialog, boolean z, final Activity activity) {
        ZipOutputStream zipOutputStream;
        try {
            File logsDir = AndroidUtilities.getLogsDir();
            if (logsDir == null) {
                Objects.requireNonNull(alertDialog);
                AndroidUtilities.runOnUIThread(new AlertDialog$$ExternalSyntheticLambda6(alertDialog));
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
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda44
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ProfileActivity.lambda$sendLogs$77(AlertDialog.this, zArr, activity, file);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.lambda$sendLogs$77(AlertDialog.this, zArr, activity, file);
                }
            });
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendLogs$77(AlertDialog alertDialog, boolean[] zArr, Activity activity, File file) {
        Uri fromFile;
        try {
            alertDialog.dismiss();
        } catch (Exception unused) {
        }
        if (!zArr[0]) {
            if (activity != null) {
                Toast.makeText(activity, LocaleController.getString("ErrorOccurred", C3632R.string.ErrorOccurred), 0).show();
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
                FileLog.m102e(e);
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
            ProfileSocialCell profileSocialCell;
            TextInfoPrivacyCell textInfoPrivacyCell;
            String str;
            if (i == IdFabric$ViewTypes.SOCIAL) {
                ProfileSocialCell profileSocialCell2 = new ProfileSocialCell(this.mContext);
                profileSocialCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ProfileActivity$ListAdapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ProfileActivity.ListAdapter.lambda$onCreateViewHolder$0(view);
                    }
                });
                profileSocialCell = profileSocialCell2;
            } else if (i == IdFabric$ViewTypes.TOPIC_PROFILE) {
                profileSocialCell = new TopicProfileCell(this.mContext, ProfileActivity.this.getDialogId());
            } else if (i == IdFabric$ViewTypes.TEXT_DETAIL_WITH_RANK) {
                TextDetailWithRankCell textDetailWithRankCell = new TextDetailWithRankCell(this.mContext);
                textDetailWithRankCell.setContentDescriptionValueFirst(true);
                profileSocialCell = textDetailWithRankCell;
            } else {
                switch (i) {
                    case 1:
                        profileSocialCell = new HeaderCell(this.mContext, 23, ProfileActivity.this.resourcesProvider);
                        break;
                    case 2:
                    case 19:
                        TextDetailCell textDetailCell = new TextDetailCell(this.mContext, ProfileActivity.this.resourcesProvider, i == 19);
                        textDetailCell.setContentDescriptionValueFirst(true);
                        textInfoPrivacyCell = textDetailCell;
                        profileSocialCell = textInfoPrivacyCell;
                        break;
                    case 3:
                        ProfileActivity profileActivity = ProfileActivity.this;
                        Context context = this.mContext;
                        ProfileActivity profileActivity2 = ProfileActivity.this;
                        profileSocialCell = profileActivity.aboutLinkCell = new AboutLinkCell(context, profileActivity2, profileActivity2.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.1
                            @Override // org.telegram.p043ui.Cells.AboutLinkCell
                            protected void didPressUrl(String str2, Browser.Progress progress) {
                                ProfileActivity.this.openUrl(str2, progress);
                            }

                            @Override // org.telegram.p043ui.Cells.AboutLinkCell
                            protected void didResizeEnd() {
                                ProfileActivity.this.layoutManager.mIgnoreTopPadding = false;
                            }

                            @Override // org.telegram.p043ui.Cells.AboutLinkCell
                            protected void didResizeStart() {
                                ProfileActivity.this.layoutManager.mIgnoreTopPadding = true;
                            }
                        };
                        break;
                    case 4:
                        profileSocialCell = new TextCell(this.mContext, ProfileActivity.this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.2
                            @Override // org.telegram.p043ui.Cells.TextCell
                            protected int processColor(int i2) {
                                return ProfileActivity.this.applyPeerColor(i2, false);
                            }
                        };
                        break;
                    case 5:
                        dividerCell = new DividerCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        dividerCell.setPadding(AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(4), 0, 0);
                        profileSocialCell = dividerCell;
                        break;
                    case 6:
                        profileSocialCell = new NotificationsCheckCell(this.mContext, 23, 70, false, ProfileActivity.this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.3
                            @Override // org.telegram.p043ui.Cells.NotificationsCheckCell
                            protected int processColor(int i2) {
                                return ProfileActivity.this.applyPeerColor(i2, false);
                            }
                        };
                        break;
                    case 7:
                        profileSocialCell = new ShadowSectionCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 8:
                        profileSocialCell = new UserCell(this.mContext, ProfileActivity.this.addMemberRow == -1 ? 9 : 6, 0, true, ProfileActivity.this.resourcesProvider);
                        break;
                    case 9:
                    case 10:
                    case 14:
                    case 16:
                    default:
                        TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(this.mContext, 10, ProfileActivity.this.resourcesProvider);
                        textInfoPrivacyCell2.getTextView().setGravity(1);
                        textInfoPrivacyCell2.getTextView().setTextColor(ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
                        textInfoPrivacyCell2.getTextView().setMovementMethod(null);
                        try {
                            PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
                            int i2 = packageInfo.versionCode;
                            int i3 = i2 / 10;
                            int i4 = i2 % 10;
                            if (i4 == 1 || i4 == 2) {
                                str = "store bundled " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                            } else if (ApplicationLoader.isStandaloneBuild()) {
                                str = "direct " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                            } else {
                                str = "universal " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                            }
                            textInfoPrivacyCell2.setText(LocaleController.formatString("TelegramVersion", C3632R.string.TelegramVersion, String.format(Locale.US, "v%s (%d) %s", packageInfo.versionName, Integer.valueOf(i3), str)));
                        } catch (Exception e) {
                            FileLog.m102e(e);
                        }
                        textInfoPrivacyCell2.getTextView().setPadding(0, AndroidUtilities.m107dp(14), 0, AndroidUtilities.m107dp(14));
                        textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3632R.C3634drawable.greydivider_bottom, ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundGrayShadow)));
                        textInfoPrivacyCell = textInfoPrivacyCell2;
                        profileSocialCell = textInfoPrivacyCell;
                        break;
                    case 11:
                        profileSocialCell = new View(this, this.mContext) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.4
                            @Override // android.view.View
                            protected void onMeasure(int i5, int i6) {
                                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i5), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(32), 1073741824));
                            }
                        };
                        break;
                    case 12:
                        dividerCell = new View(this.mContext) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.5
                            private int lastPaddingHeight = 0;
                            private int lastListViewHeight = 0;

                            @Override // android.view.View
                            protected void onMeasure(int i5, int i6) {
                                if (this.lastListViewHeight != ProfileActivity.this.listView.getMeasuredHeight()) {
                                    this.lastPaddingHeight = 0;
                                }
                                this.lastListViewHeight = ProfileActivity.this.listView.getMeasuredHeight();
                                int childCount = ProfileActivity.this.listView.getChildCount();
                                if (childCount != ProfileActivity.this.listAdapter.getItemCount()) {
                                    setMeasuredDimension(ProfileActivity.this.listView.getMeasuredWidth(), this.lastPaddingHeight);
                                    return;
                                }
                                int i7 = 0;
                                for (int i8 = 0; i8 < childCount; i8++) {
                                    int childAdapterPosition = ProfileActivity.this.listView.getChildAdapterPosition(ProfileActivity.this.listView.getChildAt(i8));
                                    if (childAdapterPosition >= 0 && childAdapterPosition != ProfileActivity.this.bottomPaddingRow) {
                                        i7 += ProfileActivity.this.listView.getChildAt(i8).getMeasuredHeight();
                                    }
                                }
                                View view = ProfileActivity.this.fragmentView;
                                int measuredHeight = (((view == null ? 0 : view.getMeasuredHeight()) - C3704ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - i7;
                                if (measuredHeight > AndroidUtilities.m107dp(88)) {
                                    measuredHeight = 0;
                                }
                                int i9 = measuredHeight > 0 ? measuredHeight : 0;
                                int measuredWidth = ProfileActivity.this.listView.getMeasuredWidth();
                                this.lastPaddingHeight = i9;
                                setMeasuredDimension(measuredWidth, i9);
                            }
                        };
                        dividerCell.setBackground(new ColorDrawable(0));
                        profileSocialCell = dividerCell;
                        break;
                    case 13:
                        if (ProfileActivity.this.sharedMediaLayout.getParent() != null) {
                            ((ViewGroup) ProfileActivity.this.sharedMediaLayout.getParent()).removeView(ProfileActivity.this.sharedMediaLayout);
                        }
                        profileSocialCell = ProfileActivity.this.sharedMediaLayout;
                        break;
                    case 15:
                        profileSocialCell = new SettingsSuggestionCell(this.mContext, ProfileActivity.this.resourcesProvider) { // from class: org.telegram.ui.ProfileActivity.ListAdapter.6
                            @Override // org.telegram.p043ui.Cells.SettingsSuggestionCell
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

                            @Override // org.telegram.p043ui.Cells.SettingsSuggestionCell
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
                        profileSocialCell = new TextInfoPrivacyCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 18:
                        profileSocialCell = new ProfilePremiumCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                    case 20:
                        profileSocialCell = new TextCheckCell(this.mContext, ProfileActivity.this.resourcesProvider);
                        break;
                }
            }
            if (i != 13) {
                profileSocialCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            }
            return new RecyclerListView.Holder(profileSocialCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            Timber.m9d("On SocialCell click ovverided", new Object[0]);
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:200:0x0512 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:203:0x051f  */
        /* JADX WARN: Removed duplicated region for block: B:204:0x0524  */
        /* JADX WARN: Removed duplicated region for block: B:565:0x0f8e  */
        /* JADX WARN: Removed duplicated region for block: B:566:0x0fc4  */
        /* JADX WARN: Type inference failed for: r0v42, types: [org.telegram.tgnet.TLRPC$ChatParticipant] */
        /* JADX WARN: Type inference failed for: r0v47, types: [org.telegram.tgnet.TLRPC$ChatParticipant] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r24, int r25) {
            /*
                Method dump skipped, instructions count: 4288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ProfileActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit lambda$onBindViewHolder$1(SocialNetwork socialNetwork) {
            ProfileActivity.this.presenter.onSocialClicked(socialNetwork);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit lambda$onBindViewHolder$2(SocialNetwork socialNetwork) {
            ProfileActivity.this.showSocialMenuBottomSheet(socialNetwork);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit lambda$onBindViewHolder$4(List list) {
            ProfileActivity profileActivity = ProfileActivity.this;
            profileActivity.showDialog(SocialDialog.newInstance(profileActivity.getContext(), list, new Function1() { // from class: org.telegram.ui.ProfileActivity$ListAdapter$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit lambda$onBindViewHolder$3;
                    lambda$onBindViewHolder$3 = ProfileActivity.ListAdapter.this.lambda$onBindViewHolder$3((SocialNetwork) obj);
                    return lambda$onBindViewHolder$3;
                }
            }));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit lambda$onBindViewHolder$3(SocialNetwork socialNetwork) {
            ProfileActivity.this.presenter.onSocialAddClicked(socialNetwork);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$5(View view) {
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
                    spannableString.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ProfileActivity.ListAdapter.7
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
                    ProfileActivity profileActivity = ProfileActivity.this;
                    spannableString.setSpan(new ForegroundColorSpan(profileActivity.applyPeerColor(profileActivity.getThemedColor(Theme.key_chat_messageLinkIn), false)), 0, spannableString.length(), 33);
                    spannableStringBuilder2.append((CharSequence) spannableString);
                    if (i2 < arrayList2.size() - 1) {
                        spannableStringBuilder2.append((CharSequence) ", ");
                    }
                }
                String string = LocaleController.getString("UsernameAlso", C3632R.string.UsernameAlso);
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

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            if (ProfileActivity.this.notificationRow != -1) {
                int adapterPosition = viewHolder.getAdapterPosition();
                if (adapterPosition == ProfileActivity.this.dialogIdRow || adapterPosition == ProfileActivity.this.settingsToolsRow || adapterPosition == ProfileActivity.this.settingsTopicsRow || adapterPosition == ProfileActivity.this.settingsHelpRow || adapterPosition == ProfileActivity.this.socialsRow || adapterPosition == ProfileActivity.this.debugThemeSwitchRow) {
                    return true;
                }
                return adapterPosition == ProfileActivity.this.notificationRow || adapterPosition == ProfileActivity.this.numberRow || adapterPosition == ProfileActivity.this.privacyRow || adapterPosition == ProfileActivity.this.languageRow || adapterPosition == ProfileActivity.this.setUsernameRow || adapterPosition == ProfileActivity.this.bioRow || adapterPosition == ProfileActivity.this.versionRow || adapterPosition == ProfileActivity.this.dataRow || adapterPosition == ProfileActivity.this.chatRow || adapterPosition == ProfileActivity.this.questionRow || adapterPosition == ProfileActivity.this.devicesRow || adapterPosition == ProfileActivity.this.filtersRow || adapterPosition == ProfileActivity.this.stickersRow || adapterPosition == ProfileActivity.this.faqRow || adapterPosition == ProfileActivity.this.policyRow || adapterPosition == ProfileActivity.this.sendLogsRow || adapterPosition == ProfileActivity.this.sendLastLogsRow || adapterPosition == ProfileActivity.this.clearLogsRow || adapterPosition == ProfileActivity.this.switchBackendRow || adapterPosition == ProfileActivity.this.setAvatarRow || adapterPosition == ProfileActivity.this.addToGroupButtonRow || adapterPosition == ProfileActivity.this.premiumRow || adapterPosition == ProfileActivity.this.premiumGiftingRow || adapterPosition == ProfileActivity.this.liteModeRow;
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
            if (i != ProfileActivity.this.socialsRow) {
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
                        if (i == ProfileActivity.this.settingsToolsRow || i == ProfileActivity.this.settingsTopicsRow || i == ProfileActivity.this.settingsHelpRow || i == ProfileActivity.this.settingsTimerRow || i == ProfileActivity.this.settingsKeyRow || i == ProfileActivity.this.reportRow || i == ProfileActivity.this.reportReactionRow || i == ProfileActivity.this.subscribersRow || i == ProfileActivity.this.subscribersRequestsRow || i == ProfileActivity.this.administratorsRow || i == ProfileActivity.this.settingsRow || i == ProfileActivity.this.blockedUsersRow || i == ProfileActivity.this.addMemberRow || i == ProfileActivity.this.joinRow || i == ProfileActivity.this.unblockRow || i == ProfileActivity.this.sendMessageRow || i == ProfileActivity.this.notificationRow || i == ProfileActivity.this.privacyRow || i == ProfileActivity.this.languageRow || i == ProfileActivity.this.dataRow || i == ProfileActivity.this.chatRow || i == ProfileActivity.this.questionRow || i == ProfileActivity.this.devicesRow || i == ProfileActivity.this.filtersRow || i == ProfileActivity.this.stickersRow || i == ProfileActivity.this.faqRow || i == ProfileActivity.this.policyRow || i == ProfileActivity.this.sendLogsRow || i == ProfileActivity.this.sendLastLogsRow || i == ProfileActivity.this.clearLogsRow || i == ProfileActivity.this.setAvatarRow || i == ProfileActivity.this.addToGroupButtonRow || i == ProfileActivity.this.addToContactsRow || i == ProfileActivity.this.liteModeRow || i == ProfileActivity.this.premiumGiftingRow) {
                            return 4;
                        }
                        if (i == ProfileActivity.this.notificationsDividerRow) {
                            return 5;
                        }
                        if (i == ProfileActivity.this.notificationsRow) {
                            return 6;
                        }
                        if (i == ProfileActivity.this.switchBackendRow || i == ProfileActivity.this.debugThemeSwitchRow || i == ProfileActivity.this.notificationsSimpleRow) {
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
                    return IdFabric$ViewTypes.TEXT_DETAIL_WITH_RANK;
                }
                return IdFabric$ViewTypes.TOPIC_PROFILE;
            }
            return IdFabric$ViewTypes.SOCIAL;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$SearchAdapter */
    /* loaded from: classes5.dex */
    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC$WebPage faqWebPage;
        private ArrayList<SearchResult> forkSearchResults;
        private String lastSearchString;
        private boolean loadingFaqPage;
        private Context mContext;
        private ArrayList<CharSequence> resultNamesFork;
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
            Collections.sort(this.recentSearches, new java.util.Comparator() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda225
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
            int i = IdFabric$CustomType.FORK_SEARCH_RESULT_PREFIX;
            SearchResult[] searchResultArr = new SearchResult[222];
            searchResultArr[0] = new SearchResult(this, 500, LocaleController.getString("EditName", C3632R.string.EditName), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda95
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$1();
                }
            });
            searchResultArr[1] = new SearchResult(this, 501, LocaleController.getString("ChangePhoneNumber", C3632R.string.ChangePhoneNumber), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda174
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$2();
                }
            });
            searchResultArr[2] = new SearchResult(this, 502, LocaleController.getString("AddAnotherAccount", C3632R.string.AddAnotherAccount), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda107
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$3();
                }
            });
            searchResultArr[3] = new SearchResult(this, 503, LocaleController.getString("UserBio", C3632R.string.UserBio), 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda80
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$4();
                }
            });
            String string = LocaleController.getString(C3632R.string.AddPhoto);
            final ProfileActivity profileActivity = ProfileActivity.this;
            searchResultArr[4] = new SearchResult(this, 504, string, 0, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda224
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.access$7900(ProfileActivity.this);
                }
            });
            int i2 = C3632R.string.NotificationsAndSounds;
            String string2 = LocaleController.getString("NotificationsAndSounds", i2);
            int i3 = C3632R.C3634drawable.msg_notifications;
            searchResultArr[5] = new SearchResult(this, 1, string2, i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda60
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$6();
                }
            });
            searchResultArr[6] = new SearchResult(this, 2, LocaleController.getString("NotificationsPrivateChats", C3632R.string.NotificationsPrivateChats), LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda72
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$7();
                }
            });
            searchResultArr[7] = new SearchResult(this, 3, LocaleController.getString("NotificationsGroups", C3632R.string.NotificationsGroups), LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda218
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$8();
                }
            });
            searchResultArr[8] = new SearchResult(this, 4, LocaleController.getString("NotificationsChannels", C3632R.string.NotificationsChannels), LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$9();
                }
            });
            searchResultArr[9] = new SearchResult(this, 5, LocaleController.getString("VoipNotificationSettings", C3632R.string.VoipNotificationSettings), "callsSectionRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda216
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$10();
                }
            });
            searchResultArr[10] = new SearchResult(this, 6, LocaleController.getString("BadgeNumber", C3632R.string.BadgeNumber), "badgeNumberSection", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda219
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$11();
                }
            });
            searchResultArr[11] = new SearchResult(this, 7, LocaleController.getString("InAppNotifications", C3632R.string.InAppNotifications), "inappSectionRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda130
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$12();
                }
            });
            searchResultArr[12] = new SearchResult(this, 8, LocaleController.getString("ContactJoined", C3632R.string.ContactJoined), "contactJoinedRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda156
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$13();
                }
            });
            searchResultArr[13] = new SearchResult(this, 9, LocaleController.getString("PinnedMessages", C3632R.string.PinnedMessages), "pinnedMessageRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$14();
                }
            });
            searchResultArr[14] = new SearchResult(this, 10, LocaleController.getString("ResetAllNotifications", C3632R.string.ResetAllNotifications), "resetNotificationsRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda189
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$15();
                }
            });
            searchResultArr[15] = new SearchResult(this, 11, LocaleController.getString(C3632R.string.NotificationsService), "notificationsServiceRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda183
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$16();
                }
            });
            searchResultArr[16] = new SearchResult(this, 12, LocaleController.getString(C3632R.string.NotificationsServiceConnection), "notificationsServiceConnectionRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$17();
                }
            });
            searchResultArr[17] = new SearchResult(this, 13, LocaleController.getString(C3632R.string.RepeatNotifications), "repeatRow", LocaleController.getString("NotificationsAndSounds", i2), i3, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda182
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$18();
                }
            });
            int i4 = C3632R.string.PrivacySettings;
            String string3 = LocaleController.getString("PrivacySettings", i4);
            int i5 = C3632R.C3634drawable.msg_secret;
            searchResultArr[18] = new SearchResult(this, 100, string3, i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$19();
                }
            });
            String string4 = LocaleController.getString("TwoStepVerification", C3632R.string.TwoStepVerification);
            String string5 = LocaleController.getString("PrivacySettings", i4);
            int i6 = C3632R.C3634drawable.msg2_secret;
            searchResultArr[19] = new SearchResult(this, 109, string4, string5, i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$20();
                }
            });
            searchResultArr[20] = new SearchResult(this, 124, LocaleController.getString(C3632R.string.AutoDeleteMessages), LocaleController.getString(i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda135
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$21();
                }
            });
            searchResultArr[21] = new SearchResult(this, 108, LocaleController.getString("Passcode", C3632R.string.Passcode), LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda106
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$22();
                }
            });
            searchResultArr[22] = SharedConfig.hasEmailLogin ? new SearchResult(this, 125, LocaleController.getString(C3632R.string.EmailLogin), "emailLoginRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$23();
                }
            }) : null;
            searchResultArr[23] = new SearchResult(this, 101, LocaleController.getString("BlockedUsers", C3632R.string.BlockedUsers), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda177
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$24();
                }
            });
            searchResultArr[24] = new SearchResult(this, 110, LocaleController.getString("SessionsTitle", C3632R.string.SessionsTitle), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$25();
                }
            });
            searchResultArr[25] = new SearchResult(this, 105, LocaleController.getString("PrivacyPhone", C3632R.string.PrivacyPhone), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$26();
                }
            });
            searchResultArr[26] = new SearchResult(this, 102, LocaleController.getString("PrivacyLastSeen", C3632R.string.PrivacyLastSeen), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda180
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$27();
                }
            });
            searchResultArr[27] = new SearchResult(this, 103, LocaleController.getString("PrivacyProfilePhoto", C3632R.string.PrivacyProfilePhoto), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$28();
                }
            });
            searchResultArr[28] = new SearchResult(this, 104, LocaleController.getString("PrivacyForwards", C3632R.string.PrivacyForwards), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda166
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$29();
                }
            });
            searchResultArr[29] = new SearchResult(this, 122, LocaleController.getString("PrivacyP2P", C3632R.string.PrivacyP2P), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$30();
                }
            });
            int i7 = C3632R.string.Calls;
            searchResultArr[30] = new SearchResult(this, 106, LocaleController.getString("Calls", i7), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda184
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$31();
                }
            });
            searchResultArr[31] = new SearchResult(this, 107, LocaleController.getString("GroupsAndChannels", C3632R.string.GroupsAndChannels), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$32();
                }
            });
            searchResultArr[32] = new SearchResult(this, 123, LocaleController.getString("PrivacyVoiceMessages", C3632R.string.PrivacyVoiceMessages), LocaleController.getString("PrivacySettings", i4), i5, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda75
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$33();
                }
            });
            searchResultArr[33] = ProfileActivity.this.getMessagesController().autoarchiveAvailable ? new SearchResult(this, 121, LocaleController.getString("ArchiveAndMute", C3632R.string.ArchiveAndMute), "newChatsRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda77
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$34();
                }
            }) : null;
            searchResultArr[34] = new SearchResult(this, 112, LocaleController.getString("DeleteAccountIfAwayFor2", C3632R.string.DeleteAccountIfAwayFor2), "deleteAccountRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda133
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$35();
                }
            });
            searchResultArr[35] = new SearchResult(this, 113, LocaleController.getString("PrivacyPaymentsClear", C3632R.string.PrivacyPaymentsClear), "paymentsClearRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda193
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$36();
                }
            });
            searchResultArr[36] = new SearchResult(this, 114, LocaleController.getString("WebSessionsTitle", C3632R.string.WebSessionsTitle), LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda207
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$37();
                }
            });
            searchResultArr[37] = new SearchResult(this, 115, LocaleController.getString("SyncContactsDelete", C3632R.string.SyncContactsDelete), "contactsDeleteRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda93
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$38();
                }
            });
            searchResultArr[38] = new SearchResult(this, 116, LocaleController.getString("SyncContacts", C3632R.string.SyncContacts), "contactsSyncRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$39();
                }
            });
            searchResultArr[39] = new SearchResult(this, 117, LocaleController.getString("SuggestContacts", C3632R.string.SuggestContacts), "contactsSuggestRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$40();
                }
            });
            searchResultArr[40] = new SearchResult(this, 118, LocaleController.getString("MapPreviewProvider", C3632R.string.MapPreviewProvider), "secretMapRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda102
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$41();
                }
            });
            searchResultArr[41] = new SearchResult(this, 119, LocaleController.getString("SecretWebPage", C3632R.string.SecretWebPage), "secretWebpageRow", LocaleController.getString("PrivacySettings", i4), i6, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$42();
                }
            });
            int i8 = C3632R.string.Devices;
            String string6 = LocaleController.getString(i8);
            int i9 = C3632R.C3634drawable.msg2_devices;
            searchResultArr[42] = new SearchResult(this, 120, string6, i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda98
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$43();
                }
            });
            searchResultArr[43] = new SearchResult(this, 121, LocaleController.getString(C3632R.string.TerminateAllSessions), "terminateAllSessionsRow", LocaleController.getString(i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda142
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$44();
                }
            });
            searchResultArr[44] = new SearchResult(this, 122, LocaleController.getString(C3632R.string.LinkDesktopDevice), LocaleController.getString(i8), i9, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda138
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$45();
                }
            });
            int i10 = C3632R.string.DataSettings;
            String string7 = LocaleController.getString("DataSettings", i10);
            int i11 = C3632R.C3634drawable.msg2_data;
            searchResultArr[45] = new SearchResult(this, 200, string7, i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda143
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$46();
                }
            });
            searchResultArr[46] = new SearchResult(this, 201, LocaleController.getString("DataUsage", C3632R.string.DataUsage), "usageSectionRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda147
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$47();
                }
            });
            int i12 = C3632R.string.StorageUsage;
            searchResultArr[47] = new SearchResult(this, 202, LocaleController.getString("StorageUsage", i12), LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$48();
                }
            });
            searchResultArr[48] = new SearchResult(203, LocaleController.getString("KeepMedia", C3632R.string.KeepMedia), "keepMediaRow", LocaleController.getString("DataSettings", i10), LocaleController.getString("StorageUsage", i12), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda214
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$49();
                }
            });
            searchResultArr[49] = new SearchResult(204, LocaleController.getString("ClearMediaCache", C3632R.string.ClearMediaCache), "cacheRow", LocaleController.getString("DataSettings", i10), LocaleController.getString("StorageUsage", i12), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda119
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$50();
                }
            });
            searchResultArr[50] = new SearchResult(205, LocaleController.getString("LocalDatabase", C3632R.string.LocalDatabase), "databaseRow", LocaleController.getString("DataSettings", i10), LocaleController.getString("StorageUsage", i12), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$51();
                }
            });
            searchResultArr[51] = new SearchResult(this, 206, LocaleController.getString("NetworkUsage", C3632R.string.NetworkUsage), LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda198
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$52();
                }
            });
            searchResultArr[52] = new SearchResult(this, 207, LocaleController.getString("AutomaticMediaDownload", C3632R.string.AutomaticMediaDownload), "mediaDownloadSectionRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda110
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$53();
                }
            });
            searchResultArr[53] = new SearchResult(this, 208, LocaleController.getString("WhenUsingMobileData", C3632R.string.WhenUsingMobileData), LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda53
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$54();
                }
            });
            searchResultArr[54] = new SearchResult(this, 209, LocaleController.getString("WhenConnectedOnWiFi", C3632R.string.WhenConnectedOnWiFi), LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda105
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$55();
                }
            });
            searchResultArr[55] = new SearchResult(this, 210, LocaleController.getString("WhenRoaming", C3632R.string.WhenRoaming), LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda123
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$56();
                }
            });
            searchResultArr[56] = new SearchResult(this, 211, LocaleController.getString("ResetAutomaticMediaDownload", C3632R.string.ResetAutomaticMediaDownload), "resetDownloadRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$57();
                }
            });
            searchResultArr[57] = new SearchResult(this, 215, LocaleController.getString("Streaming", C3632R.string.Streaming), "streamSectionRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$58();
                }
            });
            searchResultArr[58] = new SearchResult(this, 216, LocaleController.getString("EnableStreaming", C3632R.string.EnableStreaming), "enableStreamRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda172
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$59();
                }
            });
            searchResultArr[59] = new SearchResult(this, 217, LocaleController.getString("Calls", i7), "callsSectionRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda100
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$60();
                }
            });
            searchResultArr[60] = new SearchResult(this, 218, LocaleController.getString("VoipUseLessData", C3632R.string.VoipUseLessData), "useLessDataForCallsRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda165
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$61();
                }
            });
            searchResultArr[61] = new SearchResult(this, 219, LocaleController.getString("VoipQuickReplies", C3632R.string.VoipQuickReplies), "quickRepliesRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$62();
                }
            });
            int i13 = C3632R.string.ProxySettings;
            searchResultArr[62] = new SearchResult(this, 220, LocaleController.getString("ProxySettings", i13), LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda199
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$63();
                }
            });
            searchResultArr[63] = new SearchResult(221, LocaleController.getString("UseProxyForCalls", C3632R.string.UseProxyForCalls), "callsRow", LocaleController.getString("DataSettings", i10), LocaleController.getString("ProxySettings", i13), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda90
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$64();
                }
            });
            searchResultArr[64] = new SearchResult(this, 111, LocaleController.getString("PrivacyDeleteCloudDrafts", C3632R.string.PrivacyDeleteCloudDrafts), "clearDraftsRow", LocaleController.getString("DataSettings", i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda112
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$65();
                }
            });
            int i14 = C3632R.string.SaveToGallery;
            searchResultArr[65] = new SearchResult(this, 222, LocaleController.getString(i14), "saveToGallerySectionRow", LocaleController.getString(i10), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda160
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$66();
                }
            });
            searchResultArr[66] = new SearchResult(223, LocaleController.getString(C3632R.string.SaveToGalleryPrivate), "saveToGalleryPeerRow", LocaleController.getString(i10), LocaleController.getString(i14), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda115
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$67();
                }
            });
            searchResultArr[67] = new SearchResult(224, LocaleController.getString(C3632R.string.SaveToGalleryGroups), "saveToGalleryGroupsRow", LocaleController.getString(i10), LocaleController.getString(i14), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$68();
                }
            });
            searchResultArr[68] = new SearchResult(225, LocaleController.getString(C3632R.string.SaveToGalleryChannels), "saveToGalleryChannelsRow", LocaleController.getString(i10), LocaleController.getString(i14), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda129
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$69();
                }
            });
            int i15 = C3632R.string.ChatSettings;
            String string8 = LocaleController.getString("ChatSettings", i15);
            int i16 = C3632R.C3634drawable.msg2_discussion;
            searchResultArr[69] = new SearchResult(this, 300, string8, i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda118
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$70();
                }
            });
            searchResultArr[70] = new SearchResult(this, 301, LocaleController.getString("TextSizeHeader", C3632R.string.TextSizeHeader), "textSizeHeaderRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda179
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$71();
                }
            });
            searchResultArr[71] = new SearchResult(this, 302, LocaleController.getString(C3632R.string.ChangeChatBackground), LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda158
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$72();
                }
            });
            String string9 = LocaleController.getString("SetColor", C3632R.string.SetColor);
            String string10 = LocaleController.getString("ChatSettings", i15);
            int i17 = C3632R.string.ChatBackground;
            searchResultArr[72] = new SearchResult(303, string9, null, string10, LocaleController.getString("ChatBackground", i17), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$73();
                }
            });
            searchResultArr[73] = new SearchResult(304, LocaleController.getString("ResetChatBackgrounds", C3632R.string.ResetChatBackgrounds), "resetRow", LocaleController.getString("ChatSettings", i15), LocaleController.getString("ChatBackground", i17), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$74();
                }
            });
            searchResultArr[74] = new SearchResult(this, 306, LocaleController.getString("ColorTheme", C3632R.string.ColorTheme), "themeHeaderRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda209
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$75();
                }
            });
            int i18 = C3632R.string.BrowseThemes;
            searchResultArr[75] = new SearchResult(this, 319, LocaleController.getString(i18), null, LocaleController.getString(i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda145
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$76();
                }
            });
            searchResultArr[76] = new SearchResult(320, LocaleController.getString(C3632R.string.CreateNewTheme), "createNewThemeRow", LocaleController.getString(i15), LocaleController.getString(i18), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda173
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$77();
                }
            });
            searchResultArr[77] = new SearchResult(this, 321, LocaleController.getString(C3632R.string.BubbleRadius), "bubbleRadiusHeaderRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda181
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$78();
                }
            });
            int i19 = C3632R.string.ChatList;
            searchResultArr[78] = new SearchResult(this, 322, LocaleController.getString(i19), "chatListHeaderRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$79();
                }
            });
            searchResultArr[79] = new SearchResult(this, 323, LocaleController.getString(C3632R.string.ChatListSwipeGesture), "swipeGestureHeaderRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$80();
                }
            });
            searchResultArr[80] = new SearchResult(this, 324, LocaleController.getString(C3632R.string.AppIcon), "appIconHeaderRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$81();
                }
            });
            searchResultArr[81] = new SearchResult(this, 305, LocaleController.getString("AutoNightTheme", C3632R.string.AutoNightTheme), LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda203
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$82();
                }
            });
            searchResultArr[82] = new SearchResult(this, 307, LocaleController.getString("ChromeCustomTabs", C3632R.string.ChromeCustomTabs), "customTabsRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$83();
                }
            });
            searchResultArr[83] = new SearchResult(this, 328, LocaleController.getString(C3632R.string.NextMediaTap), "nextMediaTapRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda159
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$84();
                }
            });
            searchResultArr[84] = new SearchResult(this, 327, LocaleController.getString(C3632R.string.RaiseToListen), "raiseToListenRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda140
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$85();
                }
            });
            searchResultArr[85] = new SearchResult(this, 310, LocaleController.getString("RaiseToSpeak", C3632R.string.RaiseToSpeak), "raiseToSpeakRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$86();
                }
            });
            searchResultArr[86] = new SearchResult(this, 326, LocaleController.getString(C3632R.string.PauseMusicOnMedia), "pauseOnMediaRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda116
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$87();
                }
            });
            searchResultArr[87] = new SearchResult(this, 325, LocaleController.getString(C3632R.string.MicrophoneForVoiceMessages), "bluetoothScoRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda202
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$88();
                }
            });
            searchResultArr[88] = new SearchResult(this, 308, LocaleController.getString("DirectShare", C3632R.string.DirectShare), "directShareRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda154
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$89();
                }
            });
            searchResultArr[89] = new SearchResult(this, 311, LocaleController.getString("SendByEnter", C3632R.string.SendByEnter), "sendByEnterRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda212
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$90();
                }
            });
            searchResultArr[90] = new SearchResult(this, 318, LocaleController.getString("DistanceUnits", C3632R.string.DistanceUnits), "distanceRow", LocaleController.getString("ChatSettings", i15), i16, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$91();
                }
            });
            int i20 = C3632R.string.StickersName;
            String string11 = LocaleController.getString(i20);
            int i21 = C3632R.C3634drawable.msg2_sticker;
            searchResultArr[91] = new SearchResult(this, 600, string11, i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$92();
                }
            });
            searchResultArr[92] = new SearchResult(this, 601, LocaleController.getString("SuggestStickers", C3632R.string.SuggestStickers), "suggestRow", LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$93();
                }
            });
            searchResultArr[93] = new SearchResult(this, 602, LocaleController.getString("FeaturedStickers", C3632R.string.FeaturedStickers), "featuredStickersHeaderRow", LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda139
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$94();
                }
            });
            searchResultArr[94] = new SearchResult(this, 603, LocaleController.getString("Masks", C3632R.string.Masks), null, LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda148
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$95();
                }
            });
            searchResultArr[95] = new SearchResult(this, 604, LocaleController.getString("ArchivedStickers", C3632R.string.ArchivedStickers), null, LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda170
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$96();
                }
            });
            searchResultArr[96] = new SearchResult(this, 605, LocaleController.getString("ArchivedMasks", C3632R.string.ArchivedMasks), null, LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda175
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$97();
                }
            });
            searchResultArr[97] = new SearchResult(this, 606, LocaleController.getString(C3632R.string.LargeEmoji), "largeEmojiRow", LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda167
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$98();
                }
            });
            searchResultArr[98] = new SearchResult(this, 607, LocaleController.getString(C3632R.string.LoopAnimatedStickers), "loopRow", LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$99();
                }
            });
            int i22 = C3632R.string.Emoji;
            String string12 = LocaleController.getString(i22);
            String string13 = LocaleController.getString(i20);
            int i23 = C3632R.C3634drawable.input_smile;
            searchResultArr[99] = new SearchResult(this, 608, string12, null, string13, i23, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$100();
                }
            });
            searchResultArr[100] = new SearchResult(609, LocaleController.getString(C3632R.string.SuggestAnimatedEmoji), "suggestAnimatedEmojiRow", LocaleController.getString(i20), LocaleController.getString(i22), i23, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$101();
                }
            });
            searchResultArr[101] = new SearchResult(610, LocaleController.getString(C3632R.string.FeaturedEmojiPacks), "featuredStickersHeaderRow", LocaleController.getString(i20), LocaleController.getString(i22), i23, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda114
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$102();
                }
            });
            searchResultArr[102] = new SearchResult(this, 611, LocaleController.getString(C3632R.string.DoubleTapSetting), null, LocaleController.getString(i20), i21, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda132
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$103();
                }
            });
            int i24 = C3632R.string.Filters;
            String string14 = LocaleController.getString(i24);
            int i25 = C3632R.C3634drawable.msg2_folder;
            searchResultArr[103] = new SearchResult(this, 700, string14, null, i25, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$104();
                }
            });
            searchResultArr[104] = new SearchResult(this, 701, LocaleController.getString(C3632R.string.CreateNewFilter), "createFilterRow", LocaleController.getString(i24), i25, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda150
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$105();
                }
            });
            searchResultArr[105] = isPremiumFeatureAvailable(-1) ? new SearchResult(this, 800, LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$106();
                }
            }) : null;
            searchResultArr[106] = isPremiumFeatureAvailable(0) ? new SearchResult(this, 801, LocaleController.getString(C3632R.string.PremiumPreviewLimits), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda196
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$107();
                }
            }) : null;
            searchResultArr[107] = isPremiumFeatureAvailable(11) ? new SearchResult(this, 802, LocaleController.getString(C3632R.string.PremiumPreviewEmoji), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda194
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$108();
                }
            }) : null;
            searchResultArr[108] = isPremiumFeatureAvailable(1) ? new SearchResult(this, 803, LocaleController.getString(C3632R.string.PremiumPreviewUploads), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$109();
                }
            }) : null;
            searchResultArr[109] = isPremiumFeatureAvailable(2) ? new SearchResult(this, 804, LocaleController.getString(C3632R.string.PremiumPreviewDownloadSpeed), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$110();
                }
            }) : null;
            searchResultArr[110] = isPremiumFeatureAvailable(8) ? new SearchResult(this, 805, LocaleController.getString(C3632R.string.PremiumPreviewVoiceToText), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda201
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$111();
                }
            }) : null;
            searchResultArr[111] = isPremiumFeatureAvailable(3) ? new SearchResult(this, 806, LocaleController.getString(C3632R.string.PremiumPreviewNoAds), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$112();
                }
            }) : null;
            searchResultArr[112] = isPremiumFeatureAvailable(4) ? new SearchResult(this, 807, LocaleController.getString(C3632R.string.PremiumPreviewReactions), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$113();
                }
            }) : null;
            searchResultArr[113] = isPremiumFeatureAvailable(5) ? new SearchResult(this, 808, LocaleController.getString(C3632R.string.PremiumPreviewStickers), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda200
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$114();
                }
            }) : null;
            searchResultArr[114] = isPremiumFeatureAvailable(9) ? new SearchResult(this, 809, LocaleController.getString(C3632R.string.PremiumPreviewAdvancedChatManagement), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$115();
                }
            }) : null;
            searchResultArr[115] = isPremiumFeatureAvailable(6) ? new SearchResult(this, 810, LocaleController.getString(C3632R.string.PremiumPreviewProfileBadge), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$116();
                }
            }) : null;
            searchResultArr[116] = isPremiumFeatureAvailable(7) ? new SearchResult(this, 811, LocaleController.getString(C3632R.string.PremiumPreviewAnimatedProfiles), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda171
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$117();
                }
            }) : null;
            searchResultArr[117] = isPremiumFeatureAvailable(10) ? new SearchResult(this, 812, LocaleController.getString(C3632R.string.PremiumPreviewAppIcon), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda82
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$118();
                }
            }) : null;
            searchResultArr[118] = isPremiumFeatureAvailable(12) ? new SearchResult(this, 813, LocaleController.getString(C3632R.string.PremiumPreviewEmojiStatus), LocaleController.getString(C3632R.string.TelegramPremium), C3632R.C3634drawable.msg_settings_premium, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda146
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$119();
                }
            }) : null;
            int i26 = C3632R.string.PowerUsage;
            String string15 = LocaleController.getString(i26);
            int i27 = C3632R.C3634drawable.msg2_battery;
            searchResultArr[119] = new SearchResult(this, 900, string15, null, i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda185
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$120();
                }
            });
            int i28 = C3632R.string.LiteOptionsStickers;
            searchResultArr[120] = new SearchResult(this, 901, LocaleController.getString(i28), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda128
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$121();
                }
            });
            int i29 = C3632R.string.LiteOptionsAutoplayKeyboard;
            searchResultArr[121] = new SearchResult(902, LocaleController.getString(i29), null, LocaleController.getString(i26), LocaleController.getString(i28), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$122();
                }
            });
            int i30 = C3632R.string.LiteOptionsAutoplayChat;
            searchResultArr[122] = new SearchResult(903, LocaleController.getString(i30), null, LocaleController.getString(i26), LocaleController.getString(i28), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda162
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$123();
                }
            });
            int i31 = C3632R.string.LiteOptionsEmoji;
            searchResultArr[123] = new SearchResult(this, 904, LocaleController.getString(i31), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda187
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$124();
                }
            });
            searchResultArr[124] = new SearchResult(905, LocaleController.getString(i29), null, LocaleController.getString(i26), LocaleController.getString(i31), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda124
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$125();
                }
            });
            searchResultArr[125] = new SearchResult(906, LocaleController.getString(C3632R.string.LiteOptionsAutoplayReactions), null, LocaleController.getString(i26), LocaleController.getString(i31), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$126();
                }
            });
            searchResultArr[126] = new SearchResult(907, LocaleController.getString(i30), null, LocaleController.getString(i26), LocaleController.getString(i31), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda161
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$127();
                }
            });
            int i32 = C3632R.string.LiteOptionsChat;
            searchResultArr[127] = new SearchResult(this, 908, LocaleController.getString(i32), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$128();
                }
            });
            searchResultArr[128] = new SearchResult(909, LocaleController.getString(C3632R.string.LiteOptionsBackground), null, LocaleController.getString(i26), LocaleController.getString(i32), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda125
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$129();
                }
            });
            searchResultArr[129] = new SearchResult(910, LocaleController.getString(C3632R.string.LiteOptionsTopics), null, LocaleController.getString(i26), LocaleController.getString(i32), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda149
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$130();
                }
            });
            searchResultArr[130] = new SearchResult(911, LocaleController.getString(C3632R.string.LiteOptionsSpoiler), null, LocaleController.getString(i26), LocaleController.getString(i32), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda197
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$131();
                }
            });
            searchResultArr[131] = SharedConfig.getDevicePerformanceClass() >= 1 ? new SearchResult(326, LocaleController.getString(C3632R.string.LiteOptionsBlur), null, LocaleController.getString(i26), LocaleController.getString(i32), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda206
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$132();
                }
            }) : null;
            searchResultArr[132] = new SearchResult(912, LocaleController.getString(C3632R.string.LiteOptionsScale), null, LocaleController.getString(i26), LocaleController.getString(i32), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$133();
                }
            });
            searchResultArr[133] = new SearchResult(this, 913, LocaleController.getString(C3632R.string.LiteOptionsCalls), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$134();
                }
            });
            searchResultArr[134] = new SearchResult(this, 214, LocaleController.getString(C3632R.string.LiteOptionsAutoplayVideo), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$135();
                }
            });
            searchResultArr[135] = new SearchResult(this, 213, LocaleController.getString(C3632R.string.LiteOptionsAutoplayGifs), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$136();
                }
            });
            searchResultArr[136] = new SearchResult(this, 914, LocaleController.getString(C3632R.string.LiteSmoothTransitions), LocaleController.getString(i26), i27, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda215
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$137();
                }
            });
            int i33 = C3632R.string.Language;
            String string16 = LocaleController.getString("Language", i33);
            int i34 = C3632R.C3634drawable.msg2_language;
            searchResultArr[137] = new SearchResult(this, 400, string16, i34, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda191
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$138();
                }
            });
            searchResultArr[138] = new SearchResult(this, WalletConstants.ERROR_CODE_MERCHANT_ACCOUNT_ERROR, LocaleController.getString(C3632R.string.ShowTranslateButton), LocaleController.getString(i33), i34, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda91
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$139();
                }
            });
            searchResultArr[139] = MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).getTranslateController().isContextTranslateEnabled() ? new SearchResult(this, WalletConstants.ERROR_CODE_SPENDING_LIMIT_EXCEEDED, LocaleController.getString(C3632R.string.DoNotTranslate), LocaleController.getString(i33), i34, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$140();
                }
            }) : null;
            String string17 = LocaleController.getString("AskAQuestion", C3632R.string.AskAQuestion);
            int i35 = C3632R.string.SettingsHelp;
            String string18 = LocaleController.getString("SettingsHelp", i35);
            int i36 = C3632R.C3634drawable.msg2_help;
            searchResultArr[140] = new SearchResult(this, WalletConstants.ERROR_CODE_SERVICE_UNAVAILABLE, string17, string18, i36, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda168
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$141();
                }
            });
            searchResultArr[141] = new SearchResult(this, 403, LocaleController.getString("TelegramFAQ", C3632R.string.TelegramFAQ), LocaleController.getString("SettingsHelp", i35), i36, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda211
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$142();
                }
            });
            searchResultArr[142] = new SearchResult(this, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, LocaleController.getString("PrivacyPolicy", C3632R.string.PrivacyPolicy), LocaleController.getString("SettingsHelp", i35), i36, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$143();
                }
            });
            String internalString = LocaleController.getInternalString(C3632R.string.settings_tools_customization);
            SettingsToolsCategory settingsToolsCategory = SettingsToolsCategory.SETTINGS_CUSTOMIZATION;
            searchResultArr[143] = new SearchResult(this, i, internalString, settingsToolsCategory.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda131
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$144();
                }
            });
            int i37 = i + 1 + 1;
            searchResultArr[144] = new SearchResult(this, i37, LocaleController.getInternalString(C3632R.string.auto_open_forwarding_options), settingsToolsCategory.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda217
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$145();
                }
            });
            int i38 = i37 + 1;
            searchResultArr[145] = new SearchResult(this, i38, LocaleController.getInternalString(C3632R.string.settings_tools_multi_reply), settingsToolsCategory.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda163
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$146();
                }
            });
            int i39 = i38 + 1;
            String internalString2 = LocaleController.getInternalString(C3632R.string.settings_interface_drawer_header);
            SettingsToolsCategory settingsToolsCategory2 = SettingsToolsCategory.SETTINGS_SIDE_MENU;
            searchResultArr[146] = new SearchResult(this, i39, internalString2, settingsToolsCategory2.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda205
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$147();
                }
            });
            int i40 = i39 + 1;
            searchResultArr[147] = new SearchResult(this, i40, LocaleController.getInternalString(C3632R.string.settings_interface_drawer_account_info), settingsToolsCategory2.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$148();
                }
            });
            int i41 = i40 + 1;
            searchResultArr[148] = new SearchResult(this, i41, LocaleController.getInternalString(C3632R.string.settings_interface_drawer_items), settingsToolsCategory2.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda88
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$149();
                }
            });
            int i42 = i41 + 1;
            searchResultArr[149] = new SearchResult(this, i42, LocaleController.getInternalString(C3632R.string.settings_tools_design_icon), settingsToolsCategory2.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda122
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$150();
                }
            });
            int i43 = i42 + 1;
            String internalString3 = LocaleController.getInternalString(C3632R.string.settings_tools_base_toolbar);
            SettingsToolsCategory settingsToolsCategory3 = SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR;
            searchResultArr[150] = new SearchResult(this, i43, internalString3, settingsToolsCategory3.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda144
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$151();
                }
            });
            int i44 = i43 + 1;
            searchResultArr[151] = new SearchResult(this, i44, LocaleController.getInternalString(C3632R.string.settings_interface_action_bar_account_switch), settingsToolsCategory3.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$152();
                }
            });
            int i45 = i44 + 1;
            searchResultArr[152] = new SearchResult(this, i45, LocaleController.getInternalString(C3632R.string.settings_interface_action_bar_menu), settingsToolsCategory3.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda137
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$153();
                }
            });
            int i46 = i45 + 1;
            searchResultArr[153] = new SearchResult(this, i46, LocaleController.getInternalString(C3632R.string.settings_proxy_button_in_toolbar), settingsToolsCategory3.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda89
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$154();
                }
            });
            int i47 = i46 + 1;
            String internalString4 = LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile);
            SettingsToolsCategory settingsToolsCategory4 = SettingsToolsCategory.SETTINGS_CHAT_PROFILE;
            searchResultArr[154] = new SearchResult(this, i47, internalString4, settingsToolsCategory4.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$155();
                }
            });
            int i48 = i47 + 1;
            searchResultArr[155] = new SearchResult(this, i48, LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram), settingsToolsCategory4.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda103
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$156();
                }
            });
            int i49 = i48 + 1;
            searchResultArr[156] = new SearchResult(this, i49, LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_open_photo_swipe), settingsToolsCategory4.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda220
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$157();
                }
            });
            int i50 = i49 + 1;
            String internalString5 = LocaleController.getInternalString(C3632R.string.folder_fab_settings_fab_cloud);
            SettingsToolsCategory settingsToolsCategory5 = SettingsToolsCategory.SETTINGS_CLOUD;
            searchResultArr[157] = new SearchResult(this, i50, internalString5, settingsToolsCategory5.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$158();
                }
            });
            int i51 = i50 + 1;
            searchResultArr[158] = new SearchResult(this, i51, LocaleController.getInternalString(C3632R.string.settings_tools_cloud_albums), settingsToolsCategory5.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$159();
                }
            });
            int i52 = i51 + 1;
            String string19 = LocaleController.getString("ChatList", i19);
            SettingsToolsCategory settingsToolsCategory6 = SettingsToolsCategory.SETTINGS_CHAT_LIST_VIEW;
            searchResultArr[159] = new SearchResult(this, i52, string19, settingsToolsCategory6.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$160();
                }
            });
            int i53 = i52 + 1;
            searchResultArr[160] = new SearchResult(this, i53, LocaleController.getInternalString(C3632R.string.settings_interface_recent_chats), settingsToolsCategory6.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$161();
                }
            });
            int i54 = i53 + 1;
            searchResultArr[161] = new SearchResult(this, i54, LocaleController.getInternalString(C3632R.string.topics), settingsToolsCategory6.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda186
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$162();
                }
            });
            int i55 = i54 + 1;
            String internalString6 = LocaleController.getInternalString(C3632R.string.settings_interface_chat_header);
            SettingsToolsCategory settingsToolsCategory7 = SettingsToolsCategory.SETTINGS_CHATS;
            searchResultArr[162] = new SearchResult(this, i55, internalString6, settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda176
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$163();
                }
            });
            int i56 = i55 + 1;
            searchResultArr[163] = new SearchResult(this, i56, LocaleController.getInternalString(C3632R.string.settings_multi_panel_item_title), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda152
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$164();
                }
            });
            int i57 = i56 + 1;
            searchResultArr[164] = new SearchResult(this, i57, LocaleController.getInternalString(C3632R.string.settings_interface_swipe_to_next_unread_dialog), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda94
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$165();
                }
            });
            int i58 = i57 + 1;
            searchResultArr[165] = new SearchResult(this, i58, LocaleController.getInternalString(C3632R.string.settings_interface_bottom_panel_in_channel), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda192
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$166();
                }
            });
            int i59 = i58 + 1;
            searchResultArr[166] = new SearchResult(this, i59, LocaleController.getInternalString(C3632R.string.settings_interface_chat_themes), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$167();
                }
            });
            int i60 = i59 + 1;
            searchResultArr[167] = new SearchResult(this, i60, LocaleController.getInternalString(C3632R.string.settings_tools_remember_chat), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda157
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$168();
                }
            });
            int i61 = i60 + 1;
            searchResultArr[168] = new SearchResult(this, i61, LocaleController.getInternalString(C3632R.string.settings_interface_chat_hide_keyboard_on_scroll), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda121
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$169();
                }
            });
            int i62 = i61 + 1;
            searchResultArr[169] = new SearchResult(this, i62, LocaleController.getInternalString(C3632R.string.chat_templates), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$170();
                }
            });
            int i63 = i62 + 1;
            searchResultArr[170] = new SearchResult(this, i63, LocaleController.getInternalString(C3632R.string.settings_interface_chat_attach_alert_buttons), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda85
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$171();
                }
            });
            int i64 = i63 + 1;
            searchResultArr[171] = new SearchResult(this, i64, LocaleController.getInternalString(C3632R.string.settings_interface_chat_user_options_by_avatar_click_subtitle), settingsToolsCategory7.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda81
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$172();
                }
            });
            int i65 = i64 + 1;
            String internalString7 = LocaleController.getInternalString(C3632R.string.settings_interface_message_header);
            SettingsToolsCategory settingsToolsCategory8 = SettingsToolsCategory.SETTINGS_MESSAGES;
            searchResultArr[172] = new SearchResult(this, i65, internalString7, settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda111
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$173();
                }
            });
            int i66 = i65 + 1;
            searchResultArr[173] = new SearchResult(this, i66, LocaleController.getInternalString(C3632R.string.settings_tools_translator), settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$174();
                }
            });
            int i67 = i66 + 1;
            searchResultArr[174] = new SearchResult(this, i67, LocaleController.getInternalString(C3632R.string.settings_interface_message_context_menu), settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda178
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$175();
                }
            });
            int i68 = i67 + 1;
            searchResultArr[175] = new SearchResult(this, i68, LocaleController.getInternalString(C3632R.string.sending_settings_send), settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda151
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$176();
                }
            });
            int i69 = i68 + 1;
            searchResultArr[176] = new SearchResult(this, i69, LocaleController.getInternalString(C3632R.string.settings_interface_wide_posts_in_channel), settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda141
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$177();
                }
            });
            int i70 = i69 + 1;
            searchResultArr[177] = new SearchResult(this, i70, LocaleController.getInternalString(C3632R.string.settings_colored_replies), settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda195
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$178();
                }
            });
            int i71 = i70 + 1;
            searchResultArr[178] = new SearchResult(this, i71, LocaleController.getInternalString(C3632R.string.settings_messages_formatting_title), settingsToolsCategory8.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda127
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$179();
                }
            });
            int i72 = i71 + 1;
            String internalString8 = LocaleController.getInternalString(C3632R.string.settings_tools_reactions);
            SettingsToolsCategory settingsToolsCategory9 = SettingsToolsCategory.SETTINGS_REACTIONS_BUTTON;
            searchResultArr[179] = new SearchResult(this, i72, internalString8, settingsToolsCategory9.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda87
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$180();
                }
            });
            int i73 = i72 + 1;
            searchResultArr[180] = new SearchResult(this, i73, LocaleController.getString("Reactions", C3632R.string.Reactions), settingsToolsCategory9.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda208
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$181();
                }
            });
            int i74 = i73 + 1;
            searchResultArr[181] = new SearchResult(this, i74, LocaleController.getInternalString(C3632R.string.settings_tools_send_popup_reactions), settingsToolsCategory9.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda188
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$182();
                }
            });
            int i75 = i74 + 1;
            String internalString9 = LocaleController.getInternalString(C3632R.string.settings_interface_confirmation_header);
            SettingsToolsCategory settingsToolsCategory10 = SettingsToolsCategory.SETTINGS_CONFIRMATION;
            searchResultArr[182] = new SearchResult(this, i75, internalString9, settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda134
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$183();
                }
            });
            int i76 = i75 + 1;
            searchResultArr[183] = new SearchResult(this, i76, LocaleController.getInternalString(C3632R.string.settings_interface_calls_confirmation), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$184();
                }
            });
            int i77 = i76 + 1;
            searchResultArr[184] = new SearchResult(this, i77, LocaleController.getInternalString(C3632R.string.settings_interface_delete_cloud_confirmation), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda210
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$185();
                }
            });
            int i78 = i77 + 1;
            searchResultArr[185] = new SearchResult(this, i78, LocaleController.getInternalString(C3632R.string.settings_interface_sending_gif_confirmation), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$186();
                }
            });
            int i79 = i78 + 1;
            searchResultArr[186] = new SearchResult(this, i79, LocaleController.getInternalString(C3632R.string.settings_interface_sending_sticker_confirmation), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$187();
                }
            });
            int i80 = i79 + 1;
            searchResultArr[187] = new SearchResult(this, i80, LocaleController.getInternalString(C3632R.string.settings_interface_speak_without_hold), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$188();
                }
            });
            int i81 = i80 + 1;
            searchResultArr[188] = new SearchResult(this, i81, LocaleController.getInternalString(C3632R.string.settings_interface_video_speak_without_hold), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda164
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$189();
                }
            });
            int i82 = i81 + 1;
            searchResultArr[189] = new SearchResult(this, i82, LocaleController.getInternalString(C3632R.string.settings_interface_video_voice_camera), settingsToolsCategory10.getIconResId(), new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda169
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$190();
                }
            });
            int i83 = i82 + 1;
            String internalString10 = LocaleController.getInternalString(C3632R.string.folder_tabs_at_bottom_enable_item_title);
            int i84 = C3632R.C3634drawable.files_folder;
            searchResultArr[190] = new SearchResult(this, i83, internalString10, i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$191();
                }
            });
            int i85 = i83 + 1;
            searchResultArr[191] = new SearchResult(this, i85, LocaleController.getInternalString(C3632R.string.folder_tabs_notification_mode_item_title), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$192();
                }
            });
            int i86 = i85 + 1;
            searchResultArr[192] = new SearchResult(this, i86, LocaleController.getInternalString(C3632R.string.folder_tabs_width_mode_item_title), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$193();
                }
            });
            int i87 = i86 + 1;
            searchResultArr[193] = new SearchResult(this, i87, LocaleController.getInternalString(C3632R.string.folder_tabs_remember_last_filter_tab_item_title), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda109
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$194();
                }
            });
            int i88 = i87 + 1;
            searchResultArr[194] = new SearchResult(this, i88, LocaleController.getInternalString(C3632R.string.folder_tabs_all_chats_tab_settings_item_title), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda113
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$195();
                }
            });
            int i89 = i88 + 1;
            searchResultArr[195] = new SearchResult(this, i89, LocaleController.getInternalString(C3632R.string.folder_tabs_sorting_settings), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda108
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$196();
                }
            });
            int i90 = i89 + 1;
            searchResultArr[196] = new SearchResult(this, i90, LocaleController.getInternalString(C3632R.string.folder_tabs_settings_hide_folders), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda190
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$197();
                }
            });
            int i91 = i90 + 1;
            searchResultArr[197] = new SearchResult(this, i91, LocaleController.getInternalString(C3632R.string.folder_tabs_settings_folders_first), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda204
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$198();
                }
            });
            int i92 = i91 + 1;
            searchResultArr[198] = new SearchResult(this, i92, LocaleController.getInternalString(C3632R.string.folder_tabs_settings_header), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$199();
                }
            });
            int i93 = i92 + 1;
            searchResultArr[199] = new SearchResult(this, i93, LocaleController.getInternalString(C3632R.string.folder_tabs_sorting_settings_item_title), i84, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$200();
                }
            });
            int i94 = i93 + 1;
            String internalString11 = LocaleController.getInternalString(C3632R.string.topics_settings_enable);
            int i95 = C3632R.C3634drawable.fork_topic_select_24;
            searchResultArr[200] = new SearchResult(this, i94, internalString11, i95, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda101
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$201();
                }
            });
            int i96 = i94 + 1;
            searchResultArr[201] = new SearchResult(this, i96, LocaleController.getInternalString(C3632R.string.topics_settings_topics_bar_at_bottom), i95, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda62
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$202();
                }
            });
            int i97 = i96 + 1;
            searchResultArr[202] = new SearchResult(this, i97, LocaleController.getInternalString(C3632R.string.topics_catalog_update_manually), i95, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda126
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$203();
                }
            });
            int i98 = i97 + 1;
            searchResultArr[203] = new SearchResult(this, i98, LocaleController.getString("Settings", C3632R.string.Settings), i95, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda213
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$204();
                }
            });
            int i99 = i98 + 1;
            searchResultArr[204] = new SearchResult(this, i99, LocaleController.getInternalString(C3632R.string.topics_catalog), i95, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$205();
                }
            });
            int i100 = i99 + 1;
            searchResultArr[205] = new SearchResult(this, i100, LocaleController.getInternalString(C3632R.string.topics_create_new), i95, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$206();
                }
            });
            int i101 = i100 + 1;
            String internalString12 = LocaleController.getInternalString(C3632R.string.chat_settings_files_sending_preview_title);
            int i102 = C3632R.C3634drawable.msg_msgbubble3;
            searchResultArr[206] = new SearchResult(this, i101, internalString12, i102, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda96
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$207();
                }
            });
            int i103 = i101 + 1;
            searchResultArr[207] = new SearchResult(this, i103, LocaleController.getInternalString(C3632R.string.chat_settings_vibration), i102, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda120
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$208();
                }
            });
            int i104 = i103 + 1;
            String internalString13 = LocaleController.getInternalString(C3632R.string.settings_section_passcode_archive);
            int i105 = C3632R.C3634drawable.msg2_secret;
            searchResultArr[208] = new SearchResult(this, i104, internalString13, i105, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$209();
                }
            });
            int i106 = i104 + 1;
            searchResultArr[209] = new SearchResult(this, i106, LocaleController.getInternalString(C3632R.string.settings_section_passcode_cloud), i105, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda136
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$210();
                }
            });
            int i107 = i106 + 1;
            searchResultArr[210] = new SearchResult(this, i107, LocaleController.getString("StoragePath", C3632R.string.StoragePath), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda117
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$211();
                }
            });
            int i108 = i107 + 1;
            searchResultArr[211] = new SearchResult(this, i108, LocaleController.getInternalString(C3632R.string.message_document_file_save_original_name), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda155
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$212();
                }
            });
            int i109 = i108 + 1;
            searchResultArr[212] = new SearchResult(this, i109, LocaleController.getInternalString(C3632R.string.backup_settings_header), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$213();
                }
            });
            int i110 = i109 + 1;
            searchResultArr[213] = new SearchResult(this, i110, LocaleController.getInternalString(C3632R.string.backup_settings_save_auto), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda153
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$214();
                }
            });
            int i111 = i110 + 1;
            searchResultArr[214] = new SearchResult(this, i111, LocaleController.getInternalString(C3632R.string.backup_settings_save_manually), i11, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$215();
                }
            });
            int i112 = i111 + 1;
            String internalString14 = LocaleController.getInternalString(C3632R.string.settings_tools_message_quick_translate);
            int i113 = C3632R.C3634drawable.msg_translate;
            searchResultArr[215] = new SearchResult(this, i112, internalString14, i113, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$216();
                }
            });
            int i114 = i112 + 1;
            searchResultArr[216] = new SearchResult(this, i114, LocaleController.getInternalString(C3632R.string.settings_tools_bot_help_translate), i113, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda104
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$217();
                }
            });
            int i115 = i114 + 1;
            searchResultArr[217] = new SearchResult(this, i115, LocaleController.getInternalString(C3632R.string.settings_tools_send_popup_translate), i113, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$218();
                }
            });
            int i116 = i115 + 1;
            searchResultArr[218] = new SearchResult(this, i116, LocaleController.getInternalString(C3632R.string.settings_interface_message_popup_aggregator), C3632R.C3634drawable.fork_settings_context_menu, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$219();
                }
            });
            int i117 = i116 + 1;
            String string20 = LocaleController.getString("SendWithoutSound", C3632R.string.SendWithoutSound);
            int i118 = C3632R.C3634drawable.msg_send;
            searchResultArr[219] = new SearchResult(this, i117, string20, i118, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda83
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$220();
                }
            });
            int i119 = i117 + 1;
            searchResultArr[220] = new SearchResult(this, i119, LocaleController.getInternalString(C3632R.string.settings_tools_combine_messages), i118, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda97
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$221();
                }
            });
            searchResultArr[221] = new SearchResult(this, i119 + 1, LocaleController.getInternalString(C3632R.string.settings_tools_sent_message_font), i118, new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda65
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$onCreateSearchArray$222();
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
            ProfileActivity.this.presentFragment(new NotificationsCustomSettingsActivity(1, new ArrayList(), null, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$8() {
            ProfileActivity.this.presentFragment(new NotificationsCustomSettingsActivity(0, new ArrayList(), null, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$9() {
            ProfileActivity.this.presentFragment(new NotificationsCustomSettingsActivity(2, new ArrayList(), null, true));
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
            ProfileActivity.this.presentFragment(new TwoStepVerificationActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$21() {
            if (ProfileActivity.this.getUserConfig().getGlobalTTl() >= 0) {
                ProfileActivity.this.presentFragment(new AutoDeleteMessagesActivity());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$22() {
            ProfileActivity.this.presentFragment(PasscodeActivity.determineOpenFragment());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$23() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$24() {
            ProfileActivity.this.presentFragment(new PrivacyUsersActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$25() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$26() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(6, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$27() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(0, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$28() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(4, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$29() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(5, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$30() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(3, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$31() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(2, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$32() {
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(1, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$33() {
            if (!ProfileActivity.this.getUserConfig().isPremium()) {
                try {
                    ProfileActivity.this.fragmentView.performHapticFeedback(3, 2);
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                BulletinFactory.m65of(ProfileActivity.this).createRestrictVoiceMessagesPremiumBulletin().show();
                return;
            }
            ProfileActivity.this.presentFragment(new PrivacyControlActivity(8, true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$34() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$35() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$36() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$37() {
            ProfileActivity.this.presentFragment(new SessionsActivity(1));
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
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$42() {
            ProfileActivity.this.presentFragment(new PrivacySettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$43() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$44() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$45() {
            ProfileActivity.this.presentFragment(new SessionsActivity(0).setHighlightLinkDesktopDevice());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$46() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$47() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
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
            ProfileActivity.this.presentFragment(new CacheControlActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$51() {
            ProfileActivity.this.presentFragment(new CacheControlActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$52() {
            ProfileActivity.this.presentFragment(new DataUsage2Activity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$53() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$54() {
            ProfileActivity.this.presentFragment(new DataAutoDownloadActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$55() {
            ProfileActivity.this.presentFragment(new DataAutoDownloadActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$56() {
            ProfileActivity.this.presentFragment(new DataAutoDownloadActivity(2));
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
            ProfileActivity.this.presentFragment(new ProxyListActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$64() {
            ProfileActivity.this.presentFragment(new ProxyListActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$65() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
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
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$71() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$72() {
            ProfileActivity.this.presentFragment(new WallpapersListActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$73() {
            ProfileActivity.this.presentFragment(new WallpapersListActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$74() {
            ProfileActivity.this.presentFragment(new WallpapersListActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$75() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$76() {
            ProfileActivity.this.presentFragment(new ThemeActivity(3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$77() {
            ProfileActivity.this.presentFragment(new ThemeActivity(3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$78() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
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
            ProfileActivity.this.presentFragment(new ThemeActivity(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$83() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
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
            ProfileActivity.this.presentFragment(new LiteModeSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$121() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToFlags(3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$122() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(3, true);
            liteModeSettingsActivity.scrollToFlags(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$123() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(3, true);
            liteModeSettingsActivity.scrollToFlags(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$124() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToFlags(LiteMode.FLAGS_ANIMATED_EMOJI);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$125() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_ANIMATED_EMOJI, true);
            liteModeSettingsActivity.scrollToFlags(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$126() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_ANIMATED_EMOJI, true);
            liteModeSettingsActivity.scrollToFlags(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$127() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_ANIMATED_EMOJI, true);
            liteModeSettingsActivity.scrollToFlags(LiteMode.FLAG_ANIMATED_EMOJI_CHAT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$128() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToFlags(LiteMode.FLAGS_CHAT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$129() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_CHAT, true);
            liteModeSettingsActivity.scrollToFlags(32);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$130() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_CHAT, true);
            liteModeSettingsActivity.scrollToFlags(64);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$131() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_CHAT, true);
            liteModeSettingsActivity.scrollToFlags(128);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$132() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_CHAT, true);
            liteModeSettingsActivity.scrollToFlags(256);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$133() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.setExpanded(LiteMode.FLAGS_CHAT, true);
            liteModeSettingsActivity.scrollToFlags(LiteMode.FLAG_CHAT_SCALE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$134() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToFlags(512);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$135() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToFlags(1024);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$136() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToFlags(2048);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$137() {
            LiteModeSettingsActivity liteModeSettingsActivity = new LiteModeSettingsActivity();
            ProfileActivity.this.presentFragment(liteModeSettingsActivity);
            liteModeSettingsActivity.scrollToType(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$138() {
            ProfileActivity.this.presentFragment(new LanguageSelectActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$139() {
            ProfileActivity.this.presentFragment(new LanguageSelectActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$140() {
            ProfileActivity.this.presentFragment(new LanguageSelectActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$141() {
            ProfileActivity profileActivity = ProfileActivity.this;
            profileActivity.showDialog(AlertsCreator.createSupportAlert(profileActivity, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$142() {
            Browser.openUrl(ProfileActivity.this.getParentActivity(), LocaleController.getString("TelegramFaqUrl", C3632R.string.TelegramFaqUrl));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$143() {
            Browser.openUrl(ProfileActivity.this.getParentActivity(), LocaleController.getString("PrivacyPolicyUrl", C3632R.string.PrivacyPolicyUrl));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$144() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CUSTOMIZATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$145() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CUSTOMIZATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$146() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CUSTOMIZATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$147() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_SIDE_MENU));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$148() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_SIDE_MENU));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$149() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_SIDE_MENU));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$150() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_SIDE_MENU));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$151() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$152() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$153() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$154() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$155() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHAT_PROFILE));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$156() {
            ProfileActivity.this.presentFragment(new ChatProfileActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$157() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHAT_PROFILE));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$158() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CLOUD));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$159() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CLOUD));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$160() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHAT_LIST_VIEW));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$161() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHAT_LIST_VIEW));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$162() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHAT_LIST_VIEW));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$163() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$164() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$165() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$166() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$167() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$168() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$169() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$170() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$171() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$172() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CHATS));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$173() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_MESSAGES));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$174() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$175() {
            ProfileActivity.this.presentFragment(new CombineContextMenuActivity(true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$176() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$177() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_MESSAGES));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$178() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_MESSAGES));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$179() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_MESSAGES));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$180() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_REACTIONS_BUTTON));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$181() {
            ProfileActivity.this.presentFragment(new ReactionsSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$182() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_REACTIONS_BUTTON));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$183() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$184() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$185() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$186() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$187() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$188() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$189() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$190() {
            ProfileActivity.this.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.SETTINGS_CONFIRMATION));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$191() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$192() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$193() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$194() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$195() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$196() {
            ProfileActivity.this.presentFragment(new SortingFilterSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$197() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$198() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$199() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$200() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$201() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$202() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$203() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$204() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$205() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$206() {
            ProfileActivity.this.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$207() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$208() {
            ProfileActivity.this.presentFragment(new ThemeActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$209() {
            ProfileActivity.this.presentFragment(PasscodeActivity.determineOpenFragment(LockedSection.ARCHIVE));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$210() {
            ProfileActivity.this.presentFragment(PasscodeActivity.determineOpenFragment(LockedSection.CLOUD));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$211() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$212() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$213() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$214() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$215() {
            ProfileActivity.this.presentFragment(new DataSettingsActivity());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$216() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$217() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$218() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$219() {
            ProfileActivity.this.presentFragment(new CombineContextMenuActivity(true));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$220() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$221() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateSearchArray$222() {
            ProfileActivity.this.presentFragment(new SettingsToolsMessageActivity(2));
        }

        private boolean isPremiumFeatureAvailable(int i) {
            if (!ProfileActivity.this.getMessagesController().premiumFeaturesBlocked() || ProfileActivity.this.getUserConfig().isPremium()) {
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
            tLRPC$TL_messages_getWebPage.url = LocaleController.getString("TelegramFaqUrl", C3632R.string.TelegramFaqUrl);
            tLRPC$TL_messages_getWebPage.hash = 0;
            ProfileActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda226
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ProfileActivity.SearchAdapter.this.lambda$loadFaqWebPage$224(tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadFaqWebPage$224(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject instanceof TLRPC$TL_messages_webPage) {
                TLRPC$TL_messages_webPage tLRPC$TL_messages_webPage = (TLRPC$TL_messages_webPage) tLObject;
                MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).putUsers(tLRPC$TL_messages_webPage.users, false);
                MessagesController.getInstance(((BaseFragment) ProfileActivity.this).currentAccount).putChats(tLRPC$TL_messages_webPage.chats, false);
                tLObject = tLRPC$TL_messages_webPage.webpage;
            }
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
                                        arrayList.add(new MessagesController.FaqSearchResult(charSequence, str != null ? new String[]{LocaleController.getString("SettingsSearchFaq", C3632R.string.SettingsSearchFaq), str} : new String[]{LocaleController.getString("SettingsSearchFaq", C3632R.string.SettingsSearchFaq)}, url));
                                    }
                                }
                            }
                        } else if (tLRPC$PageBlock instanceof TLRPC$TL_pageBlockAnchor) {
                            break;
                        }
                    }
                    this.faqWebPage = tLRPC$WebPage;
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda223
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileActivity.SearchAdapter.this.lambda$loadFaqWebPage$223(arrayList);
                    }
                });
            }
            this.loadingFaqPage = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadFaqWebPage$223(ArrayList arrayList) {
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
                return (this.searchResults.isEmpty() ? 0 : this.searchResults.size() + 1) + (this.faqSearchResults.isEmpty() ? 0 : this.faqSearchResults.size() + 1) + (this.forkSearchResults.isEmpty() ? 0 : this.forkSearchResults.size() + 1);
            }
            return (this.recentSearches.isEmpty() ? 0 : this.recentSearches.size() + 1) + (this.faqSearchArray.isEmpty() ? 0 : this.faqSearchArray.size() + 1);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    ((HeaderCell) viewHolder.itemView).setText(LocaleController.getString("SettingsRecent", C3632R.string.SettingsRecent));
                    return;
                }
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (this.searchWas && !this.forkSearchResults.isEmpty() && i == 0) {
                    graySectionCell.setText("iMe " + LocaleController.getString("Settings", C3632R.string.Settings));
                    return;
                }
                if (this.searchWas && !this.searchResults.isEmpty()) {
                    if (i == (this.forkSearchResults.isEmpty() ? 0 : this.forkSearchResults.size() + 1)) {
                        graySectionCell.setText("Telegram " + LocaleController.getString("Settings", C3632R.string.Settings));
                        return;
                    }
                }
                graySectionCell.setText(LocaleController.getString("SettingsFaqSearchTitle", C3632R.string.SettingsFaqSearchTitle));
                return;
            }
            SettingsSearchCell settingsSearchCell = (SettingsSearchCell) viewHolder.itemView;
            if (this.searchWas) {
                if (!this.forkSearchResults.isEmpty() && i != 0 && i < this.forkSearchResults.size() + 1) {
                    int i2 = i - 1;
                    settingsSearchCell.setTextAndValueAndIcon(this.resultNamesFork.get(i2), null, this.forkSearchResults.get(i2).iconResId, i < this.forkSearchResults.size());
                    return;
                }
                if (i < this.searchResults.size() + (this.forkSearchResults.isEmpty() ? 1 : this.forkSearchResults.size() + 2)) {
                    int size = i - (this.forkSearchResults.isEmpty() ? 1 : this.forkSearchResults.size() + 2);
                    SearchResult searchResult = this.searchResults.get(size);
                    SearchResult searchResult2 = size > 0 ? this.searchResults.get(size - 1) : null;
                    settingsSearchCell.setTextAndValueAndIcon(this.resultNames.get(size), searchResult.path, (searchResult2 == null || searchResult2.iconResId != searchResult.iconResId) ? searchResult.iconResId : 0, size < (this.searchResults.size() - 1) + this.forkSearchResults.size());
                    return;
                }
                int size2 = i - (((this.searchResults.size() + 1) + (!this.searchResults.isEmpty() ? 1 : 0)) + (this.forkSearchResults.isEmpty() ? 0 : this.forkSearchResults.size() + 1));
                settingsSearchCell.setTextAndValue(this.resultNames.get(this.searchResults.size() + size2), this.faqSearchResults.get(size2).path, true, size2 < this.searchResults.size() - 1);
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
            int size3 = i - (this.recentSearches.size() + 1);
            MessagesController.FaqSearchResult faqSearchResult2 = this.faqSearchArray.get(size3);
            settingsSearchCell.setTextAndValue(faqSearchResult2.title, faqSearchResult2.path, true, size3 < this.recentSearches.size() - 1);
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
                if ((!this.forkSearchResults.isEmpty() && (i == 0 || i == this.forkSearchResults.size() + 1)) || (this.forkSearchResults.isEmpty() && i == 0)) {
                    return 1;
                }
                if (i < this.searchResults.size() + (this.forkSearchResults.isEmpty() ? 0 : this.forkSearchResults.size() + 1)) {
                    return 0;
                }
                if (i == (this.searchResults.isEmpty() ? 0 : this.searchResults.size() + 1) + (this.forkSearchResults.isEmpty() ? 0 : this.forkSearchResults.size() + 1)) {
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
                ProfileActivity.this.emptyView.title.setText(LocaleController.getString("SettingsNoRecent", C3632R.string.SettingsNoRecent));
                notifyDataSetChanged();
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda221
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$search$226(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$226(final String str) {
            SpannableStringBuilder spannableStringBuilder;
            String str2;
            int i;
            ArrayList arrayList;
            String str3;
            int i2;
            ArrayList arrayList2;
            ArrayList arrayList3;
            String[] strArr;
            String str4;
            SpannableStringBuilder spannableStringBuilder2;
            final ArrayList arrayList4 = new ArrayList();
            final ArrayList arrayList5 = new ArrayList();
            final ArrayList arrayList6 = new ArrayList();
            ArrayList arrayList7 = new ArrayList();
            final ArrayList arrayList8 = new ArrayList();
            String str5 = " ";
            String[] split = str.split(" ");
            String[] strArr2 = new String[split.length];
            int i3 = 0;
            while (true) {
                spannableStringBuilder = null;
                if (i3 >= split.length) {
                    break;
                }
                strArr2[i3] = LocaleController.getInstance().getTranslitString(split[i3]);
                if (strArr2[i3].equals(split[i3])) {
                    strArr2[i3] = null;
                }
                i3++;
            }
            int i4 = 0;
            while (true) {
                SearchResult[] searchResultArr = this.searchArray;
                if (i4 >= searchResultArr.length) {
                    break;
                }
                SearchResult searchResult = searchResultArr[i4];
                if (searchResult != null) {
                    String str6 = " " + searchResult.searchTitle.toLowerCase();
                    SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder;
                    int i5 = 0;
                    while (i5 < split.length) {
                        if (split[i5].length() != 0) {
                            String str7 = split[i5];
                            int indexOf = str6.indexOf(" " + str7);
                            if (indexOf < 0 && strArr2[i5] != null) {
                                str7 = strArr2[i5];
                                indexOf = str6.indexOf(" " + str7);
                            }
                            if (indexOf < 0) {
                                break;
                            }
                            if (spannableStringBuilder3 == null) {
                                str4 = str6;
                                spannableStringBuilder2 = new SpannableStringBuilder(searchResult.searchTitle);
                            } else {
                                str4 = str6;
                                spannableStringBuilder2 = spannableStringBuilder3;
                            }
                            arrayList3 = arrayList7;
                            strArr = strArr2;
                            spannableStringBuilder2.setSpan(new ForegroundColorSpan(ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4)), indexOf, str7.length() + indexOf, 33);
                        } else {
                            arrayList3 = arrayList7;
                            strArr = strArr2;
                            str4 = str6;
                            spannableStringBuilder2 = spannableStringBuilder3;
                        }
                        if (spannableStringBuilder2 != null && i5 == split.length - 1) {
                            if (searchResult.guid == 502) {
                                int i6 = -1;
                                int i7 = 0;
                                while (true) {
                                    if (i7 >= 5) {
                                        break;
                                    } else if (!UserConfig.getInstance(i7).isClientActivated()) {
                                        i6 = i7;
                                        break;
                                    } else {
                                        i7++;
                                    }
                                }
                                if (i6 < 0) {
                                }
                            }
                            if (searchResult.guid < 0) {
                                arrayList4.add(searchResult);
                                arrayList5.add(spannableStringBuilder2);
                            } else {
                                arrayList6.add(searchResult);
                                arrayList8.add(spannableStringBuilder2);
                            }
                        }
                        i5++;
                        spannableStringBuilder3 = spannableStringBuilder2;
                        str6 = str4;
                        arrayList7 = arrayList3;
                        strArr2 = strArr;
                    }
                }
                i4++;
                arrayList7 = arrayList7;
                strArr2 = strArr2;
                spannableStringBuilder = null;
            }
            ArrayList arrayList9 = arrayList7;
            String[] strArr3 = strArr2;
            if (this.faqWebPage != null) {
                int size = this.faqSearchArray.size();
                int i8 = 0;
                while (i8 < size) {
                    MessagesController.FaqSearchResult faqSearchResult = this.faqSearchArray.get(i8);
                    String str8 = str5 + faqSearchResult.title.toLowerCase();
                    int i9 = 0;
                    SpannableStringBuilder spannableStringBuilder4 = null;
                    while (true) {
                        if (i9 >= split.length) {
                            str2 = str5;
                            i = size;
                            arrayList = arrayList9;
                            break;
                        }
                        if (split[i9].length() != 0) {
                            String str9 = split[i9];
                            int indexOf2 = str8.indexOf(str5 + str9);
                            if (indexOf2 < 0 && strArr3[i9] != null) {
                                str9 = strArr3[i9];
                                indexOf2 = str8.indexOf(str5 + str9);
                            }
                            if (indexOf2 < 0) {
                                str2 = str5;
                                i = size;
                                arrayList = arrayList9;
                                break;
                            }
                            if (spannableStringBuilder4 == null) {
                                spannableStringBuilder4 = new SpannableStringBuilder(faqSearchResult.title);
                            }
                            str3 = str5;
                            i2 = size;
                            spannableStringBuilder4.setSpan(new ForegroundColorSpan(ProfileActivity.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4)), indexOf2, str9.length() + indexOf2, 33);
                        } else {
                            str3 = str5;
                            i2 = size;
                        }
                        if (spannableStringBuilder4 == null || i9 != split.length - 1) {
                            arrayList2 = arrayList9;
                        } else {
                            arrayList2 = arrayList9;
                            arrayList2.add(faqSearchResult);
                            arrayList8.add(spannableStringBuilder4);
                        }
                        i9++;
                        arrayList9 = arrayList2;
                        str5 = str3;
                        size = i2;
                    }
                    i8++;
                    arrayList9 = arrayList;
                    str5 = str2;
                    size = i;
                }
            }
            final ArrayList arrayList10 = arrayList9;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ProfileActivity$SearchAdapter$$ExternalSyntheticLambda222
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileActivity.SearchAdapter.this.lambda$search$225(str, arrayList5, arrayList4, arrayList6, arrayList10, arrayList8);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$225(String str, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
            if (str.equals(this.lastSearchString)) {
                if (!this.searchWas) {
                    ProfileActivity.this.emptyView.stickerView.getImageReceiver().startAnimation();
                    ProfileActivity.this.emptyView.title.setText(LocaleController.getString("SettingsNoResults", C3632R.string.SettingsNoResults));
                }
                this.resultNamesFork = arrayList;
                this.forkSearchResults = arrayList2;
                this.searchWas = true;
                this.searchResults = arrayList3;
                this.faqSearchResults = arrayList4;
                this.resultNames = arrayList5;
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
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ProfileActivity.this.lambda$dimBehindView$79(valueAnimator);
            }
        });
        this.scrimAnimatorSet.playTogether(arrayList);
        this.scrimAnimatorSet.setDuration(z ? 150L : 220L);
        if (!z) {
            this.scrimAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ProfileActivity.53
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ProfileActivity.this.scrimView = null;
                    ProfileActivity.this.fragmentView.invalidate();
                }
            });
        }
        this.scrimAnimatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dimBehindView$79(ValueAnimator valueAnimator) {
        this.scrimPaint.setAlpha((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        if (this.resourcesProvider != null) {
            return null;
        }
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda74
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ProfileActivity.this.lambda$getThemeDescriptions$80();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_windowBackgroundWhiteBlueHeader;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"expandImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        ImageView imageView = this.transferButton;
        int i2 = ThemeDescription.FLAG_IMAGECOLOR;
        int i3 = Theme.key_profile_actionIcon;
        arrayList.add(new ThemeDescription(imageView, i2, null, null, null, null, i3));
        ImageView imageView2 = this.transferButton;
        int i4 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i5 = Theme.key_profile_actionBackground;
        arrayList.add(new ThemeDescription(imageView2, i4, null, null, null, null, i5));
        int i6 = Theme.key_profile_actionPressedBackground;
        arrayList.add(new ThemeDescription(this.transferButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, i6));
        int i7 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        int i8 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        int i9 = Theme.key_switchTrack;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i9));
        int i10 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            arrayList.addAll(sharedMediaLayout.getThemeDescriptions());
        }
        RecyclerListView recyclerListView = this.listView;
        int i11 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(recyclerListView, 0, null, null, null, null, i11));
        arrayList.add(new ThemeDescription(this.searchListView, 0, null, null, null, null, i11));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_actionBarSelectorBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_chat_lockIcon));
        int i12 = Theme.key_avatar_subtitleInProfileBlue;
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i12));
        int i13 = Theme.key_avatar_backgroundActionBarBlue;
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i13));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_profile_title));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_profile_status));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i12));
        if (this.mediaCounterTextView != null) {
            TextView textView = this.mediaCounterTextView.getTextView();
            int i14 = ThemeDescription.FLAG_TEXTCOLOR;
            int i15 = Theme.key_player_actionBarSubtitle;
            arrayList.add(new ThemeDescription(textView, i14, null, null, null, themeDescriptionDelegate, i15));
            arrayList.add(new ThemeDescription(this.mediaCounterTextView.getNextTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, themeDescriptionDelegate, i15));
        }
        arrayList.add(new ThemeDescription(this.topView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i13));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        AvatarImageView avatarImageView = this.avatarImage;
        Drawable[] drawableArr = Theme.avatarDrawables;
        int i16 = Theme.key_avatar_text;
        arrayList.add(new ThemeDescription(avatarImageView, 0, null, null, drawableArr, null, i16));
        arrayList.add(new ThemeDescription(this.avatarImage, 0, null, null, new Drawable[]{this.avatarDrawable}, null, Theme.key_avatar_backgroundInProfileBlue));
        arrayList.add(new ThemeDescription(this.writeButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.writeButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i5));
        arrayList.add(new ThemeDescription(this.writeButton, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGreenText2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueButton));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        int i17 = Theme.key_windowBackgroundWhiteGrayIcon;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"detailTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        int i18 = Theme.key_windowBackgroundWhiteLinkText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{SettingsSuggestionCell.class}, new String[]{"detailTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i18));
        int i19 = Theme.key_featuredStickers_buttonText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"yesButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i19));
        int i20 = Theme.key_featuredStickers_addButton;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{SettingsSuggestionCell.class}, new String[]{"yesButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i20));
        int i21 = Theme.key_featuredStickers_addButtonPressed;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{SettingsSuggestionCell.class}, new String[]{"yesButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i21));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SettingsSuggestionCell.class}, new String[]{"noButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i19));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{SettingsSuggestionCell.class}, new String[]{"noButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i20));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{SettingsSuggestionCell.class}, new String[]{"noButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i21));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i9));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{UserCell.class}, new String[]{"adminTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_profile_creatorIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, i16));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_undo_background));
        int i22 = Theme.key_undo_cancelColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i22));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i22));
        int i23 = Theme.key_undo_infoColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i23));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i23));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i23));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i23));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AboutLinkCell.class}, Theme.profile_aboutTextPaint, null, null, i7));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{AboutLinkCell.class}, Theme.profile_aboutTextPaint, null, null, i18));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AboutLinkCell.class}, Theme.linkSelectionPaint, null, null, Theme.key_windowBackgroundWhiteLinkSelection));
        int i24 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i24));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i24));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
        arrayList.add(new ThemeDescription(this.searchListView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, Theme.key_graySection));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{SettingsSearchCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i7));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{SettingsSearchCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        arrayList.add(new ThemeDescription(this.searchListView, 0, new Class[]{SettingsSearchCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
        if (this.mediaHeaderVisible) {
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, this.verifiedCheckDrawable, null, Theme.key_player_actionBarTitle));
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, this.verifiedDrawable, null, i11));
        } else {
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, this.verifiedCheckDrawable, null, Theme.key_profile_verifiedCheck));
            arrayList.add(new ThemeDescription(this.nameTextView[1], 0, null, null, this.verifiedDrawable, null, Theme.key_profile_verifiedBackground));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$80() {
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
                    if (tag instanceof Integer) {
                        this.onlineTextView[i2 + 1].setTextColor(applyPeerColor(getThemedColor(((Integer) tag).intValue()), true, Boolean.valueOf(this.isOnline[0])));
                    } else {
                        this.onlineTextView[i2 + 1].setTextColor(applyPeerColor(getThemedColor(Theme.key_avatar_subtitleInProfileBlue), true, Boolean.TRUE));
                    }
                }
            }
            Drawable drawable = this.lockIconDrawable;
            if (drawable != null) {
                drawable.setColorFilter(getThemedColor(Theme.key_chat_lockIcon), PorterDuff.Mode.MULTIPLY);
            }
            ScamDrawable scamDrawable = this.scamDrawable;
            if (scamDrawable != null) {
                scamDrawable.setColor(getThemedColor(Theme.key_avatar_subtitleInProfileBlue));
            }
            SimpleTextView[] simpleTextViewArr2 = this.nameTextView;
            if (simpleTextViewArr2[1] != null) {
                simpleTextViewArr2[1].setTextColor(getThemedColor(Theme.key_profile_title));
            }
            C3704ActionBar c3704ActionBar = this.actionBar;
            if (c3704ActionBar != null) {
                c3704ActionBar.setItemsColor(this.peerColor != null ? -1 : getThemedColor(Theme.key_actionBarDefaultIcon), false);
                this.actionBar.setItemsBackgroundColor(this.peerColor != null ? 553648127 : getThemedColor(Theme.key_avatar_actionBarSelectorBlue), false);
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
        if (recyclerListView == null || this.layoutManager == null || recyclerListView.getChildCount() <= 0 || this.savedScrollToSharedMedia) {
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
            if (this.savedScrollPosition == 0 && !this.allowPullingDown && top > AndroidUtilities.m107dp(88)) {
                this.savedScrollOffset = AndroidUtilities.m107dp(88);
            }
            this.layoutManager.scrollToPositionWithOffset(i2, view.getTop() - this.listView.getPaddingTop());
        }
    }

    @Override // org.telegram.p043ui.Components.SharedMediaLayout.Delegate
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        writeButtonSetBackground();
    }

    private void writeButtonSetBackground() {
        if (this.writeButton == null) {
            return;
        }
        try {
            Drawable mutate = this.fragmentView.getContext().getResources().getDrawable(C3632R.C3634drawable.floating_shadow_profile).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            int themedColor = getThemedColor(Theme.key_profile_actionBackground);
            int themedColor2 = getThemedColor(Theme.key_profile_actionPressedBackground);
            int themedColor3 = getThemedColor(Theme.key_profile_actionIcon);
            if (this.peerColor != null && Theme.hasHue(themedColor)) {
                themedColor = Theme.adaptHSV(this.peerColor.getBgColor1(false), 0.05f, -0.04f);
                themedColor2 = applyPeerColor2(themedColor2);
                themedColor3 = -1;
            }
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m107dp(56), themedColor, themedColor2), 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56));
            this.writeButton.setBackground(combinedDrawable);
            this.writeButton.setColorFilter(new PorterDuffColorFilter(themedColor3, PorterDuff.Mode.MULTIPLY));
            this.transferButton.setBackground(combinedDrawable.mutate());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddToContact(final TLRPC$User tLRPC$User, Bundle bundle) {
        ContactAddActivity contactAddActivity = new ContactAddActivity(bundle, this.resourcesProvider);
        contactAddActivity.setDelegate(new ContactAddActivity.ContactAddActivityDelegate() { // from class: org.telegram.ui.ProfileActivity$$ExternalSyntheticLambda78
            @Override // org.telegram.p043ui.ContactAddActivity.ContactAddActivityDelegate
            public final void didAddToContacts() {
                ProfileActivity.this.lambda$openAddToContact$81(tLRPC$User);
            }
        });
        presentFragment(contactAddActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddToContact$81(TLRPC$User tLRPC$User) {
        if (this.addToContactsRow >= 0) {
            if (this.sharedMediaRow == -1) {
                updateRowsIds();
                this.listAdapter.notifyDataSetChanged();
            } else {
                updateListAnimated(false);
            }
        }
        if (this.sharedMediaRow == -1) {
            if (this.isInLandscapeMode || AndroidUtilities.isTablet()) {
                this.listView.setPadding(0, AndroidUtilities.m107dp(88), 0, 0);
                this.expandAnimator.cancel();
                float[] fArr = this.expandAnimatorValues;
                fArr[0] = 1.0f;
                fArr[1] = 0.0f;
                setAvatarExpandProgress(1.0f);
                this.extraHeight = AndroidUtilities.m107dp(88);
            } else {
                int currentActionBarHeight = C3704ActionBar.getCurrentActionBarHeight() + (this.actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.listView.getMeasuredWidth(), 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.listView.getMeasuredHeight(), 0);
                int i = 0;
                for (int i2 = 0; i2 < this.listAdapter.getItemCount(); i2++) {
                    ListAdapter listAdapter = this.listAdapter;
                    RecyclerView.ViewHolder createViewHolder = listAdapter.createViewHolder(null, listAdapter.getItemViewType(i2));
                    this.listAdapter.onBindViewHolder(createViewHolder, i2);
                    createViewHolder.itemView.measure(makeMeasureSpec, makeMeasureSpec2);
                    i += createViewHolder.itemView.getMeasuredHeight();
                }
                int max = Math.max(0, this.fragmentView.getMeasuredHeight() - ((i + AndroidUtilities.m107dp(88)) + currentActionBarHeight));
                RecyclerListView recyclerListView = this.listView;
                recyclerListView.setPadding(0, recyclerListView.getPaddingTop(), 0, max);
            }
        }
        this.undoView.showWithAction(this.dialogId, 8, tLRPC$User);
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
            put(8, ProfileActivity.this.socialsRow, sparseIntArray);
            put(9, ProfileActivity.this.setAvatarRow, sparseIntArray);
            put(10, ProfileActivity.this.setAvatarSectionRow, sparseIntArray);
            put(11, ProfileActivity.this.numberSectionRow, sparseIntArray);
            put(12, ProfileActivity.this.numberRow, sparseIntArray);
            put(13, ProfileActivity.this.setUsernameRow, sparseIntArray);
            put(14, ProfileActivity.this.bioRow, sparseIntArray);
            put(15, ProfileActivity.this.phoneSuggestionRow, sparseIntArray);
            put(16, ProfileActivity.this.phoneSuggestionSectionRow, sparseIntArray);
            put(17, ProfileActivity.this.passwordSuggestionRow, sparseIntArray);
            put(18, ProfileActivity.this.passwordSuggestionSectionRow, sparseIntArray);
            put(19, ProfileActivity.this.settingsSectionRow, sparseIntArray);
            put(20, ProfileActivity.this.settingsSectionRow2, sparseIntArray);
            put(21, ProfileActivity.this.notificationRow, sparseIntArray);
            put(22, ProfileActivity.this.languageRow, sparseIntArray);
            put(23, ProfileActivity.this.premiumRow, sparseIntArray);
            put(24, ProfileActivity.this.premiumSectionsRow, sparseIntArray);
            put(25, ProfileActivity.this.premiumGiftingRow, sparseIntArray);
            put(26, ProfileActivity.this.privacyRow, sparseIntArray);
            put(27, ProfileActivity.this.dataRow, sparseIntArray);
            put(28, ProfileActivity.this.liteModeRow, sparseIntArray);
            put(29, ProfileActivity.this.chatRow, sparseIntArray);
            put(30, ProfileActivity.this.filtersRow, sparseIntArray);
            put(31, ProfileActivity.this.stickersRow, sparseIntArray);
            put(32, ProfileActivity.this.devicesRow, sparseIntArray);
            put(33, ProfileActivity.this.devicesSectionRow, sparseIntArray);
            put(34, ProfileActivity.this.helpHeaderRow, sparseIntArray);
            put(35, ProfileActivity.this.questionRow, sparseIntArray);
            put(36, ProfileActivity.this.faqRow, sparseIntArray);
            put(37, ProfileActivity.this.policyRow, sparseIntArray);
            put(38, ProfileActivity.this.helpSectionCell, sparseIntArray);
            put(39, ProfileActivity.this.debugHeaderRow, sparseIntArray);
            put(40, ProfileActivity.this.sendLogsRow, sparseIntArray);
            put(41, ProfileActivity.this.sendLastLogsRow, sparseIntArray);
            put(42, ProfileActivity.this.clearLogsRow, sparseIntArray);
            put(43, ProfileActivity.this.switchBackendRow, sparseIntArray);
            put(44, ProfileActivity.this.versionRow, sparseIntArray);
            put(45, ProfileActivity.this.emptyRow, sparseIntArray);
            put(46, ProfileActivity.this.bottomPaddingRow, sparseIntArray);
            put(47, ProfileActivity.this.infoHeaderRow, sparseIntArray);
            put(48, ProfileActivity.this.phoneRow, sparseIntArray);
            put(49, ProfileActivity.this.locationRow, sparseIntArray);
            put(50, ProfileActivity.this.userInfoRow, sparseIntArray);
            put(51, ProfileActivity.this.channelInfoRow, sparseIntArray);
            put(52, ProfileActivity.this.usernameRow, sparseIntArray);
            put(53, ProfileActivity.this.notificationsDividerRow, sparseIntArray);
            put(54, ProfileActivity.this.reportDividerRow, sparseIntArray);
            put(55, ProfileActivity.this.notificationsRow, sparseIntArray);
            put(56, ProfileActivity.this.infoSectionRow, sparseIntArray);
            put(57, ProfileActivity.this.sendMessageRow, sparseIntArray);
            put(58, ProfileActivity.this.reportRow, sparseIntArray);
            put(59, ProfileActivity.this.reportReactionRow, sparseIntArray);
            put(60, ProfileActivity.this.addToContactsRow, sparseIntArray);
            put(61, ProfileActivity.this.settingsTimerRow, sparseIntArray);
            put(62, ProfileActivity.this.settingsKeyRow, sparseIntArray);
            put(63, ProfileActivity.this.secretSettingsSectionRow, sparseIntArray);
            put(64, ProfileActivity.this.membersHeaderRow, sparseIntArray);
            put(65, ProfileActivity.this.addMemberRow, sparseIntArray);
            put(66, ProfileActivity.this.subscribersRow, sparseIntArray);
            put(67, ProfileActivity.this.subscribersRequestsRow, sparseIntArray);
            put(68, ProfileActivity.this.administratorsRow, sparseIntArray);
            put(69, ProfileActivity.this.settingsRow, sparseIntArray);
            put(70, ProfileActivity.this.blockedUsersRow, sparseIntArray);
            put(71, ProfileActivity.this.membersSectionRow, sparseIntArray);
            put(72, ProfileActivity.this.sharedMediaRow, sparseIntArray);
            put(73, ProfileActivity.this.unblockRow, sparseIntArray);
            put(74, ProfileActivity.this.addToGroupButtonRow, sparseIntArray);
            put(75, ProfileActivity.this.addToGroupInfoRow, sparseIntArray);
            put(76, ProfileActivity.this.joinRow, sparseIntArray);
            put(77, ProfileActivity.this.lastSectionRow, sparseIntArray);
            put(78, ProfileActivity.this.notificationsSimpleRow, sparseIntArray);
        }

        private void put(int i, int i2, SparseIntArray sparseIntArray) {
            if (i2 >= 0) {
                sparseIntArray.put(i2, i);
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        int themedColor;
        if (this.isPulledDown) {
            return false;
        }
        if (this.actionBar.isActionModeShowed()) {
            themedColor = getThemedColor(Theme.key_actionBarActionModeDefault);
        } else if (this.mediaHeaderVisible) {
            themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
        } else {
            MessagesController.PeerColor peerColor = this.peerColor;
            if (peerColor != null) {
                themedColor = peerColor.getBgColor2(Theme.isCurrentThemeDark());
            } else {
                themedColor = getThemedColor(Theme.key_actionBarDefault);
            }
        }
        return ColorUtils.calculateLuminance(themedColor) > 0.699999988079071d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPhotoDescriptionAlpha() {
        int i = this.playProfileAnimation;
        if (i == 1 && (!this.fragmentOpened || this.openAnimationInProgress)) {
            this.photoDescriptionProgress = BitmapDescriptorFactory.HUE_RED;
        } else if (i == 2 && (!this.fragmentOpened || this.openAnimationInProgress)) {
            SimpleTextView[] simpleTextViewArr = this.onlineTextView;
            this.photoDescriptionProgress = simpleTextViewArr[1] == null ? 0.0f : simpleTextViewArr[1].getAlpha();
        } else if (this.userId == UserConfig.getInstance(this.currentAccount).clientUserId) {
            this.photoDescriptionProgress = this.currentExpandAnimatorValue * (1.0f - this.customAvatarProgress);
        } else {
            this.photoDescriptionProgress = this.currentExpandAnimatorValue * this.customAvatarProgress;
        }
        if (this.userId == UserConfig.getInstance(this.currentAccount).clientUserId) {
            if (this.hasFallbackPhoto) {
                this.customPhotoOffset = AndroidUtilities.m107dp(28) * this.photoDescriptionProgress;
                SimpleTextView[] simpleTextViewArr2 = this.onlineTextView;
                if (simpleTextViewArr2[2] != null) {
                    simpleTextViewArr2[2].setAlpha(this.currentExpandAnimatorValue);
                    this.onlineTextView[3].setAlpha(1.0f - this.currentExpandAnimatorValue);
                    this.onlineTextView[1].setTranslationX(this.onlineX + this.customPhotoOffset);
                    this.avatarContainer2.invalidate();
                    return;
                }
                return;
            }
            SimpleTextView[] simpleTextViewArr3 = this.onlineTextView;
            if (simpleTextViewArr3[2] != null) {
                simpleTextViewArr3[2].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.onlineTextView[3].setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        } else if (this.hasCustomPhoto) {
            SimpleTextView[] simpleTextViewArr4 = this.onlineTextView;
            if (simpleTextViewArr4[2] != null) {
                simpleTextViewArr4[2].setAlpha(this.photoDescriptionProgress);
            }
        } else {
            SimpleTextView[] simpleTextViewArr5 = this.onlineTextView;
            if (simpleTextViewArr5[2] != null) {
                simpleTextViewArr5[2].setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStoriesViewBounds(boolean z) {
        C3704ActionBar c3704ActionBar;
        if (this.storyView == null || (c3704ActionBar = this.actionBar) == null) {
            return;
        }
        float f = c3704ActionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0.0f;
        float width = this.actionBar.getWidth();
        float max = this.actionBar.getBackButton() != null ? Math.max((float) BitmapDescriptorFactory.HUE_RED, this.actionBar.getBackButton().getRight()) : 0.0f;
        if (this.actionBar.menu != null) {
            for (int i = 0; i < this.actionBar.menu.getChildCount(); i++) {
                View childAt = this.actionBar.menu.getChildAt(i);
                if (childAt.getAlpha() > BitmapDescriptorFactory.HUE_RED && childAt.getVisibility() == 0) {
                    float left = this.actionBar.menu.getLeft() + ((int) childAt.getX());
                    if (left < width) {
                        width = AndroidUtilities.lerp(width, left, childAt.getAlpha());
                    }
                }
            }
        }
        this.storyView.setBounds(max, width, f + ((this.actionBar.getHeight() - f) / 2.0f), !z);
    }

    /* renamed from: org.telegram.ui.ProfileActivity$ClippedListView */
    /* loaded from: classes5.dex */
    private class ClippedListView extends RecyclerListView implements StoriesListPlaceProvider.ClippedView {
        public ClippedListView(Context context) {
            super(context);
        }

        @Override // org.telegram.p043ui.Stories.StoriesListPlaceProvider.ClippedView
        public void updateClip(int[] iArr) {
            iArr[0] = ((BaseFragment) ProfileActivity.this).actionBar.getMeasuredHeight();
            iArr[1] = getMeasuredHeight() - getPaddingBottom();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void listCodecs(String str, StringBuilder sb) {
        String[] supportedTypes;
        boolean z;
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        try {
            int codecCount = MediaCodecList.getCodecCount();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (codecInfoAt != null && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= supportedTypes.length) {
                            z = false;
                            break;
                        } else if (supportedTypes[i2].equals(str)) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (z) {
                        (codecInfoAt.isEncoder() ? arrayList2 : arrayList).add(Integer.valueOf(i));
                    }
                }
            }
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                return;
            }
            sb.append("\n");
            sb.append(arrayList.size());
            sb.append("+");
            sb.append(arrayList2.size());
            sb.append(" ");
            sb.append(str.substring(6));
            sb.append(" codecs:\n");
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (i3 > 0) {
                    sb.append("\n");
                }
                MediaCodecInfo codecInfoAt2 = MediaCodecList.getCodecInfoAt(((Integer) arrayList.get(i3)).intValue());
                sb.append("{d} ");
                sb.append(codecInfoAt2.getName());
                sb.append(" (");
                if (Build.VERSION.SDK_INT >= 29) {
                    if (codecInfoAt2.isHardwareAccelerated()) {
                        sb.append("gpu");
                    }
                    if (codecInfoAt2.isSoftwareOnly()) {
                        sb.append("cpu");
                    }
                    if (codecInfoAt2.isVendor()) {
                        sb.append(", v");
                    }
                }
                MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt2.getCapabilitiesForType(str);
                sb.append("; mi=");
                sb.append(capabilitiesForType.getMaxSupportedInstances());
                sb.append(")");
            }
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                if (i4 > 0 || !arrayList.isEmpty()) {
                    sb.append("\n");
                }
                MediaCodecInfo codecInfoAt3 = MediaCodecList.getCodecInfoAt(((Integer) arrayList2.get(i4)).intValue());
                sb.append("{e} ");
                sb.append(codecInfoAt3.getName());
                sb.append(" (");
                if (Build.VERSION.SDK_INT >= 29) {
                    if (codecInfoAt3.isHardwareAccelerated()) {
                        sb.append("gpu");
                    }
                    if (codecInfoAt3.isSoftwareOnly()) {
                        sb.append("cpu");
                    }
                    if (codecInfoAt3.isVendor()) {
                        sb.append(", v");
                    }
                }
                MediaCodecInfo.CodecCapabilities capabilitiesForType2 = codecInfoAt3.getCapabilitiesForType(str);
                sb.append("; mi=");
                sb.append(capabilitiesForType2.getMaxSupportedInstances());
                sb.append(")");
            }
            sb.append("\n");
        } catch (Exception unused) {
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        super.onTransitionAnimationProgress(z, f);
        View view = this.blurredView;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        if (z) {
            this.blurredView.setAlpha(1.0f - f);
        } else {
            this.blurredView.setAlpha(f);
        }
    }

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

    public ShowDrawable getShowStatusButton() {
        if (this.showStatusButton == null) {
            ShowDrawable showDrawable = new ShowDrawable();
            this.showStatusButton = showDrawable;
            showDrawable.setAlpha((int) (Math.min(1.0f, this.extraHeight / AndroidUtilities.m108dp(88.0f)) * 255.0f));
            this.showStatusButton.setBackgroundColor(ColorUtils.blendARGB(Theme.multAlpha(Theme.adaptHSV(this.actionBarBackgroundColor, 0.18f, -0.1f), 0.5f), 603979775, this.currentExpandAnimatorValue));
        }
        return this.showStatusButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ProfileActivity$ShowDrawable */
    /* loaded from: classes5.dex */
    public static class ShowDrawable extends Drawable implements SimpleTextView.PressableDrawable {
        private float alpha;
        public final Paint backgroundPaint;
        private final ButtonBounce bounce;
        private final Text text;
        private int textColor;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public ShowDrawable() {
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.alpha = 1.0f;
            this.bounce = new ButtonBounce(null) { // from class: org.telegram.ui.ProfileActivity.ShowDrawable.1
                @Override // org.telegram.p043ui.Components.ButtonBounce
                public void invalidate() {
                    ShowDrawable.this.invalidateSelf();
                }
            };
            this.text = new Text(LocaleController.getString(C3632R.string.StatusHiddenShow), 11.0f);
            paint.setColor(520093696);
        }

        public void setBackgroundColor(int i) {
            if (this.backgroundPaint.getColor() != i) {
                this.backgroundPaint.setColor(i);
                invalidateSelf();
            }
        }

        public void setTextColor(int i) {
            if (this.textColor != i) {
                this.textColor = i;
                invalidateSelf();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.alpha <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(getBounds());
            canvas.save();
            float scale = this.bounce.getScale(0.1f);
            canvas.scale(scale, scale, rectF.centerX(), rectF.centerY());
            int alpha = this.backgroundPaint.getAlpha();
            this.backgroundPaint.setAlpha((int) (alpha * this.alpha));
            canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(20), this.backgroundPaint);
            this.backgroundPaint.setAlpha(alpha);
            this.text.draw(canvas, rectF.left + AndroidUtilities.m108dp(5.5f), rectF.centerY(), this.textColor, this.alpha);
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i / 255.0f;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return (int) (this.text.getCurrentWidth() + AndroidUtilities.m107dp(11));
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m108dp(17.33f);
        }

        @Override // org.telegram.p043ui.ActionBar.SimpleTextView.PressableDrawable
        public void setPressed(boolean z) {
            this.bounce.setPressed(z);
        }
    }
}
