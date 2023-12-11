package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.Editable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.webkit.MimeTypeMap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.p010os.BuildCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.ChatListItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.C0485C;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.enums.FormattingPanelType;
import com.iMe.fork.enums.TemplatesMode;
import com.iMe.fork.enums.VideoVoiceCamera;
import com.iMe.fork.p023ui.view.TemplateCell;
import com.iMe.fork.p023ui.view.TemplatesHeaderCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.manager.common.MediaEditManager;
import com.iMe.p030ui.formatting_messages.FormattingMessagesKeyboardContainer;
import com.iMe.p030ui.formatting_messages.FormattingMessagesWeb;
import com.iMe.storage.common.AppConfiguration$Common;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import com.iMe.utils.helper.wallet.WalletHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SharedPrefsHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.camera.CameraController;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.BotCommandsMenuView;
import org.telegram.p043ui.Components.ChatActivityEnterView;
import org.telegram.p043ui.Components.ChatActivityEnterViewAnimatedIconView;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.Premium.GiftPremiumBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SeekBar;
import org.telegram.p043ui.Components.SenderSelectPopup;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.StickersAlert;
import org.telegram.p043ui.Components.VideoTimelineView;
import org.telegram.p043ui.ContentPreviewViewer;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.GroupStickersActivity;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.StickersActivity;
import org.telegram.p043ui.Stories.PeerStoriesView;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLRPC$BotInfo;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$BotMenuButton;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$InlineQueryPeerType;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$StickerSet;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
import org.telegram.tgnet.TLRPC$TL_botMenuButton;
import org.telegram.tgnet.TLRPC$TL_channels_sendAsPeers;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_inlineQueryPeerTypeBotPM;
import org.telegram.tgnet.TLRPC$TL_inlineQueryPeerTypeBroadcast;
import org.telegram.tgnet.TLRPC$TL_inlineQueryPeerTypeChat;
import org.telegram.tgnet.TLRPC$TL_inlineQueryPeerTypeMegagroup;
import org.telegram.tgnet.TLRPC$TL_inlineQueryPeerTypePM;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetID;
import org.telegram.tgnet.TLRPC$TL_keyboardButton;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonBuy;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonCallback;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonGame;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRequestGeoLocation;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRequestPeer;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRequestPhone;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRequestPoll;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonSimpleWebView;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonSwitchInline;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUpdateApp;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUrl;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUrlAuth;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUserProfile;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonWebView;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaEmpty;
import org.telegram.tgnet.TLRPC$TL_messageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_messages_sendBotRequestedPeer;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_replyKeyboardMarkup;
import org.telegram.tgnet.TLRPC$TL_userStatusEmpty;
import org.telegram.tgnet.TLRPC$TL_userStatusOnline;
import org.telegram.tgnet.TLRPC$TL_userStatusRecently;
import org.telegram.tgnet.TLRPC$TL_webPagePending;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$UserStatus;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Components.ChatActivityEnterView */
/* loaded from: classes6.dex */
public class ChatActivityEnterView extends BlurredFrameLayout implements NotificationCenter.NotificationCenterDelegate, SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate, StickersAlert.StickersAlertDelegate {
    private final Property<? super View, Float> ATTACH_LAYOUT_ALPHA;
    private final Property<? super View, Float> ATTACH_LAYOUT_TRANSLATION_X;
    private final Property<? super View, Float> EMOJI_BUTTON_ALPHA;
    private final Property<? super View, Float> EMOJI_BUTTON_SCALE;
    private final Property<? super View, Float> MESSAGE_TEXT_TRANSLATION_X;
    private AccountInstance accountInstance;
    private AdjustPanLayoutHelper adjustPanLayoutHelper;
    private boolean allowAnimatedEmoji;
    public boolean allowBlur;
    private boolean allowGifs;
    private boolean allowShowTopView;
    private boolean allowStickers;
    protected int animatedTop;
    private int animatingContentType;
    private Runnable animationEndRunnable;
    private HashMap<View, Float> animationParamsX;
    private ImageView attachButton;
    private LinearLayout attachLayout;
    private float attachLayoutAlpha;
    private float attachLayoutPaddingAlpha;
    private float attachLayoutPaddingTranslationX;
    private float attachLayoutTranslationX;
    private TLRPC$TL_document audioToSend;
    private MessageObject audioToSendMessageObject;
    private String audioToSendPath;
    private FrameLayout audioVideoButtonContainer;
    private ChatActivityEnterViewAnimatedIconView audioVideoSendButton;
    Paint backgroundPaint;
    private ImageView botButton;
    private ReplaceableIconDrawable botButtonDrawable;
    private MessageObject botButtonsMessageObject;
    int botCommandLastPosition;
    int botCommandLastTop;
    private BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter;
    private BotCommandsMenuView botCommandsMenuButton;
    public BotCommandsMenuContainer botCommandsMenuContainer;
    private int botCount;
    private BotKeyboardView botKeyboardView;
    private boolean botKeyboardViewVisible;
    private BotMenuButtonType botMenuButtonType;
    private String botMenuWebViewTitle;
    private String botMenuWebViewUrl;
    private MessageObject botMessageObject;
    private TLRPC$TL_replyKeyboardMarkup botReplyMarkup;
    private ChatActivityBotWebViewButton botWebViewButton;
    private BotWebViewMenuContainer botWebViewMenuContainer;
    private boolean calledRecordRunnable;
    private Drawable cameraDrawable;
    private Drawable cameraOutline;
    private boolean canWriteToChannel;
    private ImageView cancelBotButton;
    private boolean captionLimitBulletinShown;
    private NumberTextView captionLimitView;
    private float chatSearchExpandOffset;
    private boolean clearBotButtonsOnKeyboardOpen;
    private boolean closeAnimationInProgress;
    private int codePointCount;
    private float combineMessagesAnimationScale;
    private CombinedDrawable combineMessagesDrawable;
    private int commonInputType;
    private float composeShadowAlpha;
    private int currentAccount;
    private int currentLimit;
    private int currentPopupContentType;
    public ValueAnimator currentTopViewAnimation;
    private ChatActivityEnterViewDelegate delegate;
    private boolean destroyed;
    private long dialog_id;
    private float distCanMove;
    private AnimatorSet doneButtonAnimation;
    private ValueAnimator doneButtonColorAnimator;
    private FrameLayout doneButtonContainer;
    boolean doneButtonEnabled;
    private float doneButtonEnabledProgress;
    private ImageView doneButtonImage;
    private ContextProgressView doneButtonProgress;
    private Drawable doneCheckDrawable;
    private Paint dotPaint;
    private CharSequence draftMessage;
    private boolean draftSearchWebpage;
    private boolean editingCaption;
    private MessageObject editingMessageObject;
    private ChatActivityEnterViewAnimatedIconView emojiButton;
    float emojiButtonAlpha;
    float emojiButtonPaddingAlpha;
    float emojiButtonPaddingScale;
    private boolean emojiButtonRestricted;
    float emojiButtonScale;
    private int emojiPadding;
    private boolean emojiTabOpen;
    private EmojiView emojiView;
    private boolean emojiViewFrozen;
    private boolean emojiViewVisible;
    private ImageView expandStickersButton;
    private Runnable focusRunnable;
    private boolean forceShowSendButton;
    private FrameLayout formattingButton;
    private ImageView formattingIcon;
    private FormattingMessagesKeyboardContainer formattingMessagesKeyboardContainer;
    private FormattingMessagesWeb formattingMessagesWeb;
    private ImageView giftButton;
    private boolean hasBotCommands;
    private boolean hasRecordVideo;
    private Runnable hideKeyboardRunnable;
    private float horizontalPadding;
    private boolean ignoreTextChange;
    private Drawable inactinveSendButtonDrawable;
    private TLRPC$ChatFull info;
    private int initialSenderSelectViewLeftMargin;
    private int innerTextChange;
    private final boolean isChat;
    private boolean isCombineMessagesInAnimation;
    private boolean isFormattingMessagesContainerVisible;
    private boolean isFormattingMessagesContainerWebVisible;
    private boolean isInVideoMode;
    private boolean isInitLineCount;
    private boolean isPaste;
    private boolean isPaused;
    private int keyboardHeight;
    private int keyboardHeightLand;
    private boolean keyboardVisible;
    private LongSparseArray<TLRPC$BotInfo> lastBotInfo;
    private long lastCombineMessagesAnimationTime;
    private int lastSizeChangeValue1;
    private boolean lastSizeChangeValue2;
    private long lastTypingTimeSend;
    private int lineCount;
    private int[] location;
    private Drawable lockShadowDrawable;
    private MediaEditManager mediaEditManager;
    private View.AccessibilityDelegate mediaMessageButtonsDelegate;
    protected EditTextCaption messageEditText;
    protected FrameLayout messageEditTextContainer;
    private boolean messageEditTextEnabled;
    private ArrayList<TextWatcher> messageEditTextWatchers;
    private float messageTextPaddingTranslationX;
    private float messageTextTranslationX;
    boolean messageTransitionIsRunning;
    private TLRPC$WebPage messageWebPage;
    private boolean messageWebPageSearch;
    private Drawable micDrawable;
    private Drawable micOutline;
    private Runnable moveToSendStateRunnable;
    private boolean needCombineMessages;
    private boolean needShowTopView;
    private AnimationNotificationsLocker notificationsLocker;
    private ImageView notifyButton;
    private CrossOutDrawable notifySilentDrawable;
    private Runnable onEmojiSearchClosed;
    private Runnable onFinishInitCameraRunnable;
    private Runnable onKeyboardClosed;
    private Runnable openKeyboardRunnable;
    private int originalViewHeight;
    private CharSequence overrideHint;
    private CharSequence overrideHint2;
    private boolean overrideKeyboardAnimation;
    private Paint paint;
    private AnimatorSet panelAnimation;
    private Activity parentActivity;
    private ChatActivity parentFragment;
    private RectF pauseRect;
    private TLRPC$KeyboardButton pendingLocationButton;
    private MessageObject pendingMessageObject;
    private MediaActionDrawable playPauseDrawable;
    private int popupX;
    private int popupY;
    public boolean preventInput;
    private CloseProgressDrawable2 progressDrawable;
    private ImageView reactionsButton;
    private Runnable recordAudioVideoRunnable;
    private boolean recordAudioVideoRunnableStarted;
    private RecordCircle recordCircle;
    private Property<RecordCircle, Float> recordCircleScale;
    private RLottieImageView recordDeleteImageView;
    private RecordDot recordDot;
    private int recordInterfaceState;
    private boolean recordIsCanceled;
    private FrameLayout recordPanel;
    private AnimatorSet recordPannelAnimation;
    private LinearLayout recordTimeContainer;
    private TimerView recordTimerView;
    private View recordedAudioBackground;
    protected FrameLayout recordedAudioPanel;
    private ImageView recordedAudioPlayButton;
    private SeekBarWaveformView recordedAudioSeekBar;
    private TextView recordedAudioTimeTextView;
    private boolean recordingAudioVideo;
    public int recordingGuid;
    private Rect rect;
    private Paint redDotPaint;
    private boolean removeEmojiViewAfterAnimation;
    private MessageObject replyingMessageObject;
    private ChatActivity.ReplyQuote replyingQuote;
    private final Theme.ResourcesProvider resourcesProvider;
    private Property<View, Integer> roundedTranslationYProperty;
    private Runnable runEmojiPanelAnimation;
    private AnimatorSet runningAnimation;
    private AnimatorSet runningAnimation2;
    private AnimatorSet runningAnimationAudio;
    private int runningAnimationType;
    private boolean scheduleButtonHidden;
    private ImageView scheduledButton;
    private AnimatorSet scheduledButtonAnimation;
    private ValueAnimator searchAnimator;
    private float searchToOpenProgress;
    private int searchingType;
    private SeekBarWaveform seekBarWaveform;
    private View sendButton;
    private int sendButtonBackgroundColor;
    private FrameLayout sendButtonContainer;
    private Drawable sendButtonDrawable;
    private boolean sendButtonEnabled;
    private Drawable sendButtonInverseDrawable;
    private boolean sendByEnter;
    private Drawable sendDrawable;
    private boolean sendPlainEnabled;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout sendPopupLayout;
    private ActionBarPopupWindow sendPopupWindow;
    private Rect sendRect;
    private boolean sendRoundEnabled;
    private boolean sendVoiceEnabled;
    private ActionBarMenuSubItem sendWhenOnlineButton;
    private SenderSelectPopup senderSelectPopupWindow;
    private SenderSelectView senderSelectView;
    private Runnable setTextFieldRunnable;
    protected boolean shouldAnimateEditTextWithBounds;
    public boolean shouldDrawBackground;
    public boolean shouldDrawRecordedAudioPanelInParent;
    private boolean showFormattingButton;
    private boolean showForwardSettingsButton;
    private boolean showKeyboardOnResume;
    private Runnable showTopViewRunnable;
    private boolean showTranslateButton;
    private boolean silent;
    private SizeNotifierFrameLayout sizeNotifierLayout;
    private SlideTextView slideText;
    private SimpleTextView slowModeButton;
    private int slowModeTimer;
    private boolean smoothKeyboard;
    private float startedDraggingX;
    private AnimatedArrowDrawable stickersArrow;
    private boolean stickersDragging;
    private boolean stickersEnabled;
    private boolean stickersExpanded;
    private int stickersExpandedHeight;
    private Animator stickersExpansionAnim;
    private float stickersExpansionProgress;
    private boolean stickersTabOpen;
    private BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate;
    private FrameLayout textFieldContainer;
    boolean textTransitionIsRunning;
    protected View topLineView;
    protected View topView;
    protected float topViewEnterProgress;
    protected boolean topViewShowed;
    private final ValueAnimator.AnimatorUpdateListener topViewUpdateListener;
    private FrameLayout translateButton;
    private TrendingStickersAlert trendingStickersAlert;
    private final Runnable updateCombineMessagesRunnable;
    private Runnable updateExpandabilityRunnable;
    private Runnable updateSlowModeRunnable;
    private TLRPC$UserFull userInfo;
    private ItemOptions videoMessageCameraOptions;
    private VideoTimelineView videoTimelineView;
    private VideoEditedInfo videoToSendMessageObject;
    private boolean waitingForKeyboardOpen;
    private boolean waitingForKeyboardOpenAfterAnimation;
    private PowerManager.WakeLock wakeLock;
    private boolean wasSendTyping;

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$BotMenuButtonType */
    /* loaded from: classes6.dex */
    public enum BotMenuButtonType {
        TEMPLATES,
        NO_BUTTON,
        COMMANDS,
        WEB_VIEW
    }

    public static /* synthetic */ boolean lambda$createRecordPanel$55(View view, MotionEvent motionEvent) {
        return true;
    }

    public void checkAnimation() {
    }

    public void extendActionMode(Menu menu) {
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void isRecordingStateChanged() {
    }

    protected void onLineCountChanged(int i, int i2) {
    }

    protected boolean pannelAnimationEnabled() {
        return true;
    }

    protected boolean showConfirmAlert(Runnable runnable) {
        return false;
    }

    static /* synthetic */ float access$9616(ChatActivityEnterView chatActivityEnterView, float f) {
        float f2 = chatActivityEnterView.combineMessagesAnimationScale + f;
        chatActivityEnterView.combineMessagesAnimationScale = f2;
        return f2;
    }

    static /* synthetic */ float access$9624(ChatActivityEnterView chatActivityEnterView, float f) {
        float f2 = chatActivityEnterView.combineMessagesAnimationScale - f;
        chatActivityEnterView.combineMessagesAnimationScale = f2;
        return f2;
    }

    public void setReplyingMessageObject(MessageObject messageObject, ChatActivity.ReplyQuote replyQuote) {
        setReplyingMessageObject(messageObject, replyQuote, null);
    }

    public void setTemplatesDelegate(BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate templatesDelegate) {
        this.templatesDelegate = templatesDelegate;
    }

    public void setFormattingMessagesWeb(FormattingMessagesWeb formattingMessagesWeb) {
        this.formattingMessagesWeb = formattingMessagesWeb;
    }

    public int[] getLocationVideoMessagePopup() {
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
        if (chatActivityEnterViewAnimatedIconView == null) {
            return null;
        }
        int[] iArr = new int[2];
        chatActivityEnterViewAnimatedIconView.getLocationInWindow(iArr);
        if (this.keyboardVisible) {
            int measuredHeight = getMeasuredHeight();
            View view = this.topView;
            if (measuredHeight > AndroidUtilities.m104dp((view == null || view.getVisibility() != 0) ? 58 : 106)) {
                iArr[1] = iArr[1] + this.audioVideoSendButton.getMeasuredHeight();
                return iArr;
            }
        }
        iArr[1] = iArr[1] - AndroidUtilities.m104dp(2);
        return iArr;
    }

    public void setFormattingMessagesContainerWebVisible(boolean z) {
        this.isFormattingMessagesContainerWebVisible = z;
    }

    public boolean getFormattingMessagesContainerWebVisible() {
        return this.isFormattingMessagesContainerWebVisible;
    }

    public void setShowFormattingButton(boolean z) {
        if (this.showFormattingButton == z) {
            return;
        }
        this.showFormattingButton = z;
        this.emojiButton.setVisibility(z ? 8 : 0);
        this.formattingButton.setVisibility(this.showFormattingButton ? 0 : 8);
    }

    public void setShowTranslateButton(boolean z) {
        if (this.showTranslateButton == z) {
            return;
        }
        this.showTranslateButton = z;
        this.translateButton.setVisibility(z ? this.sendButton.getVisibility() : 8);
        this.translateButton.setScaleX(this.showTranslateButton ? this.sendButton.getScaleX() : 1.0f);
        this.translateButton.setScaleY(this.showTranslateButton ? this.sendButton.getScaleY() : 1.0f);
        updateFieldRight(1);
    }

    public void setShowForwardSettingsButton(boolean z) {
        if (this.showForwardSettingsButton == z) {
            return;
        }
        this.showForwardSettingsButton = z;
        updateFieldRight(100);
    }

    public void updateTemplatesButton() {
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView == null || this.botMenuButtonType != BotMenuButtonType.TEMPLATES) {
            return;
        }
        if (!this.forceShowSendButton && SharedConfig.selectedTemplatesMode == TemplatesMode.OVAL && botCommandsMenuView.expanded) {
            AndroidUtilities.updateViewVisibilityAnimated(botCommandsMenuView, true, 1.0f, true);
            return;
        }
        AndroidUtilities.updateViewVisibilityAnimated(botCommandsMenuView, false, 1.0f, true);
        hideBotCommands();
    }

    public void updateCombineMessages() {
        View view;
        EditTextCaption editTextCaption;
        ChatActivity chatActivity = this.parentFragment;
        int combineMessagesTimeLeft = chatActivity != null ? chatActivity.getCombineMessagesTimeLeft(false) : 0;
        if (combineMessagesTimeLeft != 0 && ((view = this.sendButton) == null || view.getVisibility() != 0 || this.forceShowSendButton || this.editingMessageObject != null || ((this.replyingMessageObject != null && !this.parentFragment.isTopic) || (editTextCaption = this.messageEditText) == null || editTextCaption.getText().length() == 0 || MediaDataController.getInstance(this.currentAccount).isAnimatedEmoji(this.messageEditText.getText())))) {
            combineMessagesTimeLeft = 0;
        }
        boolean z = combineMessagesTimeLeft != 0;
        if (z) {
            AndroidUtilities.cancelRunOnUIThread(this.updateCombineMessagesRunnable);
            AndroidUtilities.runOnUIThread(this.updateCombineMessagesRunnable, TimeUnit.SECONDS.toMillis(combineMessagesTimeLeft));
        }
        if (this.needCombineMessages != z) {
            this.isCombineMessagesInAnimation = true;
            this.needCombineMessages = z;
            this.lastCombineMessagesAnimationTime = SystemClock.elapsedRealtime();
            View view2 = this.sendButton;
            if (view2 != null) {
                view2.invalidate();
            }
        }
    }

    public ChatActivityEnterViewDelegate getDelegate() {
        return this.delegate;
    }

    @Override // org.telegram.p043ui.Components.StickersAlert.StickersAlertDelegate
    public void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
        if (this.mediaEditManager == null) {
            this.mediaEditManager = new MediaEditManager(this.parentFragment, this.currentAccount, this.delegate);
        }
        this.mediaEditManager.editAnimatedSticker(tLRPC$Document, rLottieDrawable, z);
    }

    @Override // org.telegram.p043ui.Components.StickersAlert.StickersAlertDelegate
    public void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
        if (this.mediaEditManager == null) {
            this.mediaEditManager = new MediaEditManager(this.parentFragment, this.currentAccount, this.delegate);
        }
        this.mediaEditManager.editMedia(tLRPC$Document, z);
    }

    @Override // org.telegram.p043ui.Components.StickersAlert.StickersAlertDelegate
    public void setKiklikoAvatar(String str) {
        if (this.mediaEditManager == null) {
            this.mediaEditManager = new MediaEditManager(this.parentFragment, this.currentAccount, null);
        }
        this.mediaEditManager.setKiklikoAvatar(str);
    }

    private void sendMessageInternal(boolean z, int i, boolean z2) {
        sendMessageInternal(z, i, z2, null, true);
    }

    public void showChooseCameraPopup() {
        FrameLayout containerView;
        boolean hasCamera = CameraController.getInstance().hasCamera(VideoVoiceCamera.FRONT);
        boolean hasCamera2 = CameraController.getInstance().hasCamera(VideoVoiceCamera.BACK);
        if (!hasCamera || !hasCamera2) {
            showCamera(hasCamera2);
            return;
        }
        performHapticFeedback(3);
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            this.videoMessageCameraOptions = ItemOptions.makeOptions(chatActivity, this.audioVideoButtonContainer);
        } else {
            SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
            if (sizeNotifierFrameLayout instanceof PeerStoriesView) {
                StoryViewer storyViewer = ((PeerStoriesView) sizeNotifierFrameLayout).getStoryViewer();
                if (storyViewer == null || (containerView = storyViewer.getContainerView()) == null) {
                    return;
                }
                this.videoMessageCameraOptions = ItemOptions.makeOptions(containerView, storyViewer.getResourceProvider(), this.audioVideoButtonContainer);
            } else {
                this.videoMessageCameraOptions = ItemOptions.makeOptions(sizeNotifierFrameLayout, this.audioVideoButtonContainer);
            }
        }
        this.videoMessageCameraOptions.setScrimViewBackground(Theme.createCircleDrawable(AndroidUtilities.m104dp(42), this.backgroundColor)).add(C3632R.C3634drawable.fork_ic_front_camera_24, LocaleController.getInternalString(C3632R.string.frontal_camera_popup_text), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$showChooseCameraPopup$1();
            }
        }).add(C3632R.C3634drawable.fork_ic_back_camera_24, LocaleController.getInternalString(C3632R.string.main_camera_popup_text), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$showChooseCameraPopup$3();
            }
        }).translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(5)).show();
    }

    public /* synthetic */ void lambda$showChooseCameraPopup$0() {
        showCamera(false);
    }

    public /* synthetic */ void lambda$showChooseCameraPopup$1() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$showChooseCameraPopup$0();
            }
        }, 150L);
    }

    public /* synthetic */ void lambda$showChooseCameraPopup$2() {
        showCamera(true);
    }

    public /* synthetic */ void lambda$showChooseCameraPopup$3() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$showChooseCameraPopup$2();
            }
        }, 150L);
    }

    private void showCamera(boolean z) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.needStartRecordVideo(0, true, 0, z);
        }
        if (this.recordingAudioVideo) {
            return;
        }
        this.recordingAudioVideo = true;
        updateRecordInterface(0);
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.showWaves(false, false);
        }
        this.recordTimerView.reset();
    }

    public void updateFormattingButton() {
        if (this.formattingButton == null) {
            return;
        }
        if (this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_WEB) {
            if (this.showFormattingButton) {
                setShowFormattingButton(false);
                return;
            }
            this.formattingIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.SRC_IN));
            this.formattingIcon.setImageResource(C3632R.C3634drawable.fork_formatting_messages);
        } else if (isPopupShowing() && this.currentPopupContentType == 2) {
            this.formattingIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
            this.formattingIcon.setImageResource(C3632R.C3634drawable.input_keyboard);
        } else {
            this.formattingIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.SRC_IN));
            this.formattingIcon.setImageResource(C3632R.C3634drawable.fork_formatting_messages);
        }
    }

    private void createFormattingMessagesContainer() {
        if (this.formattingMessagesKeyboardContainer != null) {
            return;
        }
        this.formattingMessagesKeyboardContainer = new FormattingMessagesKeyboardContainer(getContext(), this.messageEditText, this.accountInstance.getFormattingTextController(), new FormattingMessagesKeyboardContainer.Listener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.1
            {
                ChatActivityEnterView.this = this;
            }

            @Override // com.iMe.p030ui.formatting_messages.FormattingMessagesKeyboardContainer.Listener
            public void onSearchOpenClose(String str) {
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                chatActivityEnterView.messageEditText.makeSelectedUrl(str, chatActivityEnterView.accountInstance.getFormattingTextController());
            }

            @Override // com.iMe.p030ui.formatting_messages.FormattingMessagesKeyboardContainer.Listener
            public void onTranslationYChanged(float f) {
                if (ChatActivityEnterView.this.panelAnimation == null || ChatActivityEnterView.this.animatingContentType != 2) {
                    return;
                }
                ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(f);
            }
        });
        this.accountInstance.getFormattingTextController().setFormattingMessagesContainer(this.formattingMessagesKeyboardContainer);
        this.formattingMessagesKeyboardContainer.setVisibility(8);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
        sizeNotifierFrameLayout.addView(this.formattingMessagesKeyboardContainer, sizeNotifierFrameLayout.getChildCount() - 1);
    }

    private void openTranslateDialog() {
        ChatActivity chatActivity;
        if (this.messageEditText == null || (chatActivity = this.parentFragment) == null || chatActivity.getParentActivity() == null) {
            return;
        }
        ChatActivity chatActivity2 = this.parentFragment;
        chatActivity2.showDialog(chatActivity2.createTranslateOutgoingDialog(this.messageEditText.getText().toString(), new Callbacks$Callback1() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda39
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ChatActivityEnterView.this.lambda$openTranslateDialog$4((String) obj);
            }
        }));
    }

    public /* synthetic */ void lambda$openTranslateDialog$4(String str) {
        this.messageEditText.setText(str);
        this.messageEditText.setSelection(str.length());
    }

    public boolean isTemplatesChannel(boolean z, boolean z2) {
        ChatActivity chatActivity = this.parentFragment;
        return chatActivity != null && chatActivity.isTemplatesChannel(z, z2);
    }

    public void drawRecordedPannel(Canvas canvas) {
        FrameLayout frameLayout;
        if (getAlpha() == BitmapDescriptorFactory.HUE_RED || (frameLayout = this.recordedAudioPanel) == null || frameLayout.getParent() == null || this.recordedAudioPanel.getVisibility() != 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getX() + this.textFieldContainer.getX() + this.messageEditTextContainer.getX() + this.recordedAudioPanel.getX(), getY() + this.textFieldContainer.getY() + this.messageEditTextContainer.getY() + this.recordedAudioPanel.getY());
        if (getAlpha() != 1.0f) {
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), (int) (getAlpha() * 255.0f), 31);
        }
        this.recordedAudioPanel.draw(canvas);
        canvas.restoreToCount(save);
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEnterViewDelegate */
    /* loaded from: classes6.dex */
    public interface ChatActivityEnterViewDelegate {
        void bottomPanelTranslationYChanged(float f);

        void didPressAttachButton();

        int getContentViewHeight();

        ChatActivity.ReplyQuote getReplyQuote();

        TL_stories$StoryItem getReplyToStory();

        TLRPC$TL_channels_sendAsPeers getSendAsPeers();

        boolean hasForwardingMessages();

        boolean hasScheduledMessages();

        int measureKeyboardHeight();

        void needChangeVideoPreviewState(int i, float f);

        void needSendTyping();

        void needShowMediaBanHint();

        void needStartRecordAudio(int i);

        void needStartRecordVideo(int i, boolean z, int i2);

        void needStartRecordVideo(int i, boolean z, int i2, boolean z2);

        void onAttachButtonHidden();

        void onAttachButtonShow();

        void onAudioVideoInterfaceUpdated();

        void onContextMenuClose();

        void onContextMenuOpen();

        void onEditTextScroll();

        void onKeyboardRequested();

        void onMessageEditEnd(boolean z);

        void onMessageSend(CharSequence charSequence, boolean z, int i, String str);

        void onPreAudioVideoRecord();

        void onSendLongClick();

        void onStickersExpandedChange();

        void onStickersTab(boolean z);

        void onSwitchRecordMode(boolean z);

        void onTextChanged(CharSequence charSequence, boolean z, boolean z2);

        void onTextSelectionChanged(int i, int i2);

        void onTextSpansChanged(CharSequence charSequence);

        void onTopViewFullyShown();

        void onTrendingStickersShowed(boolean z);

        void onUpdateSlowModeButton(View view, boolean z, CharSequence charSequence);

        void onWindowSizeChanged(int i);

        void openReaction();

        void openScheduledMessages();

        void prepareMessageSending();

        void scrollToSendingMessage();

        void sendEditedSticker(SendMessagesHelper.SendingMediaInfo sendingMediaInfo, boolean z, int i, String str);

        void sendMedia(MediaController.PhotoEntry photoEntry, VideoEditedInfo videoEditedInfo, boolean z, int i, boolean z2, String str);

        /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$bottomPanelTranslationYChanged(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, float f) {
            }

            public static int $default$getContentViewHeight(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return 0;
            }

            public static ChatActivity.ReplyQuote $default$getReplyQuote(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return null;
            }

            public static TL_stories$StoryItem $default$getReplyToStory(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return null;
            }

            public static TLRPC$TL_channels_sendAsPeers $default$getSendAsPeers(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return null;
            }

            public static boolean $default$hasForwardingMessages(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return false;
            }

            public static boolean $default$hasScheduledMessages(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return true;
            }

            public static int $default$measureKeyboardHeight(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
                return 0;
            }

            public static void $default$onContextMenuClose(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onContextMenuOpen(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onEditTextScroll(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onKeyboardRequested(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onTopViewFullyShown(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$onTrendingStickersShowed(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, boolean z) {
            }

            public static void $default$openReaction(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$openScheduledMessages(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$prepareMessageSending(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$scrollToSendingMessage(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
            }

            public static void $default$sendEditedSticker(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, SendMessagesHelper.SendingMediaInfo sendingMediaInfo, boolean z, int i, String str) {
            }

            public static void $default$sendMedia(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, MediaController.PhotoEntry photoEntry, VideoEditedInfo videoEditedInfo, boolean z, int i, boolean z2, String str) {
            }

            public static void $default$needStartRecordVideo(ChatActivityEnterViewDelegate _this, int i, boolean z, int i2) {
                _this.needStartRecordVideo(i, z, i2, false);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$SeekBarWaveformView */
    /* loaded from: classes6.dex */
    public class SeekBarWaveformView extends View {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SeekBarWaveformView(Context context) {
            super(context);
            ChatActivityEnterView.this = r2;
            r2.seekBarWaveform = new SeekBarWaveform(context);
            r2.seekBarWaveform.setDelegate(new SeekBar.SeekBarDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$SeekBarWaveformView$$ExternalSyntheticLambda0
                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarContinuousDrag(float f) {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarContinuousDrag(this, f);
                }

                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public final void onSeekBarDrag(float f) {
                    ChatActivityEnterView.SeekBarWaveformView.this.lambda$new$0(f);
                }

                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarPressed() {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarPressed(this);
                }

                @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
                public /* synthetic */ void onSeekBarReleased() {
                    SeekBar.SeekBarDelegate.CC.$default$onSeekBarReleased(this);
                }
            });
        }

        public /* synthetic */ void lambda$new$0(float f) {
            if (ChatActivityEnterView.this.audioToSendMessageObject != null) {
                ChatActivityEnterView.this.audioToSendMessageObject.audioProgress = f;
                MediaController.getInstance().seekToProgress(ChatActivityEnterView.this.audioToSendMessageObject, f);
            }
        }

        public void setWaveform(byte[] bArr) {
            ChatActivityEnterView.this.seekBarWaveform.setWaveform(bArr);
            invalidate();
        }

        public void setProgress(float f) {
            ChatActivityEnterView.this.seekBarWaveform.setProgress(f);
            invalidate();
        }

        public boolean isDragging() {
            return ChatActivityEnterView.this.seekBarWaveform.isDragging();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean onTouch = ChatActivityEnterView.this.seekBarWaveform.onTouch(motionEvent.getAction(), motionEvent.getX(), motionEvent.getY());
            if (onTouch) {
                if (motionEvent.getAction() == 0) {
                    ChatActivityEnterView.this.requestDisallowInterceptTouchEvent(true);
                }
                invalidate();
            }
            return onTouch || super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ChatActivityEnterView.this.seekBarWaveform.setSize((int) ((i3 - i) - (ChatActivityEnterView.this.horizontalPadding * 2.0f)), i4 - i2);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            SeekBarWaveform seekBarWaveform = ChatActivityEnterView.this.seekBarWaveform;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_recordedVoiceProgress;
            seekBarWaveform.setColors(chatActivityEnterView.getThemedColor(i), ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordedVoiceProgressInner), ChatActivityEnterView.this.getThemedColor(i));
            ChatActivityEnterView.this.seekBarWaveform.draw(canvas, this);
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$RecordDot */
    /* loaded from: classes6.dex */
    public class RecordDot extends View {
        private float alpha;
        boolean attachedToWindow;
        RLottieDrawable drawable;
        private boolean enterAnimation;
        private boolean isIncr;
        private long lastUpdateTime;
        boolean playing;

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attachedToWindow = true;
            if (this.playing) {
                this.drawable.start();
            }
            this.drawable.setMasterParent(this);
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attachedToWindow = false;
            this.drawable.stop();
            this.drawable.setMasterParent(null);
            if (ChatActivityEnterView.this.videoMessageCameraOptions != null) {
                ChatActivityEnterView.this.videoMessageCameraOptions.dismiss();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecordDot(Context context) {
            super(context);
            ChatActivityEnterView.this = r8;
            int i = C3632R.raw.chat_audio_record_delete;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m104dp(28), AndroidUtilities.m104dp(28), false, null);
            this.drawable = rLottieDrawable;
            rLottieDrawable.setCurrentParentView(this);
            this.drawable.setInvalidateOnProgressSet(true);
            updateColors();
        }

        public void updateColors() {
            int themedColor = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordedVoiceDot);
            int blendARGB = ColorUtils.blendARGB(themedColor, ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelBackground), 0.5f);
            ChatActivityEnterView.this.redDotPaint.setColor(themedColor);
            this.drawable.beginApplyLayerColors();
            this.drawable.setLayerColor("Cup Red.**", themedColor);
            this.drawable.setLayerColor("Box.**", themedColor);
            this.drawable.setLayerColor("Line 1.**", blendARGB);
            this.drawable.setLayerColor("Line 2.**", blendARGB);
            this.drawable.setLayerColor("Line 3.**", blendARGB);
            this.drawable.commitApplyLayerColors();
            if (ChatActivityEnterView.this.playPauseDrawable != null) {
                ChatActivityEnterView.this.playPauseDrawable.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordedVoicePlayPause));
            }
        }

        public void resetAlpha() {
            this.alpha = 1.0f;
            this.lastUpdateTime = System.currentTimeMillis();
            this.isIncr = false;
            this.playing = false;
            this.drawable.stop();
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.playing) {
                this.drawable.setAlpha((int) (this.alpha * 255.0f));
            }
            ChatActivityEnterView.this.redDotPaint.setAlpha((int) (this.alpha * 255.0f));
            long currentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
            if (this.enterAnimation) {
                this.alpha = 1.0f;
            } else if (!this.isIncr && !this.playing) {
                float f = this.alpha - (((float) currentTimeMillis) / 600.0f);
                this.alpha = f;
                if (f <= BitmapDescriptorFactory.HUE_RED) {
                    this.alpha = BitmapDescriptorFactory.HUE_RED;
                    this.isIncr = true;
                }
            } else {
                float f2 = this.alpha + (((float) currentTimeMillis) / 600.0f);
                this.alpha = f2;
                if (f2 >= 1.0f) {
                    this.alpha = 1.0f;
                    this.isIncr = false;
                }
            }
            this.lastUpdateTime = System.currentTimeMillis();
            if (this.playing) {
                this.drawable.draw(canvas);
            }
            if (!this.playing || !this.drawable.hasBitmap()) {
                canvas.drawCircle(getMeasuredWidth() >> 1, getMeasuredHeight() >> 1, AndroidUtilities.m104dp(5), ChatActivityEnterView.this.redDotPaint);
            }
            invalidate();
        }

        public void playDeleteAnimation() {
            this.playing = true;
            this.drawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            if (this.attachedToWindow) {
                this.drawable.start();
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$RecordCircle */
    /* loaded from: classes6.dex */
    public class RecordCircle extends View {
        private float amplitude;
        private float animateAmplitudeDiff;
        private float animateToAmplitude;
        BlobDrawable bigWaveDrawable;
        private boolean canceledByGesture;
        private float circleRadius;
        private float circleRadiusAmplitude;
        public float drawingCircleRadius;
        public float drawingCx;
        public float drawingCy;
        private float exitTransition;
        float idleProgress;
        boolean incIdle;
        private float lastMovingX;
        private float lastMovingY;
        private int lastSize;
        private long lastUpdateTime;
        private float lockAnimatedTranslation;
        Paint lockBackgroundPaint;
        Paint lockOutlinePaint;
        Paint lockPaint;

        /* renamed from: p */
        private Paint f1821p;
        private int paintAlpha;
        Path path;
        private boolean pressed;
        private float progressToSeekbarStep3;
        private float progressToSendButton;
        RectF rectF;
        private float scale;
        private boolean sendButtonVisible;
        private boolean showTooltip;
        private long showTooltipStartTime;
        private boolean showWaves;
        public boolean skipDraw;
        private int slideDelta;
        private float slideToCancelLockProgress;
        private float slideToCancelProgress;
        private float snapAnimationProgress;
        private float startTranslation;
        BlobDrawable tinyWaveDrawable;
        private float tooltipAlpha;
        private Drawable tooltipBackground;
        private Drawable tooltipBackgroundArrow;
        private StaticLayout tooltipLayout;
        private String tooltipMessage;
        private TextPaint tooltipPaint;
        private float tooltipWidth;
        private float touchSlop;
        private float transformToSeekbar;
        private VirtualViewHelper virtualViewHelper;
        public boolean voiceEnterTransitionInProgress;
        private float wavesEnterAnimation;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RecordCircle(Context context) {
            super(context);
            ChatActivityEnterView.this = r5;
            this.tinyWaveDrawable = new BlobDrawable(11, LiteMode.FLAGS_CHAT);
            this.bigWaveDrawable = new BlobDrawable(12, LiteMode.FLAGS_CHAT);
            this.tooltipPaint = new TextPaint(1);
            this.circleRadius = AndroidUtilities.dpf2(41.0f);
            this.circleRadiusAmplitude = AndroidUtilities.m104dp(30);
            this.lockBackgroundPaint = new Paint(1);
            this.lockPaint = new Paint(1);
            this.lockOutlinePaint = new Paint(1);
            this.rectF = new RectF();
            this.path = new Path();
            this.wavesEnterAnimation = BitmapDescriptorFactory.HUE_RED;
            this.showWaves = true;
            this.f1821p = new Paint(1);
            VirtualViewHelper virtualViewHelper = new VirtualViewHelper(this);
            this.virtualViewHelper = virtualViewHelper;
            ViewCompat.setAccessibilityDelegate(this, virtualViewHelper);
            this.tinyWaveDrawable.minRadius = AndroidUtilities.m104dp(47);
            this.tinyWaveDrawable.maxRadius = AndroidUtilities.m104dp(55);
            this.tinyWaveDrawable.generateBlob();
            this.bigWaveDrawable.minRadius = AndroidUtilities.m104dp(47);
            this.bigWaveDrawable.maxRadius = AndroidUtilities.m104dp(55);
            this.bigWaveDrawable.generateBlob();
            this.lockOutlinePaint.setStyle(Paint.Style.STROKE);
            this.lockOutlinePaint.setStrokeCap(Paint.Cap.ROUND);
            this.lockOutlinePaint.setStrokeWidth(AndroidUtilities.dpf2(1.7f));
            r5.lockShadowDrawable = getResources().getDrawable(C3632R.C3634drawable.lock_round_shadow);
            r5.lockShadowDrawable.setColorFilter(new PorterDuffColorFilter(r5.getThemedColor(Theme.key_chat_messagePanelVoiceLockShadow), PorterDuff.Mode.MULTIPLY));
            this.tooltipBackground = Theme.createRoundRectDrawable(AndroidUtilities.m104dp(5), r5.getThemedColor(Theme.key_chat_gifSaveHintBackground));
            this.tooltipPaint.setTextSize(AndroidUtilities.m104dp(14));
            this.tooltipBackgroundArrow = ContextCompat.getDrawable(context, C3632R.C3634drawable.tooltip_arrow);
            this.tooltipMessage = LocaleController.getString("SlideUpToLock", C3632R.string.SlideUpToLock);
            float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            this.touchSlop = scaledTouchSlop;
            this.touchSlop = scaledTouchSlop * scaledTouchSlop;
            updateColors();
        }

        private void checkDrawables() {
            if (ChatActivityEnterView.this.micDrawable != null) {
                return;
            }
            ChatActivityEnterView.this.micDrawable = getResources().getDrawable(C3632R.C3634drawable.input_mic_pressed).mutate();
            Drawable drawable = ChatActivityEnterView.this.micDrawable;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_messagePanelVoicePressed;
            drawable.setColorFilter(new PorterDuffColorFilter(chatActivityEnterView.getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            ChatActivityEnterView.this.cameraDrawable = getResources().getDrawable(C3632R.C3634drawable.input_video_pressed).mutate();
            ChatActivityEnterView.this.cameraDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            ChatActivityEnterView.this.sendDrawable = getResources().getDrawable(C3632R.C3634drawable.attach_send).mutate();
            ChatActivityEnterView.this.sendDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            ChatActivityEnterView.this.micOutline = getResources().getDrawable(C3632R.C3634drawable.input_mic).mutate();
            Drawable drawable2 = ChatActivityEnterView.this.micOutline;
            ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
            int i2 = Theme.key_chat_messagePanelIcons;
            drawable2.setColorFilter(new PorterDuffColorFilter(chatActivityEnterView2.getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            ChatActivityEnterView.this.cameraOutline = getResources().getDrawable(C3632R.C3634drawable.input_video).mutate();
            ChatActivityEnterView.this.cameraOutline.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
        }

        public void setAmplitude(double d) {
            this.bigWaveDrawable.setValue((float) (Math.min(1800.0d, d) / 1800.0d), true);
            this.tinyWaveDrawable.setValue((float) (Math.min(1800.0d, d) / 1800.0d), false);
            float min = (float) (Math.min(1800.0d, d) / 1800.0d);
            this.animateToAmplitude = min;
            this.animateAmplitudeDiff = (min - this.amplitude) / 375.0f;
            invalidate();
        }

        public float getScale() {
            return this.scale;
        }

        @Keep
        public void setScale(float f) {
            this.scale = f;
            invalidate();
        }

        @Keep
        public void setLockAnimatedTranslation(float f) {
            this.lockAnimatedTranslation = f;
            invalidate();
        }

        @Keep
        public void setSnapAnimationProgress(float f) {
            this.snapAnimationProgress = f;
            invalidate();
        }

        @Keep
        public float getLockAnimatedTranslation() {
            return this.lockAnimatedTranslation;
        }

        public boolean isSendButtonVisible() {
            return this.sendButtonVisible;
        }

        public void setSendButtonInvisible() {
            this.sendButtonVisible = false;
            invalidate();
        }

        public int setLockTranslation(float f) {
            if (f == 10000.0f) {
                this.sendButtonVisible = false;
                this.lockAnimatedTranslation = -1.0f;
                this.startTranslation = -1.0f;
                invalidate();
                this.snapAnimationProgress = BitmapDescriptorFactory.HUE_RED;
                this.transformToSeekbar = BitmapDescriptorFactory.HUE_RED;
                this.exitTransition = BitmapDescriptorFactory.HUE_RED;
                this.scale = BitmapDescriptorFactory.HUE_RED;
                this.tooltipAlpha = BitmapDescriptorFactory.HUE_RED;
                this.showTooltip = false;
                this.progressToSendButton = BitmapDescriptorFactory.HUE_RED;
                this.slideToCancelProgress = 1.0f;
                this.slideToCancelLockProgress = 1.0f;
                this.canceledByGesture = false;
                return 0;
            } else if (this.sendButtonVisible) {
                return 2;
            } else {
                if (this.lockAnimatedTranslation == -1.0f) {
                    this.startTranslation = f;
                }
                this.lockAnimatedTranslation = f;
                invalidate();
                if (this.canceledByGesture || this.slideToCancelProgress < 0.7f || this.startTranslation - this.lockAnimatedTranslation < AndroidUtilities.m104dp(57)) {
                    return 1;
                }
                this.sendButtonVisible = true;
                return 2;
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.sendButtonVisible) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (motionEvent.getAction() == 0) {
                    boolean contains = ChatActivityEnterView.this.pauseRect.contains(x, y);
                    this.pressed = contains;
                    return contains;
                } else if (this.pressed) {
                    if (motionEvent.getAction() == 1 && ChatActivityEnterView.this.pauseRect.contains(x, y)) {
                        if (ChatActivityEnterView.this.isInVideoMode()) {
                            ChatActivityEnterView.this.delegate.needStartRecordVideo(3, true, 0);
                        } else {
                            MediaController.getInstance().stopRecording(2, true, 0, null);
                            ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                        }
                        if (ChatActivityEnterView.this.slideText != null) {
                            ChatActivityEnterView.this.slideText.setEnabled(false);
                        }
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int m104dp = AndroidUtilities.m104dp(194);
            if (this.lastSize != size) {
                this.lastSize = size;
                StaticLayout staticLayout = new StaticLayout(this.tooltipMessage, this.tooltipPaint, AndroidUtilities.m104dp(220), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
                this.tooltipLayout = staticLayout;
                int lineCount = staticLayout.getLineCount();
                this.tooltipWidth = BitmapDescriptorFactory.HUE_RED;
                for (int i3 = 0; i3 < lineCount; i3++) {
                    float lineWidth = this.tooltipLayout.getLineWidth(i3);
                    if (lineWidth > this.tooltipWidth) {
                        this.tooltipWidth = lineWidth;
                    }
                }
            }
            StaticLayout staticLayout2 = this.tooltipLayout;
            if (staticLayout2 != null && staticLayout2.getLineCount() > 1) {
                m104dp += this.tooltipLayout.getHeight() - this.tooltipLayout.getLineBottom(0);
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(m104dp, 1073741824));
            float measuredWidth = getMeasuredWidth() * 0.35f;
            if (measuredWidth > AndroidUtilities.m104dp(140)) {
                measuredWidth = AndroidUtilities.m104dp(140);
            }
            this.slideDelta = (int) ((-measuredWidth) * (1.0f - this.slideToCancelProgress));
        }

        /* JADX WARN: Removed duplicated region for block: B:388:0x0418  */
        /* JADX WARN: Removed duplicated region for block: B:411:0x0578  */
        /* JADX WARN: Removed duplicated region for block: B:416:0x05df  */
        /* JADX WARN: Removed duplicated region for block: B:419:0x0657  */
        /* JADX WARN: Removed duplicated region for block: B:423:0x066a  */
        /* JADX WARN: Removed duplicated region for block: B:428:0x067a  */
        /* JADX WARN: Removed duplicated region for block: B:437:0x0693  */
        /* JADX WARN: Removed duplicated region for block: B:442:0x06b1  */
        /* JADX WARN: Removed duplicated region for block: B:447:0x06dd  */
        /* JADX WARN: Removed duplicated region for block: B:448:0x0809  */
        /* JADX WARN: Removed duplicated region for block: B:452:0x0834  */
        /* JADX WARN: Removed duplicated region for block: B:453:0x0839  */
        /* JADX WARN: Removed duplicated region for block: B:462:0x084d  */
        /* JADX WARN: Removed duplicated region for block: B:472:0x0871  */
        /* JADX WARN: Removed duplicated region for block: B:478:0x089e  */
        /* JADX WARN: Removed duplicated region for block: B:481:0x0994  */
        /* JADX WARN: Removed duplicated region for block: B:483:0x09a0  */
        /* JADX WARN: Removed duplicated region for block: B:489:0x0a6d  */
        /* JADX WARN: Removed duplicated region for block: B:494:0x0aa8  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r38) {
            /*
                Method dump skipped, instructions count: 2733
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.RecordCircle.onDraw(android.graphics.Canvas):void");
        }

        public void drawIcon(Canvas canvas, int i, int i2, float f) {
            Drawable drawable;
            checkDrawables();
            Drawable drawable2 = null;
            if (isSendButtonVisible()) {
                if (this.progressToSendButton != 1.0f) {
                    drawable2 = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraDrawable : ChatActivityEnterView.this.micDrawable;
                }
                drawable = ChatActivityEnterView.this.sendDrawable;
            } else {
                drawable = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraDrawable : ChatActivityEnterView.this.micDrawable;
            }
            Drawable drawable3 = drawable;
            Drawable drawable4 = drawable2;
            ChatActivityEnterView.this.sendRect.set(i - (drawable3.getIntrinsicWidth() / 2), i2 - (drawable3.getIntrinsicHeight() / 2), (drawable3.getIntrinsicWidth() / 2) + i, (drawable3.getIntrinsicHeight() / 2) + i2);
            drawable3.setBounds(ChatActivityEnterView.this.sendRect);
            if (drawable4 != null) {
                drawable4.setBounds(i - (drawable4.getIntrinsicWidth() / 2), i2 - (drawable4.getIntrinsicHeight() / 2), i + (drawable4.getIntrinsicWidth() / 2), i2 + (drawable4.getIntrinsicHeight() / 2));
            }
            drawIconInternal(canvas, drawable3, drawable4, this.progressToSendButton, (int) (f * 255.0f));
        }

        private void drawIconInternal(Canvas canvas, Drawable drawable, Drawable drawable2, float f, int i) {
            checkDrawables();
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (f == BitmapDescriptorFactory.HUE_RED || f == 1.0f || drawable2 == null) {
                boolean z = this.canceledByGesture;
                if (z && this.slideToCancelProgress == 1.0f) {
                    ChatActivityEnterView.this.audioVideoSendButton.setAlpha(1.0f);
                    setVisibility(8);
                    return;
                } else if (!z || this.slideToCancelProgress >= 1.0f) {
                    if (z) {
                        return;
                    }
                    drawable.setAlpha(i);
                    drawable.draw(canvas);
                    return;
                } else {
                    Drawable drawable3 = ChatActivityEnterView.this.isInVideoMode() ? ChatActivityEnterView.this.cameraOutline : ChatActivityEnterView.this.micOutline;
                    drawable3.setBounds(drawable.getBounds());
                    float f3 = this.slideToCancelProgress;
                    if (f3 >= 0.93f) {
                        f2 = ((f3 - 0.93f) / 0.07f) * 255.0f;
                    }
                    int i2 = (int) f2;
                    drawable3.setAlpha(i2);
                    drawable3.draw(canvas);
                    drawable3.setAlpha(255);
                    drawable.setAlpha(255 - i2);
                    drawable.draw(canvas);
                    return;
                }
            }
            canvas.save();
            canvas.scale(f, f, drawable.getBounds().centerX(), drawable.getBounds().centerY());
            float f4 = i;
            drawable.setAlpha((int) (f4 * f));
            drawable.draw(canvas);
            canvas.restore();
            canvas.save();
            float f5 = 1.0f - f;
            canvas.scale(f5, f5, drawable.getBounds().centerX(), drawable.getBounds().centerY());
            drawable2.setAlpha((int) (f4 * f5));
            drawable2.draw(canvas);
            canvas.restore();
        }

        @Override // android.view.View
        protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
            return super.dispatchHoverEvent(motionEvent) || this.virtualViewHelper.dispatchHoverEvent(motionEvent);
        }

        public void setTransformToSeekbar(float f) {
            this.transformToSeekbar = f;
            invalidate();
        }

        public float getTransformToSeekbarProgressStep3() {
            return this.progressToSeekbarStep3;
        }

        @Keep
        public float getExitTransition() {
            return this.exitTransition;
        }

        @Keep
        public void setExitTransition(float f) {
            this.exitTransition = f;
            invalidate();
        }

        public void updateColors() {
            Paint paint = ChatActivityEnterView.this.paint;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_messagePanelVoiceBackground;
            paint.setColor(chatActivityEnterView.getThemedColor(i));
            this.tinyWaveDrawable.paint.setColor(ColorUtils.setAlphaComponent(ChatActivityEnterView.this.getThemedColor(i), 38));
            this.bigWaveDrawable.paint.setColor(ColorUtils.setAlphaComponent(ChatActivityEnterView.this.getThemedColor(i), 76));
            this.tooltipPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_gifSaveHintText));
            int m104dp = AndroidUtilities.m104dp(5);
            ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
            int i2 = Theme.key_chat_gifSaveHintBackground;
            this.tooltipBackground = Theme.createRoundRectDrawable(m104dp, chatActivityEnterView2.getThemedColor(i2));
            this.tooltipBackgroundArrow.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(i2), PorterDuff.Mode.SRC_IN));
            this.lockBackgroundPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoiceLockBackground));
            Paint paint2 = this.lockPaint;
            ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
            int i3 = Theme.key_chat_messagePanelVoiceLock;
            paint2.setColor(chatActivityEnterView3.getThemedColor(i3));
            this.lockOutlinePaint.setColor(ChatActivityEnterView.this.getThemedColor(i3));
            this.paintAlpha = ChatActivityEnterView.this.paint.getAlpha();
        }

        public void showTooltipIfNeed() {
            if (SharedConfig.lockRecordAudioVideoHint < 3) {
                this.showTooltip = true;
                this.showTooltipStartTime = System.currentTimeMillis();
            }
        }

        @Keep
        public float getSlideToCancelProgress() {
            return this.slideToCancelProgress;
        }

        @Keep
        public void setSlideToCancelProgress(float f) {
            this.slideToCancelProgress = f;
            float measuredWidth = getMeasuredWidth() * 0.35f;
            if (measuredWidth > AndroidUtilities.m104dp(140)) {
                measuredWidth = AndroidUtilities.m104dp(140);
            }
            this.slideDelta = (int) ((-measuredWidth) * (1.0f - f));
            invalidate();
        }

        public void canceledByGesture() {
            this.canceledByGesture = true;
        }

        public void setMovingCords(float f, float f2) {
            float f3 = this.lastMovingX;
            float f4 = (f - f3) * (f - f3);
            float f5 = this.lastMovingY;
            float f6 = f4 + ((f2 - f5) * (f2 - f5));
            this.lastMovingY = f2;
            this.lastMovingX = f;
            if (this.showTooltip && this.tooltipAlpha == BitmapDescriptorFactory.HUE_RED && f6 > this.touchSlop) {
                this.showTooltipStartTime = System.currentTimeMillis();
            }
        }

        public void showWaves(boolean z, boolean z2) {
            if (!z2) {
                this.wavesEnterAnimation = z ? 1.0f : 0.5f;
            }
            this.showWaves = z;
        }

        public void drawWaves(Canvas canvas, float f, float f2, float f3) {
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.wavesEnterAnimation);
            float f4 = this.slideToCancelProgress;
            float f5 = f4 > 0.7f ? 1.0f : f4 / 0.7f;
            canvas.save();
            float f6 = this.scale * f5 * interpolation * (BlobDrawable.SCALE_BIG_MIN + (this.bigWaveDrawable.amplitude * 1.4f)) * f3;
            canvas.scale(f6, f6, f, f2);
            BlobDrawable blobDrawable = this.bigWaveDrawable;
            blobDrawable.draw(f, f2, canvas, blobDrawable.paint);
            canvas.restore();
            float f7 = this.scale * f5 * interpolation * (BlobDrawable.SCALE_SMALL_MIN + (this.tinyWaveDrawable.amplitude * 1.4f)) * f3;
            canvas.save();
            canvas.scale(f7, f7, f, f2);
            BlobDrawable blobDrawable2 = this.tinyWaveDrawable;
            blobDrawable2.draw(f, f2, canvas, blobDrawable2.paint);
            canvas.restore();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$RecordCircle$VirtualViewHelper */
        /* loaded from: classes6.dex */
        public class VirtualViewHelper extends ExploreByTouchHelper {
            private int[] coords;

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
                return true;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public VirtualViewHelper(View view) {
                super(view);
                RecordCircle.this = r1;
                this.coords = new int[2];
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected int getVirtualViewAt(float f, float f2) {
                if (!RecordCircle.this.isSendButtonVisible() || ChatActivityEnterView.this.recordCircle == null) {
                    return -1;
                }
                if (ChatActivityEnterView.this.sendRect.contains((int) f, (int) f2)) {
                    return 1;
                }
                if (ChatActivityEnterView.this.pauseRect.contains(f, f2)) {
                    return 2;
                }
                if (ChatActivityEnterView.this.slideText == null || ChatActivityEnterView.this.slideText.cancelRect == null) {
                    return -1;
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(ChatActivityEnterView.this.slideText.cancelRect);
                ChatActivityEnterView.this.slideText.getLocationOnScreen(this.coords);
                int[] iArr = this.coords;
                rectF.offset(iArr[0], iArr[1]);
                ChatActivityEnterView.this.recordCircle.getLocationOnScreen(this.coords);
                int[] iArr2 = this.coords;
                rectF.offset(-iArr2[0], -iArr2[1]);
                return rectF.contains(f, f2) ? 3 : -1;
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected void getVisibleVirtualViews(List<Integer> list) {
                if (RecordCircle.this.isSendButtonVisible()) {
                    list.add(1);
                    list.add(2);
                    list.add(3);
                }
            }

            @Override // androidx.customview.widget.ExploreByTouchHelper
            protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                if (i == 1) {
                    accessibilityNodeInfoCompat.setBoundsInParent(ChatActivityEnterView.this.sendRect);
                    accessibilityNodeInfoCompat.setText(LocaleController.getString("Send", C3632R.string.Send));
                } else if (i == 2) {
                    ChatActivityEnterView.this.rect.set((int) ChatActivityEnterView.this.pauseRect.left, (int) ChatActivityEnterView.this.pauseRect.top, (int) ChatActivityEnterView.this.pauseRect.right, (int) ChatActivityEnterView.this.pauseRect.bottom);
                    accessibilityNodeInfoCompat.setBoundsInParent(ChatActivityEnterView.this.rect);
                    accessibilityNodeInfoCompat.setText(LocaleController.getString("Stop", C3632R.string.Stop));
                } else if (i != 3 || ChatActivityEnterView.this.recordCircle == null) {
                } else {
                    if (ChatActivityEnterView.this.slideText != null && ChatActivityEnterView.this.slideText.cancelRect != null) {
                        Rect rect = AndroidUtilities.rectTmp2;
                        rect.set(ChatActivityEnterView.this.slideText.cancelRect);
                        ChatActivityEnterView.this.slideText.getLocationOnScreen(this.coords);
                        int[] iArr = this.coords;
                        rect.offset(iArr[0], iArr[1]);
                        ChatActivityEnterView.this.recordCircle.getLocationOnScreen(this.coords);
                        int[] iArr2 = this.coords;
                        rect.offset(-iArr2[0], -iArr2[1]);
                        accessibilityNodeInfoCompat.setBoundsInParent(rect);
                    }
                    accessibilityNodeInfoCompat.setText(LocaleController.getString("Cancel", C3632R.string.Cancel));
                }
            }
        }
    }

    public ChatActivityEnterView(Activity activity, SizeNotifierFrameLayout sizeNotifierFrameLayout, ChatActivity chatActivity, boolean z) {
        this(activity, sizeNotifierFrameLayout, chatActivity, z, null);
    }

    public ChatActivityEnterView(final Activity activity, SizeNotifierFrameLayout sizeNotifierFrameLayout, final ChatActivity chatActivity, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(activity, chatActivity == null ? null : chatActivity.contentView);
        int i;
        String str;
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        this.updateCombineMessagesRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.updateCombineMessages();
            }
        };
        this.emojiButtonScale = 1.0f;
        this.emojiButtonAlpha = 1.0f;
        this.emojiButtonPaddingScale = 1.0f;
        this.emojiButtonPaddingAlpha = 1.0f;
        this.attachLayoutAlpha = 1.0f;
        this.attachLayoutPaddingAlpha = 1.0f;
        this.horizontalPadding = BitmapDescriptorFactory.HUE_RED;
        this.sendButtonEnabled = true;
        int i2 = UserConfig.selectedAccount;
        this.currentAccount = i2;
        this.accountInstance = AccountInstance.getInstance(i2);
        this.lineCount = 1;
        this.currentLimit = -1;
        this.botMenuButtonType = BotMenuButtonType.NO_BUTTON;
        this.sendRoundEnabled = true;
        this.sendVoiceEnabled = true;
        this.sendPlainEnabled = true;
        this.animationParamsX = new HashMap<>();
        this.mediaMessageButtonsDelegate = new View.AccessibilityDelegate(this) { // from class: org.telegram.ui.Components.ChatActivityEnterView.2
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setClassName("android.widget.ImageButton");
                accessibilityNodeInfo.setClickable(true);
                accessibilityNodeInfo.setLongClickable(true);
            }
        };
        this.currentPopupContentType = -1;
        this.isPaused = true;
        this.startedDraggingX = -1.0f;
        this.distCanMove = AndroidUtilities.m104dp(80);
        this.location = new int[2];
        this.messageWebPageSearch = true;
        this.animatingContentType = -1;
        this.doneButtonEnabledProgress = 1.0f;
        this.doneButtonEnabled = true;
        this.openKeyboardRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.3
            {
                ChatActivityEnterView.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if ((ChatActivityEnterView.this.hasBotWebView() && ChatActivityEnterView.this.botCommandsMenuIsShowing()) || ChatActivityEnterView.this.destroyed) {
                    return;
                }
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                if (chatActivityEnterView.messageEditText == null || !chatActivityEnterView.waitingForKeyboardOpen || ChatActivityEnterView.this.keyboardVisible || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                    return;
                }
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.onKeyboardRequested();
                }
                ChatActivityEnterView.this.messageEditText.requestFocus();
                AndroidUtilities.showKeyboard(ChatActivityEnterView.this.messageEditText);
                AndroidUtilities.cancelRunOnUIThread(ChatActivityEnterView.this.openKeyboardRunnable);
                AndroidUtilities.runOnUIThread(ChatActivityEnterView.this.openKeyboardRunnable, 100L);
            }
        };
        this.updateExpandabilityRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.4
            private int lastKnownPage = -1;

            {
                ChatActivityEnterView.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                int currentPage;
                if (ChatActivityEnterView.this.emojiView == null || (currentPage = ChatActivityEnterView.this.emojiView.getCurrentPage()) == this.lastKnownPage) {
                    return;
                }
                this.lastKnownPage = currentPage;
                boolean z2 = ChatActivityEnterView.this.stickersTabOpen;
                ChatActivityEnterView.this.stickersTabOpen = currentPage == 1 || currentPage == 2 || currentPage == 3;
                boolean z3 = ChatActivityEnterView.this.emojiTabOpen;
                ChatActivityEnterView.this.emojiTabOpen = currentPage == 0;
                if (ChatActivityEnterView.this.stickersExpanded) {
                    if (ChatActivityEnterView.this.searchingType != 0) {
                        ChatActivityEnterView.this.setSearchingTypeInternal(currentPage != 0 ? 1 : 2, true);
                        ChatActivityEnterView.this.checkStickresExpandHeight();
                    } else if (!ChatActivityEnterView.this.stickersTabOpen) {
                        ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                    }
                }
                if (z2 == ChatActivityEnterView.this.stickersTabOpen && z3 == ChatActivityEnterView.this.emojiTabOpen) {
                    return;
                }
                ChatActivityEnterView.this.checkSendButton(true);
            }
        };
        this.roundedTranslationYProperty = new Property<View, Integer>(this, Integer.class, "translationY") { // from class: org.telegram.ui.Components.ChatActivityEnterView.5
            @Override // android.util.Property
            public Integer get(View view) {
                return Integer.valueOf(Math.round(view.getTranslationY()));
            }

            @Override // android.util.Property
            public void set(View view, Integer num) {
                view.setTranslationY(num.intValue());
            }
        };
        this.recordCircleScale = new Property<RecordCircle, Float>(this, Float.class, "scale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.6
            @Override // android.util.Property
            public Float get(RecordCircle recordCircle) {
                return Float.valueOf(recordCircle.getScale());
            }

            @Override // android.util.Property
            public void set(RecordCircle recordCircle, Float f) {
                recordCircle.setScale(f.floatValue());
            }
        };
        this.redDotPaint = new Paint(1);
        this.onFinishInitCameraRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.7
            {
                ChatActivityEnterView.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ChatActivityEnterView.this.delegate != null) {
                    if (SharedConfig.selectedVideoVoiceCamera == VideoVoiceCamera.ASK) {
                        ChatActivityEnterView.this.showChooseCameraPopup();
                    } else if (SharedConfig.selectedVideoVoiceCamera == VideoVoiceCamera.BACK) {
                        ChatActivityEnterView.this.delegate.needStartRecordVideo(0, true, 0, true);
                    } else {
                        ChatActivityEnterView.this.delegate.needStartRecordVideo(0, true, 0);
                    }
                }
            }
        };
        this.recordAudioVideoRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.8
            {
                ChatActivityEnterView.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ChatActivityEnterView.this.delegate == null || ChatActivityEnterView.this.parentActivity == null) {
                    return;
                }
                ChatActivityEnterView.this.delegate.onPreAudioVideoRecord();
                ChatActivityEnterView.this.calledRecordRunnable = true;
                ChatActivityEnterView.this.recordAudioVideoRunnableStarted = false;
                if (ChatActivityEnterView.this.slideText != null) {
                    ChatActivityEnterView.this.slideText.setAlpha(1.0f);
                    ChatActivityEnterView.this.slideText.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
                ChatActivityEnterView.this.audioToSendPath = null;
                ChatActivityEnterView.this.audioToSend = null;
                if (ChatActivityEnterView.this.isInVideoMode()) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        boolean z2 = ChatActivityEnterView.this.parentActivity.checkSelfPermission("android.permission.RECORD_AUDIO") == 0;
                        boolean z3 = ChatActivityEnterView.this.parentActivity.checkSelfPermission("android.permission.CAMERA") == 0;
                        if (!z2 || !z3) {
                            String[] strArr = new String[(z2 || z3) ? 1 : 2];
                            if (!z2 && !z3) {
                                strArr[0] = "android.permission.RECORD_AUDIO";
                                strArr[1] = "android.permission.CAMERA";
                            } else if (!z2) {
                                strArr[0] = "android.permission.RECORD_AUDIO";
                            } else {
                                strArr[0] = "android.permission.CAMERA";
                            }
                            ChatActivityEnterView.this.parentActivity.requestPermissions(strArr, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                            return;
                        }
                    }
                    if (!CameraController.getInstance().isCameraInitied()) {
                        CameraController.getInstance().initCamera(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                    } else {
                        ChatActivityEnterView.this.onFinishInitCameraRunnable.run();
                    }
                } else if (Build.VERSION.SDK_INT < 23 || ChatActivityEnterView.this.parentActivity.checkSelfPermission("android.permission.RECORD_AUDIO") == 0) {
                    ChatActivityEnterView.this.delegate.needStartRecordAudio(1);
                    ChatActivityEnterView.this.startedDraggingX = -1.0f;
                    MediaController.getInstance().startRecording(ChatActivityEnterView.this.currentAccount, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), ChatActivityEnterView.this.delegate != null ? ChatActivityEnterView.this.delegate.getReplyToStory() : null, ChatActivityEnterView.this.recordingGuid, true);
                    ChatActivityEnterView.this.recordingAudioVideo = true;
                    ChatActivityEnterView.this.updateRecordInterface(0);
                    if (ChatActivityEnterView.this.recordTimerView != null) {
                        ChatActivityEnterView.this.recordTimerView.start();
                    }
                    if (ChatActivityEnterView.this.recordDot != null) {
                        ChatActivityEnterView.this.recordDot.enterAnimation = false;
                    }
                    ChatActivityEnterView.this.audioVideoButtonContainer.getParent().requestDisallowInterceptTouchEvent(true);
                    if (ChatActivityEnterView.this.recordCircle != null) {
                        ChatActivityEnterView.this.recordCircle.showWaves(true, false);
                    }
                } else {
                    ChatActivityEnterView.this.parentActivity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 3);
                }
            }
        };
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.paint = new Paint(1);
        this.pauseRect = new RectF();
        this.sendRect = new Rect();
        this.rect = new Rect();
        this.runEmojiPanelAnimation = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.9
            {
                ChatActivityEnterView.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ChatActivityEnterView.this.panelAnimation == null || ChatActivityEnterView.this.panelAnimation.isRunning()) {
                    return;
                }
                ChatActivityEnterView.this.panelAnimation.start();
            }
        };
        this.EMOJI_BUTTON_SCALE = new Property<View, Float>(Float.class, "emoji_button_scale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.10
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.emojiButtonScale);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.emojiButtonScale = f.floatValue();
                ChatActivityEnterView.this.updateEmojiButtonParams();
            }
        };
        this.ATTACH_LAYOUT_ALPHA = new Property<View, Float>(Float.class, "attach_scale") { // from class: org.telegram.ui.Components.ChatActivityEnterView.11
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.attachLayoutAlpha);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.attachLayoutAlpha = f.floatValue();
                ChatActivityEnterView.this.updateAttachLayoutParams();
            }
        };
        this.EMOJI_BUTTON_ALPHA = new Property<View, Float>(Float.class, "emoji_button_alpha") { // from class: org.telegram.ui.Components.ChatActivityEnterView.12
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.emojiButtonAlpha);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.emojiButtonAlpha = f.floatValue();
                ChatActivityEnterView.this.updateEmojiButtonParams();
            }
        };
        this.ATTACH_LAYOUT_TRANSLATION_X = new Property<View, Float>(Float.class, "attach_layout_translation_x") { // from class: org.telegram.ui.Components.ChatActivityEnterView.13
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.attachLayoutTranslationX);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.attachLayoutTranslationX = f.floatValue();
                ChatActivityEnterView.this.updateAttachLayoutParams();
            }
        };
        this.MESSAGE_TEXT_TRANSLATION_X = new Property<View, Float>(Float.class, "message_text_translation_x") { // from class: org.telegram.ui.Components.ChatActivityEnterView.14
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ChatActivityEnterView.this.messageTextTranslationX);
            }

            @Override // android.util.Property
            public void set(View view, Float f) {
                ChatActivityEnterView.this.messageTextTranslationX = f.floatValue();
                ChatActivityEnterView.this.updateMessageTextParams();
            }
        };
        this.allowBlur = true;
        this.shouldDrawBackground = true;
        this.backgroundPaint = new Paint();
        this.composeShadowAlpha = 1.0f;
        this.messageEditTextEnabled = true;
        this.topViewUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatActivityEnterView.this.lambda$new$45(valueAnimator);
            }
        };
        this.botCommandLastPosition = -1;
        this.resourcesProvider = resourcesProvider;
        this.backgroundColor = getThemedColor(Theme.key_chat_messagePanelBackground);
        this.drawBlur = false;
        this.isChat = z;
        this.smoothKeyboard = z && !AndroidUtilities.isInMultiwindow && (chatActivity == null || !chatActivity.isInBubbleMode());
        Paint paint = new Paint(1);
        this.dotPaint = paint;
        paint.setColor(getThemedColor(Theme.key_chat_emojiPanelNewTrending));
        setFocusable(true);
        setFocusableInTouchMode(true);
        setWillNotDraw(false);
        setClipChildren(false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.templatesDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordStarted);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordStartError);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordStopped);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recordProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.audioDidSent);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.audioRouteChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.featuredStickersDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messageReceivedByServer);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.sendingMessagesChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.audioRecordTooShort);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateBotMenuButton);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdatePremiumGiftFieldIcon);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        this.parentActivity = activity;
        this.parentFragment = chatActivity;
        if (chatActivity != null) {
            this.recordingGuid = chatActivity.getClassGuid();
        }
        this.sizeNotifierLayout = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setDelegate(this);
        this.sendByEnter = MessagesController.getGlobalMainSettings().getBoolean("send_by_enter", false);
        FrameLayout frameLayout = new FrameLayout(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.15
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (ChatActivityEnterView.this.botWebViewButton != null && ChatActivityEnterView.this.botWebViewButton.getVisibility() == 0) {
                    return ChatActivityEnterView.this.botWebViewButton.dispatchTouchEvent(motionEvent);
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.textFieldContainer = frameLayout;
        frameLayout.setClipChildren(false);
        this.textFieldContainer.setClipToPadding(false);
        this.textFieldContainer.setPadding(0, AndroidUtilities.m104dp(1), 0, 0);
        addView(this.textFieldContainer, LayoutHelper.createFrame(-1, -2, 83, 0, 1, 0, 0));
        FrameLayout frameLayout2 = new FrameLayout(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.16
            private final AnimatedFloat bottomGradientAlpha;
            private final LinearGradient clipGradient;
            private final Matrix clipMatrix;
            private final Paint gradientPaint;
            private final AnimatedFloat topGradientAlpha;

            {
                ChatActivityEnterView.this = this;
                Paint paint2 = new Paint(1);
                this.gradientPaint = paint2;
                LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 16.0f, new int[]{-1, 16777215}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
                this.clipGradient = linearGradient;
                this.clipMatrix = new Matrix();
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.topGradientAlpha = new AnimatedFloat(this, 0L, 280L, cubicBezierInterpolator);
                this.bottomGradientAlpha = new AnimatedFloat(this, 0L, 280L, cubicBezierInterpolator);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                paint2.setShader(linearGradient);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
                super.onLayout(z2, i3, i4, i5, i6);
                if (ChatActivityEnterView.this.scheduledButton != null) {
                    int measuredWidth = (getMeasuredWidth() - AndroidUtilities.m104dp((ChatActivityEnterView.this.botButton == null || ChatActivityEnterView.this.botButton.getVisibility() != 0) ? 48 : 96)) - AndroidUtilities.m104dp(48);
                    ChatActivityEnterView.this.scheduledButton.layout(measuredWidth, ChatActivityEnterView.this.scheduledButton.getTop(), ChatActivityEnterView.this.scheduledButton.getMeasuredWidth() + measuredWidth, ChatActivityEnterView.this.scheduledButton.getBottom());
                }
                if (ChatActivityEnterView.this.animationParamsX.isEmpty()) {
                    return;
                }
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    Float f = (Float) ChatActivityEnterView.this.animationParamsX.get(childAt);
                    if (f != null) {
                        childAt.setTranslationX(f.floatValue() - childAt.getLeft());
                        childAt.animate().translationX(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                    }
                }
                ChatActivityEnterView.this.animationParamsX.clear();
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                EditTextCaption editTextCaption;
                if (view != null && view == (editTextCaption = ChatActivityEnterView.this.messageEditText)) {
                    float f = this.topGradientAlpha.set(editTextCaption.canScrollVertically(-1));
                    float f2 = this.bottomGradientAlpha.set(ChatActivityEnterView.this.messageEditText.canScrollVertically(1));
                    if (f <= BitmapDescriptorFactory.HUE_RED && f2 <= BitmapDescriptorFactory.HUE_RED) {
                        return super.drawChild(canvas, view, j);
                    }
                    canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(5) + ChatActivityEnterView.this.messageEditText.getX() + ChatActivityEnterView.this.messageEditText.getMeasuredWidth(), AndroidUtilities.m104dp(2) + ChatActivityEnterView.this.messageEditText.getY() + ChatActivityEnterView.this.messageEditText.getMeasuredHeight(), 255, 31);
                    boolean drawChild = super.drawChild(canvas, view, j);
                    canvas.save();
                    if (f > BitmapDescriptorFactory.HUE_RED) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        float x = ChatActivityEnterView.this.messageEditText.getX() - AndroidUtilities.m104dp(5);
                        float y = ChatActivityEnterView.this.messageEditText.getY();
                        ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                        rectF.set(x, y + chatActivityEnterView.animatedTop, chatActivityEnterView.messageEditText.getX() + ChatActivityEnterView.this.messageEditText.getMeasuredWidth() + AndroidUtilities.m104dp(5), ChatActivityEnterView.this.messageEditText.getY() + ChatActivityEnterView.this.animatedTop + AndroidUtilities.m104dp(13));
                        this.clipMatrix.reset();
                        this.clipMatrix.postScale(1.0f, rectF.height() / 16.0f);
                        this.clipMatrix.postTranslate(rectF.left, rectF.top);
                        this.clipGradient.setLocalMatrix(this.clipMatrix);
                        this.gradientPaint.setAlpha((int) (f * 255.0f));
                        canvas.drawRect(rectF, this.gradientPaint);
                    }
                    if (f2 > BitmapDescriptorFactory.HUE_RED) {
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        rectF2.set(ChatActivityEnterView.this.messageEditText.getX() - AndroidUtilities.m104dp(5), (ChatActivityEnterView.this.messageEditText.getY() + ChatActivityEnterView.this.messageEditText.getMeasuredHeight()) - AndroidUtilities.m104dp(15), ChatActivityEnterView.this.messageEditText.getX() + ChatActivityEnterView.this.messageEditText.getMeasuredWidth() + AndroidUtilities.m104dp(5), ChatActivityEnterView.this.messageEditText.getY() + ChatActivityEnterView.this.messageEditText.getMeasuredHeight() + AndroidUtilities.m104dp(2));
                        this.clipMatrix.reset();
                        this.clipMatrix.postScale(1.0f, rectF2.height() / 16.0f);
                        this.clipMatrix.postRotate(180.0f);
                        this.clipMatrix.postTranslate(rectF2.left, rectF2.bottom);
                        this.clipGradient.setLocalMatrix(this.clipMatrix);
                        this.gradientPaint.setAlpha((int) (f2 * 255.0f));
                        canvas.drawRect(rectF2, this.gradientPaint);
                    }
                    canvas.restore();
                    canvas.restore();
                    return drawChild;
                }
                ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                if (chatActivityEnterView2.shouldDrawRecordedAudioPanelInParent && view == chatActivityEnterView2.recordedAudioPanel) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.messageEditTextContainer = frameLayout2;
        frameLayout2.setClipChildren(false);
        this.textFieldContainer.addView(frameLayout2, LayoutHelper.createFrame(-1, -2, 80, 0, 0, 48, 0));
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = new ChatActivityEnterViewAnimatedIconView(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.17
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.widget.ImageView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (getTag() == null || ChatActivityEnterView.this.attachLayout == null || ChatActivityEnterView.this.emojiViewVisible || MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).getUnreadStickerSets().isEmpty() || ChatActivityEnterView.this.dotPaint == null) {
                    return;
                }
                canvas.drawCircle((getWidth() / 2) + AndroidUtilities.m104dp(9), (getHeight() / 2) - AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(5), ChatActivityEnterView.this.dotPaint);
            }
        };
        this.emojiButton = chatActivityEnterViewAnimatedIconView;
        chatActivityEnterViewAnimatedIconView.setContentDescription(LocaleController.getString(C3632R.string.AccDescrEmojiButton));
        this.emojiButton.setFocusable(true);
        int m105dp = AndroidUtilities.m105dp(9.5f);
        this.emojiButton.setPadding(m105dp, m105dp, m105dp, m105dp);
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView2 = this.emojiButton;
        int i3 = Theme.key_chat_messagePanelIcons;
        chatActivityEnterViewAnimatedIconView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), PorterDuff.Mode.SRC_IN));
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            this.emojiButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.emojiButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$new$6(view);
            }
        });
        this.messageEditTextContainer.addView(this.emojiButton, LayoutHelper.createFrame(48, 48, 83, 3, 0, 0, 0));
        setEmojiButtonImage(false, false);
        if (z) {
            FrameLayout frameLayout3 = new FrameLayout(activity);
            this.translateButton = frameLayout3;
            int i5 = 8;
            frameLayout3.setVisibility(8);
            ImageView imageView = new ImageView(activity);
            imageView.setImageResource(C3632R.C3634drawable.msg_translate);
            int i6 = Theme.key_chat_messagePanelSend;
            imageView.setColorFilter(Theme.getColor(i6), PorterDuff.Mode.MULTIPLY);
            this.translateButton.addView(imageView, LayoutHelper.createFrame(26, 26, 17));
            FrameLayout frameLayout4 = this.translateButton;
            int i7 = C3632R.string.chat_long_action_translate;
            frameLayout4.setContentDescription(LocaleController.getInternalString(i7));
            this.translateButton.setSoundEffectsEnabled(false);
            FrameLayout frameLayout5 = this.translateButton;
            int i8 = Theme.key_listSelector;
            frameLayout5.setBackground(Theme.createSelectorDrawable(Theme.getColor(i8)));
            this.translateButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatActivityEnterView.this.lambda$new$7(view);
                }
            });
            this.messageEditTextContainer.addView(this.translateButton, LayoutHelper.createFrame(48, 48, 85));
            FrameLayout frameLayout6 = new FrameLayout(activity);
            this.formattingButton = frameLayout6;
            frameLayout6.setVisibility(8);
            ImageView imageView2 = new ImageView(activity);
            this.formattingIcon = imageView2;
            imageView2.setColorFilter(Theme.getColor(i6), PorterDuff.Mode.MULTIPLY);
            this.formattingButton.addView(this.formattingIcon, LayoutHelper.createFrame(26, 26, 17));
            this.formattingButton.setContentDescription(LocaleController.getInternalString(i7));
            this.formattingButton.setSoundEffectsEnabled(false);
            this.formattingButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(i8)));
            this.formattingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda22
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatActivityEnterView.this.lambda$new$8(view);
                }
            });
            this.formattingButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda35
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$new$10;
                    lambda$new$10 = ChatActivityEnterView.this.lambda$new$10(activity, view);
                    return lambda$new$10;
                }
            });
            updateFormattingButton();
            this.messageEditTextContainer.addView(this.formattingButton, LayoutHelper.createFrame(48, 48, 83));
            LinearLayout linearLayout = new LinearLayout(activity);
            this.attachLayout = linearLayout;
            linearLayout.setOrientation(0);
            this.attachLayout.setEnabled(false);
            this.attachLayout.setPivotX(AndroidUtilities.m104dp(48));
            this.attachLayout.setClipChildren(false);
            this.messageEditTextContainer.addView(this.attachLayout, LayoutHelper.createFrame(-2, 48, 85));
            this.notifyButton = new ImageView(activity);
            CrossOutDrawable crossOutDrawable = new CrossOutDrawable(activity, C3632R.C3634drawable.input_notify_on, i3);
            this.notifySilentDrawable = crossOutDrawable;
            this.notifyButton.setImageDrawable(crossOutDrawable);
            this.notifySilentDrawable.setCrossOut(this.silent, false);
            ImageView imageView3 = this.notifyButton;
            if (this.silent) {
                i = C3632R.string.AccDescrChanSilentOn;
                str = "AccDescrChanSilentOn";
            } else {
                i = C3632R.string.AccDescrChanSilentOff;
                str = "AccDescrChanSilentOff";
            }
            imageView3.setContentDescription(LocaleController.getString(str, i));
            this.notifyButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), PorterDuff.Mode.MULTIPLY));
            this.notifyButton.setScaleType(ImageView.ScaleType.CENTER);
            if (i4 >= 21) {
                this.notifyButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i8)));
            }
            ImageView imageView4 = this.notifyButton;
            if (this.canWriteToChannel && ((chatActivityEnterViewDelegate = this.delegate) == null || !chatActivityEnterViewDelegate.hasScheduledMessages())) {
                i5 = 0;
            }
            imageView4.setVisibility(i5);
            this.attachLayout.addView(this.notifyButton, LayoutHelper.createLinear(48, 48));
            this.notifyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.18
                {
                    ChatActivityEnterView.this = this;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int i9;
                    String str2;
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    chatActivityEnterView.silent = !chatActivityEnterView.silent;
                    if (ChatActivityEnterView.this.notifySilentDrawable == null) {
                        ChatActivityEnterView.this.notifySilentDrawable = new CrossOutDrawable(activity, C3632R.C3634drawable.input_notify_on, Theme.key_chat_messagePanelIcons);
                    }
                    ChatActivityEnterView.this.notifySilentDrawable.setCrossOut(ChatActivityEnterView.this.silent, true);
                    ChatActivityEnterView.this.notifyButton.setImageDrawable(ChatActivityEnterView.this.notifySilentDrawable);
                    SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(ChatActivityEnterView.this.currentAccount).edit();
                    edit.putBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.silent).commit();
                    NotificationsController notificationsController = NotificationsController.getInstance(ChatActivityEnterView.this.currentAccount);
                    long j = ChatActivityEnterView.this.dialog_id;
                    ChatActivity chatActivity2 = chatActivity;
                    notificationsController.updateServerNotificationsSettings(j, chatActivity2 == null ? 0 : chatActivity2.getTopicId());
                    UndoView undoView = chatActivity.getUndoView();
                    if (undoView != null) {
                        undoView.showWithAction(0L, !ChatActivityEnterView.this.silent ? 54 : 55, (Runnable) null);
                    }
                    ImageView imageView5 = ChatActivityEnterView.this.notifyButton;
                    if (ChatActivityEnterView.this.silent) {
                        i9 = C3632R.string.AccDescrChanSilentOn;
                        str2 = "AccDescrChanSilentOn";
                    } else {
                        i9 = C3632R.string.AccDescrChanSilentOff;
                        str2 = "AccDescrChanSilentOff";
                    }
                    imageView5.setContentDescription(LocaleController.getString(str2, i9));
                    ChatActivityEnterView.this.updateFieldHint(true);
                }
            });
            ImageView imageView5 = new ImageView(activity);
            this.attachButton = imageView5;
            imageView5.setScaleType(ImageView.ScaleType.CENTER);
            this.attachButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), PorterDuff.Mode.MULTIPLY));
            this.attachButton.setImageResource(C3632R.C3634drawable.msg_input_attach2);
            if (i4 >= 21) {
                this.attachButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i8)));
            }
            this.attachLayout.addView(this.attachButton, LayoutHelper.createLinear(48, 48));
            this.attachButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda23
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatActivityEnterView.this.lambda$new$11(view);
                }
            });
            this.attachButton.setContentDescription(LocaleController.getString("AccDescrAttachButton", C3632R.string.AccDescrAttachButton));
        }
        if (this.audioToSend != null) {
            createRecordAudioPanel();
        }
        FrameLayout frameLayout7 = new FrameLayout(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.19
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == ChatActivityEnterView.this.sendButton && ChatActivityEnterView.this.textTransitionIsRunning) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (ChatActivityEnterView.this.sendButtonEnabled) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatActivityEnterView.this.sendButtonEnabled) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.sendButtonContainer = frameLayout7;
        frameLayout7.setClipChildren(false);
        this.sendButtonContainer.setClipToPadding(false);
        this.textFieldContainer.addView(this.sendButtonContainer, LayoutHelper.createFrame(48, 48, 85));
        C457920 c457920 = new C457920(activity, resourcesProvider);
        this.audioVideoButtonContainer = c457920;
        c457920.setSoundEffectsEnabled(false);
        this.sendButtonContainer.addView(this.audioVideoButtonContainer, LayoutHelper.createFrame(48, 48));
        this.audioVideoButtonContainer.setFocusable(true);
        this.audioVideoButtonContainer.setImportantForAccessibility(1);
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView3 = new ChatActivityEnterViewAnimatedIconView(activity);
        this.audioVideoSendButton = chatActivityEnterViewAnimatedIconView3;
        chatActivityEnterViewAnimatedIconView3.setFocusable(true);
        this.audioVideoSendButton.setImportantForAccessibility(1);
        this.audioVideoSendButton.setAccessibilityDelegate(this.mediaMessageButtonsDelegate);
        int m105dp2 = AndroidUtilities.m105dp(9.5f);
        this.audioVideoSendButton.setPadding(m105dp2, m105dp2, m105dp2, m105dp2);
        this.audioVideoSendButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), PorterDuff.Mode.SRC_IN));
        this.audioVideoButtonContainer.addView(this.audioVideoSendButton, LayoutHelper.createFrame(48, 48));
        ImageView imageView6 = new ImageView(activity);
        this.cancelBotButton = imageView6;
        imageView6.setVisibility(4);
        this.cancelBotButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        ImageView imageView7 = this.cancelBotButton;
        CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2(this) { // from class: org.telegram.ui.Components.ChatActivityEnterView.21
            @Override // org.telegram.p043ui.Components.CloseProgressDrawable2
            protected int getCurrentColor() {
                return Theme.getColor(Theme.key_chat_messagePanelCancelInlineBot);
            }
        };
        this.progressDrawable = closeProgressDrawable2;
        imageView7.setImageDrawable(closeProgressDrawable2);
        this.cancelBotButton.setContentDescription(LocaleController.getString("Cancel", C3632R.string.Cancel));
        this.cancelBotButton.setSoundEffectsEnabled(false);
        this.cancelBotButton.setScaleX(0.1f);
        this.cancelBotButton.setScaleY(0.1f);
        this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (i4 >= 21) {
            this.cancelBotButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.sendButtonContainer.addView(this.cancelBotButton, LayoutHelper.createFrame(48, 48));
        this.cancelBotButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$new$12(view);
            }
        });
        ChatActivity chatActivity2 = this.parentFragment;
        if (chatActivity2 != null && chatActivity2.isAllowCombineMessages()) {
            Drawable drawable = activity.getResources().getDrawable(C3632R.C3634drawable.poll_add_circle);
            Drawable drawable2 = activity.getResources().getDrawable(C3632R.C3634drawable.poll_add_plus);
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked), PorterDuff.Mode.MULTIPLY));
            drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(drawable, drawable2);
            this.combineMessagesDrawable = combinedDrawable;
            combinedDrawable.setFullsize(true);
            this.combineMessagesDrawable.setCustomSize(AndroidUtilities.m104dp(18), AndroidUtilities.m104dp(18));
            this.combineMessagesDrawable.setIconSize(AndroidUtilities.m104dp(18), AndroidUtilities.m104dp(18));
        }
        if (isTemplatesChannel(true, false)) {
            Resources resources = activity.getResources();
            int i9 = C3632R.C3634drawable.fork_templates;
            this.sendButtonDrawable = resources.getDrawable(i9).mutate();
            this.sendButtonInverseDrawable = activity.getResources().getDrawable(i9).mutate();
            this.inactinveSendButtonDrawable = activity.getResources().getDrawable(i9).mutate();
        } else if (isInScheduleMode()) {
            Resources resources2 = activity.getResources();
            int i10 = C3632R.C3634drawable.input_schedule;
            this.sendButtonDrawable = resources2.getDrawable(i10).mutate();
            this.sendButtonInverseDrawable = activity.getResources().getDrawable(i10).mutate();
            this.inactinveSendButtonDrawable = activity.getResources().getDrawable(i10).mutate();
        } else {
            Resources resources3 = activity.getResources();
            int i11 = C3632R.C3634drawable.ic_send;
            this.sendButtonDrawable = resources3.getDrawable(i11).mutate();
            this.sendButtonInverseDrawable = activity.getResources().getDrawable(i11).mutate();
            this.inactinveSendButtonDrawable = activity.getResources().getDrawable(i11).mutate();
        }
        View view = new View(activity) { // from class: org.telegram.ui.Components.ChatActivityEnterView.22
            private float animationDuration;
            private float animationProgress;
            private int drawableColor;
            private long lastAnimationTime;
            private int prevColorType;

            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.View
            public void setVisibility(int i12) {
                super.setVisibility(i12);
                if (ChatActivityEnterView.this.showTranslateButton) {
                    ChatActivityEnterView.this.translateButton.setVisibility(i12);
                }
                ChatActivityEnterView.this.updateCombineMessages();
            }

            @Override // android.view.View
            public void setScaleX(float f) {
                super.setScaleX(f);
                if (ChatActivityEnterView.this.showTranslateButton) {
                    ChatActivityEnterView.this.translateButton.setScaleX(f);
                }
            }

            @Override // android.view.View
            public void setScaleY(float f) {
                super.setScaleY(f);
                if (ChatActivityEnterView.this.showTranslateButton) {
                    ChatActivityEnterView.this.translateButton.setScaleY(f);
                }
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                if (ChatActivityEnterView.this.showTranslateButton) {
                    ChatActivityEnterView.this.translateButton.setAlpha(f);
                }
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                int themedColor;
                int i12;
                int i13;
                float m104dp;
                float f;
                float m104dp2;
                int m104dp3 = AndroidUtilities.m104dp(20);
                int measuredWidth = getMeasuredWidth() >> 1;
                int measuredWidth2 = (getMeasuredWidth() - ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicWidth()) / 2;
                int measuredHeight = (getMeasuredHeight() - ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicHeight()) / 2;
                if (!ChatActivityEnterView.this.isTemplatesChannel(true, false)) {
                    if (ChatActivityEnterView.this.isInScheduleMode()) {
                        measuredHeight -= AndroidUtilities.m104dp(1);
                    } else {
                        measuredWidth2 += AndroidUtilities.m104dp(2);
                    }
                }
                boolean z2 = ChatActivityEnterView.this.sendPopupWindow != null && ChatActivityEnterView.this.sendPopupWindow.isShowing();
                if (z2) {
                    themedColor = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoicePressed);
                    i12 = 1;
                } else {
                    themedColor = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelSend);
                    i12 = 2;
                }
                int i14 = measuredWidth2;
                if (themedColor != this.drawableColor) {
                    this.lastAnimationTime = SystemClock.elapsedRealtime();
                    int i15 = this.prevColorType;
                    if (i15 != 0 && i15 != i12) {
                        this.animationProgress = BitmapDescriptorFactory.HUE_RED;
                        if (z2) {
                            this.animationDuration = 200.0f;
                        } else {
                            this.animationDuration = 120.0f;
                        }
                    } else {
                        this.animationProgress = 1.0f;
                    }
                    this.prevColorType = i12;
                    this.drawableColor = themedColor;
                    ChatActivityEnterView.this.sendButtonDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelSend), PorterDuff.Mode.MULTIPLY));
                    int themedColor2 = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelIcons);
                    ChatActivityEnterView.this.inactinveSendButtonDrawable.setColorFilter(new PorterDuffColorFilter(Color.argb(180, Color.red(themedColor2), Color.green(themedColor2), Color.blue(themedColor2)), PorterDuff.Mode.MULTIPLY));
                    ChatActivityEnterView.this.sendButtonInverseDrawable.setColorFilter(new PorterDuffColorFilter(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoicePressed), PorterDuff.Mode.MULTIPLY));
                    if (ChatActivityEnterView.this.combineMessagesDrawable != null) {
                        ChatActivityEnterView.this.combineMessagesDrawable.getBackground().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked), PorterDuff.Mode.MULTIPLY));
                        ChatActivityEnterView.this.combineMessagesDrawable.getIcon().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
                    }
                }
                if (this.animationProgress < 1.0f) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    float f2 = this.animationProgress + (((float) (elapsedRealtime - this.lastAnimationTime)) / this.animationDuration);
                    this.animationProgress = f2;
                    if (f2 > 1.0f) {
                        this.animationProgress = 1.0f;
                    }
                    this.lastAnimationTime = elapsedRealtime;
                    invalidate();
                }
                if (ChatActivityEnterView.this.combineMessagesDrawable != null && (ChatActivityEnterView.this.needCombineMessages || ChatActivityEnterView.this.isCombineMessagesInAnimation)) {
                    if ((ChatActivityEnterView.this.needCombineMessages && ChatActivityEnterView.this.combineMessagesAnimationScale == 1.0f) || (!ChatActivityEnterView.this.needCombineMessages && ChatActivityEnterView.this.combineMessagesAnimationScale == BitmapDescriptorFactory.HUE_RED)) {
                        ChatActivityEnterView.this.isCombineMessagesInAnimation = false;
                    }
                    if (ChatActivityEnterView.this.isCombineMessagesInAnimation) {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        long j = elapsedRealtime2 - ChatActivityEnterView.this.lastCombineMessagesAnimationTime;
                        ChatActivityEnterView.this.lastCombineMessagesAnimationTime = elapsedRealtime2;
                        if (ChatActivityEnterView.this.needCombineMessages) {
                            ChatActivityEnterView.access$9616(ChatActivityEnterView.this, ((float) j) / 200.0f);
                            if (ChatActivityEnterView.this.combineMessagesAnimationScale > 1.0f) {
                                ChatActivityEnterView.this.combineMessagesAnimationScale = 1.0f;
                            }
                        } else {
                            ChatActivityEnterView.access$9624(ChatActivityEnterView.this, ((float) j) / 200.0f);
                            if (ChatActivityEnterView.this.combineMessagesAnimationScale < BitmapDescriptorFactory.HUE_RED) {
                                ChatActivityEnterView.this.combineMessagesAnimationScale = BitmapDescriptorFactory.HUE_RED;
                            }
                        }
                        invalidate();
                    }
                    if (ChatActivityEnterView.this.combineMessagesAnimationScale != BitmapDescriptorFactory.HUE_RED) {
                        int measuredWidth3 = (getMeasuredWidth() + ChatActivityEnterView.this.combineMessagesDrawable.getIntrinsicWidth()) / 2;
                        int measuredHeight2 = (getMeasuredHeight() + ChatActivityEnterView.this.combineMessagesDrawable.getIntrinsicHeight()) / 2;
                        int intrinsicWidth = ((int) (ChatActivityEnterView.this.combineMessagesDrawable.getIntrinsicWidth() * ChatActivityEnterView.this.combineMessagesAnimationScale)) / 2;
                        ChatActivityEnterView.this.combineMessagesDrawable.setBounds(measuredWidth3 - intrinsicWidth, measuredHeight2 - intrinsicWidth, measuredWidth3 + intrinsicWidth, measuredHeight2 + intrinsicWidth);
                        ChatActivityEnterView.this.combineMessagesDrawable.draw(canvas);
                    }
                }
                if (z2) {
                    i13 = i14;
                } else if (ChatActivityEnterView.this.slowModeTimer != Integer.MAX_VALUE || ChatActivityEnterView.this.isInScheduleMode()) {
                    i13 = i14;
                    ChatActivityEnterView.this.sendButtonDrawable.setBounds(i13, measuredHeight, ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicWidth() + i13, ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicHeight() + measuredHeight);
                    ChatActivityEnterView.this.sendButtonDrawable.draw(canvas);
                } else {
                    i13 = i14;
                    ChatActivityEnterView.this.inactinveSendButtonDrawable.setBounds(i13, measuredHeight, i14 + ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicWidth(), ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicHeight() + measuredHeight);
                    ChatActivityEnterView.this.inactinveSendButtonDrawable.draw(canvas);
                }
                if (z2 || this.animationProgress != 1.0f) {
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    if (chatActivityEnterView.shouldDrawBackground) {
                        Theme.dialogs_onlineCirclePaint.setColor(chatActivityEnterView.getThemedColor(Theme.key_chat_messagePanelSend));
                    } else {
                        Theme.dialogs_onlineCirclePaint.setColor(ColorUtils.setAlphaComponent(-1, 75));
                    }
                    if (z2) {
                        ChatActivityEnterView.this.sendButtonInverseDrawable.setAlpha(255);
                        float f3 = this.animationProgress;
                        if (f3 <= 0.25f) {
                            f = m104dp3;
                            m104dp2 = AndroidUtilities.m104dp(2) * CubicBezierInterpolator.EASE_IN.getInterpolation(f3 / 0.25f);
                        } else {
                            float f4 = f3 - 0.25f;
                            if (f4 <= 0.5f) {
                                f = m104dp3;
                                m104dp2 = AndroidUtilities.m104dp(2) - (AndroidUtilities.m104dp(3) * CubicBezierInterpolator.EASE_IN.getInterpolation(f4 / 0.5f));
                            } else {
                                m104dp = m104dp3 + (-AndroidUtilities.m104dp(1)) + (AndroidUtilities.m104dp(1) * CubicBezierInterpolator.EASE_IN.getInterpolation((f4 - 0.5f) / 0.25f));
                                m104dp3 = (int) m104dp;
                            }
                        }
                        m104dp = f + m104dp2;
                        m104dp3 = (int) m104dp;
                    } else {
                        int i16 = (int) ((1.0f - this.animationProgress) * 255.0f);
                        Theme.dialogs_onlineCirclePaint.setAlpha(i16);
                        ChatActivityEnterView.this.sendButtonInverseDrawable.setAlpha(i16);
                    }
                    float f5 = measuredWidth;
                    canvas.drawCircle(f5, f5, m104dp3, Theme.dialogs_onlineCirclePaint);
                    ChatActivityEnterView.this.sendButtonInverseDrawable.setBounds(i13, measuredHeight, i13 + ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicWidth(), ChatActivityEnterView.this.sendButtonDrawable.getIntrinsicHeight() + measuredHeight);
                    ChatActivityEnterView.this.sendButtonInverseDrawable.draw(canvas);
                }
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.sendButton = view;
        view.setVisibility(4);
        int themedColor = getThemedColor(Theme.key_chat_messagePanelSend);
        this.sendButton.setContentDescription(LocaleController.getString("Send", C3632R.string.Send));
        this.sendButton.setSoundEffectsEnabled(false);
        this.sendButton.setScaleX(0.1f);
        this.sendButton.setScaleY(0.1f);
        this.sendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (i4 >= 21) {
            this.sendButton.setBackgroundDrawable(Theme.createSelectorDrawable(ColorUtils.setAlphaComponent(themedColor, 24), 1));
        }
        this.sendButtonContainer.addView(this.sendButton, LayoutHelper.createFrame(48, 48));
        this.sendButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatActivityEnterView.this.lambda$new$13(view2);
            }
        });
        this.sendButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda33
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean onSendLongClick;
                onSendLongClick = ChatActivityEnterView.this.onSendLongClick(view2);
                return onSendLongClick;
            }
        });
        SimpleTextView simpleTextView = new SimpleTextView(activity);
        this.slowModeButton = simpleTextView;
        simpleTextView.setTextSize(18);
        this.slowModeButton.setVisibility(4);
        this.slowModeButton.setSoundEffectsEnabled(false);
        this.slowModeButton.setScaleX(0.1f);
        this.slowModeButton.setScaleY(0.1f);
        this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.slowModeButton.setPadding(0, 0, AndroidUtilities.m104dp(13), 0);
        this.slowModeButton.setGravity(21);
        this.slowModeButton.setTextColor(getThemedColor(i3));
        this.sendButtonContainer.addView(this.slowModeButton, LayoutHelper.createFrame(64, 48, 53));
        this.slowModeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatActivityEnterView.this.lambda$new$14(view2);
            }
        });
        this.slowModeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda34
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean lambda$new$15;
                lambda$new$15 = ChatActivityEnterView.this.lambda$new$15(view2);
                return lambda$new$15;
            }
        });
        SharedPreferences globalEmojiSettings = MessagesController.getGlobalEmojiSettings();
        this.keyboardHeight = globalEmojiSettings.getInt("kbd_height", AndroidUtilities.m104dp(200));
        this.keyboardHeightLand = globalEmojiSettings.getInt("kbd_height_land3", AndroidUtilities.m104dp(200));
        setRecordVideoButtonVisible(false, false);
        checkSendButton(false);
        checkChannelRights();
        createMessageEditText();
    }

    public /* synthetic */ void lambda$new$6(View view) {
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if (adjustPanLayoutHelper == null || !adjustPanLayoutHelper.animationInProgress()) {
            if (this.emojiButtonRestricted) {
                showRestrictedHint();
            } else if (hasBotWebView() && botCommandsMenuIsShowing()) {
                BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
                if (botWebViewMenuContainer != null) {
                    Objects.requireNonNull(view);
                    botWebViewMenuContainer.dismiss(new ChatActivityEnterView$$ExternalSyntheticLambda40(view));
                }
            } else {
                boolean z = true;
                if (!isPopupShowing() || this.currentPopupContentType != 0) {
                    showPopup(1, 0);
                    EmojiView emojiView = this.emojiView;
                    EditTextCaption editTextCaption = this.messageEditText;
                    if (editTextCaption == null || editTextCaption.length() <= 0) {
                        z = false;
                    }
                    emojiView.onOpen(z);
                    return;
                }
                if (this.searchingType != 0) {
                    setSearchingTypeInternal(0, true);
                    EmojiView emojiView2 = this.emojiView;
                    if (emojiView2 != null) {
                        emojiView2.closeSearch(false);
                    }
                    EditTextCaption editTextCaption2 = this.messageEditText;
                    if (editTextCaption2 != null) {
                        editTextCaption2.requestFocus();
                    }
                }
                if (this.stickersExpanded) {
                    setStickersExpanded(false, true, false);
                    this.waitingForKeyboardOpenAfterAnimation = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda44
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatActivityEnterView.this.lambda$new$5();
                        }
                    }, 200L);
                    return;
                }
                openKeyboardInternal();
            }
        }
    }

    public /* synthetic */ void lambda$new$5() {
        this.waitingForKeyboardOpenAfterAnimation = false;
        openKeyboardInternal();
    }

    public /* synthetic */ void lambda$new$7(View view) {
        openTranslateDialog();
    }

    public /* synthetic */ void lambda$new$8(View view) {
        if (this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_WEB) {
            this.isFormattingMessagesContainerWebVisible = !this.isFormattingMessagesContainerWebVisible;
            this.delegate.bottomPanelTranslationYChanged(-AndroidUtilities.m104dp(60));
        } else if (isPopupShowing() && this.currentPopupContentType == 2) {
            showPopup(0, 2);
        } else {
            createFormattingMessagesContainer();
            showPopup(1, 2);
            this.formattingMessagesKeyboardContainer.setEnabledView(true);
            this.formattingMessagesKeyboardContainer.updateView();
        }
        updateFormattingButton();
    }

    public /* synthetic */ boolean lambda$new$10(Activity activity, View view) {
        if (this.isFormattingMessagesContainerVisible) {
            return false;
        }
        this.parentFragment.showDialog(this.accountInstance.getFormattingTextController().createChooseSelectedFormattingPanelType(activity), new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ChatActivityEnterView.this.lambda$new$9(dialogInterface);
            }
        });
        return true;
    }

    public /* synthetic */ void lambda$new$9(DialogInterface dialogInterface) {
        if (this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_KEYBOARD) {
            this.accountInstance.getFormattingTextController().setFormattingMessagesContainer(this.formattingMessagesKeyboardContainer);
        } else if (this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_WEB) {
            this.accountInstance.getFormattingTextController().setFormattingMessagesContainer(this.formattingMessagesWeb);
        }
        setShowFormattingButton(this.accountInstance.getFormattingTextController().getFormattingPanelType() != FormattingPanelType.DEFAULT);
    }

    public /* synthetic */ void lambda$new$11(View view) {
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if ((adjustPanLayoutHelper == null || !adjustPanLayoutHelper.animationInProgress()) && this.attachLayoutPaddingAlpha != BitmapDescriptorFactory.HUE_RED) {
            this.delegate.didPressAttachButton();
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$20 */
    /* loaded from: classes6.dex */
    public class C457920 extends FrameLayout {
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C457920(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            ChatActivityEnterView.this = r1;
            this.val$resourcesProvider = resourcesProvider;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            FrameLayout frameLayout;
            ChatActivityEnterView chatActivityEnterView;
            ChatActivityEnterView chatActivityEnterView2;
            ChatActivityEnterView.this.createRecordCircle();
            int i = 3;
            if (motionEvent.getAction() == 0) {
                if (ChatActivityEnterView.this.recordCircle.isSendButtonVisible()) {
                    if (!ChatActivityEnterView.this.hasRecordVideo || ChatActivityEnterView.this.calledRecordRunnable) {
                        ChatActivityEnterView.this.startedDraggingX = -1.0f;
                        if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                            if ((ChatActivityEnterView.this.recordingAudioVideo && ChatActivityEnterView.this.isInScheduleMode()) || (ChatActivityEnterView.this.recordingAudioVideo && ChatActivityEnterView.this.isTemplatesChannel(true, true))) {
                                AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda4
                                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                                    public final void didSelectDate(boolean z, int i2, String str) {
                                        ChatActivityEnterView.C457920.lambda$onTouchEvent$0(z, i2, str);
                                    }

                                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                                    public /* synthetic */ ArrayList getSelectedDialogs() {
                                        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                                    }
                                }, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ChatActivityEnterView.C457920.lambda$onTouchEvent$1();
                                    }
                                }, this.val$resourcesProvider, ChatActivityEnterView.this.parentFragment);
                            }
                            MediaController mediaController = MediaController.getInstance();
                            if (!ChatActivityEnterView.this.isInScheduleMode() && !ChatActivityEnterView.this.isTemplatesChannel(true, true)) {
                                i = 1;
                            }
                            mediaController.stopRecording(i, true, 0, null);
                            ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                        } else {
                            ChatActivityEnterView.this.delegate.needStartRecordVideo(1, true, 0);
                        }
                        ChatActivityEnterView.this.recordingAudioVideo = false;
                        ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                        chatActivityEnterView3.messageTransitionIsRunning = false;
                        AndroidUtilities.runOnUIThread(chatActivityEnterView3.moveToSendStateRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.C457920.this.lambda$onTouchEvent$2();
                            }
                        }, 200L);
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    return true;
                }
                TLRPC$Chat currentChat = ChatActivityEnterView.this.parentFragment != null ? ChatActivityEnterView.this.parentFragment.getCurrentChat() : null;
                TLRPC$UserFull currentUserInfo = ChatActivityEnterView.this.parentFragment == null ? ChatActivityEnterView.this.userInfo : ChatActivityEnterView.this.parentFragment.getCurrentUserInfo();
                if ((currentChat == null || ChatObject.canSendVoice(currentChat) || (ChatObject.canSendRoundVideo(currentChat) && ChatActivityEnterView.this.hasRecordVideo)) && (currentUserInfo == null || !currentUserInfo.voice_messages_forbidden)) {
                    if (ChatActivityEnterView.this.hasRecordVideo) {
                        ChatActivityEnterView.this.calledRecordRunnable = false;
                        ChatActivityEnterView.this.recordAudioVideoRunnableStarted = true;
                        AndroidUtilities.runOnUIThread(ChatActivityEnterView.this.recordAudioVideoRunnable, 150L);
                    } else {
                        ChatActivityEnterView.this.recordAudioVideoRunnable.run();
                    }
                    return true;
                }
                ChatActivityEnterView.this.delegate.needShowMediaBanHint();
                return true;
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                if (motionEvent.getAction() != 3 || !ChatActivityEnterView.this.recordingAudioVideo) {
                    if ((ChatActivityEnterView.this.recordCircle == null || !ChatActivityEnterView.this.recordCircle.isSendButtonVisible()) && ((frameLayout = ChatActivityEnterView.this.recordedAudioPanel) == null || frameLayout.getVisibility() != 0)) {
                        if ((((motionEvent.getX() + ChatActivityEnterView.this.audioVideoButtonContainer.getX()) - ChatActivityEnterView.this.startedDraggingX) / ChatActivityEnterView.this.distCanMove) + 1.0f < 0.45d) {
                            if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                                ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                                MediaController.getInstance().stopRecording(0, false, 0, null);
                            } else {
                                CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                                ChatActivityEnterView.this.delegate.needStartRecordVideo(2, true, 0);
                            }
                            ChatActivityEnterView.this.recordingAudioVideo = false;
                            ChatActivityEnterView.this.updateRecordInterface(5);
                        } else if (ChatActivityEnterView.this.recordAudioVideoRunnableStarted) {
                            AndroidUtilities.cancelRunOnUIThread(ChatActivityEnterView.this.recordAudioVideoRunnable);
                            if (!ChatActivityEnterView.this.sendVoiceEnabled || !ChatActivityEnterView.this.sendRoundEnabled) {
                                ChatActivityEnterView.this.delegate.needShowMediaBanHint();
                            } else {
                                ChatActivityEnterView.this.delegate.onSwitchRecordMode(!ChatActivityEnterView.this.isInVideoMode());
                                ChatActivityEnterView.this.setRecordVideoButtonVisible(!chatActivityEnterView.isInVideoMode(), true);
                            }
                            performHapticFeedback(3);
                            sendAccessibilityEvent(1);
                        } else if (!ChatActivityEnterView.this.hasRecordVideo || ChatActivityEnterView.this.calledRecordRunnable) {
                            ChatActivityEnterView.this.startedDraggingX = -1.0f;
                            if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                                if (!ChatActivityEnterView.this.sendVoiceEnabled) {
                                    ChatActivityEnterView.this.delegate.needShowMediaBanHint();
                                } else {
                                    if ((ChatActivityEnterView.this.recordingAudioVideo && ChatActivityEnterView.this.isInScheduleMode()) || (ChatActivityEnterView.this.recordingAudioVideo && ChatActivityEnterView.this.isTemplatesChannel(true, true))) {
                                        AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda5
                                            @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                                            public final void didSelectDate(boolean z, int i2, String str) {
                                                ChatActivityEnterView.C457920.lambda$onTouchEvent$3(z, i2, str);
                                            }

                                            @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                                            public /* synthetic */ ArrayList getSelectedDialogs() {
                                                return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                                            }
                                        }, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda3
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ChatActivityEnterView.C457920.lambda$onTouchEvent$4();
                                            }
                                        }, this.val$resourcesProvider, ChatActivityEnterView.this.parentFragment);
                                    }
                                    ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                                    MediaController mediaController2 = MediaController.getInstance();
                                    if (!ChatActivityEnterView.this.isInScheduleMode() && !ChatActivityEnterView.this.isTemplatesChannel(true, true)) {
                                        i = 1;
                                    }
                                    mediaController2.stopRecording(i, true, 0, null);
                                }
                            } else {
                                CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                                ChatActivityEnterView.this.delegate.needStartRecordVideo(1, true, 0);
                            }
                            ChatActivityEnterView.this.recordingAudioVideo = false;
                            ChatActivityEnterView chatActivityEnterView4 = ChatActivityEnterView.this;
                            chatActivityEnterView4.messageTransitionIsRunning = false;
                            AndroidUtilities.runOnUIThread(chatActivityEnterView4.moveToSendStateRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$20$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ChatActivityEnterView.C457920.this.lambda$onTouchEvent$5();
                                }
                            }, ChatActivityEnterView.this.shouldDrawBackground ? 500L : 0L);
                        }
                        return true;
                    }
                    if (ChatActivityEnterView.this.recordAudioVideoRunnableStarted) {
                        AndroidUtilities.cancelRunOnUIThread(ChatActivityEnterView.this.recordAudioVideoRunnable);
                    }
                    return false;
                }
                if (ChatActivityEnterView.this.recordCircle.slideToCancelProgress < 0.7f) {
                    if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                        ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                        MediaController.getInstance().stopRecording(0, false, 0, null);
                    } else {
                        CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                        ChatActivityEnterView.this.delegate.needStartRecordVideo(2, true, 0);
                    }
                    ChatActivityEnterView.this.recordingAudioVideo = false;
                    ChatActivityEnterView.this.updateRecordInterface(5);
                } else {
                    ChatActivityEnterView.this.recordCircle.sendButtonVisible = true;
                    ChatActivityEnterView.this.startLockTransition();
                }
                return false;
            }
            if (motionEvent.getAction() == 2 && ChatActivityEnterView.this.recordingAudioVideo) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (ChatActivityEnterView.this.recordCircle.isSendButtonVisible()) {
                    return false;
                }
                if (ChatActivityEnterView.this.recordCircle.setLockTranslation(y) == 2) {
                    ChatActivityEnterView.this.startLockTransition();
                    return false;
                }
                ChatActivityEnterView.this.recordCircle.setMovingCords(x, y);
                if (ChatActivityEnterView.this.startedDraggingX == -1.0f) {
                    ChatActivityEnterView.this.startedDraggingX = x;
                    ChatActivityEnterView.this.distCanMove = (float) (chatActivityEnterView2.sizeNotifierLayout.getMeasuredWidth() * 0.35d);
                    if (ChatActivityEnterView.this.distCanMove > AndroidUtilities.m104dp(140)) {
                        ChatActivityEnterView.this.distCanMove = AndroidUtilities.m104dp(140);
                    }
                }
                float x2 = (((x + ChatActivityEnterView.this.audioVideoButtonContainer.getX()) - ChatActivityEnterView.this.startedDraggingX) / ChatActivityEnterView.this.distCanMove) + 1.0f;
                if (ChatActivityEnterView.this.startedDraggingX != -1.0f) {
                    float f = x2 <= 1.0f ? x2 < BitmapDescriptorFactory.HUE_RED ? 0.0f : x2 : 1.0f;
                    if (ChatActivityEnterView.this.slideText != null) {
                        ChatActivityEnterView.this.slideText.setSlideX(f);
                    }
                    if (ChatActivityEnterView.this.recordCircle != null) {
                        ChatActivityEnterView.this.recordCircle.setSlideToCancelProgress(f);
                    }
                    x2 = f;
                }
                if (x2 == BitmapDescriptorFactory.HUE_RED) {
                    if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                        ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                        MediaController.getInstance().stopRecording(0, false, 0, null);
                    } else {
                        CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                        ChatActivityEnterView.this.delegate.needStartRecordVideo(2, true, 0);
                    }
                    ChatActivityEnterView.this.recordingAudioVideo = false;
                    ChatActivityEnterView.this.updateRecordInterface(5);
                }
            }
            return true;
        }

        public static /* synthetic */ void lambda$onTouchEvent$0(boolean z, int i, String str) {
            MediaController.getInstance().stopRecording(1, z, i, str);
        }

        public static /* synthetic */ void lambda$onTouchEvent$1() {
            MediaController.getInstance().stopRecording(0, false, 0, null);
        }

        public /* synthetic */ void lambda$onTouchEvent$2() {
            ChatActivityEnterView.this.moveToSendStateRunnable = null;
            ChatActivityEnterView.this.updateRecordInterface(1);
        }

        public static /* synthetic */ void lambda$onTouchEvent$3(boolean z, int i, String str) {
            MediaController.getInstance().stopRecording(1, z, i, str);
        }

        public static /* synthetic */ void lambda$onTouchEvent$4() {
            MediaController.getInstance().stopRecording(0, false, 0, null);
        }

        public /* synthetic */ void lambda$onTouchEvent$5() {
            ChatActivityEnterView.this.moveToSendStateRunnable = null;
            ChatActivityEnterView.this.updateRecordInterface(1);
        }
    }

    public /* synthetic */ void lambda$new$12(View view) {
        EditTextCaption editTextCaption = this.messageEditText;
        String obj = editTextCaption != null ? editTextCaption.getText().toString() : "";
        int indexOf = obj.indexOf(32);
        if (indexOf == -1 || indexOf == obj.length() - 1) {
            setFieldText("");
        } else {
            setFieldText(obj.substring(0, indexOf + 1));
        }
    }

    public /* synthetic */ void lambda$new$13(View view) {
        if (this.isFormattingMessagesContainerVisible) {
            showPopup(0, 2, true);
            setShowFormattingButton(false);
        }
        if (this.isFormattingMessagesContainerWebVisible) {
            this.isFormattingMessagesContainerWebVisible = false;
            this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
        }
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            AnimatorSet animatorSet = this.runningAnimationAudio;
            if ((animatorSet == null || !animatorSet.isRunning()) && this.moveToSendStateRunnable == null) {
                sendMessage();
            }
        }
    }

    public /* synthetic */ void lambda$new$14(View view) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            SimpleTextView simpleTextView = this.slowModeButton;
            chatActivityEnterViewDelegate.onUpdateSlowModeButton(simpleTextView, true, simpleTextView.getText());
        }
    }

    public /* synthetic */ boolean lambda$new$15(View view) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || editTextCaption.length() <= 0) {
            return false;
        }
        return onSendLongClick(view);
    }

    public void createCaptionLimitView() {
        if (this.captionLimitView != null) {
            return;
        }
        NumberTextView numberTextView = new NumberTextView(getContext());
        this.captionLimitView = numberTextView;
        numberTextView.setVisibility(8);
        this.captionLimitView.setTextSize(15);
        this.captionLimitView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        this.captionLimitView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.captionLimitView.setCenterAlign(true);
        addView(this.captionLimitView, 3, LayoutHelper.createFrame(48, 20, 85, 3, 0, 0, 48));
    }

    private void createScheduledButton() {
        if (this.scheduledButton != null || this.parentFragment == null) {
            return;
        }
        Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.input_calendar1).mutate();
        Drawable mutate2 = getContext().getResources().getDrawable(C3632R.C3634drawable.input_calendar2).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        mutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_recordedVoiceDot), PorterDuff.Mode.MULTIPLY));
        CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, mutate2);
        ImageView imageView = new ImageView(getContext());
        this.scheduledButton = imageView;
        imageView.setImageDrawable(combinedDrawable);
        this.scheduledButton.setVisibility(8);
        this.scheduledButton.setContentDescription(LocaleController.getString("ScheduledMessages", C3632R.string.ScheduledMessages));
        this.scheduledButton.setScaleType(ImageView.ScaleType.CENTER);
        if (Build.VERSION.SDK_INT >= 21) {
            this.scheduledButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.messageEditTextContainer.addView(this.scheduledButton, 2, LayoutHelper.createFrame(48, 48, 85));
        this.scheduledButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createScheduledButton$16(view);
            }
        });
    }

    public /* synthetic */ void lambda$createScheduledButton$16(View view) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.openScheduledMessages();
        }
    }

    private void createGiftButton() {
        if (this.giftButton != null || this.parentFragment == null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        this.giftButton = imageView;
        imageView.setImageResource(C3632R.C3634drawable.msg_input_gift);
        this.giftButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        this.giftButton.setVisibility(8);
        this.giftButton.setContentDescription(LocaleController.getString(C3632R.string.GiftPremium));
        this.giftButton.setScaleType(ImageView.ScaleType.CENTER);
        if (Build.VERSION.SDK_INT >= 21) {
            this.giftButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.attachLayout.addView(this.giftButton, 0, LayoutHelper.createFrame(48, 48, 21));
        this.giftButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createGiftButton$17(view);
            }
        });
    }

    public /* synthetic */ void lambda$createGiftButton$17(View view) {
        SharedPreferences.Editor edit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        edit.putBoolean("show_gift_for_" + this.parentFragment.getDialogId(), false).apply();
        AndroidUtilities.updateViewVisibilityAnimated(this.giftButton, false);
        new GiftPremiumBottomSheet(getParentFragment(), getParentFragment().getCurrentUser()).show();
    }

    private void createBotButton() {
        if (this.botButton != null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        this.botButton = imageView;
        ReplaceableIconDrawable replaceableIconDrawable = new ReplaceableIconDrawable(getContext());
        this.botButtonDrawable = replaceableIconDrawable;
        imageView.setImageDrawable(replaceableIconDrawable);
        this.botButtonDrawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.MULTIPLY));
        this.botButtonDrawable.setIcon(C3632R.C3634drawable.input_bot2, false);
        this.botButton.setScaleType(ImageView.ScaleType.CENTER);
        if (Build.VERSION.SDK_INT >= 21) {
            this.botButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.botButton.setVisibility(8);
        AndroidUtilities.updateViewVisibilityAnimated(this.botButton, false, 0.1f, false);
        this.attachLayout.addView(this.botButton, 0, LayoutHelper.createLinear(48, 48));
        this.botButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda30
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createBotButton$18(view);
            }
        });
    }

    public /* synthetic */ void lambda$createBotButton$18(View view) {
        if (hasBotWebView() && botCommandsMenuIsShowing()) {
            BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
            Objects.requireNonNull(view);
            botWebViewMenuContainer.dismiss(new ChatActivityEnterView$$ExternalSyntheticLambda40(view));
            return;
        }
        if (this.searchingType != 0) {
            setSearchingTypeInternal(0, false);
            this.emojiView.closeSearch(false);
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.requestFocus();
            }
        }
        if (this.botReplyMarkup != null) {
            if (!isPopupShowing() || this.currentPopupContentType != 1) {
                showPopup(1, 1);
            } else if (isPopupShowing() && this.currentPopupContentType == 1) {
                showPopup(0, 1);
            }
        } else if (this.hasBotCommands) {
            setFieldText("/");
            EditTextCaption editTextCaption2 = this.messageEditText;
            if (editTextCaption2 != null) {
                editTextCaption2.requestFocus();
            }
            openKeyboard();
        }
        if (this.stickersExpanded) {
            setStickersExpanded(false, false, false);
        }
    }

    private void createDoneButton() {
        if (this.doneButtonContainer != null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.doneButtonContainer = frameLayout;
        frameLayout.setVisibility(8);
        this.textFieldContainer.addView(this.doneButtonContainer, LayoutHelper.createFrame(48, 48, 85));
        this.doneButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createDoneButton$19(view);
            }
        });
        ShapeDrawable createCircleDrawable = Theme.createCircleDrawable(AndroidUtilities.m104dp(16), getThemedColor(Theme.key_chat_messagePanelSend));
        Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.input_done).mutate();
        this.doneCheckDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelVoicePressed), PorterDuff.Mode.MULTIPLY));
        CombinedDrawable combinedDrawable = new CombinedDrawable(createCircleDrawable, this.doneCheckDrawable, 0, AndroidUtilities.m104dp(1));
        combinedDrawable.setCustomSize(AndroidUtilities.m104dp(32), AndroidUtilities.m104dp(32));
        ImageView imageView = new ImageView(getContext());
        this.doneButtonImage = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.doneButtonImage.setImageDrawable(combinedDrawable);
        this.doneButtonImage.setContentDescription(LocaleController.getString("Done", C3632R.string.Done));
        this.doneButtonContainer.addView(this.doneButtonImage, LayoutHelper.createFrame(48, 48));
        ContextProgressView contextProgressView = new ContextProgressView(getContext(), 0);
        this.doneButtonProgress = contextProgressView;
        contextProgressView.setVisibility(4);
        this.doneButtonContainer.addView(this.doneButtonProgress, LayoutHelper.createFrame(-1, -1));
    }

    public /* synthetic */ void lambda$createDoneButton$19(View view) {
        doneEditingMessage();
    }

    private void createExpandStickersButton() {
        if (this.expandStickersButton != null) {
            return;
        }
        ImageView imageView = new ImageView(this, getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.23
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.expandStickersButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView2 = this.expandStickersButton;
        AnimatedArrowDrawable animatedArrowDrawable = new AnimatedArrowDrawable(getThemedColor(Theme.key_chat_messagePanelIcons), false);
        this.stickersArrow = animatedArrowDrawable;
        imageView2.setImageDrawable(animatedArrowDrawable);
        this.expandStickersButton.setVisibility(8);
        this.expandStickersButton.setScaleX(0.1f);
        this.expandStickersButton.setScaleY(0.1f);
        this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        if (Build.VERSION.SDK_INT >= 21) {
            this.expandStickersButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.sendButtonContainer.addView(this.expandStickersButton, LayoutHelper.createFrame(48, 48));
        this.expandStickersButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createExpandStickersButton$20(view);
            }
        });
        this.expandStickersButton.setContentDescription(LocaleController.getString("AccDescrExpandPanel", C3632R.string.AccDescrExpandPanel));
    }

    public /* synthetic */ void lambda$createExpandStickersButton$20(View view) {
        EmojiView emojiView;
        EditTextCaption editTextCaption;
        if (this.expandStickersButton.getVisibility() == 0 && this.expandStickersButton.getAlpha() == 1.0f && !this.waitingForKeyboardOpen) {
            if (this.keyboardVisible && (editTextCaption = this.messageEditText) != null && editTextCaption.isFocused()) {
                return;
            }
            if (this.stickersExpanded) {
                if (this.searchingType != 0) {
                    setSearchingTypeInternal(0, true);
                    this.emojiView.closeSearch(true);
                    this.emojiView.hideSearchKeyboard();
                    if (this.emojiTabOpen) {
                        checkSendButton(true);
                    }
                } else if (!this.stickersDragging && (emojiView = this.emojiView) != null) {
                    emojiView.showSearchField(false);
                }
            } else if (!this.stickersDragging) {
                this.emojiView.showSearchField(true);
            }
            if (this.stickersDragging) {
                return;
            }
            setStickersExpanded(!this.stickersExpanded, true, false);
        }
    }

    private void createRecordAudioPanel() {
        if (this.recordedAudioPanel != null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.24
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.View
            public void setVisibility(int i) {
                super.setVisibility(i);
                ChatActivityEnterView.this.updateSendAsButton();
            }
        };
        this.recordedAudioPanel = frameLayout;
        frameLayout.setVisibility(this.audioToSend == null ? 8 : 0);
        this.recordedAudioPanel.setFocusable(true);
        this.recordedAudioPanel.setFocusableInTouchMode(true);
        this.recordedAudioPanel.setClickable(true);
        this.messageEditTextContainer.addView(this.recordedAudioPanel, LayoutHelper.createFrame(-1, 48, 80));
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        this.recordDeleteImageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.recordDeleteImageView.setAnimation(C3632R.raw.chat_audio_record_delete_2, 28, 28);
        this.recordDeleteImageView.getAnimatedDrawable().setInvalidateOnProgressSet(true);
        updateRecordedDeleteIconColors();
        this.recordDeleteImageView.setContentDescription(LocaleController.getString("Delete", C3632R.string.Delete));
        if (Build.VERSION.SDK_INT >= 21) {
            this.recordDeleteImageView.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
        this.recordedAudioPanel.addView(this.recordDeleteImageView, LayoutHelper.createFrame(48, 48));
        this.recordDeleteImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createRecordAudioPanel$21(view);
            }
        });
        VideoTimelineView videoTimelineView = new VideoTimelineView(getContext());
        this.videoTimelineView = videoTimelineView;
        videoTimelineView.useClip = !this.shouldDrawBackground;
        videoTimelineView.setRoundFrames(true);
        this.videoTimelineView.setDelegate(new VideoTimelineView.VideoTimelineViewDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.25
            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void onLeftProgressChanged(float f) {
                if (ChatActivityEnterView.this.videoToSendMessageObject == null) {
                    return;
                }
                ChatActivityEnterView.this.videoToSendMessageObject.startTime = ((float) ChatActivityEnterView.this.videoToSendMessageObject.estimatedDuration) * f;
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(2, f);
            }

            @Override // org.telegram.p043ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void onRightProgressChanged(float f) {
                if (ChatActivityEnterView.this.videoToSendMessageObject == null) {
                    return;
                }
                ChatActivityEnterView.this.videoToSendMessageObject.endTime = ((float) ChatActivityEnterView.this.videoToSendMessageObject.estimatedDuration) * f;
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(2, f);
            }

            @Override // org.telegram.p043ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void didStartDragging() {
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(1, BitmapDescriptorFactory.HUE_RED);
            }

            @Override // org.telegram.p043ui.Components.VideoTimelineView.VideoTimelineViewDelegate
            public void didStopDragging() {
                ChatActivityEnterView.this.delegate.needChangeVideoPreviewState(0, BitmapDescriptorFactory.HUE_RED);
            }
        });
        this.recordedAudioPanel.addView(this.videoTimelineView, LayoutHelper.createFrame(-1, -1, 19, 56, 0, 8, 0));
        VideoTimelineView.TimeHintView timeHintView = new VideoTimelineView.TimeHintView(getContext());
        this.videoTimelineView.setTimeHintView(timeHintView);
        this.sizeNotifierLayout.addView(timeHintView, LayoutHelper.createFrame(-1, -2, 80, 0, 0, 0, 52));
        View view = new View(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.26
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                getBackground().setBounds((int) ChatActivityEnterView.this.horizontalPadding, 0, (int) (getMeasuredWidth() - ChatActivityEnterView.this.horizontalPadding), getMeasuredHeight());
                getBackground().draw(canvas);
            }
        };
        this.recordedAudioBackground = view;
        view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(18), getThemedColor(Theme.key_chat_recordedVoiceBackground)));
        this.recordedAudioPanel.addView(this.recordedAudioBackground, LayoutHelper.createFrame(-1, 36, 19, 48, 0, 0, 0));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        this.recordedAudioPanel.addView(linearLayout, LayoutHelper.createFrame(-1, 32, 19, 92, 0, 13, 0));
        this.recordedAudioPlayButton = new ImageView(getContext());
        Matrix matrix = new Matrix();
        matrix.postScale(0.8f, 0.8f, AndroidUtilities.dpf2(24.0f), AndroidUtilities.dpf2(24.0f));
        this.recordedAudioPlayButton.setImageMatrix(matrix);
        ImageView imageView = this.recordedAudioPlayButton;
        MediaActionDrawable mediaActionDrawable = new MediaActionDrawable();
        this.playPauseDrawable = mediaActionDrawable;
        imageView.setImageDrawable(mediaActionDrawable);
        this.recordedAudioPlayButton.setScaleType(ImageView.ScaleType.MATRIX);
        this.recordedAudioPlayButton.setContentDescription(LocaleController.getString("AccActionPlay", C3632R.string.AccActionPlay));
        this.recordedAudioPanel.addView(this.recordedAudioPlayButton, LayoutHelper.createFrame(48, 48, 83, 48, 0, 13, 0));
        this.recordedAudioPlayButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatActivityEnterView.this.lambda$createRecordAudioPanel$22(view2);
            }
        });
        SeekBarWaveformView seekBarWaveformView = new SeekBarWaveformView(getContext());
        this.recordedAudioSeekBar = seekBarWaveformView;
        linearLayout.addView(seekBarWaveformView, LayoutHelper.createLinear(0, 32, 1.0f, 16, 0, 0, 4, 0));
        TextView textView = new TextView(getContext());
        this.recordedAudioTimeTextView = textView;
        textView.setTextColor(getThemedColor(Theme.key_chat_messagePanelVoiceDuration));
        this.recordedAudioTimeTextView.setTextSize(1, 13.0f);
        linearLayout.addView(this.recordedAudioTimeTextView, LayoutHelper.createLinear(-2, -2, BitmapDescriptorFactory.HUE_RED, 16));
    }

    public /* synthetic */ void lambda$createRecordAudioPanel$21(View view) {
        AnimatorSet animatorSet = this.runningAnimationAudio;
        if (animatorSet == null || !animatorSet.isRunning()) {
            resetRecordedState();
        }
    }

    public /* synthetic */ void lambda$createRecordAudioPanel$22(View view) {
        if (this.audioToSend == null) {
            return;
        }
        if (MediaController.getInstance().isPlayingMessage(this.audioToSendMessageObject) && !MediaController.getInstance().isMessagePaused()) {
            MediaController.getInstance().lambda$startAudioAgain$7(this.audioToSendMessageObject);
            this.playPauseDrawable.setIcon(0, true);
            this.recordedAudioPlayButton.setContentDescription(LocaleController.getString("AccActionPlay", C3632R.string.AccActionPlay));
            return;
        }
        this.playPauseDrawable.setIcon(1, true);
        MediaController.getInstance().playMessage(this.audioToSendMessageObject);
        this.recordedAudioPlayButton.setContentDescription(LocaleController.getString("AccActionPause", C3632R.string.AccActionPause));
    }

    private void resetRecordedState() {
        if (this.videoToSendMessageObject != null) {
            CameraController.getInstance().cancelOnInitRunnable(this.onFinishInitCameraRunnable);
            this.delegate.needStartRecordVideo(2, true, 0);
        } else {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject != null && playingMessageObject == this.audioToSendMessageObject) {
                MediaController.getInstance().cleanupPlayer(true, true);
            }
        }
        if (this.audioToSendPath != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m102d("delete file " + this.audioToSendPath);
            }
            new File(this.audioToSendPath).delete();
        }
        hideRecordedAudioPanel(false);
        checkSendButton(true);
    }

    public void createSenderSelectView() {
        if (this.senderSelectView != null) {
            return;
        }
        SenderSelectView senderSelectView = new SenderSelectView(getContext());
        this.senderSelectView = senderSelectView;
        senderSelectView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createSenderSelectView$30(view);
            }
        });
        this.senderSelectView.setVisibility(8);
        this.messageEditTextContainer.addView(this.senderSelectView, LayoutHelper.createFrame(32, 32, 83, 10, 8, 10, 8));
        this.initialSenderSelectViewLeftMargin = ((ViewGroup.MarginLayoutParams) this.senderSelectView.getLayoutParams()).leftMargin;
    }

    public /* synthetic */ void lambda$createSenderSelectView$30(View view) {
        int i;
        int i2;
        if (botCommandsMenuIsShowing()) {
            hideBotCommands();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$createSenderSelectView$23();
                }
            }, 150L);
        } else if (getTranslationY() != BitmapDescriptorFactory.HUE_RED) {
            this.onEmojiSearchClosed = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$createSenderSelectView$24();
                }
            };
            hidePopup(true, true);
        } else {
            if (this.delegate.measureKeyboardHeight() > AndroidUtilities.m104dp(20)) {
                int contentViewHeight = this.delegate.getContentViewHeight();
                int measureKeyboardHeight = this.delegate.measureKeyboardHeight();
                if (measureKeyboardHeight <= AndroidUtilities.m104dp(20)) {
                    contentViewHeight += measureKeyboardHeight;
                }
                if (this.emojiViewVisible) {
                    contentViewHeight -= getEmojiPadding();
                }
                if (contentViewHeight < AndroidUtilities.m104dp(200)) {
                    this.onKeyboardClosed = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda61
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatActivityEnterView.this.lambda$createSenderSelectView$25();
                        }
                    };
                    closeKeyboard();
                    return;
                }
            }
            if (this.delegate.getSendAsPeers() != null) {
                try {
                    view.performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
                SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
                if (senderSelectPopup != null) {
                    senderSelectPopup.setPauseNotifications(false);
                    this.senderSelectPopupWindow.startDismissAnimation(new SpringAnimation[0]);
                    return;
                }
                final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                final TLRPC$ChatFull chatFull = messagesController.getChatFull(-this.dialog_id);
                if (chatFull == null) {
                    return;
                }
                final FrameLayout overlayContainerView = this.parentFragment.getParentLayout().getOverlayContainerView();
                SenderSelectPopup senderSelectPopup2 = new SenderSelectPopup(getContext(), this.parentFragment, messagesController, chatFull, this.delegate.getSendAsPeers(), new SenderSelectPopup.OnSelectCallback() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda76
                    @Override // org.telegram.p043ui.Components.SenderSelectPopup.OnSelectCallback
                    public final void onPeerSelected(RecyclerView recyclerView, SenderSelectPopup.SenderView senderView, TLRPC$Peer tLRPC$Peer) {
                        ChatActivityEnterView.this.lambda$createSenderSelectView$29(chatFull, messagesController, recyclerView, senderView, tLRPC$Peer);
                    }
                }) { // from class: org.telegram.ui.Components.ChatActivityEnterView.27
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // org.telegram.p043ui.Components.SenderSelectPopup, org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                    public void dismiss() {
                        if (ChatActivityEnterView.this.senderSelectPopupWindow == this) {
                            ChatActivityEnterView.this.senderSelectPopupWindow = null;
                            if (!this.runningCustomSprings) {
                                startDismissAnimation(new SpringAnimation[0]);
                                ChatActivityEnterView.this.senderSelectView.setProgress(BitmapDescriptorFactory.HUE_RED, true, true);
                                return;
                            }
                            for (SpringAnimation springAnimation : this.springAnimations) {
                                springAnimation.cancel();
                            }
                            this.springAnimations.clear();
                            super.dismiss();
                            return;
                        }
                        overlayContainerView.removeView(this.dimView);
                        super.dismiss();
                    }
                };
                this.senderSelectPopupWindow = senderSelectPopup2;
                senderSelectPopup2.setPauseNotifications(true);
                this.senderSelectPopupWindow.setDismissAnimationDuration(220);
                this.senderSelectPopupWindow.setOutsideTouchable(true);
                this.senderSelectPopupWindow.setClippingEnabled(true);
                this.senderSelectPopupWindow.setFocusable(true);
                this.senderSelectPopupWindow.getContentView().measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(1000), Integer.MIN_VALUE));
                this.senderSelectPopupWindow.setInputMethodMode(2);
                this.senderSelectPopupWindow.setSoftInputMode(0);
                this.senderSelectPopupWindow.getContentView().setFocusableInTouchMode(true);
                this.senderSelectPopupWindow.setAnimationEnabled(false);
                int i3 = -AndroidUtilities.m104dp(4);
                int[] iArr = new int[2];
                if (AndroidUtilities.isTablet()) {
                    this.parentFragment.getFragmentView().getLocationInWindow(iArr);
                    i = iArr[0] + i3;
                } else {
                    i = i3;
                }
                int contentViewHeight2 = this.delegate.getContentViewHeight();
                int measuredHeight = this.senderSelectPopupWindow.getContentView().getMeasuredHeight();
                int measureKeyboardHeight2 = this.delegate.measureKeyboardHeight();
                if (measureKeyboardHeight2 <= AndroidUtilities.m104dp(20)) {
                    contentViewHeight2 += measureKeyboardHeight2;
                }
                if (this.emojiViewVisible) {
                    contentViewHeight2 -= getEmojiPadding();
                }
                int m104dp = AndroidUtilities.m104dp(1);
                if (measuredHeight < (((i3 * 2) + contentViewHeight2) - (this.parentFragment.isInBubbleMode() ? 0 : AndroidUtilities.statusBarHeight)) - this.senderSelectPopupWindow.headerText.getMeasuredHeight()) {
                    getLocationInWindow(iArr);
                    i2 = ((iArr[1] - measuredHeight) - i3) - AndroidUtilities.m104dp(2);
                    overlayContainerView.addView(this.senderSelectPopupWindow.dimView, new FrameLayout.LayoutParams(-1, i3 + i2 + measuredHeight + m104dp + AndroidUtilities.m104dp(2)));
                } else {
                    int i4 = this.parentFragment.isInBubbleMode() ? 0 : AndroidUtilities.statusBarHeight;
                    int m104dp2 = AndroidUtilities.m104dp(14);
                    this.senderSelectPopupWindow.recyclerContainer.getLayoutParams().height = ((contentViewHeight2 - i4) - m104dp2) - getHeightWithTopView();
                    overlayContainerView.addView(this.senderSelectPopupWindow.dimView, new FrameLayout.LayoutParams(-1, m104dp2 + i4 + this.senderSelectPopupWindow.recyclerContainer.getLayoutParams().height + m104dp));
                    i2 = i4;
                }
                this.senderSelectPopupWindow.startShowAnimation();
                SenderSelectPopup senderSelectPopup3 = this.senderSelectPopupWindow;
                this.popupX = i;
                this.popupY = i2;
                senderSelectPopup3.showAtLocation(view, 51, i, i2);
                this.senderSelectView.setProgress(1.0f);
            }
        }
    }

    public /* synthetic */ void lambda$createSenderSelectView$23() {
        this.senderSelectView.callOnClick();
    }

    public /* synthetic */ void lambda$createSenderSelectView$24() {
        this.senderSelectView.callOnClick();
    }

    public /* synthetic */ void lambda$createSenderSelectView$25() {
        this.senderSelectView.callOnClick();
    }

    public /* synthetic */ void lambda$createSenderSelectView$29(TLRPC$ChatFull tLRPC$ChatFull, MessagesController messagesController, RecyclerView recyclerView, final SenderSelectPopup.SenderView senderView, TLRPC$Peer tLRPC$Peer) {
        TLRPC$User user;
        if (this.senderSelectPopupWindow == null) {
            return;
        }
        if (tLRPC$ChatFull != null) {
            tLRPC$ChatFull.default_send_as = tLRPC$Peer;
            updateSendAsButton();
        }
        MessagesController messagesController2 = this.parentFragment.getMessagesController();
        long j = this.dialog_id;
        long j2 = tLRPC$Peer.user_id;
        if (j2 == 0) {
            j2 = -tLRPC$Peer.channel_id;
        }
        messagesController2.setDefaultSendAs(j, j2);
        final int[] iArr = new int[2];
        boolean isSelected = senderView.avatar.isSelected();
        senderView.avatar.getLocationInWindow(iArr);
        senderView.avatar.setSelected(true, true);
        final SimpleAvatarView simpleAvatarView = new SimpleAvatarView(getContext());
        long j3 = tLRPC$Peer.channel_id;
        if (j3 != 0) {
            TLRPC$Chat chat = messagesController.getChat(Long.valueOf(j3));
            if (chat != null) {
                simpleAvatarView.setAvatar(chat);
            }
        } else {
            long j4 = tLRPC$Peer.user_id;
            if (j4 != 0 && (user = messagesController.getUser(Long.valueOf(j4))) != null) {
                simpleAvatarView.setAvatar(user);
            }
        }
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View childAt = recyclerView.getChildAt(i);
            if ((childAt instanceof SenderSelectPopup.SenderView) && childAt != senderView) {
                ((SenderSelectPopup.SenderView) childAt).avatar.setSelected(false, true);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$createSenderSelectView$28(simpleAvatarView, iArr, senderView);
            }
        }, isSelected ? 0L : 200L);
    }

    public /* synthetic */ void lambda$createSenderSelectView$28(final SimpleAvatarView simpleAvatarView, int[] iArr, SenderSelectPopup.SenderView senderView) {
        if (this.senderSelectPopupWindow == null) {
            return;
        }
        final Dialog dialog = new Dialog(getContext(), C3632R.style.TransparentDialogNoAnimation);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(simpleAvatarView, LayoutHelper.createFrame(40, 40, 3));
        dialog.setContentView(frameLayout);
        dialog.getWindow().setLayout(-1, -1);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            dialog.getWindow().clearFlags(1024);
            dialog.getWindow().clearFlags(ConnectionsManager.FileTypeFile);
            dialog.getWindow().clearFlags(C0485C.BUFFER_FLAG_FIRST_SAMPLE);
            dialog.getWindow().addFlags(Integer.MIN_VALUE);
            dialog.getWindow().addFlags(512);
            dialog.getWindow().addFlags(131072);
            dialog.getWindow().getAttributes().windowAnimations = 0;
            dialog.getWindow().getDecorView().setSystemUiVisibility(1792);
            dialog.getWindow().setStatusBarColor(0);
            dialog.getWindow().setNavigationBarColor(0);
            AndroidUtilities.setLightStatusBar(dialog.getWindow(), Theme.getColor(Theme.key_actionBarDefault, null, true) == -1);
            if (i >= 26) {
                AndroidUtilities.setLightNavigationBar(dialog.getWindow(), AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundGray, null, true)) >= 0.721f);
            }
        }
        if (i >= 23) {
            this.popupX += getRootWindowInsets().getSystemWindowInsetLeft();
        }
        this.senderSelectView.getLocationInWindow(this.location);
        int[] iArr2 = this.location;
        final float f = iArr2[0];
        final float f2 = iArr2[1];
        float m104dp = AndroidUtilities.m104dp(5);
        float m104dp2 = iArr[0] + this.popupX + m104dp + AndroidUtilities.m104dp(4) + BitmapDescriptorFactory.HUE_RED;
        float f3 = iArr[1] + this.popupY + m104dp + BitmapDescriptorFactory.HUE_RED;
        simpleAvatarView.setTranslationX(m104dp2);
        simpleAvatarView.setTranslationY(f3);
        float m104dp3 = this.senderSelectView.getLayoutParams().width / AndroidUtilities.m104dp(40);
        simpleAvatarView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        simpleAvatarView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        simpleAvatarView.setScaleX(0.75f);
        simpleAvatarView.setScaleY(0.75f);
        simpleAvatarView.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver$OnDrawListenerC458728(this, simpleAvatarView, senderView));
        dialog.show();
        this.senderSelectView.setScaleX(1.0f);
        this.senderSelectView.setScaleY(1.0f);
        this.senderSelectView.setAlpha(1.0f);
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        SenderSelectView senderSelectView = this.senderSelectView;
        DynamicAnimation.ViewProperty viewProperty = DynamicAnimation.SCALE_X;
        SenderSelectView senderSelectView2 = this.senderSelectView;
        DynamicAnimation.ViewProperty viewProperty2 = DynamicAnimation.SCALE_Y;
        senderSelectPopup.startDismissAnimation(new SpringAnimation(senderSelectView, viewProperty).setSpring(new SpringForce(0.5f).setStiffness(750.0f).setDampingRatio(1.0f)), new SpringAnimation(senderSelectView2, viewProperty2).setSpring(new SpringForce(0.5f).setStiffness(750.0f).setDampingRatio(1.0f)), new SpringAnimation(this.senderSelectView, DynamicAnimation.ALPHA).setSpring(new SpringForce(BitmapDescriptorFactory.HUE_RED).setStiffness(750.0f).setDampingRatio(1.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda37
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f4, float f5) {
                ChatActivityEnterView.this.lambda$createSenderSelectView$26(dialog, simpleAvatarView, f, f2, dynamicAnimation, z, f4, f5);
            }
        }), new SpringAnimation(simpleAvatarView, DynamicAnimation.TRANSLATION_X).setStartValue(MathUtils.clamp(m104dp2, f - AndroidUtilities.m104dp(6), m104dp2)).setSpring(new SpringForce(f).setStiffness(700.0f).setDampingRatio(0.75f)).setMinValue(f - AndroidUtilities.m104dp(6)), new SpringAnimation(simpleAvatarView, DynamicAnimation.TRANSLATION_Y).setStartValue(MathUtils.clamp(f3, f3, AndroidUtilities.m104dp(6) + f2)).setSpring(new SpringForce(f2).setStiffness(700.0f).setDampingRatio(0.75f)).setMaxValue(AndroidUtilities.m104dp(6) + f2).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener(this) { // from class: org.telegram.ui.Components.ChatActivityEnterView.30
            boolean performedHapticFeedback = false;

            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f4, float f5) {
                if (this.performedHapticFeedback || f4 < f2) {
                    return;
                }
                this.performedHapticFeedback = true;
                try {
                    simpleAvatarView.performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
        }).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda38
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f4, float f5) {
                ChatActivityEnterView.this.lambda$createSenderSelectView$27(dialog, simpleAvatarView, f, f2, dynamicAnimation, z, f4, f5);
            }
        }), new SpringAnimation(simpleAvatarView, viewProperty).setSpring(new SpringForce(m104dp3).setStiffness(1000.0f).setDampingRatio(1.0f)), new SpringAnimation(simpleAvatarView, viewProperty2).setSpring(new SpringForce(m104dp3).setStiffness(1000.0f).setDampingRatio(1.0f)));
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$28 */
    /* loaded from: classes6.dex */
    public class ViewTreeObserver$OnDrawListenerC458728 implements ViewTreeObserver.OnDrawListener {
        final /* synthetic */ SimpleAvatarView val$avatar;
        final /* synthetic */ SenderSelectPopup.SenderView val$senderView;

        ViewTreeObserver$OnDrawListenerC458728(ChatActivityEnterView chatActivityEnterView, SimpleAvatarView simpleAvatarView, SenderSelectPopup.SenderView senderView) {
            this.val$avatar = simpleAvatarView;
            this.val$senderView = senderView;
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            final SimpleAvatarView simpleAvatarView = this.val$avatar;
            final SenderSelectPopup.SenderView senderView = this.val$senderView;
            simpleAvatarView.post(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$28$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.ViewTreeObserver$OnDrawListenerC458728.this.lambda$onDraw$0(simpleAvatarView, senderView);
                }
            });
        }

        public /* synthetic */ void lambda$onDraw$0(SimpleAvatarView simpleAvatarView, SenderSelectPopup.SenderView senderView) {
            simpleAvatarView.getViewTreeObserver().removeOnDrawListener(this);
            senderView.avatar.setHideAvatar(true);
        }
    }

    public /* synthetic */ void lambda$createSenderSelectView$26(final Dialog dialog, SimpleAvatarView simpleAvatarView, float f, float f2, DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
        if (dialog.isShowing()) {
            simpleAvatarView.setTranslationX(f);
            simpleAvatarView.setTranslationY(f2);
            this.senderSelectView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.senderSelectView.setScaleX(1.0f);
            this.senderSelectView.setScaleY(1.0f);
            this.senderSelectView.setAlpha(1.0f);
            this.senderSelectView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.29
                {
                    ChatActivityEnterView.this = this;
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ChatActivityEnterView.this.senderSelectView.getViewTreeObserver().removeOnPreDrawListener(this);
                    SenderSelectView senderSelectView = ChatActivityEnterView.this.senderSelectView;
                    Dialog dialog2 = dialog;
                    Objects.requireNonNull(dialog2);
                    senderSelectView.postDelayed(new ChatActivityEnterView$29$$ExternalSyntheticLambda0(dialog2), 100L);
                    return true;
                }
            });
        }
    }

    public /* synthetic */ void lambda$createSenderSelectView$27(final Dialog dialog, SimpleAvatarView simpleAvatarView, float f, float f2, DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
        if (dialog.isShowing()) {
            simpleAvatarView.setTranslationX(f);
            simpleAvatarView.setTranslationY(f2);
            this.senderSelectView.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            this.senderSelectView.setScaleX(1.0f);
            this.senderSelectView.setScaleY(1.0f);
            this.senderSelectView.setAlpha(1.0f);
            this.senderSelectView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.31
                {
                    ChatActivityEnterView.this = this;
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ChatActivityEnterView.this.senderSelectView.getViewTreeObserver().removeOnPreDrawListener(this);
                    SenderSelectView senderSelectView = ChatActivityEnterView.this.senderSelectView;
                    Dialog dialog2 = dialog;
                    Objects.requireNonNull(dialog2);
                    senderSelectView.postDelayed(new ChatActivityEnterView$29$$ExternalSyntheticLambda0(dialog2), 100L);
                    return true;
                }
            });
        }
    }

    private void createBotCommandsMenuButton() {
        if (this.botCommandsMenuButton != null) {
            return;
        }
        BotCommandsMenuView botCommandsMenuView = new BotCommandsMenuView(getContext());
        this.botCommandsMenuButton = botCommandsMenuView;
        botCommandsMenuView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatActivityEnterView.this.lambda$createBotCommandsMenuButton$31(view);
            }
        });
        this.messageEditTextContainer.addView(this.botCommandsMenuButton, LayoutHelper.createFrame(-2, 32, 83, 10, 8, 10, 8));
        AndroidUtilities.updateViewVisibilityAnimated(this.botCommandsMenuButton, false, 1.0f, false);
        this.botCommandsMenuButton.setExpanded(true, false);
    }

    public /* synthetic */ void lambda$createBotCommandsMenuButton$31(View view) {
        boolean z = !this.botCommandsMenuButton.isOpened();
        this.botCommandsMenuButton.setOpened(z);
        try {
            performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        if (!hasBotWebView()) {
            if (z) {
                createBotCommandsMenuContainer();
                this.botCommandsMenuContainer.show();
                return;
            }
            BotCommandsMenuContainer botCommandsMenuContainer = this.botCommandsMenuContainer;
            if (botCommandsMenuContainer != null) {
                botCommandsMenuContainer.dismiss();
            }
        } else if (z) {
            if (this.emojiViewVisible || this.botKeyboardViewVisible) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda57
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatActivityEnterView.this.openWebViewMenu();
                    }
                }, 275L);
                hidePopup(false);
                return;
            }
            openWebViewMenu();
        } else {
            BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
            if (botWebViewMenuContainer != null) {
                botWebViewMenuContainer.dismiss();
            }
        }
    }

    private void createBotWebViewButton() {
        if (this.botWebViewButton != null) {
            return;
        }
        ChatActivityBotWebViewButton chatActivityBotWebViewButton = new ChatActivityBotWebViewButton(getContext());
        this.botWebViewButton = chatActivityBotWebViewButton;
        chatActivityBotWebViewButton.setVisibility(8);
        createBotCommandsMenuButton();
        this.botWebViewButton.setBotMenuButton(this.botCommandsMenuButton);
        this.messageEditTextContainer.addView(this.botWebViewButton, LayoutHelper.createFrame(-1, -1, 80));
    }

    public void createRecordCircle() {
        if (this.recordCircle != null) {
            return;
        }
        RecordCircle recordCircle = new RecordCircle(getContext());
        this.recordCircle = recordCircle;
        recordCircle.setVisibility(8);
        this.sizeNotifierLayout.addView(this.recordCircle, LayoutHelper.createFrame(-1, -2, 80));
    }

    public void showRestrictedHint() {
        if (DialogObject.isChatDialog(this.dialog_id)) {
            BulletinFactory.m62of(this.parentFragment).createSimpleBulletin(C3632R.raw.passcode_lock_close, LocaleController.formatString("SendPlainTextRestrictionHint", C3632R.string.SendPlainTextRestrictionHint, ChatObject.getAllowedSendString(this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id)))), 3).show();
        }
    }

    public void openWebViewMenu() {
        createBotWebViewMenuContainer();
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$openWebViewMenu$32();
            }
        };
        if (SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, this.dialog_id)) {
            runnable.run();
        } else {
            AlertsCreator.createBotLaunchAlert(this.parentFragment, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialog_id)), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda67
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$openWebViewMenu$33(runnable);
                }
            }, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$openWebViewMenu$34();
                }
            });
        }
    }

    public /* synthetic */ void lambda$openWebViewMenu$32() {
        AndroidUtilities.hideKeyboard(this);
        if (AndroidUtilities.isTablet()) {
            BotWebViewSheet botWebViewSheet = new BotWebViewSheet(getContext(), this.parentFragment.getResourceProvider());
            botWebViewSheet.setParentActivity(this.parentActivity);
            int i = this.currentAccount;
            long j = this.dialog_id;
            botWebViewSheet.requestWebView(i, j, j, this.botMenuWebViewTitle, this.botMenuWebViewUrl, 2, 0, false);
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment != null) {
                lastFragment.showDialog(botWebViewSheet);
            } else {
                botWebViewSheet.show();
            }
            BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
            if (botCommandsMenuView != null) {
                botCommandsMenuView.setOpened(false);
                return;
            }
            return;
        }
        this.botWebViewMenuContainer.show(this.currentAccount, this.dialog_id, this.botMenuWebViewUrl);
    }

    public /* synthetic */ void lambda$openWebViewMenu$33(Runnable runnable) {
        runnable.run();
        SharedPrefsHelper.setWebViewConfirmShown(this.currentAccount, this.dialog_id, true);
    }

    public /* synthetic */ void lambda$openWebViewMenu$34() {
        if (this.botCommandsMenuButton == null || SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, this.dialog_id)) {
            return;
        }
        this.botCommandsMenuButton.setOpened(false);
    }

    public void setBotWebViewButtonOffsetX(float f) {
        this.formattingButton.setTranslationX(f);
        this.emojiButton.setTranslationX(f);
        if (this.messageEditText != null) {
            this.messageTextTranslationX = f;
            updateMessageTextParams();
        }
        this.attachButton.setTranslationX(f);
        this.audioVideoSendButton.setTranslationX(f);
        ImageView imageView = this.botButton;
        if (imageView != null) {
            imageView.setTranslationX(f);
        }
    }

    public void setComposeShadowAlpha(float f) {
        this.composeShadowAlpha = f;
        invalidate();
    }

    public ChatActivityBotWebViewButton getBotWebViewButton() {
        createBotWebViewButton();
        return this.botWebViewButton;
    }

    public ChatActivity getParentFragment() {
        return this.parentFragment;
    }

    public void checkBotMenu() {
        EditTextCaption editTextCaption = this.messageEditText;
        boolean z = ((editTextCaption != null && !TextUtils.isEmpty(editTextCaption.getText())) || this.keyboardVisible || this.waitingForKeyboardOpen || isPopupShowing()) ? false : true;
        if (z) {
            createBotCommandsMenuButton();
        }
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            boolean z2 = botCommandsMenuView.expanded;
            botCommandsMenuView.setExpanded(z, true);
            updateTemplatesButton();
            if (z2 != this.botCommandsMenuButton.expanded) {
                beginDelayedTransition();
            }
        }
    }

    public void forceSmoothKeyboard(boolean z) {
        ChatActivity chatActivity;
        this.smoothKeyboard = z && !AndroidUtilities.isInMultiwindow && ((chatActivity = this.parentFragment) == null || !chatActivity.isInBubbleMode());
    }

    public void startLockTransition() {
        AnimatorSet animatorSet = new AnimatorSet();
        performHapticFeedback(3, 2);
        RecordCircle recordCircle = this.recordCircle;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(recordCircle, "lockAnimatedTranslation", recordCircle.startTranslation);
        ofFloat.setStartDelay(100L);
        ofFloat.setDuration(350L);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.recordCircle, "snapAnimationProgress", 1.0f);
        ofFloat2.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        ofFloat2.setDuration(250L);
        SharedConfig.removeLockRecordAudioVideoHint();
        animatorSet.playTogether(ofFloat2, ofFloat, ObjectAnimator.ofFloat(this.recordCircle, "slideToCancelProgress", 1.0f).setDuration(200L), ObjectAnimator.ofFloat(this.slideText, "cancelToProgress", 1.0f));
        animatorSet.start();
    }

    public int getBackgroundTop() {
        int top = getTop();
        View view = this.topView;
        return (view == null || view.getVisibility() != 0) ? top : top + this.topView.getLayoutParams().height;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z = view == this.topView || view == this.textFieldContainer;
        if (z) {
            canvas.save();
            if (view == this.textFieldContainer) {
                int m104dp = (int) (this.animatedTop + AndroidUtilities.m104dp(2) + this.chatSearchExpandOffset);
                View view2 = this.topView;
                if (view2 != null && view2.getVisibility() == 0) {
                    m104dp += this.topView.getHeight();
                }
                canvas.clipRect(0, m104dp, getMeasuredWidth(), getMeasuredHeight());
            } else {
                canvas.clipRect(0, this.animatedTop, getMeasuredWidth(), this.animatedTop + view.getLayoutParams().height + AndroidUtilities.m104dp(2));
            }
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        if (z) {
            canvas.restore();
        }
        return drawChild;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.shouldDrawBackground) {
            int intrinsicHeight = (int) (this.animatedTop + (Theme.chat_composeShadowDrawable.getIntrinsicHeight() * (1.0f - this.composeShadowAlpha)));
            View view = this.topView;
            if (view != null && view.getVisibility() == 0) {
                intrinsicHeight = (int) (intrinsicHeight + ((1.0f - this.topViewEnterProgress) * this.topView.getLayoutParams().height));
            }
            int intrinsicHeight2 = Theme.chat_composeShadowDrawable.getIntrinsicHeight() + intrinsicHeight;
            Theme.chat_composeShadowDrawable.setAlpha((int) (this.composeShadowAlpha * 255.0f));
            Theme.chat_composeShadowDrawable.setBounds(0, intrinsicHeight, getMeasuredWidth(), intrinsicHeight2);
            Theme.chat_composeShadowDrawable.draw(canvas);
            int i = (int) (intrinsicHeight2 + this.chatSearchExpandOffset);
            if (this.allowBlur) {
                this.backgroundPaint.setColor(getThemedColor(Theme.key_chat_messagePanelBackground));
                if (SharedConfig.chatBlurEnabled() && this.sizeNotifierLayout != null) {
                    Rect rect = AndroidUtilities.rectTmp2;
                    rect.set(0, i, getWidth(), getHeight());
                    this.sizeNotifierLayout.drawBlurRect(canvas, getTop(), rect, this.backgroundPaint, false);
                    return;
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i, getWidth(), getHeight(), this.backgroundPaint);
                return;
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i, getWidth(), getHeight(), getThemedPaint("paintChatComposeBackground"));
        }
    }

    public boolean onSendLongClick(View view) {
        int measuredHeight;
        boolean z = false;
        if (isInScheduleMode() || isTemplatesChannel(true, false)) {
            return false;
        }
        ChatActivity chatActivity = this.parentFragment;
        boolean z2 = chatActivity != null && UserObject.isUserSelf(chatActivity.getCurrentUser());
        this.sendPopupLayout = null;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.parentActivity, this.resourcesProvider);
        this.sendPopupLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setAnimationEnabled(false);
        this.sendPopupLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.32
            private Rect popupRect = new Rect();

            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0 && ChatActivityEnterView.this.sendPopupWindow != null && ChatActivityEnterView.this.sendPopupWindow.isShowing()) {
                    view2.getHitRect(this.popupRect);
                    if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        return false;
                    }
                    ChatActivityEnterView.this.sendPopupWindow.dismiss();
                    return false;
                }
                return false;
            }
        });
        this.sendPopupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda72
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                ChatActivityEnterView.this.lambda$onSendLongClick$35(keyEvent);
            }
        });
        this.sendPopupLayout.setShownFromBottom(false);
        ChatActivity chatActivity2 = this.parentFragment;
        boolean z3 = chatActivity2 != null && chatActivity2.canScheduleMessage();
        boolean z4 = !z2 && (this.slowModeTimer <= 0 || isInScheduleMode());
        ChatActivity chatActivity3 = this.parentFragment;
        boolean z5 = chatActivity3 != null && chatActivity3.isAllowCombineMessages();
        boolean z6 = z5 && SharedConfig.isCombineMessagesEnabled && this.needCombineMessages;
        boolean z7 = SharedConfig.isReactionsInSendPopupEnabled && this.parentFragment != null;
        boolean z8 = SharedConfig.isTranslateInSendPopupEnabled && this.parentFragment != null;
        if (z5) {
            Context context = getContext();
            if (!z6 && !z7 && !z8 && !z3 && !z4) {
                z = true;
            }
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(context, true, z, this.resourcesProvider);
            if (SharedConfig.isCombineMessagesEnabled) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.combine_messages_disable), C3632R.C3634drawable.fork_disable_combine_messages);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.combine_messages_enable), C3632R.C3634drawable.fork_enable_combine_messages);
            }
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m104dp(196));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda28
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityEnterView.this.lambda$onSendLongClick$36(view2);
                }
            });
            this.sendPopupLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
        }
        if (z6) {
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), !z6, (z7 || z8 || z3 || z4) ? false : true, this.resourcesProvider);
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getInternalString(C3632R.string.combine_messages_send_without_combine), C3632R.C3634drawable.fork_disable_combine_messages);
            actionBarMenuSubItem2.setMinimumWidth(AndroidUtilities.m104dp(196));
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda29
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityEnterView.this.lambda$onSendLongClick$37(view2);
                }
            });
            this.sendPopupLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
        }
        if (z7) {
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getContext(), (z6 || z5) ? false : true, (z8 || z3 || z4) ? false : true, this.resourcesProvider);
            actionBarMenuSubItem3.setTextAndIcon(LocaleController.getInternalString(C3632R.string.sending_settings_send_add_reactions), C3632R.C3634drawable.fork_ic_reactions);
            actionBarMenuSubItem3.setMinimumWidth(AndroidUtilities.m104dp(196));
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda32
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityEnterView.this.lambda$onSendLongClick$38(view2);
                }
            });
            this.sendPopupLayout.addView((View) actionBarMenuSubItem3, LayoutHelper.createLinear(-1, 48));
        }
        if (z8) {
            ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(getContext(), (z6 || z5 || z7) ? false : true, (z3 || z4) ? false : true, this.resourcesProvider);
            actionBarMenuSubItem4.setTextAndIcon(LocaleController.getInternalString(C3632R.string.sending_settings_translation_enable_item_title), C3632R.C3634drawable.msg_translate);
            actionBarMenuSubItem4.setMinimumWidth(AndroidUtilities.m104dp(196));
            actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityEnterView.this.lambda$onSendLongClick$39(view2);
                }
            });
            this.sendPopupLayout.addView((View) actionBarMenuSubItem4, LayoutHelper.createLinear(-1, 48));
        }
        if (z3) {
            ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(getContext(), (z6 || z5 || z7 || z8) ? false : true, !z4, this.resourcesProvider);
            if (z2) {
                actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("SetReminder", C3632R.string.SetReminder), C3632R.C3634drawable.msg_calendar2);
            } else {
                actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("ScheduleMessage", C3632R.string.ScheduleMessage), C3632R.C3634drawable.msg_calendar2);
            }
            actionBarMenuSubItem5.setMinimumWidth(AndroidUtilities.m104dp(196));
            actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityEnterView.this.lambda$onSendLongClick$40(view2);
                }
            });
            this.sendPopupLayout.addView((View) actionBarMenuSubItem5, LayoutHelper.createLinear(-1, 48));
            SharedConfig.removeScheduledHint();
            if (!z2 && this.dialog_id > 0) {
                ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(getContext(), true, !z4, this.resourcesProvider);
                this.sendWhenOnlineButton = actionBarMenuSubItem6;
                actionBarMenuSubItem6.setTextAndIcon(LocaleController.getString("SendWhenOnline", C3632R.string.SendWhenOnline), C3632R.C3634drawable.msg_online);
                this.sendWhenOnlineButton.setMinimumWidth(AndroidUtilities.m104dp(196));
                this.sendWhenOnlineButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda18
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ChatActivityEnterView.this.lambda$onSendLongClick$41(view2);
                    }
                });
                this.sendPopupLayout.addView((View) this.sendWhenOnlineButton, LayoutHelper.createLinear(-1, 48));
            }
        }
        if (z4) {
            ActionBarMenuSubItem actionBarMenuSubItem7 = new ActionBarMenuSubItem(getContext(), (z3 || z8 || z7 || z5 || z6) ? false : true, true, this.resourcesProvider);
            if (this.parentFragment != null && ToolsController.getInstance(this.currentAccount).isSilentSendingEnabledForDialog(this.parentFragment.getDialogId())) {
                actionBarMenuSubItem7.setTextAndIcon(LocaleController.getInternalString(C3632R.string.send_with_sound), C3632R.C3634drawable.input_notify_on);
            } else {
                actionBarMenuSubItem7.setTextAndIcon(LocaleController.getString("SendWithoutSound", C3632R.string.SendWithoutSound), C3632R.C3634drawable.input_notify_off);
            }
            actionBarMenuSubItem7.setMinimumWidth(AndroidUtilities.m104dp(196));
            actionBarMenuSubItem7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda31
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatActivityEnterView.this.lambda$onSendLongClick$42(view2);
                }
            });
            this.sendPopupLayout.addView((View) actionBarMenuSubItem7, LayoutHelper.createLinear(-1, 48));
        }
        this.sendPopupLayout.setupRadialSelectors(getThemedColor(Theme.key_dialogButtonSelector));
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.sendPopupLayout, -2, -2) { // from class: org.telegram.ui.Components.ChatActivityEnterView.34
            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                ChatActivityEnterView.this.sendButton.invalidate();
            }
        };
        this.sendPopupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setAnimationEnabled(false);
        this.sendPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation2);
        this.sendPopupWindow.setOutsideTouchable(true);
        this.sendPopupWindow.setClippingEnabled(true);
        this.sendPopupWindow.setInputMethodMode(2);
        this.sendPopupWindow.setSoftInputMode(0);
        this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
        SharedConfig.removeScheduledOrNoSoundHint();
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onSendLongClick();
        }
        if (this.sendWhenOnlineButton != null) {
            TLRPC$User currentUser = this.parentFragment.getCurrentUser();
            if (currentUser != null && !currentUser.bot) {
                TLRPC$UserStatus tLRPC$UserStatus = currentUser.status;
                if (!(tLRPC$UserStatus instanceof TLRPC$TL_userStatusEmpty) && !(tLRPC$UserStatus instanceof TLRPC$TL_userStatusOnline) && !(tLRPC$UserStatus instanceof TLRPC$TL_userStatusRecently)) {
                    this.sendWhenOnlineButton.setVisibility(0);
                }
            }
            this.sendWhenOnlineButton.setVisibility(8);
        }
        this.sendPopupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(1000), Integer.MIN_VALUE));
        this.sendPopupWindow.setFocusable(true);
        view.getLocationInWindow(this.location);
        try {
            if (this.keyboardVisible) {
                int measuredHeight2 = getMeasuredHeight();
                View view2 = this.topView;
                if (measuredHeight2 > AndroidUtilities.m104dp((view2 == null || view2.getVisibility() != 0) ? 58 : 106)) {
                    measuredHeight = this.location[1] + view.getMeasuredHeight();
                    this.sendPopupWindow.showAtLocation(view, 51, ((this.location[0] + view.getMeasuredWidth()) - this.sendPopupLayout.getMeasuredWidth()) + AndroidUtilities.m104dp(8), measuredHeight);
                    this.sendPopupWindow.dimBehind();
                    this.sendButton.invalidate();
                    view.performHapticFeedback(3, 2);
                    return false;
                }
            }
            view.performHapticFeedback(3, 2);
            return false;
        } catch (Exception unused) {
            return false;
        }
        measuredHeight = (this.location[1] - this.sendPopupLayout.getMeasuredHeight()) - AndroidUtilities.m104dp(2);
        this.sendPopupWindow.showAtLocation(view, 51, ((this.location[0] + view.getMeasuredWidth()) - this.sendPopupLayout.getMeasuredWidth()) + AndroidUtilities.m104dp(8), measuredHeight);
        this.sendPopupWindow.dimBehind();
        this.sendButton.invalidate();
    }

    public /* synthetic */ void lambda$onSendLongClick$35(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    public /* synthetic */ void lambda$onSendLongClick$36(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        SharedConfig.setCombineMessagesEnabled(!SharedConfig.isCombineMessagesEnabled);
    }

    public /* synthetic */ void lambda$onSendLongClick$37(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendMessageInternal(true, 0, true, null, false);
    }

    public /* synthetic */ void lambda$onSendLongClick$38(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        this.delegate.openReaction();
    }

    public /* synthetic */ void lambda$onSendLongClick$39(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        openTranslateDialog();
    }

    public /* synthetic */ void lambda$onSendLongClick$40(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.33
            @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public /* synthetic */ ArrayList getSelectedDialogs() {
                return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
            }

            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public void didSelectDate(boolean z, int i, String str) {
                ChatActivityEnterView.this.sendMessageInternal(z, i, true, str, true);
            }
        }, this.resourcesProvider, (ChatActivity) null);
    }

    public /* synthetic */ void lambda$onSendLongClick$41(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendMessageInternal(true, 2147483646, true);
    }

    public /* synthetic */ void lambda$onSendLongClick$42(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendMessageInternal(false, 0, true);
    }

    private void createBotCommandsMenuContainer() {
        if (this.botCommandsMenuContainer != null) {
            return;
        }
        BotCommandsMenuContainer botCommandsMenuContainer = new BotCommandsMenuContainer(getContext()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.35
            {
                ChatActivityEnterView.this = this;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BotCommandsMenuContainer
            public void onDismiss() {
                super.onDismiss();
                if (ChatActivityEnterView.this.botCommandsMenuButton != null) {
                    ChatActivityEnterView.this.botCommandsMenuButton.setOpened(false);
                }
            }
        };
        this.botCommandsMenuContainer = botCommandsMenuContainer;
        botCommandsMenuContainer.listView.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerListView recyclerListView = this.botCommandsMenuContainer.listView;
        BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter = new BotCommandsMenuView.BotCommandsAdapter();
        this.botCommandsAdapter = botCommandsAdapter;
        recyclerListView.setAdapter(botCommandsAdapter);
        if (this.botMenuButtonType == BotMenuButtonType.TEMPLATES) {
            this.botCommandsAdapter.setTemplatesMode(true);
            this.botCommandsAdapter.setTemplatesDelegate(this.templatesDelegate);
            this.botCommandsAdapter.loadTemplates();
        }
        this.botCommandsMenuContainer.listView.setOnItemClickListener(new C459636());
        this.botCommandsMenuContainer.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.37
            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public boolean onItemClick(View view, int i) {
                if (view instanceof TemplateCell) {
                    ChatActivityEnterView.this.templatesDelegate.didPressSendMessage(((TemplateCell) view).getTemplate(), true);
                    return true;
                } else if (view instanceof BotCommandsMenuView.BotCommandView) {
                    String command = ((BotCommandsMenuView.BotCommandView) view).getCommand();
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    chatActivityEnterView.setFieldText(command + " ");
                    ChatActivityEnterView.this.botCommandsMenuContainer.dismiss();
                    return true;
                } else {
                    return false;
                }
            }
        });
        this.botCommandsMenuContainer.setClipToPadding(false);
        this.sizeNotifierLayout.addView(this.botCommandsMenuContainer, 14, LayoutHelper.createFrame(-1, -1, 80));
        this.botCommandsMenuContainer.setVisibility(8);
        LongSparseArray<TLRPC$BotInfo> longSparseArray = this.lastBotInfo;
        if (longSparseArray != null) {
            this.botCommandsAdapter.setBotInfo(longSparseArray);
        }
        updateBotCommandsMenuContainerTopPadding();
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$36 */
    /* loaded from: classes6.dex */
    public class C459636 implements RecyclerListView.OnItemClickListener {
        C459636() {
            ChatActivityEnterView.this = r1;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
        public void onItemClick(View view, int i) {
            if (view instanceof TemplatesHeaderCell) {
                ChatActivityEnterView.this.templatesDelegate.didPressOpenTemplates(false);
            } else if (view instanceof TemplateCell) {
                ChatActivityEnterView.this.templatesDelegate.didPressSendMessage(((TemplateCell) view).getTemplate(), true);
            } else if (view instanceof BotCommandsMenuView.BotCommandView) {
                final String command = ((BotCommandsMenuView.BotCommandView) view).getCommand();
                if (TextUtils.isEmpty(command)) {
                    return;
                }
                if (!ChatActivityEnterView.this.isInScheduleMode()) {
                    if (ChatActivityEnterView.this.parentFragment == null || !ChatActivityEnterView.this.parentFragment.checkSlowMode(view)) {
                        SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(command, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, false, null, null, null, true, 0, null, false, null));
                        ChatActivityEnterView.this.setFieldText("");
                        ChatActivityEnterView.this.botCommandsMenuContainer.dismiss();
                        return;
                    }
                    return;
                }
                AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.dialog_id, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$36$$ExternalSyntheticLambda0
                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i2, String str) {
                        ChatActivityEnterView.C459636.this.lambda$onItemClick$0(command, z, i2, str);
                    }

                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public /* synthetic */ ArrayList getSelectedDialogs() {
                        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                    }
                }, ChatActivityEnterView.this.resourcesProvider, (ChatActivity) null);
            }
        }

        public /* synthetic */ void lambda$onItemClick$0(String str, boolean z, int i, String str2) {
            SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, false, null, null, null, z, i, null, false, str2));
            ChatActivityEnterView.this.setFieldText("");
            ChatActivityEnterView.this.botCommandsMenuContainer.dismiss();
        }
    }

    private void updateBotCommandsMenuContainerTopPadding() {
        int max;
        LinearLayoutManager linearLayoutManager;
        int findFirstVisibleItemPosition;
        View findViewByPosition;
        if (this.botCommandsMenuContainer == null) {
            return;
        }
        int i = this.botMenuButtonType == BotMenuButtonType.TEMPLATES ? 52 : 36;
        if (this.botCommandsAdapter.getItemCount() > 4) {
            max = Math.max(0, this.sizeNotifierLayout.getMeasuredHeight() - AndroidUtilities.m105dp((i * 4.3f) + 8.0f));
        } else {
            max = Math.max(0, this.sizeNotifierLayout.getMeasuredHeight() - AndroidUtilities.m104dp((i * Math.max(1, Math.min(4, this.botCommandsAdapter.getItemCount()))) + 8));
        }
        if (this.botCommandsMenuContainer.listView.getPaddingTop() != max) {
            this.botCommandsMenuContainer.listView.setTopGlowOffset(max);
            if (this.botCommandLastPosition == -1 && this.botCommandsMenuContainer.getVisibility() == 0 && this.botCommandsMenuContainer.listView.getLayoutManager() != null && (findFirstVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) this.botCommandsMenuContainer.listView.getLayoutManager()).findFirstVisibleItemPosition()) >= 0 && (findViewByPosition = linearLayoutManager.findViewByPosition(findFirstVisibleItemPosition)) != null) {
                this.botCommandLastPosition = findFirstVisibleItemPosition;
                this.botCommandLastTop = findViewByPosition.getTop() - this.botCommandsMenuContainer.listView.getPaddingTop();
            }
            this.botCommandsMenuContainer.listView.setPadding(0, max, 0, AndroidUtilities.m104dp(8));
        }
    }

    private void createBotWebViewMenuContainer() {
        if (this.botWebViewMenuContainer != null) {
            return;
        }
        BotWebViewMenuContainer botWebViewMenuContainer = new BotWebViewMenuContainer(getContext(), this) { // from class: org.telegram.ui.Components.ChatActivityEnterView.38
            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.Components.BotWebViewMenuContainer
            public void onDismiss() {
                super.onDismiss();
                if (ChatActivityEnterView.this.botCommandsMenuButton != null) {
                    ChatActivityEnterView.this.botCommandsMenuButton.setOpened(false);
                }
            }
        };
        this.botWebViewMenuContainer = botWebViewMenuContainer;
        this.sizeNotifierLayout.addView(botWebViewMenuContainer, 15, LayoutHelper.createFrame(-1, -1, 80));
        this.botWebViewMenuContainer.setVisibility(8);
        this.botWebViewMenuContainer.setOnDismissGlobalListener(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$createBotWebViewMenuContainer$43();
            }
        });
    }

    public /* synthetic */ void lambda$createBotWebViewMenuContainer$43() {
        if (this.botButtonsMessageObject != null) {
            EditTextCaption editTextCaption = this.messageEditText;
            if ((editTextCaption == null || TextUtils.isEmpty(editTextCaption.getText())) && !this.botWebViewMenuContainer.hasSavedText()) {
                showPopup(1, 1);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption */
    /* loaded from: classes6.dex */
    public class ChatActivityEditTextCaption extends EditTextCaption {
        CanvasButton canvasButton;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChatActivityEditTextCaption(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            ChatActivityEnterView.this = r1;
        }

        @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
        public void onScrollChanged(int i, int i2, int i3, int i4) {
            super.onScrollChanged(i, i2, i3, i4);
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onEditTextScroll();
            }
        }

        @Override // org.telegram.p043ui.Components.EditTextCaption
        protected void onContextMenuOpen() {
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onContextMenuOpen();
            }
        }

        @Override // org.telegram.p043ui.Components.EditTextCaption
        protected void onContextMenuClose() {
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onContextMenuClose();
            }
        }

        /* renamed from: send */
        public void lambda$onCreateInputConnection$0(InputContentInfoCompat inputContentInfoCompat, boolean z, int i, String str) {
            if (ChatActivityEnterView.this.replyingQuote != null && ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.replyingQuote.outdated) {
                ChatActivityEnterView.this.parentFragment.showQuoteMessageUpdate();
                return;
            }
            if (inputContentInfoCompat.getDescription().hasMimeType("image/gif")) {
                SendMessagesHelper.prepareSendingDocument(ChatActivityEnterView.this.accountInstance, null, null, inputContentInfoCompat.getContentUri(), null, "image/gif", ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, ChatActivityEnterView.this.replyingQuote, null, z, 0, inputContentInfoCompat, str);
            } else {
                SendMessagesHelper.prepareSendingPhoto(ChatActivityEnterView.this.accountInstance, null, inputContentInfoCompat.getContentUri(), ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), ChatActivityEnterView.this.replyingQuote, null, null, null, inputContentInfoCompat, 0, null, z, 0, str);
            }
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onMessageSend(null, true, i, str);
            }
        }

        @Override // android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (onCreateInputConnection == null) {
                return null;
            }
            try {
                EditorInfoCompat.setContentMimeTypes(editorInfo, new String[]{"image/gif", "image/*", "image/jpg", "image/png", "image/webp"});
                return InputConnectionCompat.createWrapper(onCreateInputConnection, editorInfo, new InputConnectionCompat.OnCommitContentListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda0
                    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
                    public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
                        boolean lambda$onCreateInputConnection$1;
                        lambda$onCreateInputConnection$1 = ChatActivityEnterView.ChatActivityEditTextCaption.this.lambda$onCreateInputConnection$1(inputContentInfoCompat, i, bundle);
                        return lambda$onCreateInputConnection$1;
                    }
                });
            } catch (Throwable th) {
                FileLog.m99e(th);
                return onCreateInputConnection;
            }
        }

        public /* synthetic */ boolean lambda$onCreateInputConnection$1(final InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
            if (BuildCompat.isAtLeastNMR1() && (i & 1) != 0) {
                try {
                    inputContentInfoCompat.requestPermission();
                } catch (Exception unused) {
                    return false;
                }
            }
            if (inputContentInfoCompat.getDescription().hasMimeType("image/gif") || SendMessagesHelper.shouldSendWebPAsSticker(null, inputContentInfoCompat.getContentUri())) {
                if (ChatActivityEnterView.this.isInScheduleMode() || ChatActivityEnterView.this.isTemplatesChannel(true, true)) {
                    AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda5
                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i2, String str) {
                            ChatActivityEnterView.ChatActivityEditTextCaption.this.lambda$onCreateInputConnection$0(inputContentInfoCompat, z, i2, str);
                        }

                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public /* synthetic */ ArrayList getSelectedDialogs() {
                            return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                        }
                    }, ChatActivityEnterView.this.resourcesProvider, ChatActivityEnterView.this.parentFragment);
                } else {
                    lambda$onCreateInputConnection$0(inputContentInfoCompat, true, 0, null);
                }
            } else {
                editPhoto(inputContentInfoCompat.getContentUri(), inputContentInfoCompat.getDescription().getMimeType(0));
            }
            return true;
        }

        @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!ChatActivityEnterView.this.stickersDragging && ChatActivityEnterView.this.stickersExpansionAnim == null) {
                if (ChatActivityEnterView.this.sendPlainEnabled || ChatActivityEnterView.this.isEditingMessage()) {
                    if (ChatActivityEnterView.this.isFormattingMessagesContainerVisible && ChatActivityEnterView.this.isPopupShowing()) {
                        setShowSoftInputOnFocus(false);
                        setTextIsSelectable(true);
                        return super.onTouchEvent(motionEvent);
                    } else if (ChatActivityEnterView.this.isPopupShowing() && motionEvent.getAction() == 0) {
                        if (ChatActivityEnterView.this.searchingType != 0) {
                            ChatActivityEnterView.this.setSearchingTypeInternal(0, false);
                            ChatActivityEnterView.this.emojiView.closeSearch(false);
                            requestFocus();
                        }
                        ChatActivityEnterView.this.showPopup(AndroidUtilities.usingHardwareInput ? 0 : 2, 0);
                        if (ChatActivityEnterView.this.stickersExpanded) {
                            ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                            ChatActivityEnterView.this.waitingForKeyboardOpenAfterAnimation = true;
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ChatActivityEnterView.ChatActivityEditTextCaption.this.lambda$onTouchEvent$3();
                                }
                            }, 200L);
                        } else {
                            ChatActivityEnterView.this.openKeyboardInternal();
                        }
                        return true;
                    } else {
                        try {
                            setShowSoftInputOnFocus(true);
                            return super.onTouchEvent(motionEvent);
                        } catch (Exception e) {
                            FileLog.m99e(e);
                        }
                    }
                } else {
                    if (this.canvasButton == null) {
                        CanvasButton canvasButton = new CanvasButton(this);
                        this.canvasButton = canvasButton;
                        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.ChatActivityEditTextCaption.this.lambda$onTouchEvent$2();
                            }
                        });
                    }
                    this.canvasButton.setRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
                    return this.canvasButton.checkTouchEvent(motionEvent);
                }
            }
            return false;
        }

        public /* synthetic */ void lambda$onTouchEvent$2() {
            ChatActivityEnterView.this.showRestrictedHint();
        }

        public /* synthetic */ void lambda$onTouchEvent$3() {
            ChatActivityEnterView.this.waitingForKeyboardOpenAfterAnimation = false;
            ChatActivityEnterView.this.openKeyboardInternal();
        }

        @Override // android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (ChatActivityEnterView.this.preventInput) {
                return false;
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        @Override // org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView
        public void onSelectionChanged(int i, int i2) {
            super.onSelectionChanged(i, i2);
            if (ChatActivityEnterView.this.delegate != null) {
                if (ChatActivityEnterView.this.accountInstance.getFormattingTextController().getFormattingPanelType() != FormattingPanelType.DEFAULT) {
                    FormattingTextController formattingTextController = ChatActivityEnterView.this.accountInstance.getFormattingTextController();
                    boolean z = false;
                    if (i2 - i > 0) {
                        z = true;
                        formattingTextController.getAllSpans(ChatActivityEnterView.this.messageEditText);
                    }
                    if (ChatActivityEnterView.this.formattingMessagesKeyboardContainer == null || ChatActivityEnterView.this.accountInstance.getFormattingTextController().getFormattingPanelType() != FormattingPanelType.ALTERNATIVE_KEYBOARD) {
                        if (ChatActivityEnterView.this.formattingMessagesWeb != null && ChatActivityEnterView.this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_WEB) {
                            ChatActivityEnterView.this.formattingMessagesWeb.setEnabledView(z);
                            ChatActivityEnterView.this.formattingMessagesWeb.updateColors();
                        }
                    } else {
                        ChatActivityEnterView.this.formattingMessagesKeyboardContainer.setEnabledView(z);
                        ChatActivityEnterView.this.formattingMessagesKeyboardContainer.updateView();
                    }
                }
                ChatActivityEnterView.this.delegate.onTextSelectionChanged(i, i2);
            }
        }

        @Override // org.telegram.p043ui.Components.EditTextBoldCursor
        public void extendActionMode(ActionMode actionMode, Menu menu) {
            if (ChatActivityEnterView.this.parentFragment != null) {
                ChatActivityEnterView.this.parentFragment.extendActionMode(menu);
            } else {
                ChatActivityEnterView.this.extendActionMode(menu);
            }
        }

        @Override // android.view.View
        public boolean requestRectangleOnScreen(Rect rect) {
            rect.bottom += AndroidUtilities.m104dp(1000);
            return super.requestRectangleOnScreen(rect);
        }

        @Override // org.telegram.p043ui.Components.EditTextCaption, org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
        public void onMeasure(int i, int i2) {
            ChatActivityEnterView.this.isInitLineCount = getMeasuredWidth() == 0 && getMeasuredHeight() == 0;
            super.onMeasure(i, i2);
            if (ChatActivityEnterView.this.isInitLineCount) {
                ChatActivityEnterView.this.lineCount = getLineCount();
            }
            ChatActivityEnterView.this.isInitLineCount = false;
        }

        @Override // org.telegram.p043ui.Components.EditTextCaption, android.widget.TextView
        public boolean onTextContextMenuItem(int i) {
            if (i == 16908322) {
                ChatActivityEnterView.this.isPaste = true;
                ClipData primaryClip = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip();
                if (primaryClip != null && primaryClip.getItemCount() == 1 && primaryClip.getDescription().hasMimeType("image/*")) {
                    editPhoto(primaryClip.getItemAt(0).getUri(), primaryClip.getDescription().getMimeType(0));
                }
            }
            return super.onTextContextMenuItem(i);
        }

        private void editPhoto(final Uri uri, String str) {
            final File generatePicturePath = AndroidUtilities.generatePicturePath(ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.isSecretChat(), MimeTypeMap.getSingleton().getExtensionFromMimeType(str));
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.ChatActivityEditTextCaption.this.lambda$editPhoto$5(uri, generatePicturePath);
                }
            });
        }

        public /* synthetic */ void lambda$editPhoto$5(Uri uri, final File file) {
            try {
                InputStream openInputStream = getContext().getContentResolver().openInputStream(uri);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = openInputStream.read(bArr);
                    if (read > 0) {
                        fileOutputStream.write(bArr, 0, read);
                        fileOutputStream.flush();
                    } else {
                        openInputStream.close();
                        fileOutputStream.close();
                        MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, -1, 0L, file.getAbsolutePath(), 0, false, 0, 0, 0L);
                        final ArrayList arrayList = new ArrayList();
                        arrayList.add(photoEntry);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$ChatActivityEditTextCaption$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.ChatActivityEditTextCaption.this.lambda$editPhoto$4(arrayList, file);
                            }
                        });
                        return;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        /* renamed from: openPhotoViewerForEdit */
        public void lambda$editPhoto$4(final ArrayList<Object> arrayList, final File file) {
            if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.getParentActivity() == null) {
                return;
            }
            final MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) arrayList.get(0);
            if (!ChatActivityEnterView.this.keyboardVisible) {
                PhotoViewer.getInstance().setParentActivity(ChatActivityEnterView.this.parentFragment, ChatActivityEnterView.this.resourcesProvider);
                PhotoViewer.getInstance().openPhotoForSelect(arrayList, 0, 2, false, new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption.2
                    boolean sending;

                    @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
                    public boolean canCaptureMorePhotos() {
                        return false;
                    }

                    {
                        ChatActivityEditTextCaption.this = this;
                    }

                    @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
                    public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str, boolean z3) {
                        String str2;
                        if (ChatActivityEnterView.this.replyingQuote != null && ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.replyingQuote.outdated) {
                            ChatActivityEnterView.this.parentFragment.showQuoteMessageUpdate();
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
                        MediaController.PhotoEntry photoEntry2 = photoEntry;
                        boolean z4 = photoEntry2.isVideo;
                        if (!z4 && (str2 = photoEntry2.imagePath) != null) {
                            sendingMediaInfo.path = str2;
                        } else {
                            String str3 = photoEntry2.path;
                            if (str3 != null) {
                                sendingMediaInfo.path = str3;
                            }
                        }
                        sendingMediaInfo.thumbPath = photoEntry2.thumbPath;
                        sendingMediaInfo.isVideo = z4;
                        CharSequence charSequence = photoEntry2.caption;
                        sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                        MediaController.PhotoEntry photoEntry3 = photoEntry;
                        sendingMediaInfo.entities = photoEntry3.entities;
                        sendingMediaInfo.masks = photoEntry3.stickers;
                        sendingMediaInfo.ttl = photoEntry3.ttl;
                        sendingMediaInfo.videoEditedInfo = videoEditedInfo;
                        sendingMediaInfo.canDeleteAfter = true;
                        arrayList2.add(sendingMediaInfo);
                        photoEntry.reset();
                        this.sending = true;
                        SendMessagesHelper.prepareSendingMedia(ChatActivityEnterView.this.accountInstance, arrayList2, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, ChatActivityEnterView.this.replyingQuote, false, false, ChatActivityEnterView.this.editingMessageObject, z, i2, SendMessagesHelper.checkUpdateStickersOrder(sendingMediaInfo.caption), null, str);
                        if (ChatActivityEnterView.this.delegate != null) {
                            ChatActivityEnterView.this.delegate.onMessageSend(null, true, i2, str);
                        }
                    }

                    @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
                    public void willHidePhotoViewer() {
                        if (this.sending) {
                            return;
                        }
                        try {
                            file.delete();
                        } catch (Throwable unused) {
                        }
                    }
                }, ChatActivityEnterView.this.parentFragment);
                return;
            }
            AndroidUtilities.hideKeyboard(this);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption.1
                {
                    ChatActivityEditTextCaption.this = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ChatActivityEditTextCaption.this.lambda$editPhoto$4(arrayList, file);
                }
            }, 100L);
        }

        @Override // org.telegram.p043ui.Components.EditTextBoldCursor
        protected Theme.ResourcesProvider getResourcesProvider() {
            return ChatActivityEnterView.this.resourcesProvider;
        }

        @Override // android.view.View
        public boolean requestFocus(int i, Rect rect) {
            if (ChatActivityEnterView.this.sendPlainEnabled || ChatActivityEnterView.this.isEditingMessage()) {
                return super.requestFocus(i, rect);
            }
            return false;
        }

        @Override // org.telegram.p043ui.Components.EditTextEffects
        public void setOffsetY(float f) {
            super.setOffsetY(f);
            if (ChatActivityEnterView.this.sizeNotifierLayout.getForeground() != null) {
                ChatActivityEnterView.this.sizeNotifierLayout.invalidateDrawable(ChatActivityEnterView.this.sizeNotifierLayout.getForeground());
            }
        }
    }

    private boolean isKeyboardSupportIncognitoMode() {
        String string = Settings.Secure.getString(getContext().getContentResolver(), "default_input_method");
        return string == null || !string.startsWith("com.samsung");
    }

    private void createMessageEditText() {
        if (this.messageEditText != null) {
            return;
        }
        ChatActivityEditTextCaption chatActivityEditTextCaption = new ChatActivityEditTextCaption(getContext(), this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.39
            boolean clickMaybe;
            float touchX;
            float touchY;

            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption, org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatActivityEnterView.this.botCommandsMenuIsShowing()) {
                    if (motionEvent.getAction() == 0) {
                        this.touchX = motionEvent.getX();
                        this.touchY = motionEvent.getY();
                        this.clickMaybe = true;
                    } else if (this.clickMaybe && motionEvent.getAction() == 2) {
                        if (Math.abs(motionEvent.getX() - this.touchX) > AndroidUtilities.touchSlop || Math.abs(motionEvent.getY() - this.touchY) > AndroidUtilities.touchSlop) {
                            this.clickMaybe = false;
                        }
                    } else if (this.clickMaybe) {
                        if (ChatActivityEnterView.this.delegate != null) {
                            ChatActivityEnterView.this.delegate.onKeyboardRequested();
                        }
                        EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
                        if (editTextCaption != null && !AndroidUtilities.showKeyboard(editTextCaption)) {
                            ChatActivityEnterView.this.messageEditText.clearFocus();
                            ChatActivityEnterView.this.messageEditText.requestFocus();
                        }
                    }
                    return this.clickMaybe;
                }
                if (motionEvent.getAction() == 0 && ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.onKeyboardRequested();
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEditTextCaption, org.telegram.p043ui.Components.EditTextEffects
            public void setOffsetY(float f) {
                super.setOffsetY(f);
                ChatActivityEnterView.this.messageEditTextContainer.invalidate();
            }

            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.getParentLayout() == null || !ChatActivityEnterView.this.parentFragment.getParentLayout().isSheet()) {
                    setWindowView(ChatActivityEnterView.this.parentActivity.getWindow().getDecorView());
                } else {
                    setWindowView(ChatActivityEnterView.this.parentFragment.getParentLayout().getWindow().getDecorView());
                }
            }
        };
        this.messageEditText = chatActivityEditTextCaption;
        if (Build.VERSION.SDK_INT >= 28) {
            chatActivityEditTextCaption.setFallbackLineSpacing(false);
        }
        this.messageEditText.setDelegate(new EditTextCaption.EditTextCaptionDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda75
            @Override // org.telegram.p043ui.Components.EditTextCaption.EditTextCaptionDelegate
            public final void onSpansChanged() {
                ChatActivityEnterView.this.lambda$createMessageEditText$44();
            }
        });
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null && chatActivity.getParentLayout() != null && this.parentFragment.getParentLayout().isSheet()) {
            this.messageEditText.setWindowView(this.parentFragment.getParentLayout().getWindow().getDecorView());
        } else {
            this.messageEditText.setWindowView(this.parentActivity.getWindow().getDecorView());
        }
        ChatActivity chatActivity2 = this.parentFragment;
        TLRPC$EncryptedChat currentEncryptedChat = chatActivity2 != null ? chatActivity2.getCurrentEncryptedChat() : null;
        this.messageEditText.setAllowTextEntitiesIntersection(supportsSendingNewEntities());
        int i = 268435456;
        if (isKeyboardSupportIncognitoMode() && currentEncryptedChat != null) {
            i = 285212672;
        }
        this.messageEditText.setIncludeFontPadding(false);
        this.messageEditText.setImeOptions(i);
        EditTextCaption editTextCaption = this.messageEditText;
        int inputType = editTextCaption.getInputType() | 16384 | 131072;
        this.commonInputType = inputType;
        editTextCaption.setInputType(inputType);
        updateFieldHint(false);
        this.messageEditText.setSingleLine(false);
        this.messageEditText.setMaxLines(6);
        boolean z = true;
        this.messageEditText.setTextSize(1, 18.0f);
        this.messageEditText.setGravity(80);
        this.messageEditText.setPadding(0, AndroidUtilities.m104dp(11), 0, AndroidUtilities.m104dp(12));
        this.messageEditText.setBackgroundDrawable(null);
        this.messageEditText.setTextColor(getThemedColor(Theme.key_chat_messagePanelText));
        this.messageEditText.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkOut));
        this.messageEditText.setHighlightColor(getThemedColor(Theme.key_chat_inTextSelectionHighlight));
        EditTextCaption editTextCaption2 = this.messageEditText;
        int i2 = Theme.key_chat_messagePanelHint;
        editTextCaption2.setHintColor(getThemedColor(i2));
        this.messageEditText.setHintTextColor(getThemedColor(i2));
        this.messageEditText.setCursorColor(getThemedColor(Theme.key_chat_messagePanelCursor));
        this.messageEditText.setHandlesColor(getThemedColor(Theme.key_chat_TextSelectionCursor));
        this.messageEditTextContainer.addView(this.messageEditText, 1, LayoutHelper.createFrame(-1, -2.0f, 80, 52.0f, (float) BitmapDescriptorFactory.HUE_RED, this.isChat ? 50.0f : 2.0f, 1.5f));
        this.messageEditText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.40
            boolean ctrlPressed = false;

            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (i3 == 4 && !ChatActivityEnterView.this.keyboardVisible && ChatActivityEnterView.this.isPopupShowing() && keyEvent.getAction() == 1) {
                    if (!ContentPreviewViewer.hasInstance() || !ContentPreviewViewer.getInstance().isVisible()) {
                        if (ChatActivityEnterView.this.currentPopupContentType != 1 || ChatActivityEnterView.this.botButtonsMessageObject == null) {
                            if (keyEvent.getAction() == 1) {
                                if (ChatActivityEnterView.this.currentPopupContentType == 1 && ChatActivityEnterView.this.botButtonsMessageObject != null) {
                                    SharedPreferences.Editor edit = MessagesController.getMainSettings(ChatActivityEnterView.this.currentAccount).edit();
                                    edit.putInt("hidekeyboard_" + ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.botButtonsMessageObject.getId()).commit();
                                }
                                if (ChatActivityEnterView.this.searchingType != 0) {
                                    ChatActivityEnterView.this.setSearchingTypeInternal(0, true);
                                    if (ChatActivityEnterView.this.emojiView != null) {
                                        ChatActivityEnterView.this.emojiView.closeSearch(true);
                                    }
                                    ChatActivityEnterView.this.messageEditText.requestFocus();
                                } else if (!ChatActivityEnterView.this.stickersExpanded) {
                                    if (ChatActivityEnterView.this.stickersExpansionAnim == null) {
                                        if (ChatActivityEnterView.this.botButtonsMessageObject == null || ChatActivityEnterView.this.currentPopupContentType == 1 || !TextUtils.isEmpty(ChatActivityEnterView.this.messageEditText.getText())) {
                                            ChatActivityEnterView.this.showPopup(0, 0);
                                        } else {
                                            ChatActivityEnterView.this.showPopup(1, 1);
                                        }
                                    }
                                } else {
                                    ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                                }
                            }
                            return true;
                        }
                        return false;
                    }
                    ContentPreviewViewer.getInstance().closeWithMenu();
                    return true;
                } else if (i3 == 66 && ((this.ctrlPressed || ChatActivityEnterView.this.sendByEnter) && keyEvent.getAction() == 0 && ChatActivityEnterView.this.editingMessageObject == null)) {
                    ChatActivityEnterView.this.sendMessage();
                    return true;
                } else if (i3 == 113 || i3 == 114) {
                    this.ctrlPressed = keyEvent.getAction() == 0;
                    return true;
                } else {
                    return false;
                }
            }
        });
        this.messageEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.41
            boolean ctrlPressed = false;

            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                if (i3 == 4) {
                    ChatActivityEnterView.this.sendMessage();
                    return true;
                } else if (keyEvent == null || i3 != 0) {
                    return false;
                } else {
                    if ((this.ctrlPressed || ChatActivityEnterView.this.sendByEnter) && keyEvent.getAction() == 0 && ChatActivityEnterView.this.editingMessageObject == null) {
                        ChatActivityEnterView.this.sendMessage();
                        return true;
                    }
                    return false;
                }
            }
        });
        this.messageEditText.addTextChangedListener(new C460342());
        this.messageEditText.setEnabled(this.messageEditTextEnabled);
        ArrayList<TextWatcher> arrayList = this.messageEditTextWatchers;
        if (arrayList != null) {
            Iterator<TextWatcher> it = arrayList.iterator();
            while (it.hasNext()) {
                this.messageEditText.addTextChangedListener(it.next());
            }
            this.messageEditTextWatchers.clear();
        }
        updateFieldHint(false);
        ChatActivity chatActivity3 = this.parentFragment;
        if (chatActivity3 == null || !chatActivity3.getFragmentBeginToShow()) {
            z = false;
        }
        updateSendAsButton(z);
        ChatActivity chatActivity4 = this.parentFragment;
        if (chatActivity4 != null) {
            chatActivity4.applyDraftMaybe(false);
        }
    }

    public /* synthetic */ void lambda$createMessageEditText$44() {
        if (this.accountInstance.getFormattingTextController().getFormattingPanelType() != FormattingPanelType.DEFAULT) {
            if (this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_KEYBOARD) {
                FormattingMessagesKeyboardContainer formattingMessagesKeyboardContainer = this.formattingMessagesKeyboardContainer;
                if (formattingMessagesKeyboardContainer != null) {
                    formattingMessagesKeyboardContainer.updateView();
                }
            } else {
                FormattingMessagesWeb formattingMessagesWeb = this.formattingMessagesWeb;
                if (formattingMessagesWeb != null) {
                    formattingMessagesWeb.updateColors();
                }
            }
        }
        this.messageEditText.invalidateEffects();
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onTextSpansChanged(this.messageEditText.getText());
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$42 */
    /* loaded from: classes6.dex */
    public class C460342 implements TextWatcher {
        boolean heightShouldBeChanged;
        private boolean ignorePrevTextChange;
        private boolean nextChangeIsSend;
        private CharSequence prevText;
        private boolean processChange;

        C460342() {
            ChatActivityEnterView.this = r1;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (!this.ignorePrevTextChange && ChatActivityEnterView.this.recordingAudioVideo) {
                this.prevText = charSequence.toString();
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            int currentPage;
            if (this.ignorePrevTextChange) {
                return;
            }
            if (i3 == 0 && ChatActivityEnterView.this.isFormattingMessagesContainerWebVisible) {
                ChatActivityEnterView.this.isFormattingMessagesContainerWebVisible = false;
                ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                ChatActivityEnterView.this.updateFormattingButton();
            }
            if (i3 == 0 && ChatActivityEnterView.this.isFormattingMessagesContainerVisible) {
                ChatActivityEnterView.this.showPopup(0, 2, true);
            }
            if (ChatActivityEnterView.this.emojiView != null) {
                currentPage = ChatActivityEnterView.this.emojiView.getCurrentPage();
            } else {
                currentPage = MessagesController.getGlobalEmojiSettings().getInt("selected_page", 0);
            }
            boolean z = currentPage != 0 && (ChatActivityEnterView.this.allowStickers || ChatActivityEnterView.this.allowGifs);
            if (((i2 == 0 && !TextUtils.isEmpty(charSequence)) || (i2 != 0 && TextUtils.isEmpty(charSequence))) && z) {
                ChatActivityEnterView.this.setEmojiButtonImage(false, true);
            }
            if (ChatActivityEnterView.this.lineCount != ChatActivityEnterView.this.messageEditText.getLineCount()) {
                this.heightShouldBeChanged = (ChatActivityEnterView.this.messageEditText.getLineCount() >= 4) != (ChatActivityEnterView.this.lineCount >= 4);
                if (!ChatActivityEnterView.this.isInitLineCount && ChatActivityEnterView.this.messageEditText.getMeasuredWidth() > 0) {
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    chatActivityEnterView.onLineCountChanged(chatActivityEnterView.lineCount, ChatActivityEnterView.this.messageEditText.getLineCount());
                }
                ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                chatActivityEnterView2.lineCount = chatActivityEnterView2.messageEditText.getLineCount();
            } else {
                this.heightShouldBeChanged = false;
            }
            if (ChatActivityEnterView.this.innerTextChange == 1) {
                return;
            }
            if (ChatActivityEnterView.this.sendByEnter && !ChatActivityEnterView.this.isPaste && ChatActivityEnterView.this.editingMessageObject == null && i3 > i2 && charSequence.length() > 0 && charSequence.length() == i + i3 && charSequence.charAt(charSequence.length() - 1) == '\n') {
                this.nextChangeIsSend = true;
            }
            ChatActivityEnterView.this.isPaste = false;
            ChatActivityEnterView.this.checkSendButton(true);
            CharSequence trimmedString = AndroidUtilities.getTrimmedString(charSequence.toString());
            if (ChatActivityEnterView.this.delegate != null && !ChatActivityEnterView.this.ignoreTextChange) {
                int i4 = i3 + 1;
                if (i2 > i4 || i3 - i2 > 2 || TextUtils.isEmpty(charSequence)) {
                    ChatActivityEnterView.this.messageWebPageSearch = true;
                }
                ChatActivityEnterView.this.delegate.onTextChanged(charSequence, i2 > i4 || i3 - i2 > 2, false);
            }
            if (ChatActivityEnterView.this.innerTextChange != 2 && i3 - i2 > 1) {
                this.processChange = true;
            }
            if (ChatActivityEnterView.this.editingMessageObject != null || ChatActivityEnterView.this.canWriteToChannel || trimmedString.length() == 0 || ChatActivityEnterView.this.lastTypingTimeSend >= System.currentTimeMillis() - 5000 || ChatActivityEnterView.this.ignoreTextChange) {
                return;
            }
            ChatActivityEnterView.this.lastTypingTimeSend = System.currentTimeMillis();
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.needSendTyping();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:139:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:142:0x018b  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:146:0x0192  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x01bf  */
        @Override // android.text.TextWatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void afterTextChanged(android.text.Editable r11) {
            /*
                Method dump skipped, instructions count: 572
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.C460342.afterTextChanged(android.text.Editable):void");
        }

        public /* synthetic */ void lambda$afterTextChanged$0(ValueAnimator valueAnimator) {
            int themedColor = ChatActivityEnterView.this.getThemedColor(Theme.key_chat_messagePanelVoicePressed);
            int alpha = Color.alpha(themedColor);
            ChatActivityEnterView.this.doneButtonEnabledProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (ChatActivityEnterView.this.doneCheckDrawable != null) {
                ChatActivityEnterView.this.doneCheckDrawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.setAlphaComponent(themedColor, (int) (alpha * ((ChatActivityEnterView.this.doneButtonEnabledProgress * 0.42f) + 0.58f))), PorterDuff.Mode.MULTIPLY));
            }
            if (ChatActivityEnterView.this.doneButtonImage != null) {
                ChatActivityEnterView.this.doneButtonImage.invalidate();
            }
        }

        public /* synthetic */ void lambda$afterTextChanged$1() {
            ChatActivityEnterView.this.showCaptionLimitBulletin();
        }
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.addTextChangedListener(textWatcher);
            return;
        }
        if (this.messageEditTextWatchers == null) {
            this.messageEditTextWatchers = new ArrayList<>();
        }
        this.messageEditTextWatchers.add(textWatcher);
    }

    public boolean isSendButtonVisible() {
        return this.sendButton.getVisibility() == 0;
    }

    public void setRecordVideoButtonVisible(boolean z, boolean z2) {
        if (this.audioVideoSendButton == null) {
            return;
        }
        this.isInVideoMode = z;
        if (z2) {
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            boolean z3 = false;
            if (DialogObject.isChatDialog(this.dialog_id)) {
                TLRPC$Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
                if (ChatObject.isChannel(chat) && !chat.megagroup) {
                    z3 = true;
                }
            }
            globalMainSettings.edit().putBoolean(z3 ? "currentModeVideoChannel" : "currentModeVideo", z).apply();
        }
        this.audioVideoSendButton.setState(isInVideoMode() ? ChatActivityEnterViewAnimatedIconView.State.VIDEO : ChatActivityEnterViewAnimatedIconView.State.VOICE, z2);
        this.audioVideoSendButton.setContentDescription(LocaleController.getString(isInVideoMode() ? C3632R.string.AccDescrVideoMessage : C3632R.string.AccDescrVoiceMessage));
        this.audioVideoButtonContainer.setContentDescription(LocaleController.getString(isInVideoMode() ? C3632R.string.AccDescrVideoMessage : C3632R.string.AccDescrVoiceMessage));
        this.audioVideoSendButton.sendAccessibilityEvent(8);
    }

    public boolean isRecordingAudioVideo() {
        AnimatorSet animatorSet;
        return this.recordingAudioVideo || ((animatorSet = this.runningAnimationAudio) != null && animatorSet.isRunning());
    }

    public boolean isRecordLocked() {
        return this.recordingAudioVideo && this.recordCircle.isSendButtonVisible();
    }

    public void cancelRecordingAudioVideo() {
        if (this.hasRecordVideo && isInVideoMode()) {
            CameraController.getInstance().cancelOnInitRunnable(this.onFinishInitCameraRunnable);
            this.delegate.needStartRecordVideo(5, true, 0);
        } else {
            this.delegate.needStartRecordAudio(0);
            MediaController.getInstance().stopRecording(0, false, 0, null);
        }
        this.recordingAudioVideo = false;
        updateRecordInterface(2);
    }

    public void showContextProgress(boolean z) {
        CloseProgressDrawable2 closeProgressDrawable2 = this.progressDrawable;
        if (closeProgressDrawable2 == null) {
            return;
        }
        if (z) {
            closeProgressDrawable2.startAnimation();
        } else {
            closeProgressDrawable2.stopAnimation();
        }
    }

    public void setCaption(String str) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setCaption(str);
            checkSendButton(true);
        }
    }

    public void setSlowModeTimer(int i) {
        this.slowModeTimer = i;
        updateSlowModeText();
    }

    public CharSequence getSlowModeTimer() {
        if (this.slowModeTimer > 0) {
            return this.slowModeButton.getText();
        }
        return null;
    }

    public void updateSlowModeText() {
        int i;
        boolean isUploadingMessageIdDialog;
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        AndroidUtilities.cancelRunOnUIThread(this.updateSlowModeRunnable);
        this.updateSlowModeRunnable = null;
        TLRPC$ChatFull tLRPC$ChatFull = this.info;
        if (tLRPC$ChatFull != null && tLRPC$ChatFull.slowmode_seconds != 0 && tLRPC$ChatFull.slowmode_next_send_date <= currentTime && ((isUploadingMessageIdDialog = SendMessagesHelper.getInstance(this.currentAccount).isUploadingMessageIdDialog(this.dialog_id)) || SendMessagesHelper.getInstance(this.currentAccount).isSendingMessageIdDialog(this.dialog_id))) {
            if (!ChatObject.hasAdminRights(this.accountInstance.getMessagesController().getChat(Long.valueOf(this.info.f1603id)))) {
                i = this.info.slowmode_seconds;
                this.slowModeTimer = isUploadingMessageIdDialog ? Integer.MAX_VALUE : 2147483646;
            }
            i = 0;
        } else {
            int i2 = this.slowModeTimer;
            if (i2 >= 2147483646) {
                if (this.info != null) {
                    this.accountInstance.getMessagesController().loadFullChat(this.info.f1603id, 0, true);
                }
                i = 0;
            } else {
                i = i2 - currentTime;
            }
        }
        if (this.slowModeTimer != 0 && i > 0) {
            this.slowModeButton.setText(AndroidUtilities.formatDurationNoHours(Math.max(1, i), false));
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                SimpleTextView simpleTextView = this.slowModeButton;
                chatActivityEnterViewDelegate.onUpdateSlowModeButton(simpleTextView, false, simpleTextView.getText());
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.updateSlowModeText();
                }
            };
            this.updateSlowModeRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 100L);
        } else {
            this.slowModeTimer = 0;
        }
        if (isInScheduleMode()) {
            return;
        }
        checkSendButton(true);
    }

    public void addTopView(View view, View view2, int i) {
        if (view == null) {
            return;
        }
        this.topLineView = view2;
        view2.setVisibility(8);
        this.topLineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(this.topLineView, LayoutHelper.createFrame(-1, 1, 51, 0, i + 1, 0, 0));
        this.topView = view;
        view.setVisibility(8);
        this.topViewEnterProgress = BitmapDescriptorFactory.HUE_RED;
        this.topView.setTranslationY(i);
        addView(this.topView, 0, LayoutHelper.createFrame(-1, i, 51, 0, 2, 0, 0));
        this.needShowTopView = false;
    }

    public void setForceShowSendButton(boolean z, boolean z2) {
        this.forceShowSendButton = z;
        checkSendButton(z2);
        updateTemplatesButton();
        updateCombineMessages();
    }

    public void setAllowStickersAndGifs(boolean z, boolean z2, boolean z3) {
        setAllowStickersAndGifs(z, z2, z3, false);
    }

    public void setAllowStickersAndGifs(boolean z, boolean z2, boolean z3, boolean z4) {
        if ((this.allowStickers != z2 || this.allowGifs != z3) && this.emojiView != null) {
            if (this.emojiViewVisible && !z4) {
                this.removeEmojiViewAfterAnimation = true;
                hidePopup(false);
            } else if (z4) {
                openKeyboardInternal();
            }
        }
        this.allowAnimatedEmoji = z;
        this.allowStickers = z2;
        this.allowGifs = z3;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.setAllow(z2, z3, true);
        }
        setEmojiButtonImage(false, !this.isPaused);
    }

    public void addEmojiToRecent(String str) {
        createEmojiView();
        this.emojiView.addEmojiToRecent(str);
    }

    public void setOpenGifsTabFirst() {
        createEmojiView();
        MediaDataController.getInstance(this.currentAccount).loadRecents(0, true, true, false);
        this.emojiView.switchToGifRecent();
    }

    public /* synthetic */ void lambda$new$45(ValueAnimator valueAnimator) {
        MentionsContainerView mentionsContainerView;
        if (this.topView != null) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.topViewEnterProgress = floatValue;
            View view = this.topView;
            float f = 1.0f - floatValue;
            view.setTranslationY(this.animatedTop + (view.getLayoutParams().height * f));
            this.topLineView.setAlpha(floatValue);
            this.topLineView.setTranslationY(this.animatedTop);
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity == null || (mentionsContainerView = chatActivity.mentionContainer) == null) {
                return;
            }
            mentionsContainerView.setTranslationY(f * this.topView.getLayoutParams().height);
        }
    }

    public void showTopView(boolean z, boolean z2) {
        showTopView(z, z2, false);
    }

    private void showTopView(boolean z, boolean z2, boolean z3) {
        if (this.topView == null || this.topViewShowed || getVisibility() != 0) {
            FrameLayout frameLayout = this.recordedAudioPanel;
            if (frameLayout == null || frameLayout.getVisibility() != 0) {
                if (!((!this.forceShowSendButton && this.replyingQuote == null && this.replyingMessageObject == null) || z2) || this.isFormattingMessagesContainerVisible) {
                    return;
                }
                openKeyboard();
                return;
            }
            return;
        }
        FrameLayout frameLayout2 = this.recordedAudioPanel;
        boolean z4 = (frameLayout2 == null || frameLayout2.getVisibility() != 0) && ((!this.forceShowSendButton && this.replyingQuote == null) || z2) && (this.botReplyMarkup == null || this.editingMessageObject != null);
        if (!z3 && z && z4 && !this.keyboardVisible && !isPopupShowing()) {
            openKeyboard();
            Runnable runnable = this.showTopViewRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$showTopView$46();
                }
            };
            this.showTopViewRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 200L);
            return;
        }
        this.needShowTopView = true;
        this.topViewShowed = true;
        if (!this.allowShowTopView && this.delegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda49
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$showTopView$47();
                }
            }, 300L);
        }
        if (this.allowShowTopView) {
            this.topView.setVisibility(0);
            this.topLineView.setVisibility(0);
            ValueAnimator valueAnimator = this.currentTopViewAnimation;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.currentTopViewAnimation = null;
            }
            resizeForTopView(true);
            if (z) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.topViewEnterProgress, 1.0f);
                this.currentTopViewAnimation = ofFloat;
                ofFloat.addUpdateListener(this.topViewUpdateListener);
                this.currentTopViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.43
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ValueAnimator valueAnimator2 = ChatActivityEnterView.this.currentTopViewAnimation;
                        if (valueAnimator2 != null && valueAnimator2.equals(animator)) {
                            ChatActivityEnterView.this.currentTopViewAnimation = null;
                        }
                        ChatActivityEnterView.this.notificationsLocker.unlock();
                        if (ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.mentionContainer != null) {
                            ChatActivityEnterView.this.parentFragment.mentionContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        }
                        if (ChatActivityEnterView.this.delegate != null) {
                            ChatActivityEnterView.this.delegate.onTopViewFullyShown();
                        }
                    }
                });
                this.currentTopViewAnimation.setDuration(270L);
                this.currentTopViewAnimation.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                this.currentTopViewAnimation.start();
                this.notificationsLocker.lock();
            } else {
                this.topViewEnterProgress = 1.0f;
                this.topView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.topLineView.setAlpha(1.0f);
            }
            if (!z4 || this.isFormattingMessagesContainerVisible) {
                return;
            }
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.requestFocus();
            }
            openKeyboard();
        }
    }

    public /* synthetic */ void lambda$showTopView$46() {
        showTopView(true, false, true);
        this.showTopViewRunnable = null;
    }

    public /* synthetic */ void lambda$showTopView$47() {
        this.delegate.onTopViewFullyShown();
    }

    public void onEditTimeExpired() {
        FrameLayout frameLayout = this.doneButtonContainer;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public void showEditDoneProgress(final boolean z, boolean z2) {
        if (this.doneButtonContainer == null) {
            return;
        }
        AnimatorSet animatorSet = this.doneButtonAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z2) {
            this.doneButtonAnimation = new AnimatorSet();
            if (z) {
                this.doneButtonProgress.setVisibility(0);
                this.doneButtonContainer.setEnabled(false);
                this.doneButtonAnimation.playTogether(ObjectAnimator.ofFloat(this.doneButtonImage, View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.doneButtonImage, View.SCALE_Y, 0.1f), ObjectAnimator.ofFloat(this.doneButtonImage, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.doneButtonProgress, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.doneButtonProgress, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.doneButtonProgress, View.ALPHA, 1.0f));
            } else {
                this.doneButtonImage.setVisibility(0);
                this.doneButtonContainer.setEnabled(true);
                this.doneButtonAnimation.playTogether(ObjectAnimator.ofFloat(this.doneButtonProgress, View.SCALE_X, 0.1f), ObjectAnimator.ofFloat(this.doneButtonProgress, View.SCALE_Y, 0.1f), ObjectAnimator.ofFloat(this.doneButtonProgress, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.doneButtonImage, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.doneButtonImage, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.doneButtonImage, View.ALPHA, 1.0f));
            }
            this.doneButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.44
                {
                    ChatActivityEnterView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ChatActivityEnterView.this.doneButtonAnimation == null || !ChatActivityEnterView.this.doneButtonAnimation.equals(animator)) {
                        return;
                    }
                    if (!z) {
                        ChatActivityEnterView.this.doneButtonProgress.setVisibility(4);
                    } else {
                        ChatActivityEnterView.this.doneButtonImage.setVisibility(4);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (ChatActivityEnterView.this.doneButtonAnimation == null || !ChatActivityEnterView.this.doneButtonAnimation.equals(animator)) {
                        return;
                    }
                    ChatActivityEnterView.this.doneButtonAnimation = null;
                }
            });
            this.doneButtonAnimation.setDuration(150L);
            this.doneButtonAnimation.start();
        } else if (z) {
            this.doneButtonImage.setScaleX(0.1f);
            this.doneButtonImage.setScaleY(0.1f);
            this.doneButtonImage.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.doneButtonProgress.setScaleX(1.0f);
            this.doneButtonProgress.setScaleY(1.0f);
            this.doneButtonProgress.setAlpha(1.0f);
            this.doneButtonImage.setVisibility(4);
            this.doneButtonProgress.setVisibility(0);
            this.doneButtonContainer.setEnabled(false);
        } else {
            this.doneButtonProgress.setScaleX(0.1f);
            this.doneButtonProgress.setScaleY(0.1f);
            this.doneButtonProgress.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.doneButtonImage.setScaleX(1.0f);
            this.doneButtonImage.setScaleY(1.0f);
            this.doneButtonImage.setAlpha(1.0f);
            this.doneButtonImage.setVisibility(0);
            this.doneButtonProgress.setVisibility(4);
            this.doneButtonContainer.setEnabled(true);
        }
    }

    public void hideTopView(boolean z) {
        if (this.topView == null || !this.topViewShowed) {
            return;
        }
        Runnable runnable = this.showTopViewRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        this.topViewShowed = false;
        this.needShowTopView = false;
        if (this.allowShowTopView) {
            ValueAnimator valueAnimator = this.currentTopViewAnimation;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.currentTopViewAnimation = null;
            }
            if (z) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.topViewEnterProgress, BitmapDescriptorFactory.HUE_RED);
                this.currentTopViewAnimation = ofFloat;
                ofFloat.addUpdateListener(this.topViewUpdateListener);
                this.currentTopViewAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.45
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ValueAnimator valueAnimator2 = ChatActivityEnterView.this.currentTopViewAnimation;
                        if (valueAnimator2 != null && valueAnimator2.equals(animator)) {
                            ChatActivityEnterView.this.topView.setVisibility(8);
                            ChatActivityEnterView.this.topLineView.setVisibility(8);
                            ChatActivityEnterView.this.resizeForTopView(false);
                            ChatActivityEnterView.this.currentTopViewAnimation = null;
                        }
                        if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentFragment.mentionContainer == null) {
                            return;
                        }
                        ChatActivityEnterView.this.parentFragment.mentionContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        ValueAnimator valueAnimator2 = ChatActivityEnterView.this.currentTopViewAnimation;
                        if (valueAnimator2 == null || !valueAnimator2.equals(animator)) {
                            return;
                        }
                        ChatActivityEnterView.this.currentTopViewAnimation = null;
                    }
                });
                this.currentTopViewAnimation.setDuration(250L);
                this.currentTopViewAnimation.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                this.currentTopViewAnimation.start();
                return;
            }
            this.topViewEnterProgress = BitmapDescriptorFactory.HUE_RED;
            this.topView.setVisibility(8);
            this.topLineView.setVisibility(8);
            this.topLineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            resizeForTopView(false);
            View view = this.topView;
            view.setTranslationY(view.getLayoutParams().height);
        }
    }

    public boolean isTopViewVisible() {
        View view = this.topView;
        return view != null && view.getVisibility() == 0;
    }

    public void onAdjustPanTransitionUpdate(float f, float f2, boolean z) {
        BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
        if (botWebViewMenuContainer != null) {
            botWebViewMenuContainer.setTranslationY(f);
        }
    }

    public void onAdjustPanTransitionEnd() {
        BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
        if (botWebViewMenuContainer != null) {
            botWebViewMenuContainer.onPanTransitionEnd();
        }
        Runnable runnable = this.onKeyboardClosed;
        if (runnable != null) {
            runnable.run();
            this.onKeyboardClosed = null;
        }
    }

    public void onAdjustPanTransitionStart(boolean z, int i) {
        EditTextCaption editTextCaption;
        BotWebViewMenuContainer botWebViewMenuContainer;
        Runnable runnable;
        BotWebViewMenuContainer botWebViewMenuContainer2 = this.botWebViewMenuContainer;
        if (botWebViewMenuContainer2 != null) {
            botWebViewMenuContainer2.onPanTransitionStart(z, i);
        }
        if (z && (runnable = this.showTopViewRunnable) != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.showTopViewRunnable.run();
        }
        Runnable runnable2 = this.setTextFieldRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.setTextFieldRunnable.run();
        }
        if (z && (editTextCaption = this.messageEditText) != null && editTextCaption.hasFocus() && hasBotWebView() && botCommandsMenuIsShowing() && (botWebViewMenuContainer = this.botWebViewMenuContainer) != null) {
            botWebViewMenuContainer.dismiss();
        }
    }

    private void onWindowSizeChanged() {
        int height = this.sizeNotifierLayout.getHeight();
        if (!this.keyboardVisible) {
            height -= this.emojiPadding;
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onWindowSizeChanged(height);
        }
        if (this.topView != null) {
            if (height < AndroidUtilities.m104dp(72) + C3704ActionBar.getCurrentActionBarHeight()) {
                if (this.allowShowTopView) {
                    this.allowShowTopView = false;
                    if (this.needShowTopView) {
                        this.topView.setVisibility(8);
                        this.topLineView.setVisibility(8);
                        this.topLineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        resizeForTopView(false);
                        this.topViewEnterProgress = BitmapDescriptorFactory.HUE_RED;
                        View view = this.topView;
                        view.setTranslationY(view.getLayoutParams().height);
                    }
                }
            } else if (this.allowShowTopView) {
            } else {
                this.allowShowTopView = true;
                if (this.needShowTopView) {
                    this.topView.setVisibility(0);
                    this.topLineView.setVisibility(0);
                    this.topLineView.setAlpha(1.0f);
                    resizeForTopView(true);
                    this.topViewEnterProgress = 1.0f;
                    this.topView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
            }
        }
    }

    public void resizeForTopView(boolean z) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textFieldContainer.getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.m104dp(2) + (z ? this.topView.getLayoutParams().height : 0);
        this.textFieldContainer.setLayoutParams(layoutParams);
        setMinimumHeight(AndroidUtilities.m104dp(51) + (z ? this.topView.getLayoutParams().height : 0));
        if (this.stickersExpanded) {
            if (this.searchingType == 0) {
                setStickersExpanded(false, true, false);
            } else {
                checkStickresExpandHeight();
            }
        }
    }

    public void onDestroy() {
        this.destroyed = true;
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.templatesDidChanged);
        MediaEditManager mediaEditManager = this.mediaEditManager;
        if (mediaEditManager != null) {
            mediaEditManager.finishLoading();
            this.mediaEditManager = null;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordStarted);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordStartError);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordStopped);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recordProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.audioDidSent);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.audioRouteChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.featuredStickersDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messageReceivedByServer);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.sendingMessagesChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.audioRecordTooShort);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateBotMenuButton);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdatePremiumGiftFieldIcon);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.onDestroy();
        }
        Runnable runnable = this.updateSlowModeRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.updateSlowModeRunnable = null;
        }
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock != null) {
            try {
                wakeLock.release();
                this.wakeLock = null;
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.setDelegate(null);
        }
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        if (senderSelectPopup != null) {
            senderSelectPopup.setPauseNotifications(false);
            this.senderSelectPopupWindow.dismiss();
        }
    }

    public void checkChannelRights() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        updateRecordButton(chatActivity.getCurrentChat(), this.parentFragment.getCurrentUserInfo());
    }

    public void updateRecordButton(TLRPC$Chat tLRPC$Chat, TLRPC$UserFull tLRPC$UserFull) {
        EmojiView emojiView;
        this.emojiButtonRestricted = false;
        boolean z = true;
        this.stickersEnabled = true;
        this.sendPlainEnabled = true;
        this.sendRoundEnabled = true;
        this.sendVoiceEnabled = true;
        if (tLRPC$Chat != null) {
            this.audioVideoButtonContainer.setAlpha((ChatObject.canSendVoice(tLRPC$Chat) || (ChatObject.canSendRoundVideo(tLRPC$Chat) && this.hasRecordVideo)) ? 1.0f : 0.5f);
            this.stickersEnabled = ChatObject.canSendStickers(tLRPC$Chat);
            this.sendPlainEnabled = ChatObject.canSendPlain(tLRPC$Chat);
            boolean canSendPlain = ChatObject.canSendPlain(tLRPC$Chat);
            this.sendPlainEnabled = canSendPlain;
            boolean z2 = (this.stickersEnabled || canSendPlain) ? false : true;
            this.emojiButtonRestricted = z2;
            this.emojiButtonAlpha = z2 ? 0.5f : 1.0f;
            updateEmojiButtonParams();
            if (!this.emojiButtonRestricted && (emojiView = this.emojiView) != null) {
                emojiView.setStickersBanned(!ChatObject.canSendPlain(tLRPC$Chat), !ChatObject.canSendStickers(tLRPC$Chat), tLRPC$Chat.f1602id);
                this.emojiView.setGifsBanned(!ChatObject.canSendGifs(tLRPC$Chat), tLRPC$Chat.f1602id);
            }
            this.sendRoundEnabled = ChatObject.canSendRoundVideo(tLRPC$Chat);
            this.sendVoiceEnabled = ChatObject.canSendVoice(tLRPC$Chat);
        } else if (tLRPC$UserFull != null) {
            this.userInfo = tLRPC$UserFull;
            this.audioVideoButtonContainer.setAlpha(tLRPC$UserFull.voice_messages_forbidden ? 0.5f : 1.0f);
        }
        updateFieldHint(false);
        boolean z3 = this.isInVideoMode;
        if (!this.sendRoundEnabled && z3) {
            z3 = false;
        }
        if (this.sendVoiceEnabled || z3) {
            z = z3;
        } else if (!this.hasRecordVideo) {
            z = false;
        }
        setRecordVideoButtonVisible(z, false);
    }

    public void onBeginHide() {
        Runnable runnable = this.focusRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.focusRunnable = null;
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        if (senderSelectPopup != null) {
            senderSelectPopup.setPauseNotifications(false);
            this.senderSelectPopupWindow.dismiss();
        }
        ItemOptions itemOptions = this.videoMessageCameraOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
    }

    public void onPause() {
        this.isPaused = true;
        SenderSelectPopup senderSelectPopup = this.senderSelectPopupWindow;
        if (senderSelectPopup != null) {
            senderSelectPopup.setPauseNotifications(false);
            this.senderSelectPopupWindow.dismiss();
        }
        if (this.keyboardVisible) {
            this.showKeyboardOnResume = true;
        }
        ItemOptions itemOptions = this.videoMessageCameraOptions;
        if (itemOptions != null) {
            itemOptions.dismiss();
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$onPause$48();
            }
        };
        this.hideKeyboardRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable, 500L);
    }

    public /* synthetic */ void lambda$onPause$48() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.isLastFragment()) {
            closeKeyboard();
        }
        this.hideKeyboardRunnable = null;
    }

    public void onResume() {
        ChatActivity chatActivity;
        EditTextCaption editTextCaption;
        this.isPaused = false;
        Runnable runnable = this.hideKeyboardRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideKeyboardRunnable = null;
        }
        if ((hasBotWebView() && botCommandsMenuIsShowing()) || this.isFormattingMessagesContainerVisible) {
            return;
        }
        getVisibility();
        if (this.showKeyboardOnResume && (chatActivity = this.parentFragment) != null && chatActivity.isLastFragment()) {
            this.showKeyboardOnResume = false;
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                chatActivityEnterViewDelegate.onKeyboardRequested();
            }
            if (this.searchingType == 0 && (editTextCaption = this.messageEditText) != null) {
                editTextCaption.requestFocus();
            }
            AndroidUtilities.showKeyboard(this.messageEditText);
            if (AndroidUtilities.usingHardwareInput || this.keyboardVisible || AndroidUtilities.isInMultiwindow) {
                return;
            }
            this.waitingForKeyboardOpen = true;
            AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
            AndroidUtilities.runOnUIThread(this.openKeyboardRunnable, 100L);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        this.messageEditTextEnabled = z;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setEnabled(z);
        }
    }

    public void setDialogId(long j, int i) {
        this.dialog_id = j;
        if (this.currentAccount != i) {
            this.notificationsLocker.unlock();
            NotificationCenter notificationCenter = NotificationCenter.getInstance(this.currentAccount);
            int i2 = NotificationCenter.templatesDidChanged;
            notificationCenter.removeObserver(this, i2);
            NotificationCenter notificationCenter2 = NotificationCenter.getInstance(this.currentAccount);
            int i3 = NotificationCenter.recordStarted;
            notificationCenter2.removeObserver(this, i3);
            NotificationCenter notificationCenter3 = NotificationCenter.getInstance(this.currentAccount);
            int i4 = NotificationCenter.recordStartError;
            notificationCenter3.removeObserver(this, i4);
            NotificationCenter notificationCenter4 = NotificationCenter.getInstance(this.currentAccount);
            int i5 = NotificationCenter.recordStopped;
            notificationCenter4.removeObserver(this, i5);
            NotificationCenter notificationCenter5 = NotificationCenter.getInstance(this.currentAccount);
            int i6 = NotificationCenter.recordProgressChanged;
            notificationCenter5.removeObserver(this, i6);
            NotificationCenter notificationCenter6 = NotificationCenter.getInstance(this.currentAccount);
            int i7 = NotificationCenter.closeChats;
            notificationCenter6.removeObserver(this, i7);
            NotificationCenter notificationCenter7 = NotificationCenter.getInstance(this.currentAccount);
            int i8 = NotificationCenter.audioDidSent;
            notificationCenter7.removeObserver(this, i8);
            NotificationCenter notificationCenter8 = NotificationCenter.getInstance(this.currentAccount);
            int i9 = NotificationCenter.audioRouteChanged;
            notificationCenter8.removeObserver(this, i9);
            NotificationCenter notificationCenter9 = NotificationCenter.getInstance(this.currentAccount);
            int i10 = NotificationCenter.messagePlayingDidReset;
            notificationCenter9.removeObserver(this, i10);
            NotificationCenter notificationCenter10 = NotificationCenter.getInstance(this.currentAccount);
            int i11 = NotificationCenter.messagePlayingProgressDidChanged;
            notificationCenter10.removeObserver(this, i11);
            NotificationCenter notificationCenter11 = NotificationCenter.getInstance(this.currentAccount);
            int i12 = NotificationCenter.featuredStickersDidLoad;
            notificationCenter11.removeObserver(this, i12);
            NotificationCenter notificationCenter12 = NotificationCenter.getInstance(this.currentAccount);
            int i13 = NotificationCenter.messageReceivedByServer;
            notificationCenter12.removeObserver(this, i13);
            NotificationCenter notificationCenter13 = NotificationCenter.getInstance(this.currentAccount);
            int i14 = NotificationCenter.sendingMessagesChanged;
            notificationCenter13.removeObserver(this, i14);
            this.currentAccount = i;
            this.accountInstance = AccountInstance.getInstance(i);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i2);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i3);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i4);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i5);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i6);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i7);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i8);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i9);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i10);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i11);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i12);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i13);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, i14);
        }
        boolean z = true;
        this.sendPlainEnabled = true;
        if (DialogObject.isChatDialog(this.dialog_id)) {
            this.sendPlainEnabled = ChatObject.canSendPlain(this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id)));
        }
        updateScheduleButton(false);
        updateGiftButton(false);
        checkRoundVideo();
        checkChannelRights();
        updateFieldHint(false);
        if (this.messageEditText != null) {
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity == null || !chatActivity.getFragmentBeginToShow()) {
                z = false;
            }
            updateSendAsButton(z);
        }
    }

    public void setChatInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        this.info = tLRPC$ChatFull;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.setChatInfo(tLRPC$ChatFull);
        }
        setSlowModeTimer(tLRPC$ChatFull.slowmode_next_send_date);
    }

    public void checkRoundVideo() {
        boolean z;
        boolean z2;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        if (this.hasRecordVideo) {
            return;
        }
        if (this.attachLayout == null || Build.VERSION.SDK_INT < 18) {
            this.hasRecordVideo = false;
            setRecordVideoButtonVisible(false, false);
            return;
        }
        boolean z3 = true;
        this.hasRecordVideo = true;
        this.sendRoundEnabled = true;
        this.sendVoiceEnabled = true;
        if (DialogObject.isChatDialog(this.dialog_id)) {
            TLRPC$Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
            z = ChatObject.isChannel(chat) && !chat.megagroup;
            if (z && !chat.creator && ((tLRPC$TL_chatAdminRights = chat.admin_rights) == null || !tLRPC$TL_chatAdminRights.post_messages)) {
                this.hasRecordVideo = false;
            }
            this.sendRoundEnabled = ChatObject.canSendRoundVideo(chat);
            this.sendVoiceEnabled = ChatObject.canSendVoice(chat);
        } else {
            z = false;
        }
        if (!SharedConfig.inappCamera) {
            this.hasRecordVideo = false;
        }
        if (this.hasRecordVideo) {
            if (SharedConfig.hasCameraCache) {
                CameraController.getInstance().initCamera(null);
            }
            z2 = MessagesController.getGlobalMainSettings().getBoolean(z ? "currentModeVideoChannel" : "currentModeVideo", z);
        } else {
            z2 = false;
        }
        if (!this.sendRoundEnabled && z2) {
            z2 = false;
        }
        if (this.sendVoiceEnabled || z2) {
            z3 = z2;
        } else if (!this.hasRecordVideo) {
            z3 = false;
        }
        setRecordVideoButtonVisible(z3, false);
    }

    public boolean isInVideoMode() {
        return this.isInVideoMode;
    }

    public boolean hasRecordVideo() {
        return this.hasRecordVideo;
    }

    public MessageObject getReplyingMessageObject() {
        return this.replyingMessageObject;
    }

    public void updateFieldHint(boolean z) {
        boolean z2;
        MessageObject messageObject;
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup;
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup2;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return;
        }
        CharSequence charSequence = this.overrideHint;
        if (charSequence != null) {
            editTextCaption.setHintText(charSequence, z);
            this.messageEditText.setHintText2(this.overrideHint2, z);
            return;
        }
        boolean z3 = true;
        if (!this.sendPlainEnabled && !isEditingMessage()) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(" d " + LocaleController.getString("PlainTextRestrictedHint", C3632R.string.PlainTextRestrictedHint));
            spannableStringBuilder.setSpan(new ColoredImageSpan(C3632R.C3634drawable.msg_mini_lock3), 1, 2, 0);
            this.messageEditText.setHintText(spannableStringBuilder, z);
            this.messageEditText.setText((CharSequence) null);
            this.messageEditText.setEnabled(false);
            this.messageEditText.setInputType(1);
            return;
        }
        this.messageEditText.setEnabled(true);
        int inputType = this.messageEditText.getInputType();
        int i = this.commonInputType;
        if (inputType != i) {
            this.messageEditText.setInputType(i);
        }
        MessageObject messageObject2 = this.replyingMessageObject;
        if (messageObject2 != null && (tLRPC$ReplyMarkup2 = messageObject2.messageOwner.reply_markup) != null && !TextUtils.isEmpty(tLRPC$ReplyMarkup2.placeholder)) {
            this.messageEditText.setHintText(this.replyingMessageObject.messageOwner.reply_markup.placeholder, z);
        } else if (this.editingMessageObject != null) {
            this.messageEditText.setHintText(this.editingCaption ? LocaleController.getString("Caption", C3632R.string.Caption) : LocaleController.getString("TypeMessage", C3632R.string.TypeMessage));
        } else if (this.botKeyboardViewVisible && (messageObject = this.botButtonsMessageObject) != null && (tLRPC$ReplyMarkup = messageObject.messageOwner.reply_markup) != null && !TextUtils.isEmpty(tLRPC$ReplyMarkup.placeholder)) {
            this.messageEditText.setHintText(this.botButtonsMessageObject.messageOwner.reply_markup.placeholder, z);
        } else {
            if (DialogObject.isChatDialog(this.dialog_id)) {
                TLRPC$Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
                TLRPC$ChatFull chatFull = this.accountInstance.getMessagesController().getChatFull(-this.dialog_id);
                z2 = ChatObject.isChannel(chat) && !chat.megagroup;
                if (chat == null || ChatObject.getSendAsPeerId(chat, chatFull) != chat.f1602id) {
                    z3 = false;
                }
            } else {
                z3 = false;
                z2 = false;
            }
            if (z3) {
                this.messageEditText.setHintText(LocaleController.getString("SendAnonymously", C3632R.string.SendAnonymously));
                return;
            }
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity != null && chatActivity.isThreadChat()) {
                ChatActivity chatActivity2 = this.parentFragment;
                if (!chatActivity2.isTopic) {
                    if (chatActivity2.isReplyChatComment()) {
                        this.messageEditText.setHintText(LocaleController.getString("Comment", C3632R.string.Comment));
                        return;
                    } else {
                        this.messageEditText.setHintText(LocaleController.getString("Reply", C3632R.string.Reply));
                        return;
                    }
                }
            }
            if (z2) {
                if (this.parentFragment != null && isTemplatesChannel(false, false)) {
                    this.messageEditText.setHintText(LocaleController.getInternalString(C3632R.string.chat_template));
                    return;
                }
                ChatActivity chatActivity3 = this.parentFragment;
                if (chatActivity3 != null && chatActivity3.isInAlbumMode()) {
                    this.messageEditText.setHintText(LocaleController.getString("TypeMessage", C3632R.string.TypeMessage));
                    return;
                } else if (this.silent) {
                    this.messageEditText.setHintText(LocaleController.getString("ChannelSilentBroadcast", C3632R.string.ChannelSilentBroadcast), z);
                    return;
                } else {
                    this.messageEditText.setHintText(LocaleController.getString("ChannelBroadcast", C3632R.string.ChannelBroadcast), z);
                    return;
                }
            }
            this.messageEditText.setHintText(LocaleController.getString("TypeMessage", C3632R.string.TypeMessage));
        }
    }

    public void setReplyingMessageObject(MessageObject messageObject, ChatActivity.ReplyQuote replyQuote, Boolean bool) {
        MessageObject messageObject2;
        if (messageObject != null) {
            if (this.botMessageObject == null && (messageObject2 = this.botButtonsMessageObject) != this.replyingMessageObject) {
                this.botMessageObject = messageObject2;
            }
            this.replyingMessageObject = messageObject;
            this.replyingQuote = replyQuote;
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity == null || !chatActivity.isTopic || chatActivity.getThreadMessage() != this.replyingMessageObject) {
                setButtons(this.replyingMessageObject, bool != null ? bool.booleanValue() : true);
            }
        } else if (this.replyingMessageObject == this.botButtonsMessageObject) {
            this.replyingMessageObject = null;
            this.replyingQuote = null;
            setButtons(this.botMessageObject, bool != null ? bool.booleanValue() : false);
            this.botMessageObject = null;
        } else {
            this.replyingMessageObject = null;
            this.replyingQuote = null;
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        MediaController.getInstance().setReplyingMessage(messageObject, getThreadMessage(), chatActivityEnterViewDelegate != null ? chatActivityEnterViewDelegate.getReplyToStory() : null);
        updateFieldHint(false);
        updateCombineMessages();
    }

    public void setWebPage(TLRPC$WebPage tLRPC$WebPage, boolean z) {
        this.messageWebPage = tLRPC$WebPage;
        this.messageWebPageSearch = z;
    }

    public boolean isMessageWebPageSearchEnabled() {
        return this.messageWebPageSearch;
    }

    private void hideRecordedAudioPanel(boolean z) {
        AnimatorSet animatorSet;
        AnimatorSet animatorSet2 = this.recordPannelAnimation;
        if (animatorSet2 == null || !animatorSet2.isRunning()) {
            this.audioToSendPath = null;
            this.audioToSend = null;
            this.audioToSendMessageObject = null;
            this.videoToSendMessageObject = null;
            VideoTimelineView videoTimelineView = this.videoTimelineView;
            if (videoTimelineView != null) {
                videoTimelineView.destroy();
            }
            ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
            if (chatActivityEnterViewAnimatedIconView != null) {
                chatActivityEnterViewAnimatedIconView.setVisibility(0);
            }
            if (z) {
                ImageView imageView = this.attachButton;
                if (imageView == null) {
                    return;
                }
                imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.attachButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.attachButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
                this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
                updateEmojiButtonParams();
                AnimatorSet animatorSet3 = new AnimatorSet();
                this.recordPannelAnimation = animatorSet3;
                Animator[] animatorArr = new Animator[11];
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView2 = this.emojiButton;
                Property<? super View, Float> property = this.EMOJI_BUTTON_ALPHA;
                float[] fArr = new float[1];
                fArr[0] = this.emojiButtonRestricted ? 0.5f : 1.0f;
                animatorArr[0] = ObjectAnimator.ofFloat(chatActivityEnterViewAnimatedIconView2, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property, fArr);
                animatorArr[1] = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f);
                animatorArr[2] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                animatorArr[3] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.SCALE_X, BitmapDescriptorFactory.HUE_RED);
                animatorArr[4] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED);
                animatorArr[5] = ObjectAnimator.ofFloat(this.recordedAudioPanel, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                animatorArr[6] = ObjectAnimator.ofFloat(this.attachButton, View.ALPHA, 1.0f);
                animatorArr[7] = ObjectAnimator.ofFloat(this.attachButton, View.SCALE_X, 1.0f);
                animatorArr[8] = ObjectAnimator.ofFloat(this.attachButton, View.SCALE_Y, 1.0f);
                animatorArr[9] = ObjectAnimator.ofFloat(this.messageEditText, View.ALPHA, 1.0f);
                animatorArr[10] = ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) this.MESSAGE_TEXT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED);
                animatorSet3.playTogether(animatorArr);
                BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
                if (botCommandsMenuView != null) {
                    botCommandsMenuView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.recordPannelAnimation.playTogether(ObjectAnimator.ofFloat(this.botCommandsMenuButton, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, View.SCALE_Y, 1.0f));
                }
                this.recordPannelAnimation.setDuration(150L);
                this.recordPannelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.46
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        FrameLayout frameLayout = ChatActivityEnterView.this.recordedAudioPanel;
                        if (frameLayout != null) {
                            frameLayout.setVisibility(8);
                        }
                        EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
                        if (editTextCaption != null) {
                            editTextCaption.requestFocus();
                        }
                        ChatActivityEnterView.this.isRecordingStateChanged();
                    }
                });
            } else {
                RLottieImageView rLottieImageView = this.recordDeleteImageView;
                if (rLottieImageView != null) {
                    rLottieImageView.playAnimation();
                }
                AnimatorSet animatorSet4 = new AnimatorSet();
                if (isInVideoMode()) {
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.videoTimelineView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.videoTimelineView, View.TRANSLATION_X, -AndroidUtilities.m104dp(20)), ObjectAnimator.ofFloat(this.messageEditText, (Property<EditTextCaption, Float>) this.MESSAGE_TEXT_TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                    if (this.emojiButtonPaddingAlpha == 1.0f) {
                        animatorSet4.playTogether(ObjectAnimator.ofFloat(this.messageEditText, View.ALPHA, 1.0f));
                    } else {
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.messageEditText, View.ALPHA, 1.0f);
                        ofFloat.setStartDelay(750L);
                        ofFloat.setDuration(200L);
                        animatorSet4.playTogether(ofFloat);
                    }
                } else {
                    EditTextCaption editTextCaption = this.messageEditText;
                    if (editTextCaption != null && this.emojiButtonPaddingAlpha == 1.0f) {
                        editTextCaption.setAlpha(1.0f);
                        this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                        updateMessageTextParams();
                    } else {
                        this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                        updateMessageTextParams();
                        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.messageEditText, View.ALPHA, 1.0f);
                        ofFloat2.setStartDelay(750L);
                        ofFloat2.setDuration(200L);
                        animatorSet4.playTogether(ofFloat2);
                    }
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.recordedAudioSeekBar, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordedAudioPlayButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordedAudioBackground, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordedAudioTimeTextView, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.recordedAudioSeekBar, View.TRANSLATION_X, -AndroidUtilities.m104dp(20)), ObjectAnimator.ofFloat(this.recordedAudioPlayButton, View.TRANSLATION_X, -AndroidUtilities.m104dp(20)), ObjectAnimator.ofFloat(this.recordedAudioBackground, View.TRANSLATION_X, -AndroidUtilities.m104dp(20)), ObjectAnimator.ofFloat(this.recordedAudioTimeTextView, View.TRANSLATION_X, -AndroidUtilities.m104dp(20)));
                }
                animatorSet4.setDuration(200L);
                ImageView imageView2 = this.attachButton;
                if (imageView2 != null) {
                    imageView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.attachButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.attachButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.attachButton, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.attachButton, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.attachButton, View.SCALE_Y, 1.0f));
                    animatorSet.setDuration(150L);
                } else {
                    animatorSet = null;
                }
                this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
                this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
                updateEmojiButtonParams();
                AnimatorSet animatorSet5 = new AnimatorSet();
                Animator[] animatorArr2 = new Animator[6];
                animatorArr2[0] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                animatorArr2[1] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.SCALE_X, BitmapDescriptorFactory.HUE_RED);
                animatorArr2[2] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED);
                animatorArr2[3] = ObjectAnimator.ofFloat(this.recordDeleteImageView, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
                ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView3 = this.emojiButton;
                Property<? super View, Float> property2 = this.EMOJI_BUTTON_ALPHA;
                float[] fArr2 = new float[1];
                fArr2[0] = this.emojiButtonRestricted ? 0.5f : 1.0f;
                animatorArr2[4] = ObjectAnimator.ofFloat(chatActivityEnterViewAnimatedIconView3, (Property<ChatActivityEnterViewAnimatedIconView, Float>) property2, fArr2);
                animatorArr2[5] = ObjectAnimator.ofFloat(this.emojiButton, (Property<ChatActivityEnterViewAnimatedIconView, Float>) this.EMOJI_BUTTON_SCALE, 1.0f);
                animatorSet5.playTogether(animatorArr2);
                BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
                if (botCommandsMenuView2 != null) {
                    botCommandsMenuView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.botCommandsMenuButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    animatorSet5.playTogether(ObjectAnimator.ofFloat(this.botCommandsMenuButton, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.botCommandsMenuButton, View.SCALE_Y, 1.0f));
                }
                animatorSet5.setDuration(150L);
                animatorSet5.setStartDelay(600L);
                AnimatorSet animatorSet6 = new AnimatorSet();
                this.recordPannelAnimation = animatorSet6;
                if (animatorSet != null) {
                    animatorSet6.playTogether(animatorSet4, animatorSet, animatorSet5);
                } else {
                    animatorSet6.playTogether(animatorSet4, animatorSet5);
                }
                this.recordPannelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.47
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatActivityEnterView.this.hideRecordedAudioPanelInternal();
                    }
                });
            }
            AnimatorSet animatorSet7 = this.recordPannelAnimation;
            if (animatorSet7 != null) {
                animatorSet7.start();
            }
        }
    }

    public void hideRecordedAudioPanelInternal() {
        this.audioToSendPath = null;
        this.audioToSend = null;
        this.audioToSendMessageObject = null;
        this.videoToSendMessageObject = null;
        VideoTimelineView videoTimelineView = this.videoTimelineView;
        if (videoTimelineView != null) {
            videoTimelineView.destroy();
        }
        SeekBarWaveformView seekBarWaveformView = this.recordedAudioSeekBar;
        if (seekBarWaveformView != null) {
            seekBarWaveformView.setAlpha(1.0f);
            this.recordedAudioSeekBar.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        ImageView imageView = this.recordedAudioPlayButton;
        if (imageView != null) {
            imageView.setAlpha(1.0f);
            this.recordedAudioPlayButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        View view = this.recordedAudioBackground;
        if (view != null) {
            view.setAlpha(1.0f);
            this.recordedAudioBackground.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        TextView textView = this.recordedAudioTimeTextView;
        if (textView != null) {
            textView.setAlpha(1.0f);
            this.recordedAudioTimeTextView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        VideoTimelineView videoTimelineView2 = this.videoTimelineView;
        if (videoTimelineView2 != null) {
            videoTimelineView2.setAlpha(1.0f);
            this.videoTimelineView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setAlpha(1.0f);
            this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
            updateMessageTextParams();
            this.messageEditText.requestFocus();
        }
        FrameLayout frameLayout = this.recordedAudioPanel;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        isRecordingStateChanged();
    }

    public void sendMessage() {
        if (isInScheduleMode() || isTemplatesChannel(true, true)) {
            AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.48
                @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public /* synthetic */ ArrayList getSelectedDialogs() {
                    return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                }

                {
                    ChatActivityEnterView.this = this;
                }

                @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public void didSelectDate(boolean z, int i, String str) {
                    ChatActivityEnterView.this.sendMessageInternal(z, i, true, str, true);
                }
            }, this.resourcesProvider, this.parentFragment);
        } else {
            sendMessageInternal(true, 0, true);
        }
    }

    public void sendMessageInternal(final boolean z, final int i, boolean z2, final String str, boolean z3) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        ChatActivity chatActivity;
        TLRPC$Chat currentChat;
        EmojiView emojiView;
        ChatActivity chatActivity2 = this.parentFragment;
        if (chatActivity2 != null && chatActivity2.isInMultipleFilesSending()) {
            if (this.messageEditText != null) {
                SendMessagesHelper.prepareSendingDocuments(this.parentFragment.getAccountInstance(), null, null, new ArrayList(this.parentFragment.getMultipleFilesSendingUris()), this.messageEditText.getText().toString(), null, this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, null, this.editingMessageObject, z, i, null, null, true);
                this.messageEditText.setText("");
                this.parentFragment.resetMultipleFilesSendingMode(true);
            }
        } else if (this.slowModeTimer == Integer.MAX_VALUE && !isInScheduleMode()) {
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
            if (chatActivityEnterViewDelegate2 != null) {
                chatActivityEnterViewDelegate2.scrollToSendingMessage();
            }
        } else {
            ChatActivity chatActivity3 = this.parentFragment;
            if (chatActivity3 != null) {
                TLRPC$Chat currentChat2 = chatActivity3.getCurrentChat();
                if (this.parentFragment.getCurrentUser() != null || ((ChatObject.isChannel(currentChat2) && currentChat2.megagroup) || !ChatObject.isChannel(currentChat2))) {
                    SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
                    edit.putBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + this.dialog_id, !z).commit();
                }
            }
            if (this.stickersExpanded) {
                setStickersExpanded(false, true, false);
                if (this.searchingType != 0 && (emojiView = this.emojiView) != null) {
                    emojiView.closeSearch(false);
                    this.emojiView.hideSearchKeyboard();
                }
            }
            if (z2 && showConfirmAlert(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$sendMessageInternal$49(z, i);
                }
            })) {
                return;
            }
            if (this.videoToSendMessageObject != null) {
                this.delegate.needStartRecordVideo(4, z, i);
                hideRecordedAudioPanel(true);
                checkSendButton(true);
            } else if (this.audioToSend != null) {
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null && playingMessageObject == this.audioToSendMessageObject) {
                    MediaController.getInstance().cleanupPlayer(true, true);
                }
                SendMessagesHelper.SendMessageParams m86of = SendMessagesHelper.SendMessageParams.m86of(this.audioToSend, null, this.audioToSendPath, this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, null, null, null, z, i, 0, null, null, false, str);
                applyStoryToSendMessageParams(m86of);
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(m86of);
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = this.delegate;
                if (chatActivityEnterViewDelegate3 != null) {
                    chatActivityEnterViewDelegate3.onMessageSend(null, z, i, str);
                }
                hideRecordedAudioPanel(true);
                checkSendButton(true);
            } else {
                EditTextCaption editTextCaption = this.messageEditText;
                final String text = editTextCaption == null ? "" : editTextCaption.getText();
                ChatActivity chatActivity4 = this.parentFragment;
                if (chatActivity4 != null && (currentChat = chatActivity4.getCurrentChat()) != null && currentChat.slowmode_enabled && !ChatObject.hasAdminRights(currentChat)) {
                    if (text.length() > this.accountInstance.getMessagesController().maxMessageLength) {
                        AlertsCreator.showSimpleAlert(this.parentFragment, LocaleController.getString("Slowmode", C3632R.string.Slowmode), LocaleController.getString("SlowmodeSendErrorTooLong", C3632R.string.SlowmodeSendErrorTooLong), this.resourcesProvider);
                        return;
                    } else if (this.forceShowSendButton && text.length() > 0) {
                        AlertsCreator.showSimpleAlert(this.parentFragment, LocaleController.getString("Slowmode", C3632R.string.Slowmode), LocaleController.getString("SlowmodeSendError", C3632R.string.SlowmodeSendError), this.resourcesProvider);
                        return;
                    }
                }
                if (checkPremiumAnimatedEmoji(this.currentAccount, this.dialog_id, this.parentFragment, null, text)) {
                    return;
                }
                if (this.needCombineMessages && z3 && text != null && i == 0 && (chatActivity = this.parentFragment) != null) {
                    chatActivity.combineMessages(text);
                    this.messageEditText.setText("");
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate4 = this.delegate;
                    if (chatActivityEnterViewDelegate4 != null) {
                        chatActivityEnterViewDelegate4.onMessageSend(text, z, i, str);
                    }
                } else if (processSendingText(text, z, i, str)) {
                    if (this.delegate.hasForwardingMessages() || ((i != 0 && !isInScheduleMode()) || isInScheduleMode())) {
                        EditTextCaption editTextCaption2 = this.messageEditText;
                        if (editTextCaption2 != null) {
                            editTextCaption2.setText("");
                        }
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate5 = this.delegate;
                        if (chatActivityEnterViewDelegate5 != null) {
                            chatActivityEnterViewDelegate5.onMessageSend(text, z, i, str);
                        }
                    } else {
                        this.messageTransitionIsRunning = false;
                        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda66
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.this.lambda$sendMessageInternal$50(text, z, i, str);
                            }
                        };
                        this.moveToSendStateRunnable = runnable;
                        AndroidUtilities.runOnUIThread(runnable, 200L);
                    }
                    this.lastTypingTimeSend = 0L;
                } else if (!this.forceShowSendButton || (chatActivityEnterViewDelegate = this.delegate) == null) {
                } else {
                    chatActivityEnterViewDelegate.onMessageSend(null, z, i, str);
                }
            }
        }
    }

    public /* synthetic */ void lambda$sendMessageInternal$49(boolean z, int i) {
        sendMessageInternal(z, i, false);
    }

    public /* synthetic */ void lambda$sendMessageInternal$50(CharSequence charSequence, boolean z, int i, String str) {
        this.moveToSendStateRunnable = null;
        hideTopView(true);
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setText("");
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onMessageSend(charSequence, z, i, str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:210:0x0090, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0120, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean checkPremiumAnimatedEmoji(int r9, long r10, final org.telegram.p043ui.ActionBar.BaseFragment r12, android.widget.FrameLayout r13, java.lang.CharSequence r14) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.checkPremiumAnimatedEmoji(int, long, org.telegram.ui.ActionBar.BaseFragment, android.widget.FrameLayout, java.lang.CharSequence):boolean");
    }

    public static /* synthetic */ void lambda$checkPremiumAnimatedEmoji$51(BaseFragment baseFragment) {
        if (baseFragment != null) {
            new PremiumFeatureBottomSheet(baseFragment, 11, false).show();
        } else if (baseFragment.getContext() instanceof LaunchActivity) {
            ((LaunchActivity) baseFragment.getContext()).lambda$runLinkRequest$94(new PremiumPreviewFragment(null));
        }
    }

    public void showCaptionLimitBulletin() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || !ChatObject.isChannelAndNotMegaGroup(chatActivity.getCurrentChat())) {
            return;
        }
        BulletinFactory.m62of(this.parentFragment).createCaptionLimitBulletin(MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium, new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                ChatActivityEnterView.this.lambda$showCaptionLimitBulletin$52();
            }
        }).show();
    }

    public /* synthetic */ void lambda$showCaptionLimitBulletin$52() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            chatActivity.presentFragment(new PremiumPreviewFragment("caption_limit"));
        }
    }

    public void doneEditingMessage() {
        MessagePreviewParams messagePreviewParams;
        if (this.editingMessageObject == null) {
            return;
        }
        if (this.isFormattingMessagesContainerVisible) {
            setShowFormattingButton(false);
            showPopup(0, 2);
        }
        if (this.isFormattingMessagesContainerWebVisible) {
            this.isFormattingMessagesContainerWebVisible = false;
            this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
        }
        if (this.currentLimit - this.codePointCount < 0) {
            NumberTextView numberTextView = this.captionLimitView;
            if (numberTextView != null) {
                AndroidUtilities.shakeViewSpring(numberTextView, 3.5f);
                try {
                    this.captionLimitView.performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
            if (MessagesController.getInstance(this.currentAccount).premiumLocked || MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium <= this.codePointCount) {
                return;
            }
            showCaptionLimitBulletin();
            return;
        }
        if (this.searchingType != 0) {
            setSearchingTypeInternal(0, true);
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.closeSearch(false);
            }
            if (this.stickersExpanded) {
                setStickersExpanded(false, true, false);
                this.waitingForKeyboardOpenAfterAnimation = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda62
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatActivityEnterView.this.lambda$doneEditingMessage$53();
                    }
                }, 200L);
            }
        }
        EditTextCaption editTextCaption = this.messageEditText;
        String text = editTextCaption == null ? "" : editTextCaption.getText();
        MessageObject messageObject = this.editingMessageObject;
        if (messageObject == null || messageObject.type != 19) {
            text = AndroidUtilities.getTrimmedString(text);
        }
        CharSequence[] charSequenceArr = {text};
        if (TextUtils.isEmpty(charSequenceArr[0])) {
            TLRPC$MessageMedia tLRPC$MessageMedia = this.editingMessageObject.messageOwner.media;
            if ((tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaWebPage) || (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaEmpty) || tLRPC$MessageMedia == null) {
                AndroidUtilities.shakeViewSpring(this.messageEditText, -3.0f);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                return;
            }
        }
        ArrayList<TLRPC$MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, supportsSendingNewEntities());
        if (!TextUtils.equals(charSequenceArr[0], this.editingMessageObject.messageText) || ((entities != null && !entities.isEmpty()) || !this.editingMessageObject.messageOwner.entities.isEmpty() || (this.editingMessageObject.messageOwner.media instanceof TLRPC$TL_messageMediaWebPage))) {
            MessageObject messageObject2 = this.editingMessageObject;
            messageObject2.editingMessage = charSequenceArr[0];
            messageObject2.editingMessageEntities = entities;
            messageObject2.editingMessageSearchWebPage = this.messageWebPageSearch;
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity != null && (messagePreviewParams = chatActivity.messagePreviewParams) != null) {
                if (chatActivity.foundWebPage instanceof TLRPC$TL_webPagePending) {
                    messageObject2.editingMessageSearchWebPage = false;
                    int i = messageObject2.type;
                    if (i == 0 || i == 19) {
                        messageObject2.messageOwner.media = new TLRPC$TL_messageMediaEmpty();
                        this.editingMessageObject.messageOwner.media.flags |= 512;
                    }
                } else if (messagePreviewParams.webpage != null) {
                    messageObject2.editingMessageSearchWebPage = false;
                    messageObject2.messageOwner.media = new TLRPC$TL_messageMediaWebPage();
                    TLRPC$MessageMedia tLRPC$MessageMedia2 = this.editingMessageObject.messageOwner.media;
                    tLRPC$MessageMedia2.flags |= 512;
                    tLRPC$MessageMedia2.webpage = this.parentFragment.messagePreviewParams.webpage;
                } else {
                    messageObject2.editingMessageSearchWebPage = false;
                    int i2 = messageObject2.type;
                    if (i2 == 0 || i2 == 19) {
                        messageObject2.messageOwner.media = new TLRPC$TL_messageMediaEmpty();
                        this.editingMessageObject.messageOwner.media.flags |= 512;
                    }
                }
                TLRPC$Message tLRPC$Message = this.editingMessageObject.messageOwner;
                MessagePreviewParams messagePreviewParams2 = this.parentFragment.messagePreviewParams;
                tLRPC$Message.invert_media = messagePreviewParams2.webpageTop;
                if (messagePreviewParams2.hasMedia) {
                    TLRPC$MessageMedia tLRPC$MessageMedia3 = tLRPC$Message.media;
                    if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaWebPage) {
                        boolean z = messagePreviewParams2.webpageSmall;
                        tLRPC$MessageMedia3.force_small_media = z;
                        tLRPC$MessageMedia3.force_large_media = true ^ z;
                    }
                }
            } else {
                messageObject2.editingMessageSearchWebPage = false;
                int i3 = messageObject2.type;
                if (i3 == 0 || i3 == 19) {
                    messageObject2.messageOwner.media = new TLRPC$TL_messageMediaEmpty();
                    this.editingMessageObject.messageOwner.media.flags |= 512;
                }
            }
            SendMessagesHelper sendMessagesHelper = SendMessagesHelper.getInstance(this.currentAccount);
            MessageObject messageObject3 = this.editingMessageObject;
            sendMessagesHelper.editMessage(messageObject3, null, null, null, null, null, false, messageObject3.hasMediaSpoilers(), null);
        }
        setEditingMessageObject(null, false);
    }

    public /* synthetic */ void lambda$doneEditingMessage$53() {
        this.waitingForKeyboardOpenAfterAnimation = false;
        openKeyboardInternal();
    }

    public boolean processSendingText(CharSequence charSequence, boolean z, int i, String str) {
        int i2;
        int i3;
        int i4;
        int i5;
        MessageObject.SendAnimationData sendAnimationData;
        char c;
        boolean z2;
        MessagePreviewParams messagePreviewParams;
        MessagePreviewParams messagePreviewParams2;
        MessagePreviewParams messagePreviewParams3;
        ChatActivity chatActivity;
        ChatActivity chatActivity2;
        ChatActivity.ReplyQuote replyQuote = this.replyingQuote;
        int i6 = 0;
        if (replyQuote != null && (chatActivity2 = this.parentFragment) != null && replyQuote.outdated) {
            chatActivity2.showQuoteMessageUpdate();
            return false;
        }
        int[] iArr = new int[1];
        CharSequence charSequence2 = charSequence;
        Emoji.parseEmojis(charSequence2, iArr);
        boolean z3 = iArr[0] > 0;
        if (!z3) {
            charSequence2 = AndroidUtilities.getTrimmedString(charSequence);
        }
        boolean supportsSendingNewEntities = supportsSendingNewEntities();
        int i7 = this.accountInstance.getMessagesController().maxMessageLength;
        if (charSequence2.length() != 0) {
            if (this.delegate != null && (chatActivity = this.parentFragment) != null) {
                if ((i != 0) == chatActivity.isInScheduleMode()) {
                    this.delegate.prepareMessageSending();
                }
            }
            int i8 = 0;
            while (true) {
                int i9 = i8 + i7;
                if (charSequence2.length() > i9) {
                    int i10 = i9 - 1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    for (int i11 = i6; i10 > i8 && i11 < 300; i11++) {
                        char charAt = charSequence2.charAt(i10);
                        char charAt2 = i10 > 0 ? charSequence2.charAt(i10 - 1) : ' ';
                        if (charAt == '\n' && charAt2 == '\n') {
                            i2 = i10;
                            break;
                        }
                        if (charAt == '\n') {
                            i5 = i10;
                        } else if (i3 < 0 && Character.isWhitespace(charAt) && charAt2 == '.') {
                            i3 = i10;
                        } else if (i4 < 0 && Character.isWhitespace(charAt)) {
                            i4 = i10;
                        }
                        i10--;
                    }
                    i2 = -1;
                } else {
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                }
                int min = Math.min(i9, charSequence2.length());
                if (i2 > 0) {
                    min = i2;
                } else if (i5 > 0) {
                    min = i5;
                } else if (i3 > 0) {
                    min = i3;
                } else if (i4 > 0) {
                    min = i4;
                }
                CharSequence subSequence = charSequence2.subSequence(i8, min);
                if (!z3) {
                    subSequence = AndroidUtilities.getTrimmedString(subSequence);
                }
                CharSequence[] charSequenceArr = {subSequence};
                ArrayList<TLRPC$MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, supportsSendingNewEntities);
                if (this.delegate.hasForwardingMessages()) {
                    sendAnimationData = null;
                } else {
                    MessageObject.SendAnimationData sendAnimationData2 = new MessageObject.SendAnimationData();
                    float m104dp = AndroidUtilities.m104dp(22);
                    sendAnimationData2.height = m104dp;
                    sendAnimationData2.width = m104dp;
                    EditTextCaption editTextCaption = this.messageEditText;
                    if (editTextCaption != null) {
                        editTextCaption.getLocationInWindow(this.location);
                        sendAnimationData2.f1536x = this.location[0] + AndroidUtilities.m104dp(11);
                        sendAnimationData2.f1537y = this.location[1] + AndroidUtilities.m104dp(19);
                    } else {
                        sendAnimationData2.f1536x = AndroidUtilities.m104dp(59);
                        sendAnimationData2.f1537y = AndroidUtilities.displaySize.y - AndroidUtilities.m104dp(19);
                    }
                    sendAnimationData = sendAnimationData2;
                }
                boolean checkUpdateStickersOrder = SendMessagesHelper.checkUpdateStickersOrder(charSequence2);
                getThreadMessage();
                ChatActivity chatActivity3 = this.parentFragment;
                if (chatActivity3 == null || TextUtils.isEmpty(chatActivity3.savedMultiReplyMessage) || charSequence2.length() == 0 || !charSequence2.toString().contains(AndroidUtilities.getTrimmedString(this.parentFragment.savedMultiReplyMessage))) {
                    c = 0;
                    z2 = false;
                } else {
                    z2 = true;
                    c = 0;
                }
                SendMessagesHelper.SendMessageParams m91of = SendMessagesHelper.SendMessageParams.m91of(charSequenceArr[c].toString(), this.dialog_id, this.replyingMessageObject, getThreadMessage(), z2 ? null : this.messageWebPage, !z2 && this.messageWebPageSearch, entities, null, null, z, i, sendAnimationData, checkUpdateStickersOrder, str);
                applyStoryToSendMessageParams(m91of);
                ChatActivity chatActivity4 = this.parentFragment;
                m91of.invert_media = (chatActivity4 == null || (messagePreviewParams3 = chatActivity4.messagePreviewParams) == null || !messagePreviewParams3.webpageTop) ? false : true;
                TLRPC$WebPage tLRPC$WebPage = this.messageWebPage;
                if (tLRPC$WebPage instanceof TLRPC$TL_webPagePending) {
                    m91of.searchLinks = true;
                    m91of.mediaWebPage = null;
                } else if (tLRPC$WebPage != null) {
                    TLRPC$TL_messageMediaWebPage tLRPC$TL_messageMediaWebPage = new TLRPC$TL_messageMediaWebPage();
                    m91of.mediaWebPage = tLRPC$TL_messageMediaWebPage;
                    tLRPC$TL_messageMediaWebPage.webpage = this.messageWebPage;
                    ChatActivity chatActivity5 = this.parentFragment;
                    tLRPC$TL_messageMediaWebPage.force_large_media = (chatActivity5 == null || (messagePreviewParams2 = chatActivity5.messagePreviewParams) == null || messagePreviewParams2.webpageSmall) ? false : true;
                    tLRPC$TL_messageMediaWebPage.force_small_media = (chatActivity5 == null || (messagePreviewParams = chatActivity5.messagePreviewParams) == null || !messagePreviewParams.webpageSmall) ? false : true;
                }
                ChatActivity chatActivity6 = this.parentFragment;
                if (chatActivity6 != null) {
                    chatActivity6.editingMessageObject = null;
                    chatActivity6.foundWebPage = null;
                    MessagePreviewParams messagePreviewParams4 = chatActivity6.messagePreviewParams;
                    if (messagePreviewParams4 != null) {
                        messagePreviewParams4.updateLink(this.currentAccount, null, "", null, null, null);
                    }
                    setWebPage(null, true);
                    this.parentFragment.fallbackFieldPanel();
                }
                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(m91of);
                int i12 = min + 1;
                if (min == charSequence2.length()) {
                    break;
                }
                i8 = i12;
                i6 = 0;
            }
            ChatActivity chatActivity7 = this.parentFragment;
            if (chatActivity7 != null && !TextUtils.isEmpty(chatActivity7.savedMultiReplyMessage)) {
                this.parentFragment.savedMultiReplyMessage = null;
            }
            return true;
        }
        return false;
    }

    private void applyStoryToSendMessageParams(SendMessagesHelper.SendMessageParams sendMessageParams) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            sendMessageParams.replyToStoryItem = chatActivityEnterViewDelegate.getReplyToStory();
            sendMessageParams.replyQuote = this.delegate.getReplyQuote();
        }
    }

    private boolean supportsSendingNewEntities() {
        ChatActivity chatActivity = this.parentFragment;
        TLRPC$EncryptedChat currentEncryptedChat = chatActivity != null ? chatActivity.getCurrentEncryptedChat() : null;
        return currentEncryptedChat == null || AndroidUtilities.getPeerLayerVersion(currentEncryptedChat.layer) >= 101;
    }

    public void checkSendButton(boolean z) {
        int themedColor;
        int i;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        int i2;
        if (this.editingMessageObject != null || this.recordingAudioVideo) {
            return;
        }
        int i3 = 0;
        boolean z2 = this.isPaused ? false : z;
        EditTextCaption editTextCaption = this.messageEditText;
        String trimmedString = editTextCaption == null ? "" : AndroidUtilities.getTrimmedString(editTextCaption.getText());
        int i4 = this.slowModeTimer;
        float f = 1.0f;
        if (i4 > 0 && i4 != Integer.MAX_VALUE && !isInScheduleMode()) {
            if (this.slowModeButton.getVisibility() != 0) {
                if (z2) {
                    if (this.runningAnimationType == 5) {
                        return;
                    }
                    AnimatorSet animatorSet = this.runningAnimation;
                    if (animatorSet != null) {
                        animatorSet.cancel();
                        this.runningAnimation = null;
                    }
                    AnimatorSet animatorSet2 = this.runningAnimation2;
                    if (animatorSet2 != null) {
                        animatorSet2.cancel();
                        this.runningAnimation2 = null;
                    }
                    if (this.attachLayout != null) {
                        this.runningAnimation2 = new AnimatorSet();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, BitmapDescriptorFactory.HUE_RED));
                        arrayList.add(ObjectAnimator.ofFloat(this.attachLayout, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                        this.scheduleButtonHidden = false;
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                        boolean z3 = chatActivityEnterViewDelegate != null && chatActivityEnterViewDelegate.hasScheduledMessages();
                        if (z3) {
                            createScheduledButton();
                        }
                        ImageView imageView4 = this.scheduledButton;
                        if (imageView4 != null) {
                            imageView4.setScaleY(1.0f);
                            if (z3) {
                                this.scheduledButton.setVisibility(0);
                                this.scheduledButton.setTag(1);
                                this.scheduledButton.setPivotX(AndroidUtilities.m104dp(48));
                                ImageView imageView5 = this.scheduledButton;
                                Property property = View.TRANSLATION_X;
                                float[] fArr = new float[1];
                                ImageView imageView6 = this.botButton;
                                int m104dp = AndroidUtilities.m104dp((imageView6 == null || imageView6.getVisibility() != 0) ? 48 : 96);
                                ImageView imageView7 = this.giftButton;
                                fArr[0] = m104dp - AndroidUtilities.m104dp((imageView7 == null || imageView7.getVisibility() != 0) ? 0 : 48);
                                arrayList.add(ObjectAnimator.ofFloat(imageView5, property, fArr));
                                arrayList.add(ObjectAnimator.ofFloat(this.scheduledButton, View.ALPHA, 1.0f));
                                arrayList.add(ObjectAnimator.ofFloat(this.scheduledButton, View.SCALE_X, 1.0f));
                            } else {
                                ImageView imageView8 = this.scheduledButton;
                                ImageView imageView9 = this.botButton;
                                int m104dp2 = AndroidUtilities.m104dp((imageView9 == null || imageView9.getVisibility() != 0) ? 48 : 96);
                                ImageView imageView10 = this.giftButton;
                                imageView8.setTranslationX(m104dp2 - AndroidUtilities.m104dp((imageView10 == null || imageView10.getVisibility() != 0) ? 0 : 48));
                                this.scheduledButton.setAlpha(1.0f);
                                this.scheduledButton.setScaleX(1.0f);
                            }
                        }
                        this.runningAnimation2.playTogether(arrayList);
                        this.runningAnimation2.setDuration(100L);
                        this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.49
                            {
                                ChatActivityEnterView.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                    ChatActivityEnterView.this.attachLayout.setVisibility(8);
                                    ChatActivityEnterView.this.runningAnimation2 = null;
                                }
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                    ChatActivityEnterView.this.runningAnimation2 = null;
                                }
                            }
                        });
                        this.runningAnimation2.start();
                        updateFieldRight(0);
                        if (this.delegate != null && getVisibility() == 0) {
                            this.delegate.onAttachButtonHidden();
                        }
                    }
                    this.runningAnimationType = 5;
                    this.runningAnimation = new AnimatorSet();
                    ArrayList arrayList2 = new ArrayList();
                    if (this.audioVideoButtonContainer.getVisibility() == 0) {
                        arrayList2.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_X, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_Y, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                    ImageView imageView11 = this.expandStickersButton;
                    if (imageView11 != null && imageView11.getVisibility() == 0) {
                        arrayList2.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_X, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_Y, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                    if (this.sendButton.getVisibility() == 0) {
                        arrayList2.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_X, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_Y, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.sendButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                    if (this.cancelBotButton.getVisibility() == 0) {
                        arrayList2.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_X, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_Y, 0.1f));
                        arrayList2.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                    arrayList2.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_X, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_Y, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(this.slowModeButton, View.ALPHA, 1.0f));
                    setSlowModeButtonVisible(true);
                    this.runningAnimation.playTogether(arrayList2);
                    this.runningAnimation.setDuration(150L);
                    this.runningAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.50
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                ChatActivityEnterView.this.sendButton.setVisibility(8);
                                ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                                ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                                if (ChatActivityEnterView.this.expandStickersButton != null) {
                                    ChatActivityEnterView.this.expandStickersButton.setVisibility(8);
                                }
                                ChatActivityEnterView.this.runningAnimation = null;
                                ChatActivityEnterView.this.runningAnimationType = 0;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                ChatActivityEnterView.this.runningAnimation = null;
                            }
                        }
                    });
                    this.runningAnimation.start();
                    return;
                }
                this.slowModeButton.setScaleX(1.0f);
                this.slowModeButton.setScaleY(1.0f);
                this.slowModeButton.setAlpha(1.0f);
                setSlowModeButtonVisible(true);
                this.audioVideoButtonContainer.setScaleX(0.1f);
                this.audioVideoButtonContainer.setScaleY(0.1f);
                this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.audioVideoButtonContainer.setVisibility(8);
                this.sendButton.setScaleX(0.1f);
                this.sendButton.setScaleY(0.1f);
                this.sendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.sendButton.setVisibility(8);
                this.cancelBotButton.setScaleX(0.1f);
                this.cancelBotButton.setScaleY(0.1f);
                this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.cancelBotButton.setVisibility(8);
                ImageView imageView12 = this.expandStickersButton;
                if (imageView12 == null || imageView12.getVisibility() != 0) {
                    i2 = 8;
                } else {
                    this.expandStickersButton.setScaleX(0.1f);
                    this.expandStickersButton.setScaleY(0.1f);
                    this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    i2 = 8;
                    this.expandStickersButton.setVisibility(8);
                }
                LinearLayout linearLayout = this.attachLayout;
                if (linearLayout != null) {
                    linearLayout.setVisibility(i2);
                    if (this.delegate != null && getVisibility() == 0) {
                        this.delegate.onAttachButtonHidden();
                    }
                    updateFieldRight(0);
                }
                this.scheduleButtonHidden = false;
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
                boolean z4 = chatActivityEnterViewDelegate2 != null && chatActivityEnterViewDelegate2.hasScheduledMessages();
                if (z4) {
                    createScheduledButton();
                }
                ImageView imageView13 = this.scheduledButton;
                if (imageView13 != null) {
                    if (z4) {
                        imageView13.setVisibility(0);
                        this.scheduledButton.setTag(1);
                    }
                    ImageView imageView14 = this.scheduledButton;
                    ImageView imageView15 = this.botButton;
                    int m104dp3 = AndroidUtilities.m104dp((imageView15 == null || imageView15.getVisibility() != 0) ? 48 : 96);
                    ImageView imageView16 = this.giftButton;
                    if (imageView16 != null && imageView16.getVisibility() == 0) {
                        i3 = 48;
                    }
                    imageView14.setTranslationX(m104dp3 - AndroidUtilities.m104dp(i3));
                    this.scheduledButton.setAlpha(1.0f);
                    this.scheduledButton.setScaleX(1.0f);
                    this.scheduledButton.setScaleY(1.0f);
                }
            }
        } else if (trimmedString.length() > 0 || this.forceShowSendButton || this.audioToSend != null || this.videoToSendMessageObject != null || (this.slowModeTimer == Integer.MAX_VALUE && !isInScheduleMode())) {
            EditTextCaption editTextCaption2 = this.messageEditText;
            final String caption = editTextCaption2 == null ? null : editTextCaption2.getCaption();
            boolean z5 = caption != null && (this.sendButton.getVisibility() == 0 || ((imageView2 = this.expandStickersButton) != null && imageView2.getVisibility() == 0));
            boolean z6 = caption == null && (this.cancelBotButton.getVisibility() == 0 || ((imageView = this.expandStickersButton) != null && imageView.getVisibility() == 0));
            if (this.slowModeTimer == Integer.MAX_VALUE && !isInScheduleMode()) {
                themedColor = getThemedColor(Theme.key_chat_messagePanelIcons);
            } else {
                themedColor = getThemedColor(Theme.key_chat_messagePanelSend);
            }
            if (themedColor != this.sendButtonBackgroundColor) {
                this.sendButtonBackgroundColor = themedColor;
                Theme.setSelectorDrawableColor(this.sendButton.getBackground(), Color.argb(24, Color.red(themedColor), Color.green(themedColor), Color.blue(themedColor)), true);
            }
            if (this.audioVideoButtonContainer.getVisibility() == 0 || this.slowModeButton.getVisibility() == 0 || z5 || z6) {
                if (z2) {
                    int i5 = this.runningAnimationType;
                    if (i5 == 1 && caption == null) {
                        return;
                    }
                    if (i5 != 3 || caption == null) {
                        AnimatorSet animatorSet3 = this.runningAnimation;
                        if (animatorSet3 != null) {
                            animatorSet3.cancel();
                            this.runningAnimation = null;
                        }
                        AnimatorSet animatorSet4 = this.runningAnimation2;
                        if (animatorSet4 != null) {
                            animatorSet4.cancel();
                            this.runningAnimation2 = null;
                        }
                        if (this.attachLayout != null) {
                            this.runningAnimation2 = new AnimatorSet();
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, BitmapDescriptorFactory.HUE_RED));
                            arrayList3.add(ObjectAnimator.ofFloat(this.attachLayout, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = this.delegate;
                            final boolean z7 = chatActivityEnterViewDelegate3 != null && chatActivityEnterViewDelegate3.hasScheduledMessages();
                            this.scheduleButtonHidden = true;
                            ImageView imageView17 = this.scheduledButton;
                            if (imageView17 != null) {
                                imageView17.setScaleY(1.0f);
                                if (z7) {
                                    this.scheduledButton.setTag(null);
                                    arrayList3.add(ObjectAnimator.ofFloat(this.scheduledButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                                    arrayList3.add(ObjectAnimator.ofFloat(this.scheduledButton, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                                    ImageView imageView18 = this.scheduledButton;
                                    Property property2 = View.TRANSLATION_X;
                                    float[] fArr2 = new float[1];
                                    ImageView imageView19 = this.botButton;
                                    int m104dp4 = AndroidUtilities.m104dp((imageView19 == null || imageView19.getVisibility() != 0) ? 48 : 96);
                                    ImageView imageView20 = this.giftButton;
                                    fArr2[0] = m104dp4 - AndroidUtilities.m104dp((imageView20 == null || imageView20.getVisibility() != 0) ? 0 : 48);
                                    arrayList3.add(ObjectAnimator.ofFloat(imageView18, property2, fArr2));
                                } else {
                                    this.scheduledButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                    this.scheduledButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                                    ImageView imageView21 = this.scheduledButton;
                                    ImageView imageView22 = this.botButton;
                                    int m104dp5 = AndroidUtilities.m104dp((imageView22 == null || imageView22.getVisibility() != 0) ? 48 : 96);
                                    ImageView imageView23 = this.giftButton;
                                    imageView21.setTranslationX(m104dp5 - AndroidUtilities.m104dp((imageView23 == null || imageView23.getVisibility() != 0) ? 0 : 48));
                                }
                            }
                            this.runningAnimation2.playTogether(arrayList3);
                            this.runningAnimation2.setDuration(100L);
                            this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.51
                                {
                                    ChatActivityEnterView.this = this;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                        ChatActivityEnterView.this.attachLayout.setVisibility(8);
                                        if (z7 && ChatActivityEnterView.this.scheduledButton != null) {
                                            ChatActivityEnterView.this.scheduledButton.setVisibility(8);
                                        }
                                        ChatActivityEnterView.this.runningAnimation2 = null;
                                    }
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator) {
                                    if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                        ChatActivityEnterView.this.runningAnimation2 = null;
                                    }
                                }
                            });
                            this.runningAnimation2.start();
                            updateFieldRight(0);
                            if (this.delegate != null && getVisibility() == 0) {
                                this.delegate.onAttachButtonHidden();
                            }
                        }
                        this.runningAnimation = new AnimatorSet();
                        ArrayList arrayList4 = new ArrayList();
                        if (this.audioVideoButtonContainer.getVisibility() == 0) {
                            arrayList4.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_X, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_Y, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        }
                        ImageView imageView24 = this.expandStickersButton;
                        if (imageView24 != null && imageView24.getVisibility() == 0) {
                            arrayList4.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_X, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_Y, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        }
                        if (this.slowModeButton.getVisibility() == 0) {
                            arrayList4.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_X, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_Y, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.slowModeButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        }
                        if (z5) {
                            arrayList4.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_X, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_Y, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.sendButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        } else if (z6) {
                            arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_X, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_Y, 0.1f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                        }
                        if (caption != null) {
                            this.runningAnimationType = 3;
                            arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_X, 1.0f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_Y, 1.0f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.ALPHA, 1.0f));
                            this.cancelBotButton.setVisibility(0);
                        } else {
                            this.runningAnimationType = 1;
                            arrayList4.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_X, 1.0f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_Y, 1.0f));
                            arrayList4.add(ObjectAnimator.ofFloat(this.sendButton, View.ALPHA, 1.0f));
                            this.sendButton.setVisibility(0);
                        }
                        this.runningAnimation.playTogether(arrayList4);
                        this.runningAnimation.setDuration(150L);
                        this.runningAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.52
                            {
                                ChatActivityEnterView.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                    if (caption != null) {
                                        ChatActivityEnterView.this.cancelBotButton.setVisibility(0);
                                        ChatActivityEnterView.this.sendButton.setVisibility(8);
                                    } else {
                                        ChatActivityEnterView.this.sendButton.setVisibility(0);
                                        ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                                    }
                                    ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                                    if (ChatActivityEnterView.this.expandStickersButton != null) {
                                        ChatActivityEnterView.this.expandStickersButton.setVisibility(8);
                                    }
                                    ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                                    ChatActivityEnterView.this.runningAnimation = null;
                                    ChatActivityEnterView.this.runningAnimationType = 0;
                                }
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                                if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                                    ChatActivityEnterView.this.runningAnimation = null;
                                }
                            }
                        });
                        this.runningAnimation.start();
                        return;
                    }
                    return;
                }
                this.audioVideoButtonContainer.setScaleX(0.1f);
                this.audioVideoButtonContainer.setScaleY(0.1f);
                this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.audioVideoButtonContainer.setVisibility(8);
                if (this.slowModeButton.getVisibility() == 0) {
                    this.slowModeButton.setScaleX(0.1f);
                    this.slowModeButton.setScaleY(0.1f);
                    this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    setSlowModeButtonVisible(false);
                }
                if (caption != null) {
                    this.sendButton.setScaleX(0.1f);
                    this.sendButton.setScaleY(0.1f);
                    this.sendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.sendButton.setVisibility(8);
                    this.cancelBotButton.setScaleX(1.0f);
                    this.cancelBotButton.setScaleY(1.0f);
                    this.cancelBotButton.setAlpha(1.0f);
                    this.cancelBotButton.setVisibility(0);
                } else {
                    this.cancelBotButton.setScaleX(0.1f);
                    this.cancelBotButton.setScaleY(0.1f);
                    this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.sendButton.setVisibility(0);
                    this.sendButton.setScaleX(1.0f);
                    this.sendButton.setScaleY(1.0f);
                    this.sendButton.setAlpha(1.0f);
                    this.cancelBotButton.setVisibility(8);
                }
                ImageView imageView25 = this.expandStickersButton;
                if (imageView25 == null || imageView25.getVisibility() != 0) {
                    i = 8;
                } else {
                    this.expandStickersButton.setScaleX(0.1f);
                    this.expandStickersButton.setScaleY(0.1f);
                    this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    i = 8;
                    this.expandStickersButton.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.attachLayout;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(i);
                    if (this.delegate != null && getVisibility() == 0) {
                        this.delegate.onAttachButtonHidden();
                    }
                    updateFieldRight(0);
                }
                this.scheduleButtonHidden = true;
                if (this.scheduledButton != null) {
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate4 = this.delegate;
                    if (chatActivityEnterViewDelegate4 != null && chatActivityEnterViewDelegate4.hasScheduledMessages()) {
                        this.scheduledButton.setVisibility(8);
                        this.scheduledButton.setTag(null);
                    }
                    this.scheduledButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.scheduledButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.scheduledButton.setScaleY(1.0f);
                    ImageView imageView26 = this.scheduledButton;
                    ImageView imageView27 = this.botButton;
                    int m104dp6 = AndroidUtilities.m104dp((imageView27 == null || imageView27.getVisibility() != 0) ? 48 : 96);
                    ImageView imageView28 = this.giftButton;
                    if (imageView28 != null && imageView28.getVisibility() == 0) {
                        i3 = 48;
                    }
                    imageView26.setTranslationX(m104dp6 - AndroidUtilities.m104dp(i3));
                }
            }
        } else if (this.emojiView != null && this.emojiViewVisible && ((this.stickersTabOpen || (this.emojiTabOpen && this.searchingType == 2)) && !AndroidUtilities.isInMultiwindow)) {
            if (z2) {
                if (this.runningAnimationType == 4) {
                    return;
                }
                AnimatorSet animatorSet5 = this.runningAnimation;
                if (animatorSet5 != null) {
                    animatorSet5.cancel();
                    this.runningAnimation = null;
                }
                AnimatorSet animatorSet6 = this.runningAnimation2;
                if (animatorSet6 != null) {
                    animatorSet6.cancel();
                    this.runningAnimation2 = null;
                }
                LinearLayout linearLayout3 = this.attachLayout;
                if (linearLayout3 != null && this.recordInterfaceState == 0) {
                    linearLayout3.setVisibility(0);
                    this.runningAnimation2 = new AnimatorSet();
                    ArrayList arrayList5 = new ArrayList();
                    arrayList5.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f));
                    arrayList5.add(ObjectAnimator.ofFloat(this.attachLayout, View.SCALE_X, 1.0f));
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate5 = this.delegate;
                    boolean z8 = chatActivityEnterViewDelegate5 != null && chatActivityEnterViewDelegate5.hasScheduledMessages();
                    this.scheduleButtonHidden = false;
                    if (z8) {
                        createScheduledButton();
                    }
                    ImageView imageView29 = this.scheduledButton;
                    if (imageView29 != null) {
                        imageView29.setScaleY(1.0f);
                        if (z8) {
                            this.scheduledButton.setVisibility(0);
                            this.scheduledButton.setTag(1);
                            this.scheduledButton.setPivotX(AndroidUtilities.m104dp(48));
                            arrayList5.add(ObjectAnimator.ofFloat(this.scheduledButton, View.ALPHA, 1.0f));
                            arrayList5.add(ObjectAnimator.ofFloat(this.scheduledButton, View.SCALE_X, 1.0f));
                            arrayList5.add(ObjectAnimator.ofFloat(this.scheduledButton, View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                        } else {
                            this.scheduledButton.setAlpha(1.0f);
                            this.scheduledButton.setScaleX(1.0f);
                            this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    this.runningAnimation2.playTogether(arrayList5);
                    this.runningAnimation2.setDuration(100L);
                    this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.53
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                ChatActivityEnterView.this.runningAnimation2 = null;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                ChatActivityEnterView.this.runningAnimation2 = null;
                            }
                        }
                    });
                    this.runningAnimation2.start();
                    updateFieldRight(1);
                    if (getVisibility() == 0) {
                        this.delegate.onAttachButtonShow();
                    }
                }
                createExpandStickersButton();
                this.expandStickersButton.setVisibility(0);
                this.runningAnimation = new AnimatorSet();
                this.runningAnimationType = 4;
                ArrayList arrayList6 = new ArrayList();
                arrayList6.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_X, 1.0f));
                arrayList6.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_Y, 1.0f));
                arrayList6.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.ALPHA, 1.0f));
                if (this.cancelBotButton.getVisibility() == 0) {
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_X, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_Y, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                } else if (this.audioVideoButtonContainer.getVisibility() == 0) {
                    arrayList6.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_X, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_Y, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                } else if (this.slowModeButton.getVisibility() == 0) {
                    arrayList6.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_X, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_Y, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.slowModeButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                } else {
                    arrayList6.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_X, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_Y, 0.1f));
                    arrayList6.add(ObjectAnimator.ofFloat(this.sendButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
                this.runningAnimation.playTogether(arrayList6);
                this.runningAnimation.setDuration(250L);
                this.runningAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.54
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                            ChatActivityEnterView.this.sendButton.setVisibility(8);
                            ChatActivityEnterView.this.cancelBotButton.setVisibility(8);
                            ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                            ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(8);
                            ChatActivityEnterView.this.expandStickersButton.setVisibility(0);
                            ChatActivityEnterView.this.runningAnimation = null;
                            ChatActivityEnterView.this.runningAnimationType = 0;
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                            ChatActivityEnterView.this.runningAnimation = null;
                        }
                    }
                });
                this.runningAnimation.start();
                return;
            }
            this.slowModeButton.setScaleX(0.1f);
            this.slowModeButton.setScaleY(0.1f);
            this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            setSlowModeButtonVisible(false);
            this.sendButton.setScaleX(0.1f);
            this.sendButton.setScaleY(0.1f);
            this.sendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.sendButton.setVisibility(8);
            this.cancelBotButton.setScaleX(0.1f);
            this.cancelBotButton.setScaleY(0.1f);
            this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.cancelBotButton.setVisibility(8);
            this.audioVideoButtonContainer.setScaleX(0.1f);
            this.audioVideoButtonContainer.setScaleY(0.1f);
            this.audioVideoButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.audioVideoButtonContainer.setVisibility(8);
            createExpandStickersButton();
            this.expandStickersButton.setScaleX(1.0f);
            this.expandStickersButton.setScaleY(1.0f);
            this.expandStickersButton.setAlpha(1.0f);
            this.expandStickersButton.setVisibility(0);
            if (this.attachLayout != null) {
                if (getVisibility() == 0) {
                    this.delegate.onAttachButtonShow();
                }
                this.attachLayout.setVisibility(0);
                updateFieldRight(1);
            }
            this.scheduleButtonHidden = false;
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate6 = this.delegate;
            boolean z9 = chatActivityEnterViewDelegate6 != null && chatActivityEnterViewDelegate6.hasScheduledMessages();
            if (z9) {
                createScheduledButton();
            }
            ImageView imageView30 = this.scheduledButton;
            if (imageView30 != null) {
                if (z9) {
                    imageView30.setVisibility(0);
                    this.scheduledButton.setTag(1);
                }
                this.scheduledButton.setAlpha(1.0f);
                this.scheduledButton.setScaleX(1.0f);
                this.scheduledButton.setScaleY(1.0f);
                this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
        } else if (this.sendButton.getVisibility() == 0 || this.cancelBotButton.getVisibility() == 0 || (((imageView3 = this.expandStickersButton) != null && imageView3.getVisibility() == 0) || this.slowModeButton.getVisibility() == 0)) {
            if (z2) {
                if (this.runningAnimationType == 2) {
                    return;
                }
                AnimatorSet animatorSet7 = this.runningAnimation;
                if (animatorSet7 != null) {
                    animatorSet7.cancel();
                    this.runningAnimation = null;
                }
                AnimatorSet animatorSet8 = this.runningAnimation2;
                if (animatorSet8 != null) {
                    animatorSet8.cancel();
                    this.runningAnimation2 = null;
                }
                LinearLayout linearLayout4 = this.attachLayout;
                if (linearLayout4 != null) {
                    if (linearLayout4.getVisibility() != 0) {
                        this.attachLayout.setVisibility(0);
                        this.attachLayoutAlpha = BitmapDescriptorFactory.HUE_RED;
                        updateAttachLayoutParams();
                        this.attachLayout.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    }
                    this.runningAnimation2 = new AnimatorSet();
                    ArrayList arrayList7 = new ArrayList();
                    arrayList7.add(ObjectAnimator.ofFloat(this.attachLayout, (Property<LinearLayout, Float>) this.ATTACH_LAYOUT_ALPHA, 1.0f));
                    arrayList7.add(ObjectAnimator.ofFloat(this.attachLayout, View.SCALE_X, 1.0f));
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate7 = this.delegate;
                    boolean z10 = chatActivityEnterViewDelegate7 != null && chatActivityEnterViewDelegate7.hasScheduledMessages();
                    this.scheduleButtonHidden = false;
                    if (z10) {
                        createScheduledButton();
                    }
                    ImageView imageView31 = this.scheduledButton;
                    if (imageView31 != null) {
                        if (z10) {
                            imageView31.setVisibility(0);
                            this.scheduledButton.setTag(1);
                            this.scheduledButton.setPivotX(AndroidUtilities.m104dp(48));
                            arrayList7.add(ObjectAnimator.ofFloat(this.scheduledButton, View.ALPHA, 1.0f));
                            arrayList7.add(ObjectAnimator.ofFloat(this.scheduledButton, View.SCALE_X, 1.0f));
                            ImageView imageView32 = this.scheduledButton;
                            Property property3 = View.TRANSLATION_X;
                            float[] fArr3 = new float[1];
                            ImageView imageView33 = this.giftButton;
                            fArr3[0] = (imageView33 == null || imageView33.getVisibility() != 0) ? 0.0f : -AndroidUtilities.m104dp(48);
                            arrayList7.add(ObjectAnimator.ofFloat(imageView32, property3, fArr3));
                        } else {
                            imageView31.setAlpha(1.0f);
                            this.scheduledButton.setScaleX(1.0f);
                            this.scheduledButton.setScaleY(1.0f);
                            this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    this.runningAnimation2.playTogether(arrayList7);
                    this.runningAnimation2.setDuration(100L);
                    this.runningAnimation2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.55
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                ChatActivityEnterView.this.runningAnimation2 = null;
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            if (animator.equals(ChatActivityEnterView.this.runningAnimation2)) {
                                ChatActivityEnterView.this.runningAnimation2 = null;
                            }
                        }
                    });
                    this.runningAnimation2.start();
                    updateFieldRight(1);
                    if (getVisibility() == 0) {
                        this.delegate.onAttachButtonShow();
                    }
                }
                this.audioVideoButtonContainer.setVisibility(0);
                this.runningAnimation = new AnimatorSet();
                this.runningAnimationType = 2;
                ArrayList arrayList8 = new ArrayList();
                arrayList8.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_X, 1.0f));
                arrayList8.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.SCALE_Y, 1.0f));
                ChatActivity chatActivity = this.parentFragment;
                TLRPC$Chat currentChat = chatActivity != null ? chatActivity.getCurrentChat() : null;
                ChatActivity chatActivity2 = this.parentFragment;
                TLRPC$UserFull currentUserInfo = chatActivity2 == null ? this.userInfo : chatActivity2.getCurrentUserInfo();
                if (currentChat == null ? !(currentUserInfo == null || !currentUserInfo.voice_messages_forbidden) : !(ChatObject.canSendVoice(currentChat) || ChatObject.canSendRoundVideo(currentChat))) {
                    f = 0.5f;
                }
                arrayList8.add(ObjectAnimator.ofFloat(this.audioVideoButtonContainer, View.ALPHA, f));
                if (this.cancelBotButton.getVisibility() == 0) {
                    arrayList8.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_X, 0.1f));
                    arrayList8.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.SCALE_Y, 0.1f));
                    arrayList8.add(ObjectAnimator.ofFloat(this.cancelBotButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                } else {
                    ImageView imageView34 = this.expandStickersButton;
                    if (imageView34 != null && imageView34.getVisibility() == 0) {
                        arrayList8.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_X, 0.1f));
                        arrayList8.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.SCALE_Y, 0.1f));
                        arrayList8.add(ObjectAnimator.ofFloat(this.expandStickersButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    } else if (this.slowModeButton.getVisibility() == 0) {
                        arrayList8.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_X, 0.1f));
                        arrayList8.add(ObjectAnimator.ofFloat(this.slowModeButton, View.SCALE_Y, 0.1f));
                        arrayList8.add(ObjectAnimator.ofFloat(this.slowModeButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    } else {
                        arrayList8.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_X, 0.1f));
                        arrayList8.add(ObjectAnimator.ofFloat(this.sendButton, View.SCALE_Y, 0.1f));
                        arrayList8.add(ObjectAnimator.ofFloat(this.sendButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    }
                }
                this.runningAnimation.playTogether(arrayList8);
                this.runningAnimation.setDuration(150L);
                this.runningAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.56
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                            ChatActivityEnterView.this.setSlowModeButtonVisible(false);
                            ChatActivityEnterView.this.runningAnimation = null;
                            ChatActivityEnterView.this.runningAnimationType = 0;
                            if (ChatActivityEnterView.this.audioVideoButtonContainer != null) {
                                ChatActivityEnterView.this.audioVideoButtonContainer.setVisibility(0);
                            }
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        if (animator.equals(ChatActivityEnterView.this.runningAnimation)) {
                            ChatActivityEnterView.this.runningAnimation = null;
                        }
                    }
                });
                this.runningAnimation.start();
                return;
            }
            this.slowModeButton.setScaleX(0.1f);
            this.slowModeButton.setScaleY(0.1f);
            this.slowModeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            setSlowModeButtonVisible(false);
            this.sendButton.setScaleX(0.1f);
            this.sendButton.setScaleY(0.1f);
            this.sendButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.sendButton.setVisibility(8);
            this.cancelBotButton.setScaleX(0.1f);
            this.cancelBotButton.setScaleY(0.1f);
            this.cancelBotButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.cancelBotButton.setVisibility(8);
            ImageView imageView35 = this.expandStickersButton;
            if (imageView35 != null) {
                imageView35.setScaleX(0.1f);
                this.expandStickersButton.setScaleY(0.1f);
                this.expandStickersButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.expandStickersButton.setVisibility(8);
            }
            this.audioVideoButtonContainer.setScaleX(1.0f);
            this.audioVideoButtonContainer.setScaleY(1.0f);
            this.audioVideoButtonContainer.setAlpha(1.0f);
            this.audioVideoButtonContainer.setVisibility(0);
            if (this.attachLayout != null) {
                if (getVisibility() == 0) {
                    this.delegate.onAttachButtonShow();
                }
                this.attachLayoutAlpha = 1.0f;
                updateAttachLayoutParams();
                this.attachLayout.setScaleX(1.0f);
                this.attachLayout.setVisibility(0);
                updateFieldRight(1);
            }
            this.scheduleButtonHidden = false;
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate8 = this.delegate;
            if (chatActivityEnterViewDelegate8 != null && chatActivityEnterViewDelegate8.hasScheduledMessages()) {
                createScheduledButton();
            }
            if (this.scheduledButton != null) {
                ChatActivityEnterViewDelegate chatActivityEnterViewDelegate9 = this.delegate;
                if (chatActivityEnterViewDelegate9 != null && chatActivityEnterViewDelegate9.hasScheduledMessages()) {
                    this.scheduledButton.setVisibility(0);
                    this.scheduledButton.setTag(1);
                }
                this.scheduledButton.setAlpha(1.0f);
                this.scheduledButton.setScaleX(1.0f);
                this.scheduledButton.setScaleY(1.0f);
                this.scheduledButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    public void setSlowModeButtonVisible(boolean z) {
        this.slowModeButton.setVisibility(z ? 0 : 8);
        int m104dp = z ? AndroidUtilities.m104dp(16) : 0;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || editTextCaption.getPaddingRight() == m104dp) {
            return;
        }
        this.messageEditText.setPadding(0, AndroidUtilities.m104dp(11), m104dp, AndroidUtilities.m104dp(12));
    }

    private void updateFieldRight(int i) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        LinearLayout linearLayout;
        ImageView imageView4;
        ImageView imageView5;
        ImageView imageView6;
        LinearLayout linearLayout2;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || this.editingMessageObject != null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) editTextCaption.getLayoutParams();
        int i2 = layoutParams.rightMargin;
        if (i == 100) {
            layoutParams.rightMargin = AndroidUtilities.m104dp(this.showForwardSettingsButton ? 80 : 30);
        } else if (i == 1) {
            ImageView imageView7 = this.botButton;
            if (imageView7 != null && imageView7.getVisibility() == 0 && (imageView6 = this.scheduledButton) != null && imageView6.getVisibility() == 0 && (linearLayout2 = this.attachLayout) != null && linearLayout2.getVisibility() == 0) {
                layoutParams.rightMargin = AndroidUtilities.m104dp(146);
            } else {
                ImageView imageView8 = this.botButton;
                if ((imageView8 != null && imageView8.getVisibility() == 0) || (((imageView4 = this.notifyButton) != null && imageView4.getVisibility() == 0) || (((imageView5 = this.scheduledButton) != null && imageView5.getTag() != null) || this.showForwardSettingsButton))) {
                    layoutParams.rightMargin = AndroidUtilities.m104dp(98);
                } else {
                    layoutParams.rightMargin = AndroidUtilities.m104dp(50);
                }
            }
        } else if (i == 2) {
            if (i2 != AndroidUtilities.m104dp(2)) {
                ImageView imageView9 = this.botButton;
                if (imageView9 != null && imageView9.getVisibility() == 0 && (imageView3 = this.scheduledButton) != null && imageView3.getVisibility() == 0 && (linearLayout = this.attachLayout) != null && linearLayout.getVisibility() == 0) {
                    layoutParams.rightMargin = AndroidUtilities.m104dp(146);
                } else {
                    ImageView imageView10 = this.botButton;
                    if ((imageView10 != null && imageView10.getVisibility() == 0) || (((imageView = this.notifyButton) != null && imageView.getVisibility() == 0) || ((imageView2 = this.scheduledButton) != null && imageView2.getTag() != null))) {
                        layoutParams.rightMargin = AndroidUtilities.m104dp(98);
                    } else {
                        layoutParams.rightMargin = AndroidUtilities.m104dp(50);
                    }
                }
            }
        } else {
            ImageView imageView11 = this.scheduledButton;
            if ((imageView11 != null && imageView11.getTag() != null) || this.showTranslateButton) {
                layoutParams.rightMargin = AndroidUtilities.m104dp(50);
            } else {
                layoutParams.rightMargin = AndroidUtilities.m104dp(2);
            }
        }
        if (i2 != layoutParams.rightMargin) {
            this.messageEditText.setLayoutParams(layoutParams);
        }
    }

    public void startMessageTransition() {
        Runnable runnable = this.moveToSendStateRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.messageTransitionIsRunning = true;
            this.moveToSendStateRunnable.run();
            this.moveToSendStateRunnable = null;
        }
    }

    public boolean canShowMessageTransition() {
        return this.moveToSendStateRunnable != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:396:0x02d8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:397:0x02d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRecordInterface(final int r24) {
        /*
            Method dump skipped, instructions count: 3230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.updateRecordInterface(int):void");
    }

    public /* synthetic */ void lambda$updateRecordInterface$54(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (!isInVideoMode()) {
            this.recordCircle.setTransformToSeekbar(floatValue);
            this.seekBarWaveform.setWaveScaling(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.recordedAudioTimeTextView.setAlpha(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.recordedAudioPlayButton.setAlpha(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.recordedAudioPlayButton.setScaleX(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.recordedAudioPlayButton.setScaleY(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.recordedAudioSeekBar.setAlpha(this.recordCircle.getTransformToSeekbarProgressStep3());
            this.recordedAudioSeekBar.invalidate();
            return;
        }
        this.recordCircle.setExitTransition(floatValue);
    }

    public void cancelRecordIntefraceInternal() {
        FrameLayout frameLayout = this.recordPanel;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setVisibility(8);
            this.recordCircle.setSendButtonInvisible();
        }
        this.runningAnimationAudio = null;
        isRecordingStateChanged();
        View view = this.recordedAudioBackground;
        if (view != null) {
            view.setAlpha(1.0f);
        }
        if (this.attachLayout != null) {
            this.attachLayoutTranslationX = BitmapDescriptorFactory.HUE_RED;
            updateAttachLayoutParams();
        }
        SlideTextView slideTextView = this.slideText;
        if (slideTextView != null) {
            slideTextView.setCancelToProgress(BitmapDescriptorFactory.HUE_RED);
        }
        this.delegate.onAudioVideoInterfaceUpdated();
        updateSendAsButton();
    }

    private void createRecordPanel() {
        if (this.recordPanel != null || getContext() == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.recordPanel = frameLayout;
        frameLayout.setClipChildren(false);
        this.recordPanel.setVisibility(8);
        this.messageEditTextContainer.addView(this.recordPanel, LayoutHelper.createFrame(-1, 48));
        this.recordPanel.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda36
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$createRecordPanel$55;
                lambda$createRecordPanel$55 = ChatActivityEnterView.lambda$createRecordPanel$55(view, motionEvent);
                return lambda$createRecordPanel$55;
            }
        });
        FrameLayout frameLayout2 = this.recordPanel;
        SlideTextView slideTextView = new SlideTextView(getContext());
        this.slideText = slideTextView;
        frameLayout2.addView(slideTextView, LayoutHelper.createFrame(-1, -1, 0, 45, 0, 0, 0));
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.recordTimeContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.recordTimeContainer.setPadding(AndroidUtilities.m104dp(13), 0, 0, 0);
        this.recordTimeContainer.setFocusable(false);
        LinearLayout linearLayout2 = this.recordTimeContainer;
        RecordDot recordDot = new RecordDot(getContext());
        this.recordDot = recordDot;
        linearLayout2.addView(recordDot, LayoutHelper.createLinear(28, 28, 16, 0, 0, 0, 0));
        LinearLayout linearLayout3 = this.recordTimeContainer;
        TimerView timerView = new TimerView(getContext());
        this.recordTimerView = timerView;
        linearLayout3.addView(timerView, LayoutHelper.createLinear(-1, -1, 16, 6, 0, 0, 0));
        this.recordPanel.addView(this.recordTimeContainer, LayoutHelper.createFrame(-1, -1, 16));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.recordingAudioVideo || !this.isChat) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setDelegate(ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
        this.delegate = chatActivityEnterViewDelegate;
    }

    public void setCommand(MessageObject messageObject, String str, boolean z, boolean z2) {
        EditTextCaption editTextCaption;
        String str2;
        if (str == null || getVisibility() != 0 || (editTextCaption = this.messageEditText) == null) {
            return;
        }
        TLRPC$User tLRPC$User = null;
        if (z) {
            String obj = editTextCaption.getText().toString();
            if (messageObject != null && DialogObject.isChatDialog(this.dialog_id)) {
                tLRPC$User = this.accountInstance.getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.from_id.user_id));
            }
            if ((this.botCount != 1 || z2) && tLRPC$User != null && tLRPC$User.bot && !str.contains("@")) {
                str2 = String.format(Locale.US, "%s@%s", str, UserObject.getPublicUsername(tLRPC$User)) + " " + obj.replaceFirst("^/[a-zA-Z@\\d_]{1,255}(\\s|$)", "");
            } else {
                str2 = str + " " + obj.replaceFirst("^/[a-zA-Z@\\d_]{1,255}(\\s|$)", "");
            }
            this.ignoreTextChange = true;
            this.messageEditText.setText(str2);
            EditTextCaption editTextCaption2 = this.messageEditText;
            editTextCaption2.setSelection(editTextCaption2.getText().length());
            this.ignoreTextChange = false;
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                chatActivityEnterViewDelegate.onTextChanged(this.messageEditText.getText(), true, false);
            }
            if (this.keyboardVisible || this.currentPopupContentType != -1) {
                return;
            }
            openKeyboard();
        } else if (this.slowModeTimer > 0 && !isInScheduleMode()) {
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
            if (chatActivityEnterViewDelegate2 != null) {
                SimpleTextView simpleTextView = this.slowModeButton;
                chatActivityEnterViewDelegate2.onUpdateSlowModeButton(simpleTextView, true, simpleTextView.getText());
            }
        } else {
            if (messageObject != null && DialogObject.isChatDialog(this.dialog_id)) {
                tLRPC$User = this.accountInstance.getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.from_id.user_id));
            }
            SendMessagesHelper.SendMessageParams m91of = ((this.botCount != 1 || z2) && tLRPC$User != null && tLRPC$User.bot && !str.contains("@")) ? SendMessagesHelper.SendMessageParams.m91of(String.format(Locale.US, "%s@%s", str, UserObject.getPublicUsername(tLRPC$User)), this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, false, null, null, null, true, 0, null, false, null) : SendMessagesHelper.SendMessageParams.m91of(str, this.dialog_id, this.replyingMessageObject, getThreadMessage(), null, false, null, null, null, true, 0, null, false, null);
            applyStoryToSendMessageParams(m91of);
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(m91of);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:363:0x031e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x02ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.widget.FrameLayout, org.telegram.ui.Components.ChatActivityEnterView] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setEditingMessageObject(org.telegram.messenger.MessageObject r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.setEditingMessageObject(org.telegram.messenger.MessageObject, boolean):void");
    }

    public /* synthetic */ void lambda$setEditingMessageObject$56(CharSequence charSequence) {
        setFieldText(charSequence);
        this.setTextFieldRunnable = null;
    }

    public ImageView getAttachButton() {
        return this.attachButton;
    }

    public View getSendButton() {
        return this.sendButton.getVisibility() == 0 ? this.sendButton : this.audioVideoButtonContainer;
    }

    public View getAudioVideoButtonContainer() {
        return this.audioVideoButtonContainer;
    }

    public View getEmojiButton() {
        return this.emojiButton;
    }

    public EmojiView getEmojiView() {
        return this.emojiView;
    }

    public TrendingStickersAlert getTrendingStickersAlert() {
        return this.trendingStickersAlert;
    }

    public void updateColors() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.sendPopupLayout;
        if (actionBarPopupWindowLayout != null) {
            int childCount = actionBarPopupWindowLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.sendPopupLayout.getChildAt(i);
                if (childAt instanceof ActionBarMenuSubItem) {
                    ActionBarMenuSubItem actionBarMenuSubItem = (ActionBarMenuSubItem) childAt;
                    actionBarMenuSubItem.setColors(getThemedColor(Theme.key_actionBarDefaultSubmenuItem), getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon));
                    actionBarMenuSubItem.setSelectorColor(getThemedColor(Theme.key_dialogButtonSelector));
                }
            }
            this.sendPopupLayout.setBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
            ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
            if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
                this.sendPopupLayout.invalidate();
            }
        }
        ItemOptions itemOptions = this.videoMessageCameraOptions;
        if (itemOptions != null) {
            itemOptions.updateColors();
        }
        FormattingMessagesKeyboardContainer formattingMessagesKeyboardContainer = this.formattingMessagesKeyboardContainer;
        if (formattingMessagesKeyboardContainer != null) {
            formattingMessagesKeyboardContainer.updateView();
        }
        if (this.accountInstance.getFormattingTextController().getFormattingPanelType() == FormattingPanelType.ALTERNATIVE_WEB) {
            this.formattingIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelIcons), PorterDuff.Mode.SRC_IN));
        } else {
            updateFormattingButton();
        }
        updateRecordedDeleteIconColors();
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.updateColors();
        }
        RecordDot recordDot = this.recordDot;
        if (recordDot != null) {
            recordDot.updateColors();
        }
        SlideTextView slideTextView = this.slideText;
        if (slideTextView != null) {
            slideTextView.updateColors();
        }
        TimerView timerView = this.recordTimerView;
        if (timerView != null) {
            timerView.updateColors();
        }
        VideoTimelineView videoTimelineView = this.videoTimelineView;
        if (videoTimelineView != null) {
            videoTimelineView.updateColors();
        }
        NumberTextView numberTextView = this.captionLimitView;
        if (numberTextView != null && this.messageEditText != null) {
            if (this.codePointCount - this.currentLimit < 0) {
                numberTextView.setTextColor(getThemedColor(Theme.key_text_RedRegular));
            } else {
                numberTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
            }
        }
        int themedColor = getThemedColor(Theme.key_chat_messagePanelVoicePressed);
        int alpha = Color.alpha(themedColor);
        Drawable drawable = this.doneCheckDrawable;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.setAlphaComponent(themedColor, (int) (alpha * ((this.doneButtonEnabledProgress * 0.42f) + 0.58f))), PorterDuff.Mode.MULTIPLY));
        }
        BotCommandsMenuContainer botCommandsMenuContainer = this.botCommandsMenuContainer;
        if (botCommandsMenuContainer != null) {
            botCommandsMenuContainer.updateColors();
        }
        BotKeyboardView botKeyboardView = this.botKeyboardView;
        if (botKeyboardView != null) {
            botKeyboardView.updateColors();
        }
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
        int i2 = Theme.key_chat_messagePanelIcons;
        chatActivityEnterViewAnimatedIconView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.SRC_IN));
        this.emojiButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.SRC_IN));
        if (Build.VERSION.SDK_INT >= 21) {
            this.emojiButton.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        }
    }

    private void updateRecordedDeleteIconColors() {
        int themedColor = getThemedColor(Theme.key_chat_recordedVoiceDot);
        int blendARGB = ColorUtils.blendARGB(themedColor, getThemedColor(Theme.key_chat_messagePanelBackground), 0.5f);
        int themedColor2 = getThemedColor(Theme.key_chat_messagePanelVoiceDelete);
        RLottieImageView rLottieImageView = this.recordDeleteImageView;
        if (rLottieImageView != null) {
            rLottieImageView.setLayerColor("Cup Red.**", themedColor);
            this.recordDeleteImageView.setLayerColor("Box Red.**", themedColor);
            this.recordDeleteImageView.setLayerColor("Cup Grey.**", themedColor2);
            this.recordDeleteImageView.setLayerColor("Box Grey.**", themedColor2);
            this.recordDeleteImageView.setLayerColor("Line 1.**", blendARGB);
            this.recordDeleteImageView.setLayerColor("Line 2.**", blendARGB);
            this.recordDeleteImageView.setLayerColor("Line 3.**", blendARGB);
        }
    }

    public void setFieldText(CharSequence charSequence) {
        setFieldText(charSequence, true, false);
    }

    public void setFieldText(CharSequence charSequence, boolean z) {
        setFieldText(charSequence, z, false);
    }

    public void setFieldText(CharSequence charSequence, boolean z, boolean z2) {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return;
        }
        this.ignoreTextChange = z;
        editTextCaption.setText(charSequence);
        EditTextCaption editTextCaption2 = this.messageEditText;
        editTextCaption2.setSelection(editTextCaption2.getText().length());
        this.ignoreTextChange = false;
        if (!z || (chatActivityEnterViewDelegate = this.delegate) == null) {
            return;
        }
        chatActivityEnterViewDelegate.onTextChanged(this.messageEditText.getText(), true, z2);
    }

    public void setSelection(int i) {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return;
        }
        editTextCaption.setSelection(i, editTextCaption.length());
    }

    public int getCursorPosition() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return 0;
        }
        return editTextCaption.getSelectionStart();
    }

    public int getSelectionLength() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return 0;
        }
        try {
            return editTextCaption.getSelectionEnd() - this.messageEditText.getSelectionStart();
        } catch (Exception e) {
            FileLog.m99e(e);
            return 0;
        }
    }

    public void replaceWithText(int i, int i2, CharSequence charSequence, boolean z) {
        if (this.messageEditText == null) {
            return;
        }
        try {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.messageEditText.getText());
            spannableStringBuilder.replace(i, i2 + i, charSequence);
            if (z) {
                Emoji.replaceEmoji((CharSequence) spannableStringBuilder, this.messageEditText.getPaint().getFontMetricsInt(), false, (int[]) null);
            }
            this.messageEditText.setText(spannableStringBuilder);
            this.messageEditText.setSelection(i + charSequence.length());
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void setFieldFocused() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.parentActivity.getSystemService("accessibility");
        if (this.messageEditText == null || accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        try {
            this.messageEditText.requestFocus();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void setFieldFocused(boolean z) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.parentActivity.getSystemService("accessibility");
        if (this.messageEditText == null || accessibilityManager.isTouchExplorationEnabled()) {
            return;
        }
        if (z) {
            if (this.searchingType != 0 || this.messageEditText.isFocused()) {
                return;
            }
            BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
            if (botWebViewMenuContainer == null || botWebViewMenuContainer.getVisibility() == 8) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda53
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatActivityEnterView.this.lambda$setFieldFocused$57();
                    }
                };
                this.focusRunnable = runnable;
                AndroidUtilities.runOnUIThread(runnable, 600L);
                return;
            }
            return;
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || !editTextCaption.isFocused()) {
            return;
        }
        if (!this.keyboardVisible || this.isPaused) {
            this.messageEditText.clearFocus();
        }
    }

    public /* synthetic */ void lambda$setFieldFocused$57() {
        EditTextCaption editTextCaption;
        ViewGroup viewGroup = null;
        this.focusRunnable = null;
        boolean z = true;
        if (AndroidUtilities.isTablet()) {
            Activity activity = this.parentActivity;
            if (activity instanceof LaunchActivity) {
                LaunchActivity launchActivity = (LaunchActivity) activity;
                if (launchActivity != null && launchActivity.getLayersActionBarLayout() != null) {
                    viewGroup = launchActivity.getLayersActionBarLayout().getView();
                }
                if (viewGroup != null && viewGroup.getVisibility() == 0) {
                    z = false;
                }
            }
        }
        if (this.isPaused || !z || (editTextCaption = this.messageEditText) == null) {
            return;
        }
        try {
            editTextCaption.requestFocus();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public boolean hasText() {
        EditTextCaption editTextCaption = this.messageEditText;
        return editTextCaption != null && editTextCaption.length() > 0;
    }

    public EditTextCaption getEditField() {
        return this.messageEditText;
    }

    public Editable getEditText() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null) {
            return null;
        }
        return editTextCaption.getText();
    }

    public CharSequence getDraftMessage() {
        if (this.editingMessageObject != null) {
            if (TextUtils.isEmpty(this.draftMessage)) {
                return null;
            }
            return this.draftMessage;
        } else if (this.messageEditText == null || !hasText()) {
            return null;
        } else {
            return this.messageEditText.getText();
        }
    }

    public CharSequence getFieldText() {
        if (this.messageEditText == null || !hasText()) {
            return null;
        }
        return this.messageEditText.getText();
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0091, code lost:
        if (org.telegram.messenger.MessagesController.getInstance(r6.currentAccount).getMainSettings().getBoolean("show_gift_for_" + r6.parentFragment.getDialogId(), true) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateGiftButton(boolean r7) {
        /*
            r6 = this;
            int r0 = r6.currentAccount
            org.telegram.messenger.MessagesController r0 = org.telegram.messenger.MessagesController.getInstance(r0)
            boolean r0 = r0.premiumLocked
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L94
            int r0 = r6.currentAccount
            org.telegram.messenger.MessagesController r0 = org.telegram.messenger.MessagesController.getInstance(r0)
            boolean r0 = r0.giftAttachMenuIcon
            if (r0 == 0) goto L94
            int r0 = r6.currentAccount
            org.telegram.messenger.MessagesController r0 = org.telegram.messenger.MessagesController.getInstance(r0)
            boolean r0 = r0.giftTextFieldIcon
            if (r0 == 0) goto L94
            org.telegram.ui.ChatActivity r0 = r6.getParentFragment()
            if (r0 == 0) goto L94
            org.telegram.ui.ChatActivity r0 = r6.getParentFragment()
            org.telegram.tgnet.TLRPC$User r0 = r0.getCurrentUser()
            if (r0 == 0) goto L94
            boolean r0 = org.telegram.messenger.BuildVars.IS_BILLING_UNAVAILABLE
            if (r0 != 0) goto L94
            org.telegram.ui.ChatActivity r0 = r6.getParentFragment()
            org.telegram.tgnet.TLRPC$User r0 = r0.getCurrentUser()
            boolean r0 = r0.self
            if (r0 != 0) goto L94
            org.telegram.ui.ChatActivity r0 = r6.getParentFragment()
            org.telegram.tgnet.TLRPC$User r0 = r0.getCurrentUser()
            boolean r0 = r0.premium
            if (r0 != 0) goto L94
            org.telegram.ui.ChatActivity r0 = r6.getParentFragment()
            org.telegram.tgnet.TLRPC$UserFull r0 = r0.getCurrentUserInfo()
            if (r0 == 0) goto L94
            org.telegram.ui.ChatActivity r0 = r6.getParentFragment()
            org.telegram.tgnet.TLRPC$UserFull r0 = r0.getCurrentUserInfo()
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_premiumGiftOption> r0 = r0.premium_gifts
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L94
            boolean r0 = r6.isInScheduleMode()
            if (r0 != 0) goto L94
            int r0 = r6.currentAccount
            org.telegram.messenger.MessagesController r0 = org.telegram.messenger.MessagesController.getInstance(r0)
            android.content.SharedPreferences r0 = r0.getMainSettings()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "show_gift_for_"
            r3.append(r4)
            org.telegram.ui.ChatActivity r4 = r6.parentFragment
            long r4 = r4.getDialogId()
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            boolean r0 = r0.getBoolean(r3, r1)
            if (r0 == 0) goto L94
            goto L95
        L94:
            r1 = r2
        L95:
            if (r1 != 0) goto L9c
            android.widget.ImageView r0 = r6.giftButton
            if (r0 != 0) goto L9c
            return
        L9c:
            r6.createGiftButton()
            android.widget.ImageView r0 = r6.giftButton
            r3 = 1065353216(0x3f800000, float:1.0)
            org.telegram.messenger.AndroidUtilities.updateViewVisibilityAnimated(r0, r1, r3, r7)
            android.widget.ImageView r0 = r6.scheduledButton
            if (r0 == 0) goto Le7
            int r0 = r0.getVisibility()
            if (r0 != 0) goto Le7
            r0 = 48
            if (r1 == 0) goto Lba
            int r1 = org.telegram.messenger.AndroidUtilities.m104dp(r0)
            int r1 = -r1
            goto Lbb
        Lba:
            r1 = r2
        Lbb:
            android.widget.ImageView r3 = r6.botButton
            if (r3 == 0) goto Lc6
            int r3 = r3.getVisibility()
            if (r3 != 0) goto Lc6
            r2 = r0
        Lc6:
            int r0 = org.telegram.messenger.AndroidUtilities.m104dp(r2)
            int r1 = r1 + r0
            float r0 = (float) r1
            if (r7 == 0) goto Le2
            android.widget.ImageView r7 = r6.scheduledButton
            android.view.ViewPropertyAnimator r7 = r7.animate()
            android.view.ViewPropertyAnimator r7 = r7.translationX(r0)
            r0 = 150(0x96, double:7.4E-322)
            android.view.ViewPropertyAnimator r7 = r7.setDuration(r0)
            r7.start()
            goto Le7
        Le2:
            android.widget.ImageView r7 = r6.scheduledButton
            r7.setTranslationX(r0)
        Le7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.updateGiftButton(boolean):void");
    }

    public void updateScheduleButton(boolean z) {
        boolean z2;
        ImageView imageView;
        ImageView imageView2;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        int i = 0;
        if (DialogObject.isChatDialog(this.dialog_id)) {
            TLRPC$Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
            this.silent = MessagesController.getNotificationsSettings(this.currentAccount).getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + this.dialog_id, false);
            this.canWriteToChannel = ChatObject.isChannel(chat) && (chat.creator || ((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.post_messages)) && !chat.megagroup;
            if (this.notifyButton != null) {
                ChatActivity chatActivity = this.parentFragment;
                z2 = (chatActivity == null || !(chatActivity.isInAlbumMode() || isTemplatesChannel(false, false))) ? this.canWriteToChannel : false;
                if (this.notifySilentDrawable == null) {
                    this.notifySilentDrawable = new CrossOutDrawable(getContext(), C3632R.C3634drawable.input_notify_on, Theme.key_chat_messagePanelIcons);
                }
                this.notifySilentDrawable.setCrossOut(this.silent, false);
                this.notifyButton.setImageDrawable(this.notifySilentDrawable);
            } else {
                z2 = false;
            }
            LinearLayout linearLayout = this.attachLayout;
            if (linearLayout != null) {
                updateFieldRight(linearLayout.getVisibility() == 0 ? 1 : 0);
            }
        } else {
            z2 = false;
        }
        boolean z3 = (this.delegate == null || isInScheduleMode() || !this.delegate.hasScheduledMessages()) ? false : true;
        final boolean z4 = (!z3 || this.scheduleButtonHidden || this.recordingAudioVideo) ? false : true;
        createScheduledButton();
        ImageView imageView3 = this.scheduledButton;
        int i2 = 96;
        if (imageView3 != null) {
            if ((imageView3.getTag() != null && z4) || (this.scheduledButton.getTag() == null && !z4)) {
                if (this.notifyButton != null) {
                    if (z3 || !z2 || this.scheduledButton.getVisibility() == 0) {
                        i = 8;
                    }
                    if (i != this.notifyButton.getVisibility()) {
                        this.notifyButton.setVisibility(i);
                        LinearLayout linearLayout2 = this.attachLayout;
                        if (linearLayout2 != null) {
                            ImageView imageView4 = this.botButton;
                            if ((imageView4 == null || imageView4.getVisibility() == 8) && ((imageView2 = this.notifyButton) == null || imageView2.getVisibility() == 8)) {
                                i2 = 48;
                            }
                            linearLayout2.setPivotX(AndroidUtilities.m104dp(i2));
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            this.scheduledButton.setTag(z4 ? 1 : null);
        }
        AnimatorSet animatorSet = this.scheduledButtonAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.scheduledButtonAnimation = null;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (!z || z2) {
            ImageView imageView5 = this.scheduledButton;
            if (imageView5 != null) {
                imageView5.setVisibility(z4 ? 0 : 8);
                ImageView imageView6 = this.scheduledButton;
                if (z4) {
                    f = 1.0f;
                }
                imageView6.setAlpha(f);
                this.scheduledButton.setScaleX(z4 ? 1.0f : 0.1f);
                this.scheduledButton.setScaleY(z4 ? 1.0f : 0.1f);
                ImageView imageView7 = this.notifyButton;
                if (imageView7 != null) {
                    if (!z2 || this.scheduledButton.getVisibility() == 0) {
                        i = 8;
                    }
                    imageView7.setVisibility(i);
                }
                ImageView imageView8 = this.giftButton;
                if (imageView8 != null && imageView8.getVisibility() == 0) {
                    this.scheduledButton.setTranslationX(-AndroidUtilities.m104dp(48));
                }
            }
        } else {
            ImageView imageView9 = this.scheduledButton;
            if (imageView9 != null) {
                if (z4) {
                    imageView9.setVisibility(0);
                }
                this.scheduledButton.setPivotX(AndroidUtilities.m104dp(24));
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.scheduledButtonAnimation = animatorSet2;
                Animator[] animatorArr = new Animator[3];
                ImageView imageView10 = this.scheduledButton;
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                if (z4) {
                    f = 1.0f;
                }
                fArr[0] = f;
                animatorArr[0] = ObjectAnimator.ofFloat(imageView10, property, fArr);
                ImageView imageView11 = this.scheduledButton;
                Property property2 = View.SCALE_X;
                float[] fArr2 = new float[1];
                fArr2[0] = z4 ? 1.0f : 0.1f;
                animatorArr[1] = ObjectAnimator.ofFloat(imageView11, property2, fArr2);
                ImageView imageView12 = this.scheduledButton;
                Property property3 = View.SCALE_Y;
                float[] fArr3 = new float[1];
                fArr3[0] = z4 ? 1.0f : 0.1f;
                animatorArr[2] = ObjectAnimator.ofFloat(imageView12, property3, fArr3);
                animatorSet2.playTogether(animatorArr);
                this.scheduledButtonAnimation.setDuration(180L);
                this.scheduledButtonAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.62
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatActivityEnterView.this.scheduledButtonAnimation = null;
                        if (z4) {
                            return;
                        }
                        ChatActivityEnterView.this.scheduledButton.setVisibility(8);
                    }
                });
                this.scheduledButtonAnimation.start();
            }
        }
        LinearLayout linearLayout3 = this.attachLayout;
        if (linearLayout3 != null) {
            ImageView imageView13 = this.botButton;
            if ((imageView13 == null || imageView13.getVisibility() == 8) && ((imageView = this.notifyButton) == null || imageView.getVisibility() == 8)) {
                i2 = 48;
            }
            linearLayout3.setPivotX(AndroidUtilities.m104dp(i2));
        }
    }

    public void updateSendAsButton() {
        updateSendAsButton(true);
    }

    public void updateSendAsButton(boolean z) {
        float f;
        float f2;
        SenderSelectView senderSelectView;
        SenderSelectView senderSelectView2;
        FrameLayout frameLayout;
        if (this.parentFragment == null || this.delegate == null) {
            return;
        }
        createMessageEditText();
        TLRPC$ChatFull chatFull = this.parentFragment.getMessagesController().getChatFull(-this.dialog_id);
        TLRPC$Peer tLRPC$Peer = chatFull != null ? chatFull.default_send_as : null;
        if (tLRPC$Peer == null && this.delegate.getSendAsPeers() != null && !this.delegate.getSendAsPeers().peers.isEmpty()) {
            tLRPC$Peer = this.delegate.getSendAsPeers().peers.get(0).peer;
        }
        boolean z2 = true;
        boolean z3 = tLRPC$Peer != null && (this.delegate.getSendAsPeers() == null || this.delegate.getSendAsPeers().peers.size() > 1) && !isEditingMessage() && !isRecordingAudioVideo() && ((frameLayout = this.recordedAudioPanel) == null || frameLayout.getVisibility() != 0);
        if (z3) {
            createSenderSelectView();
        }
        if (tLRPC$Peer != null) {
            if (tLRPC$Peer.channel_id != 0) {
                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tLRPC$Peer.channel_id));
                if (chat != null && (senderSelectView2 = this.senderSelectView) != null) {
                    senderSelectView2.setAvatar(chat);
                    this.senderSelectView.setContentDescription(LocaleController.formatString(C3632R.string.AccDescrSendAs, chat.title));
                }
            } else {
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Peer.user_id));
                if (user != null && (senderSelectView = this.senderSelectView) != null) {
                    senderSelectView.setAvatar(user);
                    this.senderSelectView.setContentDescription(LocaleController.formatString(C3632R.string.AccDescrSendAs, ContactsController.formatName(user.first_name, user.last_name)));
                }
            }
        }
        SenderSelectView senderSelectView3 = this.senderSelectView;
        if (senderSelectView3 == null || senderSelectView3.getVisibility() != 0) {
            z2 = false;
        }
        int m104dp = AndroidUtilities.m104dp(2);
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = z3 ? 0.0f : 1.0f;
        float f5 = z3 ? 1.0f : 0.0f;
        SenderSelectView senderSelectView4 = this.senderSelectView;
        if (senderSelectView4 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) senderSelectView4.getLayoutParams();
            f = z3 ? ((-this.senderSelectView.getLayoutParams().width) - marginLayoutParams.leftMargin) - m104dp : 0.0f;
            f2 = z3 ? 0.0f : ((-this.senderSelectView.getLayoutParams().width) - marginLayoutParams.leftMargin) - m104dp;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        if (z2 != z3) {
            SenderSelectView senderSelectView5 = this.senderSelectView;
            ValueAnimator valueAnimator = senderSelectView5 == null ? null : (ValueAnimator) senderSelectView5.getTag();
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.senderSelectView.setTag(null);
            }
            if (this.parentFragment.getOtherSameChatsDiff() == 0 && this.parentFragment.fragmentOpened && z) {
                ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
                SenderSelectView senderSelectView6 = this.senderSelectView;
                if (senderSelectView6 != null) {
                    senderSelectView6.setTranslationX(f);
                }
                this.messageTextTranslationX = f;
                updateMessageTextParams();
                final float f6 = f;
                final float f7 = f2;
                final float f8 = f4;
                final float f9 = f5;
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ChatActivityEnterView.this.lambda$updateSendAsButton$58(f6, f7, f8, f9, valueAnimator2);
                    }
                });
                final boolean z4 = z3;
                final float f10 = f4;
                final float f11 = f;
                final float f12 = f2;
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.63
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        if (z4) {
                            ChatActivityEnterView.this.createSenderSelectView();
                            ChatActivityEnterView.this.senderSelectView.setVisibility(0);
                        }
                        float f13 = BitmapDescriptorFactory.HUE_RED;
                        if (ChatActivityEnterView.this.senderSelectView != null) {
                            ChatActivityEnterView.this.senderSelectView.setAlpha(f10);
                            ChatActivityEnterView.this.senderSelectView.setTranslationX(f11);
                            f13 = ChatActivityEnterView.this.senderSelectView.getTranslationX();
                        }
                        ChatActivityEnterView.this.formattingButton.setTranslationX(f13);
                        ChatActivityEnterView.this.emojiButton.setTranslationX(f13);
                        ChatActivityEnterView.this.messageTextTranslationX = f13;
                        ChatActivityEnterView.this.updateMessageTextParams();
                        if (ChatActivityEnterView.this.botCommandsMenuButton == null || ChatActivityEnterView.this.botCommandsMenuButton.getTag() != null) {
                            return;
                        }
                        ChatActivityEnterView.this.animationParamsX.clear();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z4) {
                            return;
                        }
                        if (ChatActivityEnterView.this.senderSelectView != null) {
                            ChatActivityEnterView.this.senderSelectView.setVisibility(8);
                        }
                        ChatActivityEnterView.this.formattingButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        ChatActivityEnterView.this.emojiButton.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        ChatActivityEnterView.this.messageTextTranslationX = BitmapDescriptorFactory.HUE_RED;
                        ChatActivityEnterView.this.updateMessageTextParams();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        float f13;
                        if (z4) {
                            ChatActivityEnterView.this.createSenderSelectView();
                        }
                        if (ChatActivityEnterView.this.senderSelectView != null) {
                            ChatActivityEnterView.this.senderSelectView.setVisibility(z4 ? 0 : 8);
                            ChatActivityEnterView.this.senderSelectView.setAlpha(f9);
                            ChatActivityEnterView.this.senderSelectView.setTranslationX(f12);
                            f13 = ChatActivityEnterView.this.senderSelectView.getTranslationX();
                        } else {
                            f13 = BitmapDescriptorFactory.HUE_RED;
                        }
                        ChatActivityEnterView.this.formattingButton.setTranslationX(f13);
                        ChatActivityEnterView.this.emojiButton.setTranslationX(f13);
                        ChatActivityEnterView.this.messageTextTranslationX = f13;
                        ChatActivityEnterView.this.updateMessageTextParams();
                        ChatActivityEnterView.this.requestLayout();
                    }
                });
                duration.start();
                SenderSelectView senderSelectView7 = this.senderSelectView;
                if (senderSelectView7 != null) {
                    senderSelectView7.setTag(duration);
                    return;
                }
                return;
            }
            if (z3) {
                createSenderSelectView();
            }
            SenderSelectView senderSelectView8 = this.senderSelectView;
            if (senderSelectView8 != null) {
                senderSelectView8.setVisibility(z3 ? 0 : 8);
                this.senderSelectView.setTranslationX(f2);
            }
            if (z3) {
                f3 = f2;
            }
            this.formattingButton.setTranslationX(f3);
            this.emojiButton.setTranslationX(f3);
            this.messageTextTranslationX = f3;
            updateMessageTextParams();
            SenderSelectView senderSelectView9 = this.senderSelectView;
            if (senderSelectView9 != null) {
                senderSelectView9.setAlpha(f5);
                this.senderSelectView.setTag(null);
            }
        }
    }

    public /* synthetic */ void lambda$updateSendAsButton$58(float f, float f2, float f3, float f4, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f5 = f + ((f2 - f) * floatValue);
        SenderSelectView senderSelectView = this.senderSelectView;
        if (senderSelectView != null) {
            senderSelectView.setAlpha(f3 + ((f4 - f3) * floatValue));
            this.senderSelectView.setTranslationX(f5);
        }
        this.formattingButton.setTranslationX(f5);
        this.emojiButton.setTranslationX(f5);
        this.messageTextTranslationX = f5;
        updateMessageTextParams();
    }

    public boolean onBotWebViewBackPressed() {
        BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
        return botWebViewMenuContainer != null && botWebViewMenuContainer.onBackPressed();
    }

    public boolean hasBotWebView() {
        return this.botMenuButtonType == BotMenuButtonType.WEB_VIEW;
    }

    private void updateBotButton(boolean z) {
        ImageView imageView;
        ImageView imageView2;
        if (this.isChat) {
            ChatActivity chatActivity = this.parentFragment;
            if (chatActivity != null && !chatActivity.openAnimationEnded) {
                z = false;
            }
            boolean hasBotWebView = hasBotWebView();
            boolean z2 = this.botMenuButtonType != BotMenuButtonType.NO_BUTTON && this.dialog_id > 0;
            ImageView imageView3 = this.botButton;
            boolean z3 = imageView3 != null && imageView3.getVisibility() == 0;
            if (hasBotWebView || this.hasBotCommands || this.botReplyMarkup != null) {
                if (this.botReplyMarkup != null) {
                    if (isPopupShowing() && this.currentPopupContentType == 1 && this.botReplyMarkup.is_persistent) {
                        ImageView imageView4 = this.botButton;
                        if (imageView4 != null && imageView4.getVisibility() != 8) {
                            this.botButton.setVisibility(8);
                        }
                    } else {
                        createBotButton();
                        if (this.botButton.getVisibility() != 0) {
                            this.botButton.setVisibility(0);
                        }
                        this.botButtonDrawable.setIcon(C3632R.C3634drawable.input_bot2, true);
                        this.botButton.setContentDescription(LocaleController.getString("AccDescrBotKeyboard", C3632R.string.AccDescrBotKeyboard));
                    }
                } else if (!z2) {
                    createBotButton();
                    this.botButtonDrawable.setIcon(C3632R.C3634drawable.input_bot1, true);
                    this.botButton.setContentDescription(LocaleController.getString("AccDescrBotCommands", C3632R.string.AccDescrBotCommands));
                    this.botButton.setVisibility(0);
                } else {
                    ImageView imageView5 = this.botButton;
                    if (imageView5 != null) {
                        imageView5.setVisibility(8);
                    }
                }
            } else {
                ImageView imageView6 = this.botButton;
                if (imageView6 != null) {
                    imageView6.setVisibility(8);
                }
            }
            if (z2 || this.botMenuButtonType == BotMenuButtonType.TEMPLATES) {
                createBotCommandsMenuButton();
            }
            ImageView imageView7 = this.botButton;
            boolean z4 = (imageView7 != null && imageView7.getVisibility() == 0) != z3;
            BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
            if (botCommandsMenuView != null) {
                boolean z5 = botCommandsMenuView.isWebView;
                botCommandsMenuView.setWebView(this.botMenuButtonType == BotMenuButtonType.WEB_VIEW);
                BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
                BotMenuButtonType botMenuButtonType = this.botMenuButtonType;
                BotMenuButtonType botMenuButtonType2 = BotMenuButtonType.TEMPLATES;
                botCommandsMenuView2.setTemplatesMode(botMenuButtonType == botMenuButtonType2, this.parentFragment);
                updateTemplatesButton();
                boolean menuText = this.botCommandsMenuButton.setMenuText(this.botMenuButtonType == BotMenuButtonType.COMMANDS ? LocaleController.getString(C3632R.string.BotsMenuTitle) : this.botMenuWebViewTitle);
                if (this.botMenuButtonType != botMenuButtonType2) {
                    AndroidUtilities.updateViewVisibilityAnimated(this.botCommandsMenuButton, z2, 0.5f, z);
                }
                z4 = z4 || menuText || z5 != this.botCommandsMenuButton.isWebView;
            }
            if (z4 && z) {
                beginDelayedTransition();
                ImageView imageView8 = this.botButton;
                boolean z6 = imageView8 != null && imageView8.getVisibility() == 0;
                if (z6 != z3 && (imageView2 = this.botButton) != null) {
                    imageView2.setVisibility(0);
                    if (z6) {
                        this.botButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.botButton.setScaleX(0.1f);
                        this.botButton.setScaleY(0.1f);
                    } else if (!z6) {
                        this.botButton.setAlpha(1.0f);
                        this.botButton.setScaleX(1.0f);
                        this.botButton.setScaleY(1.0f);
                    }
                    AndroidUtilities.updateViewVisibilityAnimated(this.botButton, z6, 0.1f, true);
                }
            }
            updateFieldRight(2);
            LinearLayout linearLayout = this.attachLayout;
            ImageView imageView9 = this.botButton;
            linearLayout.setPivotX(AndroidUtilities.m104dp(((imageView9 == null || imageView9.getVisibility() == 8) && ((imageView = this.notifyButton) == null || imageView.getVisibility() == 8)) ? 48 : 96));
        }
    }

    public void updateBotWebView(boolean z) {
        if (this.botMenuButtonType != BotMenuButtonType.NO_BUTTON && this.dialog_id > 0) {
            createBotCommandsMenuButton();
        }
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            botCommandsMenuView.setWebView(hasBotWebView());
        }
        updateBotButton(z);
    }

    public void setBotsCount(int i, boolean z, boolean z2) {
        this.botCount = i;
        if (this.hasBotCommands != z) {
            this.hasBotCommands = z;
            updateBotButton(z2);
        }
    }

    public void setButtons(MessageObject messageObject) {
        setButtons(messageObject, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x00c4, code lost:
        if (r7.getInt("closed_botkeyboard_" + getTopicKeyString(), 0) == r6.getId()) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x009f, code lost:
        if (r7.getInt("answered_" + getTopicKeyString(), 0) != r6.getId()) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setButtons(org.telegram.messenger.MessageObject r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatActivityEnterView.setButtons(org.telegram.messenger.MessageObject, boolean):void");
    }

    public /* synthetic */ void lambda$setButtons$59(TLRPC$KeyboardButton tLRPC$KeyboardButton) {
        ChatActivity chatActivity;
        boolean z = this.replyingMessageObject != null && (chatActivity = this.parentFragment) != null && chatActivity.isTopic && chatActivity.getTopicId() == this.replyingMessageObject.getId();
        MessageObject messageObject = this.replyingMessageObject;
        if (messageObject == null || z) {
            messageObject = DialogObject.isChatDialog(this.dialog_id) ? this.botButtonsMessageObject : null;
        }
        MessageObject messageObject2 = this.replyingMessageObject;
        if (messageObject2 == null || z) {
            messageObject2 = this.botButtonsMessageObject;
        }
        boolean didPressedBotButton = didPressedBotButton(tLRPC$KeyboardButton, messageObject, messageObject2);
        if (this.replyingMessageObject != null && !z) {
            openKeyboardInternal();
            setButtons(this.botMessageObject, false);
        } else {
            MessageObject messageObject3 = this.botButtonsMessageObject;
            if (messageObject3 != null && messageObject3.messageOwner.reply_markup.single_use) {
                if (didPressedBotButton) {
                    openKeyboardInternal();
                } else {
                    showPopup(0, 0);
                }
                SharedPreferences.Editor edit = MessagesController.getMainSettings(this.currentAccount).edit();
                edit.putInt("answered_" + getTopicKeyString(), this.botButtonsMessageObject.getId()).commit();
            }
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onMessageSend(null, true, 0, null);
        }
    }

    public boolean didPressedBotButton(TLRPC$KeyboardButton tLRPC$KeyboardButton, MessageObject messageObject, MessageObject messageObject2) {
        return didPressedBotButton(tLRPC$KeyboardButton, messageObject, messageObject2, null);
    }

    public boolean didPressedBotButton(final TLRPC$KeyboardButton tLRPC$KeyboardButton, final MessageObject messageObject, final MessageObject messageObject2, Browser.Progress progress) {
        if (tLRPC$KeyboardButton == null || messageObject2 == null) {
            return false;
        }
        if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUpdateApp) {
            if (ApplicationLoader.isStandaloneBuild()) {
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity != null) {
                    launchActivity.checkAppUpdate(true);
                }
            } else {
                Browser.openUrl(this.parentActivity, BuildVars.PLAYSTORE_APP_URL);
            }
        } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButton) {
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(tLRPC$KeyboardButton.text, this.dialog_id, messageObject, getThreadMessage(), null, false, null, null, null, true, 0, null, false, null));
        } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUrl) {
            if (tLRPC$KeyboardButton.url.contains(AppConfiguration$Common.getDynamicLinkDomain())) {
                TLRPC$Peer tLRPC$Peer = messageObject2.messageOwner.peer_id;
                ChatActivity chatActivity = this.parentFragment;
                String str = tLRPC$KeyboardButton.url;
                MessagesController messagesController = chatActivity.getMessagesController();
                long j = tLRPC$Peer.channel_id;
                if (j == 0) {
                    j = tLRPC$Peer.chat_id;
                }
                chatActivity.processWalletDynamicLink(str, messagesController.getChat(Long.valueOf(j)));
            } else if (BinancePayHelper.isProcessBinancePayUrl(tLRPC$KeyboardButton.url)) {
                this.parentFragment.processBinancePayRequest(tLRPC$KeyboardButton);
            } else if (Browser.urlMustNotHaveConfirmation(tLRPC$KeyboardButton.url)) {
                Browser.openUrl(this.parentActivity, Uri.parse(tLRPC$KeyboardButton.url), true, true, progress);
            } else {
                AlertsCreator.showOpenUrlAlert(this.parentFragment, tLRPC$KeyboardButton.url, false, true, true, progress, this.resourcesProvider);
            }
        } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonRequestPhone) {
            this.parentFragment.shareMyContact(2, messageObject2);
        } else {
            if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonRequestPoll) {
                this.parentFragment.openPollCreate((tLRPC$KeyboardButton.flags & 1) != 0 ? Boolean.valueOf(tLRPC$KeyboardButton.quiz) : null);
                return false;
            } else if ((tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonWebView) || (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonSimpleWebView)) {
                TLRPC$Message tLRPC$Message = messageObject2.messageOwner;
                long j2 = tLRPC$Message.via_bot_id;
                if (j2 == 0) {
                    j2 = tLRPC$Message.from_id.user_id;
                }
                final long j3 = j2;
                MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j3));
                final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView.65
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (ChatActivityEnterView.this.sizeNotifierLayout.measureKeyboardHeight() > AndroidUtilities.m104dp(20)) {
                            AndroidUtilities.hideKeyboard(ChatActivityEnterView.this);
                            AndroidUtilities.runOnUIThread(this, 150L);
                            return;
                        }
                        BotWebViewSheet botWebViewSheet = new BotWebViewSheet(ChatActivityEnterView.this.getContext(), ChatActivityEnterView.this.resourcesProvider);
                        botWebViewSheet.setParentActivity(ChatActivityEnterView.this.parentActivity);
                        int i = ChatActivityEnterView.this.currentAccount;
                        long j4 = messageObject2.messageOwner.dialog_id;
                        long j5 = j3;
                        TLRPC$KeyboardButton tLRPC$KeyboardButton2 = tLRPC$KeyboardButton;
                        String str2 = tLRPC$KeyboardButton2.text;
                        String str3 = tLRPC$KeyboardButton2.url;
                        boolean z = tLRPC$KeyboardButton2 instanceof TLRPC$TL_keyboardButtonSimpleWebView;
                        MessageObject messageObject3 = messageObject;
                        botWebViewSheet.requestWebView(i, j4, j5, str2, str3, z ? 1 : 0, messageObject3 != null ? messageObject3.messageOwner.f1626id : 0, false);
                        botWebViewSheet.show();
                    }
                };
                if (SharedPrefsHelper.isWebViewConfirmShown(this.currentAccount, j3)) {
                    runnable.run();
                } else {
                    AlertsCreator.createBotLaunchAlert(this.parentFragment, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialog_id)), new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda68
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatActivityEnterView.this.lambda$didPressedBotButton$60(runnable, j3);
                        }
                    }, (Runnable) null);
                }
            } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonRequestGeoLocation) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.parentActivity);
                builder.setTitle(LocaleController.getString("ShareYouLocationTitle", C3632R.string.ShareYouLocationTitle));
                builder.setMessage(LocaleController.getString("ShareYouLocationInfo", C3632R.string.ShareYouLocationInfo));
                builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ChatActivityEnterView.this.lambda$didPressedBotButton$61(messageObject2, tLRPC$KeyboardButton, dialogInterface, i);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                this.parentFragment.showDialog(builder.create());
            } else if ((tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonCallback) || (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonGame) || (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonBuy) || (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUrlAuth)) {
                if ((tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUrlAuth) && WalletHelper.isWalletAuthBot(MessageObject.getDialogId(messageObject2.messageOwner)) && WalletHelper.isWalletIntent(tLRPC$KeyboardButton.url)) {
                    this.parentFragment.onManualAuthButtonClick(messageObject2);
                } else {
                    SendMessagesHelper.getInstance(this.currentAccount).sendCallback(true, messageObject2, tLRPC$KeyboardButton, this.parentFragment);
                }
            } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonSwitchInline) {
                if (this.parentFragment.processSwitchButton((TLRPC$TL_keyboardButtonSwitchInline) tLRPC$KeyboardButton)) {
                    return true;
                }
                if (tLRPC$KeyboardButton.same_peer) {
                    TLRPC$Message tLRPC$Message2 = messageObject2.messageOwner;
                    long j4 = tLRPC$Message2.from_id.user_id;
                    long j5 = tLRPC$Message2.via_bot_id;
                    if (j5 != 0) {
                        j4 = j5;
                    }
                    TLRPC$User user = this.accountInstance.getMessagesController().getUser(Long.valueOf(j4));
                    if (user == null) {
                        return true;
                    }
                    setFieldText("@" + UserObject.getPublicUsername(user) + " " + tLRPC$KeyboardButton.query);
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("onlySelect", true);
                    bundle.putInt("dialogsType", 1);
                    if ((tLRPC$KeyboardButton.flags & 2) != 0) {
                        bundle.putBoolean("allowGroups", false);
                        bundle.putBoolean("allowMegagroups", false);
                        bundle.putBoolean("allowLegacyGroups", false);
                        bundle.putBoolean("allowUsers", false);
                        bundle.putBoolean("allowChannels", false);
                        bundle.putBoolean("allowBots", false);
                        Iterator<TLRPC$InlineQueryPeerType> it = tLRPC$KeyboardButton.peer_types.iterator();
                        while (it.hasNext()) {
                            TLRPC$InlineQueryPeerType next = it.next();
                            if (next instanceof TLRPC$TL_inlineQueryPeerTypePM) {
                                bundle.putBoolean("allowUsers", true);
                            } else if (next instanceof TLRPC$TL_inlineQueryPeerTypeBotPM) {
                                bundle.putBoolean("allowBots", true);
                            } else if (next instanceof TLRPC$TL_inlineQueryPeerTypeBroadcast) {
                                bundle.putBoolean("allowChannels", true);
                            } else if (next instanceof TLRPC$TL_inlineQueryPeerTypeChat) {
                                bundle.putBoolean("allowLegacyGroups", true);
                            } else if (next instanceof TLRPC$TL_inlineQueryPeerTypeMegagroup) {
                                bundle.putBoolean("allowMegagroups", true);
                            }
                        }
                    }
                    DialogsActivity dialogsActivity = new DialogsActivity(bundle);
                    dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda77
                        @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
                        public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                            boolean lambda$didPressedBotButton$62;
                            lambda$didPressedBotButton$62 = ChatActivityEnterView.this.lambda$didPressedBotButton$62(messageObject2, tLRPC$KeyboardButton, dialogsActivity2, arrayList, charSequence, z, topicsFragment, callbacks$Callback1);
                            return lambda$didPressedBotButton$62;
                        }
                    });
                    this.parentFragment.presentFragment(dialogsActivity);
                }
            } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUserProfile) {
                if (MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$KeyboardButton.user_id)) != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("user_id", tLRPC$KeyboardButton.user_id);
                    this.parentFragment.presentFragment(new ProfileActivity(bundle2));
                }
            } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonRequestPeer) {
                final TLRPC$TL_keyboardButtonRequestPeer tLRPC$TL_keyboardButtonRequestPeer = (TLRPC$TL_keyboardButtonRequestPeer) tLRPC$KeyboardButton;
                if (tLRPC$TL_keyboardButtonRequestPeer.peer_type != null && messageObject2.messageOwner != null) {
                    Bundle bundle3 = new Bundle();
                    bundle3.putBoolean("onlySelect", true);
                    bundle3.putInt("dialogsType", 15);
                    TLRPC$Message tLRPC$Message3 = messageObject2.messageOwner;
                    if (tLRPC$Message3 != null) {
                        TLRPC$Peer tLRPC$Peer2 = tLRPC$Message3.from_id;
                        if (tLRPC$Peer2 instanceof TLRPC$TL_peerUser) {
                            bundle3.putLong("requestPeerBotId", tLRPC$Peer2.user_id);
                        }
                    }
                    try {
                        SerializedData serializedData = new SerializedData(tLRPC$TL_keyboardButtonRequestPeer.peer_type.getObjectSize());
                        tLRPC$TL_keyboardButtonRequestPeer.peer_type.serializeToStream(serializedData);
                        bundle3.putByteArray("requestPeerType", serializedData.toByteArray());
                        serializedData.cleanup();
                    } catch (Exception e) {
                        FileLog.m99e(e);
                    }
                    DialogsActivity dialogsActivity2 = new DialogsActivity(bundle3);
                    dialogsActivity2.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView.66
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
                        public boolean didSelectDialogs(DialogsActivity dialogsActivity3, ArrayList<MessagesStorage.TopicKey> arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1<ArrayList<MessageObject>> callbacks$Callback1) {
                            if (callbacks$Callback1 != null) {
                                callbacks$Callback1.invoke(null);
                                return true;
                            }
                            if (arrayList != null && !arrayList.isEmpty()) {
                                TLRPC$TL_messages_sendBotRequestedPeer tLRPC$TL_messages_sendBotRequestedPeer = new TLRPC$TL_messages_sendBotRequestedPeer();
                                tLRPC$TL_messages_sendBotRequestedPeer.peer = MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).getInputPeer(messageObject2.messageOwner.peer_id);
                                tLRPC$TL_messages_sendBotRequestedPeer.msg_id = messageObject2.getId();
                                tLRPC$TL_messages_sendBotRequestedPeer.button_id = tLRPC$TL_keyboardButtonRequestPeer.button_id;
                                tLRPC$TL_messages_sendBotRequestedPeer.requested_peer = MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).getInputPeer(arrayList.get(0).dialogId);
                                ConnectionsManager.getInstance(ChatActivityEnterView.this.currentAccount).sendRequest(tLRPC$TL_messages_sendBotRequestedPeer, null);
                            }
                            dialogsActivity3.finishFragment();
                            return true;
                        }
                    });
                    this.parentFragment.presentFragment(dialogsActivity2);
                    return false;
                }
                FileLog.m101e("button.peer_type is null");
            }
        }
        return true;
    }

    public /* synthetic */ void lambda$didPressedBotButton$60(Runnable runnable, long j) {
        runnable.run();
        SharedPrefsHelper.setWebViewConfirmShown(this.currentAccount, j, true);
    }

    public /* synthetic */ void lambda$didPressedBotButton$61(MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton, DialogInterface dialogInterface, int i) {
        if (Build.VERSION.SDK_INT >= 23 && this.parentActivity.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            this.parentActivity.requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 2);
            this.pendingMessageObject = messageObject;
            this.pendingLocationButton = tLRPC$KeyboardButton;
            return;
        }
        SendMessagesHelper.getInstance(this.currentAccount).sendCurrentLocation(messageObject, tLRPC$KeyboardButton);
    }

    public /* synthetic */ boolean lambda$didPressedBotButton$62(MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(null);
            return true;
        }
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        long j = tLRPC$Message.from_id.user_id;
        long j2 = tLRPC$Message.via_bot_id;
        if (j2 != 0) {
            j = j2;
        }
        TLRPC$User user = this.accountInstance.getMessagesController().getUser(Long.valueOf(j));
        if (user == null) {
            dialogsActivity.finishFragment();
            return true;
        }
        long j3 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
        MediaDataController mediaDataController = MediaDataController.getInstance(this.currentAccount);
        mediaDataController.saveDraft(j3, 0, "@" + UserObject.getPublicUsername(user) + " " + tLRPC$KeyboardButton.query, null, null, true);
        if (j3 != this.dialog_id) {
            if (!DialogObject.isEncryptedDialog(j3)) {
                Bundle bundle = new Bundle();
                if (DialogObject.isUserDialog(j3)) {
                    bundle.putLong("user_id", j3);
                } else {
                    bundle.putLong("chat_id", -j3);
                }
                if (!this.accountInstance.getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                    return true;
                }
                if (this.parentFragment.presentFragment(new ChatActivity(bundle), true)) {
                    if (!AndroidUtilities.isTablet()) {
                        this.parentFragment.removeSelfFromStack();
                    }
                } else {
                    dialogsActivity.finishFragment();
                }
            } else {
                dialogsActivity.finishFragment();
            }
        } else {
            dialogsActivity.finishFragment();
        }
        return true;
    }

    public boolean isPopupView(View view) {
        return view == this.formattingMessagesKeyboardContainer || view == this.botKeyboardView || view == this.emojiView;
    }

    public int getPopupViewHeight(View view) {
        BotKeyboardView botKeyboardView = this.botKeyboardView;
        if (view != botKeyboardView || botKeyboardView == null) {
            return -1;
        }
        return botKeyboardView.getKeyboardHeight();
    }

    public boolean isRecordCircle(View view) {
        return view == this.recordCircle;
    }

    public SizeNotifierFrameLayout getSizeNotifierLayout() {
        return this.sizeNotifierLayout;
    }

    private void createEmojiView() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null && emojiView.currentAccount != UserConfig.selectedAccount) {
            this.sizeNotifierLayout.removeView(emojiView);
            this.emojiView = null;
        }
        if (this.emojiView != null) {
            return;
        }
        EmojiView emojiView2 = new EmojiView(this.parentFragment, this.allowAnimatedEmoji, true, true, getContext(), true, this.info, this.sizeNotifierLayout, this.shouldDrawBackground, this.resourcesProvider, this.emojiViewFrozen) { // from class: org.telegram.ui.Components.ChatActivityEnterView.67
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.view.ViewGroup, android.view.ViewParent
            public void requestDisallowInterceptTouchEvent(boolean z) {
                super.requestDisallowInterceptTouchEvent(!ChatActivityEnterView.this.isChat || z);
            }

            @Override // org.telegram.p043ui.Components.EmojiView, android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                if (ChatActivityEnterView.this.panelAnimation == null || ChatActivityEnterView.this.animatingContentType != 0) {
                    return;
                }
                ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(f);
            }
        };
        this.emojiView = emojiView2;
        if (!this.shouldDrawBackground) {
            emojiView2.updateColors();
        }
        this.emojiView.setAllow(this.allowStickers, this.allowGifs, true);
        this.emojiView.setVisibility(8);
        this.emojiView.setShowing(false);
        this.emojiView.setDelegate(new C463268());
        this.emojiView.setDragListener(new EmojiView.DragListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView.69
            int initialOffset;
            boolean wasExpanded;

            {
                ChatActivityEnterView.this = this;
            }

            @Override // org.telegram.p043ui.Components.EmojiView.DragListener
            public void onDragStart() {
                if (allowDragging()) {
                    if (ChatActivityEnterView.this.stickersExpansionAnim != null) {
                        ChatActivityEnterView.this.stickersExpansionAnim.cancel();
                    }
                    ChatActivityEnterView.this.stickersDragging = true;
                    this.wasExpanded = ChatActivityEnterView.this.stickersExpanded;
                    ChatActivityEnterView.this.stickersExpanded = true;
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 1);
                    ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                    chatActivityEnterView.stickersExpandedHeight = (((chatActivityEnterView.sizeNotifierLayout.getHeight() - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - C3704ActionBar.getCurrentActionBarHeight()) - ChatActivityEnterView.this.getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                    if (ChatActivityEnterView.this.searchingType == 2) {
                        ChatActivityEnterView chatActivityEnterView2 = ChatActivityEnterView.this;
                        int i = chatActivityEnterView2.stickersExpandedHeight;
                        int m104dp = AndroidUtilities.m104dp(120);
                        Point point = AndroidUtilities.displaySize;
                        chatActivityEnterView2.stickersExpandedHeight = Math.min(i, m104dp + (point.x > point.y ? ChatActivityEnterView.this.keyboardHeightLand : ChatActivityEnterView.this.keyboardHeight));
                    }
                    ChatActivityEnterView.this.emojiView.getLayoutParams().height = ChatActivityEnterView.this.stickersExpandedHeight;
                    ChatActivityEnterView.this.emojiView.setLayerType(2, null);
                    ChatActivityEnterView.this.sizeNotifierLayout.requestLayout();
                    ChatActivityEnterView chatActivityEnterView3 = ChatActivityEnterView.this;
                    if (chatActivityEnterView3.shouldDrawBackground) {
                        chatActivityEnterView3.sizeNotifierLayout.setForeground(new ScrimDrawable());
                    }
                    this.initialOffset = (int) ChatActivityEnterView.this.getTranslationY();
                    if (ChatActivityEnterView.this.delegate != null) {
                        ChatActivityEnterView.this.delegate.onStickersExpandedChange();
                    }
                }
            }

            @Override // org.telegram.p043ui.Components.EmojiView.DragListener
            public void onDragEnd(float f) {
                if (allowDragging()) {
                    ChatActivityEnterView.this.stickersDragging = false;
                    if ((this.wasExpanded && f >= AndroidUtilities.m104dp(200)) || ((!this.wasExpanded && f <= AndroidUtilities.m104dp(-200)) || ((this.wasExpanded && ChatActivityEnterView.this.stickersExpansionProgress <= 0.6f) || (!this.wasExpanded && ChatActivityEnterView.this.stickersExpansionProgress >= 0.4f)))) {
                        ChatActivityEnterView.this.setStickersExpanded(!this.wasExpanded, true, true);
                    } else {
                        ChatActivityEnterView.this.setStickersExpanded(this.wasExpanded, true, true);
                    }
                }
            }

            @Override // org.telegram.p043ui.Components.EmojiView.DragListener
            public void onDragCancel() {
                if (ChatActivityEnterView.this.stickersTabOpen) {
                    ChatActivityEnterView.this.stickersDragging = false;
                    ChatActivityEnterView.this.setStickersExpanded(this.wasExpanded, true, false);
                }
            }

            @Override // org.telegram.p043ui.Components.EmojiView.DragListener
            public void onDrag(int i) {
                int i2;
                ChatActivityEnterView chatActivityEnterView;
                if (allowDragging()) {
                    Point point = AndroidUtilities.displaySize;
                    float max = Math.max(Math.min(i + this.initialOffset, 0), -(ChatActivityEnterView.this.stickersExpandedHeight - (point.x > point.y ? ChatActivityEnterView.this.keyboardHeightLand : ChatActivityEnterView.this.keyboardHeight)));
                    ChatActivityEnterView.this.emojiView.setTranslationY(max);
                    ChatActivityEnterView.this.setTranslationY(max);
                    ChatActivityEnterView.this.stickersExpansionProgress = max / (-(chatActivityEnterView.stickersExpandedHeight - i2));
                    ChatActivityEnterView.this.sizeNotifierLayout.invalidate();
                }
            }

            private boolean allowDragging() {
                EditTextCaption editTextCaption;
                return ChatActivityEnterView.this.stickersTabOpen && (ChatActivityEnterView.this.stickersExpanded || (editTextCaption = ChatActivityEnterView.this.messageEditText) == null || editTextCaption.length() <= 0) && ChatActivityEnterView.this.emojiView.areThereAnyStickers() && !ChatActivityEnterView.this.waitingForKeyboardOpen;
            }
        });
        attachEmojiView();
        checkChannelRights();
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$68 */
    /* loaded from: classes6.dex */
    public class C463268 implements EmojiView.EmojiViewDelegate {
        C463268() {
            ChatActivityEnterView.this = r1;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        /* renamed from: onKiklikoVideoSelected */
        public void lambda$onKiklikoVideoSelected$0(final String str, final boolean z, boolean z2, int i, String str2) {
            boolean z3;
            if (ChatActivityEnterView.this.delegate == null) {
                return;
            }
            if (z) {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendClip(AnalyticsEvent.SendClip.typeGif));
            } else if (i != 0) {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendClip("scheduled"));
            } else if (!z2) {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendClip("silent"));
            } else {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendClip("default"));
            }
            if ((isInScheduleMode() && i == 0) || (ChatActivityEnterView.this.isTemplatesChannel(true, true) && str2 == null)) {
                AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$68$$ExternalSyntheticLambda5
                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z4, int i2, String str3) {
                        ChatActivityEnterView.C463268.this.lambda$onKiklikoVideoSelected$0(str, z, z4, i2, str3);
                    }

                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public /* synthetic */ ArrayList getSelectedDialogs() {
                        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                    }
                }, ChatActivityEnterView.this.resourcesProvider, ChatActivityEnterView.this.parentFragment);
                return;
            }
            MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, str, 0, true, 0, 0, 0L);
            int[] iArr = new int[11];
            AnimatedFileDrawable.getVideoInfo(str, iArr);
            int i2 = iArr[3];
            int i3 = iArr[7];
            int i4 = iArr[1];
            int i5 = iArr[2];
            long j = iArr[4];
            long j2 = ((i2 / 8) * j) / 1000;
            long j3 = z ? 0L : iArr[5];
            VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
            videoEditedInfo.bitrate = z ? -1 : MediaController.getVideoBitrate(str);
            videoEditedInfo.end = 1.0f;
            videoEditedInfo.endTime = -1L;
            videoEditedInfo.startTime = -1L;
            videoEditedInfo.estimatedDuration = j;
            long j4 = j3 + j2;
            videoEditedInfo.estimatedSize = j4;
            videoEditedInfo.estimatedSize = j4 + ((j4 / 32768) * 16);
            videoEditedInfo.framerate = i3;
            videoEditedInfo.originalDuration = j * 1000;
            videoEditedInfo.resultWidth = i4;
            videoEditedInfo.originalWidth = i4;
            videoEditedInfo.resultHeight = i5;
            videoEditedInfo.originalHeight = i5;
            videoEditedInfo.originalPath = str;
            videoEditedInfo.muted = z;
            ChatActivityEnterView.this.delegate.sendMedia(photoEntry, videoEditedInfo, z2, i, false, str2);
            if (ChatActivityEnterView.this.stickersExpanded) {
                z3 = true;
                ChatActivityEnterView.this.setStickersExpanded(false, true, false);
            } else {
                z3 = true;
            }
            if (ChatActivityEnterView.this.searchingType != 0) {
                ChatActivityEnterView.this.setSearchingTypeInternal(0, z3);
                ChatActivityEnterView.this.emojiView.closeSearch(z3);
                ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
            }
            ChatActivityEnterView.this.delegate.onMessageSend(null, z2, i, null);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void showKiklikoReportAlert(String str, final Callbacks$Callback1<String> callbacks$Callback1) {
            if (ChatActivityEnterView.this.parentFragment == null) {
                return;
            }
            AndroidUtilities.requestAdjustNothing(ChatActivityEnterView.this.parentFragment.getParentActivity(), ChatActivityEnterView.this.parentFragment.getClassGuid());
            BottomSheet.Builder builder = new BottomSheet.Builder(ChatActivityEnterView.this.getContext(), true, ChatActivityEnterView.this.resourcesProvider);
            builder.setTitle(LocaleController.getString("ReportChat", C3632R.string.ReportChat), true);
            final CharSequence[] charSequenceArr = {LocaleController.getString("ReportChatViolence", C3632R.string.ReportChatViolence), LocaleController.getString("ReportChatChild", C3632R.string.ReportChatChild), LocaleController.getString("ReportChatPornography", C3632R.string.ReportChatPornography), LocaleController.getString("ReportChatOther", C3632R.string.ReportChatOther)};
            builder.setItems(charSequenceArr, new int[]{C3632R.C3634drawable.msg_report_violence, C3632R.C3634drawable.msg_block2, C3632R.C3634drawable.msg_report_xxx, C3632R.C3634drawable.msg_report_other}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$68$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ChatActivityEnterView.C463268.this.lambda$showKiklikoReportAlert$1(charSequenceArr, callbacks$Callback1, dialogInterface, i);
                }
            });
            ChatActivityEnterView.this.parentFragment.showDialog(builder.show());
        }

        public /* synthetic */ void lambda$showKiklikoReportAlert$1(CharSequence[] charSequenceArr, final Callbacks$Callback1 callbacks$Callback1, DialogInterface dialogInterface, int i) {
            if (ChatActivityEnterView.this.parentFragment == null) {
                return;
            }
            if (i == charSequenceArr.length - 1) {
                ChatActivityEnterView.this.parentFragment.showDialog(new ReportAlert(ChatActivityEnterView.this.getContext(), 5, ChatActivityEnterView.this.parentFragment.getResourceProvider()) { // from class: org.telegram.ui.Components.ChatActivityEnterView.68.1
                    {
                        C463268.this = this;
                    }

                    @Override // org.telegram.p043ui.ActionBar.BottomSheet
                    public void dismissInternal() {
                        super.dismissInternal();
                        if (ChatActivityEnterView.this.parentFragment != null) {
                            ChatActivityEnterView.this.parentFragment.checkAdjustResize();
                        }
                    }

                    @Override // org.telegram.p043ui.Components.ReportAlert
                    protected void onSend(int i2, String str) {
                        callbacks$Callback1.invoke(str);
                        ChatActivityEnterView.this.parentFragment.getUndoView().showWithAction(0L, 74, Boolean.TRUE);
                    }
                });
                return;
            }
            callbacks$Callback1.invoke(charSequenceArr[i].toString());
            ChatActivityEnterView.this.parentFragment.getUndoView().showWithAction(0L, 74, Boolean.TRUE);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            if (ChatActivityEnterView.this.trendingStickersAlert != null) {
                ChatActivityEnterView.this.trendingStickersAlert.dismiss();
                ChatActivityEnterView.this.trendingStickersAlert = null;
            }
            ChatActivityEnterView.this.editAnimatedSticker(tLRPC$Document, rLottieDrawable, z);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
            if (ChatActivityEnterView.this.trendingStickersAlert != null) {
                ChatActivityEnterView.this.trendingStickersAlert.dismiss();
                ChatActivityEnterView.this.trendingStickersAlert = null;
            }
            ChatActivityEnterView.this.editMedia(tLRPC$Document, z);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void setKiklikoAvatar(String str) {
            ChatActivityEnterView.this.setKiklikoAvatar(str);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean isStoryReply() {
            return (ChatActivityEnterView.this.delegate == null || ChatActivityEnterView.this.delegate.getReplyToStory() == null) ? false : true;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean isUserSelf() {
            return ChatActivityEnterView.this.dialog_id == UserConfig.getInstance(ChatActivityEnterView.this.currentAccount).getClientUserId();
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean onBackspace() {
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            if (editTextCaption == null || editTextCaption.length() == 0) {
                return false;
            }
            ChatActivityEnterView.this.messageEditText.dispatchKeyEvent(new KeyEvent(0, 67));
            return true;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSelected(String str) {
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            if (editTextCaption == null) {
                return;
            }
            int selectionEnd = editTextCaption.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                try {
                    ChatActivityEnterView.this.innerTextChange = 2;
                    CharSequence replaceEmoji = Emoji.replaceEmoji((CharSequence) str, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt(), false, (int[]) null);
                    EditTextCaption editTextCaption2 = ChatActivityEnterView.this.messageEditText;
                    editTextCaption2.setText(editTextCaption2.getText().insert(selectionEnd, replaceEmoji));
                    int length = selectionEnd + replaceEmoji.length();
                    ChatActivityEnterView.this.messageEditText.setSelection(length, length);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            } finally {
                ChatActivityEnterView.this.innerTextChange = 0;
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onCustomEmojiSelected(final long j, final TLRPC$Document tLRPC$Document, final String str, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$68$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.C463268.this.lambda$onCustomEmojiSelected$2(str, tLRPC$Document, j, z);
                }
            });
        }

        public /* synthetic */ void lambda$onCustomEmojiSelected$2(String str, TLRPC$Document tLRPC$Document, long j, boolean z) {
            AnimatedEmojiSpan animatedEmojiSpan;
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            if (editTextCaption == null) {
                return;
            }
            int selectionEnd = editTextCaption.getSelectionEnd();
            if (selectionEnd < 0) {
                selectionEnd = 0;
            }
            try {
                try {
                    ChatActivityEnterView.this.innerTextChange = 2;
                    if (str == null) {
                        str = "😀";
                    }
                    SpannableString spannableString = new SpannableString(str);
                    if (tLRPC$Document != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(tLRPC$Document, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt());
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(j, ChatActivityEnterView.this.messageEditText.getPaint().getFontMetricsInt());
                    }
                    if (!z) {
                        animatedEmojiSpan.fromEmojiKeyboard = true;
                    }
                    animatedEmojiSpan.cacheType = AnimatedEmojiDrawable.getCacheTypeForEnterView();
                    spannableString.setSpan(animatedEmojiSpan, 0, spannableString.length(), 33);
                    EditTextCaption editTextCaption2 = ChatActivityEnterView.this.messageEditText;
                    editTextCaption2.setText(editTextCaption2.getText().insert(selectionEnd, spannableString));
                    ChatActivityEnterView.this.messageEditText.setSelection(spannableString.length() + selectionEnd, selectionEnd + spannableString.length());
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            } finally {
                ChatActivityEnterView.this.innerTextChange = 0;
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onAnimatedEmojiUnlockClick() {
            BaseFragment baseFragment = ChatActivityEnterView.this.parentFragment;
            if (baseFragment == null) {
                baseFragment = LaunchActivity.getLastFragment();
            }
            PremiumFeatureBottomSheet premiumFeatureBottomSheet = new PremiumFeatureBottomSheet(baseFragment, 11, false);
            if (baseFragment != null) {
                baseFragment.showDialog(premiumFeatureBottomSheet);
            } else {
                premiumFeatureBottomSheet.show();
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onStickerSelected(View view, TLRPC$Document tLRPC$Document, String str, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, String str2) {
            if (ChatActivityEnterView.this.trendingStickersAlert != null) {
                ChatActivityEnterView.this.trendingStickersAlert.dismiss();
                ChatActivityEnterView.this.trendingStickersAlert = null;
            }
            if (ChatActivityEnterView.this.slowModeTimer <= 0 || isInScheduleMode()) {
                if (ChatActivityEnterView.this.stickersExpanded) {
                    if (ChatActivityEnterView.this.searchingType != 0) {
                        ChatActivityEnterView.this.setSearchingTypeInternal(0, true);
                        ChatActivityEnterView.this.emojiView.closeSearch(true, MessageObject.getStickerSetId(tLRPC$Document));
                        ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
                    }
                    ChatActivityEnterView.this.setStickersExpanded(false, true, false);
                }
                ChatActivityEnterView.this.lambda$onStickerSelected$63(tLRPC$Document, str, obj, sendAnimationData, false, z, i, str2);
                if (DialogObject.isEncryptedDialog(ChatActivityEnterView.this.dialog_id) && MessageObject.isGifDocument(tLRPC$Document)) {
                    ChatActivityEnterView.this.accountInstance.getMessagesController().saveGif(obj, tLRPC$Document);
                }
            } else if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onUpdateSlowModeButton(view != null ? view : ChatActivityEnterView.this.slowModeButton, true, ChatActivityEnterView.this.slowModeButton.getText());
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onStickersSettingsClick() {
            if (ChatActivityEnterView.this.parentFragment != null) {
                ChatActivityEnterView.this.parentFragment.presentFragment(new StickersActivity(0, null));
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onEmojiSettingsClick(ArrayList<TLRPC$TL_messages_stickerSet> arrayList) {
            if (ChatActivityEnterView.this.parentFragment != null) {
                ChatActivityEnterView.this.parentFragment.presentFragment(new StickersActivity(5, arrayList));
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        /* renamed from: onGifSelected */
        public void lambda$onGifSelected$3(final View view, final Object obj, final String str, final Object obj2, final boolean z, final int i, final String str2) {
            if (i != 0) {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendGif("scheduled"));
            } else if (!z) {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendGif("silent"));
            } else {
                AnalyticsManager.trackEvent(new AnalyticsEvent.SendGif("default"));
            }
            if (ChatActivityEnterView.this.replyingQuote != null && ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.replyingQuote.outdated) {
                ChatActivityEnterView.this.parentFragment.showQuoteMessageUpdate();
            } else if ((!isInScheduleMode() || i != 0) && (!ChatActivityEnterView.this.isTemplatesChannel(true, true) || str2 != null)) {
                if (ChatActivityEnterView.this.slowModeTimer > 0 && !isInScheduleMode()) {
                    if (ChatActivityEnterView.this.delegate != null) {
                        ChatActivityEnterView.this.delegate.onUpdateSlowModeButton(view != null ? view : ChatActivityEnterView.this.slowModeButton, true, ChatActivityEnterView.this.slowModeButton.getText());
                        return;
                    }
                    return;
                }
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$68$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatActivityEnterView.C463268.this.lambda$onGifSelected$4(obj, str, z, i, obj2, str2);
                    }
                };
                if (ChatActivityEnterView.this.showConfirmAlert(runnable)) {
                    return;
                }
                runnable.run();
            } else {
                AlertsCreator.createScheduleDatePickerDialog(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$68$$ExternalSyntheticLambda4
                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z2, int i2, String str3) {
                        ChatActivityEnterView.C463268.this.lambda$onGifSelected$3(view, obj, str, obj2, z2, i2, str3);
                    }

                    @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public /* synthetic */ ArrayList getSelectedDialogs() {
                        return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                    }
                }, ChatActivityEnterView.this.resourcesProvider, ChatActivityEnterView.this.parentFragment);
            }
        }

        public /* synthetic */ void lambda$onGifSelected$4(Object obj, String str, boolean z, int i, Object obj2, String str2) {
            if (ChatActivityEnterView.this.stickersExpanded) {
                if (ChatActivityEnterView.this.searchingType != 0) {
                    ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
                }
                ChatActivityEnterView.this.setStickersExpanded(false, true, false);
            }
            TL_stories$StoryItem replyToStory = ChatActivityEnterView.this.delegate != null ? ChatActivityEnterView.this.delegate.getReplyToStory() : null;
            if (obj instanceof TLRPC$Document) {
                TLRPC$Document tLRPC$Document = (TLRPC$Document) obj;
                SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendSticker(tLRPC$Document, str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), replyToStory, ChatActivityEnterView.this.replyingQuote, null, z, i, false, obj2, str2);
                MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).addRecentGif(tLRPC$Document, (int) (System.currentTimeMillis() / 1000), true);
                if (DialogObject.isEncryptedDialog(ChatActivityEnterView.this.dialog_id)) {
                    ChatActivityEnterView.this.accountInstance.getMessagesController().saveGif(obj2, tLRPC$Document);
                }
            } else if (obj instanceof TLRPC$BotInlineResult) {
                TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) obj;
                if (tLRPC$BotInlineResult.document != null) {
                    MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).addRecentGif(tLRPC$BotInlineResult.document, (int) (System.currentTimeMillis() / 1000), false);
                    if (DialogObject.isEncryptedDialog(ChatActivityEnterView.this.dialog_id)) {
                        ChatActivityEnterView.this.accountInstance.getMessagesController().saveGif(obj2, tLRPC$BotInlineResult.document);
                    }
                }
                TLRPC$User tLRPC$User = (TLRPC$User) obj2;
                HashMap hashMap = new HashMap();
                hashMap.put(TtmlNode.ATTR_ID, tLRPC$BotInlineResult.f1600id);
                hashMap.put("query_id", "" + tLRPC$BotInlineResult.query_id);
                hashMap.put("force_gif", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                if (replyToStory == null) {
                    SendMessagesHelper.prepareSendingBotContextResult(ChatActivityEnterView.this.parentFragment, ChatActivityEnterView.this.accountInstance, tLRPC$BotInlineResult, hashMap, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), null, ChatActivityEnterView.this.replyingQuote, z, i, str2);
                } else {
                    SendMessagesHelper.getInstance(ChatActivityEnterView.this.currentAccount).sendSticker(tLRPC$BotInlineResult.document, str, ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.replyingMessageObject, ChatActivityEnterView.this.getThreadMessage(), replyToStory, ChatActivityEnterView.this.replyingQuote, null, z, i, false, obj2, str2);
                }
                if (ChatActivityEnterView.this.searchingType != 0) {
                    ChatActivityEnterView.this.setSearchingTypeInternal(0, true);
                    ChatActivityEnterView.this.emojiView.closeSearch(true);
                    ChatActivityEnterView.this.emojiView.hideSearchKeyboard();
                }
            }
            if (ChatActivityEnterView.this.delegate != null) {
                ChatActivityEnterView.this.delegate.onMessageSend(null, z, i, str2);
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onTabOpened(int i) {
            ChatActivityEnterView.this.delegate.onStickersTab(i == 3);
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            chatActivityEnterView.post(chatActivityEnterView.updateExpandabilityRunnable);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onClearEmojiRecent() {
            if (ChatActivityEnterView.this.parentFragment == null || ChatActivityEnterView.this.parentActivity == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(ChatActivityEnterView.this.parentActivity, ChatActivityEnterView.this.resourcesProvider);
            builder.setTitle(LocaleController.getString("ClearRecentEmojiTitle", C3632R.string.ClearRecentEmojiTitle));
            builder.setMessage(LocaleController.getString("ClearRecentEmojiText", C3632R.string.ClearRecentEmojiText));
            builder.setPositiveButton(LocaleController.getString("ClearButton", C3632R.string.ClearForAll), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$68$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ChatActivityEnterView.C463268.this.lambda$onClearEmojiRecent$5(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
            ChatActivityEnterView.this.parentFragment.showDialog(builder.create());
        }

        public /* synthetic */ void lambda$onClearEmojiRecent$5(DialogInterface dialogInterface, int i) {
            ChatActivityEnterView.this.emojiView.clearRecentEmoji();
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onShowStickerSet(TLRPC$StickerSet tLRPC$StickerSet, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
            if (ChatActivityEnterView.this.trendingStickersAlert == null || ChatActivityEnterView.this.trendingStickersAlert.isDismissed()) {
                BaseFragment baseFragment = ChatActivityEnterView.this.parentFragment;
                if (baseFragment == null) {
                    baseFragment = LaunchActivity.getLastFragment();
                }
                if (baseFragment == null || ChatActivityEnterView.this.parentActivity == null) {
                    return;
                }
                if (tLRPC$StickerSet != null) {
                    tLRPC$InputStickerSet = new TLRPC$TL_inputStickerSetID();
                    tLRPC$InputStickerSet.access_hash = tLRPC$StickerSet.access_hash;
                    tLRPC$InputStickerSet.f1625id = tLRPC$StickerSet.f1636id;
                }
                Activity activity = ChatActivityEnterView.this.parentActivity;
                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                BaseFragment baseFragment2 = baseFragment;
                baseFragment.showDialog(new StickersAlert(activity, baseFragment2, tLRPC$InputStickerSet, null, chatActivityEnterView, chatActivityEnterView.resourcesProvider));
                return;
            }
            ChatActivityEnterView.this.trendingStickersAlert.getLayout().showStickerSet(tLRPC$StickerSet, tLRPC$InputStickerSet);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onStickerSetAdd(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).toggleStickerSet(ChatActivityEnterView.this.parentActivity, tLRPC$StickerSetCovered, 2, ChatActivityEnterView.this.parentFragment, false, false);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onStickerSetRemove(TLRPC$StickerSetCovered tLRPC$StickerSetCovered) {
            MediaDataController.getInstance(ChatActivityEnterView.this.currentAccount).toggleStickerSet(ChatActivityEnterView.this.parentActivity, tLRPC$StickerSetCovered, 0, ChatActivityEnterView.this.parentFragment, false, false);
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onStickersGroupClick(long j) {
            if (ChatActivityEnterView.this.parentFragment != null) {
                if (AndroidUtilities.isTablet()) {
                    ChatActivityEnterView.this.hidePopup(false);
                }
                GroupStickersActivity groupStickersActivity = new GroupStickersActivity(j);
                groupStickersActivity.setInfo(ChatActivityEnterView.this.info);
                ChatActivityEnterView.this.parentFragment.presentFragment(groupStickersActivity);
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void onSearchOpenClose(int i) {
            ChatActivityEnterView.this.setSearchingTypeInternal(i, true);
            if (i != 0) {
                ChatActivityEnterView.this.setStickersExpanded(true, true, false, i == 1);
            }
            if (ChatActivityEnterView.this.emojiTabOpen && ChatActivityEnterView.this.searchingType == 2) {
                ChatActivityEnterView.this.checkStickresExpandHeight();
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean isSearchOpened() {
            return ChatActivityEnterView.this.searchingType != 0;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean isExpanded() {
            return ChatActivityEnterView.this.stickersExpanded;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean canSchedule() {
            return ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.canScheduleMessage();
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public boolean isInScheduleMode() {
            return ChatActivityEnterView.this.parentFragment != null && ChatActivityEnterView.this.parentFragment.isInScheduleMode();
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public long getDialogId() {
            return ChatActivityEnterView.this.dialog_id;
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public int getThreadId() {
            return ChatActivityEnterView.this.getThreadMessageId();
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void showTrendingStickersAlert(TrendingStickersLayout trendingStickersLayout) {
            BaseFragment baseFragment = ChatActivityEnterView.this.parentFragment;
            if (baseFragment == null) {
                baseFragment = LaunchActivity.getLastFragment();
            }
            if (baseFragment != null) {
                ChatActivityEnterView.this.trendingStickersAlert = new TrendingStickersAlert(ChatActivityEnterView.this.getContext(), baseFragment, trendingStickersLayout, ChatActivityEnterView.this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatActivityEnterView.68.2
                    {
                        C463268.this = this;
                    }

                    @Override // org.telegram.p043ui.Components.TrendingStickersAlert, org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
                    public void dismiss() {
                        super.dismiss();
                        if (ChatActivityEnterView.this.trendingStickersAlert == this) {
                            ChatActivityEnterView.this.trendingStickersAlert = null;
                        }
                        if (ChatActivityEnterView.this.delegate != null) {
                            ChatActivityEnterView.this.delegate.onTrendingStickersShowed(false);
                        }
                    }
                };
                if (ChatActivityEnterView.this.delegate != null) {
                    ChatActivityEnterView.this.delegate.onTrendingStickersShowed(true);
                }
                baseFragment.showDialog(ChatActivityEnterView.this.trendingStickersAlert);
            }
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public void invalidateEnterView() {
            ChatActivityEnterView.this.invalidate();
        }

        @Override // org.telegram.p043ui.Components.EmojiView.EmojiViewDelegate
        public float getProgressToSearchOpened() {
            return ChatActivityEnterView.this.searchToOpenProgress;
        }
    }

    @Override // org.telegram.p043ui.Components.StickersAlert.StickersAlertDelegate
    /* renamed from: onStickerSelected */
    public void lambda$onStickerSelected$63(final TLRPC$Document tLRPC$Document, final String str, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final boolean z2, final int i, final String str2) {
        ChatActivity chatActivity;
        ChatActivity.ReplyQuote replyQuote = this.replyingQuote;
        if (replyQuote != null && (chatActivity = this.parentFragment) != null && replyQuote.outdated) {
            chatActivity.showQuoteMessageUpdate();
        } else if ((isInScheduleMode() && i == 0) || (isTemplatesChannel(true, true) && str2 == null)) {
            AlertsCreator.createScheduleDatePickerDialog(this.parentActivity, this.parentFragment.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda73
                @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public final void didSelectDate(boolean z3, int i2, String str3) {
                    ChatActivityEnterView.this.lambda$onStickerSelected$63(tLRPC$Document, str, obj, sendAnimationData, z, z3, i2, str3);
                }

                @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                public /* synthetic */ ArrayList getSelectedDialogs() {
                    return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                }
            }, this.resourcesProvider, this.parentFragment);
        } else {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$onStickerSelected$64(tLRPC$Document, str, sendAnimationData, z2, i, obj, str2, z);
                }
            };
            if (showConfirmAlert(runnable)) {
                return;
            }
            runnable.run();
        }
    }

    public /* synthetic */ void lambda$onStickerSelected$64(TLRPC$Document tLRPC$Document, String str, MessageObject.SendAnimationData sendAnimationData, boolean z, int i, Object obj, String str2, boolean z2) {
        if (this.slowModeTimer > 0 && !isInScheduleMode()) {
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                SimpleTextView simpleTextView = this.slowModeButton;
                chatActivityEnterViewDelegate.onUpdateSlowModeButton(simpleTextView, true, simpleTextView.getText());
                return;
            }
            return;
        }
        if (this.searchingType != 0) {
            setSearchingTypeInternal(0, true);
            this.emojiView.closeSearch(true);
            this.emojiView.hideSearchKeyboard();
        }
        setStickersExpanded(false, true, false);
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
        SendMessagesHelper.getInstance(this.currentAccount).sendSticker(tLRPC$Document, str, this.dialog_id, this.replyingMessageObject, getThreadMessage(), chatActivityEnterViewDelegate2 != null ? chatActivityEnterViewDelegate2.getReplyToStory() : null, this.replyingQuote, sendAnimationData, z, i, obj instanceof TLRPC$TL_messages_stickerSet, obj, str2);
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate3 = this.delegate;
        if (chatActivityEnterViewDelegate3 != null) {
            chatActivityEnterViewDelegate3.onMessageSend(null, true, i, str2);
        }
        if (z2) {
            setFieldText("");
        }
        MediaDataController.getInstance(this.currentAccount).addRecentSticker(0, obj, tLRPC$Document, (int) (System.currentTimeMillis() / 1000), false);
    }

    @Override // org.telegram.p043ui.Components.StickersAlert.StickersAlertDelegate
    public boolean canSchedule() {
        ChatActivity chatActivity = this.parentFragment;
        return chatActivity != null && chatActivity.canScheduleMessage();
    }

    @Override // org.telegram.p043ui.Components.StickersAlert.StickersAlertDelegate
    public boolean isInScheduleMode() {
        ChatActivity chatActivity = this.parentFragment;
        return chatActivity != null && chatActivity.isInScheduleMode();
    }

    public void addStickerToRecent(TLRPC$Document tLRPC$Document) {
        createEmojiView();
        this.emojiView.addRecentSticker(tLRPC$Document);
    }

    public void showEmojiView() {
        showPopup(1, 0);
    }

    public void showPopup(int i, int i2) {
        showPopup(i, i2, true);
    }

    public void showPopup(final int i, int i2, boolean z) {
        boolean z2;
        FormattingMessagesKeyboardContainer formattingMessagesKeyboardContainer;
        int i3;
        EmojiView emojiView;
        int i4;
        int i5;
        if (i == 2) {
            return;
        }
        ViewGroup viewGroup = null;
        if (i == 1) {
            if (i2 == 0) {
                if (this.parentActivity == null && this.emojiView == null) {
                    return;
                }
                createEmojiView();
            }
            if (i2 == 2) {
                EmojiView emojiView2 = this.emojiView;
                if (emojiView2 == null || emojiView2.getVisibility() == 8) {
                    i4 = 0;
                } else {
                    this.sizeNotifierLayout.removeView(this.emojiView);
                    this.emojiView.setVisibility(8);
                    this.emojiView.setShowing(false);
                    this.emojiViewVisible = false;
                    i4 = this.emojiView.getMeasuredHeight();
                }
                this.formattingMessagesKeyboardContainer.setVisibility(0);
                this.isFormattingMessagesContainerVisible = true;
                viewGroup = this.formattingMessagesKeyboardContainer;
                this.animatingContentType = 2;
            } else if (i2 == 0) {
                attachEmojiView();
                if (this.emojiViewVisible) {
                    this.emojiView.getVisibility();
                }
                this.emojiView.setVisibility(0);
                this.emojiViewVisible = true;
                BotKeyboardView botKeyboardView = this.botKeyboardView;
                if (botKeyboardView == null || botKeyboardView.getVisibility() == 8) {
                    i4 = 0;
                } else {
                    this.botKeyboardView.setVisibility(8);
                    this.botKeyboardViewVisible = false;
                    i4 = this.botKeyboardView.getMeasuredHeight();
                }
                this.emojiView.setShowing(true);
                viewGroup = this.emojiView;
                this.animatingContentType = 0;
            } else if (i2 == 1) {
                if (this.botKeyboardViewVisible) {
                    this.botKeyboardView.getVisibility();
                }
                this.botKeyboardViewVisible = true;
                EmojiView emojiView3 = this.emojiView;
                if (emojiView3 == null || emojiView3.getVisibility() == 8) {
                    i5 = 0;
                } else {
                    this.sizeNotifierLayout.removeView(this.emojiView);
                    this.emojiView.setVisibility(8);
                    this.emojiView.setShowing(false);
                    this.emojiViewVisible = false;
                    i5 = this.emojiView.getMeasuredHeight();
                }
                this.botKeyboardView.setVisibility(0);
                ViewGroup viewGroup2 = this.botKeyboardView;
                this.animatingContentType = 1;
                MessagesController.getMainSettings(this.currentAccount).edit().remove("closed_botkeyboard_" + getTopicKeyString()).apply();
                i4 = i5;
                viewGroup = viewGroup2;
            } else {
                i4 = 0;
            }
            this.currentPopupContentType = i2;
            if (this.keyboardHeight <= 0) {
                this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.m104dp(200));
            }
            if (this.keyboardHeightLand <= 0) {
                this.keyboardHeightLand = MessagesController.getGlobalEmojiSettings().getInt("kbd_height_land3", AndroidUtilities.m104dp(200));
            }
            Point point = AndroidUtilities.displaySize;
            int i6 = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
            if (i2 == 1) {
                i6 = Math.min(this.botKeyboardView.getKeyboardHeight(), i6);
            }
            if (i2 == 2) {
                i6 = AndroidUtilities.m104dp(280);
            }
            if (viewGroup != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
                layoutParams.height = i6;
                viewGroup.setLayoutParams(layoutParams);
            }
            if (!AndroidUtilities.isInMultiwindow) {
                AndroidUtilities.hideKeyboard(this.messageEditText);
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
            if (sizeNotifierFrameLayout != null) {
                this.emojiPadding = i6;
                sizeNotifierFrameLayout.requestLayout();
                setEmojiButtonImage(true, true);
                updateBotButton(true);
                onWindowSizeChanged();
                if (this.smoothKeyboard && !this.keyboardVisible && i6 != i4 && z) {
                    final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda55
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatActivityEnterView.this.lambda$showPopup$65();
                        }
                    };
                    if (this.overrideKeyboardAnimation) {
                        this.animationEndRunnable = runnable;
                    } else {
                        this.panelAnimation = new AnimatorSet();
                        float f = i6 - i4;
                        viewGroup.setTranslationY(f);
                        this.panelAnimation.playTogether(ObjectAnimator.ofFloat(viewGroup, View.TRANSLATION_Y, f, BitmapDescriptorFactory.HUE_RED));
                        this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                        this.panelAnimation.setDuration(250L);
                        this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.70
                            {
                                ChatActivityEnterView.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ChatActivityEnterView.this.panelAnimation = null;
                                ChatActivityEnterView.this.notificationsLocker.unlock();
                                runnable.run();
                            }
                        });
                        AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                        this.notificationsLocker.lock();
                    }
                    requestLayout();
                }
            }
            z2 = true;
        } else {
            if (this.emojiButton != null) {
                setEmojiButtonImage(false, true);
            }
            this.currentPopupContentType = -1;
            EmojiView emojiView4 = this.emojiView;
            if (emojiView4 != null) {
                if (i != 2 || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                    if (this.smoothKeyboard && !this.keyboardVisible && !this.stickersExpanded) {
                        this.emojiViewVisible = true;
                        this.animatingContentType = 0;
                        emojiView4.setShowing(false);
                        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda64
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatActivityEnterView.this.lambda$showPopup$66(i);
                            }
                        };
                        if (!this.overrideKeyboardAnimation) {
                            AnimatorSet animatorSet = new AnimatorSet();
                            this.panelAnimation = animatorSet;
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this.emojiView, View.TRANSLATION_Y, emojiView.getMeasuredHeight()));
                            this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                            this.panelAnimation.setDuration(250L);
                            this.notificationsLocker.lock();
                            this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.71
                                {
                                    ChatActivityEnterView.this = this;
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    runnable2.run();
                                    ChatActivityEnterView.this.notificationsLocker.unlock();
                                }
                            });
                        } else {
                            this.animationEndRunnable = runnable2;
                        }
                        AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                        requestLayout();
                    } else {
                        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                        if (chatActivityEnterViewDelegate != null) {
                            chatActivityEnterViewDelegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                        }
                        this.emojiPadding = 0;
                        this.sizeNotifierLayout.removeView(this.emojiView);
                        this.emojiView.setVisibility(8);
                        this.emojiView.setShowing(false);
                    }
                } else {
                    this.removeEmojiViewAfterAnimation = false;
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate2 = this.delegate;
                    if (chatActivityEnterViewDelegate2 != null) {
                        chatActivityEnterViewDelegate2.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                    }
                    this.sizeNotifierLayout.removeView(this.emojiView);
                    this.emojiView = null;
                }
                this.emojiViewVisible = false;
            }
            BotKeyboardView botKeyboardView2 = this.botKeyboardView;
            if (botKeyboardView2 != null && botKeyboardView2.getVisibility() == 0) {
                if (i != 2 || AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow) {
                    if (this.smoothKeyboard && !this.keyboardVisible) {
                        if (this.botKeyboardViewVisible) {
                            i3 = 1;
                            this.animatingContentType = 1;
                        } else {
                            i3 = 1;
                        }
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        this.panelAnimation = animatorSet2;
                        Animator[] animatorArr = new Animator[i3];
                        BotKeyboardView botKeyboardView3 = this.botKeyboardView;
                        Property property = View.TRANSLATION_Y;
                        float[] fArr = new float[i3];
                        fArr[0] = botKeyboardView3.getMeasuredHeight();
                        animatorArr[0] = ObjectAnimator.ofFloat(botKeyboardView3, property, fArr);
                        animatorSet2.playTogether(animatorArr);
                        this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                        this.panelAnimation.setDuration(250L);
                        this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.72
                            {
                                ChatActivityEnterView.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (i == 0) {
                                    ChatActivityEnterView.this.emojiPadding = 0;
                                }
                                ChatActivityEnterView.this.panelAnimation = null;
                                ChatActivityEnterView.this.botKeyboardView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                                ChatActivityEnterView.this.botKeyboardView.setVisibility(8);
                                ChatActivityEnterView.this.notificationsLocker.unlock();
                                if (ChatActivityEnterView.this.delegate != null) {
                                    ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                                }
                                ChatActivityEnterView.this.requestLayout();
                            }
                        });
                        this.notificationsLocker.lock();
                        AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                        requestLayout();
                    } else if (!this.waitingForKeyboardOpen) {
                        this.botKeyboardView.setVisibility(8);
                    }
                }
                this.botKeyboardViewVisible = false;
            }
            if (i2 == 1 && this.botButtonsMessageObject != null) {
                MessagesController.getMainSettings(this.currentAccount).edit().putInt("closed_botkeyboard_" + getTopicKeyString(), this.botButtonsMessageObject.getId()).apply();
            }
            FormattingMessagesKeyboardContainer formattingMessagesKeyboardContainer2 = this.formattingMessagesKeyboardContainer;
            if (formattingMessagesKeyboardContainer2 != null && formattingMessagesKeyboardContainer2.getVisibility() == 0) {
                if (this.smoothKeyboard && !this.keyboardVisible) {
                    if (this.isFormattingMessagesContainerVisible) {
                        this.animatingContentType = 2;
                    }
                    AnimatorSet animatorSet3 = new AnimatorSet();
                    this.panelAnimation = animatorSet3;
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this.formattingMessagesKeyboardContainer, View.TRANSLATION_Y, formattingMessagesKeyboardContainer.getMeasuredHeight()));
                    this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                    this.panelAnimation.setDuration(250L);
                    this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.73
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (i == 0) {
                                ChatActivityEnterView.this.emojiPadding = 0;
                            }
                            ChatActivityEnterView.this.panelAnimation = null;
                            ChatActivityEnterView.this.formattingMessagesKeyboardContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            ChatActivityEnterView.this.formattingMessagesKeyboardContainer.setVisibility(8);
                            ChatActivityEnterView.this.notificationsLocker.unlock();
                            if (ChatActivityEnterView.this.delegate != null) {
                                ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                            }
                            ChatActivityEnterView.this.requestLayout();
                        }
                    });
                    this.notificationsLocker.lock();
                    this.panelAnimation.start();
                    requestLayout();
                } else {
                    this.formattingMessagesKeyboardContainer.setVisibility(8);
                }
                AndroidUtilities.showKeyboard(this.messageEditText);
                if (getSelectionLength() == 0) {
                    setShowFormattingButton(false);
                }
                this.isFormattingMessagesContainerVisible = false;
            }
            z2 = true;
            updateBotButton(true);
        }
        if (this.stickersTabOpen || this.emojiTabOpen) {
            checkSendButton(z2);
        }
        if (this.stickersExpanded && i != z2) {
            setStickersExpanded(false, false, false);
        }
        updateFieldHint(false);
        checkBotMenu();
        updateFormattingButton();
    }

    public /* synthetic */ void lambda$showPopup$65() {
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
        }
        requestLayout();
    }

    public /* synthetic */ void lambda$showPopup$66(int i) {
        if (i == 0) {
            this.emojiPadding = 0;
        }
        this.panelAnimation = null;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.emojiView.setVisibility(8);
            this.sizeNotifierLayout.removeView(this.emojiView);
            if (this.removeEmojiViewAfterAnimation) {
                this.removeEmojiViewAfterAnimation = false;
                this.emojiView = null;
            }
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
        }
        requestLayout();
    }

    private void attachEmojiView() {
        if (this.emojiView.getParent() == null) {
            int childCount = this.sizeNotifierLayout.getChildCount() - 5;
            if (!this.shouldDrawBackground) {
                childCount = this.sizeNotifierLayout.getChildCount();
            }
            this.sizeNotifierLayout.addView(this.emojiView, childCount);
        }
    }

    private String getTopicKeyString() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null && chatActivity.isTopic) {
            return this.dialog_id + "_" + this.parentFragment.getTopicId();
        }
        return "" + this.dialog_id;
    }

    public void setEmojiButtonImage(boolean z, boolean z2) {
        int currentPage;
        ChatActivityEnterViewAnimatedIconView.State state;
        ChatActivityEnterViewAnimatedIconView.State state2;
        FrameLayout frameLayout;
        if (this.emojiButton == null) {
            return;
        }
        if (this.recordInterfaceState == 1 || ((frameLayout = this.recordedAudioPanel) != null && frameLayout.getVisibility() == 0)) {
            this.emojiButtonScale = BitmapDescriptorFactory.HUE_RED;
            this.emojiButtonAlpha = BitmapDescriptorFactory.HUE_RED;
            updateEmojiButtonParams();
            z2 = false;
        }
        if (z && this.currentPopupContentType == 0) {
            if (!this.sendPlainEnabled) {
                return;
            }
            state = ChatActivityEnterViewAnimatedIconView.State.KEYBOARD;
        } else {
            EmojiView emojiView = this.emojiView;
            if (emojiView == null) {
                currentPage = MessagesController.getGlobalEmojiSettings().getInt("selected_page", 0);
            } else {
                currentPage = emojiView.getCurrentPage();
            }
            if (currentPage == 0 || (!this.allowStickers && !this.allowGifs)) {
                state = ChatActivityEnterViewAnimatedIconView.State.SMILE;
            } else {
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null && !TextUtils.isEmpty(editTextCaption.getText())) {
                    state = ChatActivityEnterViewAnimatedIconView.State.SMILE;
                } else if (currentPage == 1) {
                    state = ChatActivityEnterViewAnimatedIconView.State.STICKER;
                } else {
                    state = ChatActivityEnterViewAnimatedIconView.State.GIF;
                }
            }
        }
        if (!this.sendPlainEnabled && state == ChatActivityEnterViewAnimatedIconView.State.SMILE) {
            state = ChatActivityEnterViewAnimatedIconView.State.GIF;
        } else if (!this.stickersEnabled && state != (state2 = ChatActivityEnterViewAnimatedIconView.State.SMILE)) {
            state = state2;
        }
        this.emojiButton.setState(state, z2);
        onEmojiIconChanged(state);
    }

    protected void onEmojiIconChanged(ChatActivityEnterViewAnimatedIconView.State state) {
        if (state == ChatActivityEnterViewAnimatedIconView.State.GIF && this.emojiView == null) {
            MediaDataController.getInstance(this.currentAccount).loadRecents(0, true, true, false);
            ArrayList<String> arrayList = MessagesController.getInstance(this.currentAccount).gifSearchEmojies;
            int min = Math.min(10, arrayList.size());
            for (int i = 0; i < min; i++) {
                Emoji.preloadEmoji(arrayList.get(i));
            }
        }
    }

    public boolean hidePopup(boolean z) {
        return hidePopup(z, false);
    }

    public boolean hidePopup(boolean z, boolean z2) {
        TLRPC$TL_replyKeyboardMarkup tLRPC$TL_replyKeyboardMarkup;
        if (isPopupShowing()) {
            if (this.currentPopupContentType == 1 && (tLRPC$TL_replyKeyboardMarkup = this.botReplyMarkup) != null && z && this.botButtonsMessageObject != null) {
                if (tLRPC$TL_replyKeyboardMarkup.is_persistent) {
                    return false;
                }
                SharedPreferences.Editor edit = MessagesController.getMainSettings(this.currentAccount).edit();
                edit.putInt("closed_botkeyboard_" + getTopicKeyString(), this.botButtonsMessageObject.getId()).apply();
            }
            if ((z && this.searchingType != 0) || z2) {
                setSearchingTypeInternal(0, true);
                EmojiView emojiView = this.emojiView;
                if (emojiView != null) {
                    emojiView.closeSearch(true);
                }
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null) {
                    editTextCaption.requestFocus();
                }
                setStickersExpanded(false, true, false);
                if (this.emojiTabOpen) {
                    checkSendButton(true);
                }
            } else if (this.searchingType != 0) {
                setSearchingTypeInternal(0, false);
                if (!this.isFormattingMessagesContainerVisible) {
                    this.emojiView.closeSearch(false);
                }
                EditTextCaption editTextCaption2 = this.messageEditText;
                if (editTextCaption2 != null) {
                    editTextCaption2.requestFocus();
                }
            } else if (this.stickersExpanded) {
                setStickersExpanded(false, true, false);
            } else {
                showPopup(0, 0);
            }
            return true;
        }
        return false;
    }

    public void setSearchingTypeInternal(int i, boolean z) {
        final boolean z2 = i != 0;
        if (z2 != (this.searchingType != 0)) {
            ValueAnimator valueAnimator = this.searchAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.searchAnimator.cancel();
            }
            if (!z) {
                this.searchToOpenProgress = z2 ? 1.0f : 0.0f;
                EmojiView emojiView = this.emojiView;
                if (emojiView != null) {
                    emojiView.searchProgressChanged();
                }
            } else {
                float[] fArr = new float[2];
                fArr[0] = this.searchToOpenProgress;
                fArr[1] = z2 ? 1.0f : 0.0f;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                this.searchAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ChatActivityEnterView.this.lambda$setSearchingTypeInternal$67(valueAnimator2);
                    }
                });
                this.searchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.74
                    {
                        ChatActivityEnterView.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ChatActivityEnterView.this.searchToOpenProgress = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                        if (ChatActivityEnterView.this.emojiView != null) {
                            ChatActivityEnterView.this.emojiView.searchProgressChanged();
                        }
                    }
                });
                this.searchAnimator.setDuration(220L);
                this.searchAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.searchAnimator.start();
            }
        }
        this.searchingType = i;
    }

    public /* synthetic */ void lambda$setSearchingTypeInternal$67(ValueAnimator valueAnimator) {
        this.searchToOpenProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.searchProgressChanged();
        }
    }

    public void openKeyboardInternal() {
        ChatActivity chatActivity;
        if (hasBotWebView() && botCommandsMenuIsShowing()) {
            return;
        }
        showPopup((AndroidUtilities.usingHardwareInput || AndroidUtilities.isInMultiwindow || ((chatActivity = this.parentFragment) != null && chatActivity.isInBubbleMode()) || this.isPaused) ? 0 : 2, 0);
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onKeyboardRequested();
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.requestFocus();
        }
        AndroidUtilities.showKeyboard(this.messageEditText);
        if (this.isPaused) {
            this.showKeyboardOnResume = true;
        } else if (AndroidUtilities.usingHardwareInput || this.keyboardVisible || AndroidUtilities.isInMultiwindow) {
        } else {
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 == null || !chatActivity2.isInBubbleMode()) {
                this.waitingForKeyboardOpen = true;
                EmojiView emojiView = this.emojiView;
                if (emojiView != null) {
                    emojiView.onTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                }
                AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
                AndroidUtilities.runOnUIThread(this.openKeyboardRunnable, 100L);
            }
        }
    }

    public boolean isEditingMessage() {
        return this.editingMessageObject != null;
    }

    public MessageObject getEditingMessageObject() {
        return this.editingMessageObject;
    }

    public boolean isEditingCaption() {
        return this.editingCaption;
    }

    public boolean hasAudioToSend() {
        return (this.audioToSendMessageObject == null && this.videoToSendMessageObject == null) ? false : true;
    }

    public void openKeyboard() {
        if (hasBotWebView() && botCommandsMenuIsShowing()) {
            return;
        }
        ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.onKeyboardRequested();
        }
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption == null || AndroidUtilities.showKeyboard(editTextCaption)) {
            return;
        }
        this.messageEditText.clearFocus();
        this.messageEditText.requestFocus();
    }

    public void closeKeyboard() {
        AndroidUtilities.hideKeyboard(this.messageEditText);
    }

    public boolean isPopupShowing() {
        return this.isFormattingMessagesContainerVisible || this.emojiViewVisible || this.botKeyboardViewVisible;
    }

    public boolean closeCreationLinkDialog() {
        EditTextCaption editTextCaption = this.messageEditText;
        return editTextCaption != null && editTextCaption.closeCreationLinkDialog();
    }

    public boolean isKeyboardVisible() {
        return this.keyboardVisible;
    }

    public boolean isWaitingForKeyboard() {
        return this.waitingForKeyboardOpen;
    }

    public void addRecentGif(TLRPC$Document tLRPC$Document) {
        MediaDataController.getInstance(this.currentAccount).addRecentGif(tLRPC$Document, (int) (System.currentTimeMillis() / 1000), true);
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.addRecentGif(tLRPC$Document);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 && this.stickersExpanded) {
            setSearchingTypeInternal(0, false);
            this.emojiView.closeSearch(false);
            setStickersExpanded(false, false, false);
        }
        VideoTimelineView videoTimelineView = this.videoTimelineView;
        if (videoTimelineView != null) {
            videoTimelineView.clearFrames();
        }
    }

    public boolean isStickersExpanded() {
        return this.stickersExpanded;
    }

    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
    public void onSizeChanged(int i, boolean z) {
        MessageObject messageObject;
        EditTextCaption editTextCaption;
        TLRPC$TL_replyKeyboardMarkup tLRPC$TL_replyKeyboardMarkup;
        boolean z2;
        if (this.searchingType != 0) {
            this.lastSizeChangeValue1 = i;
            this.lastSizeChangeValue2 = z;
            this.keyboardVisible = i > 0;
            checkBotMenu();
            return;
        }
        if (i > AndroidUtilities.m104dp(50) && this.keyboardVisible && !AndroidUtilities.isInMultiwindow) {
            if (z) {
                this.keyboardHeightLand = i;
                MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height_land3", this.keyboardHeightLand).commit();
            } else {
                this.keyboardHeight = i;
                MessagesController.getGlobalEmojiSettings().edit().putInt("kbd_height", this.keyboardHeight).commit();
            }
        }
        if (this.keyboardVisible && this.emojiViewVisible && this.emojiView == null) {
            this.emojiViewVisible = false;
        }
        if (isPopupShowing()) {
            int i2 = z ? this.keyboardHeightLand : this.keyboardHeight;
            if (this.currentPopupContentType == 1 && !this.botKeyboardView.isFullSize()) {
                i2 = Math.min(this.botKeyboardView.getKeyboardHeight(), i2);
            }
            if (this.currentPopupContentType == 2) {
                i2 = AndroidUtilities.m104dp(280);
            }
            View view = null;
            int i3 = this.currentPopupContentType;
            if (i3 == 2) {
                view = this.formattingMessagesKeyboardContainer;
            } else if (i3 == 0) {
                view = this.emojiView;
            } else if (i3 == 1) {
                view = this.botKeyboardView;
            }
            BotKeyboardView botKeyboardView = this.botKeyboardView;
            if (botKeyboardView != null) {
                botKeyboardView.setPanelHeight(i2);
            }
            if (view != null) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                if (!this.closeAnimationInProgress) {
                    int i4 = layoutParams.width;
                    int i5 = AndroidUtilities.displaySize.x;
                    if ((i4 != i5 || layoutParams.height != i2) && !this.stickersExpanded) {
                        layoutParams.width = i5;
                        layoutParams.height = i2;
                        view.setLayoutParams(layoutParams);
                        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierLayout;
                        if (sizeNotifierFrameLayout != null) {
                            int i6 = this.emojiPadding;
                            this.emojiPadding = layoutParams.height;
                            sizeNotifierFrameLayout.requestLayout();
                            onWindowSizeChanged();
                            if (this.smoothKeyboard && !this.keyboardVisible && i6 != this.emojiPadding && pannelAnimationEnabled()) {
                                AnimatorSet animatorSet = new AnimatorSet();
                                this.panelAnimation = animatorSet;
                                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, this.emojiPadding - i6, BitmapDescriptorFactory.HUE_RED));
                                this.panelAnimation.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                                this.panelAnimation.setDuration(250L);
                                this.panelAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.75
                                    {
                                        ChatActivityEnterView.this = this;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        ChatActivityEnterView.this.panelAnimation = null;
                                        if (ChatActivityEnterView.this.delegate != null) {
                                            ChatActivityEnterView.this.delegate.bottomPanelTranslationYChanged(BitmapDescriptorFactory.HUE_RED);
                                        }
                                        ChatActivityEnterView.this.requestLayout();
                                        ChatActivityEnterView.this.notificationsLocker.unlock();
                                    }
                                });
                                AndroidUtilities.runOnUIThread(this.runEmojiPanelAnimation, 50L);
                                this.notificationsLocker.lock();
                                requestLayout();
                            }
                        }
                    }
                }
            }
        }
        if (this.lastSizeChangeValue1 == i && this.lastSizeChangeValue2 == z) {
            onWindowSizeChanged();
            return;
        }
        this.lastSizeChangeValue1 = i;
        this.lastSizeChangeValue2 = z;
        boolean z3 = this.keyboardVisible;
        this.keyboardVisible = i > 0;
        checkBotMenu();
        if (this.keyboardVisible && isPopupShowing() && this.stickersExpansionAnim == null) {
            showPopup(0, this.currentPopupContentType);
        } else if (!this.keyboardVisible && !isPopupShowing() && (messageObject = this.botButtonsMessageObject) != null && this.replyingMessageObject != messageObject && ((!hasBotWebView() || !botCommandsMenuIsShowing()) && (((editTextCaption = this.messageEditText) == null || TextUtils.isEmpty(editTextCaption.getText())) && (tLRPC$TL_replyKeyboardMarkup = this.botReplyMarkup) != null && !tLRPC$TL_replyKeyboardMarkup.rows.isEmpty()))) {
            if (this.sizeNotifierLayout.adjustPanLayoutHelper.animationInProgress()) {
                this.sizeNotifierLayout.adjustPanLayoutHelper.stopTransition();
            } else {
                this.sizeNotifierLayout.adjustPanLayoutHelper.ignoreOnce();
            }
            showPopup(1, 1, false);
        }
        if (this.emojiPadding != 0 && !(z2 = this.keyboardVisible) && z2 != z3 && !isPopupShowing()) {
            this.emojiPadding = 0;
            this.sizeNotifierLayout.requestLayout();
        }
        if (this.keyboardVisible && this.waitingForKeyboardOpen) {
            this.waitingForKeyboardOpen = false;
            if (this.clearBotButtonsOnKeyboardOpen) {
                this.clearBotButtonsOnKeyboardOpen = false;
                this.botKeyboardView.setButtons(this.botReplyMarkup);
            }
            AndroidUtilities.cancelRunOnUIThread(this.openKeyboardRunnable);
        }
        onWindowSizeChanged();
    }

    public void checkReactionsButton(boolean z) {
        AndroidUtilities.updateViewVisibilityAnimated(this.reactionsButton, z, 0.1f, true);
    }

    public int getEmojiPadding() {
        return this.emojiPadding;
    }

    public int getVisibleEmojiPadding() {
        if (this.emojiViewVisible) {
            return this.emojiPadding;
        }
        return 0;
    }

    public MessageObject getThreadMessage() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity != null) {
            return chatActivity.getThreadMessage();
        }
        return null;
    }

    public int getThreadMessageId() {
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null || chatActivity.getThreadMessage() == null) {
            return 0;
        }
        return this.parentFragment.getThreadMessage().getId();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC$ChatFull tLRPC$ChatFull;
        TLRPC$Chat chat;
        if (i == NotificationCenter.templatesDidChanged) {
            BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter = this.botCommandsAdapter;
            if (botCommandsAdapter != null) {
                botCommandsAdapter.loadTemplates();
                requestLayout();
            }
        } else if (i == NotificationCenter.emojiLoaded) {
            EmojiView emojiView = this.emojiView;
            if (emojiView != null) {
                emojiView.invalidateViews();
            }
            BotKeyboardView botKeyboardView = this.botKeyboardView;
            if (botKeyboardView != null) {
                botKeyboardView.invalidateViews();
            }
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                editTextCaption.postInvalidate();
                this.messageEditText.invalidateForce();
            }
        } else {
            if (i == NotificationCenter.recordProgressChanged) {
                if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
                    return;
                }
                if (this.recordInterfaceState != 0 && !this.wasSendTyping && !isInScheduleMode()) {
                    this.wasSendTyping = true;
                    this.accountInstance.getMessagesController().sendTyping(this.dialog_id, getThreadMessageId(), isInVideoMode() ? 7 : 1, 0);
                }
                RecordCircle recordCircle = this.recordCircle;
                if (recordCircle != null) {
                    recordCircle.setAmplitude(((Double) objArr[1]).doubleValue());
                }
            } else if (i == NotificationCenter.closeChats) {
                EditTextCaption editTextCaption2 = this.messageEditText;
                if (editTextCaption2 == null || !editTextCaption2.isFocused()) {
                    return;
                }
                AndroidUtilities.hideKeyboard(this.messageEditText);
            } else {
                int i3 = 4;
                if (i == NotificationCenter.recordStartError || i == NotificationCenter.recordStopped) {
                    if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
                        return;
                    }
                    if (this.recordingAudioVideo) {
                        this.recordingAudioVideo = false;
                        if (i == NotificationCenter.recordStopped) {
                            Integer num = (Integer) objArr[1];
                            if (num.intValue() != 4) {
                                if (isInVideoMode() && num.intValue() == 5) {
                                    i3 = 1;
                                } else if (num.intValue() == 0) {
                                    i3 = 5;
                                } else {
                                    i3 = num.intValue() == 6 ? 2 : 3;
                                }
                            }
                            if (i3 != 3) {
                                updateRecordInterface(i3);
                            }
                        } else {
                            updateRecordInterface(2);
                        }
                    }
                    if (i == NotificationCenter.recordStopped) {
                        Integer num2 = (Integer) objArr[1];
                    }
                } else if (i == NotificationCenter.recordStarted) {
                    if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
                        return;
                    }
                    boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
                    this.isInVideoMode = !booleanValue;
                    ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
                    if (chatActivityEnterViewAnimatedIconView != null) {
                        chatActivityEnterViewAnimatedIconView.setState(booleanValue ? ChatActivityEnterViewAnimatedIconView.State.VOICE : ChatActivityEnterViewAnimatedIconView.State.VIDEO, true);
                    }
                    if (!this.recordingAudioVideo) {
                        this.recordingAudioVideo = true;
                        updateRecordInterface(0);
                    } else {
                        RecordCircle recordCircle2 = this.recordCircle;
                        if (recordCircle2 != null) {
                            recordCircle2.showWaves(true, true);
                        }
                    }
                    TimerView timerView = this.recordTimerView;
                    if (timerView != null) {
                        timerView.start();
                    }
                    RecordDot recordDot = this.recordDot;
                    if (recordDot != null) {
                        recordDot.enterAnimation = false;
                    }
                } else if (i == NotificationCenter.audioDidSent) {
                    if (((Integer) objArr[0]).intValue() != this.recordingGuid) {
                        return;
                    }
                    Object obj = objArr[1];
                    if (obj instanceof VideoEditedInfo) {
                        this.videoToSendMessageObject = (VideoEditedInfo) obj;
                        String str = (String) objArr[2];
                        this.audioToSendPath = str;
                        ArrayList<Bitmap> arrayList = (ArrayList) objArr[3];
                        VideoTimelineView videoTimelineView = this.videoTimelineView;
                        if (videoTimelineView != null) {
                            videoTimelineView.setVideoPath(str);
                            this.videoTimelineView.setKeyframes(arrayList);
                            this.videoTimelineView.setVisibility(0);
                            this.videoTimelineView.setMinProgressDiff(1000.0f / ((float) this.videoToSendMessageObject.estimatedDuration));
                        }
                        updateRecordInterface(3);
                        checkSendButton(false);
                        return;
                    }
                    TLRPC$TL_document tLRPC$TL_document = (TLRPC$TL_document) objArr[1];
                    this.audioToSend = tLRPC$TL_document;
                    this.audioToSendPath = (String) objArr[2];
                    if (tLRPC$TL_document != null) {
                        createRecordAudioPanel();
                        if (this.recordedAudioPanel == null) {
                            return;
                        }
                        TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
                        tLRPC$TL_message.out = true;
                        tLRPC$TL_message.f1626id = 0;
                        tLRPC$TL_message.peer_id = new TLRPC$TL_peerUser();
                        TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                        tLRPC$TL_message.from_id = tLRPC$TL_peerUser;
                        TLRPC$Peer tLRPC$Peer = tLRPC$TL_message.peer_id;
                        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                        tLRPC$TL_peerUser.user_id = clientUserId;
                        tLRPC$Peer.user_id = clientUserId;
                        tLRPC$TL_message.date = (int) (System.currentTimeMillis() / 1000);
                        tLRPC$TL_message.message = "";
                        tLRPC$TL_message.attachPath = this.audioToSendPath;
                        TLRPC$TL_messageMediaDocument tLRPC$TL_messageMediaDocument = new TLRPC$TL_messageMediaDocument();
                        tLRPC$TL_message.media = tLRPC$TL_messageMediaDocument;
                        tLRPC$TL_messageMediaDocument.flags |= 3;
                        tLRPC$TL_messageMediaDocument.document = this.audioToSend;
                        tLRPC$TL_message.flags |= 768;
                        this.audioToSendMessageObject = new MessageObject(UserConfig.selectedAccount, tLRPC$TL_message, false, true);
                        this.recordedAudioPanel.setAlpha(1.0f);
                        this.recordedAudioPanel.setVisibility(0);
                        this.recordDeleteImageView.setVisibility(0);
                        this.recordDeleteImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        this.recordDeleteImageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
                        this.recordDeleteImageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        double d = 0.0d;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= this.audioToSend.attributes.size()) {
                                break;
                            }
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute = this.audioToSend.attributes.get(i4);
                            if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                                d = tLRPC$DocumentAttribute.duration;
                                break;
                            }
                            i4++;
                        }
                        int i5 = 0;
                        while (true) {
                            if (i5 >= this.audioToSend.attributes.size()) {
                                break;
                            }
                            TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = this.audioToSend.attributes.get(i5);
                            if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeAudio) {
                                byte[] bArr = tLRPC$DocumentAttribute2.waveform;
                                if (bArr == null || bArr.length == 0) {
                                    tLRPC$DocumentAttribute2.waveform = MediaController.getWaveform(this.audioToSendPath);
                                }
                                this.recordedAudioSeekBar.setWaveform(tLRPC$DocumentAttribute2.waveform);
                            } else {
                                i5++;
                            }
                        }
                        this.recordedAudioTimeTextView.setText(AndroidUtilities.formatShortDuration((int) d));
                        checkSendButton(false);
                        updateRecordInterface(3);
                        return;
                    }
                    ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
                    if (chatActivityEnterViewDelegate != null) {
                        chatActivityEnterViewDelegate.onMessageSend(null, true, 0, null);
                    }
                } else if (i == NotificationCenter.audioRouteChanged) {
                    if (this.parentActivity != null) {
                        this.parentActivity.setVolumeControlStream(((Boolean) objArr[0]).booleanValue() ? 0 : Integer.MIN_VALUE);
                    }
                } else if (i == NotificationCenter.messagePlayingDidReset) {
                    if (this.audioToSendMessageObject == null || MediaController.getInstance().isPlayingMessage(this.audioToSendMessageObject)) {
                        return;
                    }
                    MediaActionDrawable mediaActionDrawable = this.playPauseDrawable;
                    if (mediaActionDrawable != null) {
                        mediaActionDrawable.setIcon(0, true);
                    }
                    ImageView imageView = this.recordedAudioPlayButton;
                    if (imageView != null) {
                        imageView.setContentDescription(LocaleController.getString("AccActionPlay", C3632R.string.AccActionPlay));
                    }
                    SeekBarWaveformView seekBarWaveformView = this.recordedAudioSeekBar;
                    if (seekBarWaveformView != null) {
                        seekBarWaveformView.setProgress(BitmapDescriptorFactory.HUE_RED);
                    }
                } else if (i == NotificationCenter.messagePlayingProgressDidChanged) {
                    Integer num3 = (Integer) objArr[0];
                    if (this.audioToSendMessageObject == null || !MediaController.getInstance().isPlayingMessage(this.audioToSendMessageObject)) {
                        return;
                    }
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    MessageObject messageObject = this.audioToSendMessageObject;
                    messageObject.audioProgress = playingMessageObject.audioProgress;
                    messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                    if (this.recordedAudioSeekBar.isDragging()) {
                        return;
                    }
                    this.recordedAudioSeekBar.setProgress(this.audioToSendMessageObject.audioProgress);
                } else if (i == NotificationCenter.featuredStickersDidLoad) {
                    ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView2 = this.emojiButton;
                    if (chatActivityEnterViewAnimatedIconView2 != null) {
                        chatActivityEnterViewAnimatedIconView2.invalidate();
                    }
                } else if (i == NotificationCenter.messageReceivedByServer) {
                    if (((Boolean) objArr[6]).booleanValue() || ((Long) objArr[3]).longValue() != this.dialog_id || (tLRPC$ChatFull = this.info) == null || tLRPC$ChatFull.slowmode_seconds == 0 || (chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(this.info.f1603id))) == null || ChatObject.hasAdminRights(chat)) {
                        return;
                    }
                    TLRPC$ChatFull tLRPC$ChatFull2 = this.info;
                    int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    TLRPC$ChatFull tLRPC$ChatFull3 = this.info;
                    tLRPC$ChatFull2.slowmode_next_send_date = currentTime + tLRPC$ChatFull3.slowmode_seconds;
                    tLRPC$ChatFull3.flags |= 262144;
                    setSlowModeTimer(tLRPC$ChatFull3.slowmode_next_send_date);
                } else if (i == NotificationCenter.sendingMessagesChanged) {
                    if (this.info != null) {
                        updateSlowModeText();
                    }
                } else if (i == NotificationCenter.audioRecordTooShort) {
                    updateRecordInterface(4);
                } else if (i == NotificationCenter.updateBotMenuButton) {
                    long longValue = ((Long) objArr[0]).longValue();
                    TLRPC$BotMenuButton tLRPC$BotMenuButton = (TLRPC$BotMenuButton) objArr[1];
                    if (longValue == this.dialog_id) {
                        if (tLRPC$BotMenuButton instanceof TLRPC$TL_botMenuButton) {
                            TLRPC$TL_botMenuButton tLRPC$TL_botMenuButton = (TLRPC$TL_botMenuButton) tLRPC$BotMenuButton;
                            this.botMenuWebViewTitle = tLRPC$TL_botMenuButton.text;
                            this.botMenuWebViewUrl = tLRPC$TL_botMenuButton.url;
                            this.botMenuButtonType = BotMenuButtonType.WEB_VIEW;
                        } else if (this.hasBotCommands) {
                            this.botMenuButtonType = BotMenuButtonType.COMMANDS;
                        } else {
                            this.botMenuButtonType = BotMenuButtonType.NO_BUTTON;
                        }
                        updateBotButton(false);
                    }
                } else if (i == NotificationCenter.didUpdatePremiumGiftFieldIcon) {
                    updateGiftButton(true);
                }
            }
        }
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (i != 2 || this.pendingLocationButton == null) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            SendMessagesHelper.getInstance(this.currentAccount).sendCurrentLocation(this.pendingMessageObject, this.pendingLocationButton);
        }
        this.pendingLocationButton = null;
        this.pendingMessageObject = null;
    }

    public void checkStickresExpandHeight() {
        if (this.emojiView == null) {
            return;
        }
        Point point = AndroidUtilities.displaySize;
        int i = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
        int currentActionBarHeight = (((this.originalViewHeight - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - C3704ActionBar.getCurrentActionBarHeight()) - getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
        if (this.searchingType == 2) {
            currentActionBarHeight = Math.min(currentActionBarHeight, AndroidUtilities.m104dp(120) + i);
        }
        int i2 = this.emojiView.getLayoutParams().height;
        if (i2 == currentActionBarHeight) {
            return;
        }
        Animator animator = this.stickersExpansionAnim;
        if (animator != null) {
            animator.cancel();
            this.stickersExpansionAnim = null;
        }
        this.stickersExpandedHeight = currentActionBarHeight;
        if (i2 > currentActionBarHeight) {
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActivityEnterView.this.lambda$checkStickresExpandHeight$68();
                }
            };
            this.emojiView.setLayerType(2, null);
            if (this.overrideKeyboardAnimation) {
                this.animationEndRunnable = runnable;
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)));
            ((ObjectAnimator) animatorSet.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatActivityEnterView.this.lambda$checkStickresExpandHeight$69(valueAnimator);
                }
            });
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.76
                {
                    ChatActivityEnterView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    ChatActivityEnterView.this.stickersExpansionAnim = null;
                    runnable.run();
                }
            });
            this.stickersExpansionAnim = animatorSet;
            animatorSet.start();
            return;
        }
        this.emojiView.getLayoutParams().height = this.stickersExpandedHeight;
        this.sizeNotifierLayout.requestLayout();
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            int selectionStart = editTextCaption.getSelectionStart();
            int selectionEnd = this.messageEditText.getSelectionEnd();
            EditTextCaption editTextCaption2 = this.messageEditText;
            editTextCaption2.setText(editTextCaption2.getText());
            this.messageEditText.setSelection(selectionStart, selectionEnd);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)));
        ((ObjectAnimator) animatorSet2.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatActivityEnterView.this.lambda$checkStickresExpandHeight$70(valueAnimator);
            }
        });
        animatorSet2.setDuration(300L);
        animatorSet2.setInterpolator(CubicBezierInterpolator.DEFAULT);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.77
            {
                ChatActivityEnterView.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                ChatActivityEnterView.this.stickersExpansionAnim = null;
                ChatActivityEnterView.this.emojiView.setLayerType(0, null);
            }
        });
        this.stickersExpansionAnim = animatorSet2;
        this.emojiView.setLayerType(2, null);
        animatorSet2.start();
    }

    public /* synthetic */ void lambda$checkStickresExpandHeight$68() {
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.getLayoutParams().height = this.stickersExpandedHeight;
            this.emojiView.setLayerType(0, null);
        }
    }

    public /* synthetic */ void lambda$checkStickresExpandHeight$69(ValueAnimator valueAnimator) {
        this.sizeNotifierLayout.invalidate();
    }

    public /* synthetic */ void lambda$checkStickresExpandHeight$70(ValueAnimator valueAnimator) {
        this.sizeNotifierLayout.invalidate();
    }

    public void setStickersExpanded(boolean z, boolean z2, boolean z3) {
        setStickersExpanded(z, z2, z3, true);
    }

    public void setStickersExpanded(boolean z, boolean z2, boolean z3, boolean z4) {
        AdjustPanLayoutHelper adjustPanLayoutHelper = this.adjustPanLayoutHelper;
        if ((adjustPanLayoutHelper != null && adjustPanLayoutHelper.animationInProgress()) || this.waitingForKeyboardOpenAfterAnimation || this.emojiView == null) {
            return;
        }
        if (z3 || this.stickersExpanded != z) {
            this.stickersExpanded = z;
            ChatActivityEnterViewDelegate chatActivityEnterViewDelegate = this.delegate;
            if (chatActivityEnterViewDelegate != null) {
                chatActivityEnterViewDelegate.onStickersExpandedChange();
            }
            Point point = AndroidUtilities.displaySize;
            final int i = point.x > point.y ? this.keyboardHeightLand : this.keyboardHeight;
            Animator animator = this.stickersExpansionAnim;
            if (animator != null) {
                animator.cancel();
                this.stickersExpansionAnim = null;
            }
            if (this.stickersExpanded) {
                if (z4) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 1);
                }
                int height = this.sizeNotifierLayout.getHeight();
                this.originalViewHeight = height;
                int currentActionBarHeight = (((height - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)) - C3704ActionBar.getCurrentActionBarHeight()) - getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                this.stickersExpandedHeight = currentActionBarHeight;
                if (this.searchingType == 2) {
                    this.stickersExpandedHeight = Math.min(currentActionBarHeight, AndroidUtilities.m104dp(120) + i);
                }
                this.emojiView.getLayoutParams().height = this.stickersExpandedHeight;
                this.sizeNotifierLayout.requestLayout();
                if (this.shouldDrawBackground) {
                    this.sizeNotifierLayout.setForeground(new ScrimDrawable());
                }
                EditTextCaption editTextCaption = this.messageEditText;
                if (editTextCaption != null) {
                    int selectionStart = editTextCaption.getSelectionStart();
                    int selectionEnd = this.messageEditText.getSelectionEnd();
                    EditTextCaption editTextCaption2 = this.messageEditText;
                    editTextCaption2.setText(editTextCaption2.getText());
                    this.messageEditText.setSelection(selectionStart, selectionEnd);
                }
                if (z2) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, -(this.stickersExpandedHeight - i)), ObjectAnimator.ofFloat(this.stickersArrow, "animationProgress", 1.0f));
                    animatorSet.setDuration(300L);
                    animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    ((ObjectAnimator) animatorSet.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda7
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ChatActivityEnterView.this.lambda$setStickersExpanded$71(i, valueAnimator);
                        }
                    });
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.78
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            ChatActivityEnterView.this.stickersExpansionAnim = null;
                            ChatActivityEnterView.this.emojiView.setLayerType(0, null);
                            ChatActivityEnterView.this.notificationsLocker.unlock();
                        }
                    });
                    this.stickersExpansionAnim = animatorSet;
                    this.emojiView.setLayerType(2, null);
                    this.notificationsLocker.lock();
                    this.stickersExpansionProgress = BitmapDescriptorFactory.HUE_RED;
                    this.sizeNotifierLayout.invalidate();
                    animatorSet.start();
                } else {
                    this.stickersExpansionProgress = 1.0f;
                    setTranslationY(-(this.stickersExpandedHeight - i));
                    this.emojiView.setTranslationY(-(this.stickersExpandedHeight - i));
                    this.stickersArrow.setAnimationProgress(1.0f);
                }
            } else {
                if (z4) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 1);
                }
                if (z2) {
                    this.closeAnimationInProgress = true;
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    animatorSet2.playTogether(ObjectAnimator.ofInt(this, (Property<ChatActivityEnterView, Integer>) this.roundedTranslationYProperty, 0), ObjectAnimator.ofInt(this.emojiView, (Property<EmojiView, Integer>) this.roundedTranslationYProperty, 0), ObjectAnimator.ofFloat(this.stickersArrow, "animationProgress", BitmapDescriptorFactory.HUE_RED));
                    animatorSet2.setDuration(300L);
                    animatorSet2.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    ((ObjectAnimator) animatorSet2.getChildAnimations().get(0)).addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatActivityEnterView$$ExternalSyntheticLambda6
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ChatActivityEnterView.this.lambda$setStickersExpanded$72(i, valueAnimator);
                        }
                    });
                    animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityEnterView.79
                        {
                            ChatActivityEnterView.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            ChatActivityEnterView.this.closeAnimationInProgress = false;
                            ChatActivityEnterView.this.stickersExpansionAnim = null;
                            if (ChatActivityEnterView.this.emojiView != null) {
                                ChatActivityEnterView.this.emojiView.getLayoutParams().height = i;
                                ChatActivityEnterView.this.emojiView.setLayerType(0, null);
                            }
                            if (ChatActivityEnterView.this.sizeNotifierLayout != null) {
                                ChatActivityEnterView.this.sizeNotifierLayout.requestLayout();
                                ChatActivityEnterView.this.sizeNotifierLayout.setForeground(null);
                                ChatActivityEnterView.this.sizeNotifierLayout.setWillNotDraw(false);
                            }
                            if (ChatActivityEnterView.this.keyboardVisible && ChatActivityEnterView.this.isPopupShowing()) {
                                ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
                                chatActivityEnterView.showPopup(0, chatActivityEnterView.currentPopupContentType);
                            }
                            if (ChatActivityEnterView.this.onEmojiSearchClosed != null) {
                                ChatActivityEnterView.this.onEmojiSearchClosed.run();
                                ChatActivityEnterView.this.onEmojiSearchClosed = null;
                            }
                            ChatActivityEnterView.this.notificationsLocker.unlock();
                        }
                    });
                    this.stickersExpansionProgress = 1.0f;
                    this.sizeNotifierLayout.invalidate();
                    this.stickersExpansionAnim = animatorSet2;
                    this.emojiView.setLayerType(2, null);
                    this.notificationsLocker.lock();
                    animatorSet2.start();
                } else {
                    this.stickersExpansionProgress = BitmapDescriptorFactory.HUE_RED;
                    setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    this.emojiView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    this.emojiView.getLayoutParams().height = i;
                    this.sizeNotifierLayout.requestLayout();
                    this.sizeNotifierLayout.setForeground(null);
                    this.sizeNotifierLayout.setWillNotDraw(false);
                    AnimatedArrowDrawable animatedArrowDrawable = this.stickersArrow;
                    if (animatedArrowDrawable != null) {
                        animatedArrowDrawable.setAnimationProgress(BitmapDescriptorFactory.HUE_RED);
                    }
                }
            }
            ImageView imageView = this.expandStickersButton;
            if (imageView != null) {
                if (this.stickersExpanded) {
                    imageView.setContentDescription(LocaleController.getString("AccDescrCollapsePanel", C3632R.string.AccDescrCollapsePanel));
                } else {
                    imageView.setContentDescription(LocaleController.getString("AccDescrExpandPanel", C3632R.string.AccDescrExpandPanel));
                }
            }
        }
    }

    public /* synthetic */ void lambda$setStickersExpanded$71(int i, ValueAnimator valueAnimator) {
        this.stickersExpansionProgress = Math.abs(getTranslationY() / (-(this.stickersExpandedHeight - i)));
        this.sizeNotifierLayout.invalidate();
    }

    public /* synthetic */ void lambda$setStickersExpanded$72(int i, ValueAnimator valueAnimator) {
        this.stickersExpansionProgress = getTranslationY() / (-(this.stickersExpandedHeight - i));
        this.sizeNotifierLayout.invalidate();
    }

    public boolean swipeToBackEnabled() {
        FrameLayout frameLayout;
        if (this.recordingAudioVideo) {
            return false;
        }
        if (isInVideoMode() && (frameLayout = this.recordedAudioPanel) != null && frameLayout.getVisibility() == 0) {
            return false;
        }
        return (hasBotWebView() && this.botCommandsMenuButton.isOpened()) ? false : true;
    }

    public int getHeightWithTopView() {
        int measuredHeight = getMeasuredHeight();
        View view = this.topView;
        return (view == null || view.getVisibility() != 0) ? measuredHeight : (int) (measuredHeight - ((1.0f - this.topViewEnterProgress) * this.topView.getLayoutParams().height));
    }

    public void setAdjustPanLayoutHelper(AdjustPanLayoutHelper adjustPanLayoutHelper) {
        this.adjustPanLayoutHelper = adjustPanLayoutHelper;
    }

    public AdjustPanLayoutHelper getAdjustPanLayoutHelper() {
        return this.adjustPanLayoutHelper;
    }

    public boolean panelAnimationInProgress() {
        return this.panelAnimation != null;
    }

    public float getTopViewTranslation() {
        View view = this.topView;
        return (view == null || view.getVisibility() == 8) ? BitmapDescriptorFactory.HUE_RED : this.topView.getTranslationY();
    }

    public int getAnimatedTop() {
        return this.animatedTop;
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$ScrimDrawable */
    /* loaded from: classes6.dex */
    public class ScrimDrawable extends Drawable {
        private Paint paint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public ScrimDrawable() {
            ChatActivityEnterView.this = r2;
            Paint paint = new Paint();
            this.paint = paint;
            paint.setColor(0);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (ChatActivityEnterView.this.emojiView == null) {
                return;
            }
            this.paint.setAlpha(Math.round(ChatActivityEnterView.this.stickersExpansionProgress * 102.0f));
            float width = ChatActivityEnterView.this.getWidth();
            float y = (ChatActivityEnterView.this.emojiView.getY() - ChatActivityEnterView.this.getHeight()) + Theme.chat_composeShadowDrawable.getIntrinsicHeight();
            EditTextCaption editTextCaption = ChatActivityEnterView.this.messageEditText;
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, y + (editTextCaption == null ? BitmapDescriptorFactory.HUE_RED : editTextCaption.getOffsetY()), this.paint);
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$SlideTextView */
    /* loaded from: classes6.dex */
    public class SlideTextView extends View {
        Paint arrowPaint;
        Path arrowPath;
        TextPaint bluePaint;
        float cancelAlpha;
        int cancelCharOffset;
        StaticLayout cancelLayout;
        public Rect cancelRect;
        String cancelString;
        float cancelToProgress;
        float cancelWidth;
        TextPaint grayPaint;
        private int lastSize;
        long lastUpdateTime;
        boolean moveForward;
        private boolean pressed;
        Drawable selectableBackground;
        float slideProgress;
        float slideToAlpha;
        String slideToCancelString;
        float slideToCancelWidth;
        StaticLayout slideToLayout;
        boolean smallSize;
        float xOffset;

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                setPressed(false);
            }
            if (this.cancelToProgress == BitmapDescriptorFactory.HUE_RED || !isEnabled()) {
                return false;
            }
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                boolean contains = this.cancelRect.contains(x, y);
                this.pressed = contains;
                if (contains) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.selectableBackground.setHotspot(x, y);
                    }
                    setPressed(true);
                }
                return this.pressed;
            }
            boolean z = this.pressed;
            if (z) {
                if (motionEvent.getAction() == 2 && !this.cancelRect.contains(x, y)) {
                    setPressed(false);
                    return false;
                }
                if (motionEvent.getAction() == 1 && this.cancelRect.contains(x, y)) {
                    onCancelButtonPressed();
                }
                return true;
            }
            return z;
        }

        public void onCancelButtonPressed() {
            if (!ChatActivityEnterView.this.hasRecordVideo || !ChatActivityEnterView.this.isInVideoMode()) {
                ChatActivityEnterView.this.delegate.needStartRecordAudio(0);
                MediaController.getInstance().stopRecording(0, false, 0, null);
            } else {
                CameraController.getInstance().cancelOnInitRunnable(ChatActivityEnterView.this.onFinishInitCameraRunnable);
                ChatActivityEnterView.this.delegate.needStartRecordVideo(5, true, 0);
            }
            ChatActivityEnterView.this.recordingAudioVideo = false;
            ChatActivityEnterView.this.updateRecordInterface(2);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SlideTextView(Context context) {
            super(context);
            ChatActivityEnterView.this = r5;
            this.arrowPaint = new Paint(1);
            this.xOffset = BitmapDescriptorFactory.HUE_RED;
            this.arrowPath = new Path();
            this.cancelRect = new Rect();
            this.smallSize = AndroidUtilities.displaySize.x <= AndroidUtilities.m104dp(320);
            TextPaint textPaint = new TextPaint(1);
            this.grayPaint = textPaint;
            textPaint.setTextSize(AndroidUtilities.m104dp(this.smallSize ? 13 : 15));
            TextPaint textPaint2 = new TextPaint(1);
            this.bluePaint = textPaint2;
            textPaint2.setTextSize(AndroidUtilities.m104dp(15));
            this.bluePaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.arrowPaint.setColor(r5.getThemedColor(Theme.key_chat_messagePanelIcons));
            this.arrowPaint.setStyle(Paint.Style.STROKE);
            this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(this.smallSize ? 1.0f : 1.6f));
            this.arrowPaint.setStrokeCap(Paint.Cap.ROUND);
            this.arrowPaint.setStrokeJoin(Paint.Join.ROUND);
            this.slideToCancelString = LocaleController.getString("SlideToCancel", C3632R.string.SlideToCancel);
            this.slideToCancelString = this.slideToCancelString.charAt(0) + this.slideToCancelString.substring(1).toLowerCase();
            String upperCase = LocaleController.getString("Cancel", C3632R.string.Cancel).toUpperCase();
            this.cancelString = upperCase;
            this.cancelCharOffset = this.slideToCancelString.indexOf(upperCase);
            updateColors();
        }

        public void updateColors() {
            this.grayPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            TextPaint textPaint = this.bluePaint;
            ChatActivityEnterView chatActivityEnterView = ChatActivityEnterView.this;
            int i = Theme.key_chat_recordVoiceCancel;
            textPaint.setColor(chatActivityEnterView.getThemedColor(i));
            this.slideToAlpha = this.grayPaint.getAlpha();
            this.cancelAlpha = this.bluePaint.getAlpha();
            Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m104dp(60), 0, ColorUtils.setAlphaComponent(ChatActivityEnterView.this.getThemedColor(i), 26));
            this.selectableBackground = createSimpleSelectorCircleDrawable;
            createSimpleSelectorCircleDrawable.setCallback(this);
        }

        @Override // android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            this.selectableBackground.setState(getDrawableState());
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            return this.selectableBackground == drawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        public void jumpDrawablesToCurrentState() {
            super.jumpDrawablesToCurrentState();
            Drawable drawable = this.selectableBackground;
            if (drawable != null) {
                drawable.jumpToCurrentState();
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
            if (this.lastSize != measuredHeight) {
                this.lastSize = measuredHeight;
                this.slideToCancelWidth = this.grayPaint.measureText(this.slideToCancelString);
                this.cancelWidth = this.bluePaint.measureText(this.cancelString);
                this.lastUpdateTime = System.currentTimeMillis();
                int measuredHeight2 = getMeasuredHeight() >> 1;
                this.arrowPath.reset();
                if (this.smallSize) {
                    float f = measuredHeight2;
                    this.arrowPath.setLastPoint(AndroidUtilities.dpf2(2.5f), f - AndroidUtilities.dpf2(3.12f));
                    this.arrowPath.lineTo(BitmapDescriptorFactory.HUE_RED, f);
                    this.arrowPath.lineTo(AndroidUtilities.dpf2(2.5f), f + AndroidUtilities.dpf2(3.12f));
                } else {
                    float f2 = measuredHeight2;
                    this.arrowPath.setLastPoint(AndroidUtilities.dpf2(4.0f), f2 - AndroidUtilities.dpf2(5.0f));
                    this.arrowPath.lineTo(BitmapDescriptorFactory.HUE_RED, f2);
                    this.arrowPath.lineTo(AndroidUtilities.dpf2(4.0f), f2 + AndroidUtilities.dpf2(5.0f));
                }
                this.slideToLayout = new StaticLayout(this.slideToCancelString, this.grayPaint, (int) this.slideToCancelWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.cancelLayout = new StaticLayout(this.cancelString, this.bluePaint, (int) this.cancelWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            StaticLayout staticLayout;
            if (this.slideToLayout == null || (staticLayout = this.cancelLayout) == null) {
                return;
            }
            int width = staticLayout.getWidth() + AndroidUtilities.m104dp(16);
            this.grayPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            this.grayPaint.setAlpha((int) (this.slideToAlpha * (1.0f - this.cancelToProgress) * this.slideProgress));
            this.bluePaint.setAlpha((int) (this.cancelAlpha * this.cancelToProgress));
            this.arrowPaint.setColor(this.grayPaint.getColor());
            if (this.smallSize) {
                this.xOffset = AndroidUtilities.m104dp(16);
            } else {
                long currentTimeMillis = System.currentTimeMillis() - this.lastUpdateTime;
                this.lastUpdateTime = System.currentTimeMillis();
                if (this.cancelToProgress == BitmapDescriptorFactory.HUE_RED && this.slideProgress > 0.8f) {
                    if (this.moveForward) {
                        float m104dp = this.xOffset + ((AndroidUtilities.m104dp(3) / 250.0f) * ((float) currentTimeMillis));
                        this.xOffset = m104dp;
                        if (m104dp > AndroidUtilities.m104dp(6)) {
                            this.xOffset = AndroidUtilities.m104dp(6);
                            this.moveForward = false;
                        }
                    } else {
                        float m104dp2 = this.xOffset - ((AndroidUtilities.m104dp(3) / 250.0f) * ((float) currentTimeMillis));
                        this.xOffset = m104dp2;
                        if (m104dp2 < (-AndroidUtilities.m104dp(6))) {
                            this.xOffset = -AndroidUtilities.m104dp(6);
                            this.moveForward = true;
                        }
                    }
                }
            }
            boolean z = this.cancelCharOffset >= 0;
            int measuredWidth = ((int) ((getMeasuredWidth() - this.slideToCancelWidth) / 2.0f)) + AndroidUtilities.m104dp(5);
            int measuredWidth2 = (int) ((getMeasuredWidth() - this.cancelWidth) / 2.0f);
            float primaryHorizontal = z ? this.slideToLayout.getPrimaryHorizontal(this.cancelCharOffset) : 0.0f;
            float f = z ? (measuredWidth + primaryHorizontal) - measuredWidth2 : 0.0f;
            float f2 = this.xOffset;
            float f3 = this.cancelToProgress;
            float m104dp3 = ((measuredWidth + ((f2 * (1.0f - f3)) * this.slideProgress)) - (f * f3)) + AndroidUtilities.m104dp(16);
            float m104dp4 = z ? 0.0f : this.cancelToProgress * AndroidUtilities.m104dp(12);
            if (this.cancelToProgress != 1.0f) {
                int translationX = (int) ((((-getMeasuredWidth()) / 4) * (1.0f - this.slideProgress)) + (ChatActivityEnterView.this.recordCircle.getTranslationX() * 0.3f));
                canvas.save();
                canvas.clipRect((ChatActivityEnterView.this.recordTimerView == null ? 0.0f : ChatActivityEnterView.this.recordTimerView.getLeftProperty()) + AndroidUtilities.m104dp(4), BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                canvas.save();
                int i = (int) m104dp3;
                canvas.translate((i - AndroidUtilities.m104dp(this.smallSize ? 7 : 10)) + translationX, m104dp4);
                canvas.drawPath(this.arrowPath, this.arrowPaint);
                canvas.restore();
                canvas.save();
                canvas.translate(i + translationX, ((getMeasuredHeight() - this.slideToLayout.getHeight()) / 2.0f) + m104dp4);
                this.slideToLayout.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
            float measuredHeight = (getMeasuredHeight() - this.cancelLayout.getHeight()) / 2.0f;
            if (!z) {
                measuredHeight -= AndroidUtilities.m104dp(12) - m104dp4;
            }
            float f4 = z ? m104dp3 + primaryHorizontal : measuredWidth2;
            this.cancelRect.set((int) f4, (int) measuredHeight, (int) (this.cancelLayout.getWidth() + f4), (int) (this.cancelLayout.getHeight() + measuredHeight));
            this.cancelRect.inset(-AndroidUtilities.m104dp(16), -AndroidUtilities.m104dp(16));
            if (this.cancelToProgress > BitmapDescriptorFactory.HUE_RED) {
                this.selectableBackground.setBounds((getMeasuredWidth() / 2) - width, (getMeasuredHeight() / 2) - width, (getMeasuredWidth() / 2) + width, (getMeasuredHeight() / 2) + width);
                this.selectableBackground.draw(canvas);
                canvas.save();
                canvas.translate(f4, measuredHeight);
                this.cancelLayout.draw(canvas);
                canvas.restore();
            } else {
                setPressed(false);
            }
            if (this.cancelToProgress != 1.0f) {
                invalidate();
            }
        }

        @Keep
        public void setCancelToProgress(float f) {
            this.cancelToProgress = f;
        }

        @Keep
        public float getSlideToCancelWidth() {
            return this.slideToCancelWidth;
        }

        public void setSlideX(float f) {
            this.slideProgress = f;
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatActivityEnterView$TimerView */
    /* loaded from: classes6.dex */
    public class TimerView extends View {
        StaticLayout inLayout;
        boolean isRunning;
        long lastSendTypingTime;
        float left;
        String oldString;
        StaticLayout outLayout;
        final float replaceDistance;
        SpannableStringBuilder replaceIn;
        SpannableStringBuilder replaceOut;
        SpannableStringBuilder replaceStable;
        float replaceTransition;
        long startTime;
        long stopTime;
        boolean stoppedInternal;
        TextPaint textPaint;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TimerView(Context context) {
            super(context);
            ChatActivityEnterView.this = r1;
            this.replaceIn = new SpannableStringBuilder();
            this.replaceOut = new SpannableStringBuilder();
            this.replaceStable = new SpannableStringBuilder();
            this.replaceDistance = AndroidUtilities.m104dp(15);
        }

        public void start() {
            this.isRunning = true;
            long currentTimeMillis = System.currentTimeMillis();
            this.startTime = currentTimeMillis;
            this.lastSendTypingTime = currentTimeMillis;
            invalidate();
        }

        public void stop() {
            if (this.isRunning) {
                this.isRunning = false;
                if (this.startTime > 0) {
                    this.stopTime = System.currentTimeMillis();
                }
                invalidate();
            }
            this.lastSendTypingTime = 0L;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            SpannableStringBuilder spannableStringBuilder;
            String str;
            if (this.textPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                this.textPaint = textPaint;
                textPaint.setTextSize(AndroidUtilities.m104dp(15));
                this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.textPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            }
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.isRunning ? currentTimeMillis - this.startTime : this.stopTime - this.startTime;
            long j2 = j / 1000;
            int i = ((int) (j % 1000)) / 10;
            if (ChatActivityEnterView.this.isInVideoMode() && j >= 59500 && !this.stoppedInternal) {
                ChatActivityEnterView.this.startedDraggingX = -1.0f;
                ChatActivityEnterView.this.delegate.needStartRecordVideo(3, true, 0);
                this.stoppedInternal = true;
            }
            if (this.isRunning && currentTimeMillis > this.lastSendTypingTime + 5000) {
                this.lastSendTypingTime = currentTimeMillis;
                MessagesController.getInstance(ChatActivityEnterView.this.currentAccount).sendTyping(ChatActivityEnterView.this.dialog_id, ChatActivityEnterView.this.getThreadMessageId(), ChatActivityEnterView.this.isInVideoMode() ? 7 : 1, 0);
            }
            String formatTimerDurationFast = AndroidUtilities.formatTimerDurationFast((int) j2, i);
            if (formatTimerDurationFast.length() >= 3 && (str = this.oldString) != null && str.length() >= 3 && formatTimerDurationFast.length() == this.oldString.length() && formatTimerDurationFast.charAt(formatTimerDurationFast.length() - 3) != this.oldString.charAt(formatTimerDurationFast.length() - 3)) {
                int length = formatTimerDurationFast.length();
                this.replaceIn.clear();
                this.replaceOut.clear();
                this.replaceStable.clear();
                this.replaceIn.append((CharSequence) formatTimerDurationFast);
                this.replaceOut.append((CharSequence) this.oldString);
                this.replaceStable.append((CharSequence) formatTimerDurationFast);
                int i2 = -1;
                int i3 = -1;
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < length - 1; i6++) {
                    if (this.oldString.charAt(i6) != formatTimerDurationFast.charAt(i6)) {
                        if (i5 == 0) {
                            i3 = i6;
                        }
                        i5++;
                        if (i4 != 0) {
                            EmptyStubSpan emptyStubSpan = new EmptyStubSpan();
                            if (i6 == length - 2) {
                                i4++;
                            }
                            int i7 = i4 + i2;
                            this.replaceIn.setSpan(emptyStubSpan, i2, i7, 33);
                            this.replaceOut.setSpan(emptyStubSpan, i2, i7, 33);
                            i4 = 0;
                        }
                    } else {
                        if (i4 == 0) {
                            i2 = i6;
                        }
                        i4++;
                        if (i5 != 0) {
                            this.replaceStable.setSpan(new EmptyStubSpan(), i3, i5 + i3, 33);
                            i5 = 0;
                        }
                    }
                }
                if (i4 != 0) {
                    EmptyStubSpan emptyStubSpan2 = new EmptyStubSpan();
                    int i8 = i4 + i2 + 1;
                    this.replaceIn.setSpan(emptyStubSpan2, i2, i8, 33);
                    this.replaceOut.setSpan(emptyStubSpan2, i2, i8, 33);
                }
                if (i5 != 0) {
                    this.replaceStable.setSpan(new EmptyStubSpan(), i3, i5 + i3, 33);
                }
                this.inLayout = new StaticLayout(this.replaceIn, this.textPaint, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.outLayout = new StaticLayout(this.replaceOut, this.textPaint, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.replaceTransition = 1.0f;
            } else {
                if (this.replaceStable == null) {
                    this.replaceStable = new SpannableStringBuilder(formatTimerDurationFast);
                }
                if (this.replaceStable.length() == 0 || this.replaceStable.length() != formatTimerDurationFast.length()) {
                    this.replaceStable.clear();
                    this.replaceStable.append((CharSequence) formatTimerDurationFast);
                } else {
                    this.replaceStable.replace(spannableStringBuilder.length() - 1, this.replaceStable.length(), (CharSequence) formatTimerDurationFast, (formatTimerDurationFast.length() - 1) - (formatTimerDurationFast.length() - this.replaceStable.length()), formatTimerDurationFast.length());
                }
            }
            float f = this.replaceTransition;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                float f2 = f - 0.15f;
                this.replaceTransition = f2;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    this.replaceTransition = BitmapDescriptorFactory.HUE_RED;
                }
            }
            float measuredHeight = getMeasuredHeight() / 2;
            if (this.replaceTransition == BitmapDescriptorFactory.HUE_RED) {
                this.replaceStable.clearSpans();
                StaticLayout staticLayout = new StaticLayout(this.replaceStable, this.textPaint, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight - (staticLayout.getHeight() / 2.0f));
                staticLayout.draw(canvas);
                canvas.restore();
                this.left = staticLayout.getLineWidth(0) + BitmapDescriptorFactory.HUE_RED;
            } else {
                if (this.inLayout != null) {
                    canvas.save();
                    this.textPaint.setAlpha((int) ((1.0f - this.replaceTransition) * 255.0f));
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (measuredHeight - (this.inLayout.getHeight() / 2.0f)) - (this.replaceDistance * this.replaceTransition));
                    this.inLayout.draw(canvas);
                    canvas.restore();
                }
                if (this.outLayout != null) {
                    canvas.save();
                    this.textPaint.setAlpha((int) (this.replaceTransition * 255.0f));
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, (measuredHeight - (this.outLayout.getHeight() / 2.0f)) + (this.replaceDistance * (1.0f - this.replaceTransition)));
                    this.outLayout.draw(canvas);
                    canvas.restore();
                }
                canvas.save();
                this.textPaint.setAlpha(255);
                StaticLayout staticLayout2 = new StaticLayout(this.replaceStable, this.textPaint, getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, measuredHeight - (staticLayout2.getHeight() / 2.0f));
                staticLayout2.draw(canvas);
                canvas.restore();
                this.left = staticLayout2.getLineWidth(0) + BitmapDescriptorFactory.HUE_RED;
            }
            this.oldString = formatTimerDurationFast;
            if (this.isRunning || this.replaceTransition != BitmapDescriptorFactory.HUE_RED) {
                invalidate();
            }
        }

        public void updateColors() {
            TextPaint textPaint = this.textPaint;
            if (textPaint != null) {
                textPaint.setColor(ChatActivityEnterView.this.getThemedColor(Theme.key_chat_recordTime));
            }
        }

        public float getLeftProperty() {
            return this.left;
        }

        public void reset() {
            this.isRunning = false;
            this.startTime = 0L;
            this.stopTime = 0L;
            this.stoppedInternal = false;
        }
    }

    public RecordCircle getRecordCircle() {
        return this.recordCircle;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null && botCommandsMenuView.getTag() != null) {
            this.botCommandsMenuButton.measure(i, i2);
            SenderSelectView senderSelectView = this.senderSelectView;
            if (senderSelectView != null && senderSelectView.getVisibility() == 0) {
                this.senderSelectView.measure(i, i2);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.senderSelectView.getLayoutParams();
                marginLayoutParams.leftMargin = this.initialSenderSelectViewLeftMargin + this.botCommandsMenuButton.getMeasuredWidth() + AndroidUtilities.m104dp(6);
                i3 = marginLayoutParams.width + AndroidUtilities.m104dp(6);
            } else {
                i3 = -AndroidUtilities.m104dp(3);
            }
            FrameLayout frameLayout = this.formattingButton;
            if (frameLayout != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams();
                int m104dp = AndroidUtilities.m104dp(10);
                BotCommandsMenuView botCommandsMenuView2 = this.botCommandsMenuButton;
                marginLayoutParams2.leftMargin = m104dp + (botCommandsMenuView2 == null ? 0 : botCommandsMenuView2.getMeasuredWidth() + i3);
            }
            ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.emojiButton.getLayoutParams();
            int m104dp2 = AndroidUtilities.m104dp(10);
            BotCommandsMenuView botCommandsMenuView3 = this.botCommandsMenuButton;
            marginLayoutParams3.leftMargin = m104dp2 + (botCommandsMenuView3 == null ? 0 : botCommandsMenuView3.getMeasuredWidth() + i3);
            EditTextCaption editTextCaption = this.messageEditText;
            if (editTextCaption != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) editTextCaption.getLayoutParams();
                int m104dp3 = AndroidUtilities.m104dp(57);
                BotCommandsMenuView botCommandsMenuView4 = this.botCommandsMenuButton;
                marginLayoutParams4.leftMargin = m104dp3 + (botCommandsMenuView4 == null ? 0 : botCommandsMenuView4.getMeasuredWidth() + i3);
            }
        } else {
            SenderSelectView senderSelectView2 = this.senderSelectView;
            if (senderSelectView2 != null && senderSelectView2.getVisibility() == 0) {
                int i4 = this.senderSelectView.getLayoutParams().width;
                this.senderSelectView.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(this.senderSelectView.getLayoutParams().height, 1073741824));
                ((ViewGroup.MarginLayoutParams) this.senderSelectView.getLayoutParams()).leftMargin = this.initialSenderSelectViewLeftMargin;
                FrameLayout frameLayout2 = this.formattingButton;
                if (frameLayout2 != null) {
                    ((ViewGroup.MarginLayoutParams) frameLayout2.getLayoutParams()).leftMargin = AndroidUtilities.m104dp(16) + i4;
                }
                ((ViewGroup.MarginLayoutParams) this.emojiButton.getLayoutParams()).leftMargin = AndroidUtilities.m104dp(16) + i4;
                EditTextCaption editTextCaption2 = this.messageEditText;
                if (editTextCaption2 != null) {
                    ((ViewGroup.MarginLayoutParams) editTextCaption2.getLayoutParams()).leftMargin = AndroidUtilities.m104dp(63) + i4;
                }
            } else {
                FrameLayout frameLayout3 = this.formattingButton;
                if (frameLayout3 != null) {
                    ((ViewGroup.MarginLayoutParams) frameLayout3.getLayoutParams()).leftMargin = AndroidUtilities.m104dp(3);
                }
                ((ViewGroup.MarginLayoutParams) this.emojiButton.getLayoutParams()).leftMargin = AndroidUtilities.m104dp(3);
                EditTextCaption editTextCaption3 = this.messageEditText;
                if (editTextCaption3 != null) {
                    ((ViewGroup.MarginLayoutParams) editTextCaption3.getLayoutParams()).leftMargin = AndroidUtilities.m104dp(50);
                }
            }
        }
        updateBotCommandsMenuContainerTopPadding();
        super.onMeasure(i, i2);
        ChatActivityBotWebViewButton chatActivityBotWebViewButton = this.botWebViewButton;
        if (chatActivityBotWebViewButton != null) {
            BotCommandsMenuView botCommandsMenuView5 = this.botCommandsMenuButton;
            if (botCommandsMenuView5 != null) {
                chatActivityBotWebViewButton.setMeasuredButtonWidth(botCommandsMenuView5.getMeasuredWidth());
            }
            this.botWebViewButton.getLayoutParams().height = getMeasuredHeight() - AndroidUtilities.m104dp(2);
            measureChild(this.botWebViewButton, i, i2);
        }
        BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
        if (botWebViewMenuContainer != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) botWebViewMenuContainer.getLayoutParams();
            EditTextCaption editTextCaption4 = this.messageEditText;
            marginLayoutParams5.bottomMargin = editTextCaption4 != null ? editTextCaption4.getMeasuredHeight() : 0;
            measureChild(this.botWebViewMenuContainer, i, i2);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        BotCommandsMenuContainer botCommandsMenuContainer;
        super.onLayout(z, i, i2, i3, i4);
        if (this.botCommandLastPosition == -1 || (botCommandsMenuContainer = this.botCommandsMenuContainer) == null) {
            return;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) botCommandsMenuContainer.listView.getLayoutManager();
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(this.botCommandLastPosition, this.botCommandLastTop);
        }
        this.botCommandLastPosition = -1;
    }

    private void beginDelayedTransition() {
        HashMap<View, Float> hashMap = this.animationParamsX;
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.emojiButton;
        hashMap.put(chatActivityEnterViewAnimatedIconView, Float.valueOf(chatActivityEnterViewAnimatedIconView.getX()));
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            this.animationParamsX.put(editTextCaption, Float.valueOf(editTextCaption.getX()));
        }
    }

    public void setBotInfo(LongSparseArray<TLRPC$BotInfo> longSparseArray) {
        setBotInfo(longSparseArray, true);
    }

    public void setBotInfo(LongSparseArray<TLRPC$BotInfo> longSparseArray, boolean z) {
        this.lastBotInfo = longSparseArray;
        if (longSparseArray != null && longSparseArray.size() == 1 && longSparseArray.valueAt(0).user_id == this.dialog_id) {
            TLRPC$BotInfo valueAt = longSparseArray.valueAt(0);
            TLRPC$BotMenuButton tLRPC$BotMenuButton = valueAt.menu_button;
            if (tLRPC$BotMenuButton instanceof TLRPC$TL_botMenuButton) {
                TLRPC$TL_botMenuButton tLRPC$TL_botMenuButton = (TLRPC$TL_botMenuButton) tLRPC$BotMenuButton;
                this.botMenuWebViewTitle = tLRPC$TL_botMenuButton.text;
                this.botMenuWebViewUrl = tLRPC$TL_botMenuButton.url;
                this.botMenuButtonType = BotMenuButtonType.WEB_VIEW;
            } else if (!valueAt.commands.isEmpty()) {
                this.botMenuButtonType = BotMenuButtonType.COMMANDS;
            } else {
                this.botMenuButtonType = BotMenuButtonType.NO_BUTTON;
            }
        } else if (this.parentFragment.isAllowTemplates(true) && SharedConfig.selectedTemplatesMode == TemplatesMode.OVAL) {
            this.botMenuButtonType = BotMenuButtonType.TEMPLATES;
        } else {
            this.botMenuButtonType = BotMenuButtonType.NO_BUTTON;
        }
        BotCommandsMenuView.BotCommandsAdapter botCommandsAdapter = this.botCommandsAdapter;
        if (botCommandsAdapter != null && longSparseArray != null) {
            botCommandsAdapter.setBotInfo(longSparseArray);
        }
        updateBotButton(z);
    }

    public boolean botCommandsMenuIsShowing() {
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        return botCommandsMenuView != null && botCommandsMenuView.isOpened();
    }

    public void hideBotCommands() {
        BotCommandsMenuView botCommandsMenuView = this.botCommandsMenuButton;
        if (botCommandsMenuView != null) {
            botCommandsMenuView.setOpened(false);
        }
        if (hasBotWebView()) {
            BotWebViewMenuContainer botWebViewMenuContainer = this.botWebViewMenuContainer;
            if (botWebViewMenuContainer != null) {
                botWebViewMenuContainer.dismiss();
                return;
            }
            return;
        }
        BotCommandsMenuContainer botCommandsMenuContainer = this.botCommandsMenuContainer;
        if (botCommandsMenuContainer != null) {
            botCommandsMenuContainer.dismiss();
        }
    }

    public void setTextTransitionIsRunning(boolean z) {
        this.textTransitionIsRunning = z;
        this.sendButtonContainer.invalidate();
    }

    public float getTopViewHeight() {
        View view = this.topView;
        return (view == null || view.getVisibility() != 0) ? BitmapDescriptorFactory.HUE_RED : this.topView.getLayoutParams().height;
    }

    public void runEmojiPanelAnimation() {
        AndroidUtilities.cancelRunOnUIThread(this.runEmojiPanelAnimation);
        this.runEmojiPanelAnimation.run();
    }

    public Drawable getStickersArrowDrawable() {
        return this.stickersArrow;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        EmojiView emojiView = this.emojiView;
        if (emojiView == null || emojiView.getVisibility() != 0 || this.emojiView.getStickersExpandOffset() == BitmapDescriptorFactory.HUE_RED) {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        canvas.clipRect(0, AndroidUtilities.m104dp(2), getMeasuredWidth(), getMeasuredHeight());
        canvas.translate(BitmapDescriptorFactory.HUE_RED, -this.emojiView.getStickersExpandOffset());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public void setChatSearchExpandOffset(float f) {
        this.chatSearchExpandOffset = f;
        invalidate();
    }

    public void setHorizontalPadding(float f, float f2, boolean z) {
        EditTextCaption editTextCaption;
        SeekBarWaveformView seekBarWaveformView;
        float f3 = 1.0f - f2;
        float f4 = (-f) * f3;
        float f5 = (-(AndroidUtilities.m104dp(40) + f)) * f3;
        this.emojiButtonPaddingScale = (f2 * 0.5f) + 0.5f;
        this.emojiButtonPaddingAlpha = f2;
        updateEmojiButtonParams();
        float f6 = -f4;
        this.emojiButton.setTranslationX(f6);
        this.messageTextPaddingTranslationX = f6 - (AndroidUtilities.m104dp(31) * f3);
        RLottieImageView rLottieImageView = this.recordDeleteImageView;
        if (rLottieImageView != null) {
            rLottieImageView.setTranslationX(f6);
        }
        RecordCircle recordCircle = this.recordCircle;
        if (recordCircle != null) {
            recordCircle.setTranslationX(f5);
        }
        LinearLayout linearLayout = this.recordTimeContainer;
        if (linearLayout != null) {
            linearLayout.setTranslationX(f6);
        }
        ImageView imageView = this.recordedAudioPlayButton;
        if (imageView != null) {
            imageView.setTranslationX(f6);
        }
        TextView textView = this.recordedAudioTimeTextView;
        if (textView != null) {
            textView.setTranslationX(f4);
        }
        this.sendButtonContainer.setTranslationX(f5);
        this.sendButtonContainer.setAlpha(z ? f2 : 1.0f);
        boolean z2 = true;
        if (z && f2 != 1.0f) {
            z2 = false;
        }
        this.sendButtonEnabled = z2;
        this.attachLayoutPaddingTranslationX = f5;
        this.attachLayoutPaddingAlpha = f2;
        updateAttachLayoutParams();
        updateMessageTextParams();
        float f7 = f * f3;
        if (this.horizontalPadding != f7) {
            this.horizontalPadding = f7;
            if (this.seekBarWaveform != null && (seekBarWaveformView = this.recordedAudioSeekBar) != null) {
                seekBarWaveformView.setTranslationX(f7);
                this.recordedAudioSeekBar.invalidate();
                this.seekBarWaveform.setSize((int) (this.recordedAudioSeekBar.getMeasuredWidth() - (this.horizontalPadding * 2.0f)), this.recordedAudioSeekBar.getMeasuredHeight());
            }
            View view = this.recordedAudioBackground;
            if (view != null) {
                view.invalidate();
            }
        }
        if (this.messageEditText != null) {
            float lerp = AndroidUtilities.lerp(0.88f, 1.0f, f2);
            this.messageEditText.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.messageEditText.setPivotY(editTextCaption.getMeasuredHeight() / 2.0f);
            this.messageEditText.setScaleX(lerp);
            this.messageEditText.setScaleY(lerp);
            this.messageEditText.setHintRightOffset(AndroidUtilities.lerp(AndroidUtilities.m104dp(30), 0, f2));
        }
    }

    public void updateMessageTextParams() {
        EditTextCaption editTextCaption = this.messageEditText;
        if (editTextCaption != null) {
            editTextCaption.setTranslationX(this.messageTextPaddingTranslationX + this.messageTextTranslationX);
        }
    }

    public void updateAttachLayoutParams() {
        LinearLayout linearLayout = this.attachLayout;
        if (linearLayout != null) {
            linearLayout.setTranslationX(this.attachLayoutPaddingTranslationX + this.attachLayoutTranslationX);
            this.attachLayout.setAlpha(this.attachLayoutAlpha * this.attachLayoutPaddingAlpha);
            LinearLayout linearLayout2 = this.attachLayout;
            linearLayout2.setVisibility(linearLayout2.getAlpha() > BitmapDescriptorFactory.HUE_RED ? 0 : 8);
        }
    }

    public void updateEmojiButtonParams() {
        this.emojiButton.setScaleX(this.emojiButtonPaddingScale * this.emojiButtonScale);
        this.emojiButton.setScaleY(this.emojiButtonPaddingScale * this.emojiButtonScale);
        this.emojiButton.setAlpha(this.emojiButtonPaddingAlpha * this.emojiButtonAlpha);
    }

    public void setOverrideHint(CharSequence charSequence) {
        setOverrideHint(charSequence, false);
    }

    public void setOverrideHint(CharSequence charSequence, boolean z) {
        this.overrideHint = charSequence;
        this.overrideHint2 = null;
        updateFieldHint(z);
    }

    public void setOverrideHint(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        this.overrideHint = charSequence;
        this.overrideHint2 = charSequence2;
        updateFieldHint(z);
    }

    public void setOverrideKeyboardAnimation(boolean z) {
        this.overrideKeyboardAnimation = z;
    }

    public void onOverrideAnimationEnd() {
        Runnable runnable = this.animationEndRunnable;
        if (runnable != null) {
            runnable.run();
            this.animationEndRunnable = null;
        }
    }

    public int getStickersExpandedHeight() {
        return this.stickersExpandedHeight;
    }

    public void reset() {
        setStickersExpanded(false, true, false);
        showPopup(0, 0, false);
        if (getEditField() != null && !TextUtils.isEmpty(getEditField().getText())) {
            getEditField().setText("");
        }
        this.recordingAudioVideo = false;
        ChatActivityEnterViewAnimatedIconView chatActivityEnterViewAnimatedIconView = this.audioVideoSendButton;
        if (chatActivityEnterViewAnimatedIconView != null) {
            chatActivityEnterViewAnimatedIconView.setVisibility(0);
        }
        this.recordIsCanceled = true;
        cancelRecordIntefraceInternal();
        hideRecordedAudioPanelInternal();
    }

    public void freezeEmojiView(boolean z) {
        this.emojiViewFrozen = z;
        EmojiView emojiView = this.emojiView;
        if (emojiView != null) {
            emojiView.freeze(z);
        }
    }
}
