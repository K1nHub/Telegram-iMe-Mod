package org.telegram.p042ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.Property;
import android.util.SparseArray;
import android.util.StateSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.Window;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.OvershootInterpolator;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.BackupController;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.controller.TemplatesController;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.storage.domain.model.templates.TemplateModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ChatMessageSharedResources;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
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
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.video.VideoPlayerRewinder;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.ChatMessageCell;
import org.telegram.p042ui.Cells.TextSelectionHelper;
import org.telegram.p042ui.ChatActivity;
import org.telegram.p042ui.Components.AnimatedEmojiDrawable;
import org.telegram.p042ui.Components.AnimatedEmojiSpan;
import org.telegram.p042ui.Components.AnimatedFileDrawable;
import org.telegram.p042ui.Components.AnimatedFloat;
import org.telegram.p042ui.Components.AnimatedNumberLayout;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.p042ui.Components.CheckBoxBase;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate;
import org.telegram.p042ui.Components.Forum.MessageTopicButton;
import org.telegram.p042ui.Components.InfiniteProgress;
import org.telegram.p042ui.Components.LinkPath;
import org.telegram.p042ui.Components.LinkSpanDrawable;
import org.telegram.p042ui.Components.LoadingDrawable;
import org.telegram.p042ui.Components.MessageBackgroundDrawable;
import org.telegram.p042ui.Components.MotionBackgroundDrawable;
import org.telegram.p042ui.Components.MsgClockDrawable;
import org.telegram.p042ui.Components.Point;
import org.telegram.p042ui.Components.RLottieDrawable;
import org.telegram.p042ui.Components.RadialProgress2;
import org.telegram.p042ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.Components.RoundVideoPlayingDrawable;
import org.telegram.p042ui.Components.SeekBar;
import org.telegram.p042ui.Components.SeekBarAccessibilityDelegate;
import org.telegram.p042ui.Components.SeekBarWaveform;
import org.telegram.p042ui.Components.SlotsDrawable;
import org.telegram.p042ui.Components.StaticLayoutEx;
import org.telegram.p042ui.Components.TextStyleSpan;
import org.telegram.p042ui.Components.TimerParticles;
import org.telegram.p042ui.Components.TranscribeButton;
import org.telegram.p042ui.Components.TypefaceSpan;
import org.telegram.p042ui.Components.URLSpanBrowser;
import org.telegram.p042ui.Components.URLSpanMono;
import org.telegram.p042ui.Components.URLSpanNoUnderline;
import org.telegram.p042ui.Components.VideoForwardDrawable;
import org.telegram.p042ui.Components.spoilers.SpoilerEffect;
import org.telegram.p042ui.Components.spoilers.SpoilerEffect2;
import org.telegram.p042ui.PhotoViewer;
import org.telegram.p042ui.PinchToZoomHelper;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$ChatPhoto;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$MessagePeerReaction;
import org.telegram.tgnet.TLRPC$MessageReplies;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$Poll;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$TL_documentAttributeAudio;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonBuy;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonCallback;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonGame;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRequestGeoLocation;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRequestPeer;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRow;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonSwitchInline;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUrl;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUrlAuth;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonWebView;
import org.telegram.tgnet.TLRPC$TL_messageExtendedMediaPreview;
import org.telegram.tgnet.TLRPC$TL_messageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_messageReactions;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_peerChannel;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$TL_pollAnswer;
import org.telegram.tgnet.TLRPC$TL_pollAnswerVoters;
import org.telegram.tgnet.TLRPC$TL_reactionEmoji;
import org.telegram.tgnet.TLRPC$TL_sponsoredWebPage;
import org.telegram.tgnet.TLRPC$TL_user;
import org.telegram.tgnet.TLRPC$TL_webPage;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
import org.telegram.tgnet.TLRPC$WebPage;
/* renamed from: org.telegram.ui.Cells.ChatMessageCell */
/* loaded from: classes5.dex */
public class ChatMessageCell extends BaseCell implements SeekBar.SeekBarDelegate, ImageReceiver.ImageReceiverDelegate, DownloadController.FileDownloadProgressListener, TextSelectionHelper.SelectableView, NotificationCenter.NotificationCenterDelegate {
    private static float[] radii = new float[8];
    private final boolean ALPHA_PROPERTY_WORKAROUND;
    public Property<ChatMessageCell, Float> ANIMATION_OFFSET_X;
    private int TAG;
    CharSequence accessibilityText;
    private boolean accessibilityTextContentUnread;
    private long accessibilityTextFileSize;
    private boolean accessibilityTextUnread;
    private SparseArray<Rect> accessibilityVirtualViewBounds;
    private int addedCaptionHeight;
    private boolean addedForTest;
    private boolean additionalSideButtonPressed;
    private float additionalSideButtonStartX;
    private float additionalSideButtonStartY;
    private int additionalTimeOffsetY;
    private StaticLayout adminLayout;
    public boolean albumMode;
    private boolean allowAssistant;
    private float alphaInternal;
    private int animateFromStatusDrawableParams;
    private boolean animatePollAnswer;
    private boolean animatePollAnswerAlpha;
    private boolean animatePollAvatars;
    private int animateToStatusDrawableParams;
    public AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiDescriptionStack;
    public AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiReplyStack;
    public AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private int animatingDrawVideoImageButton;
    private float animatingDrawVideoImageButtonProgress;
    private float animatingLoadingProgressProgress;
    private int animatingNoSound;
    private boolean animatingNoSoundPlaying;
    private float animatingNoSoundProgress;
    private float animationOffsetX;
    private boolean animationRunning;
    private boolean attachedToWindow;
    private StaticLayout authorLayout;
    private int authorX;
    private boolean autoPlayingMedia;
    private int availableTimeWidth;
    private AvatarDrawable avatarDrawable;
    private ImageReceiver avatarImage;
    private boolean avatarPressed;
    private Theme.MessageDrawable.PathDrawParams backgroundCacheParams;
    private MessageBackgroundDrawable backgroundDrawable;
    private int backgroundDrawableBottom;
    private int backgroundDrawableLeft;
    private int backgroundDrawableRight;
    private int backgroundDrawableTop;
    private int backgroundHeight;
    private int backgroundWidth;
    private ImageReceiver blurredPhotoImage;
    private int blurredViewBottomOffset;
    private int blurredViewTopOffset;
    private Path botButtonPath;
    private float[] botButtonRadii;
    private ArrayList<BotButton> botButtons;
    private HashMap<String, BotButton> botButtonsByData;
    private HashMap<String, BotButton> botButtonsByPosition;
    private String botButtonsLayout;
    private boolean bottomNearToSet;
    private int buttonPressed;
    private int buttonState;
    private int buttonX;
    private int buttonY;
    private final boolean canDrawBackgroundInParent;
    private boolean canStreamVideo;
    private int captionHeight;
    private StaticLayout captionLayout;
    private int captionOffsetX;
    private final AtomicReference<Layout> captionPatchedSpoilersLayout;
    private final List<SpoilerEffect> captionSpoilers;
    private final Stack<SpoilerEffect> captionSpoilersPool;
    private int captionWidth;
    private float captionX;
    private float captionY;
    private CheckBoxBase checkBox;
    private boolean checkBoxAnimationInProgress;
    private float checkBoxAnimationProgress;
    private int checkBoxTranslation;
    private boolean checkBoxVisible;
    private boolean checkOnlyButtonPressed;
    private String closeTimeText;
    private int closeTimeWidth;
    private int commentArrowX;
    private AvatarDrawable[] commentAvatarDrawables;
    private ImageReceiver[] commentAvatarImages;
    private boolean[] commentAvatarImagesVisible;
    private boolean commentButtonPressed;
    private Rect commentButtonRect;
    private boolean commentDrawUnread;
    private StaticLayout commentLayout;
    private AnimatedNumberLayout commentNumberLayout;
    private int commentNumberWidth;
    private InfiniteProgress commentProgress;
    private float commentProgressAlpha;
    private long commentProgressLastUpadteTime;
    private int commentUnreadX;
    private int commentWidth;
    private int commentX;
    private AvatarDrawable contactAvatarDrawable;
    private float controlsAlpha;
    public int currentAccount;
    private Theme.MessageDrawable currentBackgroundDrawable;
    private Theme.MessageDrawable currentBackgroundSelectedDrawable;
    private CharSequence currentCaption;
    private TLRPC$Chat currentChat;
    private int currentFocusedVirtualView;
    private TLRPC$Chat currentForwardChannel;
    private String currentForwardName;
    private String currentForwardNameString;
    private TLRPC$User currentForwardUser;
    private int currentMapProvider;
    private MessageObject currentMessageObject;
    private MessageObject.GroupedMessages currentMessagesGroup;
    private Object currentNameStatus;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable currentNameStatusDrawable;
    private String currentNameString;
    private TLRPC$FileLocation currentPhoto;
    private String currentPhotoFilter;
    private String currentPhotoFilterThumb;
    private TLRPC$PhotoSize currentPhotoObject;
    private TLRPC$PhotoSize currentPhotoObjectThumb;
    private BitmapDrawable currentPhotoObjectThumbStripped;
    private MessageObject.GroupedMessagePosition currentPosition;
    private String currentRepliesString;
    private TLRPC$PhotoSize currentReplyPhoto;
    private long currentReplyUserId;
    private float currentSelectedBackgroundAlpha;
    private CharSequence currentTimeString;
    private String currentUnlockString;
    private String currentUrl;
    private TLRPC$User currentUser;
    private TLRPC$User currentViaBotUser;
    private String currentViewsString;
    private WebFile currentWebFile;
    private ChatMessageCellDelegate delegate;
    private RectF deleteProgressRect;
    private StaticLayout descriptionLayout;
    private int descriptionX;
    private int descriptionY;
    private Runnable diceFinishCallback;
    private boolean disallowLongPress;
    private StaticLayout docTitleLayout;
    private int docTitleOffsetX;
    private int docTitleWidth;
    private TLRPC$Document documentAttach;
    private int documentAttachType;
    private boolean drawAdditionalSideButton;
    private boolean drawBackground;
    private boolean drawCommentButton;
    private boolean drawCommentNumber;
    public boolean drawForBlur;
    private boolean drawForwardedName;
    public boolean drawFromPinchToZoom;
    private boolean drawImageButton;
    private boolean drawInstantView;
    public int drawInstantViewType;
    private boolean drawMediaCheckBox;
    private boolean drawName;
    private boolean drawNameLayout;
    public boolean drawPhotoImage;
    public boolean drawPinnedBottom;
    private boolean drawPinnedTop;
    private boolean drawRadialCheckBackground;
    private boolean drawSelectionBackground;
    private int drawSideButton;
    private boolean drawTime;
    private float drawTimeX;
    private float drawTimeY;
    private boolean drawTopic;
    private boolean drawVideoImageButton;
    private boolean drawVideoSize;
    private Paint drillHolePaint;
    private Path drillHolePath;
    private StaticLayout durationLayout;
    private int durationWidth;
    private boolean edited;
    boolean enterTransitionInProgress;
    public ExpiredStoryView expiredStoryView;
    private ColorMatrixColorFilter fancyBlurFilter;
    private boolean firstCircleLength;
    private int firstVisibleBlockNum;
    private FlagSecureReason flagSecure;
    private boolean flipImage;
    private boolean forceNotDrawTime;
    private boolean forwardBotPressed;
    private int forwardHeight;
    private int forwardNameCenterX;
    private final float[] forwardNameOffsetX;
    private boolean forwardNamePressed;
    private float forwardNameX;
    private int forwardNameY;
    private final StaticLayout[] forwardedNameLayout;
    private int forwardedNameWidth;
    private boolean fullyDraw;
    private boolean gamePreviewPressed;
    private Drawable gradientDrawable;
    private LinearGradient gradientShader;
    private boolean groupPhotoInvisible;
    private MessageObject.GroupedMessages groupedMessagesToSet;
    private boolean hadLongPress;
    public boolean hasDiscussion;
    private boolean hasEmbed;
    private boolean hasGamePreview;
    private boolean hasInvoicePreview;
    private boolean hasLinkPreview;
    private int hasMiniProgress;
    private boolean hasNewLineForTime;
    private boolean hasOldCaptionPreview;
    private boolean hasPsaHint;
    private LinkPath highlightPath;
    private CharacterStyle highlightPathSpan;
    private long highlightPathStart;
    private int highlightProgress;
    private float hintButtonProgress;
    private boolean hintButtonVisible;
    private int imageBackgroundColor;
    private int imageBackgroundGradientColor1;
    private int imageBackgroundGradientColor2;
    private int imageBackgroundGradientColor3;
    private int imageBackgroundGradientRotation;
    private float imageBackgroundIntensity;
    private int imageBackgroundSideColor;
    private int imageBackgroundSideWidth;
    private boolean imageDrawn;
    private boolean imagePressed;
    boolean imageReceiversAttachState;
    boolean imageReceiversVisibleState;
    private boolean inLayout;
    private StaticLayout infoLayout;
    private int infoWidth;
    private int infoX;
    private LoadingDrawable instantButtonLoading;
    private ValueAnimator instantButtonPressAnimator;
    private float instantButtonPressProgress;
    private boolean instantButtonPressed;
    private RectF instantButtonRect;
    private Paint instantLinkArrowPaint;
    private Path instantLinkArrowPath;
    private boolean instantPressed;
    private int instantTextLeftX;
    private boolean instantTextNewLine;
    private int instantTextX;
    private StaticLayout instantViewLayout;
    private int instantWidth;
    private Runnable invalidateRunnable;
    private boolean invalidateSpoilersParent;
    private boolean invalidatesParent;
    public boolean isAvatarVisible;
    private boolean isBackupFile;
    public boolean isBlurred;
    public boolean isBot;
    private boolean isCaptionSpoilerPressed;
    public boolean isChat;
    private boolean isCheckPressed;
    public boolean isForum;
    public boolean isForumGeneral;
    private boolean isHighlighted;
    private boolean isHighlightedAnimated;
    public boolean isMegagroup;
    public boolean isPinned;
    public boolean isPinnedChat;
    private boolean isPlayingRound;
    private boolean isPressed;
    public boolean isRepliesChat;
    private boolean isRoundVideo;
    private boolean isSmallImage;
    private boolean isSpoilerRevealing;
    public boolean isTemplatesChannel;
    public boolean isThreadChat;
    private boolean isThreadPost;
    private boolean isUpdating;
    private int keyboardHeight;
    private long lastAnimationTime;
    private long lastCheckBoxAnimationTime;
    private long lastControlsAlphaChangeTime;
    private int lastDeleteDate;
    private float lastDrawingAudioProgress;
    private int lastHeight;
    private long lastHighlightProgressTime;
    private long lastLoadingSizeTotal;
    private long lastNamesAnimationTime;
    private TLRPC$Poll lastPoll;
    private long lastPollCloseTime;
    private ArrayList<TLRPC$TL_pollAnswerVoters> lastPollResults;
    private int lastPollResultsVoters;
    private String lastPostAuthor;
    private TLRPC$TL_messageReactions lastReactions;
    private int lastRepliesCount;
    private TLRPC$Message lastReplyMessage;
    private long lastSeekUpdateTime;
    private int lastSendState;
    int lastSize;
    private double lastTime;
    private float lastTouchX;
    private float lastTouchY;
    private boolean lastTranslated;
    private int lastViewsCount;
    private int lastVisibleBlockNum;
    private int lastWidth;
    private int layoutHeight;
    private int layoutWidth;
    private int linkBlockNum;
    private int linkPreviewHeight;
    private boolean linkPreviewPressed;
    private int linkSelectionBlockNum;
    public long linkedChatId;
    private LinkSpanDrawable.LinkCollector links;
    private StaticLayout loadingProgressLayout;
    private long loadingProgressLayoutHash;
    private boolean locationExpired;
    private ImageReceiver locationImageReceiver;
    private Drawable locationLoadingThumb;
    private boolean mediaBackground;
    private CheckBoxBase mediaCheckBox;
    private int mediaOffsetY;
    private SpoilerEffect mediaSpoilerEffect;
    private SpoilerEffect2 mediaSpoilerEffect2;
    private Path mediaSpoilerPath;
    private float[] mediaSpoilerRadii;
    private float mediaSpoilerRevealMaxRadius;
    private float mediaSpoilerRevealProgress;
    private float mediaSpoilerRevealX;
    private float mediaSpoilerRevealY;
    private boolean mediaWasInvisible;
    private MessageObject messageObjectToSet;
    private int miniButtonPressed;
    private int miniButtonState;
    private MotionBackgroundDrawable motionBackgroundDrawable;
    private StaticLayout nameLayout;
    private int nameLayoutWidth;
    private float nameOffsetX;
    private int nameWidth;
    private float nameX;
    private float nameY;
    private int namesOffset;
    private boolean needNewVisiblePart;
    public boolean needReplyImage;
    private int noSoundCenterX;
    private boolean otherPressed;
    private int otherX;
    private int otherY;
    private int overideShouldDrawTimeOnMedia;
    int parentBoundsBottom;
    float parentBoundsTop;
    private int parentHeight;
    public float parentViewTopOffset;
    private int parentWidth;
    private StaticLayout performerLayout;
    private int performerX;
    private ImageReceiver photoImage;
    private boolean photoImageOutOfBounds;
    private boolean photoNotSet;
    private TLObject photoParentObject;
    private StaticLayout photosCountLayout;
    private int photosCountWidth;
    public boolean pinnedBottom;
    public boolean pinnedTop;
    private float pollAnimationProgress;
    private float pollAnimationProgressTime;
    private AvatarDrawable[] pollAvatarDrawables;
    private ImageReceiver[] pollAvatarImages;
    private boolean[] pollAvatarImagesVisible;
    private ArrayList<PollButton> pollButtons;
    private CheckBoxBase[] pollCheckBox;
    private boolean pollClosed;
    private boolean pollHintPressed;
    private int pollHintX;
    private int pollHintY;
    private boolean pollInstantViewTouchesBottom;
    private boolean pollUnvoteInProgress;
    private boolean pollVoteInProgress;
    private int pollVoteInProgressNum;
    private boolean pollVoted;
    private int pressedBotButton;
    private AnimatedEmojiSpan pressedEmoji;
    private LinkSpanDrawable pressedLink;
    private int pressedLinkType;
    private int[] pressedState;
    private int pressedVoteButton;
    private CharacterStyle progressLoadingLink;
    private LoadingDrawable progressLoadingLinkCurrentDrawable;
    private ArrayList<LoadingDrawableLocation> progressLoadingLinkDrawables;
    private float psaButtonProgress;
    private boolean psaButtonVisible;
    private int psaHelpX;
    private int psaHelpY;
    private boolean psaHintPressed;
    private RadialProgress2 radialProgress;
    public final ReactionsLayoutInBubble reactionsLayoutInBubble;
    private RectF rect;
    private Path rectPath;
    private StaticLayout repliesLayout;
    private int repliesTextWidth;
    public float replyHeight;
    public ImageReceiver replyImageReceiver;
    public LoadingDrawable replyLoadingDrawable;
    private float[] replyLoadingSegment;
    private float replyLoadingT;
    public StaticLayout replyNameLayout;
    private int replyNameOffset;
    private int replyNameWidth;
    private boolean replyPanelIsForward;
    private boolean replyPressed;
    private AnimatedFloat replyPressedFloat;
    private Path replyRoundRectPath;
    private float[] replyRoundRectRadii;
    public Drawable replySelector;
    private boolean replySelectorCanBePressed;
    public int replySelectorColor;
    private boolean replySelectorPressed;
    public float replySelectorRadLeft;
    public float replySelectorRadRight;
    public Rect replySelectorRect;
    public List<SpoilerEffect> replySpoilers;
    private final Stack<SpoilerEffect> replySpoilersPool;
    public int replyStartX;
    public int replyStartY;
    public StaticLayout replyTextLayout;
    private int replyTextOffset;
    private int replyTextWidth;
    private float replyTouchX;
    private float replyTouchY;
    private Theme.ResourcesProvider resourcesProvider;
    private float roundPlayingDrawableProgress;
    private float roundProgressAlpha;
    float roundSeekbarOutAlpha;
    float roundSeekbarOutProgress;
    int roundSeekbarTouched;
    private float roundToPauseProgress;
    private float roundToPauseProgress2;
    private AnimatedFloat roundVideoPlayPipFloat;
    private RoundVideoPlayingDrawable roundVideoPlayingDrawable;
    private final Path sPath;
    private boolean scheduledInvalidate;
    private Rect scrollRect;
    private SeekBar seekBar;
    private SeekBarAccessibilityDelegate seekBarAccessibilityDelegate;
    private SeekBarWaveform seekBarWaveform;
    private int seekBarWaveformTranslateX;
    private int seekBarX;
    private int seekBarY;
    float seekbarRoundX;
    float seekbarRoundY;
    private float selectedBackgroundProgress;
    private Paint selectionOverlayPaint;
    private Drawable[] selectorDrawable;
    private int[] selectorDrawableMaskType;
    private AnimatorSet shakeAnimation;
    private ChatMessageSharedResources sharedResources;
    public boolean shouldCheckVisibleOnScreen;
    private boolean sideButtonPressed;
    private float sideStartX;
    private float sideStartY;
    private StaticLayout siteNameLayout;
    private float siteNameLeft;
    private boolean skipFrameUpdate;
    private float slidingOffsetX;
    private StaticLayout songLayout;
    private int songX;
    private SpoilerEffect spoilerPressed;
    private AtomicReference<Layout> spoilersPatchedReplyTextLayout;
    private boolean statusDrawableAnimationInProgress;
    private ValueAnimator statusDrawableAnimator;
    private float statusDrawableProgress;
    private final double stickerSizeDifferenceRatio;
    private int substractBackgroundHeight;
    private int textX;
    private int textY;
    private float timeAlpha;
    private int timeAudioX;
    private StaticLayout timeLayout;
    private boolean timePressed;
    private int timeTextWidth;
    private boolean timeWasInvisible;
    public int timeWidth;
    private int timeWidthAudio;
    private int timeX;
    private TimerParticles timerParticles;
    private AnimatedFloat timerParticlesAlpha;
    private float timerTransitionProgress;
    private StaticLayout titleLayout;
    private int titleX;
    private float toSeekBarProgress;
    private boolean topNearToSet;
    private MessageTopicButton topicButton;
    private long totalChangeTime;
    private int totalCommentWidth;
    private int totalHeight;
    private int totalVisibleBlocksCount;
    private TranscribeButton transcribeButton;
    private float transcribeX;
    private float transcribeY;
    private final TransitionParams transitionParams;
    float transitionYOffsetForDrawables;
    private LoadingDrawable translationLoadingDrawable;
    private StaticLayout translationLoadingDrawableLayout;
    private ArrayList<MessageObject.TextLayoutBlock> translationLoadingDrawableText;
    private AnimatedFloat translationLoadingFloat;
    private LinkPath translationLoadingPath;
    private float unlockAlpha;
    private StaticLayout unlockLayout;
    private SpoilerEffect unlockSpoilerEffect;
    private Path unlockSpoilerPath;
    private float[] unlockSpoilerRadii;
    private int unlockTextWidth;
    private float unlockX;
    private float unlockY;
    private int unmovedTextX;
    private ArrayList<LinkPath> urlPathCache;
    private ArrayList<LinkPath> urlPathSelection;
    private boolean useSeekBarWaveform;
    private boolean useTranscribeButton;
    private int viaNameWidth;
    private TypefaceSpan viaSpan1;
    private TypefaceSpan viaSpan2;
    private int viaWidth;
    private boolean vibrateOnPollVote;
    private int videoButtonPressed;
    private int videoButtonX;
    private int videoButtonY;
    VideoForwardDrawable videoForwardDrawable;
    private StaticLayout videoInfoLayout;
    VideoPlayerRewinder videoPlayerRewinder;
    private RadialProgress2 videoRadialProgress;
    private float viewTop;
    private StaticLayout viewsLayout;
    private int viewsTextWidth;
    private boolean visibleOnScreen;
    private float voteCurrentCircleLength;
    private float voteCurrentProgressTime;
    private long voteLastUpdateTime;
    private float voteRadOffset;
    private boolean voteRisingCircleLength;
    private boolean wasLayout;
    private boolean wasPinned;
    private boolean wasSending;
    private boolean wasTranscriptionOpen;
    private boolean wideMode;
    private int widthBeforeNewTimeLine;
    private int widthForButtons;
    private boolean willRemoved;
    private boolean wouldBeInPip;

    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$ChatMessageCellDelegate */
    /* loaded from: classes5.dex */
    public interface ChatMessageCellDelegate {

        /* renamed from: org.telegram.ui.Cells.ChatMessageCell$ChatMessageCellDelegate$-CC  reason: invalid class name */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$canDrawOutboundsContent(ChatMessageCellDelegate chatMessageCellDelegate) {
                return true;
            }

            public static boolean $default$canPerformActions(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static void $default$didLongPress(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, float f, float f2) {
            }

            public static void $default$didLongPressBotButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
            }

            public static boolean $default$didLongPressChannelAvatar(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat, int i, float f, float f2) {
                return false;
            }

            public static boolean $default$didLongPressUserAvatar(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2, boolean z) {
                return false;
            }

            public static void $default$didPressAdditionalSideButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static boolean $default$didPressAnimatedEmoji(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, AnimatedEmojiSpan animatedEmojiSpan) {
                return false;
            }

            public static void $default$didPressBotButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
            }

            public static void $default$didPressCancelSendButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressChannelAvatar(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat, int i, float f, float f2) {
            }

            public static void $default$didPressCommentButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressExtendedMediaPreview(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
            }

            public static void $default$didPressForkTranscribeButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressHiddenForward(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressHint(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, int i) {
            }

            public static void $default$didPressImage(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, float f, float f2) {
            }

            public static void $default$didPressInstantButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, int i) {
            }

            public static void $default$didPressOther(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, float f, float f2) {
            }

            public static void $default$didPressReaction(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
            }

            public static void $default$didPressReplyMessage(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, int i) {
            }

            public static void $default$didPressSideButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressTime(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressTopicButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressUrl(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, CharacterStyle characterStyle, boolean z) {
            }

            public static void $default$didPressUserAvatar(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2) {
            }

            public static void $default$didPressViaBot(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, String str) {
            }

            public static void $default$didPressViaBotNotInline(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, long j) {
            }

            public static void $default$didPressVoteButtons(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, ArrayList arrayList, int i, int i2, int i3) {
            }

            public static void $default$didStartVideoStream(ChatMessageCellDelegate chatMessageCellDelegate, MessageObject messageObject) {
            }

            public static String $default$getAdminRank(ChatMessageCellDelegate chatMessageCellDelegate, long j) {
                return null;
            }

            public static PinchToZoomHelper $default$getPinchToZoomHelper(ChatMessageCellDelegate chatMessageCellDelegate) {
                return null;
            }

            public static String $default$getProgressLoadingBotButtonUrl(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
                return null;
            }

            public static CharacterStyle $default$getProgressLoadingLink(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
                return null;
            }

            public static TextSelectionHelper.ChatListTextSelectionHelper $default$getTextSelectionHelper(ChatMessageCellDelegate chatMessageCellDelegate) {
                return null;
            }

            public static boolean $default$hasSelectedMessages(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static void $default$invalidateBlur(ChatMessageCellDelegate chatMessageCellDelegate) {
            }

            public static boolean $default$isAllowForkTranscribe(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static boolean $default$isInPreviewMode(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static boolean $default$isLandscape(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static boolean $default$isProgressLoading(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, int i) {
                return false;
            }

            public static boolean $default$isReplyOrSelf(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static boolean $default$keyboardIsOpened(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static boolean $default$needDrawTranslateButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
                return false;
            }

            public static void $default$needOpenWebView(ChatMessageCellDelegate chatMessageCellDelegate, MessageObject messageObject, String str, String str2, String str3, String str4, int i, int i2) {
            }

            public static boolean $default$needPlayMessage(ChatMessageCellDelegate chatMessageCellDelegate, MessageObject messageObject, boolean z) {
                return false;
            }

            public static void $default$needReloadPolls(ChatMessageCellDelegate chatMessageCellDelegate) {
            }

            public static void $default$needShowPremiumBulletin(ChatMessageCellDelegate chatMessageCellDelegate, int i) {
            }

            public static boolean $default$onAccessibilityAction(ChatMessageCellDelegate chatMessageCellDelegate, int i, Bundle bundle) {
                return false;
            }

            public static void $default$onDiceFinished(ChatMessageCellDelegate chatMessageCellDelegate) {
            }

            public static void $default$runWithActivationCheck(ChatMessageCellDelegate chatMessageCellDelegate, Callbacks$Callback callbacks$Callback) {
            }

            public static void $default$setShouldNotRepeatSticker(ChatMessageCellDelegate chatMessageCellDelegate, MessageObject messageObject) {
            }

            public static boolean $default$shouldDrawThreadProgress(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
                return false;
            }

            public static boolean $default$shouldRepeatSticker(ChatMessageCellDelegate chatMessageCellDelegate, MessageObject messageObject) {
                return true;
            }

            public static boolean $default$shouldShowTopicButton(ChatMessageCellDelegate chatMessageCellDelegate) {
                return false;
            }

            public static void $default$videoTimerReached(ChatMessageCellDelegate chatMessageCellDelegate) {
            }
        }

        boolean canDrawOutboundsContent();

        boolean canPerformActions();

        void didLongPress(ChatMessageCell chatMessageCell, float f, float f2);

        void didLongPressBotButton(ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton);

        boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat, int i, float f, float f2);

        boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2, boolean z);

        void didPressAdditionalSideButton(ChatMessageCell chatMessageCell);

        boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell, AnimatedEmojiSpan animatedEmojiSpan);

        void didPressBotButton(ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton);

        void didPressCancelSendButton(ChatMessageCell chatMessageCell);

        void didPressChannelAvatar(ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat, int i, float f, float f2);

        void didPressCommentButton(ChatMessageCell chatMessageCell);

        void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton);

        void didPressForkTranscribeButton(ChatMessageCell chatMessageCell);

        void didPressHiddenForward(ChatMessageCell chatMessageCell);

        void didPressHint(ChatMessageCell chatMessageCell, int i);

        void didPressImage(ChatMessageCell chatMessageCell, float f, float f2);

        void didPressInstantButton(ChatMessageCell chatMessageCell, int i);

        void didPressOther(ChatMessageCell chatMessageCell, float f, float f2);

        void didPressReaction(ChatMessageCell chatMessageCell, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z);

        void didPressReplyMessage(ChatMessageCell chatMessageCell, int i);

        void didPressSideButton(ChatMessageCell chatMessageCell);

        void didPressTime(ChatMessageCell chatMessageCell);

        void didPressTopicButton(ChatMessageCell chatMessageCell);

        void didPressUrl(ChatMessageCell chatMessageCell, CharacterStyle characterStyle, boolean z);

        void didPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2);

        void didPressViaBot(ChatMessageCell chatMessageCell, String str);

        void didPressViaBotNotInline(ChatMessageCell chatMessageCell, long j);

        void didPressVoteButtons(ChatMessageCell chatMessageCell, ArrayList<TLRPC$TL_pollAnswer> arrayList, int i, int i2, int i3);

        void didStartVideoStream(MessageObject messageObject);

        String getAdminRank(long j);

        PinchToZoomHelper getPinchToZoomHelper();

        String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell);

        CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell);

        TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper();

        boolean hasSelectedMessages();

        void invalidateBlur();

        boolean isAllowForkTranscribe();

        boolean isInPreviewMode();

        boolean isLandscape();

        boolean isProgressLoading(ChatMessageCell chatMessageCell, int i);

        boolean isReplyOrSelf();

        boolean keyboardIsOpened();

        boolean needDrawTranslateButton(ChatMessageCell chatMessageCell);

        void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i, int i2);

        boolean needPlayMessage(MessageObject messageObject, boolean z);

        void needReloadPolls();

        void needShowPremiumBulletin(int i);

        boolean onAccessibilityAction(int i, Bundle bundle);

        void onDiceFinished();

        void runWithActivationCheck(Callbacks$Callback callbacks$Callback);

        void setShouldNotRepeatSticker(MessageObject messageObject);

        boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell);

        boolean shouldRepeatSticker(MessageObject messageObject);

        boolean shouldShowTopicButton();

        void videoTimerReached();
    }

    private boolean intersect(float f, float f2, float f3, float f4) {
        return f <= f3 ? f2 >= f3 : f <= f4;
    }

    public ChatMessageCell(Context context, boolean z, ChatMessageSharedResources chatMessageSharedResources, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, chatMessageSharedResources, resourcesProvider, UserConfig.selectedAccount);
    }

    public boolean isAllowForkTranscribe() {
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        return chatMessageCellDelegate != null && chatMessageCellDelegate.isAllowForkTranscribe() && this.currentMessageObject.isAllowForkTranscribe() && !this.isRoundVideo;
    }

    public void reloadMedia() {
        checkImageReceiversAttachState(true);
    }

    private void checkImageReceiversAttachState() {
        checkImageReceiversAttachState(true);
    }

    private boolean checkNeedDrawAdditionalSideButton(MessageObject messageObject) {
        ChatMessageCellDelegate chatMessageCellDelegate;
        if (this.wideMode || messageObject == null || messageObject.deleted) {
            return false;
        }
        if (this.currentPosition != null) {
            if (messageObject.isOutOwner()) {
                if (this.currentPosition.hasNeighborByLeft() || this.currentPosition.hasNeighborByBottom()) {
                    return false;
                }
            } else if (!this.currentPosition.last) {
                return false;
            }
        }
        return (messageObject.isForwardingEditor && messageObject.canEditMessage(null, true)) || (messageObject.needDrawTranslateButton() && (chatMessageCellDelegate = this.delegate) != null && chatMessageCellDelegate.needDrawTranslateButton(this));
    }

    private String getTemplateName() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return null;
        }
        TemplateModel templateModel = TemplatesController.getInstance(this.currentMessageObject.currentAccount).getTemplates().get(Long.valueOf(messageObject.getId() >= 0 ? this.currentMessageObject.getId() : this.currentMessageObject.messageOwner.random_id));
        if (templateModel == null) {
            return null;
        }
        return templateModel.getName();
    }

    public RadialProgress2 getRadialProgress() {
        return this.radialProgress;
    }

    public void setEnterTransitionInProgress(boolean z) {
        this.enterTransitionInProgress = z;
        invalidate();
    }

    public ReactionsLayoutInBubble.ReactionButton getReactionButton(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        return this.reactionsLayoutInBubble.getReactionButton(visibleReaction);
    }

    public MessageObject getPrimaryMessageObject() {
        MessageObject messageObject = this.currentMessageObject;
        MessageObject findPrimaryMessageObject = (messageObject == null || this.currentMessagesGroup == null || !messageObject.hasValidGroupId()) ? null : this.currentMessagesGroup.findPrimaryMessageObject();
        return findPrimaryMessageObject != null ? findPrimaryMessageObject : this.currentMessageObject;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.startSpoilers) {
            setSpoilersSuppressed(false);
        } else if (i == NotificationCenter.stopSpoilers) {
            setSpoilersSuppressed(true);
        } else if (i == NotificationCenter.userInfoDidLoad) {
            TLRPC$User tLRPC$User = this.currentUser;
            if (tLRPC$User == null || tLRPC$User.f1762id != ((Long) objArr[0]).longValue()) {
                return;
            }
            setAvatar(this.currentMessageObject);
        } else if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        }
    }

    private void setAvatar(MessageObject messageObject) {
        TLRPC$Photo tLRPC$Photo;
        TLRPC$Chat tLRPC$Chat;
        if (messageObject == null) {
            return;
        }
        if (this.isAvatarVisible) {
            Drawable drawable = messageObject.customAvatarDrawable;
            if (drawable != null) {
                this.avatarImage.setImageBitmap(drawable);
                return;
            }
            TLRPC$User tLRPC$User = this.currentUser;
            if (tLRPC$User != null) {
                TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = tLRPC$User.photo;
                if (tLRPC$UserProfilePhoto != null) {
                    this.currentPhoto = tLRPC$UserProfilePhoto.photo_small;
                } else {
                    this.currentPhoto = null;
                }
                this.avatarDrawable.setInfo(tLRPC$User);
                this.avatarImage.setForUserOrChat(this.currentUser, this.avatarDrawable, null, LiteMode.isEnabled(LiteMode.FLAGS_CHAT), 1, false);
                return;
            }
            TLRPC$Chat tLRPC$Chat2 = this.currentChat;
            if (tLRPC$Chat2 != null) {
                TLRPC$ChatPhoto tLRPC$ChatPhoto = tLRPC$Chat2.photo;
                if (tLRPC$ChatPhoto != null) {
                    this.currentPhoto = tLRPC$ChatPhoto.photo_small;
                } else {
                    this.currentPhoto = null;
                }
                this.avatarDrawable.setInfo(tLRPC$Chat2);
                this.avatarImage.setForUserOrChat(this.currentChat, this.avatarDrawable);
                return;
            } else if (messageObject.isSponsored()) {
                TLRPC$TL_sponsoredWebPage tLRPC$TL_sponsoredWebPage = messageObject.sponsoredWebPage;
                if (tLRPC$TL_sponsoredWebPage != null) {
                    this.avatarDrawable.setInfo(messageObject.sponsoredId[0], tLRPC$TL_sponsoredWebPage.site_name, null, null);
                    TLRPC$Photo tLRPC$Photo2 = messageObject.sponsoredWebPage.photo;
                    if (tLRPC$Photo2 != null) {
                        this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo2.sizes, AndroidUtilities.m102dp(50), false, null, true), tLRPC$Photo2), "50_50", this.avatarDrawable, null, null, 0);
                        return;
                    }
                    return;
                }
                TLRPC$ChatInvite tLRPC$ChatInvite = messageObject.sponsoredChatInvite;
                if (tLRPC$ChatInvite != null && (tLRPC$Chat = tLRPC$ChatInvite.chat) != null) {
                    this.avatarDrawable.setInfo(tLRPC$Chat);
                    this.avatarImage.setForUserOrChat(messageObject.sponsoredChatInvite.chat, this.avatarDrawable);
                    return;
                }
                this.avatarDrawable.setInfo(tLRPC$ChatInvite);
                TLRPC$ChatInvite tLRPC$ChatInvite2 = messageObject.sponsoredChatInvite;
                if (tLRPC$ChatInvite2 == null || (tLRPC$Photo = tLRPC$ChatInvite2.photo) == null) {
                    return;
                }
                this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.m102dp(50), false, null, true), tLRPC$Photo), "50_50", this.avatarDrawable, null, null, 0);
                return;
            } else {
                this.currentPhoto = null;
                this.avatarDrawable.setInfo(messageObject.getFromChatId(), null, null);
                this.avatarImage.setImage(null, null, this.avatarDrawable, null, null, 0);
                return;
            }
        }
        this.currentPhoto = null;
    }

    public void setSpoilersSuppressed(boolean z) {
        for (int i = 0; i < this.captionSpoilers.size(); i++) {
            this.captionSpoilers.get(i).setSuppressUpdates(z);
        }
        for (int i2 = 0; i2 < this.replySpoilers.size(); i2++) {
            this.replySpoilers.get(i2).setSuppressUpdates(z);
        }
        if (getMessageObject() == null || getMessageObject().textLayoutBlocks == null) {
            return;
        }
        for (int i3 = 0; i3 < getMessageObject().textLayoutBlocks.size(); i3++) {
            MessageObject.TextLayoutBlock textLayoutBlock = getMessageObject().textLayoutBlocks.get(i3);
            for (int i4 = 0; i4 < textLayoutBlock.spoilers.size(); i4++) {
                textLayoutBlock.spoilers.get(i4).setSuppressUpdates(z);
            }
        }
    }

    public boolean hasSpoilers() {
        if ((!hasCaptionLayout() || this.captionSpoilers.isEmpty()) && (this.replyTextLayout == null || this.replySpoilers.isEmpty())) {
            if (getMessageObject() == null || getMessageObject().textLayoutBlocks == null) {
                return false;
            }
            Iterator<MessageObject.TextLayoutBlock> it = getMessageObject().textLayoutBlocks.iterator();
            while (it.hasNext()) {
                if (!it.next().spoilers.isEmpty()) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    private void updateSpoilersVisiblePart(int i, int i2) {
        if (hasCaptionLayout()) {
            float f = -this.captionY;
            for (SpoilerEffect spoilerEffect : this.captionSpoilers) {
                spoilerEffect.setVisibleBounds(BitmapDescriptorFactory.HUE_RED, i + f, getWidth(), i2 + f);
            }
        }
        StaticLayout staticLayout = this.replyTextLayout;
        if (staticLayout != null) {
            float height = (-this.replyStartY) - staticLayout.getHeight();
            for (SpoilerEffect spoilerEffect2 : this.replySpoilers) {
                spoilerEffect2.setVisibleBounds(BitmapDescriptorFactory.HUE_RED, i + height, getWidth(), i2 + height);
            }
        }
        if (getMessageObject() == null || getMessageObject().textLayoutBlocks == null) {
            return;
        }
        Iterator<MessageObject.TextLayoutBlock> it = getMessageObject().textLayoutBlocks.iterator();
        while (it.hasNext()) {
            MessageObject.TextLayoutBlock next = it.next();
            for (SpoilerEffect spoilerEffect3 : next.spoilers) {
                spoilerEffect3.setVisibleBounds(BitmapDescriptorFactory.HUE_RED, (i - next.textYOffset) - this.textY, getWidth(), (i2 - next.textYOffset) - this.textY);
            }
        }
    }

    public void setScrimReaction(String str) {
        this.reactionsLayoutInBubble.setScrimReaction(str);
    }

    public void drawScrimReaction(Canvas canvas, String str) {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        if (groupedMessagePosition != null) {
            int i = groupedMessagePosition.flags;
            if ((i & 8) == 0 || (i & 1) == 0) {
                return;
            }
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (reactionsLayoutInBubble.isSmall) {
            return;
        }
        reactionsLayoutInBubble.draw(canvas, this.transitionParams.animateChangeProgress, str);
    }

    public boolean checkUnreadReactions(float f, int i) {
        if (this.reactionsLayoutInBubble.hasUnreadReactions) {
            float y = getY();
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            float f2 = y + reactionsLayoutInBubble.f1925y;
            return f2 > f && (f2 + ((float) reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.m102dp(16)) < ((float) i);
        }
        return false;
    }

    public void markReactionsAsRead() {
        this.reactionsLayoutInBubble.hasUnreadReactions = false;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.markReactionsAsRead();
    }

    public void setVisibleOnScreen(boolean z, float f, float f2) {
        if (this.visibleOnScreen != z) {
            this.visibleOnScreen = z;
            checkImageReceiversAttachState();
            if (z) {
                invalidate();
            }
        }
        float imageY = f - this.photoImage.getImageY();
        float measuredHeight = f2 - (getMeasuredHeight() - this.photoImage.getImageY2());
        float imageHeight = this.photoImage.getImageHeight();
        if (imageY > BitmapDescriptorFactory.HUE_RED) {
            imageHeight -= imageY;
        }
        if (measuredHeight > BitmapDescriptorFactory.HUE_RED) {
            imageHeight -= measuredHeight;
        }
        ImageReceiver imageReceiver = this.photoImage;
        boolean z2 = imageHeight / imageReceiver.getImageHeight() < 0.25f;
        this.skipFrameUpdate = z2;
        imageReceiver.setSkipUpdateFrame(z2);
    }

    public void setParentBounds(float f, int i) {
        this.parentBoundsTop = f;
        this.parentBoundsBottom = i;
        if (this.photoImageOutOfBounds) {
            float y = getY() + this.photoImage.getImageY();
            if (this.photoImage.getImageHeight() + y < this.parentBoundsTop || y > this.parentBoundsBottom) {
                return;
            }
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$BotButton */
    /* loaded from: classes5.dex */
    public class BotButton {
        private int angle;
        private TLRPC$KeyboardButton button;
        private int height;
        private boolean isInviteButton;
        private long lastUpdateTime;
        private LoadingDrawable loadingDrawable;
        private int positionFlags;
        private ValueAnimator pressAnimator;
        private float pressT;
        private boolean pressed;
        private float progressAlpha;
        private Drawable selectorDrawable;
        private StaticLayout title;
        private int width;

        /* renamed from: x */
        private int f1787x;

        /* renamed from: y */
        private int f1788y;

        private BotButton() {
        }

        static /* synthetic */ int access$3576(BotButton botButton, int i) {
            int i2 = i | botButton.positionFlags;
            botButton.positionFlags = i2;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPressed(boolean z) {
            ValueAnimator valueAnimator;
            if (this.pressed != z) {
                this.pressed = z;
                ChatMessageCell.this.invalidateOutbounds();
                if (z && (valueAnimator = this.pressAnimator) != null) {
                    valueAnimator.removeAllListeners();
                    this.pressAnimator.cancel();
                }
                if (z) {
                    return;
                }
                float f = this.pressT;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                    this.pressAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ChatMessageCell$BotButton$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            ChatMessageCell.BotButton.this.lambda$setPressed$0(valueAnimator2);
                        }
                    });
                    this.pressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.BotButton.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            BotButton.this.pressAnimator = null;
                        }
                    });
                    this.pressAnimator.setInterpolator(new OvershootInterpolator(2.0f));
                    this.pressAnimator.setDuration(350L);
                    this.pressAnimator.start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPressed$0(ValueAnimator valueAnimator) {
            this.pressT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ChatMessageCell.this.invalidateOutbounds();
        }

        public boolean hasPositionFlag(int i) {
            return (this.positionFlags & i) == i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getPressScale() {
            if (this.pressed) {
                float f = this.pressT;
                if (f != 1.0f) {
                    float min = f + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 100.0f);
                    this.pressT = min;
                    this.pressT = Utilities.clamp(min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    ChatMessageCell.this.invalidateOutbounds();
                }
            }
            return ((1.0f - this.pressT) * 0.04f) + 0.96f;
        }
    }

    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$PollButton */
    /* loaded from: classes5.dex */
    public static class PollButton {
        private TLRPC$TL_pollAnswer answer;
        private boolean chosen;
        private boolean correct;
        private int count;
        private float decimal;
        public int height;
        private int percent;
        private float percentProgress;
        private boolean prevChosen;
        private int prevPercent;
        private float prevPercentProgress;
        private StaticLayout title;

        /* renamed from: x */
        public int f1789x;

        /* renamed from: y */
        public int f1790y;

        static /* synthetic */ int access$2212(PollButton pollButton, int i) {
            int i2 = pollButton.percent + i;
            pollButton.percent = i2;
            return i2;
        }

        static /* synthetic */ float access$2924(PollButton pollButton, float f) {
            float f2 = pollButton.decimal - f;
            pollButton.decimal = f2;
            return f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$LoadingDrawableLocation */
    /* loaded from: classes5.dex */
    public class LoadingDrawableLocation {
        int blockNum;
        LoadingDrawable drawable;

        LoadingDrawableLocation(ChatMessageCell chatMessageCell) {
        }
    }

    public ChatMessageCell(Context context) {
        this(context, false, null, null);
    }

    public ChatMessageCell(Context context, boolean z, ChatMessageSharedResources chatMessageSharedResources, Theme.ResourcesProvider resourcesProvider, int i) {
        super(context);
        this.stickerSizeDifferenceRatio = SharedConfig.selectedStickersSize.getSizeRatio();
        this.visibleOnScreen = true;
        this.reactionsLayoutInBubble = new ReactionsLayoutInBubble(this);
        this.scrollRect = new Rect();
        this.imageBackgroundGradientRotation = 45;
        this.selectorDrawable = new Drawable[2];
        this.selectorDrawableMaskType = new int[2];
        this.instantButtonRect = new RectF();
        this.pressedState = new int[]{16842910, 16842919};
        this.deleteProgressRect = new RectF();
        this.rect = new RectF();
        this.timeAlpha = 1.0f;
        this.controlsAlpha = 1.0f;
        this.links = new LinkSpanDrawable.LinkCollector(this);
        this.urlPathCache = new ArrayList<>();
        this.urlPathSelection = new ArrayList<>();
        this.rectPath = new Path();
        this.pollButtons = new ArrayList<>();
        this.botButtons = new ArrayList<>();
        this.botButtonPath = new Path();
        this.botButtonRadii = new float[8];
        this.botButtonsByData = new HashMap<>();
        this.botButtonsByPosition = new HashMap<>();
        this.currentAccount = UserConfig.selectedAccount;
        this.isCheckPressed = true;
        this.drawBackground = true;
        this.backgroundWidth = 100;
        this.commentButtonRect = new Rect();
        this.spoilersPatchedReplyTextLayout = new AtomicReference<>();
        this.forwardedNameLayout = new StaticLayout[2];
        this.forwardNameOffsetX = new float[2];
        this.drawTime = true;
        this.mediaSpoilerPath = new Path();
        this.mediaSpoilerRadii = new float[8];
        this.mediaSpoilerEffect = new SpoilerEffect();
        this.unlockAlpha = 1.0f;
        this.unlockSpoilerEffect = new SpoilerEffect();
        this.unlockSpoilerPath = new Path();
        this.unlockSpoilerRadii = new float[8];
        this.replySelectorRect = new Rect();
        this.ALPHA_PROPERTY_WORKAROUND = Build.VERSION.SDK_INT == 28;
        this.alphaInternal = 1.0f;
        this.transitionParams = new TransitionParams();
        this.roundVideoPlayPipFloat = new AnimatedFloat(this, 200L, CubicBezierInterpolator.EASE_OUT);
        this.diceFinishCallback = new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell.1
            @Override // java.lang.Runnable
            public void run() {
                if (ChatMessageCell.this.delegate != null) {
                    ChatMessageCell.this.delegate.onDiceFinished();
                }
            }
        };
        this.invalidateRunnable = new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell.2
            @Override // java.lang.Runnable
            public void run() {
                ChatMessageCell.this.checkLocationExpired();
                if (ChatMessageCell.this.locationExpired) {
                    ChatMessageCell.this.invalidate();
                    ChatMessageCell.this.scheduledInvalidate = false;
                    return;
                }
                ChatMessageCell chatMessageCell = ChatMessageCell.this;
                chatMessageCell.invalidate(((int) chatMessageCell.rect.left) - 5, ((int) ChatMessageCell.this.rect.top) - 5, ((int) ChatMessageCell.this.rect.right) + 5, ((int) ChatMessageCell.this.rect.bottom) + 5);
                if (ChatMessageCell.this.scheduledInvalidate) {
                    AndroidUtilities.runOnUIThread(ChatMessageCell.this.invalidateRunnable, 1000L);
                }
            }
        };
        this.accessibilityVirtualViewBounds = new SparseArray<>();
        this.currentFocusedVirtualView = -1;
        this.backgroundCacheParams = new Theme.MessageDrawable.PathDrawParams();
        this.replySpoilers = new ArrayList();
        this.replySpoilersPool = new Stack<>();
        this.captionSpoilers = new ArrayList();
        this.captionSpoilersPool = new Stack<>();
        this.captionPatchedSpoilersLayout = new AtomicReference<>();
        this.sPath = new Path();
        this.hadLongPress = false;
        this.ANIMATION_OFFSET_X = new Property<ChatMessageCell, Float>(this, Float.class, "animationOffsetX") { // from class: org.telegram.ui.Cells.ChatMessageCell.12
            @Override // android.util.Property
            public Float get(ChatMessageCell chatMessageCell) {
                return Float.valueOf(chatMessageCell.animationOffsetX);
            }

            @Override // android.util.Property
            public void set(ChatMessageCell chatMessageCell, Float f) {
                chatMessageCell.setAnimationOffsetX(f.floatValue());
            }
        };
        this.currentAccount = i;
        this.selectorDrawable = new Drawable[3];
        this.selectorDrawableMaskType = new int[3];
        this.resourcesProvider = resourcesProvider;
        this.canDrawBackgroundInParent = z;
        this.sharedResources = chatMessageSharedResources;
        if (chatMessageSharedResources == null) {
            this.sharedResources = new ChatMessageSharedResources(context);
        }
        this.backgroundDrawable = new MessageBackgroundDrawable(this);
        ImageReceiver imageReceiver = new ImageReceiver();
        this.avatarImage = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        this.avatarImage.setRoundRadius(AndroidUtilities.m102dp(21));
        this.avatarDrawable = new AvatarDrawable();
        ImageReceiver imageReceiver2 = new ImageReceiver(this);
        this.replyImageReceiver = imageReceiver2;
        imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        this.replyImageReceiver.setRoundRadius(AndroidUtilities.m102dp(4));
        ImageReceiver imageReceiver3 = new ImageReceiver(this);
        this.locationImageReceiver = imageReceiver3;
        imageReceiver3.setAllowLoadingOnAttachedOnly(true);
        this.locationImageReceiver.setRoundRadius(AndroidUtilities.m103dp(26.1f));
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.contactAvatarDrawable = new AvatarDrawable();
        ImageReceiver imageReceiver4 = new ImageReceiver(this);
        this.photoImage = imageReceiver4;
        imageReceiver4.setAllowLoadingOnAttachedOnly(true);
        this.photoImage.setUseRoundForThumbDrawable(true);
        this.photoImage.setDelegate(this);
        ImageReceiver imageReceiver5 = new ImageReceiver(this);
        this.blurredPhotoImage = imageReceiver5;
        imageReceiver5.setAllowLoadingOnAttachedOnly(true);
        this.blurredPhotoImage.setUseRoundForThumbDrawable(true);
        this.radialProgress = new RadialProgress2(this, resourcesProvider);
        RadialProgress2 radialProgress2 = new RadialProgress2(this, resourcesProvider);
        this.videoRadialProgress = radialProgress2;
        radialProgress2.setDrawBackground(false);
        this.videoRadialProgress.setCircleRadius(AndroidUtilities.m102dp(15));
        SeekBar seekBar = new SeekBar(this) { // from class: org.telegram.ui.Cells.ChatMessageCell.3
            @Override // org.telegram.p042ui.Components.SeekBar
            protected void onTimestampUpdate(URLSpanNoUnderline uRLSpanNoUnderline) {
                ChatMessageCell.this.highlightCaptionLink(uRLSpanNoUnderline);
            }
        };
        this.seekBar = seekBar;
        seekBar.setDelegate(this);
        SeekBarWaveform seekBarWaveform = new SeekBarWaveform(context);
        this.seekBarWaveform = seekBarWaveform;
        seekBarWaveform.setDelegate(this);
        this.seekBarWaveform.setParentView(this);
        this.seekBarAccessibilityDelegate = new FloatSeekBarAccessibilityDelegate() { // from class: org.telegram.ui.Cells.ChatMessageCell.4
            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                if (ChatMessageCell.this.currentMessageObject.isMusic()) {
                    return ChatMessageCell.this.seekBar.getProgress();
                }
                return ChatMessageCell.this.currentMessageObject.isVoice() ? ChatMessageCell.this.useSeekBarWaveform ? ChatMessageCell.this.seekBarWaveform.getProgress() : ChatMessageCell.this.seekBar.getProgress() : ChatMessageCell.this.currentMessageObject.isRoundVideo() ? ChatMessageCell.this.currentMessageObject.audioProgress : BitmapDescriptorFactory.HUE_RED;
            }

            @Override // org.telegram.p042ui.Components.FloatSeekBarAccessibilityDelegate
            public void setProgress(float f) {
                if (ChatMessageCell.this.currentMessageObject.isMusic()) {
                    ChatMessageCell.this.seekBar.setProgress(f);
                } else if (ChatMessageCell.this.currentMessageObject.isVoice()) {
                    if (ChatMessageCell.this.useSeekBarWaveform) {
                        ChatMessageCell.this.seekBarWaveform.setProgress(f);
                    } else {
                        ChatMessageCell.this.seekBar.setProgress(f);
                    }
                } else if (!ChatMessageCell.this.currentMessageObject.isRoundVideo()) {
                    return;
                } else {
                    if (ChatMessageCell.this.useSeekBarWaveform) {
                        if (ChatMessageCell.this.seekBarWaveform != null) {
                            ChatMessageCell.this.seekBarWaveform.setProgress(f);
                        }
                    } else if (ChatMessageCell.this.seekBar != null) {
                        ChatMessageCell.this.seekBar.setProgress(f);
                    }
                    ChatMessageCell.this.currentMessageObject.audioProgress = f;
                }
                ChatMessageCell.this.onSeekBarDrag(f);
                ChatMessageCell.this.invalidate();
            }
        };
        this.roundVideoPlayingDrawable = new RoundVideoPlayingDrawable(this, resourcesProvider);
        setImportantForAccessibility(1);
        this.avatarImage.setCurrentAccount(this.currentAccount);
        this.replyImageReceiver.setCurrentAccount(this.currentAccount);
        this.locationImageReceiver.setCurrentAccount(this.currentAccount);
        this.photoImage.setCurrentAccount(this.currentAccount);
    }

    public void setResourcesProvider(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        RadialProgress2 radialProgress2 = this.radialProgress;
        if (radialProgress2 != null) {
            radialProgress2.setResourcesProvider(resourcesProvider);
        }
        RadialProgress2 radialProgress22 = this.videoRadialProgress;
        if (radialProgress22 != null) {
            radialProgress22.setResourcesProvider(resourcesProvider);
        }
        RoundVideoPlayingDrawable roundVideoPlayingDrawable = this.roundVideoPlayingDrawable;
        if (roundVideoPlayingDrawable != null) {
            roundVideoPlayingDrawable.setResourcesProvider(resourcesProvider);
        }
    }

    private void createPollUI() {
        if (this.pollAvatarImages != null) {
            return;
        }
        this.pollAvatarImages = new ImageReceiver[3];
        this.pollAvatarDrawables = new AvatarDrawable[3];
        this.pollAvatarImagesVisible = new boolean[3];
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.pollAvatarImages;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i] = new ImageReceiver(this);
            this.pollAvatarImages[i].setRoundRadius(AndroidUtilities.m102dp(8));
            this.pollAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.pollAvatarDrawables[i] = new AvatarDrawable();
            this.pollAvatarDrawables[i].setTextSize(AndroidUtilities.m102dp(22));
            i++;
        }
        this.pollCheckBox = new CheckBoxBase[10];
        int i2 = 0;
        while (true) {
            CheckBoxBase[] checkBoxBaseArr = this.pollCheckBox;
            if (i2 >= checkBoxBaseArr.length) {
                return;
            }
            checkBoxBaseArr[i2] = new CheckBoxBase(this, 20, this.resourcesProvider);
            this.pollCheckBox[i2].setDrawUnchecked(false);
            this.pollCheckBox[i2].setBackgroundType(9);
            i2++;
        }
    }

    private void createCommentUI() {
        if (this.commentAvatarImages != null) {
            return;
        }
        this.commentAvatarImages = new ImageReceiver[3];
        this.commentAvatarDrawables = new AvatarDrawable[3];
        this.commentAvatarImagesVisible = new boolean[3];
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.commentAvatarImages;
            if (i >= imageReceiverArr.length) {
                return;
            }
            imageReceiverArr[i] = new ImageReceiver(this);
            this.commentAvatarImages[i].setRoundRadius(AndroidUtilities.m102dp(12));
            this.commentAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.commentAvatarDrawables[i] = new AvatarDrawable();
            this.commentAvatarDrawables[i].setTextSize(AndroidUtilities.m102dp(18));
            i++;
        }
    }

    public void resetPressedLink(int i) {
        if (i != -1) {
            this.links.removeLinks(Integer.valueOf(i));
        } else {
            this.links.clear();
        }
        this.pressedEmoji = null;
        if (this.pressedLink != null) {
            if (this.pressedLinkType == i || i == -1) {
                this.pressedLink = null;
                this.pressedLinkType = -1;
                invalidate();
            }
        }
    }

    private void resetUrlPaths() {
        if (this.urlPathSelection.isEmpty()) {
            return;
        }
        this.urlPathCache.addAll(this.urlPathSelection);
        this.urlPathSelection.clear();
    }

    private LinkPath obtainNewUrlPath() {
        LinkPath linkPath;
        if (!this.urlPathCache.isEmpty()) {
            linkPath = this.urlPathCache.get(0);
            this.urlPathCache.remove(0);
        } else {
            linkPath = new LinkPath(true);
        }
        linkPath.reset();
        this.urlPathSelection.add(linkPath);
        return linkPath;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getRealSpanStartAndEnd(Spannable spannable, CharacterStyle characterStyle) {
        int i;
        int i2;
        boolean z;
        TextStyleSpan.TextStyleRun style;
        TLRPC$MessageEntity tLRPC$MessageEntity;
        if (!(characterStyle instanceof URLSpanBrowser) || (style = ((URLSpanBrowser) characterStyle).getStyle()) == null || (tLRPC$MessageEntity = style.urlEntity) == null) {
            i = 0;
            i2 = 0;
            z = false;
        } else {
            i2 = tLRPC$MessageEntity.offset;
            i = tLRPC$MessageEntity.length + i2;
            z = true;
        }
        if (!z) {
            i2 = spannable.getSpanStart(characterStyle);
            i = spannable.getSpanEnd(characterStyle);
        }
        return new int[]{i2, i};
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0284 A[Catch: Exception -> 0x02c0, TryCatch #0 {Exception -> 0x02c0, blocks: (B:39:0x0084, B:41:0x0099, B:43:0x009f, B:45:0x00c1, B:47:0x00cc, B:49:0x00dc, B:55:0x00ed, B:58:0x00f9, B:60:0x00fc, B:62:0x0102, B:68:0x010c, B:70:0x0112, B:72:0x0118, B:74:0x011e, B:76:0x0122, B:128:0x0280, B:78:0x0126, B:79:0x0133, B:81:0x0137, B:83:0x013f, B:85:0x0161, B:87:0x0166, B:127:0x0275, B:126:0x0272, B:86:0x0164, B:130:0x0284, B:132:0x028a, B:134:0x0290, B:136:0x0299, B:138:0x029f, B:139:0x02a5, B:141:0x02a9, B:143:0x02b1, B:57:0x00f0, B:53:0x00e2, B:88:0x0171, B:90:0x01a3, B:91:0x01a5, B:93:0x01af, B:95:0x01bb, B:98:0x01d2, B:100:0x01d5, B:103:0x01e0, B:106:0x0203, B:96:0x01c6, B:107:0x0206, B:109:0x020c, B:111:0x0210, B:113:0x021c, B:116:0x023b, B:118:0x023e, B:121:0x0249, B:114:0x022b), top: B:149:0x0084, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x010c A[Catch: Exception -> 0x02c0, TryCatch #0 {Exception -> 0x02c0, blocks: (B:39:0x0084, B:41:0x0099, B:43:0x009f, B:45:0x00c1, B:47:0x00cc, B:49:0x00dc, B:55:0x00ed, B:58:0x00f9, B:60:0x00fc, B:62:0x0102, B:68:0x010c, B:70:0x0112, B:72:0x0118, B:74:0x011e, B:76:0x0122, B:128:0x0280, B:78:0x0126, B:79:0x0133, B:81:0x0137, B:83:0x013f, B:85:0x0161, B:87:0x0166, B:127:0x0275, B:126:0x0272, B:86:0x0164, B:130:0x0284, B:132:0x028a, B:134:0x0290, B:136:0x0299, B:138:0x029f, B:139:0x02a5, B:141:0x02a9, B:143:0x02b1, B:57:0x00f0, B:53:0x00e2, B:88:0x0171, B:90:0x01a3, B:91:0x01a5, B:93:0x01af, B:95:0x01bb, B:98:0x01d2, B:100:0x01d5, B:103:0x01e0, B:106:0x0203, B:96:0x01c6, B:107:0x0206, B:109:0x020c, B:111:0x0210, B:113:0x021c, B:116:0x023b, B:118:0x023e, B:121:0x0249, B:114:0x022b), top: B:149:0x0084, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0118 A[Catch: Exception -> 0x02c0, TryCatch #0 {Exception -> 0x02c0, blocks: (B:39:0x0084, B:41:0x0099, B:43:0x009f, B:45:0x00c1, B:47:0x00cc, B:49:0x00dc, B:55:0x00ed, B:58:0x00f9, B:60:0x00fc, B:62:0x0102, B:68:0x010c, B:70:0x0112, B:72:0x0118, B:74:0x011e, B:76:0x0122, B:128:0x0280, B:78:0x0126, B:79:0x0133, B:81:0x0137, B:83:0x013f, B:85:0x0161, B:87:0x0166, B:127:0x0275, B:126:0x0272, B:86:0x0164, B:130:0x0284, B:132:0x028a, B:134:0x0290, B:136:0x0299, B:138:0x029f, B:139:0x02a5, B:141:0x02a9, B:143:0x02b1, B:57:0x00f0, B:53:0x00e2, B:88:0x0171, B:90:0x01a3, B:91:0x01a5, B:93:0x01af, B:95:0x01bb, B:98:0x01d2, B:100:0x01d5, B:103:0x01e0, B:106:0x0203, B:96:0x01c6, B:107:0x0206, B:109:0x020c, B:111:0x0210, B:113:0x021c, B:116:0x023b, B:118:0x023e, B:121:0x0249, B:114:0x022b), top: B:149:0x0084, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkTextBlockMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.checkTextBlockMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00ce A[Catch: Exception -> 0x014b, TryCatch #0 {Exception -> 0x014b, blocks: (B:30:0x005e, B:32:0x007d, B:34:0x0088, B:36:0x0096, B:40:0x00a3, B:43:0x00af, B:45:0x00b2, B:47:0x00b8, B:53:0x00c2, B:55:0x00c8, B:57:0x00ce, B:72:0x0147, B:58:0x00da, B:60:0x00de, B:62:0x00e6, B:64:0x0108, B:66:0x010d, B:71:0x013c, B:70:0x0139, B:65:0x010b, B:42:0x00a6, B:38:0x0099, B:67:0x0116), top: B:90:0x005e, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00da A[Catch: Exception -> 0x014b, TryCatch #0 {Exception -> 0x014b, blocks: (B:30:0x005e, B:32:0x007d, B:34:0x0088, B:36:0x0096, B:40:0x00a3, B:43:0x00af, B:45:0x00b2, B:47:0x00b8, B:53:0x00c2, B:55:0x00c8, B:57:0x00ce, B:72:0x0147, B:58:0x00da, B:60:0x00de, B:62:0x00e6, B:64:0x0108, B:66:0x010d, B:71:0x013c, B:70:0x0139, B:65:0x010b, B:42:0x00a6, B:38:0x0099, B:67:0x0116), top: B:90:0x005e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkCaptionMotionEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.checkCaptionMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00f5 A[Catch: Exception -> 0x013c, TryCatch #0 {Exception -> 0x013c, blocks: (B:38:0x006e, B:40:0x0095, B:42:0x00a0, B:44:0x00b1, B:46:0x00b7, B:52:0x00c1, B:54:0x00c7, B:56:0x00cb, B:68:0x0138, B:58:0x00d3, B:60:0x00f5, B:62:0x00fa, B:67:0x012d, B:66:0x012a, B:61:0x00f8, B:63:0x0107), top: B:104:0x006e, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f8 A[Catch: Exception -> 0x013c, TryCatch #0 {Exception -> 0x013c, blocks: (B:38:0x006e, B:40:0x0095, B:42:0x00a0, B:44:0x00b1, B:46:0x00b7, B:52:0x00c1, B:54:0x00c7, B:56:0x00cb, B:68:0x0138, B:58:0x00d3, B:60:0x00f5, B:62:0x00fa, B:67:0x012d, B:66:0x012a, B:61:0x00f8, B:63:0x0107), top: B:104:0x006e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkGameMotionEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.checkGameMotionEvent(android.view.MotionEvent):boolean");
    }

    private boolean checkTranscribeButtonMotionEvent(MotionEvent motionEvent) {
        TranscribeButton transcribeButton;
        return this.useTranscribeButton && (!this.isPlayingRound || getVideoTranscriptionProgress() > BitmapDescriptorFactory.HUE_RED || this.wasTranscriptionOpen) && (transcribeButton = this.transcribeButton) != null && transcribeButton.onTouch(motionEvent.getAction(), motionEvent.getX(), motionEvent.getY());
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00f4 A[Catch: Exception -> 0x013e, TryCatch #0 {Exception -> 0x013e, blocks: (B:30:0x0060, B:32:0x007a, B:34:0x0091, B:36:0x009c, B:38:0x00ad, B:40:0x00b3, B:46:0x00bd, B:48:0x00c3, B:50:0x00c7, B:62:0x013a, B:52:0x00cf, B:54:0x00f4, B:56:0x00f9, B:61:0x012f, B:60:0x012c, B:55:0x00f7, B:57:0x0109), top: B:249:0x0060, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f7 A[Catch: Exception -> 0x013e, TryCatch #0 {Exception -> 0x013e, blocks: (B:30:0x0060, B:32:0x007a, B:34:0x0091, B:36:0x009c, B:38:0x00ad, B:40:0x00b3, B:46:0x00bd, B:48:0x00c3, B:50:0x00c7, B:62:0x013a, B:52:0x00cf, B:54:0x00f4, B:56:0x00f9, B:61:0x012f, B:60:0x012c, B:55:0x00f7, B:57:0x0109), top: B:249:0x0060, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkLinkPreviewMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.checkLinkPreviewMotionEvent(android.view.MotionEvent):boolean");
    }

    private boolean checkPollButtonMotionEvent(MotionEvent motionEvent) {
        int i;
        int i2;
        if (this.delegate.isInPreviewMode() || this.currentMessageObject.eventId != 0 || this.pollVoteInProgress || this.pollUnvoteInProgress || this.pollButtons.isEmpty()) {
            return false;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject.type == 17 && messageObject.isSent()) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                this.pressedVoteButton = -1;
                this.pollHintPressed = false;
                if (this.hintButtonVisible && (i = this.pollHintX) != -1 && x >= i && x <= i + AndroidUtilities.m102dp(40) && y >= (i2 = this.pollHintY) && y <= i2 + AndroidUtilities.m102dp(40)) {
                    this.pollHintPressed = true;
                    this.selectorDrawableMaskType[0] = 3;
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr = this.selectorDrawable;
                        if (drawableArr[0] != null) {
                            drawableArr[0].setBounds(this.pollHintX - AndroidUtilities.m102dp(8), this.pollHintY - AndroidUtilities.m102dp(8), this.pollHintX + AndroidUtilities.m102dp(32), this.pollHintY + AndroidUtilities.m102dp(32));
                            this.selectorDrawable[0].setHotspot(x, y);
                            this.selectorDrawable[0].setState(this.pressedState);
                        }
                    }
                    invalidate();
                } else {
                    for (int i3 = 0; i3 < this.pollButtons.size(); i3++) {
                        PollButton pollButton = this.pollButtons.get(i3);
                        int m102dp = (pollButton.f1790y + this.namesOffset) - AndroidUtilities.m102dp(13);
                        int i4 = pollButton.f1789x;
                        if (x >= i4 && x <= (i4 + this.backgroundWidth) - AndroidUtilities.m102dp(31) && y >= m102dp && y <= pollButton.height + m102dp + AndroidUtilities.m102dp(26)) {
                            this.pressedVoteButton = i3;
                            if (!this.pollVoted && !this.pollClosed) {
                                this.selectorDrawableMaskType[0] = 1;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    Drawable[] drawableArr2 = this.selectorDrawable;
                                    if (drawableArr2[0] != null) {
                                        drawableArr2[0].setBounds(pollButton.f1789x - AndroidUtilities.m102dp(9), m102dp, (pollButton.f1789x + this.backgroundWidth) - AndroidUtilities.m102dp(22), pollButton.height + m102dp + AndroidUtilities.m102dp(26));
                                        this.selectorDrawable[0].setHotspot(x, y);
                                        this.selectorDrawable[0].setState(this.pressedState);
                                    }
                                }
                                invalidate();
                            }
                        }
                    }
                    return false;
                }
                return true;
            } else if (motionEvent.getAction() == 1) {
                if (this.pollHintPressed) {
                    playSoundEffect(0);
                    this.delegate.didPressHint(this, 0);
                    this.pollHintPressed = false;
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr3 = this.selectorDrawable;
                        if (drawableArr3[0] != null) {
                            drawableArr3[0].setState(StateSet.NOTHING);
                            return false;
                        }
                        return false;
                    }
                    return false;
                } else if (this.pressedVoteButton != -1) {
                    playSoundEffect(0);
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr4 = this.selectorDrawable;
                        if (drawableArr4[0] != null) {
                            drawableArr4[0].setState(StateSet.NOTHING);
                        }
                    }
                    if (this.currentMessageObject.scheduled) {
                        Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVote", C3630R.string.MessageScheduledVote), 1).show();
                    } else {
                        PollButton pollButton2 = this.pollButtons.get(this.pressedVoteButton);
                        TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = pollButton2.answer;
                        if (this.pollVoted || this.pollClosed) {
                            ArrayList<TLRPC$TL_pollAnswer> arrayList = new ArrayList<>();
                            arrayList.add(tLRPC$TL_pollAnswer);
                            this.delegate.didPressVoteButtons(this, arrayList, pollButton2.count, pollButton2.f1789x + AndroidUtilities.m102dp(50), this.namesOffset + pollButton2.f1790y);
                        } else if (this.lastPoll.multiple_choice) {
                            if (this.currentMessageObject.checkedVotes.contains(tLRPC$TL_pollAnswer)) {
                                this.currentMessageObject.checkedVotes.remove(tLRPC$TL_pollAnswer);
                                this.pollCheckBox[this.pressedVoteButton].setChecked(false, true);
                            } else {
                                this.currentMessageObject.checkedVotes.add(tLRPC$TL_pollAnswer);
                                this.pollCheckBox[this.pressedVoteButton].setChecked(true, true);
                            }
                        } else {
                            this.pollVoteInProgressNum = this.pressedVoteButton;
                            this.pollVoteInProgress = true;
                            this.vibrateOnPollVote = true;
                            this.voteCurrentProgressTime = BitmapDescriptorFactory.HUE_RED;
                            this.firstCircleLength = true;
                            this.voteCurrentCircleLength = 360.0f;
                            this.voteRisingCircleLength = false;
                            ArrayList<TLRPC$TL_pollAnswer> arrayList2 = new ArrayList<>();
                            arrayList2.add(tLRPC$TL_pollAnswer);
                            this.delegate.didPressVoteButtons(this, arrayList2, -1, 0, 0);
                        }
                    }
                    this.pressedVoteButton = -1;
                    invalidate();
                    return false;
                } else {
                    return false;
                }
            } else if (motionEvent.getAction() == 2) {
                if ((this.pressedVoteButton != -1 || this.pollHintPressed) && Build.VERSION.SDK_INT >= 21) {
                    Drawable[] drawableArr5 = this.selectorDrawable;
                    if (drawableArr5[0] != null) {
                        drawableArr5[0].setHotspot(x, y);
                        return false;
                    }
                    return false;
                }
                return false;
            } else {
                return false;
            }
        }
        return false;
    }

    private boolean checkInstantButtonMotionEvent(MotionEvent motionEvent) {
        if (this.delegate.isInPreviewMode()) {
            return false;
        }
        if (this.currentMessageObject.isSponsored() || (this.drawInstantView && this.currentMessageObject.type != 0)) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                if (this.drawInstantView) {
                    float f = x;
                    float f2 = y;
                    if (this.instantButtonRect.contains(f, f2)) {
                        this.selectorDrawableMaskType[0] = this.lastPoll == null ? 0 : 2;
                        this.instantPressed = true;
                        if (Build.VERSION.SDK_INT >= 21 && this.selectorDrawable[0] != null && this.instantButtonRect.contains(f, f2)) {
                            this.selectorDrawable[0].setHotspot(f, f2);
                            this.selectorDrawable[0].setState(this.pressedState);
                            setInstantButtonPressed(true);
                        }
                        invalidate();
                        return true;
                    }
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.instantPressed) {
                    ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
                    if (chatMessageCellDelegate != null) {
                        if (this.lastPoll != null) {
                            MessageObject messageObject = this.currentMessageObject;
                            if (messageObject.scheduled) {
                                Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVoteResults", C3630R.string.MessageScheduledVoteResults), 1).show();
                            } else if (this.pollVoted || this.pollClosed) {
                                chatMessageCellDelegate.didPressInstantButton(this, this.drawInstantViewType);
                            } else {
                                if (!messageObject.checkedVotes.isEmpty()) {
                                    this.pollVoteInProgressNum = -1;
                                    this.pollVoteInProgress = true;
                                    this.vibrateOnPollVote = true;
                                    this.voteCurrentProgressTime = BitmapDescriptorFactory.HUE_RED;
                                    this.firstCircleLength = true;
                                    this.voteCurrentCircleLength = 360.0f;
                                    this.voteRisingCircleLength = false;
                                }
                                this.delegate.didPressVoteButtons(this, this.currentMessageObject.checkedVotes, -1, 0, this.namesOffset);
                            }
                        } else {
                            chatMessageCellDelegate.didPressInstantButton(this, this.drawInstantViewType);
                        }
                    }
                    playSoundEffect(0);
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr = this.selectorDrawable;
                        if (drawableArr[0] != null) {
                            drawableArr[0].setState(StateSet.NOTHING);
                        }
                    }
                    this.instantPressed = false;
                    setInstantButtonPressed(false);
                    invalidate();
                }
            } else if (motionEvent.getAction() == 2 && this.instantButtonPressed && Build.VERSION.SDK_INT >= 21) {
                Drawable[] drawableArr2 = this.selectorDrawable;
                if (drawableArr2[0] != null) {
                    drawableArr2[0].setHotspot(x, y);
                }
            }
            return false;
        }
        return false;
    }

    private void invalidateWithParent() {
        if (this.currentMessagesGroup != null && getParent() != null) {
            ((ViewGroup) getParent()).invalidate();
        }
        invalidate();
    }

    private boolean checkCommentButtonMotionEvent(MotionEvent motionEvent) {
        int i = 0;
        if (!this.delegate.isInPreviewMode() && this.drawCommentButton) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
            if (groupedMessagePosition != null && (groupedMessagePosition.flags & 1) == 0 && this.commentButtonRect.contains(x, y)) {
                ViewGroup viewGroup = (ViewGroup) getParent();
                int childCount = viewGroup.getChildCount();
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt != this && (childAt instanceof ChatMessageCell)) {
                        ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                        if (chatMessageCell.drawCommentButton && chatMessageCell.currentMessagesGroup == this.currentMessagesGroup && (chatMessageCell.currentPosition.flags & 1) != 0) {
                            MotionEvent obtain = MotionEvent.obtain(0L, 0L, motionEvent.getActionMasked(), (motionEvent.getX() + getLeft()) - chatMessageCell.getLeft(), (motionEvent.getY() + getTop()) - chatMessageCell.getTop(), 0);
                            chatMessageCell.checkCommentButtonMotionEvent(obtain);
                            obtain.recycle();
                            break;
                        }
                    }
                    i++;
                }
                return true;
            }
            if (motionEvent.getAction() == 0) {
                if (this.commentButtonRect.contains(x, y)) {
                    if (this.currentMessageObject.isSent()) {
                        this.selectorDrawableMaskType[1] = 2;
                        this.commentButtonPressed = true;
                        if (Build.VERSION.SDK_INT >= 21) {
                            Drawable[] drawableArr = this.selectorDrawable;
                            if (drawableArr[1] != null) {
                                drawableArr[1].setHotspot(x, y);
                                this.selectorDrawable[1].setState(this.pressedState);
                            }
                        }
                        invalidateWithParent();
                    }
                    return true;
                }
            } else if (motionEvent.getAction() == 1) {
                if (this.commentButtonPressed) {
                    ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
                    if (chatMessageCellDelegate != null) {
                        if (this.isRepliesChat) {
                            chatMessageCellDelegate.didPressSideButton(this);
                        } else {
                            chatMessageCellDelegate.didPressCommentButton(this);
                        }
                    }
                    playSoundEffect(0);
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr2 = this.selectorDrawable;
                        if (drawableArr2[1] != null) {
                            drawableArr2[1].setState(StateSet.NOTHING);
                        }
                    }
                    this.commentButtonPressed = false;
                    invalidateWithParent();
                }
            } else if (motionEvent.getAction() == 2 && this.commentButtonPressed && Build.VERSION.SDK_INT >= 21) {
                Drawable[] drawableArr3 = this.selectorDrawable;
                if (drawableArr3[1] != null) {
                    drawableArr3[1].setHotspot(x, y);
                }
            }
            return false;
        }
        return false;
    }

    private boolean checkOtherButtonMotionEvent(MotionEvent motionEvent) {
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        if (this.delegate.isInPreviewMode()) {
            return false;
        }
        int i = this.documentAttachType;
        if ((i == 5 || i == 1) && (groupedMessagePosition = this.currentPosition) != null && (groupedMessagePosition.flags & 4) == 0) {
            return false;
        }
        int i2 = this.currentMessageObject.type;
        boolean z = i2 == 16;
        boolean z2 = z;
        if (!z) {
            z2 = ((i != 1 && i2 != 12 && i != 5 && i != 4 && i != 2 && i2 != 8) || this.hasGamePreview || this.hasInvoicePreview) ? false : true;
        }
        if (z2) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject.type == 16) {
                    boolean isVideoCall = messageObject.isVideoCall();
                    int i3 = this.otherX;
                    if (x < i3) {
                        return false;
                    }
                    if (x > i3 + AndroidUtilities.m102dp((LocaleController.isRTL ? 0 : 200) + 30 + (!isVideoCall ? 2 : 0)) || y < this.otherY - AndroidUtilities.m102dp(14) || y > this.otherY + AndroidUtilities.m102dp(50)) {
                        return false;
                    }
                    this.otherPressed = true;
                    this.selectorDrawableMaskType[0] = 4;
                    if (Build.VERSION.SDK_INT >= 21 && this.selectorDrawable[0] != null) {
                        int m102dp = this.otherX + AndroidUtilities.m102dp((LocaleController.isRTL ? 0 : 200) + (!isVideoCall ? 2 : 0)) + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicWidth() / 2);
                        int intrinsicHeight = this.otherY + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicHeight() / 2);
                        this.selectorDrawable[0].setBounds(m102dp - AndroidUtilities.m102dp(20), intrinsicHeight - AndroidUtilities.m102dp(20), m102dp + AndroidUtilities.m102dp(20), intrinsicHeight + AndroidUtilities.m102dp(20));
                        this.selectorDrawable[0].setHotspot(x, y);
                        this.selectorDrawable[0].setState(this.pressedState);
                    }
                    invalidate();
                } else if (x < this.otherX - AndroidUtilities.m102dp(20) || x > this.otherX + AndroidUtilities.m102dp(20) || y < this.otherY - AndroidUtilities.m102dp(4) || y > this.otherY + AndroidUtilities.m102dp(30)) {
                    return false;
                } else {
                    this.otherPressed = true;
                    invalidate();
                }
            } else if (motionEvent.getAction() == 1) {
                if (!this.otherPressed) {
                    return false;
                }
                if (this.currentMessageObject.type == 16 && Build.VERSION.SDK_INT >= 21) {
                    Drawable[] drawableArr = this.selectorDrawable;
                    if (drawableArr[0] != null) {
                        drawableArr[0].setState(StateSet.NOTHING);
                    }
                }
                this.otherPressed = false;
                playSoundEffect(0);
                this.delegate.didPressOther(this, this.otherX, this.otherY);
                invalidate();
            } else if (motionEvent.getAction() == 2 && this.currentMessageObject.type == 16 && this.otherPressed && Build.VERSION.SDK_INT >= 21) {
                Drawable[] drawableArr2 = this.selectorDrawable;
                if (drawableArr2[0] != null) {
                    drawableArr2[0].setHotspot(x, y);
                    return false;
                }
                return false;
            } else {
                return false;
            }
            return true;
        }
        return false;
    }

    private void setInstantButtonPressed(boolean z) {
        ValueAnimator valueAnimator;
        if (this.instantButtonPressed != z) {
            invalidate();
            if (z && (valueAnimator = this.instantButtonPressAnimator) != null) {
                valueAnimator.removeAllListeners();
                this.instantButtonPressAnimator.cancel();
            }
            if (!z) {
                float f = this.instantButtonPressProgress;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                    this.instantButtonPressAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            ChatMessageCell.this.lambda$setInstantButtonPressed$0(valueAnimator2);
                        }
                    });
                    this.instantButtonPressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            ChatMessageCell.this.instantButtonPressAnimator = null;
                        }
                    });
                    this.instantButtonPressAnimator.setInterpolator(new OvershootInterpolator(5.0f));
                    this.instantButtonPressAnimator.setDuration(350L);
                    this.instantButtonPressAnimator.start();
                }
            }
            this.instantButtonPressed = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setInstantButtonPressed$0(ValueAnimator valueAnimator) {
        this.instantButtonPressProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private boolean checkDateMotionEvent(MotionEvent motionEvent) {
        if (this.currentMessageObject.isImportedForward()) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                float f = x;
                float f2 = this.drawTimeX;
                if (f < f2 || f > f2 + this.timeWidth) {
                    return false;
                }
                float f3 = y;
                float f4 = this.drawTimeY;
                if (f3 < f4 || f3 > f4 + AndroidUtilities.m102dp(20)) {
                    return false;
                }
                this.timePressed = true;
                invalidate();
            } else if (motionEvent.getAction() != 1 || !this.timePressed) {
                return false;
            } else {
                this.timePressed = false;
                playSoundEffect(0);
                this.delegate.didPressTime(this);
                invalidate();
            }
            return true;
        }
        return false;
    }

    private boolean checkRoundSeekbar(MotionEvent motionEvent) {
        if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject) && MediaController.getInstance().isMessagePaused()) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0) {
                float f = x;
                if (f >= this.seekbarRoundX - AndroidUtilities.m102dp(20) && f <= this.seekbarRoundX + AndroidUtilities.m102dp(20)) {
                    float f2 = y;
                    if (f2 >= this.seekbarRoundY - AndroidUtilities.m102dp(20) && f2 <= this.seekbarRoundY + AndroidUtilities.m102dp(20)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        cancelCheckLongPress();
                        this.roundSeekbarTouched = 1;
                        invalidate();
                    }
                }
                float centerX = f - this.photoImage.getCenterX();
                float centerY = y - this.photoImage.getCenterY();
                float imageWidth = (this.photoImage.getImageWidth() - AndroidUtilities.m102dp(64)) / 2.0f;
                float f3 = (centerX * centerX) + (centerY * centerY);
                if (f3 < ((this.photoImage.getImageWidth() / 2.0f) * this.photoImage.getImageWidth()) / 2.0f && f3 > imageWidth * imageWidth) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    cancelCheckLongPress();
                    this.roundSeekbarTouched = 1;
                    invalidate();
                }
            } else if (this.roundSeekbarTouched == 1 && motionEvent.getAction() == 2) {
                float degrees = ((float) Math.toDegrees(Math.atan2(y - this.photoImage.getCenterY(), x - this.photoImage.getCenterX()))) + 90.0f;
                if (degrees < BitmapDescriptorFactory.HUE_RED) {
                    degrees += 360.0f;
                }
                float f4 = degrees / 360.0f;
                if (Math.abs(this.currentMessageObject.audioProgress - f4) > 0.9f) {
                    if (this.roundSeekbarOutAlpha == BitmapDescriptorFactory.HUE_RED) {
                        performHapticFeedback(3);
                    }
                    this.roundSeekbarOutAlpha = 1.0f;
                    this.roundSeekbarOutProgress = this.currentMessageObject.audioProgress;
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.lastSeekUpdateTime > 100) {
                    MediaController.getInstance().seekToProgress(this.currentMessageObject, f4);
                    this.lastSeekUpdateTime = currentTimeMillis;
                }
                this.currentMessageObject.audioProgress = f4;
                updatePlayingMessageProgress();
            }
            if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.roundSeekbarTouched != 0) {
                if (motionEvent.getAction() == 1) {
                    float degrees2 = ((float) Math.toDegrees(Math.atan2(y - this.photoImage.getCenterY(), x - this.photoImage.getCenterX()))) + 90.0f;
                    if (degrees2 < BitmapDescriptorFactory.HUE_RED) {
                        degrees2 += 360.0f;
                    }
                    float f5 = degrees2 / 360.0f;
                    this.currentMessageObject.audioProgress = f5;
                    MediaController.getInstance().seekToProgress(this.currentMessageObject, f5);
                    updatePlayingMessageProgress();
                }
                MediaController.getInstance().playMessage(this.currentMessageObject);
                this.roundSeekbarTouched = 0;
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            return this.roundSeekbarTouched != 0;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkPhotoImageMotionEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.checkPhotoImageMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0115, code lost:
        if (r4 <= (r0 + r6)) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0117, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x014f, code lost:
        if (r4 <= (r0 + r6)) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkAudioMotionEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.checkAudioMotionEvent(android.view.MotionEvent):boolean");
    }

    public boolean checkSpoilersMotionEvent(MotionEvent motionEvent, int i) {
        int i2;
        MessageObject.GroupedMessages groupedMessages;
        if (i <= 15 && getParent() != null) {
            if (this.currentMessageObject.hasValidGroupId() && (groupedMessages = this.currentMessagesGroup) != null && !groupedMessages.isDocuments) {
                ViewGroup viewGroup = (ViewGroup) getParent();
                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    if (childAt instanceof ChatMessageCell) {
                        ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                        MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
                        MessageObject.GroupedMessagePosition currentPosition = chatMessageCell.getCurrentPosition();
                        if (currentMessagesGroup != null && currentMessagesGroup.groupId == this.currentMessagesGroup.groupId) {
                            int i4 = currentPosition.flags;
                            if ((i4 & 8) != 0 && (i4 & 1) != 0 && chatMessageCell != this) {
                                motionEvent.offsetLocation(getLeft() - chatMessageCell.getLeft(), getTop() - chatMessageCell.getTop());
                                boolean checkSpoilersMotionEvent = chatMessageCell.checkSpoilersMotionEvent(motionEvent, i + 1);
                                motionEvent.offsetLocation(-(getLeft() - chatMessageCell.getLeft()), -(getTop() - chatMessageCell.getTop()));
                                return checkSpoilersMotionEvent;
                            }
                        }
                    }
                }
            }
            if (this.isSpoilerRevealing) {
                return false;
            }
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                int i5 = this.textX;
                if (x >= i5 && y >= (i2 = this.textY)) {
                    MessageObject messageObject = this.currentMessageObject;
                    if (x <= i5 + messageObject.textWidth && y <= i2 + messageObject.textHeight) {
                        ArrayList<MessageObject.TextLayoutBlock> arrayList = messageObject.textLayoutBlocks;
                        for (int i6 = 0; i6 < arrayList.size() && arrayList.get(i6).textYOffset <= y; i6++) {
                            MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i6);
                            int i7 = textLayoutBlock.isRtl() ? (int) this.currentMessageObject.textXOffset : 0;
                            for (SpoilerEffect spoilerEffect : textLayoutBlock.spoilers) {
                                if (spoilerEffect.getBounds().contains((x - this.textX) + i7, (int) ((y - this.textY) - textLayoutBlock.textYOffset))) {
                                    this.spoilerPressed = spoilerEffect;
                                    this.isCaptionSpoilerPressed = false;
                                    return true;
                                }
                            }
                        }
                    }
                }
                if (hasCaptionLayout()) {
                    float f = x;
                    float f2 = this.captionX;
                    if (f >= f2) {
                        float f3 = y;
                        if (f3 >= this.captionY && f <= f2 + this.captionLayout.getWidth() && f3 <= this.captionY + this.captionLayout.getHeight()) {
                            for (SpoilerEffect spoilerEffect2 : this.captionSpoilers) {
                                if (spoilerEffect2.getBounds().contains((int) (f - this.captionX), (int) (f3 - this.captionY))) {
                                    this.spoilerPressed = spoilerEffect2;
                                    this.isCaptionSpoilerPressed = true;
                                    return true;
                                }
                            }
                        }
                    }
                }
            } else if (actionMasked == 1 && this.spoilerPressed != null) {
                playSoundEffect(0);
                this.sPath.rewind();
                if (this.isCaptionSpoilerPressed) {
                    for (SpoilerEffect spoilerEffect3 : this.captionSpoilers) {
                        Rect bounds = spoilerEffect3.getBounds();
                        this.sPath.addRect(bounds.left, bounds.top, bounds.right, bounds.bottom, Path.Direction.CW);
                    }
                } else {
                    Iterator<MessageObject.TextLayoutBlock> it = this.currentMessageObject.textLayoutBlocks.iterator();
                    while (it.hasNext()) {
                        MessageObject.TextLayoutBlock next = it.next();
                        for (SpoilerEffect spoilerEffect4 : next.spoilers) {
                            Rect bounds2 = spoilerEffect4.getBounds();
                            float f4 = next.textYOffset;
                            this.sPath.addRect(bounds2.left, bounds2.top + f4, bounds2.right, bounds2.bottom + f4, Path.Direction.CW);
                        }
                    }
                }
                this.sPath.computeBounds(this.rect, false);
                float sqrt = (float) Math.sqrt(Math.pow(this.rect.width(), 2.0d) + Math.pow(this.rect.height(), 2.0d));
                this.isSpoilerRevealing = true;
                this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatMessageCell.this.lambda$checkSpoilersMotionEvent$2();
                    }
                });
                if (this.isCaptionSpoilerPressed) {
                    for (SpoilerEffect spoilerEffect5 : this.captionSpoilers) {
                        spoilerEffect5.startRipple(x - this.captionX, y - this.captionY, sqrt);
                    }
                } else {
                    ArrayList<MessageObject.TextLayoutBlock> arrayList2 = this.currentMessageObject.textLayoutBlocks;
                    if (arrayList2 != null) {
                        Iterator<MessageObject.TextLayoutBlock> it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            MessageObject.TextLayoutBlock next2 = it2.next();
                            int i8 = next2.isRtl() ? (int) this.currentMessageObject.textXOffset : 0;
                            for (SpoilerEffect spoilerEffect6 : next2.spoilers) {
                                spoilerEffect6.startRipple((x - this.textX) + i8, (y - next2.textYOffset) - this.textY, sqrt);
                            }
                        }
                    }
                }
                if (getParent() instanceof RecyclerListView) {
                    ViewGroup viewGroup2 = (ViewGroup) getParent();
                    for (int i9 = 0; i9 < viewGroup2.getChildCount(); i9++) {
                        View childAt2 = viewGroup2.getChildAt(i9);
                        if (childAt2 instanceof ChatMessageCell) {
                            final ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt2;
                            if (chatMessageCell2.getMessageObject() != null && chatMessageCell2.getMessageObject().getReplyMsgId() == getMessageObject().getId() && !chatMessageCell2.replySpoilers.isEmpty()) {
                                chatMessageCell2.replySpoilers.get(0).setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda10
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ChatMessageCell.this.lambda$checkSpoilersMotionEvent$4(chatMessageCell2);
                                    }
                                });
                                for (SpoilerEffect spoilerEffect7 : chatMessageCell2.replySpoilers) {
                                    spoilerEffect7.startRipple(spoilerEffect7.getBounds().centerX(), spoilerEffect7.getBounds().centerY(), sqrt);
                                }
                            }
                        }
                    }
                }
                this.spoilerPressed = null;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSpoilersMotionEvent$2() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ChatMessageCell.this.lambda$checkSpoilersMotionEvent$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSpoilersMotionEvent$1() {
        this.isSpoilerRevealing = false;
        getMessageObject().isSpoilersRevealed = true;
        if (this.isCaptionSpoilerPressed) {
            this.captionSpoilers.clear();
        } else {
            ArrayList<MessageObject.TextLayoutBlock> arrayList = this.currentMessageObject.textLayoutBlocks;
            if (arrayList != null) {
                Iterator<MessageObject.TextLayoutBlock> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().spoilers.clear();
                }
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSpoilersMotionEvent$4(final ChatMessageCell chatMessageCell) {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ChatMessageCell.lambda$checkSpoilersMotionEvent$3(ChatMessageCell.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSpoilersMotionEvent$3(ChatMessageCell chatMessageCell) {
        chatMessageCell.getMessageObject().replyMessageObject.isSpoilersRevealed = true;
        chatMessageCell.replySpoilers.clear();
        chatMessageCell.invalidate();
    }

    private boolean checkBotButtonMotionEvent(MotionEvent motionEvent) {
        int i;
        int m102dp;
        if (this.delegate.isInPreviewMode() || this.botButtons.isEmpty() || this.currentMessageObject.eventId != 0) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            if (this.currentMessageObject.isOutOwner()) {
                m102dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m102dp(10);
            } else {
                m102dp = this.backgroundDrawableLeft + AndroidUtilities.m102dp(this.mediaBackground ? 1 : 7);
            }
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = this.botButtons.get(i2);
                int m102dp2 = (botButton.f1788y + this.layoutHeight) - AndroidUtilities.m102dp(2);
                if (x >= botButton.f1787x + m102dp && x <= botButton.f1787x + m102dp + botButton.width && y >= m102dp2 && y <= botButton.height + m102dp2) {
                    this.pressedBotButton = i2;
                    invalidateOutbounds();
                    if (botButton.selectorDrawable == null) {
                        botButton.selectorDrawable = Theme.createRadSelectorDrawable(getThemedColor(Theme.key_chat_serviceBackgroundSelector), 6, 6);
                        botButton.selectorDrawable.setBounds(botButton.f1787x + m102dp, m102dp2, botButton.f1787x + m102dp + botButton.width, botButton.height + m102dp2);
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        botButton.selectorDrawable.setHotspot(x, y);
                    }
                    botButton.selectorDrawable.setState(this.pressedState);
                    botButton.setPressed(true);
                    final int i3 = this.pressedBotButton;
                    postDelayed(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatMessageCell.this.lambda$checkBotButtonMotionEvent$5(i3);
                        }
                    }, ViewConfiguration.getLongPressTimeout() - 1);
                    return true;
                }
            }
            return false;
        } else if (motionEvent.getAction() == 1) {
            if (this.pressedBotButton != -1) {
                playSoundEffect(0);
                BotButton botButton2 = this.botButtons.get(this.pressedBotButton);
                if (botButton2.selectorDrawable != null) {
                    botButton2.selectorDrawable.setState(StateSet.NOTHING);
                }
                botButton2.setPressed(false);
                if (!this.currentMessageObject.scheduled) {
                    if (botButton2.button != null) {
                        this.delegate.didPressBotButton(this, botButton2.button);
                    }
                } else {
                    Toast.makeText(getContext(), LocaleController.getString("MessageScheduledBotAction", C3630R.string.MessageScheduledBotAction), 1).show();
                }
                this.pressedBotButton = -1;
                invalidateOutbounds();
                return false;
            }
            return false;
        } else if (motionEvent.getAction() != 3 || (i = this.pressedBotButton) == -1) {
            return false;
        } else {
            BotButton botButton3 = this.botButtons.get(i);
            if (botButton3.selectorDrawable != null) {
                botButton3.selectorDrawable.setState(StateSet.NOTHING);
            }
            botButton3.setPressed(false);
            this.pressedBotButton = -1;
            invalidateOutbounds();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkBotButtonMotionEvent$5(int i) {
        int i2 = this.pressedBotButton;
        if (i == i2) {
            BotButton botButton = this.botButtons.get(i2);
            if (botButton != null) {
                if (botButton.selectorDrawable != null) {
                    botButton.selectorDrawable.setState(StateSet.NOTHING);
                }
                botButton.setPressed(false);
                if (!this.currentMessageObject.scheduled && botButton.button != null) {
                    cancelCheckLongPress();
                    this.delegate.didLongPressBotButton(this, botButton.button);
                }
            }
            this.pressedBotButton = -1;
            invalidateOutbounds();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:239:0x03a7, code lost:
        if (r5 <= (r0 + org.telegram.messenger.AndroidUtilities.m102dp(32))) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x070e, code lost:
        if (r5 > (r0 + org.telegram.messenger.AndroidUtilities.m102dp(32 + ((r18.drawSideButton != 3 || r18.commentLayout == null) ? 0 : 18)))) goto L520;
     */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0354  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$6() {
        if (this.replyPressed && !this.replySelectorPressed && this.replySelectorCanBePressed) {
            this.replySelectorPressed = true;
            this.replySelector.setState(new int[]{16842919, 16842910});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$7() {
        this.replySelector.setState(new int[0]);
        invalidate();
    }

    private boolean checkReactionsTouchEvent(MotionEvent motionEvent) {
        MessageObject.GroupedMessages groupedMessages;
        if (this.currentMessageObject.hasValidGroupId() && (groupedMessages = this.currentMessagesGroup) != null && !groupedMessages.isDocuments) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup == null) {
                return false;
            }
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                    MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
                    MessageObject.GroupedMessagePosition currentPosition = chatMessageCell.getCurrentPosition();
                    if (currentMessagesGroup != null && currentMessagesGroup.groupId == this.currentMessagesGroup.groupId) {
                        int i2 = currentPosition.flags;
                        if ((i2 & 8) != 0 && (i2 & 1) != 0) {
                            if (chatMessageCell == this) {
                                return this.reactionsLayoutInBubble.chekTouchEvent(motionEvent);
                            }
                            motionEvent.offsetLocation(getLeft() - chatMessageCell.getLeft(), getTop() - chatMessageCell.getTop());
                            boolean chekTouchEvent = chatMessageCell.reactionsLayoutInBubble.chekTouchEvent(motionEvent);
                            motionEvent.offsetLocation(-(getLeft() - chatMessageCell.getLeft()), -(getTop() - chatMessageCell.getTop()));
                            return chekTouchEvent;
                        }
                    }
                }
            }
            return false;
        }
        return this.reactionsLayoutInBubble.chekTouchEvent(motionEvent);
    }

    private boolean checkPinchToZoom(MotionEvent motionEvent) {
        if (this.delegate.isInPreviewMode()) {
            return false;
        }
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        PinchToZoomHelper pinchToZoomHelper = chatMessageCellDelegate == null ? null : chatMessageCellDelegate.getPinchToZoomHelper();
        if (this.currentMessageObject == null || !this.photoImage.hasNotThumb() || pinchToZoomHelper == null || this.currentMessageObject.isSticker() || this.currentMessageObject.isAnimatedEmoji() || ((this.currentMessageObject.isVideo() && !this.autoPlayingMedia) || this.isRoundVideo || this.currentMessageObject.isAnimatedSticker() || ((this.currentMessageObject.isDocument() && !this.currentMessageObject.isGif()) || this.currentMessageObject.needDrawBluredPreview()))) {
            return false;
        }
        ImageReceiver imageReceiver = this.photoImage;
        MessageObject messageObject = this.currentMessageObject;
        SpoilerEffect2 spoilerEffect2 = this.mediaSpoilerEffect2;
        return pinchToZoomHelper.checkPinchToZoom(motionEvent, this, imageReceiver, null, messageObject, spoilerEffect2 != null ? spoilerEffect2.getAttachIndex(this) : 0);
    }

    private boolean checkTextSelection(MotionEvent motionEvent) {
        TextSelectionHelper.ChatListTextSelectionHelper textSelectionHelper;
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message;
        int i;
        int m102dp;
        int i2;
        MessageObject.GroupedMessages groupedMessages;
        if (this.delegate.isInPreviewMode() || (textSelectionHelper = this.delegate.getTextSelectionHelper()) == null || MessagesController.getInstance(this.currentAccount).isChatNoForwards(this.currentMessageObject.getChatId()) || ((tLRPC$Message = (messageObject = this.currentMessageObject).messageOwner) != null && tLRPC$Message.noforwards)) {
            return false;
        }
        ArrayList<MessageObject.TextLayoutBlock> arrayList = messageObject.textLayoutBlocks;
        if (((arrayList == null || arrayList.isEmpty()) ? false : true) || hasCaptionLayout()) {
            if ((this.drawSelectionBackground || this.currentMessagesGroup != null) && (this.currentMessagesGroup == null || this.delegate.hasSelectedMessages())) {
                if (this.currentMessageObject.hasValidGroupId() && (groupedMessages = this.currentMessagesGroup) != null && !groupedMessages.isDocuments) {
                    ViewGroup viewGroup = (ViewGroup) getParent();
                    if (viewGroup == null) {
                        return false;
                    }
                    for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                        View childAt = viewGroup.getChildAt(i3);
                        if (childAt instanceof ChatMessageCell) {
                            ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                            MessageObject.GroupedMessages currentMessagesGroup = chatMessageCell.getCurrentMessagesGroup();
                            MessageObject.GroupedMessagePosition currentPosition = chatMessageCell.getCurrentPosition();
                            if (currentMessagesGroup != null && currentMessagesGroup.groupId == this.currentMessagesGroup.groupId) {
                                int i4 = currentPosition.flags;
                                if ((i4 & 8) != 0 && (i4 & 1) != 0) {
                                    textSelectionHelper.setMaybeTextCord((int) chatMessageCell.captionX, (int) chatMessageCell.captionY);
                                    textSelectionHelper.setMessageObject(chatMessageCell);
                                    if (chatMessageCell == this) {
                                        return textSelectionHelper.onTouchEvent(motionEvent);
                                    }
                                    motionEvent.offsetLocation(getLeft() - chatMessageCell.getLeft(), getTop() - chatMessageCell.getTop());
                                    boolean onTouchEvent = textSelectionHelper.onTouchEvent(motionEvent);
                                    motionEvent.offsetLocation(-(getLeft() - chatMessageCell.getLeft()), -(getTop() - chatMessageCell.getTop()));
                                    return onTouchEvent;
                                }
                            }
                        }
                    }
                    return false;
                }
                if (hasCaptionLayout()) {
                    textSelectionHelper.setIsDescription(false);
                    textSelectionHelper.setMaybeTextCord((int) this.captionX, (int) this.captionY);
                } else if (this.descriptionLayout != null && motionEvent.getY() > this.descriptionY) {
                    textSelectionHelper.setIsDescription(true);
                    if (this.hasGamePreview) {
                        i2 = this.unmovedTextX - AndroidUtilities.m102dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i = this.unmovedTextX;
                            m102dp = AndroidUtilities.m102dp(1);
                        } else {
                            i = this.unmovedTextX;
                            m102dp = AndroidUtilities.m102dp(1);
                        }
                        i2 = i + m102dp;
                    }
                    textSelectionHelper.setMaybeTextCord(i2 + AndroidUtilities.m102dp(10) + this.descriptionX, this.descriptionY);
                } else {
                    textSelectionHelper.setIsDescription(false);
                    textSelectionHelper.setMaybeTextCord(this.textX, this.textY);
                }
                textSelectionHelper.setMessageObject(this);
                return textSelectionHelper.onTouchEvent(motionEvent);
            }
            return false;
        }
        return false;
    }

    private void updateSelectionTextPosition() {
        int i;
        int m102dp;
        int i2;
        if (getDelegate() == null || getDelegate().getTextSelectionHelper() == null || !getDelegate().getTextSelectionHelper().isSelected(this.currentMessageObject)) {
            return;
        }
        int textSelectionType = getDelegate().getTextSelectionHelper().getTextSelectionType(this);
        if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_DESCRIPTION) {
            if (this.hasGamePreview) {
                i2 = this.unmovedTextX - AndroidUtilities.m102dp(10);
            } else {
                if (this.hasInvoicePreview) {
                    i = this.unmovedTextX;
                    m102dp = AndroidUtilities.m102dp(1);
                } else {
                    i = this.unmovedTextX;
                    m102dp = AndroidUtilities.m102dp(1);
                }
                i2 = i + m102dp;
            }
            getDelegate().getTextSelectionHelper().updateTextPosition(i2 + AndroidUtilities.m102dp(10) + this.descriptionX, this.descriptionY);
        } else if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_CAPTION) {
            getDelegate().getTextSelectionHelper().updateTextPosition((int) this.captionX, (int) this.captionY);
        } else {
            getDelegate().getTextSelectionHelper().updateTextPosition(this.textX, this.textY);
        }
    }

    public ArrayList<PollButton> getPollButtons() {
        return this.pollButtons;
    }

    public void updatePlayingMessageProgress() {
        String str;
        double d;
        double d2;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        VideoPlayerRewinder videoPlayerRewinder = this.videoPlayerRewinder;
        if (videoPlayerRewinder != null && videoPlayerRewinder.rewindCount != 0 && videoPlayerRewinder.rewindByBackSeek) {
            messageObject.audioProgress = videoPlayerRewinder.getVideoProgress();
        }
        double d3 = 0.0d;
        if (this.documentAttachType == 4) {
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.clearTimestamps();
            }
            if (this.infoLayout == null || !(PhotoViewer.isPlayingMessage(this.currentMessageObject) || MediaController.getInstance().isGoingToShowMessageObject(this.currentMessageObject))) {
                AnimatedFileDrawable animation = this.photoImage.getAnimation();
                if (animation != null) {
                    MessageObject messageObject2 = this.currentMessageObject;
                    int durationMs = animation.getDurationMs() / 1000;
                    messageObject2.audioPlayerDuration = durationMs;
                    d2 = durationMs;
                    MessageObject messageObject3 = this.currentMessageObject;
                    TLRPC$Message tLRPC$Message = messageObject3.messageOwner;
                    if (tLRPC$Message.ttl > 0 && tLRPC$Message.destroyTime == 0 && !messageObject3.needDrawBluredPreview() && this.currentMessageObject.isVideo() && animation.hasBitmap()) {
                        this.delegate.didStartVideoStream(this.currentMessageObject);
                    }
                } else {
                    d2 = 0.0d;
                }
                if (d2 == 0.0d) {
                    d2 = this.currentMessageObject.getDuration();
                }
                if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                    d2 -= this.currentMessageObject.audioProgress * d2;
                } else if (animation != null) {
                    if (d2 != 0.0d) {
                        d2 -= animation.getCurrentProgressMs() / 1000;
                    }
                    if (this.delegate != null && animation.getCurrentProgressMs() >= 3000) {
                        this.delegate.videoTimerReached();
                    }
                }
                if (this.lastTime != d2) {
                    String formatShortDuration = AndroidUtilities.formatShortDuration((int) d2);
                    this.infoWidth = (int) Math.ceil(Theme.chat_infoPaint.measureText(formatShortDuration));
                    this.infoLayout = new StaticLayout(formatShortDuration, Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.lastTime = d2;
                    return;
                }
                return;
            }
            return;
        }
        int i = 0;
        if (this.isRoundVideo) {
            if (this.useSeekBarWaveform) {
                if (!this.seekBarWaveform.isDragging()) {
                    this.seekBarWaveform.setProgress(this.currentMessageObject.audioProgress, true);
                }
            } else {
                if (!this.seekBar.isDragging()) {
                    this.seekBar.setProgress(this.currentMessageObject.audioProgress);
                    this.seekBar.setBufferedProgress(this.currentMessageObject.bufferedProgress);
                }
                this.seekBar.clearTimestamps();
            }
            TLRPC$Document document = this.currentMessageObject.getDocument();
            while (true) {
                if (i >= document.attributes.size()) {
                    d = 0.0d;
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) {
                    d = tLRPC$DocumentAttribute.duration;
                    break;
                }
                i++;
            }
            if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                d = Math.max(0.0d, d - this.currentMessageObject.audioProgressSec);
            }
            if (this.lastTime != d) {
                this.lastTime = d;
                String formatLongDuration = AndroidUtilities.formatLongDuration((int) d);
                this.timeWidthAudio = (int) Math.ceil(Theme.chat_timePaint.measureText(formatLongDuration));
                this.durationLayout = new StaticLayout(formatLongDuration, Theme.chat_timePaint, this.timeWidthAudio, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            float f = this.currentMessageObject.audioProgress;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                this.lastDrawingAudioProgress = f;
                if (f > 0.9f) {
                    this.lastDrawingAudioProgress = 1.0f;
                }
            }
            invalidate();
        } else if (this.documentAttach != null) {
            if (this.useSeekBarWaveform) {
                if (!this.seekBarWaveform.isDragging()) {
                    this.seekBarWaveform.setProgress(this.currentMessageObject.audioProgress, true);
                }
            } else {
                if (!this.seekBar.isDragging()) {
                    this.seekBar.setProgress(this.currentMessageObject.audioProgress);
                    this.seekBar.setBufferedProgress(this.currentMessageObject.bufferedProgress);
                }
                this.seekBar.updateTimestamps(this.currentMessageObject, null);
            }
            if (this.documentAttachType == 3) {
                if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                    while (true) {
                        if (i >= this.documentAttach.attributes.size()) {
                            break;
                        }
                        TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = this.documentAttach.attributes.get(i);
                        if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeAudio) {
                            d3 = tLRPC$DocumentAttribute2.duration;
                            break;
                        }
                        i++;
                    }
                } else {
                    d3 = this.currentMessageObject.audioProgressSec;
                }
                if (this.lastTime != d3) {
                    this.lastTime = d3;
                    String formatLongDuration2 = AndroidUtilities.formatLongDuration((int) d3);
                    this.timeWidthAudio = (int) Math.ceil(Theme.chat_audioTimePaint.measureText(formatLongDuration2));
                    this.durationLayout = new StaticLayout(formatLongDuration2, Theme.chat_audioTimePaint, this.timeWidthAudio, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
            } else {
                double duration = this.currentMessageObject.getDuration();
                int i2 = MediaController.getInstance().isPlayingMessage(this.currentMessageObject) ? this.currentMessageObject.audioProgressSec : 0;
                if (this.miniButtonState >= 0 && this.loadingProgressLayout != null) {
                    i = 1;
                }
                double d4 = i2;
                if (this.lastTime != d4 || i != 0) {
                    if (i == 0) {
                        this.lastTime = d4;
                    }
                    int i3 = (int) duration;
                    String formatShortDuration2 = AndroidUtilities.formatShortDuration(i2, i3);
                    if (i != 0) {
                        formatShortDuration2 = AndroidUtilities.formatLongDuration(i3);
                    }
                    this.durationLayout = new StaticLayout(formatShortDuration2, Theme.chat_audioTimePaint, (int) Math.ceil(Theme.chat_audioTimePaint.measureText(str)), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
            }
            invalidate();
        }
    }

    public void setFullyDraw(boolean z) {
        this.fullyDraw = z;
    }

    public void setParentViewSize(int i, int i2) {
        Theme.MessageDrawable messageDrawable;
        this.parentWidth = i;
        this.parentHeight = i2;
        this.backgroundHeight = i2;
        if (!(this.currentMessageObject != null && hasGradientService() && this.currentMessageObject.shouldDrawWithoutBackground()) && ((messageDrawable = this.currentBackgroundDrawable) == null || messageDrawable.getGradientShader() == null)) {
            return;
        }
        invalidate();
    }

    public void setVisiblePart(int i, int i2, int i3, float f, float f2, int i4, int i5, int i6, int i7) {
        MessageObject.TextLayoutBlock textLayoutBlock;
        this.parentWidth = i4;
        this.parentHeight = i5;
        this.backgroundHeight = i5;
        this.blurredViewTopOffset = i6;
        this.blurredViewBottomOffset = i7;
        if (!this.botButtons.isEmpty() && this.viewTop != f2) {
            invalidate();
        }
        this.viewTop = f2;
        if (i3 != this.parentHeight || f != this.parentViewTopOffset) {
            this.parentViewTopOffset = f;
            this.parentHeight = i3;
        }
        if (this.currentMessageObject != null && hasGradientService() && this.currentMessageObject.shouldDrawWithoutBackground()) {
            invalidate();
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.textLayoutBlocks == null) {
            return;
        }
        int i8 = i - this.textY;
        int i9 = 0;
        for (int i10 = 0; i10 < this.currentMessageObject.textLayoutBlocks.size() && this.currentMessageObject.textLayoutBlocks.get(i10).textYOffset <= i8; i10++) {
            i9 = i10;
        }
        int i11 = 0;
        int i12 = -1;
        int i13 = -1;
        while (i9 < this.currentMessageObject.textLayoutBlocks.size()) {
            float f3 = this.currentMessageObject.textLayoutBlocks.get(i9).textYOffset;
            float f4 = i8;
            if (intersect(f3, textLayoutBlock.height + f3, f4, i8 + i2)) {
                if (i12 == -1) {
                    i12 = i9;
                }
                i11++;
                i13 = i9;
            } else if (f3 > f4) {
                break;
            }
            i9++;
        }
        if (this.lastVisibleBlockNum != i13 || this.firstVisibleBlockNum != i12 || this.totalVisibleBlocksCount != i11) {
            this.lastVisibleBlockNum = i13;
            this.firstVisibleBlockNum = i12;
            this.totalVisibleBlocksCount = i11;
            invalidate();
        } else if (this.animatedEmojiStack != null) {
            for (int i14 = 0; i14 < this.animatedEmojiStack.holders.size(); i14++) {
                AnimatedEmojiSpan.AnimatedEmojiHolder animatedEmojiHolder = this.animatedEmojiStack.holders.get(i14);
                if (animatedEmojiHolder != null && animatedEmojiHolder.skipDraw && !animatedEmojiHolder.outOfBounds((this.parentBoundsTop - getY()) - animatedEmojiHolder.drawingYOffset, (this.parentBoundsBottom - getY()) - animatedEmojiHolder.drawingYOffset)) {
                    invalidate();
                    return;
                }
            }
        }
    }

    public static StaticLayout generateStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, int i2, int i3, int i4) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, i2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        int i5 = 0;
        int i6 = i;
        for (int i7 = 0; i7 < i3; i7++) {
            staticLayout.getLineDirections(i7);
            if (staticLayout.getLineLeft(i7) != BitmapDescriptorFactory.HUE_RED || staticLayout.isRtlCharAt(staticLayout.getLineStart(i7)) || staticLayout.isRtlCharAt(staticLayout.getLineEnd(i7))) {
                i6 = i2;
            }
            int lineEnd = staticLayout.getLineEnd(i7);
            if (lineEnd == charSequence.length()) {
                break;
            }
            int i8 = (lineEnd - 1) + i5;
            if (spannableStringBuilder.charAt(i8) == ' ') {
                spannableStringBuilder.replace(i8, i8 + 1, (CharSequence) "\n");
            } else if (spannableStringBuilder.charAt(i8) != '\n') {
                spannableStringBuilder.insert(i8, (CharSequence) "\n");
                i5++;
            }
            if (i7 == staticLayout.getLineCount() - 1 || i7 == i4 - 1) {
                break;
            }
        }
        int i9 = i6;
        return StaticLayoutEx.createStaticLayout(spannableStringBuilder, textPaint, i9, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.m102dp(1), false, TextUtils.TruncateAt.END, i9, i4, true);
    }

    private void didClickedImage() {
        ChatMessageCellDelegate chatMessageCellDelegate;
        TLRPC$WebPage tLRPC$WebPage;
        boolean z;
        TLRPC$MessageMedia tLRPC$MessageMedia;
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup;
        if (this.currentMessageObject.hasMediaSpoilers() && !this.currentMessageObject.needDrawBluredPreview() && !this.currentMessageObject.isMediaSpoilersRevealed) {
            startRevealMedia(this.lastTouchX, this.lastTouchY);
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        int i = messageObject.type;
        if (i == 20) {
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if (tLRPC$Message == null || (tLRPC$MessageMedia = tLRPC$Message.media) == null || tLRPC$MessageMedia.extended_media == null || (tLRPC$ReplyMarkup = tLRPC$Message.reply_markup) == null) {
                return;
            }
            Iterator<TLRPC$TL_keyboardButtonRow> it = tLRPC$ReplyMarkup.rows.iterator();
            while (it.hasNext()) {
                Iterator<TLRPC$KeyboardButton> it2 = it.next().buttons.iterator();
                if (it2.hasNext()) {
                    this.delegate.didPressExtendedMediaPreview(this, it2.next());
                    return;
                }
            }
        } else if (i == 1 || messageObject.isAnyKindOfSticker()) {
            int i2 = this.buttonState;
            if (i2 == -1) {
                this.delegate.didPressImage(this, this.lastTouchX, this.lastTouchY);
            } else if (i2 == 0) {
                didPressButton(true, false);
            }
        } else {
            MessageObject messageObject2 = this.currentMessageObject;
            int i3 = messageObject2.type;
            if (i3 == 12) {
                long j = MessageObject.getMedia(messageObject2.messageOwner).user_id;
                this.delegate.didPressUserAvatar(this, j != 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)) : null, this.lastTouchX, this.lastTouchY);
            } else if (i3 == 5) {
                if (this.buttonState != -1) {
                    didPressButton(true, false);
                } else if (!MediaController.getInstance().isPlayingMessage(this.currentMessageObject) || MediaController.getInstance().isMessagePaused()) {
                    this.delegate.needPlayMessage(this.currentMessageObject, false);
                } else {
                    MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject);
                }
            } else if (i3 == 8) {
                int i4 = this.buttonState;
                if (i4 == -1 || (i4 == 1 && this.canStreamVideo && this.autoPlayingMedia)) {
                    this.delegate.didPressImage(this, this.lastTouchX, this.lastTouchY);
                } else if (i4 == 2 || i4 == 0) {
                    didPressButton(true, false);
                }
            } else {
                int i5 = this.documentAttachType;
                if (i5 == 4) {
                    int i6 = this.buttonState;
                    if (i6 == -1 || ((z = this.drawVideoImageButton) && (this.autoPlayingMedia || (SharedConfig.streamMedia && this.canStreamVideo)))) {
                        this.delegate.didPressImage(this, this.lastTouchX, this.lastTouchY);
                    } else if (z) {
                        didPressButton(true, true);
                    } else if (i6 == 0 || i6 == 3) {
                        didPressButton(true, false);
                    }
                } else if (i3 == 4 || i3 == 23 || i3 == 24) {
                    this.delegate.didPressImage(this, this.lastTouchX, this.lastTouchY);
                } else if (i5 == 1) {
                    if (this.buttonState == -1) {
                        this.delegate.didPressImage(this, this.lastTouchX, this.lastTouchY);
                    }
                } else if (i5 == 2) {
                    if (this.buttonState != -1 || (tLRPC$WebPage = MessageObject.getMedia(messageObject2.messageOwner).webpage) == null) {
                        return;
                    }
                    String str = tLRPC$WebPage.embed_url;
                    if (str != null && str.length() != 0) {
                        this.delegate.needOpenWebView(this.currentMessageObject, tLRPC$WebPage.embed_url, tLRPC$WebPage.site_name, tLRPC$WebPage.description, tLRPC$WebPage.url, tLRPC$WebPage.embed_width, tLRPC$WebPage.embed_height);
                    } else {
                        Browser.openUrl(getContext(), tLRPC$WebPage.url);
                    }
                } else if (this.hasInvoicePreview) {
                    if (this.buttonState == -1) {
                        this.delegate.didPressImage(this, this.lastTouchX, this.lastTouchY);
                    }
                } else if (Build.VERSION.SDK_INT < 26 || (chatMessageCellDelegate = this.delegate) == null) {
                } else {
                    if (i3 == 16) {
                        chatMessageCellDelegate.didLongPress(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        chatMessageCellDelegate.didPressOther(this, this.otherX, this.otherY);
                    }
                }
            }
        }
    }

    private void updateSecretTimeText(MessageObject messageObject) {
        CharSequence secretTimeString;
        if (messageObject == null || !messageObject.needDrawBluredPreview() || (secretTimeString = messageObject.getSecretTimeString()) == null) {
            return;
        }
        if (secretTimeString instanceof String) {
            int ceil = (int) Math.ceil(Theme.chat_infoPaint.measureText((String) secretTimeString));
            this.infoWidth = ceil;
            this.infoLayout = new StaticLayout(TextUtils.ellipsize(secretTimeString, Theme.chat_infoPaint, ceil, TextUtils.TruncateAt.END), Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } else {
            StaticLayout staticLayout = new StaticLayout(secretTimeString, Theme.chat_infoBoldPaint, getMeasuredWidth() > 0 ? getMeasuredWidth() : 9999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.infoLayout = staticLayout;
            this.infoWidth = staticLayout.getLineCount() > 0 ? (int) this.infoLayout.getLineWidth(0) : 0;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPhotoDataChanged(org.telegram.messenger.MessageObject r25) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.isPhotoDataChanged(org.telegram.messenger.MessageObject):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRepliesCount() {
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.messages.isEmpty()) {
            return this.currentMessagesGroup.messages.get(0).getRepliesCount();
        }
        return this.currentMessageObject.getRepliesCount();
    }

    private ArrayList<TLRPC$Peer> getRecentRepliers() {
        TLRPC$MessageReplies tLRPC$MessageReplies;
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.messages.isEmpty() && (tLRPC$MessageReplies = this.currentMessagesGroup.messages.get(0).messageOwner.replies) != null) {
            return tLRPC$MessageReplies.recent_repliers;
        }
        TLRPC$MessageReplies tLRPC$MessageReplies2 = this.currentMessageObject.messageOwner.replies;
        if (tLRPC$MessageReplies2 != null) {
            return tLRPC$MessageReplies2.recent_repliers;
        }
        return null;
    }

    public void updateAnimatedEmojis() {
        if (this.imageReceiversAttachState) {
            boolean z = false;
            int cacheTypeForEnterView = this.currentMessageObject.wasJustSent ? AnimatedEmojiDrawable.getCacheTypeForEnterView() : 0;
            StaticLayout staticLayout = this.captionLayout;
            if (staticLayout != null) {
                this.animatedEmojiStack = AnimatedEmojiSpan.update(cacheTypeForEnterView, (View) this, false, this.animatedEmojiStack, staticLayout);
                return;
            }
            ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
            if (chatMessageCellDelegate == null || !chatMessageCellDelegate.canDrawOutboundsContent()) {
                z = true;
            }
            this.animatedEmojiStack = AnimatedEmojiSpan.update(cacheTypeForEnterView, this, z, this.animatedEmojiStack, this.currentMessageObject.textLayoutBlocks);
        }
    }

    private void updateCaptionSpoilers() {
        this.captionSpoilersPool.addAll(this.captionSpoilers);
        this.captionSpoilers.clear();
        if (this.captionLayout == null || getMessageObject().isSpoilersRevealed) {
            return;
        }
        SpoilerEffect.addSpoilers(this, this.captionLayout, -1, this.captionOffsetX + this.captionWidth, this.captionSpoilersPool, this.captionSpoilers);
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isUserDataChanged() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.isUserDataChanged():boolean");
    }

    public ImageReceiver getPhotoImage() {
        return this.photoImage;
    }

    public ImageReceiver getBlurredPhotoImage() {
        return this.blurredPhotoImage;
    }

    public int getNoSoundIconCenterX() {
        return this.noSoundCenterX;
    }

    public int getForwardNameCenterX() {
        float f;
        TLRPC$User tLRPC$User = this.currentUser;
        if (tLRPC$User != null && tLRPC$User.f1762id == 0) {
            f = this.avatarImage.getCenterX();
        } else {
            f = this.forwardNameX + this.forwardNameCenterX;
        }
        return (int) f;
    }

    public int getChecksX() {
        return this.layoutWidth - AndroidUtilities.m103dp(SharedConfig.bubbleRadius >= 10 ? 27.3f : 25.3f);
    }

    public int getChecksY() {
        float f;
        int intrinsicHeight;
        if (this.currentMessageObject.shouldDrawWithoutBackground()) {
            f = this.drawTimeY;
            intrinsicHeight = getThemedDrawable("drawableMsgStickerCheck").getIntrinsicHeight();
        } else {
            f = this.drawTimeY;
            intrinsicHeight = Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight();
        }
        return (int) (f - intrinsicHeight);
    }

    public TLRPC$User getCurrentUser() {
        return this.currentUser;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.startSpoilers);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.stopSpoilers);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userInfoDidLoad);
        cancelShakeAnimation();
        CheckBoxBase checkBoxBase = this.checkBox;
        if (checkBoxBase != null) {
            checkBoxBase.onDetachedFromWindow();
        }
        CheckBoxBase checkBoxBase2 = this.mediaCheckBox;
        if (checkBoxBase2 != null) {
            checkBoxBase2.onDetachedFromWindow();
        }
        if (this.pollCheckBox != null) {
            int i = 0;
            while (true) {
                CheckBoxBase[] checkBoxBaseArr = this.pollCheckBox;
                if (i >= checkBoxBaseArr.length) {
                    break;
                }
                checkBoxBaseArr[i].onDetachedFromWindow();
                i++;
            }
        }
        this.attachedToWindow = false;
        this.avatarImage.onDetachedFromWindow();
        checkImageReceiversAttachState();
        if (this.addedForTest && this.currentUrl != null && this.currentWebFile != null) {
            ImageLoader.getInstance().removeTestWebFile(this.currentUrl);
            this.addedForTest = false;
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        if (getDelegate() != null && getDelegate().getTextSelectionHelper() != null) {
            getDelegate().getTextSelectionHelper().onChatMessageCellDetached(this);
        }
        this.transitionParams.onDetach();
        if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
            Theme.getCurrentAudiVisualizerDrawable().setParentView(null);
        }
        ValueAnimator valueAnimator = this.statusDrawableAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.statusDrawableAnimator.cancel();
        }
        this.reactionsLayoutInBubble.onDetachFromWindow();
        this.statusDrawableAnimationInProgress = false;
        FlagSecureReason flagSecureReason = this.flagSecure;
        if (flagSecureReason != null) {
            flagSecureReason.detach();
        }
        MessageTopicButton messageTopicButton = this.topicButton;
        if (messageTopicButton != null) {
            messageTopicButton.onDetached(this);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.currentNameStatusDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        SpoilerEffect2 spoilerEffect2 = this.mediaSpoilerEffect2;
        if (spoilerEffect2 != null) {
            spoilerEffect2.detach(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.startSpoilers);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.stopSpoilers);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.userInfoDidLoad);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            messageObject.animateComments = false;
        }
        MessageObject messageObject2 = this.messageObjectToSet;
        if (messageObject2 != null) {
            messageObject2.animateComments = false;
            setMessageContent(messageObject2, this.groupedMessagesToSet, this.bottomNearToSet, this.topNearToSet);
            this.messageObjectToSet = null;
            this.groupedMessagesToSet = null;
        }
        CheckBoxBase checkBoxBase = this.checkBox;
        if (checkBoxBase != null) {
            checkBoxBase.onAttachedToWindow();
        }
        CheckBoxBase checkBoxBase2 = this.mediaCheckBox;
        if (checkBoxBase2 != null) {
            checkBoxBase2.onAttachedToWindow();
        }
        if (this.pollCheckBox != null) {
            int i = 0;
            while (true) {
                CheckBoxBase[] checkBoxBaseArr = this.pollCheckBox;
                if (i >= checkBoxBaseArr.length) {
                    break;
                }
                checkBoxBaseArr[i].onAttachedToWindow();
                i++;
            }
        }
        this.attachedToWindow = true;
        float f = BitmapDescriptorFactory.HUE_RED;
        this.animationOffsetX = BitmapDescriptorFactory.HUE_RED;
        this.slidingOffsetX = BitmapDescriptorFactory.HUE_RED;
        this.checkBoxTranslation = 0;
        updateTranslation();
        this.avatarImage.setParentView((View) getParent());
        this.avatarImage.onAttachedToWindow();
        checkImageReceiversAttachState();
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 != null) {
            setAvatar(messageObject3);
        }
        int i2 = this.documentAttachType;
        if (i2 == 4 && this.autoPlayingMedia) {
            boolean isPlayingMessage = MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
            this.animatingNoSoundPlaying = isPlayingMessage;
            this.animatingNoSoundProgress = isPlayingMessage ? 0.0f : 1.0f;
            this.animatingNoSound = 0;
        } else {
            this.animatingNoSoundPlaying = false;
            this.animatingNoSoundProgress = BitmapDescriptorFactory.HUE_RED;
            this.animatingDrawVideoImageButtonProgress = ((i2 == 4 || i2 == 2) && this.drawVideoSize) ? 1.0f : 0.0f;
        }
        if (getDelegate() != null && getDelegate().getTextSelectionHelper() != null) {
            getDelegate().getTextSelectionHelper().onChatMessageCellAttached(this);
        }
        if (this.documentAttachType == 5) {
            if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                f = 1.0f;
            }
            this.toSeekBarProgress = f;
        }
        this.reactionsLayoutInBubble.onAttachToWindow();
        FlagSecureReason flagSecureReason = this.flagSecure;
        if (flagSecureReason != null) {
            flagSecureReason.attach();
        }
        updateFlagSecure();
        MessageObject messageObject4 = this.currentMessageObject;
        if (messageObject4 != null && messageObject4.type == 20 && this.unlockLayout != null) {
            invalidate();
        }
        MessageTopicButton messageTopicButton = this.topicButton;
        if (messageTopicButton != null) {
            messageTopicButton.onAttached(this);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.currentNameStatusDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
        SpoilerEffect2 spoilerEffect2 = this.mediaSpoilerEffect2;
        if (spoilerEffect2 != null) {
            if (spoilerEffect2.destroyed) {
                this.mediaSpoilerEffect2 = SpoilerEffect2.getInstance(this);
            } else {
                spoilerEffect2.attach(this);
            }
        }
    }

    private void checkImageReceiversAttachState(boolean z) {
        boolean z2 = this.attachedToWindow;
        boolean z3 = this.visibleOnScreen || !this.shouldCheckVisibleOnScreen;
        if (z || z2 != this.imageReceiversAttachState) {
            this.imageReceiversAttachState = z2;
            if (z || z2) {
                this.radialProgress.onAttachedToWindow();
                this.videoRadialProgress.onAttachedToWindow();
                if (this.pollAvatarImages != null) {
                    int i = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr = this.pollAvatarImages;
                        if (i >= imageReceiverArr.length) {
                            break;
                        }
                        imageReceiverArr[i].onAttachedToWindow();
                        i++;
                    }
                }
                if (this.commentAvatarImages != null) {
                    int i2 = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr2 = this.commentAvatarImages;
                        if (i2 >= imageReceiverArr2.length) {
                            break;
                        }
                        imageReceiverArr2[i2].onAttachedToWindow();
                        i2++;
                    }
                }
                this.replyImageReceiver.onAttachedToWindow();
                this.locationImageReceiver.onAttachedToWindow();
                this.blurredPhotoImage.onAttachedToWindow();
                if (this.photoImage.onAttachedToWindow()) {
                    if (this.drawPhotoImage) {
                        updateButtonState(false, false, false);
                    }
                } else {
                    updateButtonState(false, false, false);
                }
                this.animatedEmojiReplyStack = AnimatedEmojiSpan.update(0, (View) this, false, this.animatedEmojiReplyStack, this.replyTextLayout);
                this.animatedEmojiDescriptionStack = AnimatedEmojiSpan.update(0, (View) this, false, this.animatedEmojiDescriptionStack, this.descriptionLayout);
                updateAnimatedEmojis();
            } else {
                this.radialProgress.onDetachedFromWindow();
                this.videoRadialProgress.onDetachedFromWindow();
                if (this.pollAvatarImages != null) {
                    int i3 = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr3 = this.pollAvatarImages;
                        if (i3 >= imageReceiverArr3.length) {
                            break;
                        }
                        imageReceiverArr3[i3].onDetachedFromWindow();
                        i3++;
                    }
                }
                if (this.commentAvatarImages != null) {
                    int i4 = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr4 = this.commentAvatarImages;
                        if (i4 >= imageReceiverArr4.length) {
                            break;
                        }
                        imageReceiverArr4[i4].onDetachedFromWindow();
                        i4++;
                    }
                }
                this.replyImageReceiver.onDetachedFromWindow();
                this.locationImageReceiver.onDetachedFromWindow();
                this.photoImage.onDetachedFromWindow();
                this.blurredPhotoImage.onDetachedFromWindow();
                AnimatedEmojiSpan.release(this, this.animatedEmojiDescriptionStack);
                AnimatedEmojiSpan.release(this, this.animatedEmojiReplyStack);
                AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
            }
        }
        if (z3 != this.imageReceiversVisibleState) {
            this.imageReceiversVisibleState = z3;
            if (z3) {
                this.photoImage.setFileLoadingPriority(1);
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject != null && (this.isRoundVideo || messageObject.isVideo())) {
                    checkVideoPlayback(true, null);
                }
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2 == null || messageObject2.mediaExists) {
                    return;
                }
                int canDownloadMedia = DownloadController.getInstance(this.currentAccount).canDownloadMedia(this.currentMessageObject.messageOwner);
                TLRPC$Document document = this.currentMessageObject.getDocument();
                if (MessageObject.isStickerDocument(document) || MessageObject.isAnimatedStickerDocument(document, true) || MessageObject.isGifDocument(document) || MessageObject.isRoundVideoDocument(document)) {
                    return;
                }
                TLRPC$PhotoSize closestPhotoSizeWithSize = document == null ? FileLoader.getClosestPhotoSizeWithSize(this.currentMessageObject.photoThumbs, AndroidUtilities.getPhotoSize()) : null;
                int i5 = 2;
                if (canDownloadMedia == 2 || (canDownloadMedia == 1 && this.currentMessageObject.isVideo())) {
                    if (canDownloadMedia != 2 && document != null && !this.currentMessageObject.shouldEncryptPhotoOrVideo() && this.currentMessageObject.canStreamVideo()) {
                        FileLoader.getInstance(this.currentAccount).loadFile(document, this.currentMessageObject, 1, 0);
                    }
                } else if (canDownloadMedia != 0) {
                    if (document != null) {
                        FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
                        MessageObject messageObject3 = this.currentMessageObject;
                        if (!MessageObject.isVideoDocument(document) || !this.currentMessageObject.shouldEncryptPhotoOrVideo()) {
                            i5 = 0;
                        }
                        fileLoader.loadFile(document, messageObject3, 1, i5);
                    } else if (closestPhotoSizeWithSize != null) {
                        FileLoader fileLoader2 = FileLoader.getInstance(this.currentAccount);
                        ImageLocation forObject = ImageLocation.getForObject(closestPhotoSizeWithSize, this.currentMessageObject.photoThumbsObject);
                        MessageObject messageObject4 = this.currentMessageObject;
                        fileLoader2.loadFile(forObject, messageObject4, null, 1, messageObject4.shouldEncryptPhotoOrVideo() ? 2 : 0);
                    }
                }
                updateButtonState(false, false, false);
                return;
            }
            this.photoImage.setFileLoadingPriority(0);
            cancelLoading(this.currentMessageObject);
        }
    }

    private void cancelLoading(MessageObject messageObject) {
        if (messageObject == null || messageObject.mediaExists || messageObject.putInDownloadsStore || DownloadController.getInstance(this.currentAccount).isDownloading(messageObject.messageOwner.f1624id) || PhotoViewer.getInstance().isVisible()) {
            return;
        }
        TLRPC$Document document = messageObject.getDocument();
        boolean z = true;
        if (!MessageObject.isStickerDocument(document) && !MessageObject.isAnimatedStickerDocument(document, true) && !MessageObject.isGifDocument(document) && !MessageObject.isRoundVideoDocument(document)) {
            z = false;
        }
        if (z) {
            return;
        }
        if (document != null) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(document);
            return;
        }
        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
        if (closestPhotoSizeWithSize != null) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(closestPhotoSizeWithSize);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:1150|1151|1152|1153|(5:1154|1155|(3:1158|1159|1156)|1160|1161)|1162|1163|(1:1165)(1:1197)|1166|(4:1169|(2:1171|1172)(2:1174|(2:1176|1177)(2:1178|1179))|1173|1167)|1180|(1:1182)(1:1195)|1183|(1:1194)|1189|(2:1191|(1:1193))) */
    /* JADX WARN: Can't wrap try/catch for region: R(180:1|(1:4877)|7|(1:9)(1:4876)|10|(1:12)(1:4875)|13|(1:15)(1:4874)|16|(1:20)(1:4873)|21|(26:25|(2:27|(1:33)(1:35))|36|37|(1:45)(1:4871)|46|(1:48)(1:4854)|(1:52)|53|(1:74)(1:4853)|(1:78)|(9:82|(1:84)(1:4851)|(1:90)(1:4850)|(1:94)|95|(2:97|(3:99|(1:101)|102))|103|(5:107|(1:111)|112|(1:116)(1:118)|117)|(3:135|(1:(2:147|148)(2:137|(1:139)(1:140)))|(3:142|(1:144)(1:146)|145)))(1:4852)|(4:151|(1:153)(1:158)|154|(1:156)(1:157))|159|(1:173)(105:261|(1:4849)|264|(2:4846|(1:4848))(2:266|267)|268|(5:272|(1:278)(1:4842)|279|(1:285)(1:4841)|286)(1:4843)|287|(1:297)(1:4840)|298|(1:300)(1:4839)|301|(1:309)(1:4838)|310|(1:322)(1:4837)|323|(1:331)(1:4836)|332|(1:334)(1:4835)|335|(1:341)(1:4834)|342|(1:346)(1:4833)|347|(1:353)(1:4832)|354|(6:356|(1:364)(1:4830)|365|(1:4829)|376|(1:4825)(2:378|379))(1:4831)|380|(1:382)|383|(2:4810|(2:4811|(1:4820)(3:4813|(2:4815|4816)(2:4818|4819)|4817)))(0)|385|386|(1:4807)|390|(1:4806)|392|393|(1:395)|396|(1:400)(1:4801)|401|(1:403)|404|(1:4800)|407|408|(3:410|411|(4:417|(1:419)(1:4792)|420|(1:422)(3:4787|(1:4789)(1:4791)|4790))(1:4793))|(2:424|(1:430))|431|(1:435)(1:4786)|436|(4:439|(1:441)(2:4777|(1:4779))|442|(62:446|(1:448)|449|(4:451|(1:(1:454)(1:4760))(1:(1:4762)(1:4763))|455|(57:460|(2:461|(1:483)(2:(3:(1:465)|466|467)(7:469|(2:471|(1:473)(5:481|475|(1:477)(1:480)|478|479))(1:482)|474|475|(0)(0)|478|479)|468))|484|485|(3:4746|(1:4748)(1:4750)|4749)(3:487|488|(1:490))|491|492|(35:494|(3:(1:(1:(1:(2:502|(35:504|(1:510)(1:2611)|511|(3:515|(1:525)(1:523)|524)|530|(1:532)(1:2608)|533|(1:540)|541|(2:543|(3:545|(1:547)(1:2599)|548)(3:2600|(1:2604)(1:2606)|2605))(1:2607)|549|(2:551|(3:553|(2:555|(83:557|(3:559|(2:561|(82:571|(1:573)(1:2044)|574|575|(2:577|(1:579))(6:2029|(1:2033)|2034|(1:2036)|2037|(1:2039))|580|(68:583|(1:(1:587))(1:2027)|588|589|(1:591)|592|(4:594|(1:596)|597|(2:(1:602)(3:1998|(4:2001|(3:2003|(1:2008)(2:2005|2006)|2007)|2009|2010)|2000)|603)(3:2011|(1:2015)(3:2016|(1:2018)|2000)|603))(3:2019|(1:2023)(1:2025)|2024)|604|(1:608)|609|(2:613|(1:616)(1:617))|(1:629)|630|(1:634)|(5:1976|(3:1979|(1:1983)(3:1985|(2:1987|(1:1989)(2:1991|(1:1993)))(1:1994)|1990)|1977)|1996|1997|1990)|(1:1971)|639|(1:643)|644|(1:1970)|648|(1:654)|655|(1:657)(4:1961|(3:1964|(1:1967)(1:1966)|1962)|1969|1968)|658|(1:660)|661|(1:663)(1:1960)|664|(1:666)(1:1959)|667|(1:669)|670|(3:672|(3:676|(1:678)(1:680)|679)|681)(5:1950|(1:1952)(1:1958)|1953|(1:1955)(1:1957)|1956)|682|(10:684|(1:686)(1:1773)|687|(1:689)(1:1772)|690|(3:692|(2:694|(1:696))|(4:699|700|(1:702)|703))|1771|700|(0)|703)(15:1774|(4:1780|(4:1783|(2:1785|(1:(2:1788|1789)(1:1791))(4:1793|(1:1795)(1:1798)|1796|1797))(4:1799|(1:1801)(1:1804)|1802|1803)|1790|1781)|1805|1792)|1810|1811|(1:1813)|1814|(1:1816)(3:1944|(2:1945|(1:1948)(1:1947))|1949)|1817|(1:1821)(2:1934|(1:1943)(3:1936|1937|(1:1939)(1:1940)))|1822|(1:1824)(1:1933)|1825|(3:1833|(4:1835|(11:1839|(15:1895|(1:1899)(2:1927|(1:1929))|1900|(2:1901|(2:1925|1926)(3:1903|(2:1905|(1:(2:1908|1909)(1:1911))(4:1913|(1:1915)(1:1918)|1916|1917))(4:1919|(1:1921)(1:1924)|1922|1923)|1910))|1912|1843|1844|(1:1848)(4:1884|(1:1888)(2:1891|(1:1893)(2:1894|1890))|1889|1890)|1849|(1:1859)|1860|(1:1862)(1:1883)|1863|(1:1882)|1869)|1841|1842|1843|1844|(10:1846|1848|1849|(5:1851|1853|1855|1857|1859)|1860|(0)(0)|1863|(2:1865|1867)|1882|1869)|1884|(12:1886|1888|1889|1890|1849|(0)|1860|(0)(0)|1863|(0)|1882|1869)|1891|(0)(0))(1:1931)|(2:1873|(2:1875|1876)(2:1878|1879))|1877)|1932)|1831|1832)|704|(8:1698|1699|(1:1701)(1:1768)|1702|1703|(2:1764|1765)(1:1705)|1706|(1:1708)(40:(2:1710|1711)(5:1742|1743|(1:(2:1762|1763)(6:1745|1746|1747|1748|1749|(1:1751)(1:1752)))|1754|(1:1756)(1:1757))|1712|(23:1737|1738|707|(4:1656|(1:1658)(1:1697)|1659|(8:1661|(2:1663|(1:1665))(1:1696)|1666|(1:1668)(1:1695)|1669|(1:1675)|1676|(2:1678|(3:1682|(2:1684|(1:1686))|1687)(1:(4:1689|(1:1691)|1692|(1:1694))))))|709|710|(3:1652|(1:1654)|1655)|1642|(2:1644|(1:1646))|(2:1627|(3:1631|(1:1633)(2:1635|(1:1637))|1634)(3:1638|(1:1640)|1641))(3:716|717|(2:721|(1:723)(1:1618)))|724|(1:730)(1:1617)|731|(1:1616)(1:733)|734|(1:739)|740|(8:1585|(2:1587|(1:1589))|1591|(2:1595|(2:1603|(1:1605)(6:1606|(1:1610)(1:1612)|1611|744|(4:746|(1:748)(2:1414|(2:1416|(2:1418|(8:1420|(1:1422)(2:1511|(2:1513|(3:1518|(1:1520)(1:1522)|1521)(4:(1:1532)(1:1524)|1525|(1:1527)(1:1529)|1528))(1:1533))|1423|(2:1425|(1:1427)(1:1509))(1:1510)|1428|(1:1432)(1:1508)|1433|(1:(3:1460|(1:1462)|(5:1469|(1:1471)|1472|(1:1474)(1:1476)|1475)(2:1477|(1:1482)(1:1483)))(1:(1:(5:1490|(1:1492)|1493|(1:1495)(1:1497)|1496)(1:1498))(3:1499|(1:1501)(1:1503)|1502)))(2:1441|(1:1447)(2:(1:1451)|1452)))(2:1534|(2:1536|(1:1538)(3:1539|(1:1541)(1:1564)|(2:1549|(1:1553)(3:1554|(1:1556)(1:1558)|1557))(3:1559|(1:1561)(1:1563)|1562)))(1:1565)))(3:1566|(1:1568)(1:1570)|1569))(1:1571))|749|(1:751)(2:1410|(1:1412)(1:1413)))(2:1572|(1:1578)(2:1579|(2:(1:1583)|1584)))|752)))|743|744|(0)(0)|752)|742|743|744|(0)(0)|752)|1715|1716|1717|(32:1732|1723|1724|707|(0)|709|710|(1:712)(4:1647|1652|(0)|1655)|1642|(0)|(20:1627|(19:1629|1631|(0)(0)|1634|724|(15:726|728|730|731|(11:1614|1616|734|(2:737|739)|740|(0)|742|743|744|(0)(0)|752)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1638|(0)|1641|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|716|717|(18:719|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1720|(31:1727|1728|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1723|1724|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752))|706|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)(1:2028)|2026|589|(0)|592|(0)(0)|604|(2:606|608)|609|(4:611|613|(1:616)|617)|(4:619|621|625|629)|630|(2:632|634)|(0)|1972|1974|1976|(1:1977)|1996|1997|1990|(0)|1971|639|(2:641|643)|644|(1:646)|1970|648|(3:650|652|654)|655|(0)(0)|658|(0)|661|(0)(0)|664|(0)(0)|667|(0)|670|(0)(0)|682|(0)(0)|704|(0)|706|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)(1:2045))(1:2048)|2046)(1:2049)|2047|575|(0)(0)|580|(78:583|(76:(0)|2026|589|(0)|592|(0)(0)|604|(0)|609|(0)|(0)|630|(0)|(0)|1972|1974|1976|(1:1977)|1996|1997|1990|(0)|1971|639|(0)|644|(0)|1970|648|(0)|655|(0)(0)|658|(0)|661|(0)(0)|664|(0)(0)|667|(0)|670|(0)(0)|682|(0)(0)|704|(0)|706|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|2027|588|589|(0)|592|(0)(0)|604|(0)|609|(0)|(0)|630|(0)|(0)|1972|1974|1976|(1:1977)|1996|1997|1990|(0)|1971|639|(0)|644|(0)|1970|648|(0)|655|(0)(0)|658|(0)|661|(0)(0)|664|(0)(0)|667|(0)|670|(0)(0)|682|(0)(0)|704|(0)|706|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|2028|2026|589|(0)|592|(0)(0)|604|(0)|609|(0)|(0)|630|(0)|(0)|1972|1974|1976|(1:1977)|1996|1997|1990|(0)|1971|639|(0)|644|(0)|1970|648|(0)|655|(0)(0)|658|(0)|661|(0)(0)|664|(0)(0)|667|(0)|670|(0)(0)|682|(0)(0)|704|(0)|706|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)(30:2050|(1:2052)(1:2236)|2053|(3:2222|(4:2225|(2:2227|(1:2229)(2:2230|2231))(2:2233|2234)|2232|2223)|2235)|2055|2056|(1:2221)|2060|(2:2062|(1:2064))|2065|(1:2067)(1:2218)|2068|(4:(1:2073)|2074|(1:2076)(1:2216)|2077)(1:2217)|2078|(1:2082)(1:2215)|2083|(1:2085)(1:2214)|2086|(4:2088|(3:2090|(3:2095|(1:2097)(1:2178)|2098)(1:2179)|2099)(4:2180|(2:2182|(1:2186)(5:2188|(3:2190|(1:2192)(1:2198)|2193)(1:2199)|2194|(1:2196)|2197))(1:2200)|2187|2101)|2100|2101)(3:2201|(3:2209|(1:2211)(1:2213)|2212)(1:2203)|2204)|2102|(1:2106)|2107|(1:2109)(2:2138|(2:2140|(2:2142|(2:2144|(1:2146)(5:2147|(1:2149)(1:2155)|2150|(1:2152)(1:2154)|2153))(5:2156|(1:2158)(1:2164)|2159|(1:2161)(1:2163)|2162))(3:2165|(1:2167)(1:2169)|2168))(5:2170|(1:2172)|2173|(1:2175)(1:2177)|2176))|2110|(1:2112)(4:2127|(1:2133)(1:2137)|2134|(1:2136))|2113|(1:2115)|2116|(1:2124)|2125))(7:2237|(1:2239)(1:2260)|2240|(1:2242)(3:2255|(1:2257)(1:2259)|2258)|2243|(1:2254)|2249)|2126)(17:2261|(15:2265|(2:2267|(1:2269))(1:2424)|2270|(2:2272|(5:2274|(3:2276|(1:2278)(1:2346)|2279)(3:2347|(1:2349)(1:2351)|2350)|2280|(1:2345)|2284)(7:2352|(3:2354|(1:2356)(1:2382)|2357)(3:2383|(1:2385)(1:2387)|2386)|2358|(1:2381)|2362|(1:2364)(5:2366|(1:2368)(1:2380)|(1:2370)(3:2375|(1:2377)|2378)|(1:2372)(1:2374)|2373)|2365))(11:2388|(3:2390|(1:2392)(1:2418)|2393)(3:2419|(1:2421)(1:2423)|2422)|2394|(1:2417)|2398|(1:2400)(1:2416)|2401|(2:2403|(1:2405)(3:2411|(1:2413)|2414))(1:2415)|2406|(1:2408)(1:2410)|2409)|2285|(1:2287)(2:2335|(2:2337|(2:2339|(1:2341)(1:2342))(1:2343))(1:2344))|2288|(3:2290|(1:2292)(1:2294)|2293)|2295|(3:2299|(1:2301)(1:2303)|2302)|2304|(3:2306|(4:2308|(1:2311)(1:2326)|2312|(1:2314))(2:2327|(3:2329|(1:2331)(1:2333)|2332))|2315)(1:2334)|2316|(3:2320|(1:2322)|2323)(1:2325)|2324)|2425|2270|(0)(0)|2285|(0)(0)|2288|(0)|2295|(4:2297|2299|(0)(0)|2302)|2304|(0)(0)|2316|(5:2318|2320|(0)|2323|2324)|2325|2324))(20:2426|(3:2428|(1:2430)(1:2593)|2431)(3:2594|(1:2596)(1:2598)|2597)|2432|(1:2434)|2435|(6:2573|2574|2575|2576|(1:2578)(4:2583|2584|2585|2586)|2579)(1:2437)|2438|(1:2440)(3:2561|(3:2563|(2:2565|2566)(2:2568|2569)|2567)|2570)|2441|(3:2443|(3:2445|(2:2447|2448)(2:2450|2451)|2449)|2452)|2453|(3:2455|(3:2457|(1:2462)(2:2459|2460)|2461)|2463)|2464|(2:2466|(1:2470))|(1:2474)|2475|(4:2477|(1:2481)|2482|(2:2486|(3:2490|(1:(1:2493))(1:2495)|2494)))(1:2560)|2496|(11:2500|(1:2502)|2503|(1:2511)(2:2539|(1:2549)(2:2552|(1:2558)))|2512|(1:2516)|2517|(1:2533)|2534|(1:2536)|2537)(1:2559)|2538)|753|(1:755)(1:1409)|756|(1:764)|765|(2:773|(1:775))(3:1399|(1:1408)|1401)|776|(1:778)|779|(1:781)(2:1392|(1:1398))|782|(1:784)|785|(4:789|(1:791)(1:1377)|792|(1:794))(3:1378|(2:1382|(1:1390))|1391)|795|(1:797)(6:1357|(3:1359|(1:1361)(1:1363)|1362)|1364|(3:1368|(1:1370)(1:1372)|1371)|1373|(1:1375)(1:1376))|798|(2:800|(4:804|(7:806|(1:808)(1:818)|809|(1:811)(1:817)|812|(1:814)(1:816)|815)|819|(3:821|(1:823)(1:825)|824)))|826|(1:830)(1:1356)|831|(2:835|(1:837))(2:1353|(1:1355))|838)(53:2612|(1:2614)|2615|(1:2617)(1:2915)|2618|(1:2620)(1:2914)|2621|(1:2623)|2624|(1:(2:2912|2913)(2:2626|(1:2628)(2:2629|2630)))|2631|(2:2633|(2:2635|(1:2637)(1:2906))(2:2907|(1:2909)(1:2910)))(1:2911)|2638|(1:(1:2643)(1:(1:2647)(1:2648)))|2649|(1:2651)(1:2905)|2652|(6:2654|(1:2658)(1:2681)|2659|(3:2661|(1:2663)(1:2675)|2664)(3:2676|(1:2678)(1:2680)|2679)|2665|(3:2669|(1:2671)(1:2673)|2672)(1:2674))|2682|(1:2688)|2689|(1:2691)|2692|(2:2694|(2:2696|(2:2697|(1:2700)(1:2699)))(0))(2:2875|(2:2876|(1:2894)(3:2878|(4:2881|(1:2883)(1:2887)|2884|2885)(2:2888|(1:2891)(2:2892|2893))|2886)))|2701|(1:2707)|2708|(1:2714)(1:2874)|2715|(1:2717)(5:2854|(3:2856|(1:2862)(1:2864)|2863)|2865|(3:2869|(1:2871)|2872)|2873)|2718|(1:2720)(1:2853)|2721|(1:2723)(1:2852)|2724|(1:2726)(1:2851)|2727|(8:2729|(2:2731|(1:(1:2754)(2:2733|(1:2735)(5:2736|2737|(2:2741|2742)(1:2753)|(2:2744|(1:2748))(1:2750)|2749))))(0)|(2:2771|(1:(1:2778)(2:2773|(1:2775)(2:2776|2777))))(0)|2756|(1:2762)(1:2770)|2763|(2:2765|2766)(2:2768|2769)|2767)|2779|(3:2782|(1:2784)|2785)|2786|(3:2788|(2:2790|2791)(2:2793|2794)|2792)|2795|2796|(1:2800)(3:2846|(1:2848)|2850)|2801|(1:2803)|2804|(7:2822|(3:(1:(2:2827|2828)(2:2830|2831))(2:2832|2833)|2829|2823)|2834|2835|(1:2837)(1:2845)|2838|(1:2844))|2808|(4:2812|(1:2814)(1:2818)|2815|(1:2817))|2819|2820))(15:2916|(1:2920)(13:2974|(1:2976)|2925|2926|(3:2928|(1:2930)(1:2967)|2931)(3:2968|(1:2970)(1:2972)|2971)|2932|(1:2934)|2935|(4:2941|(1:2943)|2944|(1:2946))|2947|(1:2949)|2950|(2:2952|(7:2954|(1:2956)|2957|(1:2959)|2960|(1:2964)|2965)))|2921|(11:2973|2926|(0)(0)|2932|(0)|2935|(6:2937|2939|2941|(0)|2944|(0))|2947|(0)|2950|(0))|2925|2926|(0)(0)|2932|(0)|2935|(0)|2947|(0)|2950|(0)))(10:2978|(1:2980)(1:3028)|2981|(1:2985)(1:3027)|2986|(3:2988|(1:2990)(1:3017)|2991)(3:3018|(1:3020)(1:3022)|3021)|2992|(1:2994)|2995|(4:2997|(1:2999)(1:3016)|3000|(9:3002|(1:3004)(1:3015)|3005|(1:3007)|3008|(1:3010)|3011|(1:3013)|3014))))(33:3029|(1:3033)(1:3137)|3034|(1:3036)(1:3132)|3037|(3:3039|(1:3041)(1:3126)|3042)(3:3127|(1:3129)(1:3131)|3130)|3043|(1:3045)(1:3125)|3046|(1:3048)|(2:3050|(18:3054|3055|(3:3057|(1:3059)(1:3120)|3060)(1:3121)|3061|(1:(1:3066)(2:3115|(1:3117)(1:3118)))(1:3119)|3067|(1:3114)(2:3069|3070)|3071|(1:3075)|3076|(1:3084)(2:3105|(1:3109))|3085|(1:3087)|3088|(2:3090|(2:3092|(1:3094)))(1:3104)|3095|(3:3099|(1:3101)|3102)|3103)(1:3122))(1:3124)|3123|3055|(0)(0)|3061|(0)(0)|3067|(16:3110|3112|3114|3071|(2:3073|3075)|3076|(10:3078|3080|3084|3085|(0)|3088|(0)(0)|3095|(4:3097|3099|(0)|3102)|3103)|3105|(2:3107|3109)|3085|(0)|3088|(0)(0)|3095|(0)|3103)|3069|3070|3071|(0)|3076|(0)|3105|(0)|3085|(0)|3088|(0)(0)|3095|(0)|3103))(10:3138|(3:3140|(1:3142)(1:3179)|3143)(3:3180|(1:3182)(1:3184)|3183)|3144|(1:3146)|3147|(1:(2:3150|(2:3152|(1:3154)(1:3161))(2:3162|(1:3164)(1:3165)))(2:3166|(1:3168)(1:3169)))(1:(2:3171|(1:3173)(1:3174))(2:3175|(1:3177)(1:3178)))|3155|(1:3157)|3158|(1:3160))|2966|2820)(77:3185|(1:3187)(1:4736)|3188|(5:3190|(1:3192)(1:4730)|3193|(1:3197)(1:4729)|3198)(3:4731|(1:4733)(1:4735)|4734)|3199|(3:3201|(1:3203)(1:3205)|3204)|3206|(1:3208)|3209|(1:3213)(1:4716)|3214|(1:3220)(1:4715)|3221|(1:3223)(1:4714)|3224|(1:3226)|3227|(1:3231)(1:4713)|3232|(1:3234)(1:4712)|(1:3242)(1:4711)|3243|(1:3245)(1:4710)|3246|(1:(2:4514|(52:4526|(6:4529|(2:4531|(2:4537|4536)(1:4533))(1:4538)|4534|4535|4536|4527)|4539|4540|3253|(2:3259|(17:3261|(1:3264)(1:4512)|3265|(1:3267)(3:4507|(1:4509)(1:4511)|4510)|3268|(1:3272)(1:4506)|3273|(2:3275|(3:3277|(1:3279)|3280))|3281|(1:3283)|3284|(1:3286)|3287|(1:3291)|3292|(3:3298|(1:3300)|3301)(28:3303|(1:(1:3306)(1:4502))(1:(1:4504)(1:4505))|3307|(1:4501)|3311|(2:3313|(2:3315|(3:3317|(1:3319)(1:4367)|3320)(3:4368|(1:4370)(1:4372)|4371))(21:4373|(19:4455|(17:4452|(14:4449|4383|(1:4385)(1:(1:4445)(1:4446))|4386|(2:4441|(8:4443|4390|(1:4410)(1:4439)|(1:4412)(3:4421|(1:4423)(2:4427|(2:4429|(2:4431|(2:4433|(2:4435|(1:4437))))))|(3:4426|(1:4418)(1:4420)|4419))|4413|(3:4416|4418|4419)|4420|4419))(1:4388)|4389|4390|(15:4392|4394|4396|4398|4400|4402|4404|4406|4408|4410|(0)(0)|4413|(0)|4420|4419)|4439|(0)(0)|4413|(0)|4420|4419)|4382|4383|(0)(0)|4386|(11:4441|(0)|4389|4390|(0)|4439|(0)(0)|4413|(0)|4420|4419)|4388|4389|4390|(0)|4439|(0)(0)|4413|(0)|4420|4419)|4379|(1:4381)(16:4447|4449|4383|(0)(0)|4386|(0)|4388|4389|4390|(0)|4439|(0)(0)|4413|(0)|4420|4419)|4382|4383|(0)(0)|4386|(0)|4388|4389|4390|(0)|4439|(0)(0)|4413|(0)|4420|4419)|4376|(1:4378)(18:4450|4452|(0)(0)|4382|4383|(0)(0)|4386|(0)|4388|4389|4390|(0)|4439|(0)(0)|4413|(0)|4420|4419)|4379|(0)(0)|4382|4383|(0)(0)|4386|(0)|4388|4389|4390|(0)|4439|(0)(0)|4413|(0)|4420|4419))(10:4456|(1:4458)(1:4500)|4459|(2:(1:(1:4463)(1:4497))(1:4498)|4464)(1:4499)|(1:(1:4467)(1:4495))(1:4496)|(1:(1:4493)(1:4494))|(1:(1:4490)(1:4491))|(1:4479)(1:4488)|(1:4485)(1:4487)|4486)|3321|(2:3323|(2:3325|(2:3327|(19:3329|(1:3331)|3333|(1:3335)(1:4362)|3336|(1:3339)|(1:3341)(20:4264|4265|4266|4267|4268|(3:4349|4350|4351)(2:4270|4271)|4272|4273|4274|4275|(5:4279|4280|4281|4276|4277)|4285|4286|4287|(11:4291|4292|4293|4294|(8:(8:(1:4322)(1:4324)|4323|4299|4300|4301|4302|4303|4304)(1:4297)|4298|4299|4300|4301|4302|4303|4304)(1:4326)|(2:(2:4311|4312)(2:4313|(2:4315|4316))|4309)(1:4306)|4307|4308|4309|4288|4289)|4330|4331|4332|4333|4334)|(1:3343)(1:4263)|(1:3347)|3348|(12:3350|3351|3352|(1:3354)(1:3450)|3355|(1:3357)(2:3448|3449)|3358|3359|3360|(19:3364|3365|(1:3367)|3368|3369|3370|(3:3372|3373|3374)(3:3431|3432|3433)|(9:(9:(2:3418|3419)|3378|3379|3380|3381|3382|3383|3384|3385)|3425|3379|3380|3381|3382|3383|3384|3385)(2:3426|3427)|(8:(1:3405)(2:3406|3407)|3389|3390|3391|3392|3393|3394|3395)(1:3387)|3388|3389|3390|3391|3392|3393|3394|3395|3361|3362)|3440|3441)|(1:3455)|(13:3458|3459|(1:3461)(1:4259)|3462|3463|3464|(6:4256|3470|(1:3472)(2:4253|4254)|3473|3474|3475)|3469|3470|(0)(0)|3473|3474|3475)(1:4262)|(22:4142|4143|4144|(1:4146)(1:4247)|(17:4246|4150|(10:4239|(1:4241)(1:4243)|4242|4163|(5:4166|4167|(4:4172|(1:4174)(1:4177)|4175|4176)(2:4169|4170)|4171|4164)|4180|4181|(13:4184|4185|4186|4187|(1:4227)|(1:(4:4192|4193|4194|4195)(1:4222))(1:4223)|(5:(1:4212)(1:(1:4214)(2:4215|(1:4217)))|4199|(3:(1:4205)(1:4210)|(1:4207)(1:4209)|4208)|4201|4202)(1:4197)|4198|4199|(0)|4201|4202|4182)|4231|4232)|4153|(1:4155)(1:4236)|4156|(1:4158)(1:4235)|4159|(1:4161)(1:4234)|4162|4163|(1:4164)|4180|4181|(1:4182)|4231|4232)|4149|4150|(1:4152)(11:4237|4239|(0)(0)|4242|4163|(1:4164)|4180|4181|(1:4182)|4231|4232)|4153|(0)(0)|4156|(0)(0)|4159|(0)(0)|4162|4163|(1:4164)|4180|4181|(1:4182)|4231|4232)|3477|(1:3483)(1:4141)|(1:3485)|3486|(1:(7:(1:(1:3491)(6:3863|(1:3865)(1:3867)|3866|3494|(9:3500|(3:3507|(1:3509)|3510)(31:(1:3541)(1:3861)|3542|(1:3544)|3545|(2:3547|(1:3551)(2:3830|(2:3836|(2:3838|(1:3840))(1:3841))(3:3842|(1:3844)(1:3846)|3845)))(1:3847)|3552|(1:3556)|3557|(1:3559)(1:3829)|3560|(1:(1:3563))(2:3826|(1:3828))|3564|(1:3566)|(2:3570|(8:3574|(2:3576|(1:3578)(1:3811))(1:3812)|3579|(2:3585|(1:3587))(2:3808|(1:3810))|3588|(1:3590)|3591|(1:3593))(3:3813|(1:3815)(2:3817|(1:(1:3824)(2:3819|(1:3821)(2:3822|3823))))|3816))(1:3825)|3594|(1:3596)(3:3803|(1:3805)(1:3807)|3806)|3597|(1:3601)(1:3802)|3602|(2:3604|(2:3606|(2:3608|(2:3610|(2:3612|(2:3614|(2:3618|(3:3673|(1:3677)(1:3679)|3678)(2:3620|3621))(15:3680|(3:3682|(1:3684)(1:3721)|3685)(1:3722)|3686|(1:3690)(1:3720)|3691|(1:3694)(2:3696|(7:3703|(1:3705)(1:3714)|3706|(1:3708)|3709|(1:3711)(1:3713)|3712)(3:3715|(1:3717)(1:3719)|3718))|3695|3623|(1:3625)|3626|(1:3667)|3628|3629|(1:3658)(2:3634|(7:3637|3638|(1:3640)|3641|(2:3653|(2:3655|(1:3646)))|3644|(0)))|3636))(5:3723|(4:3725|(2:3727|(1:3729))|3731|(2:3739|3740))|3741|(3:3745|(1:3749)(1:3751)|3750)(1:3752)|3740))(5:3753|(1:3757)|3758|(4:3761|3762|(1:3766)(1:3769)|3767)(1:3772)|3768))(4:3773|(1:(1:3776))(1:3792)|3777|(1:3783)(2:3784|(2:3788|(1:3790)(1:3791)))))(2:3793|(1:3795)(1:3796)))(2:3797|(1:3799)(1:3800)))(1:3801)|3622|3623|(0)|3626|(4:3661|3663|3665|3667)|3628|3629|(3:3631|3658|3636)|3659|3658|3636)|3511|(4:3522|(2:3524|(1:3526)(1:3537))(1:3538)|3527|(8:3529|(1:3531)(1:3536)|3532|(1:3534)(1:3535)|3514|(1:3521)|3516|3517))|3513|3514|(2:3519|3521)|3516|3517)(1:3862)|3518))(13:(1:3869)(2:3891|(11:3893|3871|(1:3874)(1:3890)|(1:3876)(1:3889)|3877|(1:3879)(1:3888)|3880|(1:3882)(1:3887)|3883|(1:3885)|3886))|3870|3871|(9:3874|(0)(0)|3877|(0)(0)|3880|(0)(0)|3883|(0)|3886)|3890|(0)(0)|3877|(0)(0)|3880|(0)(0)|3883|(0)|3886)|3492|3493|3494|(47:3496|3498|3500|(13:3503|3505|3507|(0)|3510|3511|(0)|3513|3514|(0)|3516|3517|3518)|(41:3541|3542|(0)|3545|(0)(0)|3552|(2:3554|3556)|3557|(0)(0)|3560|(0)(0)|3564|(0)|(32:3568|3570|(37:3572|3574|(0)(0)|3579|(33:3581|3585|(0)|3588|(0)|3591|(0)|3594|(0)(0)|3597|(23:3599|3601|3602|(0)(0)|3622|3623|(0)|3626|(0)|3628|3629|(0)|3659|3658|3636|3511|(0)|3513|3514|(0)|3516|3517|3518)|3802|3602|(0)(0)|3622|3623|(0)|3626|(0)|3628|3629|(0)|3659|3658|3636|3511|(0)|3513|3514|(0)|3516|3517|3518)|3808|(0)|3588|(0)|3591|(0)|3594|(0)(0)|3597|(0)|3802|3602|(0)(0)|3622|3623|(0)|3626|(0)|3628|3629|(0)|3659|3658|3636|3511|(0)|3513|3514|(0)|3516|3517|3518)|3813|(0)(0)|3816|3594|(0)(0)|3597|(0)|3802|3602|(0)(0)|3622|3623|(0)|3626|(0)|3628|3629|(0)|3659|3658|3636|3511|(0)|3513|3514|(0)|3516|3517|3518)|3825|3594|(0)(0)|3597|(0)|3802|3602|(0)(0)|3622|3623|(0)|3626|(0)|3628|3629|(0)|3659|3658|3636|3511|(0)|3513|3514|(0)|3516|3517|3518)|3849|3541|3542|(0)|3545|(0)(0)|3552|(0)|3557|(0)(0)|3560|(0)(0)|3564|(0)|(0)|3825|3594|(0)(0)|3597|(0)|3802|3602|(0)(0)|3622|3623|(0)|3626|(0)|3628|3629|(0)|3659|3658|3636|3511|(0)|3513|3514|(0)|3516|3517|3518)|3862|3518)(7:3894|(2:3896|(2:3898|(3:3900|(2:3904|(2:3906|(9:3908|(1:3910)|3911|(2:3913|(3:3915|(2:3917|(1:3921))(1:3924)|3922)(6:3925|(1:3929)(1:3938)|3930|(1:3934)|3935|3936))(3:3939|(3:3941|(1:3943)(1:3946)|3944)(3:3947|(1:3949)(1:3951)|3950)|3945)|3937|3494|(0)|3862|3518)(5:3952|(1:3954)(1:3976)|3955|(4:3961|(2:3962|(1:3974)(2:3964|(1:3966)(2:3967|3968)))|3969|(1:3973))|3975))(3:3977|(4:3983|(2:3984|(1:3996)(2:3986|(1:3988)(2:3989|3990)))|3991|(1:3995))|3997))(3:3998|(4:4004|(2:4005|(1:4017)(2:4007|(1:4009)(2:4010|4011)))|4012|(1:4016))|4018)|3923)(13:4019|(1:4021)(1:4061)|4022|(1:4024)|4025|(1:4027)(1:4060)|4028|(1:4030)|(1:4032)|4033|(4:4043|(2:4044|(1:4059)(2:4046|(1:4048)(3:4049|4050|(1:4052)(1:4058))))|4053|(1:4057))|4035|4036))(9:4062|(1:4066)|4067|(1:4069)(1:4099)|4070|(1:(1:4073))(1:4098)|4074|(5:4080|(3:4083|(1:4087)(1:4089)|4081)|4096|4090|(1:4094))|4097))(1:4100)|3493|3494|(0)|3862|3518))(7:4101|(7:4105|(2:4107|(1:4109)(3:4111|(1:4113)(1:4115)|4114))(5:4116|(1:4118)(1:4140)|4119|(4:4125|(2:4126|(1:4138)(2:4128|(1:4130)(2:4131|4132)))|4133|(1:4137))|4139)|4110|3494|(0)|3862|3518)|3493|3494|(0)|3862|3518))(1:4363))(1:4364))(1:4365))(1:4366)|3332|3333|(0)(0)|3336|(1:3339)|(0)(0)|(0)(0)|(2:3345|3347)|3348|(0)|(2:3453|3455)|(20:3458|3459|(0)(0)|3462|3463|3464|(1:3466)|4256|3470|(0)(0)|3473|3474|3475|(0)|3477|(6:3479|3481|3483|(0)|3486|(0)(0))|4141|(0)|3486|(0)(0))|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0))|3302))|4513|3265|(0)(0)|3268|(42:3270|3272|3273|(0)|3281|(0)|3284|(0)|3287|(2:3289|3291)|3292|(6:3294|3296|3298|(0)|3301|3302)|3303|(0)(0)|3307|(1:3309)|4501|3311|(0)(0)|3321|(0)(0)|3332|3333|(0)(0)|3336|(0)|(0)(0)|(0)(0)|(0)|3348|(0)|(0)|(0)|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0)|3302)|4506|3273|(0)|3281|(0)|3284|(0)|3287|(0)|3292|(0)|3303|(0)(0)|3307|(0)|4501|3311|(0)(0)|3321|(0)(0)|3332|3333|(0)(0)|3336|(0)|(0)(0)|(0)(0)|(0)|3348|(0)|(0)|(0)|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0)|3302)))(53:4541|(2:4543|(2:4545|(2:4547|(2:4549|(2:4551|(2:4553|(2:4564|(2:4568|(2:4570|(2:4572|(2:4574|(8:4576|4577|4578|(1:4580)(1:4656)|4581|(4:4645|(1:4655)|4648|(1:4650)(1:4651))(1:4583)|4584|(3:4586|(9:4592|(2:4612|(9:4614|4615|4616|4595|(2:4606|(5:4608|4609|4598|(1:4605)|4601))|4597|4598|(1:4600)(2:4602|4605)|4601))|4594|4595|(0)|4597|4598|(0)(0)|4601)|4588)(9:4618|(1:4643)|4621|(1:4639)|4624|(1:4635)|4627|(1:4629)(1:4631)|4630)))(52:4658|(1:(2:4671|4672)(2:4660|(3:4663|4664|(1:4666)(2:4668|(1:4670)(0)))(1:4662)))|4667|3252|3253|(4:3255|3257|3259|(0))|4513|3265|(0)(0)|3268|(0)|4506|3273|(0)|3281|(0)|3284|(0)|3287|(0)|3292|(0)|3303|(0)(0)|3307|(0)|4501|3311|(0)(0)|3321|(0)(0)|3332|3333|(0)(0)|3336|(0)|(0)(0)|(0)(0)|(0)|3348|(0)|(0)|(0)|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0)|3302))(53:4673|(1:(2:4700|4701)(3:4675|(4:4677|(1:(2:4696|4697)(2:4679|(1:4681)(2:4682|4683)))|4684|(2:4686|(2:4688|4689)(2:4691|4692))(1:4694))(2:4698|4699)|4690))|4693|3251|3252|3253|(0)|4513|3265|(0)(0)|3268|(0)|4506|3273|(0)|3281|(0)|3284|(0)|3287|(0)|3292|(0)|3303|(0)(0)|3307|(0)|4501|3311|(0)(0)|3321|(0)(0)|3332|3333|(0)(0)|3336|(0)|(0)(0)|(0)(0)|(0)|3348|(0)|(0)|(0)|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0)|3302))(1:4702))(1:4703))(2:4555|4556))(1:4704))(1:4705))(1:4706))(1:4707))(1:4708))(1:4709)|3250|3251|3252|3253|(0)|4513|3265|(0)(0)|3268|(0)|4506|3273|(0)|3281|(0)|3284|(0)|3287|(0)|3292|(0)|3303|(0)(0)|3307|(0)|4501|3311|(0)(0)|3321|(0)(0)|3332|3333|(0)(0)|3336|(0)|(0)(0)|(0)(0)|(0)|3348|(0)|(0)|(0)|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0)|3302)|3249|3250|3251|3252|3253|(0)|4513|3265|(0)(0)|3268|(0)|4506|3273|(0)|3281|(0)|3284|(0)|3287|(0)|3292|(0)|3303|(0)(0)|3307|(0)|4501|3311|(0)(0)|3321|(0)(0)|3332|3333|(0)(0)|3336|(0)|(0)(0)|(0)(0)|(0)|3348|(0)|(0)|(0)|4262|(0)|3477|(0)|4141|(0)|3486|(0)(0)|3302)|839|(4:1215|(17:1223|(1:1225)(1:1279)|1226|(3:1234|(1:1236)|1237)|1238|1239|(9:1276|1245|(1:1262)|1248|(1:1250)(1:1258)|1251|(1:1253)(1:1257)|1254|1255)|1242|(3:1263|(3:1265|(1:1267)|1268)(3:1270|(1:1272)|1273)|1269)(1:1244)|1245|(1:1247)(2:1259|1262)|1248|(0)(0)|1251|(0)(0)|1254|1255)|1280|(8:1286|1287|(3:1338|(2:1339|(1:1349)(5:1341|1342|1343|(1:1348)(2:1345|1346)|1347))|1350)|1290|(2:1334|(44:1297|(1:1299)(1:1330)|1300|1301|1302|(26:1328|846|(1:1208)|850|(20:1150|1151|1152|1153|1154|1155|(3:1158|1159|1156)|1160|1161|1162|1163|(1:1165)(1:1197)|1166|(4:1169|(2:1171|1172)(2:1174|(2:1176|1177)(2:1178|1179))|1173|1167)|1180|(1:1182)(1:1195)|1183|(1:1194)|1189|(2:1191|(1:1193)))(1:852)|853|(1:855)(5:1130|(3:1132|(1:1134)(1:1144)|1135)(1:1145)|1136|(1:1142)|1143)|856|(1:858)|859|(11:867|(1:869)(1:1128)|870|(1:872)(1:1127)|873|(4:(1:876)(1:882)|877|(1:879)(1:881)|880)|883|(1:889)(3:1123|(1:1125)|1126)|890|(1:892)(4:1037|(3:1039|(3:1041|(21:1044|(1:1046)(1:1117)|(1:1048)(1:1116)|1049|(1:1051)(1:1115)|1052|(1:1054)(1:1114)|(1:1056)|1057|(1:1059)(1:1113)|1060|(1:1062)(2:1110|(6:1112|1067|(1:1069)|1070|(6:1074|1075|(7:1082|(3:1105|1095|(5:1098|(1:1100)(1:1101)|1088|1079|1080)(1:1097))|1085|(2:1089|(4:1092|(1:1094)|1095|(0)(0))(1:1091))(1:1087)|1088|1079|1080)(1:1077)|1078|1079|1080)|1081))|1063|(1:1065)(1:1109)|1066|1067|(0)|1070|(1:1108)(7:1072|1074|1075|(0)(0)|1078|1079|1080)|1081|1042)|1118)(1:1120)|1119)|1121|1122)|893)(1:1129)|894|(3:896|(1:898)(1:900)|899)|901|(1:905)(1:(2:1027|(1:1035))(1:1036))|906|(6:908|(1:910)|911|(1:913)(1:917)|914|(1:916))|918|(2:920|(1:924)(2:925|(1:927)))|928|(1:930)(2:1023|(1:1025))|931|(1:933)(2:1016|(2:1018|(1:1020)(1:1021))(1:1022))|934|(26:936|(1:938)(1:1014)|939|(1:941)|942|(1:1013)|948|(1:954)(1:1012)|955|(1:1011)|963|(1:965)(1:1010)|966|(8:970|(1:972)|973|(1:975)|976|(1:978)|979|(12:981|982|(1:984)(2:1005|(1:1007)(1:1008))|985|(2:987|(1:989)(1:990))|991|(1:995)|996|(1:1000)|1001|(1:1003)|1004))|1009|982|(0)(0)|985|(0)|991|(2:993|995)|996|(2:998|1000)|1001|(0)|1004)|1015)|1305|(31:1325|846|(1:848)|1206|1208|850|(46:1146|1148|1150|1151|1152|1153|1154|1155|(1:1156)|1160|1161|1162|1163|(0)(0)|1166|(1:1167)|1180|(0)(0)|1183|(1:1185)|1194|1189|(0)|853|(0)(0)|856|(0)|859|(33:861|863|865|867|(0)(0)|870|(0)(0)|873|(0)|883|(22:885|887|889|890|(0)(0)|893|894|(0)|901|(13:903|905|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|1123|(0)|1126|890|(0)(0)|893|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|1308|(1:1310)(1:1322)|1311|(1:1313)(2:1316|(32:1318|1315|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015))|1314|1315|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015))|1293|(1:1295)(1:1331)|(0)))|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)(5:4737|(1:4739)|4740|(1:4742)|4743)|2821|839|(1:841)|1209|1211|1213|1215|(19:1217|1219|1223|(0)(0)|1226|(6:1228|1230|1232|1234|(0)|1237)|1238|1239|(1:1241)(10:1274|1276|1245|(0)(0)|1248|(0)(0)|1251|(0)(0)|1254|1255)|1242|(0)(0)|1245|(0)(0)|1248|(0)(0)|1251|(0)(0)|1254|1255)|1280|(1:1282)|1286|1287|(1:1289)(4:1335|1338|(3:1339|(0)(0)|1347)|1350)|1290|(1:1292)(34:1332|1334|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)(3:4751|(2:4753|(2:4754|(1:4757)(1:4756)))(0)|4758))(1:4764)|4759|485|(56:4744|4746|(0)(0)|4749|491|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|487|488|(0)|491|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)(57:4765|(1:4776)(2:4767|4768)|4769|(1:4771)(1:4774)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015))(1:4783)|4780|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015)|(16:175|(1:177)|178|(1:180)|181|(1:183)(1:215)|184|(1:186)|187|(3:189|(1:199)(1:201)|200)|202|(3:204|(1:206)(1:208)|207)|209|(1:211)|212|(1:214))|216|(6:218|(1:226)(1:235)|(1:228)(1:234)|229|(1:231)(1:233)|232)|236|(1:240)(1:260)|241|(1:249)|250|(1:256)|257|258)|4872|37|(165:39|41|43|45|46|(0)(0)|(2:50|52)|53|(158:55|57|74|(2:76|78)|(163:80|82|(0)(0)|(161:86|88|90|(2:92|94)|95|(0)|103|(7:105|107|(2:109|111)|112|(2:116|117)|118|117)|(10:121|123|125|127|129|131|133|135|(2:(0)(0)|139)|(0))|(4:151|(0)(0)|154|(0)(0))|159|(16:167|169|171|173|(0)|216|(0)|236|(8:238|240|241|(4:243|245|247|249)|250|(2:252|256)|257|258)|260|241|(0)|250|(0)|257|258)|261|(0)|4849|264|(145:4844|4846|(0)|268|(147:270|272|(145:274|278|279|(142:281|285|286|287|(141:289|291|293|295|297|298|(0)(0)|301|(135:303|305|307|309|310|(133:312|314|316|318|322|323|(129:325|327|329|331|332|(0)(0)|335|(123:337|339|341|342|(119:344|346|347|(116:349|353|354|(0)(0)|380|(0)|383|(3:4808|4810|(3:4811|(0)(0)|4817))(0)|385|386|(0)|4807|390|(3:4802|4804|4806)|392|393|(0)|396|(98:398|400|401|(0)|404|(0)|4798|4800|407|408|(1:4794)|410|411|(88:413|417|(0)(0)|420|(0)(0)|(0)|431|(81:433|435|436|(75:439|(0)(0)|442|(75:444|446|(0)|449|(0)(0)|4759|485|(0)|487|488|(0)|491|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4765|(68:4776|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4841|286|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4842|279|(0)|4841|286|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4843|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|266|267|268|(0)|4843|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4850|(0)|95|(0)|103|(0)|(0)|(0)|159|(0)|261|(0)|4849|264|(0)|266|267|268|(0)|4843|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4852|(0)|159|(0)|261|(0)|4849|264|(0)|266|267|268|(0)|4843|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4853|(0)|(0)|4852|(0)|159|(0)|261|(0)|4849|264|(0)|266|267|268|(0)|4843|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258)|4855|4857|45|46|(0)(0)|(0)|53|(0)|4853|(0)|(0)|4852|(0)|159|(0)|261|(0)|4849|264|(0)|266|267|268|(0)|4843|287|(0)|4840|298|(0)(0)|301|(0)|4838|310|(0)|4837|323|(0)|4836|332|(0)(0)|335|(0)|4834|342|(0)|4833|347|(0)|4832|354|(0)(0)|380|(0)|383|(0)(0)|385|386|(0)|4807|390|(0)|392|393|(0)|396|(0)|4801|401|(0)|404|(0)|4798|4800|407|408|(0)|410|411|(0)|4793|(0)|431|(0)|4786|436|(0)|4781|4784|439|(0)(0)|442|(0)|4765|(0)|4767|4768|4769|(0)(0)|4772|4773|492|(0)(0)|2821|839|(0)|1209|1211|1213|1215|(0)|1280|(0)|1286|1287|(0)(0)|1290|(0)(0)|1293|(0)(0)|(0)|845|846|(0)|1206|1208|850|(0)|852|853|(0)(0)|856|(0)|859|(0)|1129|894|(0)|901|(0)|(0)(0)|906|(0)|918|(0)|928|(0)(0)|931|(0)(0)|934|(0)|1015|(0)|216|(0)|236|(0)|260|241|(0)|250|(0)|257|258|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(3:(3:4279|4280|4281)|4276|4277) */
    /* JADX WARN: Can't wrap try/catch for region: R(40:(2:1710|1711)(5:1742|1743|(1:(2:1762|1763)(6:1745|1746|1747|1748|1749|(1:1751)(1:1752)))|1754|(1:1756)(1:1757))|1712|(23:1737|1738|707|(4:1656|(1:1658)(1:1697)|1659|(8:1661|(2:1663|(1:1665))(1:1696)|1666|(1:1668)(1:1695)|1669|(1:1675)|1676|(2:1678|(3:1682|(2:1684|(1:1686))|1687)(1:(4:1689|(1:1691)|1692|(1:1694))))))|709|710|(3:1652|(1:1654)|1655)|1642|(2:1644|(1:1646))|(2:1627|(3:1631|(1:1633)(2:1635|(1:1637))|1634)(3:1638|(1:1640)|1641))(3:716|717|(2:721|(1:723)(1:1618)))|724|(1:730)(1:1617)|731|(1:1616)(1:733)|734|(1:739)|740|(8:1585|(2:1587|(1:1589))|1591|(2:1595|(2:1603|(1:1605)(6:1606|(1:1610)(1:1612)|1611|744|(4:746|(1:748)(2:1414|(2:1416|(2:1418|(8:1420|(1:1422)(2:1511|(2:1513|(3:1518|(1:1520)(1:1522)|1521)(4:(1:1532)(1:1524)|1525|(1:1527)(1:1529)|1528))(1:1533))|1423|(2:1425|(1:1427)(1:1509))(1:1510)|1428|(1:1432)(1:1508)|1433|(1:(3:1460|(1:1462)|(5:1469|(1:1471)|1472|(1:1474)(1:1476)|1475)(2:1477|(1:1482)(1:1483)))(1:(1:(5:1490|(1:1492)|1493|(1:1495)(1:1497)|1496)(1:1498))(3:1499|(1:1501)(1:1503)|1502)))(2:1441|(1:1447)(2:(1:1451)|1452)))(2:1534|(2:1536|(1:1538)(3:1539|(1:1541)(1:1564)|(2:1549|(1:1553)(3:1554|(1:1556)(1:1558)|1557))(3:1559|(1:1561)(1:1563)|1562)))(1:1565)))(3:1566|(1:1568)(1:1570)|1569))(1:1571))|749|(1:751)(2:1410|(1:1412)(1:1413)))(2:1572|(1:1578)(2:1579|(2:(1:1583)|1584)))|752)))|743|744|(0)(0)|752)|742|743|744|(0)(0)|752)|1715|1716|1717|(32:1732|1723|1724|707|(0)|709|710|(1:712)(4:1647|1652|(0)|1655)|1642|(0)|(20:1627|(19:1629|1631|(0)(0)|1634|724|(15:726|728|730|731|(11:1614|1616|734|(2:737|739)|740|(0)|742|743|744|(0)(0)|752)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1638|(0)|1641|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|716|717|(18:719|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1720|(31:1727|1728|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752)|1723|1724|707|(0)|709|710|(0)(0)|1642|(0)|(0)|716|717|(0)|1619|721|(0)(0)|724|(0)|1617|731|(0)|733|734|(0)|740|(0)|742|743|744|(0)(0)|752) */
    /* JADX WARN: Can't wrap try/catch for region: R(6:(4:(9:(2:3418|3419)|3378|3379|3380|3381|3382|3383|3384|3385)|3383|3384|3385)|3425|3379|3380|3381|3382) */
    /* JADX WARN: Code restructure failed: missing block: B:1052:0x0e15, code lost:
        if (r6.isSmall != false) goto L1771;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1164:0x103d, code lost:
        r76.captionWidth = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1191:0x10d1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1366:0x13d3, code lost:
        if (r3.revealingMediaSpoilers != false) goto L1591;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1635:0x1a4d, code lost:
        if ((r4.flags & 2) == 0) goto L1842;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2041:0x2503, code lost:
        if (r1 >= (r2 + org.telegram.messenger.AndroidUtilities.m102dp(20 + r31))) goto L2365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2742:0x3274, code lost:
        if (r3.multiple_choice == false) goto L2801;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2880:0x3640, code lost:
        if (r1.messageOwner.fwd_from.from_id != null) goto L2925;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3463:0x4285, code lost:
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3683:0x4666, code lost:
        if (r13 == 18) goto L4424;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3812:0x4866, code lost:
        if (r76.isSmallImage != false) goto L4298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3840:0x48ea, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3841:0x48eb, code lost:
        r38 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3900:0x49f1, code lost:
        if (r76.isSmallImage == false) goto L3378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3910:0x4a1f, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3921:0x4a40, code lost:
        if (r76.isSmallImage == false) goto L3389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4688:0x58a6, code lost:
        if (r0.revealingMediaSpoilers != false) goto L3731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5030:0x6066, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5031:0x6067, code lost:
        r7 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5084:0x6196, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5085:0x6197, code lost:
        org.telegram.messenger.FileLog.m97e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0097, code lost:
        if (r76.isPlayingRound == ((!org.telegram.messenger.MediaController.getInstance().isPlayingMessage(r76.currentMessageObject) || (r6 = r76.delegate) == null || r6.keyboardIsOpened()) ? false : true)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5544:0x6894, code lost:
        if (r11.button.url.startsWith("tg://resolve") != false) goto L1088;
     */
    /* JADX WARN: Multi-variable search skipped. Vars limit reached: 8481 (expected less than 5000) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1000:0x0d4a  */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x0d4d  */
    /* JADX WARN: Removed duplicated region for block: B:1004:0x0d55  */
    /* JADX WARN: Removed duplicated region for block: B:1005:0x0d57  */
    /* JADX WARN: Removed duplicated region for block: B:1009:0x0d63  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x0d6a  */
    /* JADX WARN: Removed duplicated region for block: B:1023:0x0d9f  */
    /* JADX WARN: Removed duplicated region for block: B:1034:0x0dc4  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:1060:0x0e2f  */
    /* JADX WARN: Removed duplicated region for block: B:1062:0x0e3d  */
    /* JADX WARN: Removed duplicated region for block: B:1206:0x10e9  */
    /* JADX WARN: Removed duplicated region for block: B:1262:0x120d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1263:0x120f  */
    /* JADX WARN: Removed duplicated region for block: B:1274:0x122a  */
    /* JADX WARN: Removed duplicated region for block: B:1281:0x1245  */
    /* JADX WARN: Removed duplicated region for block: B:1287:0x1268 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1298:0x12a6  */
    /* JADX WARN: Removed duplicated region for block: B:1302:0x12bd  */
    /* JADX WARN: Removed duplicated region for block: B:1303:0x12bf  */
    /* JADX WARN: Removed duplicated region for block: B:1311:0x1321  */
    /* JADX WARN: Removed duplicated region for block: B:1325:0x133d  */
    /* JADX WARN: Removed duplicated region for block: B:1326:0x1353  */
    /* JADX WARN: Removed duplicated region for block: B:1330:0x138c  */
    /* JADX WARN: Removed duplicated region for block: B:1340:0x139d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1349:0x13ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1359:0x13c1  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:1399:0x1421  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:1597:0x190e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:1661:0x1aab  */
    /* JADX WARN: Removed duplicated region for block: B:1662:0x1ab2  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:1670:0x1ad6  */
    /* JADX WARN: Removed duplicated region for block: B:1685:0x1afe  */
    /* JADX WARN: Removed duplicated region for block: B:1686:0x1b01  */
    /* JADX WARN: Removed duplicated region for block: B:1690:0x1b12  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:1987:0x22dc  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x01d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2048:0x251e  */
    /* JADX WARN: Removed duplicated region for block: B:2089:0x2734  */
    /* JADX WARN: Removed duplicated region for block: B:2090:0x2740  */
    /* JADX WARN: Removed duplicated region for block: B:2103:0x275f  */
    /* JADX WARN: Removed duplicated region for block: B:2116:0x27a3  */
    /* JADX WARN: Removed duplicated region for block: B:2117:0x27a6  */
    /* JADX WARN: Removed duplicated region for block: B:2121:0x27c0  */
    /* JADX WARN: Removed duplicated region for block: B:2141:0x283a  */
    /* JADX WARN: Removed duplicated region for block: B:2151:0x2893  */
    /* JADX WARN: Removed duplicated region for block: B:2195:0x29aa  */
    /* JADX WARN: Removed duplicated region for block: B:2196:0x29ac  */
    /* JADX WARN: Removed duplicated region for block: B:2201:0x29b9  */
    /* JADX WARN: Removed duplicated region for block: B:2206:0x29c5  */
    /* JADX WARN: Removed duplicated region for block: B:2211:0x29d3  */
    /* JADX WARN: Removed duplicated region for block: B:2220:0x29f4  */
    /* JADX WARN: Removed duplicated region for block: B:2226:0x2a07  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:2252:0x2a6b  */
    /* JADX WARN: Removed duplicated region for block: B:2256:0x2a85  */
    /* JADX WARN: Removed duplicated region for block: B:2262:0x2a91  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:2306:0x2b25  */
    /* JADX WARN: Removed duplicated region for block: B:2313:0x2b3a  */
    /* JADX WARN: Removed duplicated region for block: B:2338:0x2b87  */
    /* JADX WARN: Removed duplicated region for block: B:2343:0x2baf  */
    /* JADX WARN: Removed duplicated region for block: B:2344:0x2bb1  */
    /* JADX WARN: Removed duplicated region for block: B:2348:0x2bc9  */
    /* JADX WARN: Removed duplicated region for block: B:2361:0x2c06  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x024b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2372:0x2c1c  */
    /* JADX WARN: Removed duplicated region for block: B:2385:0x2c3f  */
    /* JADX WARN: Removed duplicated region for block: B:2389:0x2c5b  */
    /* JADX WARN: Removed duplicated region for block: B:2392:0x2c6a  */
    /* JADX WARN: Removed duplicated region for block: B:2393:0x2c6d  */
    /* JADX WARN: Removed duplicated region for block: B:2406:0x2c99  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:2410:0x2cb1  */
    /* JADX WARN: Removed duplicated region for block: B:2415:0x2cbe  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:2434:0x2cf9  */
    /* JADX WARN: Removed duplicated region for block: B:2435:0x2cfb  */
    /* JADX WARN: Removed duplicated region for block: B:2439:0x2d0e  */
    /* JADX WARN: Removed duplicated region for block: B:2442:0x2d1b  */
    /* JADX WARN: Removed duplicated region for block: B:2443:0x2d1d  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:2469:0x2d75  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0271 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2502:0x2ddc  */
    /* JADX WARN: Removed duplicated region for block: B:2509:0x2e12  */
    /* JADX WARN: Removed duplicated region for block: B:2514:0x2e1d  */
    /* JADX WARN: Removed duplicated region for block: B:2518:0x2e28  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x02b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:2891:0x3659  */
    /* JADX WARN: Removed duplicated region for block: B:2896:0x3676  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:2904:0x36ba  */
    /* JADX WARN: Removed duplicated region for block: B:2908:0x36c8  */
    /* JADX WARN: Removed duplicated region for block: B:2917:0x36e0  */
    /* JADX WARN: Removed duplicated region for block: B:2921:0x36fc  */
    /* JADX WARN: Removed duplicated region for block: B:2925:0x370a  */
    /* JADX WARN: Removed duplicated region for block: B:2929:0x371c  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:3057:0x39c0  */
    /* JADX WARN: Removed duplicated region for block: B:3062:0x39ce  */
    /* JADX WARN: Removed duplicated region for block: B:3065:0x39db  */
    /* JADX WARN: Removed duplicated region for block: B:3074:0x3a22  */
    /* JADX WARN: Removed duplicated region for block: B:3088:0x3a69  */
    /* JADX WARN: Removed duplicated region for block: B:3095:0x3abf  */
    /* JADX WARN: Removed duplicated region for block: B:3106:0x3ad4  */
    /* JADX WARN: Removed duplicated region for block: B:3114:0x3b05  */
    /* JADX WARN: Removed duplicated region for block: B:3117:0x3b13  */
    /* JADX WARN: Removed duplicated region for block: B:3124:0x3b49  */
    /* JADX WARN: Removed duplicated region for block: B:3128:0x3b53  */
    /* JADX WARN: Removed duplicated region for block: B:3134:0x3b90  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:3405:0x40e5 A[Catch: Exception -> 0x4152, TRY_LEAVE, TryCatch #25 {Exception -> 0x4152, blocks: (B:3402:0x40da, B:3405:0x40e5, B:3401:0x40cb), top: B:5608:0x40cb }] */
    /* JADX WARN: Removed duplicated region for block: B:3412:0x410b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3413:0x410c A[Catch: Exception -> 0x3ede, TryCatch #22 {Exception -> 0x3ede, blocks: (B:3410:0x4103, B:3417:0x412a, B:3413:0x410c, B:3416:0x4119, B:3409:0x40f4, B:3419:0x4156, B:3426:0x4195, B:3433:0x41ba, B:3440:0x41e1, B:3442:0x41e8, B:3444:0x41f4, B:3443:0x41ef, B:3436:0x41c3, B:3439:0x41d0, B:3429:0x419e, B:3432:0x41ab, B:3422:0x4173, B:3425:0x417e), top: B:5603:0x408c }] */
    /* JADX WARN: Removed duplicated region for block: B:3497:0x433d  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:3505:0x434d  */
    /* JADX WARN: Removed duplicated region for block: B:3514:0x4395  */
    /* JADX WARN: Removed duplicated region for block: B:3515:0x4398  */
    /* JADX WARN: Removed duplicated region for block: B:3523:0x43d0  */
    /* JADX WARN: Removed duplicated region for block: B:3530:0x43f4  */
    /* JADX WARN: Removed duplicated region for block: B:3541:0x4421  */
    /* JADX WARN: Removed duplicated region for block: B:3545:0x4444  */
    /* JADX WARN: Removed duplicated region for block: B:3549:0x4457  */
    /* JADX WARN: Removed duplicated region for block: B:3556:0x4468  */
    /* JADX WARN: Removed duplicated region for block: B:3564:0x4483  */
    /* JADX WARN: Removed duplicated region for block: B:3568:0x44a2  */
    /* JADX WARN: Removed duplicated region for block: B:3571:0x44ba  */
    /* JADX WARN: Removed duplicated region for block: B:3577:0x44d7  */
    /* JADX WARN: Removed duplicated region for block: B:3583:0x44f5  */
    /* JADX WARN: Removed duplicated region for block: B:3611:0x4592 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3612:0x4594  */
    /* JADX WARN: Removed duplicated region for block: B:3618:0x45a5  */
    /* JADX WARN: Removed duplicated region for block: B:3619:0x45a8  */
    /* JADX WARN: Removed duplicated region for block: B:3625:0x45bb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3630:0x45d3  */
    /* JADX WARN: Removed duplicated region for block: B:3634:0x45ea  */
    /* JADX WARN: Removed duplicated region for block: B:3663:0x463f  */
    /* JADX WARN: Removed duplicated region for block: B:3664:0x4642  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:3692:0x4674 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3699:0x4695  */
    /* JADX WARN: Removed duplicated region for block: B:3752:0x473f  */
    /* JADX WARN: Removed duplicated region for block: B:3765:0x4777  */
    /* JADX WARN: Removed duplicated region for block: B:3769:0x4785  */
    /* JADX WARN: Removed duplicated region for block: B:3770:0x478d  */
    /* JADX WARN: Removed duplicated region for block: B:3774:0x4796 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3778:0x479f  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:3854:0x4925  */
    /* JADX WARN: Removed duplicated region for block: B:3855:0x4927  */
    /* JADX WARN: Removed duplicated region for block: B:3858:0x492e  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:3864:0x493d  */
    /* JADX WARN: Removed duplicated region for block: B:3951:0x4a8b  */
    /* JADX WARN: Removed duplicated region for block: B:3957:0x4a9d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:395:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:3961:0x4aa6  */
    /* JADX WARN: Removed duplicated region for block: B:3962:0x4aa7 A[Catch: Exception -> 0x4b53, TRY_LEAVE, TryCatch #26 {Exception -> 0x4b53, blocks: (B:3959:0x4aa2, B:3967:0x4acf, B:3972:0x4af2, B:3973:0x4b07, B:3975:0x4b2f, B:3976:0x4b3e, B:3971:0x4ad6, B:3962:0x4aa7), top: B:5610:0x4aa2 }] */
    /* JADX WARN: Removed duplicated region for block: B:3975:0x4b2f A[Catch: Exception -> 0x4b53, TryCatch #26 {Exception -> 0x4b53, blocks: (B:3959:0x4aa2, B:3967:0x4acf, B:3972:0x4af2, B:3973:0x4b07, B:3975:0x4b2f, B:3976:0x4b3e, B:3971:0x4ad6, B:3962:0x4aa7), top: B:5610:0x4aa2 }] */
    /* JADX WARN: Removed duplicated region for block: B:3976:0x4b3e A[Catch: Exception -> 0x4b53, TRY_LEAVE, TryCatch #26 {Exception -> 0x4b53, blocks: (B:3959:0x4aa2, B:3967:0x4acf, B:3972:0x4af2, B:3973:0x4b07, B:3975:0x4b2f, B:3976:0x4b3e, B:3971:0x4ad6, B:3962:0x4aa7), top: B:5610:0x4aa2 }] */
    /* JADX WARN: Removed duplicated region for block: B:3988:0x4b5d  */
    /* JADX WARN: Removed duplicated region for block: B:4006:0x4ba5  */
    /* JADX WARN: Removed duplicated region for block: B:4007:0x4ba7  */
    /* JADX WARN: Removed duplicated region for block: B:4010:0x4bae  */
    /* JADX WARN: Removed duplicated region for block: B:4011:0x4bb0  */
    /* JADX WARN: Removed duplicated region for block: B:4014:0x4bb5  */
    /* JADX WARN: Removed duplicated region for block: B:4015:0x4bb8  */
    /* JADX WARN: Removed duplicated region for block: B:4019:0x4bdb  */
    /* JADX WARN: Removed duplicated region for block: B:4020:0x4bde  */
    /* JADX WARN: Removed duplicated region for block: B:4029:0x4c32 A[Catch: Exception -> 0x4cd6, TRY_LEAVE, TryCatch #31 {Exception -> 0x4cd6, blocks: (B:3989:0x4b5e, B:3999:0x4b91, B:4004:0x4b9f, B:4008:0x4ba8, B:4012:0x4bb1, B:4016:0x4bbc, B:4022:0x4bf1, B:4023:0x4c19, B:4025:0x4c21, B:4026:0x4c28, B:4029:0x4c32, B:4002:0x4b9b, B:4017:0x4bc7, B:4021:0x4be2, B:3995:0x4b7e, B:3992:0x4b6a), top: B:5619:0x4b5e }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:4058:0x4c80  */
    /* JADX WARN: Removed duplicated region for block: B:4087:0x4cde  */
    /* JADX WARN: Removed duplicated region for block: B:4095:0x4cf0  */
    /* JADX WARN: Removed duplicated region for block: B:4098:0x4cf8  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:4121:0x4d57  */
    /* JADX WARN: Removed duplicated region for block: B:4122:0x4d59  */
    /* JADX WARN: Removed duplicated region for block: B:4125:0x4d66  */
    /* JADX WARN: Removed duplicated region for block: B:4126:0x4d68  */
    /* JADX WARN: Removed duplicated region for block: B:4129:0x4d71  */
    /* JADX WARN: Removed duplicated region for block: B:4130:0x4d74  */
    /* JADX WARN: Removed duplicated region for block: B:4134:0x4d85  */
    /* JADX WARN: Removed duplicated region for block: B:4375:0x52d2  */
    /* JADX WARN: Removed duplicated region for block: B:4424:0x539d  */
    /* JADX WARN: Removed duplicated region for block: B:4443:0x53ce  */
    /* JADX WARN: Removed duplicated region for block: B:4473:0x543d  */
    /* JADX WARN: Removed duplicated region for block: B:4476:0x5452  */
    /* JADX WARN: Removed duplicated region for block: B:4502:0x5497  */
    /* JADX WARN: Removed duplicated region for block: B:4506:0x54a2  */
    /* JADX WARN: Removed duplicated region for block: B:4512:0x54b2  */
    /* JADX WARN: Removed duplicated region for block: B:4513:0x54b4  */
    /* JADX WARN: Removed duplicated region for block: B:4516:0x54c3  */
    /* JADX WARN: Removed duplicated region for block: B:4519:0x54ca  */
    /* JADX WARN: Removed duplicated region for block: B:4526:0x54d9  */
    /* JADX WARN: Removed duplicated region for block: B:4529:0x54e7  */
    /* JADX WARN: Removed duplicated region for block: B:4538:0x54fa  */
    /* JADX WARN: Removed duplicated region for block: B:4542:0x550d  */
    /* JADX WARN: Removed duplicated region for block: B:4554:0x5541  */
    /* JADX WARN: Removed duplicated region for block: B:4558:0x554e  */
    /* JADX WARN: Removed duplicated region for block: B:4562:0x5556  */
    /* JADX WARN: Removed duplicated region for block: B:4566:0x556e  */
    /* JADX WARN: Removed duplicated region for block: B:4569:0x5579  */
    /* JADX WARN: Removed duplicated region for block: B:4570:0x557e  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:4581:0x55b4  */
    /* JADX WARN: Removed duplicated region for block: B:4582:0x55c6  */
    /* JADX WARN: Removed duplicated region for block: B:4590:0x55f8  */
    /* JADX WARN: Removed duplicated region for block: B:4596:0x5656  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0570 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4775:0x5b44  */
    /* JADX WARN: Removed duplicated region for block: B:4780:0x5b72  */
    /* JADX WARN: Removed duplicated region for block: B:4784:0x5b8b  */
    /* JADX WARN: Removed duplicated region for block: B:4797:0x5bc6  */
    /* JADX WARN: Removed duplicated region for block: B:4826:0x5c18  */
    /* JADX WARN: Removed duplicated region for block: B:4832:0x5c7e  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:4853:0x5d71  */
    /* JADX WARN: Removed duplicated region for block: B:4860:0x5d93  */
    /* JADX WARN: Removed duplicated region for block: B:4873:0x5df6  */
    /* JADX WARN: Removed duplicated region for block: B:4891:0x5e25  */
    /* JADX WARN: Removed duplicated region for block: B:4902:0x5e3e  */
    /* JADX WARN: Removed duplicated region for block: B:4903:0x5e41  */
    /* JADX WARN: Removed duplicated region for block: B:4919:0x5e81  */
    /* JADX WARN: Removed duplicated region for block: B:4929:0x5eba  */
    /* JADX WARN: Removed duplicated region for block: B:4930:0x5ebb A[Catch: Exception -> 0x5f4b, TryCatch #38 {Exception -> 0x5f4b, blocks: (B:4921:0x5ea6, B:4927:0x5eb4, B:4941:0x5edb, B:4948:0x5eec, B:4952:0x5ef7, B:4954:0x5f0a, B:4957:0x5f44, B:4956:0x5f22, B:4944:0x5ee0, B:4947:0x5ee5, B:4930:0x5ebb, B:4932:0x5ec1, B:4935:0x5ec9, B:4940:0x5eda, B:4936:0x5ece, B:4939:0x5ed6, B:4924:0x5eaf), top: B:5632:0x5ea6 }] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:4943:0x5edf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4944:0x5ee0 A[Catch: Exception -> 0x5f4b, TryCatch #38 {Exception -> 0x5f4b, blocks: (B:4921:0x5ea6, B:4927:0x5eb4, B:4941:0x5edb, B:4948:0x5eec, B:4952:0x5ef7, B:4954:0x5f0a, B:4957:0x5f44, B:4956:0x5f22, B:4944:0x5ee0, B:4947:0x5ee5, B:4930:0x5ebb, B:4932:0x5ec1, B:4935:0x5ec9, B:4940:0x5eda, B:4936:0x5ece, B:4939:0x5ed6, B:4924:0x5eaf), top: B:5632:0x5ea6 }] */
    /* JADX WARN: Removed duplicated region for block: B:4950:0x5ef3  */
    /* JADX WARN: Removed duplicated region for block: B:4951:0x5ef5  */
    /* JADX WARN: Removed duplicated region for block: B:4954:0x5f0a A[Catch: Exception -> 0x5f4b, TryCatch #38 {Exception -> 0x5f4b, blocks: (B:4921:0x5ea6, B:4927:0x5eb4, B:4941:0x5edb, B:4948:0x5eec, B:4952:0x5ef7, B:4954:0x5f0a, B:4957:0x5f44, B:4956:0x5f22, B:4944:0x5ee0, B:4947:0x5ee5, B:4930:0x5ebb, B:4932:0x5ec1, B:4935:0x5ec9, B:4940:0x5eda, B:4936:0x5ece, B:4939:0x5ed6, B:4924:0x5eaf), top: B:5632:0x5ea6 }] */
    /* JADX WARN: Removed duplicated region for block: B:4956:0x5f22 A[Catch: Exception -> 0x5f4b, TryCatch #38 {Exception -> 0x5f4b, blocks: (B:4921:0x5ea6, B:4927:0x5eb4, B:4941:0x5edb, B:4948:0x5eec, B:4952:0x5ef7, B:4954:0x5f0a, B:4957:0x5f44, B:4956:0x5f22, B:4944:0x5ee0, B:4947:0x5ee5, B:4930:0x5ebb, B:4932:0x5ec1, B:4935:0x5ec9, B:4940:0x5eda, B:4936:0x5ece, B:4939:0x5ed6, B:4924:0x5eaf), top: B:5632:0x5ea6 }] */
    /* JADX WARN: Removed duplicated region for block: B:4964:0x5f54  */
    /* JADX WARN: Removed duplicated region for block: B:4972:0x5f66 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4973:0x5f67 A[Catch: Exception -> 0x6066, TryCatch #16 {Exception -> 0x6066, blocks: (B:4970:0x5f60, B:4980:0x5f93, B:4985:0x5fa5, B:4992:0x5fdb, B:4996:0x5fe8, B:4995:0x5fe0, B:4988:0x5fad, B:4983:0x5f9f, B:4989:0x5fb9, B:4973:0x5f67, B:4976:0x5f6c, B:4977:0x5f83, B:4979:0x5f8b), top: B:5591:0x5f60 }] */
    /* JADX WARN: Removed duplicated region for block: B:497:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:4982:0x5f9e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4983:0x5f9f A[Catch: Exception -> 0x6066, TryCatch #16 {Exception -> 0x6066, blocks: (B:4970:0x5f60, B:4980:0x5f93, B:4985:0x5fa5, B:4992:0x5fdb, B:4996:0x5fe8, B:4995:0x5fe0, B:4988:0x5fad, B:4983:0x5f9f, B:4989:0x5fb9, B:4973:0x5f67, B:4976:0x5f6c, B:4977:0x5f83, B:4979:0x5f8b), top: B:5591:0x5f60 }] */
    /* JADX WARN: Removed duplicated region for block: B:4987:0x5fab  */
    /* JADX WARN: Removed duplicated region for block: B:4988:0x5fad A[Catch: Exception -> 0x6066, TryCatch #16 {Exception -> 0x6066, blocks: (B:4970:0x5f60, B:4980:0x5f93, B:4985:0x5fa5, B:4992:0x5fdb, B:4996:0x5fe8, B:4995:0x5fe0, B:4988:0x5fad, B:4983:0x5f9f, B:4989:0x5fb9, B:4973:0x5f67, B:4976:0x5f6c, B:4977:0x5f83, B:4979:0x5f8b), top: B:5591:0x5f60 }] */
    /* JADX WARN: Removed duplicated region for block: B:4992:0x5fdb A[Catch: Exception -> 0x6066, TryCatch #16 {Exception -> 0x6066, blocks: (B:4970:0x5f60, B:4980:0x5f93, B:4985:0x5fa5, B:4992:0x5fdb, B:4996:0x5fe8, B:4995:0x5fe0, B:4988:0x5fad, B:4983:0x5f9f, B:4989:0x5fb9, B:4973:0x5f67, B:4976:0x5f6c, B:4977:0x5f83, B:4979:0x5f8b), top: B:5591:0x5f60 }] */
    /* JADX WARN: Removed duplicated region for block: B:5036:0x6071  */
    /* JADX WARN: Removed duplicated region for block: B:5046:0x608e  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:5059:0x6107 A[Catch: Exception -> 0x6117, TRY_LEAVE, TryCatch #34 {Exception -> 0x6117, blocks: (B:5055:0x60e5, B:5056:0x60e8, B:5058:0x60f0, B:5059:0x6107), top: B:5624:0x60e5 }] */
    /* JADX WARN: Removed duplicated region for block: B:5068:0x6124  */
    /* JADX WARN: Removed duplicated region for block: B:5069:0x6125 A[Catch: Exception -> 0x6196, TryCatch #33 {Exception -> 0x6196, blocks: (B:5066:0x611e, B:5070:0x612e, B:5071:0x6166, B:5075:0x6171, B:5076:0x6174, B:5079:0x6184, B:5081:0x6188, B:5082:0x6190, B:5069:0x6125), top: B:5622:0x611e }] */
    /* JADX WARN: Removed duplicated region for block: B:5074:0x6170  */
    /* JADX WARN: Removed duplicated region for block: B:5075:0x6171 A[Catch: Exception -> 0x6196, TryCatch #33 {Exception -> 0x6196, blocks: (B:5066:0x611e, B:5070:0x612e, B:5071:0x6166, B:5075:0x6171, B:5076:0x6174, B:5079:0x6184, B:5081:0x6188, B:5082:0x6190, B:5069:0x6125), top: B:5622:0x611e }] */
    /* JADX WARN: Removed duplicated region for block: B:5076:0x6174 A[Catch: Exception -> 0x6196, TryCatch #33 {Exception -> 0x6196, blocks: (B:5066:0x611e, B:5070:0x612e, B:5071:0x6166, B:5075:0x6171, B:5076:0x6174, B:5079:0x6184, B:5081:0x6188, B:5082:0x6190, B:5069:0x6125), top: B:5622:0x611e }] */
    /* JADX WARN: Removed duplicated region for block: B:5089:0x61a0  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x05ff A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5099:0x61c1  */
    /* JADX WARN: Removed duplicated region for block: B:5105:0x61da  */
    /* JADX WARN: Removed duplicated region for block: B:5106:0x61dd  */
    /* JADX WARN: Removed duplicated region for block: B:5128:0x622a  */
    /* JADX WARN: Removed duplicated region for block: B:5132:0x623c  */
    /* JADX WARN: Removed duplicated region for block: B:5143:0x625e  */
    /* JADX WARN: Removed duplicated region for block: B:5144:0x6260  */
    /* JADX WARN: Removed duplicated region for block: B:5147:0x627e  */
    /* JADX WARN: Removed duplicated region for block: B:5148:0x6280  */
    /* JADX WARN: Removed duplicated region for block: B:5152:0x628d  */
    /* JADX WARN: Removed duplicated region for block: B:5171:0x62e5  */
    /* JADX WARN: Removed duplicated region for block: B:5176:0x6301  */
    /* JADX WARN: Removed duplicated region for block: B:5177:0x6303  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:5184:0x630f  */
    /* JADX WARN: Removed duplicated region for block: B:5192:0x632d  */
    /* JADX WARN: Removed duplicated region for block: B:5195:0x6333  */
    /* JADX WARN: Removed duplicated region for block: B:5208:0x6352  */
    /* JADX WARN: Removed duplicated region for block: B:5213:0x636b  */
    /* JADX WARN: Removed duplicated region for block: B:5228:0x639e  */
    /* JADX WARN: Removed duplicated region for block: B:5240:0x63d8  */
    /* JADX WARN: Removed duplicated region for block: B:5241:0x63da  */
    /* JADX WARN: Removed duplicated region for block: B:5247:0x63fc  */
    /* JADX WARN: Removed duplicated region for block: B:5248:0x6402  */
    /* JADX WARN: Removed duplicated region for block: B:5258:0x6439  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x064c  */
    /* JADX WARN: Removed duplicated region for block: B:5327:0x64c7  */
    /* JADX WARN: Removed duplicated region for block: B:5328:0x64c9  */
    /* JADX WARN: Removed duplicated region for block: B:5335:0x64da  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x0668  */
    /* JADX WARN: Removed duplicated region for block: B:5356:0x650d  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:5361:0x651d  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:5416:0x65c5  */
    /* JADX WARN: Removed duplicated region for block: B:5440:0x65fd  */
    /* JADX WARN: Removed duplicated region for block: B:5447:0x6610  */
    /* JADX WARN: Removed duplicated region for block: B:5460:0x6646  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x068e  */
    /* JADX WARN: Removed duplicated region for block: B:5512:0x67fd  */
    /* JADX WARN: Removed duplicated region for block: B:5521:0x6836  */
    /* JADX WARN: Removed duplicated region for block: B:5522:0x6837 A[Catch: Exception -> 0x689c, TryCatch #20 {Exception -> 0x689c, blocks: (B:5519:0x681c, B:5547:0x6899, B:5522:0x6837, B:5528:0x6851, B:5531:0x685a, B:5534:0x6863, B:5537:0x686c, B:5540:0x6879, B:5543:0x6888, B:5525:0x6844), top: B:5599:0x681c }] */
    /* JADX WARN: Removed duplicated region for block: B:5539:0x6878  */
    /* JADX WARN: Removed duplicated region for block: B:5540:0x6879 A[Catch: Exception -> 0x689c, TryCatch #20 {Exception -> 0x689c, blocks: (B:5519:0x681c, B:5547:0x6899, B:5522:0x6837, B:5528:0x6851, B:5531:0x685a, B:5534:0x6863, B:5537:0x686c, B:5540:0x6879, B:5543:0x6888, B:5525:0x6844), top: B:5599:0x681c }] */
    /* JADX WARN: Removed duplicated region for block: B:5550:0x68b8  */
    /* JADX WARN: Removed duplicated region for block: B:5585:0x6052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:559:0x06ab  */
    /* JADX WARN: Removed duplicated region for block: B:5613:0x4ca9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5628:0x0f8f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5638:0x47ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5651:0x021b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5666:0x5f8b A[EDGE_INSN: B:5666:0x5f8b->B:4979:0x5f8b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:566:0x06d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5767:0x0519 A[EDGE_INSN: B:5767:0x0519->B:464:0x0519 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:576:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:577:0x06ec  */
    /* JADX WARN: Removed duplicated region for block: B:585:0x0709  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x0715 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0754  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x0756  */
    /* JADX WARN: Removed duplicated region for block: B:602:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0770  */
    /* JADX WARN: Removed duplicated region for block: B:647:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x0867  */
    /* JADX WARN: Removed duplicated region for block: B:651:0x0879  */
    /* JADX WARN: Removed duplicated region for block: B:656:0x08b9  */
    /* JADX WARN: Removed duplicated region for block: B:662:0x08c5  */
    /* JADX WARN: Removed duplicated region for block: B:665:0x08cf  */
    /* JADX WARN: Removed duplicated region for block: B:666:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:671:0x091b  */
    /* JADX WARN: Removed duplicated region for block: B:794:0x0a90  */
    /* JADX WARN: Removed duplicated region for block: B:798:0x0a9e  */
    /* JADX WARN: Removed duplicated region for block: B:829:0x0ae3  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x0b16  */
    /* JADX WARN: Removed duplicated region for block: B:840:0x0b1f  */
    /* JADX WARN: Removed duplicated region for block: B:872:0x0b94  */
    /* JADX WARN: Removed duplicated region for block: B:883:0x0baa  */
    /* JADX WARN: Removed duplicated region for block: B:890:0x0bbd  */
    /* JADX WARN: Removed duplicated region for block: B:901:0x0bd5  */
    /* JADX WARN: Removed duplicated region for block: B:920:0x0c05  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x0c10 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:938:0x0c2c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:957:0x0c7e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:963:0x0c8e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:970:0x0cab  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x0cd4  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x0cf0  */
    /* JADX WARN: Removed duplicated region for block: B:987:0x0cf8  */
    /* JADX WARN: Removed duplicated region for block: B:997:0x0d25  */
    /* JADX WARN: Type inference failed for: r0v1578, types: [org.telegram.messenger.FileLoader] */
    /* JADX WARN: Type inference failed for: r0v1579, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v168, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v185, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r12v243, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r12v245 */
    /* JADX WARN: Type inference failed for: r12v317 */
    /* JADX WARN: Type inference failed for: r12v318 */
    /* JADX WARN: Type inference failed for: r12v319 */
    /* JADX WARN: Type inference failed for: r12v320 */
    /* JADX WARN: Type inference failed for: r12v321 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v210, types: [int] */
    /* JADX WARN: Type inference failed for: r13v280 */
    /* JADX WARN: Type inference failed for: r13v281 */
    /* JADX WARN: Type inference failed for: r13v339 */
    /* JADX WARN: Type inference failed for: r13v340 */
    /* JADX WARN: Type inference failed for: r13v354 */
    /* JADX WARN: Type inference failed for: r13v355 */
    /* JADX WARN: Type inference failed for: r13v356 */
    /* JADX WARN: Type inference failed for: r14v148 */
    /* JADX WARN: Type inference failed for: r14v149, types: [int] */
    /* JADX WARN: Type inference failed for: r14v150 */
    /* JADX WARN: Type inference failed for: r14v151, types: [int] */
    /* JADX WARN: Type inference failed for: r15v225, types: [org.telegram.tgnet.TLRPC$InputStickerSet] */
    /* JADX WARN: Type inference failed for: r1v118 */
    /* JADX WARN: Type inference failed for: r1v119, types: [org.telegram.tgnet.TLRPC$Document, java.lang.Object, org.telegram.tgnet.TLRPC$PhotoSize] */
    /* JADX WARN: Type inference failed for: r1v146 */
    /* JADX WARN: Type inference failed for: r1v527, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v530, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v532, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v536, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v562, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v815 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v40, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v424 */
    /* JADX WARN: Type inference failed for: r2v425, types: [int] */
    /* JADX WARN: Type inference failed for: r2v439, types: [int] */
    /* JADX WARN: Type inference failed for: r2v460 */
    /* JADX WARN: Type inference failed for: r2v848 */
    /* JADX WARN: Type inference failed for: r2v849 */
    /* JADX WARN: Type inference failed for: r2v883 */
    /* JADX WARN: Type inference failed for: r38v20, types: [android.text.Layout$Alignment] */
    /* JADX WARN: Type inference failed for: r3v313 */
    /* JADX WARN: Type inference failed for: r3v314, types: [int] */
    /* JADX WARN: Type inference failed for: r3v581 */
    /* JADX WARN: Type inference failed for: r3v582, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v585 */
    /* JADX WARN: Type inference failed for: r4v308 */
    /* JADX WARN: Type inference failed for: r4v309, types: [int] */
    /* JADX WARN: Type inference failed for: r4v353, types: [int] */
    /* JADX WARN: Type inference failed for: r4v478 */
    /* JADX WARN: Type inference failed for: r4v479 */
    /* JADX WARN: Type inference failed for: r4v670, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v671 */
    /* JADX WARN: Type inference failed for: r4v712 */
    /* JADX WARN: Type inference failed for: r4v719 */
    /* JADX WARN: Type inference failed for: r54v16 */
    /* JADX WARN: Type inference failed for: r54v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r54v18 */
    /* JADX WARN: Type inference failed for: r56v13 */
    /* JADX WARN: Type inference failed for: r56v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r56v15 */
    /* JADX WARN: Type inference failed for: r56v16 */
    /* JADX WARN: Type inference failed for: r56v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r56v18 */
    /* JADX WARN: Type inference failed for: r59v0 */
    /* JADX WARN: Type inference failed for: r59v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r59v2 */
    /* JADX WARN: Type inference failed for: r6v229, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v238 */
    /* JADX WARN: Type inference failed for: r6v472 */
    /* JADX WARN: Type inference failed for: r76v0, types: [android.view.View, org.telegram.ui.Cells.ChatMessageCell, android.view.ViewGroup, org.telegram.messenger.DownloadController$FileDownloadProgressListener] */
    /* JADX WARN: Type inference failed for: r7v284, types: [java.util.List, java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageContent(org.telegram.messenger.MessageObject r77, org.telegram.messenger.MessageObject.GroupedMessages r78, boolean r79, boolean r80) {
        /*
            Method dump skipped, instructions count: 26851
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.setMessageContent(org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject$GroupedMessages, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMessageContent$8(TLRPC$User tLRPC$User, int i, TLRPC$Chat tLRPC$Chat, long j) {
        if (tLRPC$User != null) {
            this.commentAvatarDrawables[i].setInfo(tLRPC$User);
            this.commentAvatarImages[i].setForUserOrChat(tLRPC$User, this.commentAvatarDrawables[i]);
        } else if (tLRPC$Chat != null) {
            this.commentAvatarDrawables[i].setInfo(tLRPC$Chat);
            this.commentAvatarImages[i].setForUserOrChat(tLRPC$Chat, this.commentAvatarDrawables[i]);
        } else {
            this.commentAvatarDrawables[i].setInfo(j, "", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$setMessageContent$9(PollButton pollButton, PollButton pollButton2) {
        if (pollButton.decimal > pollButton2.decimal) {
            return -1;
        }
        if (pollButton.decimal < pollButton2.decimal) {
            return 1;
        }
        if (pollButton.decimal == pollButton2.decimal) {
            if (pollButton.percent > pollButton2.percent) {
                return 1;
            }
            return pollButton.percent < pollButton2.percent ? -1 : 0;
        }
        return 0;
    }

    private boolean loopStickers() {
        return LiteMode.isEnabled(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void highlightCaptionLink(URLSpan uRLSpan) {
        if (uRLSpan != null) {
            try {
                StaticLayout staticLayout = this.captionLayout;
                if (staticLayout == null || !(staticLayout.getText() instanceof Spanned) || uRLSpan == this.highlightPathSpan) {
                    return;
                }
                this.highlightPathSpan = uRLSpan;
                Spanned spanned = (Spanned) this.captionLayout.getText();
                int spanStart = spanned.getSpanStart(this.highlightPathSpan);
                int spanEnd = spanned.getSpanEnd(this.highlightPathSpan);
                LinkPath linkPath = this.highlightPath;
                if (linkPath != null) {
                    linkPath.rewind();
                } else {
                    this.highlightPath = new LinkPath(true);
                }
                this.highlightPath.setCurrentLayout(this.captionLayout, spanStart, BitmapDescriptorFactory.HUE_RED);
                this.captionLayout.getSelectionPath(spanStart, spanEnd, this.highlightPath);
                this.highlightPathStart = System.currentTimeMillis();
                invalidate();
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
    }

    private void calculateUnlockXY() {
        if (this.currentMessageObject.type != 20 || this.unlockLayout == null) {
            return;
        }
        this.unlockX = this.backgroundDrawableLeft + ((this.photoImage.getImageWidth() - this.unlockLayout.getWidth()) / 2.0f);
        this.unlockY = this.backgroundDrawableTop + this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - this.unlockLayout.getHeight()) / 2.0f);
    }

    private void updateFlagSecure() {
        if (this.flagSecure == null) {
            Activity findActivity = AndroidUtilities.findActivity(getContext());
            Window window = findActivity == null ? null : findActivity.getWindow();
            if (window != null) {
                FlagSecureReason flagSecureReason = new FlagSecureReason(window, new FlagSecureReason.FlagSecureCondition() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.FlagSecureReason.FlagSecureCondition
                    public final boolean run() {
                        boolean lambda$updateFlagSecure$10;
                        lambda$updateFlagSecure$10 = ChatMessageCell.this.lambda$updateFlagSecure$10();
                        return lambda$updateFlagSecure$10;
                    }
                });
                this.flagSecure = flagSecureReason;
                if (this.attachedToWindow) {
                    flagSecureReason.attach();
                }
            }
        }
        FlagSecureReason flagSecureReason2 = this.flagSecure;
        if (flagSecureReason2 != null) {
            flagSecureReason2.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$updateFlagSecure$10() {
        TLRPC$Message tLRPC$Message;
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || (!tLRPC$Message.noforwards && !messageObject.hasRevealedExtendedMedia())) ? false : true;
    }

    public void checkVideoPlayback(boolean z, Bitmap bitmap) {
        if (this.currentMessageObject.isVideo()) {
            if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                this.photoImage.setAllowStartAnimation(false);
                this.photoImage.stopAnimation();
                return;
            }
            this.photoImage.setAllowStartAnimation(true);
            this.photoImage.startAnimation();
            return;
        }
        if (z) {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            z = playingMessageObject == null || !playingMessageObject.isRoundVideo();
        }
        this.photoImage.setAllowStartAnimation(z);
        if (bitmap != null) {
            this.photoImage.startCrossfadeFromStaticThumb(bitmap);
        }
        if (z) {
            this.photoImage.startAnimation();
        } else {
            this.photoImage.stopAnimation();
        }
    }

    private static boolean spanSupportsLongPress(CharacterStyle characterStyle) {
        return (characterStyle instanceof URLSpanMono) || (characterStyle instanceof URLSpan);
    }

    @Override // org.telegram.p042ui.Cells.BaseCell
    protected boolean onLongPress() {
        boolean z = false;
        z = false;
        int i = 0;
        z = false;
        if (this.isRoundVideo && this.isPlayingRound && MediaController.getInstance().isPlayingMessage(this.currentMessageObject) && ((this.lastTouchX - this.photoImage.getCenterX()) * (this.lastTouchX - this.photoImage.getCenterX())) + ((this.lastTouchY - this.photoImage.getCenterY()) * (this.lastTouchY - this.photoImage.getCenterY())) < (this.photoImage.getImageWidth() / 2.0f) * (this.photoImage.getImageWidth() / 2.0f) && (this.lastTouchX > this.photoImage.getCenterX() + (this.photoImage.getImageWidth() / 4.0f) || this.lastTouchX < this.photoImage.getCenterX() - (this.photoImage.getImageWidth() / 4.0f))) {
            boolean z2 = this.lastTouchX > this.photoImage.getCenterX();
            if (this.videoPlayerRewinder == null) {
                this.videoForwardDrawable = new VideoForwardDrawable(true);
                this.videoPlayerRewinder = new VideoPlayerRewinder() { // from class: org.telegram.ui.Cells.ChatMessageCell.6
                    @Override // org.telegram.messenger.video.VideoPlayerRewinder
                    protected void onRewindCanceled() {
                        ChatMessageCell.this.onTouchEvent(MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                        ChatMessageCell.this.videoForwardDrawable.setShowing(false);
                    }

                    @Override // org.telegram.messenger.video.VideoPlayerRewinder
                    protected void updateRewindProgressUi(long j, float f, boolean z3) {
                        ChatMessageCell.this.videoForwardDrawable.setTime(Math.abs(j));
                        if (z3) {
                            ChatMessageCell.this.currentMessageObject.audioProgress = f;
                            ChatMessageCell.this.updatePlayingMessageProgress();
                        }
                    }

                    @Override // org.telegram.messenger.video.VideoPlayerRewinder
                    protected void onRewindStart(boolean z3) {
                        ChatMessageCell.this.videoForwardDrawable.setDelegate(new VideoForwardDrawable.VideoForwardDrawableDelegate() { // from class: org.telegram.ui.Cells.ChatMessageCell.6.1
                            @Override // org.telegram.p042ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
                            public void onAnimationEnd() {
                            }

                            @Override // org.telegram.p042ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
                            public void invalidate() {
                                ChatMessageCell.this.invalidate();
                            }
                        });
                        ChatMessageCell.this.videoForwardDrawable.setOneShootAnimation(false);
                        ChatMessageCell.this.videoForwardDrawable.setLeftSide(!z3);
                        ChatMessageCell.this.videoForwardDrawable.setShowing(true);
                        ChatMessageCell.this.invalidate();
                    }
                };
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.videoPlayerRewinder.startRewind(MediaController.getInstance().getVideoPlayer(), z2, MediaController.getInstance().getPlaybackSpeed(false));
            return false;
        }
        Drawable drawable = this.replySelector;
        if (drawable != null) {
            this.replySelectorPressed = false;
            drawable.setState(new int[0]);
            invalidate();
        }
        MessageTopicButton messageTopicButton = this.topicButton;
        if (messageTopicButton != null) {
            messageTopicButton.resetClick();
        }
        if (this.pressedEmoji != null) {
            this.pressedEmoji = null;
        }
        LinkSpanDrawable linkSpanDrawable = this.pressedLink;
        if (linkSpanDrawable != null) {
            if (linkSpanDrawable.getSpan() instanceof URLSpanMono) {
                this.hadLongPress = true;
                this.delegate.didPressUrl(this, this.pressedLink.getSpan(), true);
                return true;
            } else if (this.pressedLink.getSpan() instanceof URLSpanNoUnderline) {
                URLSpanNoUnderline uRLSpanNoUnderline = (URLSpanNoUnderline) this.pressedLink.getSpan();
                if (ChatActivity.isClickableLink(uRLSpanNoUnderline.getURL()) || uRLSpanNoUnderline.getURL().startsWith("/")) {
                    this.hadLongPress = true;
                    this.delegate.didPressUrl(this, this.pressedLink.getSpan(), true);
                    return true;
                }
            } else if (this.pressedLink.getSpan() instanceof URLSpan) {
                this.hadLongPress = true;
                this.delegate.didPressUrl(this, this.pressedLink.getSpan(), true);
                return true;
            }
        }
        resetPressedLink(-1);
        if (this.buttonPressed != 0 || this.miniButtonPressed != 0 || this.videoButtonPressed != 0 || this.pressedBotButton != -1) {
            this.buttonPressed = 0;
            this.miniButtonPressed = 0;
            this.videoButtonPressed = 0;
            this.pressedBotButton = -1;
            invalidate();
        }
        this.additionalSideButtonPressed = false;
        this.linkPreviewPressed = false;
        this.sideButtonPressed = false;
        this.imagePressed = false;
        this.timePressed = false;
        this.gamePreviewPressed = false;
        if (this.pressedVoteButton != -1 || this.pollHintPressed || this.psaHintPressed || this.instantPressed || this.otherPressed || this.commentButtonPressed) {
            this.commentButtonPressed = false;
            this.instantPressed = false;
            setInstantButtonPressed(false);
            this.pressedVoteButton = -1;
            this.pollHintPressed = false;
            this.psaHintPressed = false;
            this.otherPressed = false;
            if (Build.VERSION.SDK_INT >= 21) {
                int i2 = 0;
                while (true) {
                    Drawable[] drawableArr = this.selectorDrawable;
                    if (i2 >= drawableArr.length) {
                        break;
                    }
                    if (drawableArr[i2] != null) {
                        drawableArr[i2].setState(StateSet.NOTHING);
                    }
                    i2++;
                }
            }
            invalidate();
        }
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate != null) {
            if (this.avatarPressed) {
                TLRPC$User tLRPC$User = this.currentUser;
                if (tLRPC$User != null) {
                    if (tLRPC$User.f1762id != 0) {
                        if (SharedConfig.isExtendedAvatarPreviewerEnabled && SharedConfig.isExtendedAvatarPreviewerByTapEnabled) {
                            chatMessageCellDelegate.didPressUserAvatar(this, tLRPC$User, this.lastTouchX, this.lastTouchY);
                            z = true;
                        } else {
                            z = chatMessageCellDelegate.didLongPressUserAvatar(this, tLRPC$User, this.lastTouchX, this.lastTouchY, false);
                        }
                    }
                } else {
                    TLRPC$Chat tLRPC$Chat = this.currentChat;
                    if (tLRPC$Chat != null) {
                        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader = this.currentMessageObject.messageOwner.fwd_from;
                        if (tLRPC$MessageFwdHeader != null) {
                            if ((tLRPC$MessageFwdHeader.flags & 16) != 0) {
                                i = tLRPC$MessageFwdHeader.saved_from_msg_id;
                            } else {
                                i = tLRPC$MessageFwdHeader.channel_post;
                            }
                        }
                        z = chatMessageCellDelegate.didLongPressChannelAvatar(this, tLRPC$Chat, i, this.lastTouchX, this.lastTouchY);
                    }
                }
            }
            if (!z) {
                this.delegate.didLongPress(this, this.lastTouchX, this.lastTouchY);
            }
        }
        return true;
    }

    public void showHintButton(boolean z, boolean z2, int i) {
        if (i == -1 || i == 0) {
            if (this.hintButtonVisible == z) {
                return;
            }
            this.hintButtonVisible = z;
            if (!z2) {
                this.hintButtonProgress = z ? 1.0f : 0.0f;
            } else {
                invalidate();
            }
        }
        if ((i == -1 || i == 1) && this.psaButtonVisible != z) {
            this.psaButtonVisible = z;
            if (!z2) {
                this.psaButtonProgress = z ? 1.0f : 0.0f;
                return;
            }
            setInvalidatesParent(true);
            invalidate();
        }
    }

    public void setCheckPressed(boolean z, boolean z2) {
        this.isCheckPressed = z;
        this.isPressed = z2;
        updateRadialProgressBackground();
        if (this.useSeekBarWaveform) {
            this.seekBarWaveform.setSelected(isDrawSelectionBackground());
        } else {
            this.seekBar.setSelected(isDrawSelectionBackground());
        }
        invalidate();
    }

    public void setInvalidateSpoilersParent(boolean z) {
        this.invalidateSpoilersParent = z;
    }

    public void setInvalidatesParent(boolean z) {
        this.invalidatesParent = z;
    }

    private boolean invalidateParentForce() {
        return (this.links.isEmpty() && this.reactionsLayoutInBubble.isEmpty) ? false : true;
    }

    public void invalidateOutbounds() {
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate == null || !chatMessageCellDelegate.canDrawOutboundsContent()) {
            if (getParent() instanceof View) {
                ((View) getParent()).invalidate();
                return;
            }
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View, org.telegram.p042ui.Cells.TextSelectionHelper.SelectableView
    public void invalidate() {
        ChatMessageCellDelegate chatMessageCellDelegate;
        if (this.currentMessageObject == null) {
            return;
        }
        super.invalidate();
        if ((this.invalidatesParent || (this.currentMessagesGroup != null && invalidateParentForce())) && getParent() != null) {
            View view = (View) getParent();
            if (view.getParent() != null) {
                view.invalidate();
                ((View) view.getParent()).invalidate();
            }
        }
        if (!this.isBlurred || (chatMessageCellDelegate = this.delegate) == null) {
            return;
        }
        chatMessageCellDelegate.invalidateBlur();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        ChatMessageCellDelegate chatMessageCellDelegate;
        if (this.currentMessageObject == null) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
        if (this.invalidatesParent && getParent() != null) {
            ((View) getParent()).invalidate(((int) getX()) + i, ((int) getY()) + i2, ((int) getX()) + i3, ((int) getY()) + i4);
        }
        if (!this.isBlurred || (chatMessageCellDelegate = this.delegate) == null) {
            return;
        }
        chatMessageCellDelegate.invalidateBlur();
    }

    public boolean isHighlightedAnimated() {
        return this.isHighlightedAnimated;
    }

    public void setHighlightedAnimated() {
        this.isHighlightedAnimated = true;
        this.highlightProgress = 1000;
        this.lastHighlightProgressTime = System.currentTimeMillis();
        invalidate();
        if (getParent() != null) {
            ((View) getParent()).invalidate();
        }
    }

    public boolean isHighlighted() {
        return this.isHighlighted;
    }

    public void setHighlighted(boolean z) {
        if (this.isHighlighted == z) {
            return;
        }
        this.isHighlighted = z;
        if (!z) {
            this.lastHighlightProgressTime = System.currentTimeMillis();
            this.isHighlightedAnimated = true;
            this.highlightProgress = 300;
        } else {
            this.isHighlightedAnimated = false;
            this.highlightProgress = 0;
        }
        updateRadialProgressBackground();
        if (this.useSeekBarWaveform) {
            this.seekBarWaveform.setSelected(isDrawSelectionBackground());
        } else {
            this.seekBar.setSelected(isDrawSelectionBackground());
        }
        invalidate();
        if (getParent() != null) {
            ((View) getParent()).invalidate();
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        updateRadialProgressBackground();
        if (this.useSeekBarWaveform) {
            this.seekBarWaveform.setSelected(isDrawSelectionBackground());
        } else {
            this.seekBar.setSelected(isDrawSelectionBackground());
        }
        invalidate();
    }

    private void updateRadialProgressBackground() {
        if (this.drawRadialCheckBackground) {
            return;
        }
        boolean z = true;
        boolean z2 = (this.isHighlighted || this.isPressed || isPressed()) && !(this.drawPhotoImage && this.photoImage.hasBitmapImage());
        this.radialProgress.setPressed(z2 || this.buttonPressed != 0, false);
        if (this.hasMiniProgress != 0) {
            this.radialProgress.setPressed(z2 || this.miniButtonPressed != 0, true);
        }
        RadialProgress2 radialProgress2 = this.videoRadialProgress;
        if (!z2 && this.videoButtonPressed == 0) {
            z = false;
        }
        radialProgress2.setPressed(z, false);
    }

    @Override // org.telegram.p042ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarPressed() {
        requestDisallowInterceptTouchEvent(true);
    }

    @Override // org.telegram.p042ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarReleased() {
        requestDisallowInterceptTouchEvent(false);
    }

    @Override // org.telegram.p042ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarDrag(float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.audioProgress = f;
        MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        updatePlayingMessageProgress();
    }

    @Override // org.telegram.p042ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarContinuousDrag(float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.audioProgress = f;
        messageObject.audioProgressSec = (int) (messageObject.getDuration() * f);
        updatePlayingMessageProgress();
    }

    public boolean isAnimatingPollAnswer() {
        return this.animatePollAnswerAlpha;
    }

    private void updateWaveform() {
        TLRPC$Message tLRPC$Message;
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message2;
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 != null) {
            int i = this.documentAttachType;
            if (i == 3 || i == 7) {
                byte[] waveform = messageObject2.getWaveform();
                boolean z = true;
                this.useSeekBarWaveform = waveform != null;
                SeekBarWaveform seekBarWaveform = this.seekBarWaveform;
                if (seekBarWaveform != null) {
                    seekBarWaveform.setWaveform(waveform);
                }
                MessageObject messageObject3 = this.currentMessageObject;
                if (messageObject3 == null || ((messageObject3.isOutOwner() && !this.currentMessageObject.isSent()) || ((!UserConfig.getInstance(this.currentAccount).isPremium() && !isAllowForkTranscribe() && (MessagesController.getInstance(this.currentAccount).didPressTranscribeButtonEnough() || this.currentMessageObject.isOutOwner() || ((((tLRPC$Message2 = (messageObject = this.currentMessageObject).messageOwner) == null || !tLRPC$Message2.voiceTranscriptionForce) && messageObject.getDuration() < 60.0d) || MessagesController.getInstance(this.currentAccount).premiumLocked))) || (((!this.currentMessageObject.isVoice() || !this.useSeekBarWaveform) && !this.currentMessageObject.isRoundVideo()) || (tLRPC$Message = this.currentMessageObject.messageOwner) == null || (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaWebPage))))) {
                    z = false;
                }
                this.useTranscribeButton = z;
                updateSeekBarWaveformWidth(null);
            }
        }
    }

    private void updateSeekBarWaveformWidth(Canvas canvas) {
        int i;
        this.seekBarWaveformTranslateX = 0;
        int i2 = -AndroidUtilities.m102dp((this.hasLinkPreview ? 10 : 0) + 92);
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateBackgroundBoundsInner && ((i = this.documentAttachType) == 3 || i == 7)) {
            int i3 = this.backgroundWidth;
            int i4 = (int) ((i3 - transitionParams.toDeltaLeft) + transitionParams.toDeltaRight);
            int i5 = (int) ((i3 - transitionParams.deltaLeft) + transitionParams.deltaRight);
            if (this.isRoundVideo && !this.drawBackground) {
                i5 = (int) (i5 + (getVideoTranscriptionProgress() * AndroidUtilities.m102dp(8)));
                i4 += AndroidUtilities.m102dp(8);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (transitionParams2.toDeltaLeft == BitmapDescriptorFactory.HUE_RED && transitionParams2.toDeltaRight == BitmapDescriptorFactory.HUE_RED) {
                i4 = i5;
            }
            SeekBarWaveform seekBarWaveform = this.seekBarWaveform;
            if (seekBarWaveform != null) {
                if (transitionParams2.animateUseTranscribeButton) {
                    seekBarWaveform.setSize((i5 + i2) - ((int) (AndroidUtilities.m102dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m102dp(30), i3 + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m102dp(34) : 0), i4 + i2 + (this.useTranscribeButton ? -AndroidUtilities.m102dp(34) : 0));
                } else {
                    seekBarWaveform.setSize((i5 + i2) - ((int) (AndroidUtilities.m102dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m102dp(30), (i3 + i2) - ((int) (AndroidUtilities.m102dp(34) * getUseTranscribeButtonProgress())), (i4 + i2) - ((int) (AndroidUtilities.m102dp(34) * getUseTranscribeButtonProgress())));
                }
            }
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.setSize((i5 - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m102dp(34)))) - AndroidUtilities.m102dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 10 : 0)), AndroidUtilities.m102dp(30));
                return;
            }
            return;
        }
        SeekBarWaveform seekBarWaveform2 = this.seekBarWaveform;
        if (seekBarWaveform2 != null) {
            if (transitionParams.animateUseTranscribeButton) {
                seekBarWaveform2.setSize((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m102dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m102dp(30), this.backgroundWidth + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m102dp(34) : 0), this.backgroundWidth + i2 + (this.useTranscribeButton ? -AndroidUtilities.m102dp(34) : 0));
            } else {
                seekBarWaveform2.setSize((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m102dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m102dp(30));
            }
        }
        SeekBar seekBar2 = this.seekBar;
        if (seekBar2 != null) {
            seekBar2.setSize((this.backgroundWidth - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m102dp(34)))) - AndroidUtilities.m102dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 10 : 0)), AndroidUtilities.m102dp(30));
        }
    }

    private int createDocumentLayout(int i, MessageObject messageObject) {
        int i2;
        int i3 = i;
        if (messageObject.type == 0) {
            this.documentAttach = MessageObject.getMedia(messageObject.messageOwner).webpage.document;
        } else {
            this.documentAttach = messageObject.getDocument();
        }
        TLRPC$Document tLRPC$Document = this.documentAttach;
        int i4 = 0;
        if (tLRPC$Document == null) {
            return 0;
        }
        double d = 0.0d;
        if (MessageObject.isVoiceDocument(tLRPC$Document)) {
            this.documentAttachType = 3;
            int i5 = 0;
            while (true) {
                if (i5 >= this.documentAttach.attributes.size()) {
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = this.documentAttach.attributes.get(i5);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                    d = tLRPC$DocumentAttribute.duration;
                    break;
                }
                i5++;
            }
            this.widthBeforeNewTimeLine = (i3 - AndroidUtilities.m102dp(94)) - ((int) Math.ceil(Theme.chat_audioTimePaint.measureText("00:00")));
            this.availableTimeWidth = i3 - AndroidUtilities.m102dp(18);
            measureTime(messageObject);
            int m102dp = AndroidUtilities.m102dp(174) + this.timeWidth;
            if (!this.hasLinkPreview) {
                this.backgroundWidth = Math.min(i3, m102dp + ((int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatLongDuration((int) d)))));
            }
            this.seekBarWaveform.setMessageObject(messageObject);
            return 0;
        } else if (MessageObject.isVideoDocument(this.documentAttach)) {
            this.documentAttachType = 4;
            if (!messageObject.needDrawBluredPreview()) {
                updatePlayingMessageProgress();
                String format = String.format("%s", AndroidUtilities.formatFileSize(this.documentAttach.size));
                this.docTitleWidth = (int) Math.ceil(Theme.chat_infoPaint.measureText(format));
                this.docTitleLayout = new StaticLayout(format, Theme.chat_infoPaint, this.docTitleWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            return 0;
        } else if (MessageObject.isMusicDocument(this.documentAttach)) {
            this.documentAttachType = 5;
            int m102dp2 = i3 - AndroidUtilities.m102dp(92);
            if (m102dp2 < 0) {
                m102dp2 = AndroidUtilities.m102dp(100);
            }
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicTitle().replace('\n', ' '), Theme.chat_audioTitlePaint, m102dp2 - AndroidUtilities.m102dp(12), TextUtils.TruncateAt.END), Theme.chat_audioTitlePaint, m102dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.songLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                this.songX = -((int) Math.ceil(this.songLayout.getLineLeft(0)));
            }
            StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicAuthor().replace('\n', ' '), Theme.chat_audioPerformerPaint, m102dp2, TextUtils.TruncateAt.END), Theme.chat_audioPerformerPaint, m102dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.performerLayout = staticLayout2;
            if (staticLayout2.getLineCount() > 0) {
                this.performerX = -((int) Math.ceil(this.performerLayout.getLineLeft(0)));
            }
            int m102dp3 = m102dp2 - AndroidUtilities.m102dp(30);
            TextPaint textPaint = Theme.chat_infoPaint;
            int min = Math.min(m102dp3, (int) Math.ceil(textPaint.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min;
            if (min < 0) {
                try {
                    this.infoWidth = AndroidUtilities.m102dp(10);
                } catch (Exception e) {
                    FileLog.m97e(e);
                }
            }
            this.infoLayout = new StaticLayout(TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size), Theme.chat_infoPaint, this.infoWidth, TextUtils.TruncateAt.END), Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            while (true) {
                if (i4 >= this.documentAttach.attributes.size()) {
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = this.documentAttach.attributes.get(i4);
                if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeAudio) {
                    d = tLRPC$DocumentAttribute2.duration;
                    break;
                }
                i4++;
            }
            int i6 = (int) d;
            int ceil = (int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatShortDuration(i6, i6)));
            this.widthBeforeNewTimeLine = (this.backgroundWidth - AndroidUtilities.m102dp(86)) - ceil;
            this.availableTimeWidth = this.backgroundWidth - AndroidUtilities.m102dp(28);
            return ceil;
        } else if (MessageObject.isGifDocument(this.documentAttach, messageObject.hasValidGroupId())) {
            this.documentAttachType = 2;
            if (!messageObject.needDrawBluredPreview()) {
                String string = LocaleController.getString("AttachGif", C3630R.string.AttachGif);
                this.infoWidth = (int) Math.ceil(Theme.chat_infoPaint.measureText(string));
                this.infoLayout = new StaticLayout(string, Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                String format2 = String.format("%s", AndroidUtilities.formatFileSize(this.documentAttach.size));
                this.docTitleWidth = (int) Math.ceil(Theme.chat_infoPaint.measureText(format2));
                this.docTitleLayout = new StaticLayout(format2, Theme.chat_infoPaint, this.docTitleWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            return 0;
        } else {
            String str = this.documentAttach.mime_type;
            boolean z = (str != null && (str.toLowerCase().startsWith("image/") || this.documentAttach.mime_type.toLowerCase().startsWith(MimeTypes.VIDEO_MP4))) || MessageObject.isDocumentHasThumb(this.documentAttach);
            this.drawPhotoImage = z;
            if (!z) {
                i3 += AndroidUtilities.m102dp(30);
            }
            this.documentAttachType = 1;
            String documentFileName = FileLoader.getDocumentFileName(this.documentAttach);
            this.isBackupFile = BackupController.isBackupFileName(documentFileName);
            if (documentFileName.length() == 0) {
                documentFileName = LocaleController.getString("AttachDocument", C3630R.string.AttachDocument);
            }
            StaticLayout createStaticLayout = StaticLayoutEx.createStaticLayout(documentFileName, Theme.chat_docNamePaint, i3, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.MIDDLE, i3, 2, false);
            this.docTitleLayout = createStaticLayout;
            this.docTitleOffsetX = Integer.MIN_VALUE;
            if (createStaticLayout != null && createStaticLayout.getLineCount() > 0) {
                int i7 = 0;
                while (i4 < this.docTitleLayout.getLineCount()) {
                    i7 = Math.max(i7, (int) Math.ceil(this.docTitleLayout.getLineWidth(i4)));
                    this.docTitleOffsetX = Math.max(this.docTitleOffsetX, (int) Math.ceil(-this.docTitleLayout.getLineLeft(i4)));
                    i4++;
                }
                i2 = Math.min(i3, i7);
            } else {
                this.docTitleOffsetX = 0;
                i2 = i3;
            }
            int m102dp4 = i3 - AndroidUtilities.m102dp(30);
            TextPaint textPaint2 = Theme.chat_infoPaint;
            int min2 = Math.min(m102dp4, (int) Math.ceil(textPaint2.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min2;
            CharSequence ellipsize = TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size) + " " + FileLoader.getDocumentExtension(this.documentAttach), Theme.chat_infoPaint, (float) min2, TextUtils.TruncateAt.END);
            try {
                if (this.infoWidth < 0) {
                    this.infoWidth = AndroidUtilities.m102dp(10);
                }
                this.infoLayout = new StaticLayout(ellipsize, Theme.chat_infoPaint, this.infoWidth + AndroidUtilities.m102dp(6), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } catch (Exception e2) {
                FileLog.m97e(e2);
            }
            if (this.drawPhotoImage) {
                this.currentPhotoObject = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 320);
                this.currentPhotoObjectThumb = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 40);
                if ((DownloadController.getInstance(this.currentAccount).getAutodownloadMask() & 1) == 0) {
                    this.currentPhotoObject = null;
                }
                TLRPC$PhotoSize tLRPC$PhotoSize = this.currentPhotoObject;
                if (tLRPC$PhotoSize == null || tLRPC$PhotoSize == this.currentPhotoObjectThumb) {
                    this.currentPhotoObject = null;
                    this.photoImage.setNeedsQualityThumb(true);
                    this.photoImage.setShouldGenerateQualityThumb(true);
                } else {
                    BitmapDrawable bitmapDrawable = this.currentMessageObject.strippedThumb;
                    if (bitmapDrawable != null) {
                        this.currentPhotoObjectThumb = null;
                        this.currentPhotoObjectThumbStripped = bitmapDrawable;
                    }
                }
                this.currentPhotoFilter = "86_86_b";
                this.photoImage.setImage(ImageLocation.getForObject(this.currentPhotoObject, messageObject.photoThumbsObject), "86_86", ImageLocation.getForObject(this.currentPhotoObjectThumb, messageObject.photoThumbsObject), this.currentPhotoFilter, this.currentPhotoObjectThumbStripped, 0L, null, messageObject, 1);
            }
            return i2;
        }
    }

    private void calcBackgroundWidth(int i, int i2, int i3) {
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        boolean z = reactionsLayoutInBubble.isEmpty;
        int i4 = (z || reactionsLayoutInBubble.isSmall) ? this.currentMessageObject.lastLineWidth : reactionsLayoutInBubble.lastLineX;
        boolean z2 = false;
        if (!z && !reactionsLayoutInBubble.isSmall) {
            if (i - i4 < i2 || this.currentMessageObject.hasRtl) {
                z2 = true;
            }
            if (this.hasInvoicePreview) {
                this.totalHeight += AndroidUtilities.m102dp(14);
            }
        } else if (this.hasLinkPreview || this.hasOldCaptionPreview || this.hasGamePreview || this.hasInvoicePreview || i - i4 < i2 || this.currentMessageObject.hasRtl) {
            z2 = true;
        }
        if (z2) {
            this.totalHeight += AndroidUtilities.m102dp(14);
            this.hasNewLineForTime = true;
            int max = Math.max(i3, i4) + AndroidUtilities.m102dp(31);
            this.backgroundWidth = max;
            this.backgroundWidth = Math.max(max, (this.currentMessageObject.isOutOwner() ? this.timeWidth + AndroidUtilities.m102dp(17) : this.timeWidth) + AndroidUtilities.m102dp(31));
            return;
        }
        int extraTextX = (i3 - getExtraTextX()) - i4;
        if (extraTextX >= 0 && extraTextX <= i2) {
            this.backgroundWidth = ((i3 + i2) - extraTextX) + AndroidUtilities.m102dp(31);
        } else {
            this.backgroundWidth = Math.max(i3, i4 + i2) + AndroidUtilities.m102dp(31);
        }
    }

    public void setHighlightedText(String str) {
        MessageObject messageObject = this.messageObjectToSet;
        if (messageObject == null) {
            messageObject = this.currentMessageObject;
        }
        if (messageObject == null || messageObject.messageOwner.message == null || TextUtils.isEmpty(str)) {
            if (this.urlPathSelection.isEmpty()) {
                return;
            }
            this.linkSelectionBlockNum = -1;
            resetUrlPaths();
            invalidate();
            return;
        }
        String lowerCase = str.toLowerCase();
        String lowerCase2 = messageObject.messageOwner.message.toLowerCase();
        int length = lowerCase2.length();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            int min = Math.min(lowerCase.length(), length - i3);
            int i4 = 0;
            for (int i5 = 0; i5 < min; i5++) {
                boolean z = lowerCase2.charAt(i3 + i5) == lowerCase.charAt(i5);
                if (z) {
                    if (i4 != 0 || i3 == 0 || " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(lowerCase2.charAt(i3 - 1)) >= 0) {
                        i4++;
                    } else {
                        z = false;
                    }
                }
                if (!z || i5 == min - 1) {
                    if (i4 > 0 && i4 > i2) {
                        i = i3;
                        i2 = i4;
                    }
                }
            }
        }
        if (i == -1) {
            if (this.urlPathSelection.isEmpty()) {
                return;
            }
            this.linkSelectionBlockNum = -1;
            resetUrlPaths();
            invalidate();
            return;
        }
        int length2 = lowerCase2.length();
        for (int i6 = i + i2; i6 < length2 && " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(lowerCase2.charAt(i6)) < 0; i6++) {
            i2++;
        }
        int i7 = i + i2;
        if (this.captionLayout != null && !TextUtils.isEmpty(messageObject.caption)) {
            resetUrlPaths();
            try {
                LinkPath obtainNewUrlPath = obtainNewUrlPath();
                obtainNewUrlPath.setCurrentLayout(this.captionLayout, i, BitmapDescriptorFactory.HUE_RED);
                this.captionLayout.getSelectionPath(i, i7, obtainNewUrlPath);
            } catch (Exception e) {
                FileLog.m97e(e);
            }
            invalidate();
        } else if (messageObject.textLayoutBlocks != null) {
            for (int i8 = 0; i8 < messageObject.textLayoutBlocks.size(); i8++) {
                MessageObject.TextLayoutBlock textLayoutBlock = messageObject.textLayoutBlocks.get(i8);
                if (i >= textLayoutBlock.charactersOffset && i < textLayoutBlock.charactersEnd) {
                    this.linkSelectionBlockNum = i8;
                    resetUrlPaths();
                    try {
                        LinkPath obtainNewUrlPath2 = obtainNewUrlPath();
                        obtainNewUrlPath2.setCurrentLayout(textLayoutBlock.textLayout, i, BitmapDescriptorFactory.HUE_RED);
                        textLayoutBlock.textLayout.getSelectionPath(i, i7, obtainNewUrlPath2);
                        if (i7 >= textLayoutBlock.charactersOffset + i2) {
                            for (int i9 = i8 + 1; i9 < messageObject.textLayoutBlocks.size(); i9++) {
                                MessageObject.TextLayoutBlock textLayoutBlock2 = messageObject.textLayoutBlocks.get(i9);
                                int i10 = textLayoutBlock2.charactersEnd - textLayoutBlock2.charactersOffset;
                                LinkPath obtainNewUrlPath3 = obtainNewUrlPath();
                                obtainNewUrlPath3.setCurrentLayout(textLayoutBlock2.textLayout, 0, textLayoutBlock2.height);
                                textLayoutBlock2.textLayout.getSelectionPath(0, i7 - textLayoutBlock2.charactersOffset, obtainNewUrlPath3);
                                if (i7 < (textLayoutBlock.charactersOffset + i10) - 1) {
                                    break;
                                }
                            }
                        }
                    } catch (Exception e2) {
                        FileLog.m97e(e2);
                    }
                    invalidate();
                    return;
                }
            }
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        if (drawable == this.selectorDrawable[2] || super.verifyDrawable(drawable)) {
            return true;
        }
        Drawable[] drawableArr = this.selectorDrawable;
        return drawable == drawableArr[0] || drawable == drawableArr[1];
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        super.invalidateDrawable(drawable);
        if (this.currentMessagesGroup != null) {
            invalidateWithParent();
        }
    }

    private boolean isCurrentLocationTimeExpired(MessageObject messageObject) {
        return MessageObject.getMedia(this.currentMessageObject.messageOwner).period % 60 == 0 ? Math.abs(ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - messageObject.messageOwner.date) > MessageObject.getMedia(messageObject.messageOwner).period : Math.abs(ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - messageObject.messageOwner.date) > MessageObject.getMedia(messageObject.messageOwner).period + (-5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLocationExpired() {
        boolean isCurrentLocationTimeExpired;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || (isCurrentLocationTimeExpired = isCurrentLocationTimeExpired(messageObject)) == this.locationExpired) {
            return;
        }
        this.locationExpired = isCurrentLocationTimeExpired;
        if (!isCurrentLocationTimeExpired) {
            AndroidUtilities.runOnUIThread(this.invalidateRunnable, 1000L);
            this.scheduledInvalidate = true;
            int m102dp = this.backgroundWidth - AndroidUtilities.m102dp(91);
            this.docTitleLayout = new StaticLayout(TextUtils.ellipsize(LocaleController.getString("AttachLiveLocation", C3630R.string.AttachLiveLocation), Theme.chat_locationTitlePaint, m102dp, TextUtils.TruncateAt.END), Theme.chat_locationTitlePaint, m102dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            return;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        this.currentMessageObject = null;
        setMessageObject(messageObject2, this.currentMessagesGroup, this.pinnedBottom, this.pinnedTop);
    }

    public void setIsUpdating(boolean z) {
        this.isUpdating = true;
    }

    public void setMessageObject(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, boolean z, boolean z2) {
        if (this.attachedToWindow) {
            setMessageContent(messageObject, groupedMessages, z, z2);
            return;
        }
        this.messageObjectToSet = messageObject;
        this.groupedMessagesToSet = groupedMessages;
        this.bottomNearToSet = z;
        this.topNearToSet = z2;
    }

    private int getAdditionalWidthForPosition(MessageObject.GroupedMessagePosition groupedMessagePosition) {
        if (groupedMessagePosition != null) {
            int m102dp = (groupedMessagePosition.flags & 2) == 0 ? 0 + AndroidUtilities.m102dp(4) : 0;
            return (groupedMessagePosition.flags & 1) == 0 ? m102dp + AndroidUtilities.m102dp(4) : m102dp;
        }
        return 0;
    }

    public void createSelectorDrawable(final int i) {
        int themedColor;
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (this.psaHintPressed) {
            themedColor = getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outViews : Theme.key_chat_inViews);
        } else {
            themedColor = getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outPreviewInstantText : Theme.key_chat_inPreviewInstantText);
        }
        Drawable[] drawableArr = this.selectorDrawable;
        if (drawableArr[i] == null) {
            final Paint paint = new Paint(1);
            paint.setColor(-1);
            Drawable drawable = new Drawable() { // from class: org.telegram.ui.Cells.ChatMessageCell.7
                RectF rect = new RectF();
                Path path = new Path();

                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return -2;
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i2) {
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }

                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    Rect bounds = getBounds();
                    this.rect.set(bounds.left, bounds.top, bounds.right, bounds.bottom);
                    if (ChatMessageCell.this.selectorDrawableMaskType[i] != 3 && ChatMessageCell.this.selectorDrawableMaskType[i] != 4) {
                        int i2 = ChatMessageCell.this.selectorDrawableMaskType[i];
                        float f = BitmapDescriptorFactory.HUE_RED;
                        if (i2 == 2) {
                            this.path.reset();
                            boolean z = ChatMessageCell.this.currentMessageObject != null && ChatMessageCell.this.currentMessageObject.isOutOwner();
                            for (int i3 = 0; i3 < 4; i3++) {
                                if (!ChatMessageCell.this.instantTextNewLine) {
                                    if (i3 == 2 && !z) {
                                        float[] fArr = ChatMessageCell.radii;
                                        int i4 = i3 * 2;
                                        float m102dp = AndroidUtilities.m102dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i4 + 1] = m102dp;
                                        fArr[i4] = m102dp;
                                    } else if (i3 != 3 || !z) {
                                        if ((ChatMessageCell.this.mediaBackground || ChatMessageCell.this.pinnedBottom) && (i3 == 2 || i3 == 3)) {
                                            float[] fArr2 = ChatMessageCell.radii;
                                            int i5 = i3 * 2;
                                            float[] fArr3 = ChatMessageCell.radii;
                                            int i6 = i5 + 1;
                                            float m102dp2 = AndroidUtilities.m102dp(ChatMessageCell.this.pinnedBottom ? Math.min(5, SharedConfig.bubbleRadius) : SharedConfig.bubbleRadius);
                                            fArr3[i6] = m102dp2;
                                            fArr2[i5] = m102dp2;
                                        }
                                    } else {
                                        float[] fArr4 = ChatMessageCell.radii;
                                        int i7 = i3 * 2;
                                        float m102dp3 = AndroidUtilities.m102dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i7 + 1] = m102dp3;
                                        fArr4[i7] = m102dp3;
                                    }
                                }
                                float[] fArr5 = ChatMessageCell.radii;
                                int i8 = i3 * 2;
                                ChatMessageCell.radii[i8 + 1] = 0.0f;
                                fArr5[i8] = 0.0f;
                            }
                            if (!z) {
                                ChatMessageCell chatMessageCell = ChatMessageCell.this;
                                if (!chatMessageCell.drawPinnedBottom && chatMessageCell.currentPosition == null && (ChatMessageCell.this.currentMessageObject == null || ChatMessageCell.this.currentMessageObject.type != 17 || ChatMessageCell.this.pollInstantViewTouchesBottom)) {
                                    this.path.moveTo(this.rect.left + AndroidUtilities.m102dp(6), this.rect.top);
                                    this.path.lineTo(this.rect.left + AndroidUtilities.m102dp(6), (this.rect.bottom - AndroidUtilities.m102dp(6)) - AndroidUtilities.m102dp(5));
                                    RectF rectF = AndroidUtilities.rectTmp;
                                    rectF.set(this.rect.left + AndroidUtilities.m102dp(-7), this.rect.bottom - AndroidUtilities.m102dp(23), this.rect.left + AndroidUtilities.m102dp(6), this.rect.bottom);
                                    this.path.arcTo(rectF, BitmapDescriptorFactory.HUE_RED, 83.0f, false);
                                    RectF rectF2 = this.rect;
                                    rectF.set(this.rect.right - (ChatMessageCell.radii[4] * 2.0f), this.rect.bottom - (ChatMessageCell.radii[5] * 2.0f), rectF2.right, rectF2.bottom);
                                    this.path.arcTo(rectF, 90.0f, -90.0f, false);
                                    Path path = this.path;
                                    RectF rectF3 = this.rect;
                                    path.lineTo(rectF3.right, rectF3.top);
                                    this.path.close();
                                    this.path.close();
                                    canvas.drawPath(this.path, paint);
                                    return;
                                }
                            }
                            this.path.addRoundRect(this.rect, ChatMessageCell.radii, Path.Direction.CW);
                            this.path.close();
                            canvas.drawPath(this.path, paint);
                            return;
                        }
                        RectF rectF4 = this.rect;
                        float m102dp4 = ChatMessageCell.this.selectorDrawableMaskType[i] == 0 ? AndroidUtilities.m102dp(6) : 0.0f;
                        if (ChatMessageCell.this.selectorDrawableMaskType[i] == 0) {
                            f = AndroidUtilities.m102dp(6);
                        }
                        canvas.drawRoundRect(rectF4, m102dp4, f, paint);
                        return;
                    }
                    canvas.drawCircle(this.rect.centerX(), this.rect.centerY(), AndroidUtilities.m102dp(ChatMessageCell.this.selectorDrawableMaskType[i] == 3 ? 16 : 20), paint);
                }
            };
            int[][] iArr = {StateSet.WILD_CARD};
            int[] iArr2 = new int[1];
            iArr2[0] = 436207615 & getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outPreviewInstantText : Theme.key_chat_inPreviewInstantText);
            this.selectorDrawable[i] = new RippleDrawable(new ColorStateList(iArr, iArr2), null, drawable);
            this.selectorDrawable[i].setCallback(this);
        } else {
            Theme.setSelectorDrawableColor(drawableArr[i], themedColor & 436207615, true);
        }
        this.selectorDrawable[i].setVisible(true, false);
    }

    private void createInstantViewButton() {
        String string;
        int measureText;
        if (Build.VERSION.SDK_INT >= 21 && this.drawInstantView) {
            createSelectorDrawable(0);
        }
        if (this.drawInstantView && this.instantViewLayout == null) {
            this.instantWidth = AndroidUtilities.m102dp(33);
            int i = this.drawInstantViewType;
            if (i == 12) {
                string = LocaleController.getString("OpenChannelPost", C3630R.string.OpenChannelPost);
            } else if (i == 1) {
                string = LocaleController.getString("OpenChannel", C3630R.string.OpenChannel);
            } else if (i == 13) {
                string = LocaleController.getString("SendMessage", C3630R.string.SendMessage).toUpperCase();
            } else if (i == 10) {
                string = LocaleController.getString("OpenBot", C3630R.string.OpenBot);
            } else if (i == 2) {
                string = LocaleController.getString("OpenGroup", C3630R.string.OpenGroup);
            } else if (i == 3) {
                string = LocaleController.getString("OpenMessage", C3630R.string.OpenMessage);
            } else if (i == 5) {
                string = LocaleController.getString("ViewContact", C3630R.string.ViewContact);
            } else if (i == 6) {
                string = LocaleController.getString("OpenBackground", C3630R.string.OpenBackground);
            } else if (i == 7) {
                string = LocaleController.getString("OpenTheme", C3630R.string.OpenTheme);
            } else if (i == 8) {
                if (this.pollVoted || this.pollClosed) {
                    string = LocaleController.getString("PollViewResults", C3630R.string.PollViewResults);
                } else {
                    string = LocaleController.getString("PollSubmitVotes", C3630R.string.PollSubmitVotes);
                }
            } else if (i == 9 || i == 11) {
                TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) MessageObject.getMedia(this.currentMessageObject.messageOwner).webpage;
                if (tLRPC$TL_webPage != null && tLRPC$TL_webPage.url.contains("voicechat=")) {
                    string = LocaleController.getString("VoipGroupJoinAsSpeaker", C3630R.string.VoipGroupJoinAsSpeaker);
                } else {
                    string = LocaleController.getString("VoipGroupJoinAsLinstener", C3630R.string.VoipGroupJoinAsLinstener);
                }
            } else if (i == 14) {
                string = LocaleController.getString("ViewChatList", C3630R.string.ViewChatList).toUpperCase();
            } else if (i == 15) {
                string = LocaleController.getString(C3630R.string.BotWebAppInstantViewOpen).toUpperCase();
            } else if (i == 16) {
                string = LocaleController.getString("OpenLink").toUpperCase();
            } else if (i == 17) {
                string = LocaleController.getString("ViewStory").toUpperCase();
            } else if (i == 18) {
                string = LocaleController.getString("BoostLinkButton", C3630R.string.BoostLinkButton);
            } else {
                string = LocaleController.getString("InstantView", C3630R.string.InstantView);
            }
            if (this.currentMessageObject.isSponsored() && this.backgroundWidth < (measureText = (int) (Theme.chat_instantViewPaint.measureText(string) + AndroidUtilities.m102dp(75)))) {
                this.backgroundWidth = measureText;
            }
            int m102dp = this.backgroundWidth - AndroidUtilities.m102dp(75);
            this.instantViewLayout = new StaticLayout(TextUtils.ellipsize(string, Theme.chat_instantViewPaint, m102dp, TextUtils.TruncateAt.END), Theme.chat_instantViewPaint, m102dp + AndroidUtilities.m102dp(2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (this.drawInstantViewType == 8) {
                this.instantWidth = this.backgroundWidth - AndroidUtilities.m102dp(13);
            } else {
                this.instantWidth = this.backgroundWidth - AndroidUtilities.m102dp(34);
            }
            int m102dp2 = this.totalHeight + AndroidUtilities.m102dp(46);
            this.totalHeight = m102dp2;
            if (this.currentMessageObject.type == 12) {
                this.totalHeight = m102dp2 + AndroidUtilities.m102dp(14);
            }
            if (this.currentMessageObject.isSponsored() && this.hasNewLineForTime) {
                this.totalHeight += AndroidUtilities.m102dp(16);
            }
            StaticLayout staticLayout = this.instantViewLayout;
            if (staticLayout == null || staticLayout.getLineCount() <= 0) {
                return;
            }
            this.instantTextX = (((int) (this.instantWidth - Math.ceil(this.instantViewLayout.getLineWidth(0)))) / 2) + (this.drawInstantViewType == 0 ? AndroidUtilities.m102dp(8) : 0);
            int lineLeft = (int) this.instantViewLayout.getLineLeft(0);
            this.instantTextLeftX = lineLeft;
            this.instantTextX += -lineLeft;
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.inLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        MessageObject messageObject = this.currentMessageObject;
        int i3 = 0;
        if (messageObject != null && (messageObject.checkLayout() || this.lastHeight != AndroidUtilities.displaySize.y)) {
            this.inLayout = true;
            MessageObject messageObject2 = this.currentMessageObject;
            this.currentMessageObject = null;
            setMessageObject(messageObject2, this.currentMessagesGroup, this.pinnedBottom, this.pinnedTop);
            this.inLayout = false;
        }
        updateSelectionTextPosition();
        int size = View.MeasureSpec.getSize(i);
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 == null || !messageObject3.hidden) {
            i3 = this.keyboardHeight + this.totalHeight;
        }
        setMeasuredDimension(size, i3);
    }

    public void forceResetMessageObject() {
        MessageObject messageObject = this.messageObjectToSet;
        if (messageObject == null) {
            messageObject = this.currentMessageObject;
        }
        this.currentMessageObject = null;
        setMessageObject(messageObject, this.currentMessagesGroup, this.pinnedBottom, this.pinnedTop);
    }

    private int getGroupPhotosWidth() {
        int parentWidth = getParentWidth();
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.preview) {
            parentWidth = this.parentWidth;
        }
        if (AndroidUtilities.isInMultiwindow || !AndroidUtilities.isTablet()) {
            return parentWidth;
        }
        if (!AndroidUtilities.isSmallTablet() || getResources().getConfiguration().orientation == 2) {
            int i = (parentWidth / 100) * 35;
            if (i < AndroidUtilities.m102dp(320)) {
                i = AndroidUtilities.m102dp(320);
            }
            return parentWidth - i;
        }
        return parentWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getExtraTextX() {
        int i = SharedConfig.bubbleRadius;
        if (i >= 15) {
            return AndroidUtilities.m102dp(2);
        }
        if (i >= 11) {
            return AndroidUtilities.m102dp(1);
        }
        return 0;
    }

    private int getExtraTimeX() {
        int i;
        if (!this.currentMessageObject.isOutOwner() && ((!this.mediaBackground || this.captionLayout != null) && (i = SharedConfig.bubbleRadius) > 11)) {
            return AndroidUtilities.m103dp((i - 11) / 1.5f);
        }
        if (!this.currentMessageObject.isOutOwner() && this.isPlayingRound && this.isAvatarVisible && this.currentMessageObject.type == 5) {
            return (int) ((AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f);
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int m102dp;
        int m102dp2;
        int i7;
        int m102dp3;
        int i8;
        int i9;
        int m102dp4;
        int m102dp5;
        int m102dp6;
        int i10;
        int m102dp7;
        int i11;
        int i12;
        int m102dp8;
        int m102dp9;
        if (this.currentMessageObject == null) {
            return;
        }
        int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
        if (this.lastSize != measuredHeight || !this.wasLayout) {
            this.layoutWidth = getMeasuredWidth();
            this.layoutHeight = getMeasuredHeight() - this.substractBackgroundHeight;
            if (this.timeTextWidth < 0) {
                this.timeTextWidth = AndroidUtilities.m102dp(10);
            }
            if (this.currentTimeString != null) {
                this.timeLayout = new StaticLayout(this.currentTimeString, Theme.chat_timePaint, this.timeTextWidth + AndroidUtilities.m102dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.timeLayout = null;
            }
            if (this.mediaBackground) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m103dp(42.0f);
                } else {
                    this.timeX = (this.backgroundWidth - AndroidUtilities.m102dp(4)) - this.timeWidth;
                    if (this.currentMessageObject.isAnyKindOfSticker()) {
                        this.timeX = Math.max(AndroidUtilities.m102dp(26), this.timeX);
                    }
                    if (this.isAvatarVisible) {
                        this.timeX += AndroidUtilities.m102dp(48);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                    if (groupedMessagePosition != null && (i5 = groupedMessagePosition.leftSpanOffset) != 0) {
                        this.timeX += (int) Math.ceil((i5 / 1000.0f) * getGroupPhotosWidth());
                    }
                    if (this.captionLayout != null && this.currentPosition != null) {
                        this.timeX += AndroidUtilities.m102dp(4);
                    }
                }
                if (SharedConfig.bubbleRadius >= 10 && this.captionLayout == null && (i6 = this.documentAttachType) != 7 && i6 != 6) {
                    this.timeX -= AndroidUtilities.m102dp(2);
                }
            } else if (this.currentMessageObject.isOutOwner()) {
                this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m103dp(38.5f);
            } else {
                this.timeX = (this.backgroundWidth - AndroidUtilities.m102dp(9)) - this.timeWidth;
                if (this.currentMessageObject.isAnyKindOfSticker()) {
                    this.timeX = Math.max(0, this.timeX);
                }
                if (this.isAvatarVisible) {
                    this.timeX += AndroidUtilities.m102dp(48);
                }
                if (shouldDrawTimeOnMedia()) {
                    this.timeX -= AndroidUtilities.m102dp(7);
                }
            }
            this.timeX -= getExtraTimeX();
            if (!this.albumMode) {
                if ((this.currentMessageObject.messageOwner.flags & 1024) != 0) {
                    this.viewsLayout = new StaticLayout(this.currentViewsString, Theme.chat_timePaint, this.viewsTextWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                } else {
                    this.viewsLayout = null;
                }
            }
            if (this.currentRepliesString != null && !this.currentMessageObject.scheduled) {
                this.repliesLayout = new StaticLayout(this.currentRepliesString, Theme.chat_timePaint, this.repliesTextWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.repliesLayout = null;
            }
            if (this.isAvatarVisible) {
                this.avatarImage.setImageCoords(AndroidUtilities.m102dp(6), this.avatarImage.getImageY(), AndroidUtilities.m102dp(42), AndroidUtilities.m102dp(42));
            }
            if (this.currentMessageObject.type == 20 && this.currentUnlockString != null) {
                this.unlockLayout = new StaticLayout(this.currentUnlockString, Theme.chat_unlockExtendedMediaTextPaint, this.unlockTextWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                int i13 = ((TLRPC$TL_messageExtendedMediaPreview) this.currentMessageObject.messageOwner.media.extended_media).video_duration;
                if (i13 != 0) {
                    String formatDuration = AndroidUtilities.formatDuration(i13, false);
                    this.durationWidth = (int) Math.ceil(Theme.chat_durationPaint.measureText(formatDuration));
                    this.videoInfoLayout = new StaticLayout(formatDuration, Theme.chat_durationPaint, this.durationWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                } else {
                    this.videoInfoLayout = null;
                }
            } else {
                this.unlockLayout = null;
            }
            this.wasLayout = true;
        }
        this.lastSize = measuredHeight;
        if (this.currentMessageObject.type == 0) {
            this.textY = AndroidUtilities.m102dp(10) + this.namesOffset;
        }
        if (this.isRoundVideo) {
            updatePlayingMessageProgress();
        }
        int i14 = this.documentAttachType;
        if (i14 == 3 || i14 == 7) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(57);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(67);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m102dp(114);
                this.buttonX = AndroidUtilities.m102dp(71);
                this.timeAudioX = AndroidUtilities.m102dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m102dp(66);
                this.buttonX = AndroidUtilities.m102dp(23);
                this.timeAudioX = AndroidUtilities.m102dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m102dp(10);
                this.buttonX += AndroidUtilities.m102dp(10);
                this.timeAudioX += AndroidUtilities.m102dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m102dp(13) + this.namesOffset + this.mediaOffsetY;
            int m102dp10 = AndroidUtilities.m102dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m102dp10;
            RadialProgress2 radialProgress2 = this.radialProgress;
            int i15 = this.buttonX;
            radialProgress2.setProgressRect(i15, m102dp10, AndroidUtilities.m102dp(44) + i15, this.buttonY + AndroidUtilities.m102dp(44));
            updatePlayingMessageProgress();
            if (this.documentAttachType == 7) {
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject.type == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                    if (this.hasGamePreview) {
                        i7 = this.unmovedTextX - AndroidUtilities.m102dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i9 = this.unmovedTextX;
                            m102dp4 = AndroidUtilities.m102dp(1);
                        } else {
                            i9 = this.unmovedTextX;
                            m102dp4 = AndroidUtilities.m102dp(1);
                        }
                        i7 = i9 + m102dp4;
                    }
                    if (this.isSmallImage) {
                        m102dp = i7 + this.backgroundWidth;
                        m102dp2 = AndroidUtilities.m102dp(81);
                        m102dp -= m102dp2;
                    } else {
                        m102dp3 = this.hasInvoicePreview ? -AndroidUtilities.m103dp(6.3f) : AndroidUtilities.m102dp(10);
                        m102dp = i7 + m102dp3;
                    }
                } else {
                    if (messageObject.isOutOwner()) {
                        if (this.mediaBackground) {
                            m102dp = this.layoutWidth - this.backgroundWidth;
                            m102dp2 = AndroidUtilities.m102dp(3);
                        } else {
                            i7 = this.layoutWidth - this.backgroundWidth;
                            m102dp3 = AndroidUtilities.m102dp(6);
                            m102dp = i7 + m102dp3;
                        }
                    } else {
                        if (this.isChat && this.isAvatarVisible && (!this.isPlayingRound || this.currentMessageObject.isVoiceTranscriptionOpen())) {
                            m102dp = AndroidUtilities.m102dp(63);
                        } else {
                            m102dp = AndroidUtilities.m102dp(15);
                        }
                        MessageObject.GroupedMessagePosition groupedMessagePosition2 = this.currentPosition;
                        if (groupedMessagePosition2 != null && !groupedMessagePosition2.edge) {
                            m102dp2 = AndroidUtilities.m102dp(10);
                        }
                    }
                    m102dp -= m102dp2;
                }
                MessageObject.GroupedMessagePosition groupedMessagePosition3 = this.currentPosition;
                if (groupedMessagePosition3 != null) {
                    if ((groupedMessagePosition3.flags & 1) == 0) {
                        m102dp -= AndroidUtilities.m102dp(2);
                    }
                    if (this.currentPosition.leftSpanOffset != 0) {
                        m102dp += (int) Math.ceil((i8 / 1000.0f) * getGroupPhotosWidth());
                    }
                }
                if (this.currentMessageObject.type != 0) {
                    m102dp -= AndroidUtilities.m102dp(2);
                }
                if (this.currentMessageObject.isVoiceTranscriptionOpen()) {
                    m102dp += AndroidUtilities.m102dp(10);
                }
                TransitionParams transitionParams = this.transitionParams;
                if (!transitionParams.imageChangeBoundsTransition || transitionParams.updatePhotoImageX) {
                    transitionParams.updatePhotoImageX = false;
                    ImageReceiver imageReceiver = this.photoImage;
                    imageReceiver.setImageCoords(m102dp, imageReceiver.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                }
            }
        } else if (i14 == 5) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(56);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(67);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m102dp(113);
                this.buttonX = AndroidUtilities.m102dp(71);
                this.timeAudioX = AndroidUtilities.m102dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m102dp(65);
                this.buttonX = AndroidUtilities.m102dp(23);
                this.timeAudioX = AndroidUtilities.m102dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m102dp(10);
                this.buttonX += AndroidUtilities.m102dp(10);
                this.timeAudioX += AndroidUtilities.m102dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m102dp(29) + this.namesOffset + this.mediaOffsetY;
            int m102dp11 = AndroidUtilities.m102dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m102dp11;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i16 = this.buttonX;
            radialProgress22.setProgressRect(i16, m102dp11, AndroidUtilities.m102dp(44) + i16, this.buttonY + AndroidUtilities.m102dp(44));
            updatePlayingMessageProgress();
        } else if (i14 == 1 && !this.drawPhotoImage) {
            if (this.currentMessageObject.isOutOwner()) {
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(14);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.buttonX = AndroidUtilities.m102dp(71);
            } else {
                this.buttonX = AndroidUtilities.m102dp(23);
            }
            if (this.hasLinkPreview) {
                this.buttonX += AndroidUtilities.m102dp(10);
            }
            int m102dp12 = AndroidUtilities.m102dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m102dp12;
            RadialProgress2 radialProgress23 = this.radialProgress;
            int i17 = this.buttonX;
            radialProgress23.setProgressRect(i17, m102dp12, AndroidUtilities.m102dp(44) + i17, this.buttonY + AndroidUtilities.m102dp(44));
            this.photoImage.setImageCoords(this.buttonX - AndroidUtilities.m102dp(10), this.buttonY - AndroidUtilities.m102dp(10), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
        } else {
            MessageObject messageObject2 = this.currentMessageObject;
            int i18 = messageObject2.type;
            if (i18 == 12) {
                if (messageObject2.isOutOwner()) {
                    m102dp9 = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m102dp(14);
                } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                    m102dp9 = AndroidUtilities.m102dp(72);
                } else {
                    m102dp9 = AndroidUtilities.m102dp(23);
                }
                this.photoImage.setImageCoords(m102dp9, AndroidUtilities.m102dp(13) + this.namesOffset, AndroidUtilities.m102dp(44), AndroidUtilities.m102dp(44));
                return;
            }
            if (i18 == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                if (this.hasGamePreview) {
                    i10 = this.unmovedTextX - AndroidUtilities.m102dp(10);
                } else {
                    if (this.hasInvoicePreview) {
                        i12 = this.unmovedTextX;
                        m102dp8 = AndroidUtilities.m102dp(1);
                    } else {
                        i12 = this.unmovedTextX;
                        m102dp8 = AndroidUtilities.m102dp(1);
                    }
                    i10 = i12 + m102dp8;
                }
                if (this.isSmallImage) {
                    m102dp5 = i10 + this.backgroundWidth;
                    m102dp6 = AndroidUtilities.m102dp(81);
                    m102dp5 -= m102dp6;
                } else {
                    m102dp7 = this.hasInvoicePreview ? -AndroidUtilities.m103dp(6.3f) : AndroidUtilities.m102dp(10);
                    m102dp5 = i10 + m102dp7;
                }
            } else {
                if (messageObject2.isOutOwner()) {
                    if (this.mediaBackground) {
                        m102dp5 = this.layoutWidth - this.backgroundWidth;
                        m102dp6 = AndroidUtilities.m102dp(3);
                    } else {
                        i10 = this.layoutWidth - this.backgroundWidth;
                        m102dp7 = AndroidUtilities.m102dp(6);
                        m102dp5 = i10 + m102dp7;
                    }
                } else {
                    if (this.isChat && this.isAvatarVisible && !this.isPlayingRound) {
                        m102dp5 = AndroidUtilities.m102dp(63);
                    } else {
                        m102dp5 = AndroidUtilities.m102dp(15);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition4 = this.currentPosition;
                    if (groupedMessagePosition4 != null && !groupedMessagePosition4.edge) {
                        m102dp6 = AndroidUtilities.m102dp(10);
                    }
                }
                m102dp5 -= m102dp6;
            }
            MessageObject.GroupedMessagePosition groupedMessagePosition5 = this.currentPosition;
            if (groupedMessagePosition5 != null) {
                if ((groupedMessagePosition5.flags & 1) == 0) {
                    m102dp5 -= AndroidUtilities.m102dp(2);
                }
                if (this.currentPosition.leftSpanOffset != 0) {
                    m102dp5 += (int) Math.ceil((i11 / 1000.0f) * getGroupPhotosWidth());
                }
            }
            if (this.currentMessageObject.type != 0) {
                m102dp5 -= AndroidUtilities.m102dp(2);
            }
            if (this.drawInstantViewType == 17) {
                m102dp5 = (int) (m102dp5 + AndroidUtilities.m102dp(10) + ((this.instantWidth - this.photoImage.getImageWidth()) / 2.0f));
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (!transitionParams2.imageChangeBoundsTransition || transitionParams2.updatePhotoImageX) {
                transitionParams2.updatePhotoImageX = false;
                ImageReceiver imageReceiver2 = this.photoImage;
                imageReceiver2.setImageCoords(m102dp5, imageReceiver2.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
            }
            this.buttonX = (int) (m102dp5 + ((this.photoImage.getImageWidth() - AndroidUtilities.m102dp(48)) / 2.0f));
            int imageY = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m102dp(48)) / 2.0f));
            this.buttonY = imageY;
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i19 = this.buttonX;
            radialProgress24.setProgressRect(i19, imageY, AndroidUtilities.m102dp(48) + i19, this.buttonY + AndroidUtilities.m102dp(48));
            this.deleteProgressRect.set(this.buttonX + AndroidUtilities.m102dp(5), this.buttonY + AndroidUtilities.m102dp(5), this.buttonX + AndroidUtilities.m102dp(43), this.buttonY + AndroidUtilities.m102dp(43));
            int i20 = this.documentAttachType;
            if (i20 == 4 || i20 == 2) {
                this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m102dp(8));
                int imageY2 = (int) (this.photoImage.getImageY() + AndroidUtilities.m102dp(8));
                this.videoButtonY = imageY2;
                RadialProgress2 radialProgress25 = this.videoRadialProgress;
                int i21 = this.videoButtonX;
                radialProgress25.setProgressRect(i21, imageY2, AndroidUtilities.m102dp(24) + i21, this.videoButtonY + AndroidUtilities.m102dp(24));
            }
        }
    }

    public boolean needDelayRoundProgressDraw() {
        int i = this.documentAttachType;
        return (i == 7 || i == 4) && this.currentMessageObject.type != 5 && MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0279  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawRoundProgress(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawRoundProgress(android.graphics.Canvas):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePollAnimations(long r9) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.updatePollAnimations(long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:458:0x095e  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x09ab  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x09b4  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0a40  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0a46  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0a5f  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0a62  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0a90  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawContent(android.graphics.Canvas r35) {
        /*
            Method dump skipped, instructions count: 5442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawContent(android.graphics.Canvas):void");
    }

    private void startRevealMedia(float f, float f2) {
        float sqrt = (float) Math.sqrt(Math.pow(this.photoImage.getImageWidth(), 2.0d) + Math.pow(this.photoImage.getImageHeight(), 2.0d));
        this.mediaSpoilerRevealMaxRadius = sqrt;
        startRevealMedia(f, f2, sqrt);
    }

    private void startRevealMedia(float f, float f2, float f3) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject.isMediaSpoilersRevealed || this.mediaSpoilerRevealProgress != BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (messageObject.type == 3) {
            messageObject.forceUpdate = true;
            messageObject.revealingMediaSpoilers = true;
            setMessageContent(messageObject, this.currentMessagesGroup, this.pinnedBottom, this.pinnedTop);
            MessageObject messageObject2 = this.currentMessageObject;
            messageObject2.revealingMediaSpoilers = false;
            messageObject2.forceUpdate = false;
            if (this.currentMessagesGroup != null) {
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            }
        }
        this.mediaSpoilerRevealX = f;
        this.mediaSpoilerRevealY = f2;
        ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(MathUtils.clamp(this.mediaSpoilerRevealMaxRadius * 0.3f, 250.0f, 550.0f));
        duration.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatMessageCell.this.lambda$startRevealMedia$11(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatMessageCell.this.currentMessageObject.isMediaSpoilersRevealed = true;
                ChatMessageCell.this.invalidate();
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRevealMedia$11(ValueAnimator valueAnimator) {
        this.mediaSpoilerRevealProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private void drawBlurredPhoto(Canvas canvas) {
        if (this.currentMessageObject.isMediaSpoilersRevealed || this.mediaSpoilerRevealProgress == 1.0f) {
            return;
        }
        int[] roundRadius = this.photoImage.getRoundRadius();
        float[] fArr = this.mediaSpoilerRadii;
        float f = roundRadius[0];
        fArr[1] = f;
        fArr[0] = f;
        float f2 = roundRadius[1];
        fArr[3] = f2;
        fArr[2] = f2;
        float f3 = roundRadius[2];
        fArr[5] = f3;
        fArr[4] = f3;
        float f4 = roundRadius[3];
        fArr[7] = f4;
        fArr[6] = f4;
        this.mediaSpoilerPath.rewind();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(this.photoImage.getImageX(), this.photoImage.getImageY(), this.photoImage.getImageX2(), this.photoImage.getImageY2());
        this.mediaSpoilerPath.addRoundRect(rectF, this.mediaSpoilerRadii, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.mediaSpoilerPath);
        if (this.mediaSpoilerRevealProgress != BitmapDescriptorFactory.HUE_RED) {
            this.mediaSpoilerPath.rewind();
            this.mediaSpoilerPath.addCircle(this.mediaSpoilerRevealX, this.mediaSpoilerRevealY, this.mediaSpoilerRevealMaxRadius * this.mediaSpoilerRevealProgress, Path.Direction.CW);
            canvas.clipPath(this.mediaSpoilerPath, Region.Op.DIFFERENCE);
        }
        if (this.currentMessageObject.needDrawBluredPreview()) {
            this.photoImage.draw(canvas);
        } else {
            this.blurredPhotoImage.setImageCoords(this.photoImage.getImageX(), this.photoImage.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
            this.blurredPhotoImage.setRoundRadius(this.photoImage.getRoundRadius());
            this.blurredPhotoImage.draw(canvas);
        }
        if (this.mediaSpoilerEffect2 != null) {
            canvas.translate(this.photoImage.getImageX(), this.photoImage.getImageY());
            this.mediaSpoilerEffect2.draw(canvas, this, (int) this.photoImage.getImageWidth(), (int) this.photoImage.getImageHeight(), this.photoImage.getAlpha());
            canvas.restore();
            return;
        }
        this.mediaSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f * this.photoImage.getAlpha())));
        this.mediaSpoilerEffect.setBounds((int) this.photoImage.getImageX(), (int) this.photoImage.getImageY(), (int) this.photoImage.getImageX2(), (int) this.photoImage.getImageY2());
        this.mediaSpoilerEffect.draw(canvas);
        canvas.restore();
        invalidate();
    }

    private float getUseTranscribeButtonProgress() {
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateUseTranscribeButton) {
            if (this.useTranscribeButton) {
                return transitionParams.animateChangeProgress;
            }
            return 1.0f - transitionParams.animateChangeProgress;
        } else if (this.useTranscribeButton) {
            return 1.0f;
        } else {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if ((r1 & 1) != 0) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateReactionLayoutPosition() {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.updateReactionLayoutPosition():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:246:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x071a  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x07ea  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x081b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawLinkPreview(android.graphics.Canvas r37, float r38) {
        /*
            Method dump skipped, instructions count: 3382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawLinkPreview(android.graphics.Canvas, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldDrawMenuDrawable() {
        return this.currentMessagesGroup == null || (this.currentPosition.flags & 4) != 0;
    }

    private void drawBotButtons(Canvas canvas, ArrayList<BotButton> arrayList, int i) {
        int m102dp;
        Drawable themedDrawable;
        ChatMessageCellDelegate chatMessageCellDelegate;
        char c = 7;
        int i2 = 10;
        if (this.currentMessageObject.isOutOwner()) {
            m102dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m102dp(10);
        } else {
            m102dp = this.backgroundDrawableLeft + AndroidUtilities.m102dp((this.mediaBackground || this.drawPinnedBottom) ? 1 : 7);
        }
        int i3 = 2;
        float m102dp2 = (this.layoutHeight - AndroidUtilities.m102dp(2)) + this.transitionParams.deltaBottom;
        float f = 0.0f;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            BotButton botButton = arrayList.get(i4);
            float f2 = botButton.f1788y + botButton.height;
            if (f2 > f) {
                f = f2;
            }
        }
        this.rect.set(BitmapDescriptorFactory.HUE_RED, m102dp2, getMeasuredWidth(), f + m102dp2);
        if (i != 255) {
            canvas.saveLayerAlpha(this.rect, i, 31);
        } else {
            canvas.save();
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            BotButton botButton2 = arrayList.get(i5);
            float m102dp3 = ((botButton2.f1788y + this.layoutHeight) - AndroidUtilities.m102dp(i3)) + this.transitionParams.deltaBottom;
            float pressScale = botButton2.getPressScale();
            this.rect.set(botButton2.f1787x + m102dp, m102dp3, botButton2.f1787x + m102dp + botButton2.width, botButton2.height + m102dp3);
            canvas.save();
            if (pressScale != 1.0f) {
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            }
            applyServiceShaderMatrix();
            Arrays.fill(this.botButtonRadii, AndroidUtilities.m103dp(Math.min(6.75f, SharedConfig.bubbleRadius)));
            if (botButton2.hasPositionFlag(9)) {
                float[] fArr = this.botButtonRadii;
                float m102dp4 = AndroidUtilities.m102dp(SharedConfig.bubbleRadius);
                fArr[c] = m102dp4;
                fArr[6] = m102dp4;
            }
            if (botButton2.hasPositionFlag(i2)) {
                float[] fArr2 = this.botButtonRadii;
                float m102dp5 = AndroidUtilities.m102dp(SharedConfig.bubbleRadius);
                fArr2[5] = m102dp5;
                fArr2[4] = m102dp5;
            }
            this.botButtonPath.rewind();
            this.botButtonPath.addRoundRect(this.rect, this.botButtonRadii, Path.Direction.CW);
            canvas.drawPath(this.botButtonPath, getThemedPaint("paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawPath(this.botButtonPath, Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            boolean z = (((botButton2.button instanceof TLRPC$TL_keyboardButtonCallback) || (botButton2.button instanceof TLRPC$TL_keyboardButtonGame) || (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) || (botButton2.button instanceof TLRPC$TL_keyboardButtonUrlAuth)) && SendMessagesHelper.getInstance(this.currentAccount).isSendingCallback(this.currentMessageObject, botButton2.button)) || ((botButton2.button instanceof TLRPC$TL_keyboardButtonRequestGeoLocation) && SendMessagesHelper.getInstance(this.currentAccount).isSendingCurrentLocation(this.currentMessageObject, botButton2.button)) || ((botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) && (chatMessageCellDelegate = this.delegate) != null && chatMessageCellDelegate.isProgressLoading(this, 3) && this.delegate.getProgressLoadingBotButtonUrl(this) == botButton2.button.url);
            canvas.save();
            canvas.clipPath(this.botButtonPath);
            if (z) {
                if (botButton2.loadingDrawable == null) {
                    botButton2.loadingDrawable = new LoadingDrawable();
                    botButton2.loadingDrawable.setRadiiDp(5.5f);
                    botButton2.loadingDrawable.setAppearByGradient(true);
                    botButton2.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.25f));
                } else if (botButton2.loadingDrawable.isDisappeared() || botButton2.loadingDrawable.isDisappearing()) {
                    botButton2.loadingDrawable.reset();
                    botButton2.loadingDrawable.resetDisappear();
                }
            } else if (botButton2.loadingDrawable != null && !botButton2.loadingDrawable.isDisappearing() && !botButton2.loadingDrawable.isDisappeared()) {
                botButton2.loadingDrawable.disappear();
            }
            if (botButton2.loadingDrawable != null && (z || botButton2.loadingDrawable.isDisappearing())) {
                this.rect.inset(AndroidUtilities.dpf2(0.625f), AndroidUtilities.dpf2(0.625f));
                botButton2.loadingDrawable.setRadii(this.botButtonRadii);
                botButton2.loadingDrawable.setBounds(this.rect);
                LoadingDrawable loadingDrawable = botButton2.loadingDrawable;
                int i6 = Theme.key_chat_serviceBackgroundSelector;
                loadingDrawable.setColors(Theme.multAlpha(Theme.getColor(i6, this.resourcesProvider), 1.0f), Theme.multAlpha(Theme.getColor(i6, this.resourcesProvider), 2.5f), Theme.multAlpha(Theme.getColor(i6, this.resourcesProvider), 3.0f), Theme.multAlpha(Theme.getColor(i6, this.resourcesProvider), 10.0f));
                botButton2.loadingDrawable.setAlpha(255);
                botButton2.loadingDrawable.draw(canvas);
                invalidateOutbounds();
            }
            if (botButton2.selectorDrawable != null) {
                int i7 = (int) m102dp3;
                botButton2.selectorDrawable.setBounds(botButton2.f1787x + m102dp, i7, botButton2.f1787x + m102dp + botButton2.width, botButton2.height + i7);
                botButton2.selectorDrawable.setAlpha(255);
                botButton2.selectorDrawable.draw(canvas);
            }
            canvas.restore();
            canvas.save();
            i3 = 2;
            canvas.translate(botButton2.f1787x + m102dp + AndroidUtilities.m102dp(5), ((AndroidUtilities.m102dp(44) - botButton2.title.getLineBottom(botButton2.title.getLineCount() - 1)) / 2) + m102dp3);
            botButton2.title.draw(canvas);
            canvas.restore();
            if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonWebView)) {
                if (botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) {
                    if (botButton2.isInviteButton) {
                        themedDrawable = getThemedDrawable("drawable_botInvite");
                    } else {
                        themedDrawable = getThemedDrawable("drawableBotLink");
                    }
                    BaseCell.setDrawableBounds(themedDrawable, (((botButton2.f1787x + botButton2.width) - AndroidUtilities.m102dp(3)) - themedDrawable.getIntrinsicWidth()) + m102dp, m102dp3 + AndroidUtilities.m102dp(3));
                    themedDrawable.draw(canvas);
                } else if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonSwitchInline) && !(botButton2.button instanceof TLRPC$TL_keyboardButtonRequestPeer)) {
                    if (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) {
                        BaseCell.setDrawableBounds(Theme.chat_botCardDrawable, (((botButton2.f1787x + botButton2.width) - AndroidUtilities.m102dp(5)) - Theme.chat_botCardDrawable.getIntrinsicWidth()) + m102dp, m102dp3 + AndroidUtilities.m102dp(4));
                        Theme.chat_botCardDrawable.draw(canvas);
                    }
                } else {
                    Drawable themedDrawable2 = getThemedDrawable("drawableBotInline");
                    BaseCell.setDrawableBounds(themedDrawable2, (((botButton2.f1787x + botButton2.width) - AndroidUtilities.m102dp(3)) - themedDrawable2.getIntrinsicWidth()) + m102dp, m102dp3 + AndroidUtilities.m102dp(3));
                    themedDrawable2.draw(canvas);
                }
            } else {
                Drawable themedDrawable3 = getThemedDrawable("drawableBotWebView");
                BaseCell.setDrawableBounds(themedDrawable3, (((botButton2.f1787x + botButton2.width) - AndroidUtilities.m102dp(3)) - themedDrawable3.getIntrinsicWidth()) + m102dp, m102dp3 + AndroidUtilities.m102dp(3));
                themedDrawable3.draw(canvas);
            }
            canvas.restore();
            i5++;
            c = 7;
            i2 = 10;
        }
        canvas.restore();
    }

    private boolean allowDrawPhotoImage() {
        return !this.currentMessageObject.hasMediaSpoilers() || this.currentMessageObject.isMediaSpoilersRevealed || this.mediaSpoilerRevealProgress != BitmapDescriptorFactory.HUE_RED || this.blurredPhotoImage.getBitmap() == null;
    }

    public void drawMessageText(Canvas canvas, ArrayList<MessageObject.TextLayoutBlock> arrayList, boolean z, float f, boolean z2) {
        MessageObject messageObject = this.currentMessageObject;
        drawMessageText(canvas, arrayList, messageObject == null ? BitmapDescriptorFactory.HUE_RED : messageObject.textXOffset, z, f, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02b0 A[LOOP:2: B:127:0x02a8->B:129:0x02b0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:169:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawMessageText(android.graphics.Canvas r27, java.util.ArrayList<org.telegram.messenger.MessageObject.TextLayoutBlock> r28, float r29, boolean r30, float r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawMessageText(android.graphics.Canvas, java.util.ArrayList, float, boolean, float, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0063 A[LOOP:1: B:35:0x0063->B:37:0x0066, LOOP_START, PHI: r2 r5 
      PHI: (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:34:0x0061, B:37:0x0066] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r5v2 int) = (r5v1 int), (r5v3 int) binds: [B:34:0x0061, B:37:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.telegram.p042ui.Components.AnimatedEmojiSpan[] getAnimatedEmojiSpans() {
        /*
            r7 = this;
            org.telegram.messenger.MessageObject r0 = r7.currentMessageObject
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L1c
            java.lang.CharSequence r0 = r0.messageText
            boolean r3 = r0 instanceof android.text.Spanned
            if (r3 == 0) goto L1c
            r3 = r0
            android.text.Spanned r3 = (android.text.Spanned) r3
            int r0 = r0.length()
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r4 = org.telegram.p042ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r0 = r3.getSpans(r2, r0, r4)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r0 = (org.telegram.p042ui.Components.AnimatedEmojiSpan[]) r0
            goto L1d
        L1c:
            r0 = r1
        L1d:
            org.telegram.messenger.MessageObject r3 = r7.currentMessageObject
            if (r3 == 0) goto L37
            java.lang.CharSequence r3 = r3.caption
            boolean r4 = r3 instanceof android.text.Spanned
            if (r4 == 0) goto L37
            r4 = r3
            android.text.Spanned r4 = (android.text.Spanned) r4
            int r3 = r3.length()
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r5 = org.telegram.p042ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r3 = r4.getSpans(r2, r3, r5)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r3 = (org.telegram.p042ui.Components.AnimatedEmojiSpan[]) r3
            goto L38
        L37:
            r3 = r1
        L38:
            if (r0 == 0) goto L3d
            int r4 = r0.length
            if (r4 != 0) goto L43
        L3d:
            if (r3 == 0) goto L6f
            int r4 = r3.length
            if (r4 != 0) goto L43
            goto L6f
        L43:
            if (r0 != 0) goto L47
            r1 = r2
            goto L48
        L47:
            int r1 = r0.length
        L48:
            if (r3 != 0) goto L4c
            r4 = r2
            goto L4d
        L4c:
            int r4 = r3.length
        L4d:
            int r1 = r1 + r4
            org.telegram.ui.Components.AnimatedEmojiSpan[] r1 = new org.telegram.p042ui.Components.AnimatedEmojiSpan[r1]
            if (r0 == 0) goto L60
            r4 = r2
            r5 = r4
        L54:
            int r6 = r0.length
            if (r4 >= r6) goto L61
            r6 = r0[r4]
            r1[r5] = r6
            int r4 = r4 + 1
            int r5 = r5 + 1
            goto L54
        L60:
            r5 = r2
        L61:
            if (r3 == 0) goto L6f
        L63:
            int r0 = r3.length
            if (r2 >= r0) goto L6f
            r0 = r3[r2]
            r1[r5] = r0
            int r2 = r2 + 1
            int r5 = r5 + 1
            goto L63
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.getAnimatedEmojiSpans():org.telegram.ui.Components.AnimatedEmojiSpan[]");
    }

    public void updateCaptionLayout() {
        float imageX;
        float imageY;
        float imageHeight;
        MessageObject messageObject = this.currentMessageObject;
        int i = messageObject.type;
        if (i == 1 || i == 20 || this.documentAttachType == 4 || i == 8 || i == 23) {
            TransitionParams transitionParams = this.transitionParams;
            if (transitionParams.imageChangeBoundsTransition) {
                imageX = transitionParams.animateToImageX;
                imageY = transitionParams.animateToImageY;
                imageHeight = transitionParams.animateToImageH;
            } else {
                imageX = this.photoImage.getImageX();
                imageY = this.photoImage.getImageY();
                imageHeight = this.photoImage.getImageHeight();
            }
            this.captionX = imageX + AndroidUtilities.m102dp(5) + this.captionOffsetX;
            this.captionY = imageY + imageHeight + AndroidUtilities.m102dp(6);
        } else {
            int i2 = 17;
            if (this.hasOldCaptionPreview) {
                this.captionX = this.backgroundDrawableLeft + AndroidUtilities.m102dp(messageObject.isOutOwner() ? 11 : 17) + this.captionOffsetX;
                float m102dp = (((this.totalHeight - this.captionHeight) - AndroidUtilities.m102dp(this.drawPinnedTop ? 9 : 10)) - this.linkPreviewHeight) - AndroidUtilities.m102dp(17);
                this.captionY = m102dp;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m102dp - AndroidUtilities.m103dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
                }
            } else {
                if (this.isRoundVideo) {
                    this.captionX = getBackgroundDrawableLeft() + AndroidUtilities.m102dp((this.currentMessageObject.isOutOwner() ? 0 : 6) + 11);
                } else {
                    int i3 = this.backgroundDrawableLeft;
                    if (messageObject.isOutOwner() || this.mediaBackground || this.drawPinnedBottom) {
                        i2 = 11;
                    }
                    this.captionX = i3 + AndroidUtilities.m102dp(i2) + this.captionOffsetX;
                }
                float m102dp2 = (this.totalHeight - this.captionHeight) - AndroidUtilities.m102dp(this.drawPinnedTop ? 9 : 10);
                this.captionY = m102dp2;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m102dp2 - AndroidUtilities.m103dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
                }
                ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
                if (!reactionsLayoutInBubble.isEmpty && !reactionsLayoutInBubble.isSmall) {
                    this.captionY -= reactionsLayoutInBubble.totalHeight;
                }
            }
        }
        this.captionX += getExtraTextX();
    }

    private boolean textIsSelectionMode() {
        return getCurrentMessagesGroup() == null && this.delegate.getTextSelectionHelper() != null && this.delegate.getTextSelectionHelper().isSelected(this.currentMessageObject);
    }

    public float getViewTop() {
        return this.viewTop;
    }

    public int getBackgroundHeight() {
        return this.backgroundHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMiniIconForCurrentState() {
        int i = this.miniButtonState;
        if (i < 0) {
            return 4;
        }
        return i == 0 ? 2 : 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00bc, code lost:
        if (r0.attachPathExists == false) goto L78;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getIconForCurrentState() {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.getIconForCurrentState():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getMaxNameWidth() {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.getMaxNameWidth():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x0132, code lost:
        if ((r2 & 2) != 0) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateButtonState(boolean r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 2205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.updateButtonState(boolean, boolean, boolean):void");
    }

    private void didPressMiniButton(boolean z) {
        int i = this.miniButtonState;
        if (i != 0) {
            if (i == 1) {
                int i2 = this.documentAttachType;
                if ((i2 == 3 || i2 == 5 || i2 == 7) && MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                    MediaController.getInstance().cleanupPlayer(true, true);
                }
                this.miniButtonState = 0;
                this.currentMessageObject.loadingCancelled = true;
                FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.documentAttach);
                this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
                invalidate();
                return;
            }
            return;
        }
        this.miniButtonState = 1;
        this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && !messageObject.isAnyKindOfSticker()) {
            this.currentMessageObject.putInDownloadsStore = true;
        }
        int i3 = this.documentAttachType;
        if (i3 == 3 || i3 == 5) {
            if (i3 == 5) {
                createLoadingProgressLayout(this.documentAttach);
            }
            FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
            this.currentMessageObject.loadingCancelled = false;
        } else if (i3 == 4 || i3 == 7) {
            createLoadingProgressLayout(this.documentAttach);
            FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
            TLRPC$Document tLRPC$Document = this.documentAttach;
            MessageObject messageObject2 = this.currentMessageObject;
            fileLoader.loadFile(tLRPC$Document, messageObject2, 2, messageObject2.shouldEncryptPhotoOrVideo() ? 2 : 0);
            this.currentMessageObject.loadingCancelled = false;
        }
        this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
        invalidate();
    }

    private void didPressButton(boolean z, boolean z2) {
        MessageObject messageObject;
        MessageObject messageObject2;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        String str;
        MessageObject messageObject3;
        MessageObject messageObject4 = this.currentMessageObject;
        if (messageObject4 != null && !messageObject4.isAnyKindOfSticker()) {
            this.currentMessageObject.putInDownloadsStore = true;
        }
        int i = this.buttonState;
        if (i == 0 && (!this.drawVideoImageButton || z2)) {
            int i2 = this.documentAttachType;
            if (i2 == 3 || i2 == 5 || (i2 == 7 && (messageObject3 = this.currentMessageObject) != null && messageObject3.isVoiceTranscriptionOpen() && this.currentMessageObject.mediaExists)) {
                if (this.miniButtonState == 0) {
                    if (this.documentAttachType == 5) {
                        createLoadingProgressLayout(this.documentAttach);
                    }
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                    this.currentMessageObject.loadingCancelled = false;
                }
                if (this.delegate.needPlayMessage(this.currentMessageObject, false)) {
                    if (this.hasMiniProgress == 2 && this.miniButtonState != 1) {
                        this.miniButtonState = 1;
                        this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                        this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
                    }
                    updatePlayingMessageProgress();
                    this.buttonState = 1;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                    invalidate();
                    return;
                }
                return;
            }
            if (z2) {
                this.videoRadialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
            }
            if (this.currentPhotoObject != null && (this.photoImage.hasNotThumb() || this.currentPhotoObjectThumb == null)) {
                tLRPC$PhotoSize = this.currentPhotoObject;
                str = ((tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize) || "s".equals(tLRPC$PhotoSize.type)) ? this.currentPhotoFilterThumb : this.currentPhotoFilter;
            } else {
                tLRPC$PhotoSize = this.currentPhotoObjectThumb;
                str = this.currentPhotoFilterThumb;
            }
            String str2 = str;
            MessageObject messageObject5 = this.currentMessageObject;
            int i3 = messageObject5.type;
            if (i3 == 1 || i3 == 20) {
                this.photoImage.setForceLoading(true);
                ImageReceiver imageReceiver = this.photoImage;
                ImageLocation forObject = ImageLocation.getForObject(this.currentPhotoObject, this.photoParentObject);
                String str3 = this.currentPhotoFilter;
                ImageLocation forObject2 = ImageLocation.getForObject(this.currentPhotoObjectThumb, this.photoParentObject);
                String str4 = this.currentPhotoFilterThumb;
                BitmapDrawable bitmapDrawable = this.currentPhotoObjectThumbStripped;
                long j = this.currentPhotoObject.size;
                MessageObject messageObject6 = this.currentMessageObject;
                imageReceiver.setImage(forObject, str3, forObject2, str4, bitmapDrawable, j, null, messageObject6, messageObject6.shouldEncryptPhotoOrVideo() ? 2 : 0);
            } else if (i3 == 8) {
                FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                if (this.currentMessageObject.loadedFileSize > 0) {
                    createLoadingProgressLayout(this.documentAttach);
                }
            } else if (this.isRoundVideo) {
                if (messageObject5.isSecretMedia()) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 2, 1);
                } else {
                    MessageObject messageObject7 = this.currentMessageObject;
                    messageObject7.gifState = 2.0f;
                    TLRPC$Document document = messageObject7.getDocument();
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForDocument(document), null, ImageLocation.getForObject(tLRPC$PhotoSize, document), str2, document.size, null, this.currentMessageObject, 0);
                }
                this.wouldBeInPip = true;
                invalidate();
            } else if (i3 == 9) {
                FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                if (this.currentMessageObject.loadedFileSize > 0) {
                    createLoadingProgressLayout(this.documentAttach);
                }
            } else {
                int i4 = this.documentAttachType;
                if (i4 == 4) {
                    FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
                    TLRPC$Document tLRPC$Document = this.documentAttach;
                    MessageObject messageObject8 = this.currentMessageObject;
                    fileLoader.loadFile(tLRPC$Document, messageObject8, 1, messageObject8.shouldEncryptPhotoOrVideo() ? 2 : 0);
                    MessageObject messageObject9 = this.currentMessageObject;
                    if (messageObject9.loadedFileSize > 0) {
                        createLoadingProgressLayout(messageObject9.getDocument());
                    }
                } else if (i3 != 0 || i4 == 0) {
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForObject(this.currentPhotoObject, this.photoParentObject), this.currentPhotoFilter, ImageLocation.getForObject(this.currentPhotoObjectThumb, this.photoParentObject), this.currentPhotoFilterThumb, this.currentPhotoObjectThumbStripped, 0L, null, this.currentMessageObject, 0);
                } else if (i4 == 2) {
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForDocument(this.documentAttach), null, ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), this.currentPhotoFilterThumb, this.documentAttach.size, null, this.currentMessageObject, 0);
                    MessageObject messageObject10 = this.currentMessageObject;
                    messageObject10.gifState = 2.0f;
                    if (messageObject10.loadedFileSize > 0) {
                        createLoadingProgressLayout(messageObject10.getDocument());
                    }
                } else if (i4 == 1) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                } else if (i4 == 8) {
                    this.photoImage.setImage(ImageLocation.getForDocument(this.documentAttach), this.currentPhotoFilter, ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), "b1", 0L, "jpg", this.currentMessageObject, 1);
                }
            }
            this.currentMessageObject.loadingCancelled = false;
            this.buttonState = 1;
            if (z2) {
                this.videoRadialProgress.setIcon(14, false, z);
            } else {
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            }
            invalidate();
        } else if (i == 1 && (!this.drawVideoImageButton || z2)) {
            this.photoImage.setForceLoading(false);
            int i5 = this.documentAttachType;
            if (i5 == 3 || i5 == 5 || (i5 == 7 && (messageObject2 = this.currentMessageObject) != null && messageObject2.isVoiceTranscriptionOpen())) {
                if (MediaController.getInstance().lambda$startAudioAgain$7(this.currentMessageObject)) {
                    this.buttonState = 0;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                    invalidate();
                }
            } else if (this.currentMessageObject.isOut() && !this.drawVideoImageButton && (this.currentMessageObject.isSending() || this.currentMessageObject.isEditing())) {
                if (this.radialProgress.getIcon() != 6) {
                    this.delegate.didPressCancelSendButton(this);
                }
            } else {
                MessageObject messageObject11 = this.currentMessageObject;
                messageObject11.loadingCancelled = true;
                int i6 = this.documentAttachType;
                if (i6 == 2 || i6 == 4 || i6 == 1 || i6 == 8) {
                    FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.documentAttach);
                } else {
                    int i7 = messageObject11.type;
                    if (i7 == 0 || i7 == 1 || i7 == 20 || i7 == 8 || i7 == 5) {
                        ImageLoader.getInstance().cancelForceLoadingForImageReceiver(this.photoImage);
                        this.photoImage.cancelLoadImage();
                    } else if (i7 == 9) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.currentMessageObject.getDocument());
                    }
                }
                this.buttonState = 0;
                if (z2) {
                    this.videoRadialProgress.setIcon(2, false, z);
                } else {
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                }
                invalidate();
            }
        } else if (i != 2) {
            if (i == 3 || i == 0) {
                if (this.hasMiniProgress == 2 && this.miniButtonState != 1) {
                    this.miniButtonState = 1;
                    this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                    this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, z);
                }
                this.delegate.didPressImage(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } else if (i == 4) {
                int i8 = this.documentAttachType;
                if (i8 == 3 || i8 == 5 || (i8 == 7 && (messageObject = this.currentMessageObject) != null && messageObject.isVoiceTranscriptionOpen())) {
                    if ((this.currentMessageObject.isOut() && (this.currentMessageObject.isSending() || this.currentMessageObject.isEditing())) || this.currentMessageObject.isSendError()) {
                        if (this.delegate == null || this.radialProgress.getIcon() == 6) {
                            return;
                        }
                        this.delegate.didPressCancelSendButton(this);
                        return;
                    }
                    this.currentMessageObject.loadingCancelled = true;
                    FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.documentAttach);
                    this.buttonState = 2;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, z);
                    invalidate();
                }
            }
        } else {
            MessageObject messageObject12 = this.currentMessageObject;
            if (messageObject12 != null && messageObject12.type == 23) {
                this.delegate.didPressImage(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } else if (this.documentAttachType == 7 && messageObject12 != null && messageObject12.isVoiceTranscriptionOpen()) {
                if (this.miniButtonState == 0) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                    this.currentMessageObject.loadingCancelled = false;
                }
                if (this.delegate.needPlayMessage(this.currentMessageObject, false)) {
                    if (this.hasMiniProgress == 2 && this.miniButtonState != 1) {
                        this.miniButtonState = 1;
                        this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                        this.radialProgress.setMiniIcon(getMiniIconForCurrentState(), false, true);
                    }
                    updatePlayingMessageProgress();
                    this.buttonState = 1;
                    this.radialProgress.setIcon(getIconForCurrentState(), false, true);
                    invalidate();
                }
                if (this.isRoundVideo) {
                    this.wouldBeInPip = true;
                    invalidate();
                }
            } else {
                int i9 = this.documentAttachType;
                if (i9 == 3 || i9 == 5) {
                    this.radialProgress.setProgress(BitmapDescriptorFactory.HUE_RED, false);
                    if (this.documentAttachType == 5) {
                        createLoadingProgressLayout(this.documentAttach);
                    }
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                    this.currentMessageObject.loadingCancelled = false;
                    this.buttonState = 4;
                    this.radialProgress.setIcon(getIconForCurrentState(), true, z);
                    invalidate();
                    return;
                }
                if (this.isRoundVideo) {
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject == null || !playingMessageObject.isRoundVideo()) {
                        this.photoImage.setAllowStartAnimation(true);
                        this.photoImage.startAnimation();
                    }
                } else {
                    this.photoImage.setAllowStartAnimation(true);
                    this.photoImage.startAnimation();
                }
                this.currentMessageObject.gifState = BitmapDescriptorFactory.HUE_RED;
                this.buttonState = -1;
                this.radialProgress.setIcon(getIconForCurrentState(), false, z);
            }
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        int i = this.documentAttachType;
        updateButtonState(true, i == 3 || i == 5, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00bc, code lost:
        if ((r1 & 2) != 0) goto L41;
     */
    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccessDownload(java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.onSuccessDownload(java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
        if (r8.mediaExists == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003f, code lost:
        if (r8 == 6) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0041, code lost:
        if (r7 == 1) goto L18;
     */
    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void didSetImage(org.telegram.messenger.ImageReceiver r5, boolean r6, boolean r7, boolean r8) {
        /*
            r4 = this;
            org.telegram.messenger.MessageObject r0 = r4.currentMessageObject
            if (r0 == 0) goto L4a
            if (r6 == 0) goto L4a
            r1 = 0
            r2 = 1
            if (r8 != 0) goto L10
            boolean r8 = r0.wasUnread
            if (r8 != 0) goto L10
            r8 = r2
            goto L11
        L10:
            r8 = r1
        L11:
            boolean r8 = r4.setCurrentDiceValue(r8)
            if (r8 == 0) goto L18
            return
        L18:
            if (r7 == 0) goto L26
            org.telegram.messenger.MessageObject r8 = r4.currentMessageObject
            int r0 = r8.type
            r3 = 20
            if (r0 != r3) goto L26
            boolean r8 = r8.mediaExists
            if (r8 == 0) goto L43
        L26:
            if (r7 != 0) goto L4a
            org.telegram.messenger.MessageObject r7 = r4.currentMessageObject
            boolean r8 = r7.mediaExists
            if (r8 != 0) goto L4a
            boolean r8 = r7.attachPathExists
            if (r8 != 0) goto L4a
            int r7 = r7.type
            if (r7 != 0) goto L41
            int r8 = r4.documentAttachType
            r0 = 8
            if (r8 == r0) goto L43
            if (r8 == 0) goto L43
            r0 = 6
            if (r8 == r0) goto L43
        L41:
            if (r7 != r2) goto L4a
        L43:
            org.telegram.messenger.MessageObject r7 = r4.currentMessageObject
            r7.mediaExists = r2
            r4.updateButtonState(r1, r2, r1)
        L4a:
            if (r6 == 0) goto L95
            org.telegram.messenger.MessageObject r6 = r4.currentMessageObject
            if (r6 == 0) goto L95
            org.telegram.messenger.ImageReceiver r6 = r4.blurredPhotoImage
            android.graphics.Bitmap r6 = r6.getBitmap()
            if (r6 == 0) goto L67
            org.telegram.messenger.ImageReceiver r6 = r4.blurredPhotoImage
            android.graphics.Bitmap r6 = r6.getBitmap()
            r6.recycle()
            org.telegram.messenger.ImageReceiver r6 = r4.blurredPhotoImage
            r7 = 0
            r6.setImageBitmap(r7)
        L67:
            org.telegram.messenger.MessageObject r6 = r4.currentMessageObject
            boolean r6 = r6.hasMediaSpoilers()
            if (r6 == 0) goto L95
            android.graphics.Bitmap r6 = r5.getBitmap()
            if (r6 == 0) goto L95
            android.graphics.Bitmap r6 = r5.getBitmap()
            boolean r6 = r6.isRecycled()
            if (r6 != 0) goto L95
            org.telegram.messenger.ImageReceiver r6 = r4.blurredPhotoImage
            android.graphics.Bitmap r5 = r5.getBitmap()
            android.graphics.Bitmap r5 = org.telegram.messenger.Utilities.stackBlurBitmapMax(r5)
            r6.setImageBitmap(r5)
            org.telegram.messenger.ImageReceiver r5 = r4.blurredPhotoImage
            android.graphics.ColorMatrixColorFilter r6 = r4.getFancyBlurFilter()
            r5.setColorFilter(r6)
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.didSetImage(org.telegram.messenger.ImageReceiver, boolean, boolean, boolean):void");
    }

    public boolean setCurrentDiceValue(boolean z) {
        MessagesController.DiceFrameSuccess diceFrameSuccess;
        if (this.currentMessageObject.isDice()) {
            Drawable drawable = this.photoImage.getDrawable();
            if (drawable instanceof RLottieDrawable) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) drawable;
                String diceEmoji = this.currentMessageObject.getDiceEmoji();
                TLRPC$TL_messages_stickerSet stickerSetByEmojiOrName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(diceEmoji);
                if (stickerSetByEmojiOrName != null) {
                    int diceValue = this.currentMessageObject.getDiceValue();
                    if ("🎰".equals(this.currentMessageObject.getDiceEmoji())) {
                        if (diceValue >= 0 && diceValue <= 64) {
                            ((SlotsDrawable) rLottieDrawable).setDiceNumber(this, diceValue, stickerSetByEmojiOrName, z);
                            if (this.currentMessageObject.isOut()) {
                                rLottieDrawable.setOnFinishCallback(this.diceFinishCallback, Integer.MAX_VALUE);
                            }
                            this.currentMessageObject.wasUnread = false;
                        }
                        if (!rLottieDrawable.hasBaseDice() && stickerSetByEmojiOrName.documents.size() > 0) {
                            ((SlotsDrawable) rLottieDrawable).setBaseDice(this, stickerSetByEmojiOrName);
                        }
                    } else {
                        if (!rLottieDrawable.hasBaseDice() && stickerSetByEmojiOrName.documents.size() > 0) {
                            TLRPC$Document tLRPC$Document = stickerSetByEmojiOrName.documents.get(0);
                            if (rLottieDrawable.setBaseDice(FileLoader.getInstance(this.currentAccount).getPathToAttach(tLRPC$Document, true))) {
                                DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
                            } else {
                                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(FileLoader.getAttachFileName(tLRPC$Document), this.currentMessageObject, this);
                                FileLoader.getInstance(this.currentAccount).loadFile(tLRPC$Document, stickerSetByEmojiOrName, 1, 1);
                            }
                        }
                        if (diceValue >= 0 && diceValue < stickerSetByEmojiOrName.documents.size()) {
                            if (!z && this.currentMessageObject.isOut() && (diceFrameSuccess = MessagesController.getInstance(this.currentAccount).diceSuccess.get(diceEmoji)) != null && diceFrameSuccess.num == diceValue) {
                                rLottieDrawable.setOnFinishCallback(this.diceFinishCallback, diceFrameSuccess.frame);
                            }
                            TLRPC$Document tLRPC$Document2 = stickerSetByEmojiOrName.documents.get(Math.max(diceValue, 0));
                            if (rLottieDrawable.setDiceNumber(FileLoader.getInstance(this.currentAccount).getPathToAttach(tLRPC$Document2, true), z)) {
                                DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
                            } else {
                                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(FileLoader.getAttachFileName(tLRPC$Document2), this.currentMessageObject, this);
                                FileLoader.getInstance(this.currentAccount).loadFile(tLRPC$Document2, stickerSetByEmojiOrName, 1, 1);
                            }
                            this.currentMessageObject.wasUnread = false;
                        }
                    }
                } else {
                    MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(diceEmoji, true, true);
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
    public void onAnimationReady(ImageReceiver imageReceiver) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && imageReceiver == this.photoImage && messageObject.isAnimatedSticker()) {
            this.delegate.setShouldNotRepeatSticker(this.currentMessageObject);
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        float min = j2 == 0 ? BitmapDescriptorFactory.HUE_RED : Math.min(1.0f, ((float) j) / ((float) j2));
        this.currentMessageObject.loadedFileSize = j;
        createLoadingProgressLayout(j, j2);
        if (this.drawVideoImageButton) {
            this.videoRadialProgress.setProgress(min, true);
        } else {
            this.radialProgress.setProgress(min, true);
        }
        int i = this.documentAttachType;
        if (i == 3 || i == 5) {
            if (this.hasMiniProgress != 0) {
                if (this.miniButtonState != 1) {
                    updateButtonState(false, false, false);
                }
            } else if (this.buttonState != 4) {
                updateButtonState(false, false, false);
            }
        } else if (this.hasMiniProgress != 0) {
            if (this.miniButtonState != 1) {
                updateButtonState(false, false, false);
            }
        } else if (this.buttonState != 1) {
            updateButtonState(false, false, false);
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
        int i;
        float min = j2 == 0 ? BitmapDescriptorFactory.HUE_RED : Math.min(1.0f, ((float) j) / ((float) j2));
        this.currentMessageObject.loadedFileSize = j;
        this.radialProgress.setProgress(min, true);
        if (j == j2 && this.currentPosition != null && SendMessagesHelper.getInstance(this.currentAccount).isSendingMessage(this.currentMessageObject.getId()) && ((i = this.buttonState) == 1 || (i == 4 && this.documentAttachType == 5))) {
            this.drawRadialCheckBackground = true;
            getIconForCurrentState();
            this.radialProgress.setIcon(6, false, true);
        }
        long j3 = this.lastLoadingSizeTotal;
        if (j3 > 0 && Math.abs(j3 - j2) > 1048576) {
            this.lastLoadingSizeTotal = j2;
        }
        createLoadingProgressLayout(j, j2);
    }

    private void createLoadingProgressLayout(TLRPC$Document tLRPC$Document) {
        if (tLRPC$Document == null) {
            return;
        }
        long[] fileProgressSizes = ImageLoader.getInstance().getFileProgressSizes(FileLoader.getDocumentFileName(tLRPC$Document));
        if (fileProgressSizes != null) {
            createLoadingProgressLayout(fileProgressSizes[0], fileProgressSizes[1]);
        } else {
            createLoadingProgressLayout(this.currentMessageObject.loadedFileSize, tLRPC$Document.size);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createLoadingProgressLayout(long r17, long r19) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.createLoadingProgressLayout(long, long):void");
    }

    @Override // android.view.View
    public void onProvideStructure(ViewStructure viewStructure) {
        super.onProvideStructure(viewStructure);
        if (!this.allowAssistant || Build.VERSION.SDK_INT < 23) {
            return;
        }
        CharSequence charSequence = this.currentMessageObject.messageText;
        if (charSequence != null && charSequence.length() > 0) {
            viewStructure.setText(this.currentMessageObject.messageText);
            return;
        }
        CharSequence charSequence2 = this.currentMessageObject.caption;
        if (charSequence2 == null || charSequence2.length() <= 0) {
            return;
        }
        viewStructure.setText(this.currentMessageObject.caption);
    }

    public void setDelegate(ChatMessageCellDelegate chatMessageCellDelegate) {
        this.delegate = chatMessageCellDelegate;
    }

    public ChatMessageCellDelegate getDelegate() {
        return this.delegate;
    }

    public void setAllowAssistant(boolean z) {
        this.allowAssistant = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:197:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureTime(org.telegram.messenger.MessageObject r19) {
        /*
            Method dump skipped, instructions count: 1171
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.measureTime(org.telegram.messenger.MessageObject):void");
    }

    private boolean shouldDrawSelectionOverlay() {
        return hasSelectionOverlay() && ((isPressed() && this.isCheckPressed) || ((!this.isCheckPressed && this.isPressed) || this.isHighlighted || this.isHighlightedAnimated)) && !textIsSelectionMode() && ((this.currentMessagesGroup == null || this.drawSelectionBackground) && this.currentBackgroundDrawable != null);
    }

    private int getSelectionOverlayColor() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider == null) {
            return 0;
        }
        MessageObject messageObject = this.currentMessageObject;
        return resourcesProvider.getColor((messageObject == null || !messageObject.isOut()) ? Theme.key_chat_inBubbleSelectedOverlay : Theme.key_chat_outBubbleSelectedOverlay);
    }

    private boolean hasSelectionOverlay() {
        int selectionOverlayColor = getSelectionOverlayColor();
        return (selectionOverlayColor == 0 || selectionOverlayColor == -65536) ? false : true;
    }

    private boolean isDrawSelectionBackground() {
        return (((!isPressed() || !this.isCheckPressed) && ((this.isCheckPressed || !this.isPressed) && !this.isHighlighted)) || textIsSelectionMode() || hasSelectionOverlay()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOpenChatByShare(MessageObject messageObject) {
        ChatMessageCellDelegate chatMessageCellDelegate;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader = messageObject.messageOwner.fwd_from;
        return (tLRPC$MessageFwdHeader == null || tLRPC$MessageFwdHeader.saved_from_peer == null || ((chatMessageCellDelegate = this.delegate) != null && !chatMessageCellDelegate.isReplyOrSelf())) ? false : true;
    }

    private boolean checkNeedDrawShareButton(MessageObject messageObject) {
        if (this.wideMode) {
            return false;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2.deleted || messageObject2.isSponsored()) {
            return false;
        }
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        if (groupedMessagePosition == null || this.currentMessagesGroup.isDocuments || groupedMessagePosition.last) {
            return messageObject.needDrawShareButton();
        }
        return false;
    }

    public boolean isInsideBackground(float f, float f2) {
        if (this.currentBackgroundDrawable != null) {
            int i = this.backgroundDrawableLeft;
            if (f >= i && f <= i + this.backgroundDrawableRight) {
                return true;
            }
        }
        return false;
    }

    private void updateCurrentUserAndChat() {
        TLRPC$Peer tLRPC$Peer;
        MessageObject messageObject;
        if (this.currentMessageObject == null) {
            return;
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader = this.currentMessageObject.messageOwner.fwd_from;
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (tLRPC$MessageFwdHeader != null && (tLRPC$MessageFwdHeader.from_id instanceof TLRPC$TL_peerChannel) && this.currentMessageObject.getDialogId() == clientUserId) {
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tLRPC$MessageFwdHeader.from_id.channel_id));
        } else if (tLRPC$MessageFwdHeader != null && (tLRPC$Peer = tLRPC$MessageFwdHeader.saved_from_peer) != null) {
            long j = tLRPC$Peer.user_id;
            if (j != 0) {
                TLRPC$Peer tLRPC$Peer2 = tLRPC$MessageFwdHeader.from_id;
                if (tLRPC$Peer2 instanceof TLRPC$TL_peerUser) {
                    this.currentUser = messagesController.getUser(Long.valueOf(tLRPC$Peer2.user_id));
                } else {
                    this.currentUser = messagesController.getUser(Long.valueOf(j));
                }
            } else if (tLRPC$Peer.channel_id != 0) {
                if (this.currentMessageObject.isSavedFromMegagroup()) {
                    TLRPC$Peer tLRPC$Peer3 = tLRPC$MessageFwdHeader.from_id;
                    if (tLRPC$Peer3 instanceof TLRPC$TL_peerUser) {
                        this.currentUser = messagesController.getUser(Long.valueOf(tLRPC$Peer3.user_id));
                    }
                }
                this.currentChat = messagesController.getChat(Long.valueOf(tLRPC$MessageFwdHeader.saved_from_peer.channel_id));
            } else {
                long j2 = tLRPC$Peer.chat_id;
                if (j2 != 0) {
                    TLRPC$Peer tLRPC$Peer4 = tLRPC$MessageFwdHeader.from_id;
                    if (tLRPC$Peer4 instanceof TLRPC$TL_peerUser) {
                        this.currentUser = messagesController.getUser(Long.valueOf(tLRPC$Peer4.user_id));
                    } else {
                        this.currentChat = messagesController.getChat(Long.valueOf(j2));
                    }
                }
            }
        } else if (tLRPC$MessageFwdHeader != null && (tLRPC$MessageFwdHeader.from_id instanceof TLRPC$TL_peerUser) && (tLRPC$MessageFwdHeader.imported || this.currentMessageObject.getDialogId() == clientUserId)) {
            this.currentUser = messagesController.getUser(Long.valueOf(tLRPC$MessageFwdHeader.from_id.user_id));
        } else if (tLRPC$MessageFwdHeader != null && !TextUtils.isEmpty(tLRPC$MessageFwdHeader.from_name) && (tLRPC$MessageFwdHeader.imported || this.currentMessageObject.getDialogId() == clientUserId)) {
            TLRPC$TL_user tLRPC$TL_user = new TLRPC$TL_user();
            this.currentUser = tLRPC$TL_user;
            tLRPC$TL_user.first_name = tLRPC$MessageFwdHeader.from_name;
        } else {
            long fromChatId = this.currentMessageObject.getFromChatId();
            if (DialogObject.isUserDialog(fromChatId) && !this.currentMessageObject.messageOwner.post) {
                this.currentUser = messagesController.getUser(Long.valueOf(fromChatId));
            } else if (DialogObject.isChatDialog(fromChatId)) {
                this.currentChat = messagesController.getChat(Long.valueOf(-fromChatId));
            } else {
                TLRPC$Message tLRPC$Message = this.currentMessageObject.messageOwner;
                if (tLRPC$Message.post) {
                    this.currentChat = messagesController.getChat(Long.valueOf(tLRPC$Message.peer_id.channel_id));
                }
            }
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 != null && messageObject2.getChatId() != 0) {
            MessageObject messageObject3 = this.currentMessageObject;
            if (messageObject3.messageOwner != null && (messageObject = messageObject3.replyMessageObject) != null && messageObject.isFromUser()) {
                this.currentReplyUserId = this.currentMessageObject.replyMessageObject.messageOwner.from_id.user_id;
                return;
            }
        }
        this.currentReplyUserId = 0L;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:30|(1:32)|33|(2:548|(25:555|(4:568|(1:570)(1:577)|571|(3:573|(1:575)|576))|559|43|(1:45)(1:(1:546)(1:547))|46|47|48|49|(1:51)(1:542)|52|(7:54|(1:56)|57|(1:59)(3:65|(1:67)(1:69)|68)|60|(1:62)(1:64)|63)|70|71|72|(3:74|(1:76)|77)(1:539)|78|(1:80)|(1:82)(1:538)|83|(2:85|(1:87))|88|(1:90)(2:532|(1:534)(2:535|(1:537)))|91|(1:93))(1:554))(1:41)|42|43|(0)(0)|46|47|48|49|(0)(0)|52|(0)|70|71|72|(0)(0)|78|(0)|(0)(0)|83|(0)|88|(0)(0)|91|(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(66:1|(2:3|(2:7|(1:13)))|14|(3:16|(1:20)|581)(3:582|(1:584)|581)|21|(1:580)(1:25)|26|(1:578)(27:30|(1:32)|33|(2:548|(25:555|(4:568|(1:570)(1:577)|571|(3:573|(1:575)|576))|559|43|(1:45)(1:(1:546)(1:547))|46|47|48|49|(1:51)(1:542)|52|(7:54|(1:56)|57|(1:59)(3:65|(1:67)(1:69)|68)|60|(1:62)(1:64)|63)|70|71|72|(3:74|(1:76)|77)(1:539)|78|(1:80)|(1:82)(1:538)|83|(2:85|(1:87))|88|(1:90)(2:532|(1:534)(2:535|(1:537)))|91|(1:93))(1:554))(1:41)|42|43|(0)(0)|46|47|48|49|(0)(0)|52|(0)|70|71|72|(0)(0)|78|(0)|(0)(0)|83|(0)|88|(0)(0)|91|(0))|94|(2:96|(1:98)(2:99|(1:101)(2:102|(1:104))))|105|(3:454|(1:458)|(19:(5:467|(1:469)(1:499)|470|(1:474)|475)(11:500|(2:502|(1:504)(2:524|(1:526)(1:527)))(2:528|(1:530)(1:531))|505|(1:507)|508|509|510|(1:512)(1:521)|513|(1:519)|520)|476|477|478|479|480|481|(1:483)|484|(2:488|(1:490))|492|116|(5:132|(1:134)(1:153)|135|(1:137)|(5:139|(1:141)(3:146|(1:148)(2:150|(1:152))|149)|142|(1:144)|145))|154|(1:158)|159|(2:169|(25:176|(2:180|(1:(1:418))(1:184))|185|(1:189)|190|(1:192)(2:414|(1:416))|193|(18:258|(10:307|(3:309|(3:311|(1:313)(1:411)|314)(1:412)|315)(1:413)|(1:317)|(1:410)(7:329|(1:331)(1:409)|332|(1:334)(1:408)|335|(1:337)(1:407)|338)|339|(2:341|(2:343|(2:345|(1:347)(1:391))(1:392))(1:393))(2:394|(3:396|(1:398)(1:406)|(2:400|(1:402)(2:403|(1:405)))))|(1:349)|350|(1:352)(2:354|(1:356)(2:357|(1:359)(2:360|(6:362|(1:364)(1:373)|365|(1:367)|368|(1:372))(2:374|(1:390)(6:380|(1:382)(1:389)|383|(1:385)|386|(1:388))))))|353)(4:264|(4:266|(1:268)(2:272|(1:274)(2:275|(1:277)))|269|(1:271))|278|(7:285|(1:(1:288)(1:301))(1:(1:303)(1:304))|289|(1:291)(1:300)|292|(1:298)|299)(1:284))|203|204|(1:206)|207|208|209|(1:211)(1:249)|212|(2:214|(1:216))|218|219|(1:221)(1:246)|222|(8:224|(3:226|(2:228|229)(1:231)|230)|232|233|(1:235)|236|(1:240)|241)|242|(1:244))(2:197|(2:(1:255)(1:257)|256)(1:201))|202|203|204|(0)|207|208|209|(0)(0)|212|(0)|218|219|(0)(0)|222|(0)|242|(0)))(2:425|(8:429|(2:431|(1:(1:434)))|436|(2:440|(1:442))|443|(1:445)(2:449|(1:451))|446|(1:448)))|173|174))|115|116|(10:118|120|122|124|128|132|(0)(0)|135|(0)|(0))|154|(2:156|158)|159|(1:161)|452|169|(1:171)|176|(42:178|180|(1:182)|(0)|185|(2:187|189)|190|(0)(0)|193|(1:195)|258|(1:260)|305|307|(0)(0)|(0)|(1:319)|410|339|(0)(0)|(0)|350|(0)(0)|353|203|204|(0)|207|208|209|(0)(0)|212|(0)|218|219|(0)(0)|222|(0)|242|(0)|173|174)|419|180|(0)|(0)|185|(0)|190|(0)(0)|193|(0)|258|(0)|305|307|(0)(0)|(0)|(0)|410|339|(0)(0)|(0)|350|(0)(0)|353|203|204|(0)|207|208|209|(0)(0)|212|(0)|218|219|(0)(0)|222|(0)|242|(0)|173|174) */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x03b4, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x03b5, code lost:
        org.telegram.messenger.FileLog.m97e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0863, code lost:
        if ((r0.action instanceof org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate) == false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0e94, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0e95, code lost:
        org.telegram.messenger.FileLog.m97e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0f7f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x0f80, code lost:
        org.telegram.messenger.FileLog.m97e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x033c A[Catch: Exception -> 0x03b4, TryCatch #7 {Exception -> 0x03b4, blocks: (B:111:0x031a, B:113:0x033c, B:115:0x0352, B:116:0x0366, B:118:0x0373, B:120:0x0377, B:122:0x0384, B:123:0x03b0, B:117:0x036f), top: B:593:0x031a }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x036f A[Catch: Exception -> 0x03b4, TryCatch #7 {Exception -> 0x03b4, blocks: (B:111:0x031a, B:113:0x033c, B:115:0x0352, B:116:0x0366, B:118:0x0373, B:120:0x0377, B:122:0x0384, B:123:0x03b0, B:117:0x036f), top: B:593:0x031a }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0377 A[Catch: Exception -> 0x03b4, TryCatch #7 {Exception -> 0x03b4, blocks: (B:111:0x031a, B:113:0x033c, B:115:0x0352, B:116:0x0366, B:118:0x0373, B:120:0x0377, B:122:0x0384, B:123:0x03b0, B:117:0x036f), top: B:593:0x031a }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0384 A[Catch: Exception -> 0x03b4, TryCatch #7 {Exception -> 0x03b4, blocks: (B:111:0x031a, B:113:0x033c, B:115:0x0352, B:116:0x0366, B:118:0x0373, B:120:0x0377, B:122:0x0384, B:123:0x03b0, B:117:0x036f), top: B:593:0x031a }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03b0 A[Catch: Exception -> 0x03b4, TRY_LEAVE, TryCatch #7 {Exception -> 0x03b4, blocks: (B:111:0x031a, B:113:0x033c, B:115:0x0352, B:116:0x0366, B:118:0x0373, B:120:0x0377, B:122:0x0384, B:123:0x03b0, B:117:0x036f), top: B:593:0x031a }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x079d  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x07a5  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x07ab  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x07c0  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x093e  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x094e  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x095a  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0975  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x097d  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0991  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x09e1  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0a17  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0a4b  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0a53  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0ae8  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0b37  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0b77  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0b83  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0b86  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0e1f  */
    /* JADX WARN: Removed duplicated region for block: B:537:0x0e38 A[Catch: Exception -> 0x0e94, TryCatch #6 {Exception -> 0x0e94, blocks: (B:535:0x0e30, B:537:0x0e38, B:539:0x0e4d, B:541:0x0e52, B:543:0x0e72), top: B:591:0x0e30 }] */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0e4c  */
    /* JADX WARN: Removed duplicated region for block: B:541:0x0e52 A[Catch: Exception -> 0x0e94, TryCatch #6 {Exception -> 0x0e94, blocks: (B:535:0x0e30, B:537:0x0e38, B:539:0x0e4d, B:541:0x0e52, B:543:0x0e72), top: B:591:0x0e30 }] */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0ea0 A[Catch: Exception -> 0x0f7f, TryCatch #0 {Exception -> 0x0f7f, blocks: (B:547:0x0e98, B:549:0x0ea0, B:551:0x0eb5, B:553:0x0eba, B:555:0x0ed0, B:557:0x0edc, B:558:0x0edf, B:559:0x0ee2, B:561:0x0f0c, B:562:0x0f2d, B:564:0x0f3a, B:566:0x0f44, B:567:0x0f55, B:568:0x0f65, B:570:0x0f6b), top: B:579:0x0e98 }] */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0eb4  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0eba A[Catch: Exception -> 0x0f7f, TryCatch #0 {Exception -> 0x0f7f, blocks: (B:547:0x0e98, B:549:0x0ea0, B:551:0x0eb5, B:553:0x0eba, B:555:0x0ed0, B:557:0x0edc, B:558:0x0edf, B:559:0x0ee2, B:561:0x0f0c, B:562:0x0f2d, B:564:0x0f3a, B:566:0x0f44, B:567:0x0f55, B:568:0x0f65, B:570:0x0f6b), top: B:579:0x0e98 }] */
    /* JADX WARN: Removed duplicated region for block: B:570:0x0f6b A[Catch: Exception -> 0x0f7f, TRY_LEAVE, TryCatch #0 {Exception -> 0x0f7f, blocks: (B:547:0x0e98, B:549:0x0ea0, B:551:0x0eb5, B:553:0x0eba, B:555:0x0ed0, B:557:0x0edc, B:558:0x0edf, B:559:0x0ee2, B:561:0x0f0c, B:562:0x0f2d, B:564:0x0f3a, B:566:0x0f44, B:567:0x0f55, B:568:0x0f65, B:570:0x0f6b), top: B:579:0x0e98 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0231  */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v116 */
    /* JADX WARN: Type inference failed for: r4v2, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v70 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageObjectInternal(org.telegram.messenger.MessageObject r42) {
        /*
            Method dump skipped, instructions count: 3975
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.setMessageObjectInternal(org.telegram.messenger.MessageObject):void");
    }

    private String getNameFromDialogId(long j) {
        TLRPC$Chat chat;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i > 0) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            if (user != null) {
                return UserObject.getUserName(user);
            }
            return null;
        } else if (i >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j))) == null) {
            return null;
        } else {
            return chat.title;
        }
    }

    private boolean isNeedAuthorName() {
        if (this.currentMessageObject.isForwardingEditor || this.albumMode) {
            return false;
        }
        if (this.isTemplatesChannel && getTemplateName() == null) {
            return false;
        }
        return (this.isPinnedChat && this.currentMessageObject.type == 0) || (!this.pinnedTop && this.drawName && this.isChat && (!this.currentMessageObject.isOutOwner() || (this.currentMessageObject.isSupergroup() && this.currentMessageObject.isFromGroup()))) || (this.currentMessageObject.isImportedForward() && this.currentMessageObject.messageOwner.fwd_from.from_id == null);
    }

    private String getAuthorName() {
        TLRPC$Chat tLRPC$Chat;
        String str;
        String str2;
        TLRPC$User tLRPC$User = this.currentUser;
        if (tLRPC$User != null) {
            return UserObject.getUserName(tLRPC$User);
        }
        TLRPC$Chat tLRPC$Chat2 = this.currentChat;
        if (tLRPC$Chat2 != null) {
            if (this.isTemplatesChannel) {
                return getTemplateName();
            }
            return tLRPC$Chat2.title;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.isSponsored()) {
            return "DELETED";
        }
        MessageObject messageObject2 = this.currentMessageObject;
        TLRPC$TL_sponsoredWebPage tLRPC$TL_sponsoredWebPage = messageObject2.sponsoredWebPage;
        if (tLRPC$TL_sponsoredWebPage != null) {
            return tLRPC$TL_sponsoredWebPage.site_name;
        }
        TLRPC$ChatInvite tLRPC$ChatInvite = messageObject2.sponsoredChatInvite;
        return (tLRPC$ChatInvite == null || (str2 = tLRPC$ChatInvite.title) == null) ? (tLRPC$ChatInvite == null || (tLRPC$Chat = tLRPC$ChatInvite.chat) == null || (str = tLRPC$Chat.title) == null) ? "" : str : str2;
    }

    private Object getAuthorStatus() {
        boolean isShowPremiumBadgeEnabled = ForkCommonController.getInstance(UserConfig.selectedAccount).isShowPremiumBadgeEnabled();
        boolean isShowPremiumStatusEnabled = ForkCommonController.getInstance(UserConfig.selectedAccount).isShowPremiumStatusEnabled();
        TLRPC$User tLRPC$User = this.currentUser;
        if (tLRPC$User != null) {
            Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(tLRPC$User);
            if (!isShowPremiumStatusEnabled || emojiStatusDocumentId == null) {
                if (isShowPremiumBadgeEnabled && this.currentUser.premium) {
                    return ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3630R.C3632drawable.msg_premium_liststar).mutate();
                }
                return null;
            }
            return emojiStatusDocumentId;
        }
        return null;
    }

    private String getForwardedMessageText(MessageObject messageObject) {
        if (this.hasPsaHint) {
            String string = LocaleController.getString("PsaMessage_" + messageObject.messageOwner.fwd_from.psa_type);
            return string == null ? LocaleController.getString("PsaMessageDefault", C3630R.string.PsaMessageDefault) : string;
        }
        return LocaleController.getString("ForwardedMessage", C3630R.string.ForwardedMessage);
    }

    public int getExtraInsetHeight() {
        int i = this.addedCaptionHeight;
        if (this.drawCommentButton) {
            i += AndroidUtilities.m103dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
        }
        return (this.reactionsLayoutInBubble.isEmpty || !this.currentMessageObject.shouldDrawReactionsInLayout()) ? i : i + this.reactionsLayoutInBubble.totalHeight;
    }

    public ImageReceiver getAvatarImage() {
        if (this.isAvatarVisible) {
            return this.avatarImage;
        }
        return null;
    }

    public float getCheckBoxTranslation() {
        return this.checkBoxTranslation;
    }

    public boolean shouldDrawAlphaLayer() {
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        return (groupedMessages == null || !groupedMessages.transitionParams.backgroundChangeBounds) && getAlpha() != 1.0f;
    }

    public float getCaptionX() {
        return this.captionX;
    }

    public boolean isDrawPinnedBottom() {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        return this.mediaBackground || this.drawPinnedBottom || (groupedMessagePosition != null && (groupedMessagePosition.flags & 8) == 0 && this.currentMessagesGroup.isDocuments);
    }

    public void drawCheckBox(Canvas canvas) {
        float f;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.isSending() || this.currentMessageObject.isSendError() || this.checkBox == null) {
            return;
        }
        if (this.checkBoxVisible || this.checkBoxAnimationInProgress) {
            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
            if (groupedMessagePosition != null) {
                int i = groupedMessagePosition.flags;
                if ((i & 8) == 0 || (i & 1) == 0) {
                    return;
                }
            }
            canvas.save();
            float y = getY();
            MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
            if (groupedMessages != null && groupedMessages.messages.size() > 1) {
                f = (getTop() + this.currentMessagesGroup.transitionParams.offsetTop) - getTranslationY();
            } else {
                f = y + this.transitionParams.deltaTop;
            }
            canvas.translate(BitmapDescriptorFactory.HUE_RED, f + this.transitionYOffsetForDrawables);
            this.checkBox.draw(canvas);
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setBackgroundTopY(boolean r15) {
        /*
            r14 = this;
            r0 = 0
            r1 = r0
        L2:
            r2 = 2
            if (r1 >= r2) goto L85
            r2 = 1
            if (r1 != r2) goto Lb
            if (r15 != 0) goto Lb
            return
        Lb:
            if (r1 != 0) goto L10
            org.telegram.ui.ActionBar.Theme$MessageDrawable r3 = r14.currentBackgroundDrawable
            goto L12
        L10:
            org.telegram.ui.ActionBar.Theme$MessageDrawable r3 = r14.currentBackgroundSelectedDrawable
        L12:
            if (r3 != 0) goto L16
            goto L81
        L16:
            int r4 = r14.parentWidth
            int r5 = r14.parentHeight
            if (r5 != 0) goto L3d
            int r4 = r14.getParentWidth()
            android.graphics.Point r5 = org.telegram.messenger.AndroidUtilities.displaySize
            int r5 = r5.y
            android.view.ViewParent r6 = r14.getParent()
            boolean r6 = r6 instanceof android.view.View
            if (r6 == 0) goto L3d
            android.view.ViewParent r4 = r14.getParent()
            android.view.View r4 = (android.view.View) r4
            int r5 = r4.getMeasuredWidth()
            int r4 = r4.getMeasuredHeight()
            r7 = r4
            r6 = r5
            goto L3f
        L3d:
            r6 = r4
            r7 = r5
        L3f:
            if (r15 == 0) goto L46
            float r4 = r14.getY()
            goto L4b
        L46:
            int r4 = r14.getTop()
            float r4 = (float) r4
        L4b:
            float r5 = r14.parentViewTopOffset
            float r4 = r4 + r5
            int r8 = (int) r4
            int r9 = (int) r5
            int r10 = r14.blurredViewTopOffset
            int r11 = r14.blurredViewBottomOffset
            boolean r12 = r14.pinnedTop
            boolean r4 = r14.pinnedBottom
            if (r4 != 0) goto L67
            org.telegram.ui.Cells.ChatMessageCell$TransitionParams r4 = r14.transitionParams
            float r4 = r4.changePinnedBottomProgress
            r5 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 == 0) goto L65
            goto L67
        L65:
            r13 = r0
            goto L68
        L67:
            r13 = r2
        L68:
            r4 = r3
            r5 = r8
            r8 = r9
            r9 = r10
            r10 = r11
            r11 = r12
            r12 = r13
            r4.setTop(r5, r6, r7, r8, r9, r10, r11, r12)
            org.telegram.messenger.MessageObject r4 = r14.currentMessageObject
            if (r4 == 0) goto L7d
            boolean r4 = r4.hasInlineBotButtons()
            if (r4 == 0) goto L7d
            goto L7e
        L7d:
            r2 = r0
        L7e:
            r3.setBotButtonsBottom(r2)
        L81:
            int r1 = r1 + 1
            goto L2
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.setBackgroundTopY(boolean):void");
    }

    public void setBackgroundTopY(int i) {
        int i2;
        int i3;
        boolean z;
        MessageObject messageObject;
        Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
        int i4 = this.parentWidth;
        int i5 = this.parentHeight;
        if (i5 == 0) {
            i4 = getParentWidth();
            i5 = AndroidUtilities.displaySize.y;
            if (getParent() instanceof View) {
                View view = (View) getParent();
                int measuredWidth = view.getMeasuredWidth();
                i3 = view.getMeasuredHeight();
                i2 = measuredWidth;
                float f = this.parentViewTopOffset;
                z = false;
                messageDrawable.setTop((int) (i + f), i2, i3, (int) f, this.blurredViewTopOffset, this.blurredViewBottomOffset, this.pinnedTop, (this.pinnedBottom && this.transitionParams.changePinnedBottomProgress == 1.0f) ? false : true);
                messageObject = this.currentMessageObject;
                if (messageObject != null && messageObject.hasInlineBotButtons()) {
                    z = true;
                }
                messageDrawable.setBotButtonsBottom(z);
            }
        }
        i2 = i4;
        i3 = i5;
        float f2 = this.parentViewTopOffset;
        z = false;
        messageDrawable.setTop((int) (i + f2), i2, i3, (int) f2, this.blurredViewTopOffset, this.blurredViewBottomOffset, this.pinnedTop, (this.pinnedBottom && this.transitionParams.changePinnedBottomProgress == 1.0f) ? false : true);
        messageObject = this.currentMessageObject;
        if (messageObject != null) {
            z = true;
        }
        messageDrawable.setBotButtonsBottom(z);
    }

    public void setDrawableBoundsInner(Drawable drawable, int i, int i2, int i3, int i4) {
        if (drawable != null) {
            float f = i4 + i2;
            TransitionParams transitionParams = this.transitionParams;
            float f2 = transitionParams.deltaBottom;
            this.transitionYOffsetForDrawables = (f + f2) - ((int) (f + f2));
            drawable.setBounds((int) (i + transitionParams.deltaLeft), (int) (i2 + transitionParams.deltaTop), (int) (i + i3 + transitionParams.deltaRight), (int) (f + f2));
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        boolean z;
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        MessageTopicButton messageTopicButton;
        MessageTopicButton messageTopicButton2;
        Theme.MessageDrawable messageDrawable;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.currentMessageObject == null) {
            return;
        }
        if (!this.wasLayout) {
            onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        }
        if (this.enterTransitionInProgress && this.currentMessageObject.isAnimatedEmojiStickers()) {
            return;
        }
        if (this.currentMessageObject.isOutOwner()) {
            TextPaint textPaint = Theme.chat_msgTextPaint;
            int i7 = Theme.key_chat_messageTextOut;
            textPaint.setColor(getThemedColor(i7));
            Theme.chat_msgGameTextPaint.setColor(getThemedColor(i7));
            TextPaint textPaint2 = Theme.chat_msgGameTextPaint;
            int i8 = Theme.key_chat_messageLinkOut;
            textPaint2.linkColor = getThemedColor(i8);
            Theme.chat_replyTextPaint.linkColor = getThemedColor(i8);
            Theme.chat_msgTextPaint.linkColor = getThemedColor(i8);
        } else {
            TextPaint textPaint3 = Theme.chat_msgTextPaint;
            int i9 = Theme.key_chat_messageTextIn;
            textPaint3.setColor(getThemedColor(i9));
            Theme.chat_msgGameTextPaint.setColor(getThemedColor(i9));
            TextPaint textPaint4 = Theme.chat_msgGameTextPaint;
            int i10 = Theme.key_chat_messageLinkIn;
            textPaint4.linkColor = getThemedColor(i10);
            Theme.chat_replyTextPaint.linkColor = getThemedColor(i10);
            Theme.chat_msgTextPaint.linkColor = getThemedColor(i10);
        }
        if (this.documentAttach != null) {
            int i11 = this.documentAttachType;
            if (i11 == 3 || i11 == 7) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.seekBarWaveform.setColors(getThemedColor(Theme.key_chat_outVoiceSeekbar), getThemedColor(Theme.key_chat_outVoiceSeekbarFill), getThemedColor(Theme.key_chat_outVoiceSeekbarSelected));
                    SeekBar seekBar = this.seekBar;
                    int themedColor = getThemedColor(Theme.key_chat_outAudioSeekbar);
                    int themedColor2 = getThemedColor(Theme.key_chat_outAudioCacheSeekbar);
                    int i12 = Theme.key_chat_outAudioSeekbarFill;
                    seekBar.setColors(themedColor, themedColor2, getThemedColor(i12), getThemedColor(i12), getThemedColor(Theme.key_chat_outAudioSeekbarSelected));
                } else {
                    this.seekBarWaveform.setColors(getThemedColor(Theme.key_chat_inVoiceSeekbar), getThemedColor(Theme.key_chat_inVoiceSeekbarFill), getThemedColor(Theme.key_chat_inVoiceSeekbarSelected));
                    SeekBar seekBar2 = this.seekBar;
                    int themedColor3 = getThemedColor(Theme.key_chat_inAudioSeekbar);
                    int themedColor4 = getThemedColor(Theme.key_chat_inAudioCacheSeekbar);
                    int i13 = Theme.key_chat_inAudioSeekbarFill;
                    seekBar2.setColors(themedColor3, themedColor4, getThemedColor(i13), getThemedColor(i13), getThemedColor(Theme.key_chat_inAudioSeekbarSelected));
                }
            } else if (i11 == 5) {
                if (this.currentMessageObject.isOutOwner()) {
                    SeekBar seekBar3 = this.seekBar;
                    int themedColor5 = getThemedColor(Theme.key_chat_outAudioSeekbar);
                    int themedColor6 = getThemedColor(Theme.key_chat_outAudioCacheSeekbar);
                    int i14 = Theme.key_chat_outAudioSeekbarFill;
                    seekBar3.setColors(themedColor5, themedColor6, getThemedColor(i14), getThemedColor(i14), getThemedColor(Theme.key_chat_outAudioSeekbarSelected));
                } else {
                    SeekBar seekBar4 = this.seekBar;
                    int themedColor7 = getThemedColor(Theme.key_chat_inAudioSeekbar);
                    int themedColor8 = getThemedColor(Theme.key_chat_inAudioCacheSeekbar);
                    int i15 = Theme.key_chat_inAudioSeekbarFill;
                    seekBar4.setColors(themedColor7, themedColor8, getThemedColor(i15), getThemedColor(i15), getThemedColor(Theme.key_chat_inAudioSeekbarSelected));
                }
            }
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject.type == 5) {
            TextPaint textPaint5 = Theme.chat_timePaint;
            int themedColor9 = getThemedColor(Theme.key_chat_serviceText);
            if (isDrawSelectionBackground()) {
                i6 = this.currentMessageObject.isOutOwner() ? Theme.key_chat_outTimeSelectedText : Theme.key_chat_inTimeSelectedText;
            } else {
                i6 = this.currentMessageObject.isOutOwner() ? Theme.key_chat_outTimeText : Theme.key_chat_inTimeText;
            }
            textPaint5.setColor(ColorUtils.blendARGB(themedColor9, getThemedColor(i6), getVideoTranscriptionProgress()));
        } else if (this.mediaBackground) {
            if (messageObject.shouldDrawWithoutBackground()) {
                Theme.chat_timePaint.setColor(getThemedColor(Theme.key_chat_serviceText));
            } else {
                Theme.chat_timePaint.setColor(getThemedColor(Theme.key_chat_mediaTimeText));
            }
        } else if (messageObject.isOutOwner()) {
            Theme.chat_timePaint.setColor(getThemedColor(isDrawSelectionBackground() ? Theme.key_chat_outTimeSelectedText : Theme.key_chat_outTimeText));
        } else {
            Theme.chat_timePaint.setColor(getThemedColor(isDrawSelectionBackground() ? Theme.key_chat_inTimeSelectedText : Theme.key_chat_inTimeText));
        }
        drawBackgroundInternal(canvas, false);
        if (this.isHighlightedAnimated) {
            long currentTimeMillis = System.currentTimeMillis();
            long abs = Math.abs(currentTimeMillis - this.lastHighlightProgressTime);
            if (abs > 17) {
                abs = 17;
            }
            int i16 = (int) (this.highlightProgress - abs);
            this.highlightProgress = i16;
            this.lastHighlightProgressTime = currentTimeMillis;
            if (i16 <= 0) {
                this.highlightProgress = 0;
                this.isHighlightedAnimated = false;
            }
            invalidate();
            if (getParent() != null) {
                ((View) getParent()).invalidate();
            }
        }
        if (this.alphaInternal != 1.0f) {
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = getMeasuredWidth();
            Theme.MessageDrawable messageDrawable2 = this.currentBackgroundDrawable;
            if (messageDrawable2 != null) {
                i5 = messageDrawable2.getBounds().top;
                i4 = this.currentBackgroundDrawable.getBounds().bottom;
                i2 = this.currentBackgroundDrawable.getBounds().left;
                i3 = this.currentBackgroundDrawable.getBounds().right;
            } else {
                i2 = 0;
                i3 = measuredWidth;
                i4 = measuredHeight;
                i5 = 0;
            }
            if (this.drawSideButton != 0 || this.drawAdditionalSideButton) {
                if (this.currentMessageObject.isOutOwner()) {
                    i2 -= AndroidUtilities.m102dp(40);
                } else {
                    i3 += AndroidUtilities.m102dp(40);
                }
            }
            if (getY() < BitmapDescriptorFactory.HUE_RED) {
                i5 = (int) (-getY());
            }
            float y = getY() + getMeasuredHeight();
            int i17 = this.parentHeight;
            if (y > i17) {
                i4 = (int) (i17 - getY());
            }
            this.rect.set(i2, i5, i3, i4);
            i = canvas.saveLayerAlpha(this.rect, (int) (this.alphaInternal * 255.0f), 31);
        } else {
            i = Integer.MIN_VALUE;
        }
        if (!this.transitionParams.animateBackgroundBoundsInner || (messageDrawable = this.currentBackgroundDrawable) == null || this.isRoundVideo) {
            z = false;
        } else {
            Rect bounds = messageDrawable.getBounds();
            canvas.save();
            canvas.clipRect(bounds.left + AndroidUtilities.m102dp(4), bounds.top + AndroidUtilities.m102dp(4), bounds.right - AndroidUtilities.m102dp(4), bounds.bottom - AndroidUtilities.m102dp(4));
            z = true;
        }
        drawContent(canvas);
        ExpiredStoryView expiredStoryView = this.expiredStoryView;
        if (expiredStoryView != null && expiredStoryView.visible) {
            expiredStoryView.draw(canvas, this);
        }
        if (z) {
            canvas.restore();
        }
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate == null || chatMessageCellDelegate.canDrawOutboundsContent() || this.transitionParams.messageEntering || getAlpha() != 1.0f) {
            drawOutboundsContent(canvas);
        }
        if (this.replyNameLayout != null) {
            this.replyHeight = AndroidUtilities.m102dp(7) + Theme.chat_replyNamePaint.getTextSize() + Theme.chat_replyTextPaint.getTextSize();
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2.type != 19) {
                    if (messageObject2.isOutOwner()) {
                        int m102dp = AndroidUtilities.m102dp(23);
                        this.replyStartX = m102dp;
                        if (this.isPlayingRound) {
                            this.replyStartX = m102dp - (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize);
                        }
                    } else if (this.currentMessageObject.type == 5) {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m102dp(4);
                    } else {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m102dp(17);
                    }
                    if (this.drawForwardedName) {
                        int m102dp2 = AndroidUtilities.m102dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
                        this.forwardHeight = m102dp2;
                        this.replyStartY = this.forwardNameY + m102dp2 + AndroidUtilities.m102dp(6);
                    } else {
                        int m102dp3 = AndroidUtilities.m102dp(12);
                        this.replyStartY = m102dp3;
                        if (this.drawTopic && (messageTopicButton2 = this.topicButton) != null) {
                            this.replyStartY = m102dp3 + messageTopicButton2.height() + AndroidUtilities.m102dp(10);
                        }
                    }
                }
            }
            if (this.currentMessageObject.isOutOwner()) {
                int m102dp4 = this.backgroundDrawableLeft + AndroidUtilities.m102dp(12) + getExtraTextX();
                this.replyStartX = m102dp4;
                if (this.currentMessageObject.type == 19) {
                    this.replyStartX = m102dp4 - Math.max(0, ((Math.max(this.replyNameWidth, this.replyTextWidth) + m102dp4) + AndroidUtilities.m102dp(14)) - AndroidUtilities.displaySize.x);
                }
            } else if (this.mediaBackground) {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m102dp(12) + getExtraTextX();
            } else {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m102dp(this.drawPinnedBottom ? 12 : 18) + getExtraTextX();
            }
            if (this.currentMessageObject.type == 19) {
                this.replyStartX -= AndroidUtilities.m102dp(7);
            }
            this.forwardHeight = AndroidUtilities.m102dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
            int m102dp5 = AndroidUtilities.m102dp(12) + ((!this.drawNameLayout || this.nameLayout == null) ? 0 : AndroidUtilities.m102dp(6) + ((int) Theme.chat_namePaint.getTextSize())) + ((!this.drawForwardedName || this.forwardedNameLayout[0] == null) ? 0 : AndroidUtilities.m102dp(4) + this.forwardHeight);
            this.replyStartY = m102dp5;
            if (this.drawTopic && (messageTopicButton = this.topicButton) != null) {
                this.replyStartY = m102dp5 + messageTopicButton.height() + AndroidUtilities.m102dp(5);
            }
        }
        if (this.currentPosition == null && !this.transitionParams.animateBackgroundBoundsInner && (!this.enterTransitionInProgress || this.currentMessageObject.isVoice())) {
            drawNamesLayout(canvas, 1.0f);
        }
        if ((!this.autoPlayingMedia || !MediaController.getInstance().isPlayingMessageAndReadyToDraw(this.currentMessageObject) || this.isRoundVideo) && !this.transitionParams.animateBackgroundBoundsInner) {
            drawOverlays(canvas);
        }
        if ((this.drawTime || !this.mediaBackground) && !this.forceNotDrawTime && !this.transitionParams.animateBackgroundBoundsInner && (!this.enterTransitionInProgress || this.currentMessageObject.isVoice())) {
            drawTime(canvas, 1.0f, false);
        }
        if ((this.controlsAlpha != 1.0f || this.timeAlpha != 1.0f) && this.currentMessageObject.type != 5) {
            long currentTimeMillis2 = System.currentTimeMillis();
            long abs2 = Math.abs(this.lastControlsAlphaChangeTime - currentTimeMillis2);
            long j = this.totalChangeTime + (abs2 <= 17 ? abs2 : 17L);
            this.totalChangeTime = j;
            if (j > 200) {
                this.totalChangeTime = 200L;
            }
            this.lastControlsAlphaChangeTime = currentTimeMillis2;
            if (this.controlsAlpha != 1.0f) {
                this.controlsAlpha = AndroidUtilities.decelerateInterpolator.getInterpolation(((float) this.totalChangeTime) / 200.0f);
            }
            if (this.timeAlpha != 1.0f) {
                this.timeAlpha = AndroidUtilities.decelerateInterpolator.getInterpolation(((float) this.totalChangeTime) / 200.0f);
            }
            invalidate();
            if (this.forceNotDrawTime && (groupedMessagePosition = this.currentPosition) != null && groupedMessagePosition.last && getParent() != null) {
                ((View) getParent()).invalidate();
            }
        }
        if ((this.drawBackground || this.transitionParams.animateDrawBackground) && shouldDrawSelectionOverlay() && this.currentMessagesGroup == null && hasSelectionOverlay()) {
            if (this.selectionOverlayPaint == null) {
                this.selectionOverlayPaint = new Paint(1);
            }
            this.selectionOverlayPaint.setColor(getSelectionOverlayColor());
            int alpha = this.selectionOverlayPaint.getAlpha();
            this.selectionOverlayPaint.setAlpha((int) (alpha * getHighlightAlpha() * getAlpha()));
            if (this.selectionOverlayPaint.getAlpha() > 0) {
                canvas.save();
                canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.currentBackgroundDrawable.drawCached(canvas, this.backgroundCacheParams, this.selectionOverlayPaint);
                canvas.restore();
            }
            this.selectionOverlayPaint.setAlpha(alpha);
        }
        if (i != Integer.MIN_VALUE) {
            canvas.restoreToCount(i);
        }
        updateSelectionTextPosition();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0727  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x07ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackgroundInternal(android.graphics.Canvas r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2161
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawBackgroundInternal(android.graphics.Canvas, boolean):void");
    }

    private void animateCheckboxTranslation() {
        boolean z = this.checkBoxVisible;
        if (z || this.checkBoxAnimationInProgress) {
            if ((z && this.checkBoxAnimationProgress == 1.0f) || (!z && this.checkBoxAnimationProgress == BitmapDescriptorFactory.HUE_RED)) {
                this.checkBoxAnimationInProgress = false;
            }
            this.checkBoxTranslation = (int) Math.ceil((z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m102dp(35));
            if (!this.currentMessageObject.isOutOwner()) {
                updateTranslation();
            }
            if (this.checkBoxAnimationInProgress) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.lastCheckBoxAnimationTime;
                this.lastCheckBoxAnimationTime = elapsedRealtime;
                if (this.checkBoxVisible) {
                    float f = this.checkBoxAnimationProgress + (((float) j) / 200.0f);
                    this.checkBoxAnimationProgress = f;
                    if (f > 1.0f) {
                        this.checkBoxAnimationProgress = 1.0f;
                    }
                } else {
                    float f2 = this.checkBoxAnimationProgress - (((float) j) / 200.0f);
                    this.checkBoxAnimationProgress = f2;
                    if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                        this.checkBoxAnimationProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                }
                invalidate();
                ((View) getParent()).invalidate();
            }
        }
    }

    public boolean drawBackgroundInParent() {
        MessageObject messageObject;
        return this.canDrawBackgroundInParent && (messageObject = this.currentMessageObject) != null && messageObject.isOutOwner() && getThemedColor(Theme.key_chat_outBubbleGradient1) != 0;
    }

    public void drawCommentButton(Canvas canvas, float f) {
        if (this.drawSideButton != 3) {
            return;
        }
        int m102dp = AndroidUtilities.m102dp(32);
        if (this.commentLayout != null) {
            this.sideStartY -= AndroidUtilities.m102dp(18);
            m102dp += AndroidUtilities.m102dp(18);
        }
        RectF rectF = this.rect;
        float f2 = this.sideStartX;
        rectF.set(f2, this.sideStartY, AndroidUtilities.m102dp(32) + f2, this.sideStartY + m102dp);
        applyServiceShaderMatrix();
        int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (i != 0) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
        } else {
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
        }
        if (hasGradientService()) {
            if (i != 0) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        Drawable themeDrawable = Theme.getThemeDrawable("drawableCommentSticker");
        BaseCell.setDrawableBounds(themeDrawable, this.sideStartX + AndroidUtilities.m102dp(4), this.sideStartY + AndroidUtilities.m102dp(4));
        if (i != 0) {
            themeDrawable.setAlpha((int) (f * 255.0f));
            themeDrawable.draw(canvas);
            themeDrawable.setAlpha(255);
        } else {
            themeDrawable.draw(canvas);
        }
        if (this.commentLayout != null) {
            Theme.chat_stickerCommentCountPaint.setColor(getThemedColor(Theme.key_chat_stickerReplyNameText));
            Theme.chat_stickerCommentCountPaint.setAlpha((int) (f * 255.0f));
            if (this.transitionParams.animateComments) {
                if (this.transitionParams.animateCommentsLayout != null) {
                    canvas.save();
                    Theme.chat_stickerCommentCountPaint.setAlpha((int) ((1.0d - this.transitionParams.animateChangeProgress) * 255.0d * f));
                    canvas.translate(this.sideStartX + ((AndroidUtilities.m102dp(32) - this.transitionParams.animateTotalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m102dp(30));
                    this.transitionParams.animateCommentsLayout.draw(canvas);
                    canvas.restore();
                }
                Theme.chat_stickerCommentCountPaint.setAlpha((int) (this.transitionParams.animateChangeProgress * 255.0f));
            }
            canvas.save();
            canvas.translate(this.sideStartX + ((AndroidUtilities.m102dp(32) - this.totalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m102dp(30));
            this.commentLayout.draw(canvas);
            canvas.restore();
        }
    }

    public void applyServiceShaderMatrix() {
        applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, getX(), this.viewTop);
    }

    private void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(i, i2, f, f2);
        } else {
            Theme.applyServiceShaderMatrix(i, i2, f, f2);
        }
    }

    public boolean hasOutboundsContent() {
        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans;
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        if (getAlpha() != 1.0f) {
            return false;
        }
        if (!this.drawAdditionalSideButton && ((this.transitionParams.transitionBotButtons.isEmpty() || !this.transitionParams.animateBotButtonsChanged) && this.botButtons.isEmpty() && this.drawSideButton == 0 && ((!this.drawNameLayout || this.nameLayout == null || (swapAnimatedEmojiDrawable = this.currentNameStatusDrawable) == null || swapAnimatedEmojiDrawable.getDrawable() == null) && (((emojiGroupedSpans = this.animatedEmojiStack) == null || emojiGroupedSpans.holders.isEmpty()) && (!this.drawTopic || this.topicButton == null || ((groupedMessagePosition = this.currentPosition) != null && (groupedMessagePosition.minY != 0 || groupedMessagePosition.minX != 0))))))) {
            if (this.currentMessagesGroup != null) {
                return false;
            }
            TransitionParams transitionParams = this.transitionParams;
            if (((!transitionParams.animateReplaceCaptionLayout || transitionParams.animateChangeProgress == 1.0f) && (transitionParams.animateChangeProgress == 1.0f || !transitionParams.animateMessageText)) || transitionParams.animateOutAnimateEmoji == null || this.transitionParams.animateOutAnimateEmoji.holders.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public void drawOutboundsContent(Canvas canvas) {
        TransitionParams transitionParams;
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        float f;
        float f2;
        float f3;
        float m102dp;
        int extraTextX;
        float f4;
        int themedColor;
        float m102dp2;
        float m102dp3;
        if (!this.enterTransitionInProgress) {
            drawAnimatedEmojis(canvas, 1.0f);
        }
        if (this.currentNameStatusDrawable != null && this.drawNameLayout && this.nameLayout != null) {
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                themedColor = getThemedColor(Theme.key_chat_stickerNameText);
                if (this.currentMessageObject.isOutOwner()) {
                    m102dp3 = AndroidUtilities.m102dp(28);
                } else {
                    m102dp3 = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + this.backgroundDrawableRight + AndroidUtilities.m102dp(22);
                }
                m102dp2 = this.layoutHeight - AndroidUtilities.m102dp(38);
                f4 = m102dp3 - this.nameOffsetX;
            } else {
                int i = 11;
                if (this.mediaBackground || this.currentMessageObject.isOutOwner()) {
                    m102dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m102dp(11);
                    extraTextX = getExtraTextX();
                } else {
                    m102dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m102dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 17);
                    extraTextX = getExtraTextX();
                }
                f4 = m102dp + extraTextX;
                if (this.currentUser != null) {
                    Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
                    if (messageDrawable != null && messageDrawable.hasGradient()) {
                        themedColor = getThemedColor(Theme.key_chat_messageTextOut);
                    } else {
                        themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(this.currentUser.f1762id));
                    }
                } else if (this.currentChat != null) {
                    if (this.currentMessageObject.isOutOwner() && ChatObject.isChannel(this.currentChat)) {
                        Theme.MessageDrawable messageDrawable2 = this.currentBackgroundDrawable;
                        if (messageDrawable2 != null && messageDrawable2.hasGradient()) {
                            themedColor = getThemedColor(Theme.key_chat_messageTextOut);
                        } else {
                            themedColor = getThemedColor(Theme.key_chat_outForwardedNameText);
                        }
                    } else if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) {
                        themedColor = Theme.changeColorAccent(getThemedColor(AvatarDrawable.getNameColorNameForId(5L)));
                    } else if (this.currentMessageObject.isOutOwner()) {
                        themedColor = getThemedColor(Theme.key_chat_outForwardedNameText);
                    } else {
                        themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(this.currentChat.f1600id));
                    }
                } else {
                    themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(0L));
                }
                m102dp2 = AndroidUtilities.m102dp(this.drawPinnedTop ? 9 : 10);
            }
            MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
            if (groupedMessages != null) {
                MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages.transitionParams;
                if (transitionParams2.backgroundChangeBounds) {
                    f4 += transitionParams2.offsetLeft;
                    m102dp2 += transitionParams2.offsetTop - getTranslationY();
                }
            }
            float f5 = f4 + this.animationOffsetX;
            TransitionParams transitionParams3 = this.transitionParams;
            float f6 = m102dp2 + transitionParams3.deltaTop;
            if (transitionParams3.animateSign) {
                f5 = ((f5 - this.transitionParams.animateNameX) * this.transitionParams.animateChangeProgress) + this.transitionParams.animateNameX;
            }
            this.currentNameStatusDrawable.setBounds((int) (Math.abs(f5) + this.nameLayoutWidth + AndroidUtilities.m102dp(2)), (int) (((this.nameLayout.getHeight() / 2) + f6) - AndroidUtilities.m102dp(10)), (int) (Math.abs(f5) + this.nameLayoutWidth + AndroidUtilities.m102dp(22)), (int) (f6 + (this.nameLayout.getHeight() / 2) + AndroidUtilities.m102dp(10)));
            this.currentNameStatusDrawable.setColor(Integer.valueOf(ColorUtils.setAlphaComponent(themedColor, 115)));
            this.currentNameStatusDrawable.draw(canvas);
        }
        if (this.drawTopic && this.topicButton != null && ((groupedMessagePosition = this.currentPosition) == null || (groupedMessagePosition.minY == 0 && groupedMessagePosition.minX == 0))) {
            if (!this.isRoundVideo || this.hasLinkPreview) {
                f = 1.0f;
            } else {
                f = (1.0f - getVideoTranscriptionProgress()) * 1.0f;
                TransitionParams transitionParams4 = this.transitionParams;
                if (transitionParams4.animatePlayingRound) {
                    if (this.isPlayingRound) {
                        f3 = 1.0f - transitionParams4.animateChangeProgress;
                    } else {
                        f3 = transitionParams4.animateChangeProgress;
                    }
                    f *= f3;
                } else if (this.isPlayingRound) {
                    f = 0.0f;
                }
            }
            if (!this.transitionParams.animateForwardedLayout) {
                f2 = 1.0f;
            } else if (!this.currentMessageObject.needDrawForwarded()) {
                f2 = 1.0f - this.transitionParams.animateChangeProgress;
            } else {
                f2 = this.transitionParams.animateChangeProgress;
            }
            this.topicButton.drawOutbounds(canvas, f2 * f);
        }
        if (!this.transitionParams.transitionBotButtons.isEmpty()) {
            if (this.transitionParams.animateBotButtonsChanged) {
                drawBotButtons(canvas, this.transitionParams.transitionBotButtons, (int) (MathUtils.clamp(1.0f - ((float) Math.pow(transitionParams.animateChangeProgress, 2.0d)), (float) BitmapDescriptorFactory.HUE_RED, 1.0f) * 255.0f));
            }
        }
        if (!this.botButtons.isEmpty()) {
            ArrayList<BotButton> arrayList = this.botButtons;
            TransitionParams transitionParams5 = this.transitionParams;
            drawBotButtons(canvas, arrayList, transitionParams5.animateBotButtonsChanged ? (int) (transitionParams5.animateChangeProgress * 255.0f) : 255);
        }
        drawSideButton(canvas);
    }

    public void drawAnimatedEmojis(Canvas canvas, float f) {
        drawAnimatedEmojiMessageText(canvas, f);
    }

    private void drawAnimatedEmojiMessageText(Canvas canvas, float f) {
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateChangeProgress != 1.0f && transitionParams.animateMessageText) {
            canvas.save();
            Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
            if (messageDrawable != null) {
                Rect bounds = messageDrawable.getBounds();
                if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                    canvas.clipRect(bounds.left + AndroidUtilities.m102dp(4), bounds.top + AndroidUtilities.m102dp(4), bounds.right - AndroidUtilities.m102dp(10), bounds.bottom - AndroidUtilities.m102dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m102dp(4), bounds.top + AndroidUtilities.m102dp(4), bounds.right - AndroidUtilities.m102dp(4), bounds.bottom - AndroidUtilities.m102dp(4));
                }
            }
            drawAnimatedEmojiMessageText(canvas, this.transitionParams.animateOutTextBlocks, this.transitionParams.animateOutAnimateEmoji, false, f * (1.0f - this.transitionParams.animateChangeProgress));
            drawAnimatedEmojiMessageText(canvas, this.currentMessageObject.textLayoutBlocks, this.animatedEmojiStack, true, f * this.transitionParams.animateChangeProgress);
            canvas.restore();
            return;
        }
        drawAnimatedEmojiMessageText(canvas, this.currentMessageObject.textLayoutBlocks, this.animatedEmojiStack, true, f);
    }

    private void drawAnimatedEmojiMessageText(Canvas canvas, ArrayList<MessageObject.TextLayoutBlock> arrayList, AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans, boolean z, float f) {
        int size;
        int i;
        if (arrayList == null || arrayList.isEmpty() || f == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (z) {
            if (this.fullyDraw) {
                this.firstVisibleBlockNum = 0;
                this.lastVisibleBlockNum = arrayList.size();
            }
            i = this.firstVisibleBlockNum;
            size = this.lastVisibleBlockNum;
        } else {
            size = arrayList.size();
            i = 0;
        }
        int i2 = size;
        int i3 = this.textY;
        float f2 = i3;
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateText) {
            float f3 = transitionParams.animateFromTextY;
            float f4 = transitionParams.animateChangeProgress;
            f2 = (f3 * (1.0f - f4)) + (i3 * f4);
        }
        float f5 = f2;
        for (int i4 = i; i4 <= i2 && i4 < arrayList.size(); i4++) {
            if (i4 >= 0) {
                MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i4);
                canvas.save();
                canvas.translate(this.textX - (textLayoutBlock.isRtl() ? (int) Math.ceil(this.currentMessageObject.textXOffset) : 0), textLayoutBlock.textYOffset + f5 + this.transitionYOffsetForDrawables);
                float f6 = textLayoutBlock.textYOffset + f5 + this.transitionYOffsetForDrawables;
                boolean z2 = this.transitionParams.messageEntering;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayoutBlock.textLayout, emojiGroupedSpans, BitmapDescriptorFactory.HUE_RED, textLayoutBlock.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f6, f, Theme.chat_animatedEmojiTextColorFilter);
                canvas.restore();
            }
        }
    }

    public void drawAnimatedEmojiCaption(Canvas canvas, float f) {
        TransitionParams transitionParams = this.transitionParams;
        if (!transitionParams.animateReplaceCaptionLayout || transitionParams.animateChangeProgress == 1.0f) {
            drawAnimatedEmojiCaption(canvas, this.captionLayout, this.animatedEmojiStack, f);
            return;
        }
        drawAnimatedEmojiCaption(canvas, transitionParams.animateOutCaptionLayout, this.transitionParams.animateOutAnimateEmoji, (1.0f - this.transitionParams.animateChangeProgress) * f);
        drawAnimatedEmojiCaption(canvas, this.captionLayout, this.animatedEmojiStack, f * this.transitionParams.animateChangeProgress);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:16|(3:18|(1:20)(2:22|(6:24|25|26|27|28|29)(2:33|(1:37)))|21)|38|25|26|27|28|29) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
        org.telegram.messenger.FileLog.m97e(r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawAnimatedEmojiCaption(android.graphics.Canvas r12, android.text.Layout r13, org.telegram.p042ui.Components.AnimatedEmojiSpan.EmojiGroupedSpans r14, float r15) {
        /*
            r11 = this;
            if (r13 == 0) goto L8e
            org.telegram.messenger.MessageObject r0 = r11.currentMessageObject
            boolean r0 = r0.deleted
            if (r0 == 0) goto Lc
            org.telegram.messenger.MessageObject$GroupedMessagePosition r0 = r11.currentPosition
            if (r0 != 0) goto L8e
        Lc:
            r0 = 0
            int r1 = (r15 > r0 ? 1 : (r15 == r0 ? 0 : -1))
            if (r1 > 0) goto L13
            goto L8e
        L13:
            r12.save()
            org.telegram.messenger.MessageObject$GroupedMessages r1 = r11.currentMessagesGroup
            if (r1 == 0) goto L1f
            org.telegram.messenger.MessageObject$GroupedMessages$TransitionParams r1 = r1.transitionParams
            float r1 = r1.captionEnterProgress
            float r15 = r15 * r1
        L1f:
            r9 = r15
            int r15 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r15 != 0) goto L25
            return
        L25:
            float r15 = r11.captionY
            float r0 = r11.captionX
            org.telegram.ui.Cells.ChatMessageCell$TransitionParams r1 = r11.transitionParams
            boolean r2 = r1.animateBackgroundBoundsInner
            if (r2 == 0) goto L75
            boolean r2 = r1.transformGroupToSingleMessage
            if (r2 == 0) goto L3e
            float r1 = r11.getTranslationY()
            float r15 = r15 - r1
            org.telegram.ui.Cells.ChatMessageCell$TransitionParams r1 = r11.transitionParams
            float r1 = r1.deltaLeft
        L3c:
            float r0 = r0 + r1
            goto L75
        L3e:
            boolean r1 = org.telegram.p042ui.Cells.ChatMessageCell.TransitionParams.access$6100(r1)
            if (r1 == 0) goto L5e
            float r15 = r11.captionX
            org.telegram.ui.Cells.ChatMessageCell$TransitionParams r0 = r11.transitionParams
            float r1 = r0.animateChangeProgress
            float r15 = r15 * r1
            float r2 = r0.captionFromX
            r3 = 1065353216(0x3f800000, float:1.0)
            float r4 = r3 - r1
            float r2 = r2 * r4
            float r15 = r15 + r2
            float r2 = r11.captionY
            float r2 = r2 * r1
            float r0 = r0.captionFromY
            float r3 = r3 - r1
            float r0 = r0 * r3
            float r2 = r2 + r0
            r0 = r15
            r8 = r2
            goto L76
        L5e:
            org.telegram.messenger.MessageObject r1 = r11.currentMessageObject
            boolean r1 = r1.isVoice()
            if (r1 == 0) goto L70
            org.telegram.messenger.MessageObject r1 = r11.currentMessageObject
            java.lang.CharSequence r1 = r1.caption
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L75
        L70:
            org.telegram.ui.Cells.ChatMessageCell$TransitionParams r1 = r11.transitionParams
            float r1 = r1.deltaLeft
            goto L3c
        L75:
            r8 = r15
        L76:
            r12.translate(r0, r8)
            r4 = 0
            java.util.List<org.telegram.ui.Components.spoilers.SpoilerEffect> r5 = r11.captionSpoilers     // Catch: java.lang.Exception -> L87
            r6 = 0
            r7 = 0
            android.graphics.PorterDuffColorFilter r10 = org.telegram.p042ui.ActionBar.Theme.chat_animatedEmojiTextColorFilter     // Catch: java.lang.Exception -> L87
            r1 = r12
            r2 = r13
            r3 = r14
            org.telegram.p042ui.Components.AnimatedEmojiSpan.drawAnimatedEmojis(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L87
            goto L8b
        L87:
            r13 = move-exception
            org.telegram.messenger.FileLog.m97e(r13)
        L8b:
            r12.restore()
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawAnimatedEmojiCaption(android.graphics.Canvas, android.text.Layout, org.telegram.ui.Components.AnimatedEmojiSpan$EmojiGroupedSpans, float):void");
    }

    private void drawSideButton(Canvas canvas) {
        this.drawAdditionalSideButton = !this.wideMode && checkNeedDrawAdditionalSideButton(this.currentMessageObject);
        float backgroundDrawableBottom = (getBackgroundDrawableBottom() - AndroidUtilities.m103dp(1.5f)) + this.transitionParams.deltaBottom;
        int m102dp = AndroidUtilities.m102dp(32);
        int m102dp2 = AndroidUtilities.m102dp(8);
        int i = m102dp + m102dp2;
        boolean z = backgroundDrawableBottom >= ((float) (i + m102dp));
        if (this.drawAdditionalSideButton && (this.drawSideButton == 0 || z)) {
            if (this.currentMessageObject.isOutOwner()) {
                float f = this.transitionParams.lastBackgroundLeft - i;
                this.additionalSideButtonStartX = f;
                MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
                if (groupedMessages != null) {
                    this.additionalSideButtonStartX = f + (groupedMessages.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float f2 = this.transitionParams.lastBackgroundRight + m102dp2;
                this.additionalSideButtonStartX = f2;
                MessageObject.GroupedMessages groupedMessages2 = this.currentMessagesGroup;
                if (groupedMessages2 != null) {
                    this.additionalSideButtonStartX = f2 + (groupedMessages2.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            if (this.drawSideButton == 0) {
                this.additionalSideButtonStartY = backgroundDrawableBottom - m102dp;
            } else if (z) {
                float f3 = m102dp;
                this.additionalSideButtonStartY = ((backgroundDrawableBottom - f3) - m102dp2) - f3;
            }
            MessageObject.GroupedMessages groupedMessages3 = this.currentMessagesGroup;
            if (groupedMessages3 != null) {
                float f4 = this.additionalSideButtonStartY;
                MessageObject.GroupedMessages.TransitionParams transitionParams = groupedMessages3.transitionParams;
                float f5 = f4 + transitionParams.offsetBottom;
                this.additionalSideButtonStartY = f5;
                if (transitionParams.backgroundChangeBounds) {
                    this.additionalSideButtonStartY = f5 - getTranslationY();
                }
            }
            RectF rectF = this.rect;
            float f6 = this.additionalSideButtonStartX;
            float f7 = this.additionalSideButtonStartY;
            float f8 = m102dp;
            rectF.set(f6, f7, f6 + f8, f8 + f7);
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, getX(), this.viewTop);
            Paint paint = this.additionalSideButtonPressed ? Theme.chat_actionBackgroundSelectedPaint : Theme.chat_actionBackgroundPaint;
            int alpha = paint.getAlpha();
            paint.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), paint);
            paint.setAlpha(alpha);
            if (Theme.hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            Drawable drawable = this.currentMessageObject.isForwardingEditor ? Theme.chat_editIconDrawable : Theme.chat_translateIconDrawable;
            int alpha2 = drawable.getAlpha();
            BaseCell.setDrawableBounds(drawable, this.additionalSideButtonStartX + AndroidUtilities.m102dp(4), this.additionalSideButtonStartY + AndroidUtilities.m102dp(4));
            drawable.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            drawable.draw(canvas);
            drawable.setAlpha(alpha2);
        }
        if (this.drawSideButton != 0) {
            if (this.currentMessageObject.isOutOwner()) {
                float m102dp3 = this.transitionParams.lastBackgroundLeft - AndroidUtilities.m102dp(40);
                this.sideStartX = m102dp3;
                MessageObject.GroupedMessages groupedMessages4 = this.currentMessagesGroup;
                if (groupedMessages4 != null) {
                    this.sideStartX = m102dp3 + (groupedMessages4.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float m102dp4 = this.transitionParams.lastBackgroundRight + AndroidUtilities.m102dp(8);
                this.sideStartX = m102dp4;
                MessageObject.GroupedMessages groupedMessages5 = this.currentMessagesGroup;
                if (groupedMessages5 != null) {
                    this.sideStartX = m102dp4 + (groupedMessages5.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            float m102dp5 = (this.layoutHeight + this.transitionParams.deltaBottom) - AndroidUtilities.m102dp(41);
            this.sideStartY = m102dp5;
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject.type == 19 && messageObject.textWidth < this.timeTextWidth) {
                this.sideStartY = m102dp5 - AndroidUtilities.m102dp(22);
            }
            if (this.albumMode || (this.drawAdditionalSideButton && z)) {
                this.sideStartY = backgroundDrawableBottom - m102dp;
            }
            MessageObject.GroupedMessages groupedMessages6 = this.currentMessagesGroup;
            if (groupedMessages6 != null) {
                float f9 = this.sideStartY;
                MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages6.transitionParams;
                float f10 = f9 + transitionParams2.offsetBottom;
                this.sideStartY = f10;
                if (transitionParams2.backgroundChangeBounds) {
                    this.sideStartY = f10 - getTranslationY();
                }
            }
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            boolean z2 = reactionsLayoutInBubble.isSmall;
            float f11 = BitmapDescriptorFactory.HUE_RED;
            if (!z2) {
                if (this.isRoundVideo) {
                    this.sideStartY -= reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress());
                } else if (reactionsLayoutInBubble.drawServiceShaderBackground > BitmapDescriptorFactory.HUE_RED) {
                    this.sideStartY -= reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress);
                }
            }
            if (!this.currentMessageObject.isOutOwner() && this.isRoundVideo && !this.hasLinkPreview) {
                float m102dp6 = this.isAvatarVisible ? (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f : AndroidUtilities.m102dp(50);
                float videoTranscriptionProgress = this.isPlayingRound ? (1.0f - getVideoTranscriptionProgress()) * m102dp6 : 0.0f;
                if (this.isPlayingRound) {
                    f11 = AndroidUtilities.m102dp(28) * (1.0f - getVideoTranscriptionProgress());
                }
                TransitionParams transitionParams3 = this.transitionParams;
                if (transitionParams3.animatePlayingRound) {
                    videoTranscriptionProgress = (this.isPlayingRound ? transitionParams3.animateChangeProgress : 1.0f - transitionParams3.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress()) * m102dp6;
                    f11 = AndroidUtilities.m102dp(28) * (this.isPlayingRound ? this.transitionParams.animateChangeProgress : 1.0f - this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress());
                }
                this.sideStartX -= videoTranscriptionProgress;
                this.sideStartY -= f11;
            }
            if (this.drawSideButton == 3) {
                if (!this.enterTransitionInProgress || this.currentMessageObject.isVoice()) {
                    drawCommentButton(canvas, 1.0f);
                    return;
                }
                return;
            }
            RectF rectF2 = this.rect;
            float f12 = this.sideStartX;
            rectF2.set(f12, this.sideStartY, AndroidUtilities.m102dp(32) + f12, this.sideStartY + AndroidUtilities.m102dp(32));
            applyServiceShaderMatrix();
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(16), AndroidUtilities.m102dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            if (this.drawSideButton == 2) {
                Drawable themedDrawable = getThemedDrawable("drawableGoIcon");
                if (this.currentMessageObject.isOutOwner()) {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m102dp(10), this.sideStartY + AndroidUtilities.m102dp(9));
                    canvas.save();
                    canvas.scale(-1.0f, 1.0f, themedDrawable.getBounds().centerX(), themedDrawable.getBounds().centerY());
                } else {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m102dp(12), this.sideStartY + AndroidUtilities.m102dp(9));
                }
                themedDrawable.draw(canvas);
                if (this.currentMessageObject.isOutOwner()) {
                    canvas.restore();
                    return;
                }
                return;
            }
            Drawable themedDrawable2 = getThemedDrawable("drawableShareIcon");
            BaseCell.setDrawableBounds(themedDrawable2, this.sideStartX + AndroidUtilities.m102dp(8), this.sideStartY + AndroidUtilities.m102dp(9));
            themedDrawable2.draw(canvas);
        }
    }

    public void setTimeAlpha(float f) {
        this.timeAlpha = f;
    }

    public float getTimeAlpha() {
        return this.timeAlpha;
    }

    public int getBackgroundDrawableLeft() {
        int m102dp;
        int m102dp2;
        int i;
        if (this.currentMessageObject.isOutOwner()) {
            if (this.isRoundVideo) {
                return (this.layoutWidth - this.backgroundWidth) - ((int) ((1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m102dp(9)));
            }
            return (this.layoutWidth - this.backgroundWidth) - (this.mediaBackground ? AndroidUtilities.m102dp(9) : 0);
        }
        if (this.isRoundVideo) {
            if (this.isChat && this.isAvatarVisible) {
                r1 = 48;
            }
            m102dp = AndroidUtilities.m102dp(r1 + 3) + ((int) (AndroidUtilities.m102dp(6) * (1.0f - getVideoTranscriptionProgress())));
        } else {
            if (this.isChat && this.isAvatarVisible) {
                r1 = 48;
            }
            m102dp = AndroidUtilities.m102dp(r1 + (this.mediaBackground ? 9 : 3));
        }
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.isDocuments && (i = this.currentPosition.leftSpanOffset) != 0) {
            m102dp += (int) Math.ceil((i / 1000.0f) * getGroupPhotosWidth());
        }
        if (this.isRoundVideo) {
            if (!this.drawPinnedBottom) {
                return m102dp;
            }
            m102dp2 = (int) (AndroidUtilities.m102dp(6) * (1.0f - getVideoTranscriptionProgress()));
        } else if (this.mediaBackground || !this.drawPinnedBottom) {
            return m102dp;
        } else {
            m102dp2 = AndroidUtilities.m102dp(6);
        }
        return m102dp + m102dp2;
    }

    public int getBackgroundDrawableRight() {
        int m102dp;
        int backgroundDrawableLeft;
        int i = this.backgroundWidth;
        if (this.isRoundVideo) {
            m102dp = i - ((int) (getVideoTranscriptionProgress() * AndroidUtilities.m102dp(3)));
            if (this.drawPinnedBottom && this.currentMessageObject.isOutOwner()) {
                m102dp = (int) (m102dp - (AndroidUtilities.m102dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            if (this.drawPinnedBottom && !this.currentMessageObject.isOutOwner()) {
                m102dp = (int) (m102dp - (AndroidUtilities.m102dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        } else {
            m102dp = i - (this.mediaBackground ? 0 : AndroidUtilities.m102dp(3));
            if (!this.mediaBackground && this.drawPinnedBottom) {
                m102dp -= AndroidUtilities.m102dp(6);
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        }
        return backgroundDrawableLeft + m102dp;
    }

    public int getBackgroundDrawableTop() {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int m102dp = ((groupedMessagePosition == null || (groupedMessagePosition.flags & 4) != 0) ? 0 : 0 - AndroidUtilities.m102dp(3)) + (this.drawPinnedTop ? 0 : AndroidUtilities.m102dp(1));
        return (this.mediaBackground || !this.drawPinnedTop) ? m102dp : m102dp - AndroidUtilities.m102dp(1);
    }

    public int getBackgroundDrawableBottom() {
        int i;
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int i2 = 0;
        if (groupedMessagePosition != null) {
            i = (groupedMessagePosition.flags & 4) == 0 ? AndroidUtilities.m102dp(3) + 0 : 0;
            if ((this.currentPosition.flags & 8) == 0) {
                i += AndroidUtilities.m102dp(this.currentMessageObject.isOutOwner() ? 3 : 4);
            }
        } else {
            i = 0;
        }
        boolean z = this.drawPinnedBottom;
        if (!z || !this.drawPinnedTop) {
            if (z) {
                i2 = AndroidUtilities.m102dp(1);
            } else {
                i2 = AndroidUtilities.m102dp(2);
            }
        }
        int backgroundDrawableTop = ((getBackgroundDrawableTop() + this.layoutHeight) - i2) + i;
        if (this.mediaBackground) {
            return backgroundDrawableTop;
        }
        if (this.drawPinnedTop) {
            backgroundDrawableTop += AndroidUtilities.m102dp(1);
        }
        return this.drawPinnedBottom ? backgroundDrawableTop + AndroidUtilities.m102dp(1) : backgroundDrawableTop;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackground(android.graphics.Canvas r16, int r17, int r18, int r19, int r20, boolean r21, boolean r22, boolean r23, int r24) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawBackground(android.graphics.Canvas, int, int, int, int, boolean, boolean, boolean, int):void");
    }

    public boolean hasNameLayout() {
        if (!this.drawNameLayout || this.nameLayout == null) {
            if (this.drawForwardedName) {
                StaticLayout[] staticLayoutArr = this.forwardedNameLayout;
                if (staticLayoutArr[0] != null && staticLayoutArr[1] != null) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                    if (groupedMessagePosition == null) {
                        return true;
                    }
                    if (groupedMessagePosition.minY == 0 && groupedMessagePosition.minX == 0) {
                        return true;
                    }
                }
            }
            return this.replyNameLayout != null || this.drawTopic;
        }
        return true;
    }

    public boolean isDrawNameLayout() {
        return this.drawNameLayout && this.nameLayout != null;
    }

    public boolean isDrawTopic() {
        return this.drawTopic;
    }

    public float getDrawTopicHeight() {
        MessageTopicButton messageTopicButton = this.topicButton;
        return messageTopicButton != null ? messageTopicButton.height() : BitmapDescriptorFactory.HUE_RED;
    }

    public boolean isAdminLayoutChanged() {
        return !TextUtils.equals(this.lastPostAuthor, this.currentMessageObject.messageOwner.post_author);
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x088d  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x08ea  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x08f1  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x09d3  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x09f4  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0a4c  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0a5c  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0ab2  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0abd  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x13c3  */
    /* JADX WARN: Removed duplicated region for block: B:727:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawNamesLayout(android.graphics.Canvas r34, float r35) {
        /*
            Method dump skipped, instructions count: 5063
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawNamesLayout(android.graphics.Canvas, float):void");
    }

    public boolean hasCaptionLayout() {
        return this.captionLayout != null;
    }

    public boolean hasCommentLayout() {
        return this.drawCommentButton;
    }

    public StaticLayout getCaptionLayout() {
        return this.captionLayout;
    }

    public void setDrawSelectionBackground(boolean z) {
        if (this.drawSelectionBackground != z) {
            this.drawSelectionBackground = z;
            invalidate();
        }
    }

    public boolean isDrawingSelectionBackground() {
        return this.drawSelectionBackground || this.isHighlightedAnimated || this.isHighlighted;
    }

    public float getHighlightAlpha() {
        int i;
        if (this.drawSelectionBackground || !this.isHighlightedAnimated || (i = this.highlightProgress) >= 300) {
            return 1.0f;
        }
        return i / 300.0f;
    }

    public void setCheckBoxVisible(boolean z, boolean z2) {
        MessageObject.GroupedMessages groupedMessages;
        MessageObject.GroupedMessages groupedMessages2;
        if (z) {
            CheckBoxBase checkBoxBase = this.checkBox;
            if (checkBoxBase == null) {
                CheckBoxBase checkBoxBase2 = new CheckBoxBase(this, 21, this.resourcesProvider);
                this.checkBox = checkBoxBase2;
                if (this.attachedToWindow) {
                    checkBoxBase2.onAttachedToWindow();
                }
            } else {
                checkBoxBase.setResourcesProvider(this.resourcesProvider);
            }
        }
        if (z && (((groupedMessages = this.currentMessagesGroup) != null && groupedMessages.messages.size() > 1) || ((groupedMessages2 = this.groupedMessagesToSet) != null && groupedMessages2.messages.size() > 1))) {
            CheckBoxBase checkBoxBase3 = this.mediaCheckBox;
            if (checkBoxBase3 == null) {
                CheckBoxBase checkBoxBase4 = new CheckBoxBase(this, 21, this.resourcesProvider);
                this.mediaCheckBox = checkBoxBase4;
                checkBoxBase4.setUseDefaultCheck(true);
                if (this.attachedToWindow) {
                    this.mediaCheckBox.onAttachedToWindow();
                }
            } else {
                checkBoxBase3.setResourcesProvider(this.resourcesProvider);
            }
        }
        if (this.checkBoxVisible == z) {
            if (z2 == this.checkBoxAnimationInProgress || z2) {
                return;
            }
            this.checkBoxAnimationProgress = z ? 1.0f : 0.0f;
            invalidate();
            return;
        }
        this.checkBoxAnimationInProgress = z2;
        this.checkBoxVisible = z;
        if (z2) {
            this.lastCheckBoxAnimationTime = SystemClock.elapsedRealtime();
        } else {
            this.checkBoxAnimationProgress = z ? 1.0f : 0.0f;
        }
        invalidate();
    }

    public boolean isCheckBoxVisible() {
        return this.checkBoxVisible || this.checkBoxAnimationInProgress;
    }

    public void setChecked(boolean z, boolean z2, boolean z3) {
        CheckBoxBase checkBoxBase = this.checkBox;
        if (checkBoxBase != null) {
            checkBoxBase.setChecked(z2, z3);
        }
        CheckBoxBase checkBoxBase2 = this.mediaCheckBox;
        if (checkBoxBase2 != null) {
            checkBoxBase2.setChecked(z, z3);
        }
        this.backgroundDrawable.setSelected(z2, z3);
    }

    public void setLastTouchCoords(float f, float f2) {
        this.lastTouchX = f;
        this.lastTouchY = f2;
        this.backgroundDrawable.setTouchCoords(f + getTranslationX(), this.lastTouchY);
    }

    public MessageBackgroundDrawable getBackgroundDrawable() {
        return this.backgroundDrawable;
    }

    public Theme.MessageDrawable getCurrentBackgroundDrawable(boolean z) {
        if (z) {
            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
            boolean z2 = groupedMessagePosition != null && (groupedMessagePosition.flags & 8) == 0 && this.currentMessagesGroup.isDocuments && !this.drawPinnedBottom;
            if (this.currentMessageObject.isOutOwner()) {
                if (!this.mediaBackground && !this.drawPinnedBottom && !z2) {
                    this.currentBackgroundDrawable = (Theme.MessageDrawable) getThemedDrawable("drawableMsgOut");
                } else {
                    this.currentBackgroundDrawable = (Theme.MessageDrawable) getThemedDrawable("drawableMsgOutMedia");
                }
            } else if (!this.mediaBackground && !this.drawPinnedBottom && !z2) {
                this.currentBackgroundDrawable = (Theme.MessageDrawable) getThemedDrawable("drawableMsgIn");
            } else {
                this.currentBackgroundDrawable = (Theme.MessageDrawable) getThemedDrawable("drawableMsgInMedia");
            }
        }
        this.currentBackgroundDrawable.getBackgroundDrawable();
        return this.currentBackgroundDrawable;
    }

    private boolean shouldDrawCaptionLayout() {
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        MessageObject.GroupedMessages groupedMessages;
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject.preview || ((groupedMessagePosition = this.currentPosition) != null && ((groupedMessages = this.currentMessagesGroup) == null || !groupedMessages.isDocuments || (groupedMessagePosition.flags & 8) != 0)) || this.transitionParams.animateBackgroundBoundsInner || (this.enterTransitionInProgress && messageObject.isVoice())) ? false : true;
    }

    public void drawCaptionLayout(Canvas canvas, boolean z, float f) {
        if (this.animatedEmojiStack != null && (this.captionLayout != null || this.transitionParams.animateOutCaptionLayout != null)) {
            this.animatedEmojiStack.clearPositions();
        }
        TransitionParams transitionParams = this.transitionParams;
        if (!transitionParams.animateReplaceCaptionLayout || transitionParams.animateChangeProgress == 1.0f) {
            drawCaptionLayout(canvas, this.captionLayout, z, f);
        } else {
            drawCaptionLayout(canvas, transitionParams.animateOutCaptionLayout, z, (1.0f - this.transitionParams.animateChangeProgress) * f);
            drawCaptionLayout(canvas, this.captionLayout, z, this.transitionParams.animateChangeProgress * f);
        }
        if (!z) {
            drawAnimatedEmojiCaption(canvas, f);
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.messageOwner != null && messageObject.isVoiceTranscriptionOpen()) {
            MessageObject messageObject2 = this.currentMessageObject;
            if (!messageObject2.messageOwner.voiceTranscriptionFinal && TranscribeButton.isTranscribing(messageObject2)) {
                invalidate();
            }
        }
        if (this.isRoundVideo) {
            this.reactionsLayoutInBubble.drawServiceShaderBackground = 1.0f - getVideoTranscriptionProgress();
        }
        if (z) {
            return;
        }
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        if (groupedMessagePosition != null) {
            int i = groupedMessagePosition.flags;
            if ((i & 8) == 0 || (i & 1) == 0) {
                return;
            }
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (reactionsLayoutInBubble.isSmall) {
            return;
        }
        if (reactionsLayoutInBubble.drawServiceShaderBackground > BitmapDescriptorFactory.HUE_RED) {
            applyServiceShaderMatrix();
        }
        if (getAlpha() != 1.0f) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            canvas.saveLayerAlpha(rectF, (int) (getAlpha() * 255.0f), 31);
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
        if (reactionsLayoutInBubble2.drawServiceShaderBackground > BitmapDescriptorFactory.HUE_RED || !this.transitionParams.animateBackgroundBoundsInner || this.currentPosition != null || this.isRoundVideo) {
            TransitionParams transitionParams2 = this.transitionParams;
            reactionsLayoutInBubble2.draw(canvas, transitionParams2.animateChange ? transitionParams2.animateChangeProgress : 1.0f, null);
        } else {
            canvas.save();
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getBackgroundDrawableBottom() + this.transitionParams.deltaBottom);
            ReactionsLayoutInBubble reactionsLayoutInBubble3 = this.reactionsLayoutInBubble;
            TransitionParams transitionParams3 = this.transitionParams;
            reactionsLayoutInBubble3.draw(canvas, transitionParams3.animateChange ? transitionParams3.animateChangeProgress : 1.0f, null);
            canvas.restore();
        }
        if (getAlpha() != 1.0f) {
            canvas.restore();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05fa  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:467:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawCaptionLayout(android.graphics.Canvas r25, android.text.StaticLayout r26, boolean r27, float r28) {
        /*
            Method dump skipped, instructions count: 2807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawCaptionLayout(android.graphics.Canvas, android.text.StaticLayout, boolean, float):void");
    }

    public void drawProgressLoadingLink(Canvas canvas, int i) {
        updateProgressLoadingLink();
        ArrayList<LoadingDrawableLocation> arrayList = this.progressLoadingLinkDrawables;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        int themedColor = getThemedColor((messageObject == null || !messageObject.isOutOwner()) ? Theme.key_chat_linkSelectBackground : Theme.key_chat_outLinkSelectBackground);
        int i2 = 0;
        while (i2 < this.progressLoadingLinkDrawables.size()) {
            LoadingDrawableLocation loadingDrawableLocation = this.progressLoadingLinkDrawables.get(i2);
            if (loadingDrawableLocation.blockNum == i) {
                LoadingDrawable loadingDrawable = loadingDrawableLocation.drawable;
                loadingDrawable.setColors(Theme.multAlpha(themedColor, 0.85f), Theme.multAlpha(themedColor, 2.0f), Theme.multAlpha(themedColor, 3.5f), Theme.multAlpha(themedColor, 6.0f));
                loadingDrawable.draw(canvas);
                invalidate();
                if (loadingDrawable.isDisappeared()) {
                    this.progressLoadingLinkDrawables.remove(i2);
                    i2--;
                }
            }
            i2++;
        }
    }

    public void updateProgressLoadingLink() {
        StaticLayout staticLayout;
        ArrayList<MessageObject.TextLayoutBlock> arrayList;
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate == null) {
            return;
        }
        if (!chatMessageCellDelegate.isProgressLoading(this, 1)) {
            this.progressLoadingLink = null;
            ArrayList<LoadingDrawableLocation> arrayList2 = this.progressLoadingLinkDrawables;
            if (arrayList2 == null || arrayList2.isEmpty()) {
                return;
            }
            for (int i = 0; i < this.progressLoadingLinkDrawables.size(); i++) {
                LoadingDrawableLocation loadingDrawableLocation = this.progressLoadingLinkDrawables.get(i);
                if (!loadingDrawableLocation.drawable.isDisappearing()) {
                    loadingDrawableLocation.drawable.disappear();
                }
            }
            return;
        }
        CharacterStyle progressLoadingLink = this.delegate.getProgressLoadingLink(this);
        if (progressLoadingLink == this.progressLoadingLink) {
            return;
        }
        this.progressLoadingLink = progressLoadingLink;
        LoadingDrawable loadingDrawable = this.progressLoadingLinkCurrentDrawable;
        if (loadingDrawable != null) {
            loadingDrawable.disappear();
            this.progressLoadingLinkCurrentDrawable = null;
        }
        LoadingDrawable loadingDrawable2 = new LoadingDrawable();
        this.progressLoadingLinkCurrentDrawable = loadingDrawable2;
        loadingDrawable2.setAppearByGradient(true);
        LinkPath linkPath = new LinkPath(true);
        this.progressLoadingLinkCurrentDrawable.usePath(linkPath);
        this.progressLoadingLinkCurrentDrawable.setRadiiDp(5.0f);
        LoadingDrawableLocation loadingDrawableLocation2 = new LoadingDrawableLocation(this);
        loadingDrawableLocation2.drawable = this.progressLoadingLinkCurrentDrawable;
        loadingDrawableLocation2.blockNum = -3;
        if (this.progressLoadingLinkDrawables == null) {
            this.progressLoadingLinkDrawables = new ArrayList<>();
        }
        this.progressLoadingLinkDrawables.add(loadingDrawableLocation2);
        if (this.progressLoadingLink != null) {
            MessageObject messageObject = this.currentMessageObject;
            int max = Math.max(0, (messageObject == null || (arrayList = messageObject.textLayoutBlocks) == null) ? 0 : arrayList.size());
            for (int i2 = -2; i2 < max; i2++) {
                float f = BitmapDescriptorFactory.HUE_RED;
                if (i2 == -2) {
                    staticLayout = this.descriptionLayout;
                } else if (i2 == -1) {
                    staticLayout = this.captionLayout;
                } else {
                    StaticLayout staticLayout2 = this.currentMessageObject.textLayoutBlocks.get(i2).textLayout;
                    f = this.currentMessageObject.textLayoutBlocks.get(i2).textYOffset;
                    staticLayout = staticLayout2;
                }
                if (staticLayout != null && (staticLayout.getText() instanceof Spanned)) {
                    Spanned spanned = (Spanned) staticLayout.getText();
                    CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(0, spanned.length(), CharacterStyle.class);
                    if (characterStyleArr != null) {
                        int i3 = 0;
                        while (true) {
                            if (i3 >= characterStyleArr.length) {
                                break;
                            } else if (characterStyleArr[i3] == this.progressLoadingLink) {
                                loadingDrawableLocation2.blockNum = i2;
                                break;
                            } else {
                                i3++;
                            }
                        }
                    }
                    if (loadingDrawableLocation2.blockNum == i2) {
                        linkPath.rewind();
                        int spanStart = spanned.getSpanStart(this.progressLoadingLink);
                        int spanEnd = spanned.getSpanEnd(this.progressLoadingLink);
                        linkPath.setCurrentLayout(staticLayout, spanStart, f);
                        staticLayout.getSelectionPath(spanStart, spanEnd, linkPath);
                        this.progressLoadingLinkCurrentDrawable.updateBounds();
                        return;
                    }
                }
            }
        }
    }

    public boolean needDrawTime() {
        return !this.forceNotDrawTime;
    }

    public boolean shouldDrawTimeOnMedia() {
        int i = this.overideShouldDrawTimeOnMedia;
        if (i != 0) {
            return i == 1;
        } else if (this.mediaBackground && this.captionLayout == null) {
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            return reactionsLayoutInBubble.isEmpty || reactionsLayoutInBubble.isSmall || this.currentMessageObject.isAnyKindOfSticker() || this.currentMessageObject.isRoundVideo();
        } else {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawTime(android.graphics.Canvas r17, float r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawTime(android.graphics.Canvas, float, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x035c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawTimeInternal(android.graphics.Canvas r39, float r40, boolean r41, float r42, android.text.StaticLayout r43, float r44, boolean r45) {
        /*
            Method dump skipped, instructions count: 2816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawTimeInternal(android.graphics.Canvas, float, boolean, float, android.text.StaticLayout, float, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createStatusDrawableAnimator(int i, int i2, final boolean z) {
        boolean z2 = false;
        boolean z3 = (i2 & 1) != 0;
        boolean z4 = (i2 & 2) != 0;
        boolean z5 = (i & 1) != 0;
        boolean z6 = (i & 2) != 0;
        if (!((i & 4) != 0) && z6 && z4 && !z5 && z3) {
            z2 = true;
        }
        if (!this.transitionParams.messageEntering || z2) {
            this.statusDrawableProgress = BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.statusDrawableAnimator = ofFloat;
            if (z2) {
                ofFloat.setDuration(220L);
            } else {
                ofFloat.setDuration(150L);
            }
            this.statusDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animateFromStatusDrawableParams = i;
            this.animateToStatusDrawableParams = i2;
            this.statusDrawableAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatMessageCell.this.lambda$createStatusDrawableAnimator$12(z, valueAnimator);
                }
            });
            this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    int createStatusDrawableParams = ChatMessageCell.this.transitionParams.createStatusDrawableParams();
                    if (ChatMessageCell.this.animateToStatusDrawableParams == createStatusDrawableParams) {
                        ChatMessageCell.this.statusDrawableAnimationInProgress = false;
                        ChatMessageCell.this.transitionParams.lastStatusDrawableParams = ChatMessageCell.this.animateToStatusDrawableParams;
                        return;
                    }
                    ChatMessageCell chatMessageCell = ChatMessageCell.this;
                    chatMessageCell.createStatusDrawableAnimator(chatMessageCell.animateToStatusDrawableParams, createStatusDrawableParams, z);
                }
            });
            this.statusDrawableAnimationInProgress = true;
            this.statusDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStatusDrawableAnimator$12(boolean z, ValueAnimator valueAnimator) {
        this.statusDrawableProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
        if (!z || getParent() == null) {
            return;
        }
        ((View) getParent()).invalidate();
    }

    private void drawClockOrErrorLayout(Canvas canvas, boolean z, boolean z2, float f, float f2, float f3, float f4, float f5, boolean z3) {
        float currentTotalHeight;
        int themedColor;
        float f6;
        boolean z4 = f5 != 1.0f;
        float f7 = (f5 * 0.5f) + 0.5f;
        float f8 = f2 * f5;
        if (z) {
            if (this.currentMessageObject.isOutOwner()) {
                return;
            }
            MsgClockDrawable msgClockDrawable = Theme.chat_msgClockDrawable;
            if (shouldDrawTimeOnMedia()) {
                themedColor = getThemedColor(Theme.key_chat_mediaSentClock);
            } else {
                themedColor = getThemedColor(z3 ? Theme.key_chat_outSentClockSelected : Theme.key_chat_mediaSentClock);
            }
            msgClockDrawable.setColor(themedColor);
            if (shouldDrawTimeOnMedia()) {
                f6 = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m103dp(9.0f);
            } else {
                float m103dp = (f - AndroidUtilities.m103dp((this.pinnedBottom || this.pinnedTop) ? 9.5f : 8.5f)) + f3;
                if (this.isRoundVideo) {
                    f6 = m103dp - ((AndroidUtilities.m102dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
                } else {
                    f6 = m103dp;
                }
            }
            BaseCell.setDrawableBounds(msgClockDrawable, f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m102dp(11)), f6 - msgClockDrawable.getIntrinsicHeight());
            msgClockDrawable.setAlpha((int) (f8 * 255.0f));
            if (z4) {
                canvas.save();
                canvas.scale(f7, f7, msgClockDrawable.getBounds().centerX(), msgClockDrawable.getBounds().centerY());
            }
            msgClockDrawable.draw(canvas);
            msgClockDrawable.setAlpha(255);
            invalidate();
            if (z4) {
                canvas.restore();
            }
        } else if (!z2 || this.currentMessageObject.isOutOwner()) {
        } else {
            float m102dp = f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m102dp(11));
            float f9 = 21.5f;
            if (shouldDrawTimeOnMedia()) {
                currentTotalHeight = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m103dp(21.5f);
            } else {
                if (!this.pinnedBottom && !this.pinnedTop) {
                    f9 = 20.5f;
                }
                float m103dp2 = (f - AndroidUtilities.m103dp(f9)) + f3;
                currentTotalHeight = this.isRoundVideo ? m103dp2 - (this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress())) : m103dp2;
            }
            this.rect.set(m102dp, currentTotalHeight, AndroidUtilities.m102dp(14) + m102dp, AndroidUtilities.m102dp(14) + currentTotalHeight);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            int i = (int) (f8 * 255.0f);
            Theme.chat_msgErrorPaint.setAlpha(i);
            if (z4) {
                canvas.save();
                canvas.scale(f7, f7, this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(1), AndroidUtilities.m102dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            Drawable themedDrawable = getThemedDrawable("drawableMsgError");
            BaseCell.setDrawableBounds(themedDrawable, m102dp + AndroidUtilities.m102dp(6), currentTotalHeight + AndroidUtilities.m102dp(2));
            themedDrawable.setAlpha(i);
            themedDrawable.draw(canvas);
            themedDrawable.setAlpha(255);
            if (z4) {
                canvas.restore();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawViewsAndRepliesLayout(android.graphics.Canvas r24, float r25, float r26, float r27, float r28, float r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawViewsAndRepliesLayout(android.graphics.Canvas, float, float, float, float, float, boolean):void");
    }

    private void drawStatusDrawable(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f, boolean z5, float f2, float f3, float f4, boolean z6, boolean z7) {
        float imageY2;
        int m102dp;
        int m102dp2;
        Drawable themedDrawable;
        Drawable drawable;
        int i;
        boolean z8 = (f4 == 1.0f || z6) ? false : true;
        float f5 = (f4 * 0.5f) + 0.5f;
        float f6 = z8 ? f * f4 : f;
        if (this.documentAttachType == 7) {
            imageY2 = f3 - ((AndroidUtilities.m102dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
        } else {
            imageY2 = this.photoImage.getImageY2() + this.additionalTimeOffsetY;
        }
        float m103dp = imageY2 - AndroidUtilities.m103dp(8.5f);
        if (z3) {
            MsgClockDrawable msgClockDrawable = Theme.chat_msgClockDrawable;
            if (shouldDrawTimeOnMedia()) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    i = getThemedColor(Theme.key_chat_serviceText);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m102dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m103dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    i = getThemedColor(Theme.key_chat_mediaSentClock);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m102dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m103dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (f6 * 255.0f));
                }
            } else {
                int themedColor = getThemedColor(Theme.key_chat_outSentClock);
                BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m103dp(18.5f)) - msgClockDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m103dp(8.5f)) - msgClockDrawable.getIntrinsicHeight()) + f2);
                msgClockDrawable.setAlpha((int) (f6 * 255.0f));
                i = themedColor;
            }
            msgClockDrawable.setColor(i);
            if (z8) {
                canvas.save();
                canvas.scale(f5, f5, msgClockDrawable.getBounds().centerX(), msgClockDrawable.getBounds().centerY());
            }
            msgClockDrawable.draw(canvas);
            msgClockDrawable.setAlpha(255);
            if (z8) {
                canvas.restore();
            }
            invalidate();
        }
        int i2 = 9;
        if (z2) {
            if (shouldDrawTimeOnMedia()) {
                if (z6) {
                    canvas.save();
                }
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    drawable = getThemedDrawable("drawableMsgStickerCheck");
                    if (z) {
                        if (z6) {
                            canvas.translate(AndroidUtilities.m103dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m103dp(z5 ? 28.3f : 26.3f)) - drawable.getIntrinsicWidth(), (m103dp - drawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m103dp(z5 ? 23.5f : 21.5f)) - drawable.getIntrinsicWidth(), (m103dp - drawable.getIntrinsicHeight()) + f2);
                    }
                    drawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    if (z) {
                        if (z6) {
                            canvas.translate(AndroidUtilities.m103dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m103dp(z5 ? 28.3f : 26.3f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m103dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m103dp(z5 ? 23.5f : 21.5f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m103dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
                    }
                    Theme.chat_msgMediaCheckDrawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                    drawable = Theme.chat_msgMediaCheckDrawable;
                }
                if (z8) {
                    canvas.save();
                    canvas.scale(f5, f5, drawable.getBounds().centerX(), drawable.getBounds().centerY());
                }
                drawable.draw(canvas);
                if (z8) {
                    canvas.restore();
                }
                if (z6) {
                    canvas.restore();
                }
                drawable.setAlpha(255);
            } else {
                if (z6) {
                    canvas.save();
                }
                if (z) {
                    if (z6) {
                        canvas.translate(AndroidUtilities.m102dp(4) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                    }
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckReadSelected" : "drawableMsgOutCheckRead");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m103dp(22.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m102dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
                } else {
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckSelected" : "drawableMsgOutCheck");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m103dp(18.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m102dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
                }
                themedDrawable.setAlpha((int) (f6 * 255.0f));
                if (z8) {
                    canvas.save();
                    canvas.scale(f5, f5, themedDrawable.getBounds().centerX(), themedDrawable.getBounds().centerY());
                }
                themedDrawable.draw(canvas);
                if (z8) {
                    canvas.restore();
                }
                if (z6) {
                    canvas.restore();
                }
                themedDrawable.setAlpha(255);
            }
        }
        if (z) {
            if (shouldDrawTimeOnMedia()) {
                Drawable themedDrawable2 = this.currentMessageObject.shouldDrawWithoutBackground() ? getThemedDrawable("drawableMsgStickerHalfCheck") : Theme.chat_msgMediaHalfCheckDrawable;
                BaseCell.setDrawableBounds(themedDrawable2, (this.layoutWidth - AndroidUtilities.m103dp(z5 ? 23.5f : 21.5f)) - themedDrawable2.getIntrinsicWidth(), (m103dp - themedDrawable2.getIntrinsicHeight()) + f2);
                themedDrawable2.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                if (z8 || z6) {
                    canvas.save();
                    canvas.scale(f5, f5, themedDrawable2.getBounds().centerX(), themedDrawable2.getBounds().centerY());
                }
                themedDrawable2.draw(canvas);
                if (z8 || z6) {
                    canvas.restore();
                }
                themedDrawable2.setAlpha(255);
            } else {
                Drawable themedDrawable3 = getThemedDrawable(z7 ? "drawableMsgOutHalfCheckSelected" : "drawableMsgOutHalfCheck");
                float m102dp3 = (this.layoutWidth - AndroidUtilities.m102dp(18)) - themedDrawable3.getIntrinsicWidth();
                if (!this.pinnedBottom && !this.pinnedTop) {
                    i2 = 8;
                }
                BaseCell.setDrawableBounds(themedDrawable3, m102dp3, ((f3 - AndroidUtilities.m102dp(i2)) - themedDrawable3.getIntrinsicHeight()) + f2);
                themedDrawable3.setAlpha((int) (f6 * 255.0f));
                if (z8 || z6) {
                    canvas.save();
                    canvas.scale(f5, f5, themedDrawable3.getBounds().centerX(), themedDrawable3.getBounds().centerY());
                }
                themedDrawable3.draw(canvas);
                if (z8 || z6) {
                    canvas.restore();
                }
                themedDrawable3.setAlpha(255);
            }
        }
        if (z4) {
            if (shouldDrawTimeOnMedia()) {
                m102dp = this.layoutWidth - AndroidUtilities.m103dp(34.5f);
                m102dp2 = AndroidUtilities.m103dp(26.5f);
            } else {
                m102dp = this.layoutWidth - AndroidUtilities.m102dp(32);
                m102dp2 = AndroidUtilities.m102dp((this.pinnedBottom || this.pinnedTop) ? 22 : 21);
            }
            float f7 = (f3 - m102dp2) + f2;
            this.rect.set(m102dp, f7, AndroidUtilities.m102dp(14) + m102dp, AndroidUtilities.m102dp(14) + f7);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            Theme.chat_msgErrorPaint.setAlpha((int) (alpha * f6));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m102dp(1), AndroidUtilities.m102dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            BaseCell.setDrawableBounds(Theme.chat_msgErrorDrawable, m102dp + AndroidUtilities.m102dp(6), f7 + AndroidUtilities.m102dp(2));
            Theme.chat_msgErrorDrawable.setAlpha((int) (f6 * 255.0f));
            if (z8) {
                canvas.save();
                canvas.scale(f5, f5, Theme.chat_msgErrorDrawable.getBounds().centerX(), Theme.chat_msgErrorDrawable.getBounds().centerY());
            }
            Theme.chat_msgErrorDrawable.draw(canvas);
            Theme.chat_msgErrorDrawable.setAlpha(255);
            if (z8) {
                canvas.restore();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:365:0x0a4d, code lost:
        if (r0[0] == 3) goto L622;
     */
    /* JADX WARN: Code restructure failed: missing block: B:633:0x11ba, code lost:
        if (r4 == 2) goto L1111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x11cb, code lost:
        if (r4 != (-1)) goto L906;
     */
    /* JADX WARN: Code restructure failed: missing block: B:645:0x11d3, code lost:
        if (r27.currentMessageObject.needDrawBluredPreview() == false) goto L908;
     */
    /* JADX WARN: Code restructure failed: missing block: B:895:0x1702, code lost:
        if (r0.revealingMediaSpoilers != false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:903:0x171d, code lost:
        if (r27.radialProgress.getIcon() != 4) goto L261;
     */
    /* JADX WARN: Removed duplicated region for block: B:1020:0x19fa  */
    /* JADX WARN: Removed duplicated region for block: B:1023:0x1a01  */
    /* JADX WARN: Removed duplicated region for block: B:1098:0x1bd7  */
    /* JADX WARN: Removed duplicated region for block: B:1105:0x1bf6  */
    /* JADX WARN: Removed duplicated region for block: B:1108:0x1c48  */
    /* JADX WARN: Removed duplicated region for block: B:1137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:744:0x12fc  */
    /* JADX WARN: Removed duplicated region for block: B:745:0x12ff  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x130b  */
    /* JADX WARN: Removed duplicated region for block: B:749:0x130d  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x131b  */
    /* JADX WARN: Removed duplicated region for block: B:753:0x1322  */
    /* JADX WARN: Removed duplicated region for block: B:761:0x1359  */
    /* JADX WARN: Removed duplicated region for block: B:762:0x135d  */
    /* JADX WARN: Removed duplicated region for block: B:765:0x139d  */
    /* JADX WARN: Removed duplicated region for block: B:766:0x13d9  */
    /* JADX WARN: Removed duplicated region for block: B:778:0x1417  */
    /* JADX WARN: Removed duplicated region for block: B:779:0x141a  */
    /* JADX WARN: Removed duplicated region for block: B:782:0x1421  */
    /* JADX WARN: Removed duplicated region for block: B:783:0x1425  */
    /* JADX WARN: Removed duplicated region for block: B:801:0x14ce  */
    /* JADX WARN: Removed duplicated region for block: B:805:0x1501  */
    /* JADX WARN: Removed duplicated region for block: B:809:0x151a  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x153b  */
    /* JADX WARN: Removed duplicated region for block: B:821:0x1552  */
    /* JADX WARN: Removed duplicated region for block: B:829:0x1571  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x1582  */
    /* JADX WARN: Removed duplicated region for block: B:843:0x1590  */
    /* JADX WARN: Removed duplicated region for block: B:847:0x15a1  */
    /* JADX WARN: Removed duplicated region for block: B:856:0x15be  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:892:0x16fa  */
    /* JADX WARN: Removed duplicated region for block: B:906:0x1727  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x172d  */
    /* JADX WARN: Removed duplicated region for block: B:923:0x177b  */
    /* JADX WARN: Removed duplicated region for block: B:941:0x1828  */
    /* JADX WARN: Removed duplicated region for block: B:945:0x1832  */
    /* JADX WARN: Removed duplicated region for block: B:956:0x1855  */
    /* JADX WARN: Removed duplicated region for block: B:962:0x1879  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x187b  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x1884  */
    /* JADX WARN: Removed duplicated region for block: B:975:0x1911  */
    /* JADX WARN: Removed duplicated region for block: B:981:0x1925  */
    /* JADX WARN: Removed duplicated region for block: B:985:0x1933  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawOverlays(android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 7452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.drawOverlays(android.graphics.Canvas):void");
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    public MessageObject getMessageObject() {
        MessageObject messageObject = this.messageObjectToSet;
        return messageObject != null ? messageObject : this.currentMessageObject;
    }

    public TLRPC$Document getStreamingMedia() {
        int i = this.documentAttachType;
        if (i == 4 || i == 7 || i == 2) {
            return this.documentAttach;
        }
        return null;
    }

    public boolean drawPinnedBottom() {
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && groupedMessages.isDocuments) {
            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
            if (groupedMessagePosition == null || (groupedMessagePosition.flags & 8) == 0) {
                return true;
            }
            return this.pinnedBottom;
        }
        return this.pinnedBottom;
    }

    public float getVideoTranscriptionProgress() {
        MessageObject messageObject;
        if (this.transitionParams == null || (messageObject = this.currentMessageObject) == null || !messageObject.isRoundVideo()) {
            return 1.0f;
        }
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateDrawBackground) {
            if (this.drawBackground) {
                return transitionParams.animateChangeProgress;
            }
            return 1.0f - transitionParams.animateChangeProgress;
        } else if (this.drawBackground) {
            return 1.0f;
        } else {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    public boolean drawPinnedTop() {
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && groupedMessages.isDocuments) {
            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
            if (groupedMessagePosition == null || (groupedMessagePosition.flags & 4) == 0) {
                return true;
            }
            return this.pinnedTop;
        }
        return this.pinnedTop;
    }

    public boolean isPinnedBottom() {
        return this.pinnedBottom;
    }

    public boolean isPinnedTop() {
        return this.pinnedTop;
    }

    public MessageObject.GroupedMessages getCurrentMessagesGroup() {
        return this.currentMessagesGroup;
    }

    public MessageObject.GroupedMessagePosition getCurrentPosition() {
        return this.currentPosition;
    }

    public int getLayoutHeight() {
        return this.layoutHeight;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        ChatMessageCellDelegate chatMessageCellDelegate;
        ChatMessageCellDelegate chatMessageCellDelegate2 = this.delegate;
        if (chatMessageCellDelegate2 == null || !chatMessageCellDelegate2.onAccessibilityAction(i, bundle)) {
            if (i == 16) {
                int iconForCurrentState = getIconForCurrentState();
                if (iconForCurrentState != 4 && iconForCurrentState != 5 && iconForCurrentState != 100) {
                    didPressButton(true, false);
                } else if (this.currentMessageObject.type == 16) {
                    this.delegate.didPressOther(this, this.otherX, this.otherY);
                } else {
                    didClickedImage();
                }
                return true;
            }
            if (i == C3630R.C3633id.acc_action_small_button) {
                didPressMiniButton(true);
            } else if (i == C3630R.C3633id.acc_action_msg_options) {
                ChatMessageCellDelegate chatMessageCellDelegate3 = this.delegate;
                if (chatMessageCellDelegate3 != null) {
                    if (this.currentMessageObject.type == 16) {
                        chatMessageCellDelegate3.didLongPress(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        chatMessageCellDelegate3.didPressOther(this, this.otherX, this.otherY);
                    }
                }
            } else if (i == C3630R.C3633id.acc_action_open_forwarded_origin && (chatMessageCellDelegate = this.delegate) != null) {
                TLRPC$Chat tLRPC$Chat = this.currentForwardChannel;
                if (tLRPC$Chat != null) {
                    chatMessageCellDelegate.didPressChannelAvatar(this, tLRPC$Chat, this.currentMessageObject.messageOwner.fwd_from.channel_post, this.lastTouchX, this.lastTouchY);
                } else {
                    TLRPC$User tLRPC$User = this.currentForwardUser;
                    if (tLRPC$User != null) {
                        chatMessageCellDelegate.didPressUserAvatar(this, tLRPC$User, this.lastTouchX, this.lastTouchY);
                    } else if (this.currentForwardName != null) {
                        chatMessageCellDelegate.didPressHiddenForward(this);
                    }
                }
            }
            if ((this.currentMessageObject.isVoice() || this.currentMessageObject.isRoundVideo() || (this.currentMessageObject.isMusic() && MediaController.getInstance().isPlayingMessage(this.currentMessageObject))) && this.seekBarAccessibilityDelegate.performAccessibilityActionInternal(i, bundle)) {
                return true;
            }
            return super.performAccessibilityAction(i, bundle);
        }
        return false;
    }

    public void setAnimationRunning(boolean z, boolean z2) {
        this.animationRunning = z;
        if (z) {
            this.willRemoved = z2;
        } else {
            this.willRemoved = false;
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 9 || motionEvent.getAction() == 7) {
            for (int i = 0; i < this.accessibilityVirtualViewBounds.size(); i++) {
                if (this.accessibilityVirtualViewBounds.valueAt(i).contains(x, y)) {
                    int keyAt = this.accessibilityVirtualViewBounds.keyAt(i);
                    if (keyAt != this.currentFocusedVirtualView) {
                        this.currentFocusedVirtualView = keyAt;
                        sendAccessibilityEventForVirtualView(keyAt, LiteMode.FLAG_CHAT_SCALE);
                        return true;
                    }
                    return true;
                }
            }
        } else if (motionEvent.getAction() == 10) {
            this.currentFocusedVirtualView = 0;
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        return new MessageAccessibilityNodeProvider();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAccessibilityEventForVirtualView(int i, int i2) {
        sendAccessibilityEventForVirtualView(i, i2, null);
    }

    private void sendAccessibilityEventForVirtualView(int i, int i2, String str) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            obtain.setPackageName(getContext().getPackageName());
            obtain.setSource(this, i);
            if (str != null) {
                obtain.getText().add(str);
            }
            if (getParent() != null) {
                getParent().requestSendAccessibilityEvent(this, obtain);
            }
        }
    }

    public static Point getMessageSize(int i, int i2) {
        return getMessageSize(i, i2, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.telegram.p042ui.Components.Point getMessageSize(int r3, int r4, int r5, int r6) {
        /*
            if (r6 == 0) goto L4
            if (r5 != 0) goto L4f
        L4:
            boolean r5 = org.telegram.messenger.AndroidUtilities.isTablet()
            r6 = 1060320051(0x3f333333, float:0.7)
            if (r5 == 0) goto L15
            int r5 = org.telegram.messenger.AndroidUtilities.getMinTabletSide()
        L11:
            float r5 = (float) r5
            float r5 = r5 * r6
            int r5 = (int) r5
            goto L34
        L15:
            if (r3 < r4) goto L29
            android.graphics.Point r5 = org.telegram.messenger.AndroidUtilities.displaySize
            int r6 = r5.x
            int r5 = r5.y
            int r5 = java.lang.Math.min(r6, r5)
            r6 = 64
            int r6 = org.telegram.messenger.AndroidUtilities.m102dp(r6)
            int r5 = r5 - r6
            goto L34
        L29:
            android.graphics.Point r5 = org.telegram.messenger.AndroidUtilities.displaySize
            int r0 = r5.x
            int r5 = r5.y
            int r5 = java.lang.Math.min(r0, r5)
            goto L11
        L34:
            r6 = 100
            int r6 = org.telegram.messenger.AndroidUtilities.m102dp(r6)
            int r6 = r6 + r5
            int r0 = org.telegram.messenger.AndroidUtilities.getPhotoSize()
            if (r5 <= r0) goto L45
            int r5 = org.telegram.messenger.AndroidUtilities.getPhotoSize()
        L45:
            int r0 = org.telegram.messenger.AndroidUtilities.getPhotoSize()
            if (r6 <= r0) goto L4f
            int r6 = org.telegram.messenger.AndroidUtilities.getPhotoSize()
        L4f:
            float r3 = (float) r3
            float r5 = (float) r5
            float r0 = r3 / r5
            float r1 = r3 / r0
            int r1 = (int) r1
            float r4 = (float) r4
            float r0 = r4 / r0
            int r0 = (int) r0
            r2 = 150(0x96, float:2.1E-43)
            if (r1 != 0) goto L62
            int r1 = org.telegram.messenger.AndroidUtilities.m102dp(r2)
        L62:
            if (r0 != 0) goto L68
            int r0 = org.telegram.messenger.AndroidUtilities.m102dp(r2)
        L68:
            if (r0 <= r6) goto L71
            float r3 = (float) r0
            float r4 = (float) r6
            float r3 = r3 / r4
            float r4 = (float) r1
            float r4 = r4 / r3
            int r1 = (int) r4
            goto L87
        L71:
            r6 = 120(0x78, float:1.68E-43)
            int r2 = org.telegram.messenger.AndroidUtilities.m102dp(r6)
            if (r0 >= r2) goto L86
            int r6 = org.telegram.messenger.AndroidUtilities.m102dp(r6)
            float r0 = (float) r6
            float r4 = r4 / r0
            float r3 = r3 / r4
            int r4 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r4 >= 0) goto L87
            int r1 = (int) r3
            goto L87
        L86:
            r6 = r0
        L87:
            org.telegram.ui.Components.Point r3 = new org.telegram.ui.Components.Point
            float r4 = (float) r1
            float r5 = (float) r6
            r3.<init>(r4, r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.getMessageSize(int, int, int, int):org.telegram.ui.Components.Point");
    }

    public StaticLayout getDescriptionlayout() {
        return this.descriptionLayout;
    }

    public void setSelectedBackgroundProgress(float f) {
        this.selectedBackgroundProgress = f;
        invalidate();
    }

    public int computeHeight(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages) {
        this.photoImage.setIgnoreImageSet(true);
        this.avatarImage.setIgnoreImageSet(true);
        this.replyImageReceiver.setIgnoreImageSet(true);
        this.locationImageReceiver.setIgnoreImageSet(true);
        if (groupedMessages != null && groupedMessages.messages.size() != 1) {
            int i = 0;
            for (int i2 = 0; i2 < groupedMessages.messages.size(); i2++) {
                MessageObject messageObject2 = groupedMessages.messages.get(i2);
                MessageObject.GroupedMessagePosition groupedMessagePosition = groupedMessages.positions.get(messageObject2);
                if (groupedMessagePosition != null && (groupedMessagePosition.flags & 1) != 0) {
                    setMessageContent(messageObject2, groupedMessages, false, false);
                    i += this.totalHeight + this.keyboardHeight;
                }
            }
            return i;
        }
        setMessageContent(messageObject, groupedMessages, false, false);
        this.photoImage.setIgnoreImageSet(false);
        this.avatarImage.setIgnoreImageSet(false);
        this.replyImageReceiver.setIgnoreImageSet(false);
        this.locationImageReceiver.setIgnoreImageSet(false);
        return this.totalHeight + this.keyboardHeight;
    }

    public void shakeView() {
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(View.ROTATION, Keyframe.ofFloat(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED), Keyframe.ofFloat(0.2f, 3.0f), Keyframe.ofFloat(0.4f, -3.0f), Keyframe.ofFloat(0.6f, 3.0f), Keyframe.ofFloat(0.8f, -3.0f), Keyframe.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED));
        Keyframe ofFloat = Keyframe.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        Keyframe ofFloat2 = Keyframe.ofFloat(0.5f, 0.97f);
        Keyframe ofFloat3 = Keyframe.ofFloat(1.0f, 1.0f);
        PropertyValuesHolder ofKeyframe2 = PropertyValuesHolder.ofKeyframe(View.SCALE_X, ofFloat, ofFloat2, ofFloat3);
        PropertyValuesHolder ofKeyframe3 = PropertyValuesHolder.ofKeyframe(View.SCALE_Y, ofFloat, ofFloat2, ofFloat3);
        AnimatorSet animatorSet = new AnimatorSet();
        this.shakeAnimation = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofPropertyValuesHolder(this, ofKeyframe), ObjectAnimator.ofPropertyValuesHolder(this, ofKeyframe2), ObjectAnimator.ofPropertyValuesHolder(this, ofKeyframe3));
        this.shakeAnimation.setDuration(500L);
        this.shakeAnimation.start();
    }

    private void cancelShakeAnimation() {
        AnimatorSet animatorSet = this.shakeAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.shakeAnimation = null;
            setScaleX(1.0f);
            setScaleY(1.0f);
            setRotation(BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void setSlidingOffset(float f) {
        if (this.slidingOffsetX != f) {
            this.slidingOffsetX = f;
            updateTranslation();
        }
    }

    public void setAnimationOffsetX(float f) {
        if (this.animationOffsetX != f) {
            this.animationOffsetX = f;
            updateTranslation();
        }
    }

    private void updateTranslation() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        int i = !messageObject.isOutOwner() ? this.checkBoxTranslation : 0;
        if (this.wideMode) {
            float m102dp = 1.0f - ((i * 0.05f) / AndroidUtilities.m102dp(35));
            setScaleX(m102dp);
            setScaleY(m102dp);
            setTranslationX(this.slidingOffsetX + this.animationOffsetX);
        } else {
            setScaleX(1.0f);
            setScaleY(1.0f);
        }
        if (this.wideMode) {
            return;
        }
        setTranslationX(this.slidingOffsetX + this.animationOffsetX + i);
    }

    public float getNonAnimationTranslationX(boolean z) {
        boolean z2;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && !messageObject.isOutOwner()) {
            if (z && ((z2 = this.checkBoxVisible) || this.checkBoxAnimationInProgress)) {
                this.checkBoxTranslation = (int) Math.ceil((z2 ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m102dp(35));
            }
            return this.slidingOffsetX + this.checkBoxTranslation;
        }
        return this.slidingOffsetX;
    }

    public float getSlidingOffsetX() {
        return this.slidingOffsetX;
    }

    public boolean willRemovedAfterAnimation() {
        return this.willRemoved;
    }

    public float getAnimationOffsetX() {
        return this.animationOffsetX;
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
    }

    public SeekBar getSeekBar() {
        return this.seekBar;
    }

    public SeekBarWaveform getSeekBarWaveform() {
        return this.seekBarWaveform;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$MessageAccessibilityNodeProvider */
    /* loaded from: classes5.dex */
    public class MessageAccessibilityNodeProvider extends AccessibilityNodeProvider {
        private Path linkPath;
        private Rect rect;
        private RectF rectF;

        private MessageAccessibilityNodeProvider() {
            this.linkPath = new Path();
            this.rectF = new RectF();
            this.rect = new Rect();
        }

        /* renamed from: org.telegram.ui.Cells.ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan */
        /* loaded from: classes5.dex */
        private class ProfileSpan extends ClickableSpan {
            private TLRPC$User user;

            public ProfileSpan(TLRPC$User tLRPC$User) {
                this.user = tLRPC$User;
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                if (ChatMessageCell.this.delegate != null) {
                    ChatMessageCell.this.delegate.didPressUserAvatar(ChatMessageCell.this, this.user, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
            }
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            boolean z;
            int i2;
            String str;
            String formatShortNumber;
            int i3;
            String str2;
            boolean z2;
            String str3;
            long j;
            boolean z3;
            String str4;
            CharacterStyle[] characterStyleArr;
            TLRPC$ReactionCount tLRPC$ReactionCount;
            boolean z4;
            TLRPC$MessagePeerReaction tLRPC$MessagePeerReaction;
            int i4;
            String str5;
            String string;
            CharacterStyle[] characterStyleArr2;
            CharacterStyle[] characterStyleArr3;
            String string2;
            AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo;
            int[] iArr = {0, 0};
            ChatMessageCell.this.getLocationOnScreen(iArr);
            if (i == -1) {
                AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(ChatMessageCell.this);
                ChatMessageCell.this.onInitializeAccessibilityNodeInfo(obtain);
                boolean z5 = ChatMessageCell.this.currentMessageObject != null && ChatMessageCell.this.currentMessageObject.isOut() && !ChatMessageCell.this.currentMessageObject.scheduled && ChatMessageCell.this.currentMessageObject.isUnread();
                boolean z6 = ChatMessageCell.this.currentMessageObject != null && ChatMessageCell.this.currentMessageObject.isContentUnread();
                if (ChatMessageCell.this.currentMessageObject != null) {
                    str3 = " ";
                    j = ChatMessageCell.this.currentMessageObject.loadedFileSize;
                } else {
                    str3 = " ";
                    j = 0;
                }
                ChatMessageCell chatMessageCell = ChatMessageCell.this;
                if (chatMessageCell.accessibilityText == null || chatMessageCell.accessibilityTextUnread != z5 || ChatMessageCell.this.accessibilityTextContentUnread != z6 || ChatMessageCell.this.accessibilityTextFileSize != j) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
                    if (chatMessageCell2.isChat && chatMessageCell2.currentUser != null && !ChatMessageCell.this.currentMessageObject.isOut()) {
                        spannableStringBuilder.append((CharSequence) UserObject.getUserName(ChatMessageCell.this.currentUser));
                        spannableStringBuilder.setSpan(new ProfileSpan(ChatMessageCell.this.currentUser), 0, spannableStringBuilder.length(), 33);
                        spannableStringBuilder.append('\n');
                    }
                    if (ChatMessageCell.this.drawForwardedName) {
                        int i5 = 0;
                        while (i5 < 2) {
                            if (ChatMessageCell.this.forwardedNameLayout[i5] != null) {
                                spannableStringBuilder.append(ChatMessageCell.this.forwardedNameLayout[i5].getText());
                                spannableStringBuilder.append((CharSequence) (i5 == 0 ? str3 : "\n"));
                            }
                            i5++;
                        }
                    }
                    if (ChatMessageCell.this.documentAttach != null && ChatMessageCell.this.documentAttachType == 1) {
                        String attachFileName = FileLoader.getAttachFileName(ChatMessageCell.this.documentAttach);
                        if (attachFileName.indexOf(46) != -1) {
                            spannableStringBuilder.append((CharSequence) LocaleController.formatString(C3630R.string.AccDescrDocumentType, attachFileName.substring(attachFileName.lastIndexOf(46) + 1).toUpperCase(Locale.ROOT)));
                        }
                    }
                    if (!TextUtils.isEmpty(ChatMessageCell.this.currentMessageObject.messageText)) {
                        spannableStringBuilder.append(ChatMessageCell.this.currentMessageObject.messageText);
                    }
                    if (ChatMessageCell.this.documentAttach == null || !((ChatMessageCell.this.documentAttachType == 1 || ChatMessageCell.this.documentAttachType == 2 || ChatMessageCell.this.documentAttachType == 4) && ChatMessageCell.this.buttonState == 1 && ChatMessageCell.this.loadingProgressLayout != null)) {
                        z3 = z5;
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        boolean isSending = ChatMessageCell.this.currentMessageObject.isSending();
                        z3 = z5;
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString(isSending ? "AccDescrUploadProgress" : "AccDescrDownloadProgress", isSending ? C3630R.string.AccDescrUploadProgress : C3630R.string.AccDescrDownloadProgress, AndroidUtilities.formatFileSize(ChatMessageCell.this.currentMessageObject.loadedFileSize), AndroidUtilities.formatFileSize(ChatMessageCell.this.lastLoadingSizeTotal)));
                    }
                    if (!ChatMessageCell.this.currentMessageObject.isMusic()) {
                        if (ChatMessageCell.this.currentMessageObject.isVoice() || ChatMessageCell.this.isRoundVideo) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) LocaleController.formatDuration((int) ChatMessageCell.this.currentMessageObject.getDuration()));
                            spannableStringBuilder.append((CharSequence) ", ");
                            if (ChatMessageCell.this.currentMessageObject.isContentUnread()) {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgNotPlayed", C3630R.string.AccDescrMsgNotPlayed));
                            } else {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgPlayed", C3630R.string.AccDescrMsgPlayed));
                            }
                        }
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrMusicInfo", C3630R.string.AccDescrMusicInfo, ChatMessageCell.this.currentMessageObject.getMusicAuthor(), ChatMessageCell.this.currentMessageObject.getMusicTitle()));
                        spannableStringBuilder.append((CharSequence) ", ");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatDuration((int) ChatMessageCell.this.currentMessageObject.getDuration()));
                    }
                    if (ChatMessageCell.this.lastPoll != null) {
                        spannableStringBuilder.append((CharSequence) ", ");
                        spannableStringBuilder.append((CharSequence) ChatMessageCell.this.lastPoll.question);
                        spannableStringBuilder.append((CharSequence) ", ");
                        if (!ChatMessageCell.this.pollClosed) {
                            if (ChatMessageCell.this.lastPoll.quiz) {
                                if (ChatMessageCell.this.lastPoll.public_voters) {
                                    string = LocaleController.getString("QuizPoll", C3630R.string.QuizPoll);
                                } else {
                                    string = LocaleController.getString("AnonymousQuizPoll", C3630R.string.AnonymousQuizPoll);
                                }
                            } else if (ChatMessageCell.this.lastPoll.public_voters) {
                                string = LocaleController.getString("PublicPoll", C3630R.string.PublicPoll);
                            } else {
                                string = LocaleController.getString("AnonymousPoll", C3630R.string.AnonymousPoll);
                            }
                        } else {
                            string = LocaleController.getString("FinalResults", C3630R.string.FinalResults);
                        }
                        spannableStringBuilder.append((CharSequence) string);
                    }
                    if (ChatMessageCell.this.documentAttach != null) {
                        if (ChatMessageCell.this.documentAttachType == 4) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) LocaleController.formatDuration((int) ChatMessageCell.this.currentMessageObject.getDuration()));
                        }
                        if (ChatMessageCell.this.buttonState == 0 || ChatMessageCell.this.documentAttachType == 1) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) AndroidUtilities.formatFileSize(ChatMessageCell.this.documentAttach.size));
                        }
                    }
                    if (!ChatMessageCell.this.currentMessageObject.isVoiceTranscriptionOpen()) {
                        if (MessageObject.getMedia(ChatMessageCell.this.currentMessageObject.messageOwner) != null && !TextUtils.isEmpty(ChatMessageCell.this.currentMessageObject.caption)) {
                            spannableStringBuilder.append((CharSequence) "\n");
                            spannableStringBuilder.append(ChatMessageCell.this.currentMessageObject.caption);
                        }
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append(ChatMessageCell.this.currentMessageObject.getVoiceTranscription());
                    }
                    if (ChatMessageCell.this.currentMessageObject.isOut()) {
                        if (!ChatMessageCell.this.currentMessageObject.isSent()) {
                            str4 = str3;
                            if (!ChatMessageCell.this.currentMessageObject.isSending()) {
                                if (ChatMessageCell.this.currentMessageObject.isSendError()) {
                                    spannableStringBuilder.append((CharSequence) "\n");
                                    spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSendingError", C3630R.string.AccDescrMsgSendingError));
                                }
                            } else {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSending", C3630R.string.AccDescrMsgSending));
                                float progress = ChatMessageCell.this.radialProgress.getProgress();
                                if (progress > BitmapDescriptorFactory.HUE_RED) {
                                    spannableStringBuilder.append((CharSequence) Integer.toString(Math.round(progress * 100.0f))).append((CharSequence) "%");
                                }
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) "\n");
                            if (ChatMessageCell.this.currentMessageObject.scheduled) {
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrScheduledDate", C3630R.string.AccDescrScheduledDate, ChatMessageCell.this.currentTimeString));
                                str4 = str3;
                            } else {
                                int i6 = C3630R.string.AccDescrSentDate;
                                StringBuilder sb = new StringBuilder();
                                sb.append(LocaleController.getString("TodayAt", C3630R.string.TodayAt));
                                str4 = str3;
                                sb.append(str4);
                                sb.append((Object) ChatMessageCell.this.currentTimeString);
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrSentDate", i6, sb.toString()));
                                spannableStringBuilder.append((CharSequence) ", ");
                                if (ChatMessageCell.this.currentMessageObject.isUnread()) {
                                    i4 = C3630R.string.AccDescrMsgUnread;
                                    str5 = "AccDescrMsgUnread";
                                } else {
                                    i4 = C3630R.string.AccDescrMsgRead;
                                    str5 = "AccDescrMsgRead";
                                }
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(str5, i4));
                            }
                        }
                    } else {
                        str4 = str3;
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReceivedDate", C3630R.string.AccDescrReceivedDate, LocaleController.getString("TodayAt", C3630R.string.TodayAt) + str4 + ((Object) ChatMessageCell.this.currentTimeString)));
                    }
                    if (ChatMessageCell.this.getRepliesCount() > 0 && !ChatMessageCell.this.hasCommentLayout()) {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfReplies", ChatMessageCell.this.getRepliesCount(), new Object[0]));
                    }
                    if (ChatMessageCell.this.currentMessageObject.messageOwner.reactions != null && ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results != null) {
                        String str6 = "";
                        if (ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.size() == 1) {
                            TLRPC$ReactionCount tLRPC$ReactionCount2 = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.get(0);
                            TLRPC$Reaction tLRPC$Reaction = tLRPC$ReactionCount2.reaction;
                            String str7 = tLRPC$Reaction instanceof TLRPC$TL_reactionEmoji ? ((TLRPC$TL_reactionEmoji) tLRPC$Reaction).emoticon : "";
                            int i7 = tLRPC$ReactionCount2.count;
                            if (i7 == 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                if (ChatMessageCell.this.currentMessageObject.messageOwner.reactions.recent_reactions == null || ChatMessageCell.this.currentMessageObject.messageOwner.reactions.recent_reactions.size() != 1 || (tLRPC$MessagePeerReaction = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.recent_reactions.get(0)) == null) {
                                    z4 = false;
                                } else {
                                    TLRPC$User user = MessagesController.getInstance(ChatMessageCell.this.currentAccount).getUser(Long.valueOf(MessageObject.getPeerId(tLRPC$MessagePeerReaction.peer_id)));
                                    z4 = UserObject.isUserSelf(user);
                                    if (user != null) {
                                        str6 = UserObject.getFirstName(user);
                                    }
                                }
                                if (z4) {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrYouReactedWith", C3630R.string.AccDescrYouReactedWith, str7));
                                } else {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReactedWith", C3630R.string.AccDescrReactedWith, str6, str7));
                                }
                            } else if (i7 > 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfPeopleReactions", tLRPC$ReactionCount2.count, str7));
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString("Reactions", C3630R.string.Reactions)).append((CharSequence) ": ");
                            int size = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                TLRPC$Reaction tLRPC$Reaction2 = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.get(i8).reaction;
                                spannableStringBuilder.append((CharSequence) (tLRPC$Reaction2 instanceof TLRPC$TL_reactionEmoji ? ((TLRPC$TL_reactionEmoji) tLRPC$Reaction2).emoticon : "")).append((CharSequence) str4).append((CharSequence) (tLRPC$ReactionCount.count + ""));
                                if (i8 + 1 < size) {
                                    spannableStringBuilder.append((CharSequence) ", ");
                                }
                            }
                            spannableStringBuilder.append((CharSequence) "\n");
                        }
                    }
                    ChatMessageCell chatMessageCell3 = ChatMessageCell.this;
                    if (!chatMessageCell3.albumMode && (chatMessageCell3.currentMessageObject.messageOwner.flags & 1024) != 0) {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfViews", ChatMessageCell.this.currentMessageObject.messageOwner.views, new Object[0]));
                    }
                    spannableStringBuilder.append((CharSequence) "\n");
                    for (final CharacterStyle characterStyle : (CharacterStyle[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ClickableSpan.class)) {
                        int spanStart = spannableStringBuilder.getSpanStart(characterStyle);
                        int spanEnd = spannableStringBuilder.getSpanEnd(characterStyle);
                        spannableStringBuilder.removeSpan(characterStyle);
                        spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Cells.ChatMessageCell.MessageAccessibilityNodeProvider.1
                            @Override // android.text.style.ClickableSpan
                            public void onClick(View view) {
                                CharacterStyle characterStyle2 = characterStyle;
                                if (!(characterStyle2 instanceof ProfileSpan)) {
                                    if (ChatMessageCell.this.delegate != null) {
                                        ChatMessageCell.this.delegate.didPressUrl(ChatMessageCell.this, characterStyle, false);
                                        return;
                                    }
                                    return;
                                }
                                ((ProfileSpan) characterStyle2).onClick(view);
                            }
                        }, spanStart, spanEnd, 33);
                    }
                    ChatMessageCell chatMessageCell4 = ChatMessageCell.this;
                    chatMessageCell4.accessibilityText = spannableStringBuilder;
                    chatMessageCell4.accessibilityTextUnread = z3;
                    ChatMessageCell.this.accessibilityTextContentUnread = z6;
                    ChatMessageCell.this.accessibilityTextFileSize = j;
                }
                int i9 = Build.VERSION.SDK_INT;
                if (i9 < 24) {
                    obtain.setContentDescription(ChatMessageCell.this.accessibilityText.toString());
                } else {
                    obtain.setText(ChatMessageCell.this.accessibilityText);
                }
                obtain.setEnabled(true);
                if (i9 >= 19 && (collectionItemInfo = obtain.getCollectionItemInfo()) != null) {
                    obtain.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(collectionItemInfo.getRowIndex(), 1, 0, 1, false));
                }
                if (i9 >= 21) {
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3630R.C3633id.acc_action_msg_options, LocaleController.getString("AccActionMessageOptions", C3630R.string.AccActionMessageOptions)));
                    int iconForCurrentState = ChatMessageCell.this.getIconForCurrentState();
                    if (iconForCurrentState == 0) {
                        string2 = LocaleController.getString("AccActionPlay", C3630R.string.AccActionPlay);
                    } else if (iconForCurrentState == 1) {
                        string2 = LocaleController.getString("AccActionPause", C3630R.string.AccActionPause);
                    } else if (iconForCurrentState == 2) {
                        string2 = LocaleController.getString("AccActionDownload", C3630R.string.AccActionDownload);
                    } else if (iconForCurrentState == 3) {
                        string2 = LocaleController.getString("AccActionCancelDownload", C3630R.string.AccActionCancelDownload);
                    } else if (iconForCurrentState == 5 || iconForCurrentState == 100) {
                        string2 = LocaleController.getString("AccActionOpenFile", C3630R.string.AccActionOpenFile);
                    } else {
                        string2 = ChatMessageCell.this.currentMessageObject.type == 16 ? LocaleController.getString("CallAgain", C3630R.string.CallAgain) : null;
                    }
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, string2));
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccActionEnterSelectionMode", C3630R.string.AccActionEnterSelectionMode)));
                    if (ChatMessageCell.this.getMiniIconForCurrentState() == 2) {
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3630R.C3633id.acc_action_small_button, LocaleController.getString("AccActionDownload", C3630R.string.AccActionDownload)));
                    }
                } else {
                    obtain.addAction(16);
                    obtain.addAction(32);
                }
                if ((ChatMessageCell.this.currentMessageObject.isVoice() || ChatMessageCell.this.currentMessageObject.isRoundVideo() || ChatMessageCell.this.currentMessageObject.isMusic()) && MediaController.getInstance().isPlayingMessage(ChatMessageCell.this.currentMessageObject)) {
                    ChatMessageCell.this.seekBarAccessibilityDelegate.onInitializeAccessibilityNodeInfoInternal(obtain);
                }
                if (ChatMessageCell.this.useTranscribeButton && ChatMessageCell.this.transcribeButton != null) {
                    obtain.addChild(ChatMessageCell.this, 493);
                }
                if (i9 < 24) {
                    ChatMessageCell chatMessageCell5 = ChatMessageCell.this;
                    if (chatMessageCell5.isChat && chatMessageCell5.currentUser != null && !ChatMessageCell.this.currentMessageObject.isOut()) {
                        obtain.addChild(ChatMessageCell.this, DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
                    }
                    if (ChatMessageCell.this.currentMessageObject.messageText instanceof Spannable) {
                        Spannable spannable = (Spannable) ChatMessageCell.this.currentMessageObject.messageText;
                        int i10 = 0;
                        for (CharacterStyle characterStyle2 : (CharacterStyle[]) spannable.getSpans(0, spannable.length(), ClickableSpan.class)) {
                            obtain.addChild(ChatMessageCell.this, i10 + 2000);
                            i10++;
                        }
                    }
                    if ((ChatMessageCell.this.currentMessageObject.caption instanceof Spannable) && ChatMessageCell.this.captionLayout != null) {
                        Spannable spannable2 = (Spannable) ChatMessageCell.this.currentMessageObject.caption;
                        int i11 = 0;
                        for (CharacterStyle characterStyle3 : (CharacterStyle[]) spannable2.getSpans(0, spannable2.length(), ClickableSpan.class)) {
                            obtain.addChild(ChatMessageCell.this, i11 + AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
                            i11++;
                        }
                    }
                }
                Iterator it = ChatMessageCell.this.botButtons.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    BotButton botButton = (BotButton) it.next();
                    obtain.addChild(ChatMessageCell.this, i12 + 1000);
                    i12++;
                }
                if (ChatMessageCell.this.hintButtonVisible && ChatMessageCell.this.pollHintX != -1 && ChatMessageCell.this.currentMessageObject.isPoll()) {
                    obtain.addChild(ChatMessageCell.this, 495);
                }
                Iterator it2 = ChatMessageCell.this.pollButtons.iterator();
                int i13 = 0;
                while (it2.hasNext()) {
                    PollButton pollButton = (PollButton) it2.next();
                    obtain.addChild(ChatMessageCell.this, i13 + 500);
                    i13++;
                }
                if (ChatMessageCell.this.drawAdditionalSideButton) {
                    obtain.addChild(ChatMessageCell.this, 493);
                }
                if (ChatMessageCell.this.drawInstantView && !ChatMessageCell.this.instantButtonRect.isEmpty()) {
                    obtain.addChild(ChatMessageCell.this, 499);
                }
                if (ChatMessageCell.this.commentLayout != null) {
                    obtain.addChild(ChatMessageCell.this, 496);
                }
                if (ChatMessageCell.this.drawSideButton == 1 || ChatMessageCell.this.drawSideButton == 2) {
                    obtain.addChild(ChatMessageCell.this, 498);
                }
                ChatMessageCell chatMessageCell6 = ChatMessageCell.this;
                if (chatMessageCell6.replyNameLayout != null) {
                    obtain.addChild(chatMessageCell6, 497);
                }
                if (ChatMessageCell.this.forwardedNameLayout[0] != null && ChatMessageCell.this.forwardedNameLayout[1] != null) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3630R.C3633id.acc_action_open_forwarded_origin, LocaleController.getString("AccActionOpenForwardedOrigin", C3630R.string.AccActionOpenForwardedOrigin)));
                    } else {
                        obtain.addChild(ChatMessageCell.this, 494);
                    }
                }
                if (ChatMessageCell.this.drawSelectionBackground || ChatMessageCell.this.getBackground() != null) {
                    obtain.setSelected(true);
                }
                return obtain;
            }
            AccessibilityNodeInfo obtain2 = AccessibilityNodeInfo.obtain();
            obtain2.setSource(ChatMessageCell.this, i);
            obtain2.setParent(ChatMessageCell.this);
            obtain2.setPackageName(ChatMessageCell.this.getContext().getPackageName());
            if (i == 493) {
                obtain2.setClassName("android.widget.ImageButton");
                obtain2.setEnabled(true);
                obtain2.setContentDescription(LocaleController.getInternalString(C3630R.string.chat_long_action_translate));
                obtain2.addAction(16);
                this.rect.set((int) ChatMessageCell.this.additionalSideButtonStartX, (int) ChatMessageCell.this.additionalSideButtonStartY, ((int) ChatMessageCell.this.additionalSideButtonStartX) + AndroidUtilities.m102dp(40), ((int) ChatMessageCell.this.additionalSideButtonStartY) + AndroidUtilities.m102dp(32));
                obtain2.setBoundsInParent(this.rect);
                if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                    ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                }
                z = true;
                this.rect.offset(iArr[0], iArr[1]);
                obtain2.setBoundsInScreen(this.rect);
                obtain2.setClickable(true);
            } else {
                if (i == 5000) {
                    if (ChatMessageCell.this.currentUser == null) {
                        return null;
                    }
                    obtain2.setText(UserObject.getUserName(ChatMessageCell.this.currentUser));
                    this.rect.set((int) ChatMessageCell.this.nameX, (int) ChatMessageCell.this.nameY, (int) (ChatMessageCell.this.nameX + ChatMessageCell.this.nameWidth), (int) (ChatMessageCell.this.nameY + (ChatMessageCell.this.nameLayout != null ? ChatMessageCell.this.nameLayout.getHeight() : 10)));
                    obtain2.setBoundsInParent(this.rect);
                    if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                        ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                    }
                    this.rect.offset(iArr[0], iArr[1]);
                    obtain2.setBoundsInScreen(this.rect);
                    obtain2.setClassName("android.widget.TextView");
                    obtain2.setEnabled(true);
                    obtain2.setClickable(true);
                    obtain2.setLongClickable(true);
                    obtain2.addAction(16);
                    obtain2.addAction(32);
                } else if (i >= 3000) {
                    if (!(ChatMessageCell.this.currentMessageObject.caption instanceof Spannable) || ChatMessageCell.this.captionLayout == null) {
                        return null;
                    }
                    Spannable spannable3 = (Spannable) ChatMessageCell.this.currentMessageObject.caption;
                    ClickableSpan linkById = getLinkById(i, true);
                    if (linkById == null) {
                        return null;
                    }
                    int[] realSpanStartAndEnd = ChatMessageCell.this.getRealSpanStartAndEnd(spannable3, linkById);
                    obtain2.setText(spannable3.subSequence(realSpanStartAndEnd[0], realSpanStartAndEnd[1]).toString());
                    ChatMessageCell.this.captionLayout.getText().length();
                    ChatMessageCell.this.captionLayout.getSelectionPath(realSpanStartAndEnd[0], realSpanStartAndEnd[1], this.linkPath);
                    this.linkPath.computeBounds(this.rectF, true);
                    Rect rect = this.rect;
                    RectF rectF = this.rectF;
                    rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                    this.rect.offset((int) ChatMessageCell.this.captionX, (int) ChatMessageCell.this.captionY);
                    obtain2.setBoundsInParent(this.rect);
                    if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                        ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                    }
                    this.rect.offset(iArr[0], iArr[1]);
                    obtain2.setBoundsInScreen(this.rect);
                    obtain2.setClassName("android.widget.TextView");
                    obtain2.setEnabled(true);
                    obtain2.setClickable(true);
                    obtain2.setLongClickable(true);
                    obtain2.addAction(16);
                    obtain2.addAction(32);
                } else if (i >= 2000) {
                    if (!(ChatMessageCell.this.currentMessageObject.messageText instanceof Spannable)) {
                        return null;
                    }
                    Spannable spannable4 = (Spannable) ChatMessageCell.this.currentMessageObject.messageText;
                    ClickableSpan linkById2 = getLinkById(i, false);
                    if (linkById2 == null) {
                        return null;
                    }
                    int[] realSpanStartAndEnd2 = ChatMessageCell.this.getRealSpanStartAndEnd(spannable4, linkById2);
                    obtain2.setText(spannable4.subSequence(realSpanStartAndEnd2[0], realSpanStartAndEnd2[1]).toString());
                    Iterator<MessageObject.TextLayoutBlock> it3 = ChatMessageCell.this.currentMessageObject.textLayoutBlocks.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z2 = true;
                            break;
                        }
                        MessageObject.TextLayoutBlock next = it3.next();
                        int length = next.textLayout.getText().length();
                        int i14 = next.charactersOffset;
                        if (i14 <= realSpanStartAndEnd2[0] && length + i14 >= realSpanStartAndEnd2[1]) {
                            next.textLayout.getSelectionPath(realSpanStartAndEnd2[0] - i14, realSpanStartAndEnd2[1] - i14, this.linkPath);
                            this.linkPath.computeBounds(this.rectF, true);
                            Rect rect2 = this.rect;
                            RectF rectF2 = this.rectF;
                            rect2.set((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                            this.rect.offset(0, (int) next.textYOffset);
                            this.rect.offset(ChatMessageCell.this.textX, ChatMessageCell.this.textY);
                            obtain2.setBoundsInParent(this.rect);
                            if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                                ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                            }
                            z2 = true;
                            this.rect.offset(iArr[0], iArr[1]);
                            obtain2.setBoundsInScreen(this.rect);
                        }
                    }
                    obtain2.setClassName("android.widget.TextView");
                    obtain2.setEnabled(z2);
                    obtain2.setClickable(z2);
                    obtain2.setLongClickable(z2);
                    obtain2.addAction(16);
                    obtain2.addAction(32);
                } else if (i >= 1000) {
                    int i15 = i - 1000;
                    if (i15 >= ChatMessageCell.this.botButtons.size()) {
                        return null;
                    }
                    BotButton botButton2 = (BotButton) ChatMessageCell.this.botButtons.get(i15);
                    obtain2.setText(botButton2.title.getText());
                    obtain2.setClassName("android.widget.Button");
                    obtain2.setEnabled(true);
                    obtain2.setClickable(true);
                    obtain2.addAction(16);
                    this.rect.set(botButton2.f1787x, botButton2.f1788y, botButton2.f1787x + botButton2.width, botButton2.f1788y + botButton2.height);
                    this.rect.offset(ChatMessageCell.this.currentMessageObject.isOutOwner() ? (ChatMessageCell.this.getMeasuredWidth() - ChatMessageCell.this.widthForButtons) - AndroidUtilities.m102dp(10) : ChatMessageCell.this.backgroundDrawableLeft + AndroidUtilities.m102dp(ChatMessageCell.this.mediaBackground ? 1 : 7), ChatMessageCell.this.layoutHeight);
                    obtain2.setBoundsInParent(this.rect);
                    if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                        ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                    }
                    this.rect.offset(iArr[0], iArr[1]);
                    obtain2.setBoundsInScreen(this.rect);
                } else if (i >= 500) {
                    int i16 = i - 500;
                    if (i16 >= ChatMessageCell.this.pollButtons.size()) {
                        return null;
                    }
                    PollButton pollButton2 = (PollButton) ChatMessageCell.this.pollButtons.get(i16);
                    StringBuilder sb2 = new StringBuilder(pollButton2.title.getText());
                    if (ChatMessageCell.this.pollVoted) {
                        obtain2.setSelected(pollButton2.chosen);
                        sb2.append(", ");
                        sb2.append(pollButton2.percent);
                        sb2.append("%");
                        if (ChatMessageCell.this.lastPoll != null && ChatMessageCell.this.lastPoll.quiz && (pollButton2.chosen || pollButton2.correct)) {
                            sb2.append(", ");
                            if (pollButton2.correct) {
                                i3 = C3630R.string.AccDescrQuizCorrectAnswer;
                                str2 = "AccDescrQuizCorrectAnswer";
                            } else {
                                i3 = C3630R.string.AccDescrQuizIncorrectAnswer;
                                str2 = "AccDescrQuizIncorrectAnswer";
                            }
                            sb2.append(LocaleController.getString(str2, i3));
                        }
                    } else {
                        obtain2.setClassName("android.widget.Button");
                    }
                    obtain2.setText(sb2);
                    obtain2.setEnabled(true);
                    obtain2.addAction(16);
                    int i17 = pollButton2.f1790y + ChatMessageCell.this.namesOffset;
                    int m102dp = ChatMessageCell.this.backgroundWidth - AndroidUtilities.m102dp(76);
                    Rect rect3 = this.rect;
                    int i18 = pollButton2.f1789x;
                    rect3.set(i18, i17, m102dp + i18, pollButton2.height + i17);
                    obtain2.setBoundsInParent(this.rect);
                    if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                        ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                    }
                    z = true;
                    this.rect.offset(iArr[0], iArr[1]);
                    obtain2.setBoundsInScreen(this.rect);
                    obtain2.setClickable(true);
                } else {
                    z = true;
                    if (i == 495) {
                        obtain2.setClassName("android.widget.Button");
                        obtain2.setEnabled(true);
                        obtain2.setText(LocaleController.getString("AccDescrQuizExplanation", C3630R.string.AccDescrQuizExplanation));
                        obtain2.addAction(16);
                        this.rect.set(ChatMessageCell.this.pollHintX - AndroidUtilities.m102dp(8), ChatMessageCell.this.pollHintY - AndroidUtilities.m102dp(8), ChatMessageCell.this.pollHintX + AndroidUtilities.m102dp(32), ChatMessageCell.this.pollHintY + AndroidUtilities.m102dp(32));
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 499) {
                        obtain2.setClassName("android.widget.Button");
                        obtain2.setEnabled(true);
                        if (ChatMessageCell.this.instantViewLayout != null) {
                            obtain2.setText(ChatMessageCell.this.instantViewLayout.getText());
                        }
                        obtain2.addAction(16);
                        ChatMessageCell.this.instantButtonRect.round(this.rect);
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 498) {
                        obtain2.setClassName("android.widget.ImageButton");
                        obtain2.setEnabled(true);
                        ChatMessageCell chatMessageCell7 = ChatMessageCell.this;
                        if (chatMessageCell7.isOpenChatByShare(chatMessageCell7.currentMessageObject)) {
                            obtain2.setContentDescription(LocaleController.getString("AccDescrOpenChat", C3630R.string.AccDescrOpenChat));
                        } else {
                            obtain2.setContentDescription(LocaleController.getString("ShareFile", C3630R.string.ShareFile));
                        }
                        obtain2.addAction(16);
                        this.rect.set((int) ChatMessageCell.this.sideStartX, (int) ChatMessageCell.this.sideStartY, ((int) ChatMessageCell.this.sideStartX) + AndroidUtilities.m102dp(40), ((int) ChatMessageCell.this.sideStartY) + AndroidUtilities.m102dp(32));
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 497) {
                        obtain2.setEnabled(true);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(LocaleController.getString("Reply", C3630R.string.Reply));
                        sb3.append(", ");
                        StaticLayout staticLayout = ChatMessageCell.this.replyNameLayout;
                        if (staticLayout != null) {
                            sb3.append(staticLayout.getText());
                            sb3.append(", ");
                        }
                        StaticLayout staticLayout2 = ChatMessageCell.this.replyTextLayout;
                        if (staticLayout2 != null) {
                            sb3.append(staticLayout2.getText());
                        }
                        obtain2.setContentDescription(sb3.toString());
                        obtain2.addAction(16);
                        Rect rect4 = this.rect;
                        ChatMessageCell chatMessageCell8 = ChatMessageCell.this;
                        int i19 = chatMessageCell8.replyStartX;
                        ChatMessageCell chatMessageCell9 = ChatMessageCell.this;
                        rect4.set(i19, chatMessageCell8.replyStartY, Math.max(chatMessageCell8.replyNameWidth, ChatMessageCell.this.replyTextWidth) + i19, chatMessageCell9.replyStartY + ((int) chatMessageCell9.replyHeight));
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 494) {
                        obtain2.setEnabled(true);
                        StringBuilder sb4 = new StringBuilder();
                        if (ChatMessageCell.this.forwardedNameLayout[0] != null && ChatMessageCell.this.forwardedNameLayout[1] != null) {
                            int i20 = 0;
                            while (i20 < 2) {
                                sb4.append(ChatMessageCell.this.forwardedNameLayout[i20].getText());
                                sb4.append(i20 == 0 ? " " : "\n");
                                i20++;
                            }
                        }
                        obtain2.setContentDescription(sb4.toString());
                        obtain2.addAction(16);
                        int min = (int) Math.min(ChatMessageCell.this.forwardNameX - ChatMessageCell.this.forwardNameOffsetX[0], ChatMessageCell.this.forwardNameX - ChatMessageCell.this.forwardNameOffsetX[1]);
                        this.rect.set(min, ChatMessageCell.this.forwardNameY, ChatMessageCell.this.forwardedNameWidth + min, ChatMessageCell.this.forwardNameY + ChatMessageCell.this.forwardHeight);
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 496) {
                        obtain2.setClassName("android.widget.Button");
                        obtain2.setEnabled(true);
                        int repliesCount = ChatMessageCell.this.getRepliesCount();
                        if (ChatMessageCell.this.currentMessageObject != null && !ChatMessageCell.this.currentMessageObject.shouldDrawWithoutBackground() && !ChatMessageCell.this.currentMessageObject.isAnimatedEmoji()) {
                            if (ChatMessageCell.this.isRepliesChat) {
                                formatShortNumber = LocaleController.getString("ViewInChat", C3630R.string.ViewInChat);
                            } else {
                                formatShortNumber = repliesCount == 0 ? LocaleController.getString("LeaveAComment", C3630R.string.LeaveAComment) : LocaleController.formatPluralString("CommentsCount", repliesCount, new Object[0]);
                            }
                        } else {
                            formatShortNumber = (ChatMessageCell.this.isRepliesChat || repliesCount <= 0) ? null : LocaleController.formatShortNumber(repliesCount, null);
                        }
                        if (formatShortNumber != null) {
                            obtain2.setText(formatShortNumber);
                        }
                        obtain2.addAction(16);
                        this.rect.set(ChatMessageCell.this.commentButtonRect);
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 493) {
                        obtain2.setClassName("android.widget.Button");
                        obtain2.setEnabled(true);
                        if (ChatMessageCell.this.currentMessageObject.isVoiceTranscriptionOpen()) {
                            i2 = C3630R.string.AccActionCloseTranscription;
                            str = "AccActionCloseTranscription";
                        } else {
                            i2 = C3630R.string.AccActionOpenTranscription;
                            str = "AccActionOpenTranscription";
                        }
                        obtain2.setText(LocaleController.getString(str, i2));
                        obtain2.addAction(16);
                        if (ChatMessageCell.this.transcribeButton != null) {
                            this.rect.set((int) ChatMessageCell.this.transcribeX, (int) ChatMessageCell.this.transcribeY, (int) (ChatMessageCell.this.transcribeX + ChatMessageCell.this.transcribeButton.width()), (int) (ChatMessageCell.this.transcribeY + ChatMessageCell.this.transcribeButton.height()));
                        }
                        obtain2.setBoundsInParent(this.rect);
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    }
                }
                z = true;
            }
            obtain2.setFocusable(z);
            obtain2.setVisibleToUser(z);
            return obtain2;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            if (i == -1) {
                ChatMessageCell.this.performAccessibilityAction(i2, bundle);
            } else if (i2 == 64) {
                ChatMessageCell.this.sendAccessibilityEventForVirtualView(i, LiteMode.FLAG_CHAT_SCALE);
            } else {
                if (i2 == 16) {
                    if (i == 493) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCell.this.delegate.didPressAdditionalSideButton(ChatMessageCell.this);
                        }
                    } else if (i == 5000) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCellDelegate chatMessageCellDelegate = ChatMessageCell.this.delegate;
                            ChatMessageCell chatMessageCell = ChatMessageCell.this;
                            chatMessageCellDelegate.didPressUserAvatar(chatMessageCell, chatMessageCell.currentUser, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        }
                    } else if (i >= 3000) {
                        ClickableSpan linkById = getLinkById(i, true);
                        if (linkById != null) {
                            ChatMessageCell.this.delegate.didPressUrl(ChatMessageCell.this, linkById, false);
                            ChatMessageCell.this.sendAccessibilityEventForVirtualView(i, 1);
                        }
                    } else if (i >= 2000) {
                        ClickableSpan linkById2 = getLinkById(i, false);
                        if (linkById2 != null) {
                            ChatMessageCell.this.delegate.didPressUrl(ChatMessageCell.this, linkById2, false);
                            ChatMessageCell.this.sendAccessibilityEventForVirtualView(i, 1);
                        }
                    } else if (i >= 1000) {
                        int i3 = i - 1000;
                        if (i3 >= ChatMessageCell.this.botButtons.size()) {
                            return false;
                        }
                        BotButton botButton = (BotButton) ChatMessageCell.this.botButtons.get(i3);
                        if (ChatMessageCell.this.delegate != null && botButton.button != null) {
                            ChatMessageCell.this.delegate.didPressBotButton(ChatMessageCell.this, botButton.button);
                        }
                        ChatMessageCell.this.sendAccessibilityEventForVirtualView(i, 1);
                    } else if (i >= 500) {
                        int i4 = i - 500;
                        if (i4 >= ChatMessageCell.this.pollButtons.size()) {
                            return false;
                        }
                        PollButton pollButton = (PollButton) ChatMessageCell.this.pollButtons.get(i4);
                        if (ChatMessageCell.this.delegate != null) {
                            ArrayList<TLRPC$TL_pollAnswer> arrayList = new ArrayList<>();
                            arrayList.add(pollButton.answer);
                            ChatMessageCell.this.delegate.didPressVoteButtons(ChatMessageCell.this, arrayList, -1, 0, 0);
                        }
                        ChatMessageCell.this.sendAccessibilityEventForVirtualView(i, 1);
                    } else if (i == 495) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCell.this.delegate.didPressHint(ChatMessageCell.this, 0);
                        }
                    } else if (i == 499) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCellDelegate chatMessageCellDelegate2 = ChatMessageCell.this.delegate;
                            ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
                            chatMessageCellDelegate2.didPressInstantButton(chatMessageCell2, chatMessageCell2.drawInstantViewType);
                        }
                    } else if (i == 498) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCell.this.delegate.didPressSideButton(ChatMessageCell.this);
                        }
                    } else if (i == 497) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCell chatMessageCell3 = ChatMessageCell.this;
                            if ((!chatMessageCell3.isThreadChat || chatMessageCell3.currentMessageObject.getReplyTopMsgId() != 0) && ChatMessageCell.this.currentMessageObject.hasValidReplyMessageObject()) {
                                ChatMessageCellDelegate chatMessageCellDelegate3 = ChatMessageCell.this.delegate;
                                ChatMessageCell chatMessageCell4 = ChatMessageCell.this;
                                chatMessageCellDelegate3.didPressReplyMessage(chatMessageCell4, chatMessageCell4.currentMessageObject.getReplyMsgId());
                            }
                        }
                    } else if (i == 494) {
                        if (ChatMessageCell.this.delegate != null) {
                            if (ChatMessageCell.this.currentForwardChannel != null) {
                                ChatMessageCellDelegate chatMessageCellDelegate4 = ChatMessageCell.this.delegate;
                                ChatMessageCell chatMessageCell5 = ChatMessageCell.this;
                                chatMessageCellDelegate4.didPressChannelAvatar(chatMessageCell5, chatMessageCell5.currentForwardChannel, ChatMessageCell.this.currentMessageObject.messageOwner.fwd_from.channel_post, ChatMessageCell.this.lastTouchX, ChatMessageCell.this.lastTouchY);
                            } else if (ChatMessageCell.this.currentForwardUser != null) {
                                ChatMessageCellDelegate chatMessageCellDelegate5 = ChatMessageCell.this.delegate;
                                ChatMessageCell chatMessageCell6 = ChatMessageCell.this;
                                chatMessageCellDelegate5.didPressUserAvatar(chatMessageCell6, chatMessageCell6.currentForwardUser, ChatMessageCell.this.lastTouchX, ChatMessageCell.this.lastTouchY);
                            } else if (ChatMessageCell.this.currentForwardName != null) {
                                ChatMessageCell.this.delegate.didPressHiddenForward(ChatMessageCell.this);
                            }
                        }
                    } else if (i == 496) {
                        if (ChatMessageCell.this.delegate != null) {
                            ChatMessageCell chatMessageCell7 = ChatMessageCell.this;
                            if (chatMessageCell7.isRepliesChat) {
                                chatMessageCell7.delegate.didPressSideButton(ChatMessageCell.this);
                            } else {
                                chatMessageCell7.delegate.didPressCommentButton(ChatMessageCell.this);
                            }
                        }
                    } else if (i == 493 && ChatMessageCell.this.transcribeButton != null) {
                        ChatMessageCell.this.transcribeButton.onTap();
                    }
                } else if (i2 == 32) {
                    ClickableSpan linkById3 = getLinkById(i, i >= 3000);
                    if (linkById3 != null) {
                        ChatMessageCell.this.delegate.didPressUrl(ChatMessageCell.this, linkById3, true);
                        ChatMessageCell.this.sendAccessibilityEventForVirtualView(i, 2);
                    }
                }
            }
            return true;
        }

        private ClickableSpan getLinkById(int i, boolean z) {
            if (i == 5000) {
                return null;
            }
            if (z) {
                int i2 = i - 3000;
                if (!(ChatMessageCell.this.currentMessageObject.caption instanceof Spannable) || i2 < 0) {
                    return null;
                }
                Spannable spannable = (Spannable) ChatMessageCell.this.currentMessageObject.caption;
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(0, spannable.length(), ClickableSpan.class);
                if (clickableSpanArr.length <= i2) {
                    return null;
                }
                return clickableSpanArr[i2];
            }
            int i3 = i - 2000;
            if (!(ChatMessageCell.this.currentMessageObject.messageText instanceof Spannable) || i3 < 0) {
                return null;
            }
            Spannable spannable2 = (Spannable) ChatMessageCell.this.currentMessageObject.messageText;
            ClickableSpan[] clickableSpanArr2 = (ClickableSpan[]) spannable2.getSpans(0, spannable2.length(), ClickableSpan.class);
            if (clickableSpanArr2.length <= i3) {
                return null;
            }
            return clickableSpanArr2[i3];
        }
    }

    public void setImageCoords(float f, float f2, float f3, float f4) {
        this.photoImage.setImageCoords(f, f2, f3, f4);
        int i = this.documentAttachType;
        if (i == 4 || i == 2) {
            this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m102dp(8));
            int imageY = (int) (this.photoImage.getImageY() + AndroidUtilities.m102dp(8));
            this.videoButtonY = imageY;
            RadialProgress2 radialProgress2 = this.videoRadialProgress;
            int i2 = this.videoButtonX;
            radialProgress2.setProgressRect(i2, imageY, AndroidUtilities.m102dp(24) + i2, this.videoButtonY + AndroidUtilities.m102dp(24));
            this.buttonX = (int) (f + ((this.photoImage.getImageWidth() - AndroidUtilities.m102dp(48)) / 2.0f));
            int imageY2 = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m102dp(48)) / 2.0f));
            this.buttonY = imageY2;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i3 = this.buttonX;
            radialProgress22.setProgressRect(i3, imageY2, AndroidUtilities.m102dp(48) + i3, this.buttonY + AndroidUtilities.m102dp(48));
        }
    }

    @Override // android.view.View
    public float getAlpha() {
        if (this.ALPHA_PROPERTY_WORKAROUND) {
            return this.alphaInternal;
        }
        return super.getAlpha();
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        if ((f == 1.0f) != (getAlpha() == 1.0f)) {
            invalidate();
        }
        if (this.ALPHA_PROPERTY_WORKAROUND) {
            this.alphaInternal = f;
            invalidate();
        } else {
            super.setAlpha(f);
        }
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        if ((groupedMessagePosition != null && (groupedMessagePosition.minY != 0 || groupedMessagePosition.minX != 0)) || ((this.enterTransitionInProgress && !this.currentMessageObject.isVoice()) || this.replyNameLayout == null || this.replyTextLayout == null)) {
            MessageObject.GroupedMessagePosition groupedMessagePosition2 = this.currentPosition;
            if (groupedMessagePosition2 != null) {
                int i = groupedMessagePosition2.flags;
                if ((i & 8) == 0 || (i & 1) == 0) {
                    return;
                }
            }
            if (this.reactionsLayoutInBubble.isSmall) {
                return;
            }
        }
        invalidate();
    }

    public int getCurrentBackgroundLeft() {
        Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
        if (messageDrawable == null) {
            return 0;
        }
        int i = messageDrawable.getBounds().left;
        if (this.currentMessageObject.isOutOwner() || this.transitionParams.changePinnedBottomProgress == 1.0f) {
            return i;
        }
        boolean z = this.isRoundVideo;
        if ((z || !this.mediaBackground) && !this.drawPinnedBottom) {
            if (z) {
                return (int) (i - (AndroidUtilities.m102dp(6) * getVideoTranscriptionProgress()));
            }
            return i - AndroidUtilities.m102dp(6);
        }
        return i;
    }

    public int getCurrentBackgroundRight() {
        Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
        if (messageDrawable == null) {
            return getWidth();
        }
        int i = messageDrawable.getBounds().right;
        if (!this.currentMessageObject.isOutOwner() || this.transitionParams.changePinnedBottomProgress == 1.0f) {
            return i;
        }
        boolean z = this.isRoundVideo;
        if ((z || !this.mediaBackground) && !this.drawPinnedBottom) {
            if (z) {
                return (int) (i + (AndroidUtilities.m102dp(6) * getVideoTranscriptionProgress()));
            }
            return i + AndroidUtilities.m102dp(6);
        }
        return i;
    }

    public TransitionParams getTransitionParams() {
        return this.transitionParams;
    }

    public int getTopMediaOffset() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.type != 14) {
            return 0;
        }
        return this.mediaOffsetY + this.namesOffset;
    }

    public int getTextX() {
        return this.textX;
    }

    public int getTextY() {
        return this.textY;
    }

    public boolean isPlayingRound() {
        return this.isRoundVideo && this.isPlayingRound;
    }

    public int getParentWidth() {
        int i;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            messageObject = this.messageObjectToSet;
        }
        return (messageObject == null || !messageObject.preview || (i = this.parentWidth) <= 0) ? AndroidUtilities.displaySize.x : i;
    }

    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$TransitionParams */
    /* loaded from: classes5.dex */
    public class TransitionParams {
        public boolean animateBackgroundBoundsInner;
        boolean animateBotButtonsChanged;
        private boolean animateButton;
        public boolean animateChange;
        private int animateCommentArrowX;
        private boolean animateCommentDrawUnread;
        private int animateCommentUnreadX;
        private float animateCommentX;
        private boolean animateComments;
        private StaticLayout animateCommentsLayout;
        public boolean animateDrawBackground;
        private boolean animateDrawCommentNumber;
        public boolean animateDrawingTimeAlpha;
        private boolean animateEditedEnter;
        private StaticLayout animateEditedLayout;
        private int animateEditedWidthDiff;
        int animateForwardNameWidth;
        float animateForwardNameX;
        public boolean animateForwardedLayout;
        public int animateForwardedNamesOffset;
        private float animateFromButtonX;
        private float animateFromButtonY;
        public float animateFromReplyY;
        public float animateFromRoundVideoDotY;
        public float animateFromTextY;
        public int animateFromTimeX;
        public float animateFromTimeXPinned;
        private float animateFromTimeXReplies;
        private float animateFromTimeXViews;
        public boolean animateLocationIsExpired;
        boolean animateMessageText;
        private float animateNameX;
        private AnimatedEmojiSpan.EmojiGroupedSpans animateOutAnimateEmoji;
        private AnimatedEmojiSpan.EmojiGroupedSpans animateOutAnimateEmojiReply;
        private StaticLayout animateOutCaptionLayout;
        private ArrayList<MessageObject.TextLayoutBlock> animateOutTextBlocks;
        private float animateOutTextXOffset;
        private boolean animatePinned;
        public boolean animatePlayingRound;
        public boolean animateRadius;
        boolean animateReplaceCaptionLayout;
        private boolean animateReplies;
        private StaticLayout animateRepliesLayout;
        private StaticLayout animateReplyTextLayout;
        public float animateReplyTextOffset;
        public boolean animateRoundVideoDotY;
        private boolean animateShouldDrawMenuDrawable;
        private boolean animateShouldDrawTimeOnMedia;
        private boolean animateSign;
        public boolean animateText;
        private StaticLayout animateTimeLayout;
        private int animateTimeWidth;
        public float animateToImageH;
        public float animateToImageW;
        public float animateToImageX;
        public float animateToImageY;
        public int[] animateToRadius;
        private int animateTotalCommentWidth;
        public boolean animateUseTranscribeButton;
        private StaticLayout animateViewsLayout;
        public float captionFromX;
        public float captionFromY;
        public float deltaBottom;
        public float deltaLeft;
        public float deltaRight;
        public float deltaTop;
        public boolean drawPinnedBottomBackground;
        public boolean ignoreAlpha;
        public boolean imageChangeBoundsTransition;
        public int lastBackgroundLeft;
        public int lastBackgroundRight;
        private float lastButtonX;
        private float lastButtonY;
        private int lastCommentArrowX;
        private boolean lastCommentDrawUnread;
        private StaticLayout lastCommentLayout;
        private int lastCommentUnreadX;
        private float lastCommentX;
        private int lastCommentsCount;
        public boolean lastDrawBackground;
        private boolean lastDrawCommentNumber;
        public StaticLayout lastDrawDocTitleLayout;
        public StaticLayout lastDrawInfoLayout;
        public float lastDrawLocationExpireProgress;
        public String lastDrawLocationExpireText;
        public float lastDrawReplyY;
        public float lastDrawRoundVideoDotY;
        public boolean lastDrawTime;
        private StaticLayout lastDrawingCaptionLayout;
        public float lastDrawingCaptionX;
        public float lastDrawingCaptionY;
        private boolean lastDrawingEdited;
        public float lastDrawingImageH;
        public float lastDrawingImageW;
        public float lastDrawingImageX;
        public float lastDrawingImageY;
        private ArrayList<MessageObject.TextLayoutBlock> lastDrawingTextBlocks;
        public float lastDrawingTextY;
        public boolean lastDrawnForwardedName;
        public StaticLayout lastDrawnReplyTextLayout;
        int lastForwardNameWidth;
        float lastForwardNameX;
        public int lastForwardedNamesOffset;
        private boolean lastIsPinned;
        private boolean lastIsPlayingRound;
        public boolean lastLocatinIsExpired;
        private int lastRepliesCount;
        private StaticLayout lastRepliesLayout;
        public int lastReplyTextXOffset;
        private boolean lastShouldDrawMenuDrawable;
        private boolean lastShouldDrawTimeOnMedia;
        private String lastSignMessage;
        public float lastTextXOffset;
        private StaticLayout lastTimeLayout;
        private int lastTimeWidth;
        public int lastTimeX;
        public float lastTimeXPinned;
        private float lastTimeXReplies;
        private float lastTimeXViews;
        public int lastTopOffset;
        private int lastTotalCommentWidth;
        public boolean lastUseTranscribeButton;
        private int lastViewsCount;
        private StaticLayout lastViewsLayout;
        public boolean messageEntering;
        private boolean moveCaption;
        public boolean shouldAnimateTimeX;
        public float toDeltaLeft;
        public float toDeltaRight;
        public boolean transformGroupToSingleMessage;
        public boolean updatePhotoImageX;
        public boolean wasDraw;
        public int[] imageRoundRadius = new int[4];
        public float captionEnterProgress = 1.0f;
        public float changePinnedBottomProgress = 1.0f;
        public Rect lastDrawingBackgroundRect = new Rect();
        public float animateChangeProgress = 1.0f;
        private ArrayList<BotButton> lastDrawBotButtons = new ArrayList<>();
        private ArrayList<BotButton> transitionBotButtons = new ArrayList<>();
        public int lastStatusDrawableParams = -1;
        public StaticLayout[] lastDrawnForwardedNameLayout = new StaticLayout[2];
        public StaticLayout[] animatingForwardedNameLayout = new StaticLayout[2];

        public boolean supportChangeAnimation() {
            return true;
        }

        public TransitionParams() {
        }

        public void recordDrawingState() {
            this.wasDraw = true;
            this.lastDrawingImageX = ChatMessageCell.this.photoImage.getImageX();
            this.lastDrawingImageY = ChatMessageCell.this.photoImage.getImageY();
            this.lastDrawingImageW = ChatMessageCell.this.photoImage.getImageWidth();
            this.lastDrawingImageH = ChatMessageCell.this.photoImage.getImageHeight();
            System.arraycopy(ChatMessageCell.this.photoImage.getRoundRadius(), 0, this.imageRoundRadius, 0, 4);
            if (ChatMessageCell.this.currentBackgroundDrawable != null) {
                this.lastDrawingBackgroundRect.set(ChatMessageCell.this.currentBackgroundDrawable.getBounds());
            }
            this.lastDrawingTextBlocks = ChatMessageCell.this.currentMessageObject.textLayoutBlocks;
            this.lastDrawingEdited = ChatMessageCell.this.edited;
            this.lastDrawingCaptionX = ChatMessageCell.this.captionX;
            this.lastDrawingCaptionY = ChatMessageCell.this.captionY;
            this.lastDrawingCaptionLayout = ChatMessageCell.this.captionLayout;
            this.lastDrawBotButtons.clear();
            if (!ChatMessageCell.this.botButtons.isEmpty()) {
                this.lastDrawBotButtons.addAll(ChatMessageCell.this.botButtons);
            }
            if (ChatMessageCell.this.commentLayout != null) {
                this.lastCommentsCount = ChatMessageCell.this.getRepliesCount();
                this.lastTotalCommentWidth = ChatMessageCell.this.totalCommentWidth;
                this.lastCommentLayout = ChatMessageCell.this.commentLayout;
                this.lastCommentArrowX = ChatMessageCell.this.commentArrowX;
                this.lastCommentUnreadX = ChatMessageCell.this.commentUnreadX;
                this.lastCommentDrawUnread = ChatMessageCell.this.commentDrawUnread;
                this.lastCommentX = ChatMessageCell.this.commentX;
                this.lastDrawCommentNumber = ChatMessageCell.this.drawCommentNumber;
            }
            this.lastRepliesCount = ChatMessageCell.this.getRepliesCount();
            this.lastViewsCount = ChatMessageCell.this.getMessageObject().messageOwner.views;
            this.lastRepliesLayout = ChatMessageCell.this.repliesLayout;
            this.lastViewsLayout = ChatMessageCell.this.viewsLayout;
            ChatMessageCell chatMessageCell = ChatMessageCell.this;
            this.lastIsPinned = chatMessageCell.isPinned;
            this.lastSignMessage = chatMessageCell.lastPostAuthor;
            this.lastDrawBackground = ChatMessageCell.this.drawBackground;
            this.lastUseTranscribeButton = ChatMessageCell.this.useTranscribeButton;
            this.lastButtonX = ChatMessageCell.this.buttonX;
            this.lastButtonY = ChatMessageCell.this.buttonY;
            this.lastDrawTime = !ChatMessageCell.this.forceNotDrawTime;
            this.lastTimeX = ChatMessageCell.this.timeX;
            this.lastTimeLayout = ChatMessageCell.this.timeLayout;
            ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
            this.lastTimeWidth = chatMessageCell2.timeWidth;
            this.lastShouldDrawTimeOnMedia = chatMessageCell2.shouldDrawTimeOnMedia();
            this.lastTopOffset = ChatMessageCell.this.getTopMediaOffset();
            this.lastShouldDrawMenuDrawable = ChatMessageCell.this.shouldDrawMenuDrawable();
            this.lastLocatinIsExpired = ChatMessageCell.this.locationExpired;
            this.lastIsPlayingRound = ChatMessageCell.this.isPlayingRound;
            this.lastDrawingTextY = ChatMessageCell.this.textY;
            int unused = ChatMessageCell.this.textX;
            this.lastDrawnForwardedNameLayout[0] = ChatMessageCell.this.forwardedNameLayout[0];
            this.lastDrawnForwardedNameLayout[1] = ChatMessageCell.this.forwardedNameLayout[1];
            this.lastDrawnForwardedName = ChatMessageCell.this.currentMessageObject.needDrawForwarded();
            this.lastForwardNameX = ChatMessageCell.this.forwardNameX;
            this.lastForwardedNamesOffset = ChatMessageCell.this.namesOffset;
            this.lastForwardNameWidth = ChatMessageCell.this.forwardedNameWidth;
            this.lastBackgroundLeft = ChatMessageCell.this.getCurrentBackgroundLeft();
            this.lastBackgroundRight = ChatMessageCell.this.currentBackgroundDrawable.getBounds().right;
            this.lastTextXOffset = ChatMessageCell.this.currentMessageObject.textXOffset;
            ChatMessageCell chatMessageCell3 = ChatMessageCell.this;
            this.lastDrawnReplyTextLayout = chatMessageCell3.replyTextLayout;
            this.lastReplyTextXOffset = chatMessageCell3.replyTextOffset;
            ChatMessageCell.this.reactionsLayoutInBubble.recordDrawingState();
            ChatMessageCell chatMessageCell4 = ChatMessageCell.this;
            if (chatMessageCell4.replyNameLayout != null) {
                this.lastDrawReplyY = chatMessageCell4.replyStartY;
            } else {
                this.lastDrawReplyY = BitmapDescriptorFactory.HUE_RED;
            }
        }

        public void recordDrawingStatePreview() {
            this.lastDrawnForwardedNameLayout[0] = ChatMessageCell.this.forwardedNameLayout[0];
            this.lastDrawnForwardedNameLayout[1] = ChatMessageCell.this.forwardedNameLayout[1];
            this.lastDrawnForwardedName = ChatMessageCell.this.currentMessageObject.needDrawForwarded();
            this.lastForwardNameX = ChatMessageCell.this.forwardNameX;
            this.lastForwardedNamesOffset = ChatMessageCell.this.namesOffset;
            this.lastForwardNameWidth = ChatMessageCell.this.forwardedNameWidth;
        }

        /* JADX WARN: Removed duplicated region for block: B:105:0x02cd  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x0327  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x032d  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0376  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x03bb  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x03c2  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x0459  */
        /* JADX WARN: Removed duplicated region for block: B:180:0x046e  */
        /* JADX WARN: Removed duplicated region for block: B:182:0x0474  */
        /* JADX WARN: Removed duplicated region for block: B:191:0x04c0  */
        /* JADX WARN: Removed duplicated region for block: B:194:0x04cc  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x04d8  */
        /* JADX WARN: Removed duplicated region for block: B:200:0x04e8  */
        /* JADX WARN: Removed duplicated region for block: B:203:0x04f7  */
        /* JADX WARN: Removed duplicated region for block: B:208:0x052f  */
        /* JADX WARN: Removed duplicated region for block: B:211:0x053c  */
        /* JADX WARN: Removed duplicated region for block: B:222:0x056e  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x023a  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0247  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean animateChange() {
            /*
                Method dump skipped, instructions count: 1409
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.ChatMessageCell.TransitionParams.animateChange():boolean");
        }

        public void onDetach() {
            this.wasDraw = false;
        }

        public void resetAnimation() {
            this.animateChange = false;
            this.animatePinned = false;
            this.animateBackgroundBoundsInner = false;
            this.deltaLeft = BitmapDescriptorFactory.HUE_RED;
            this.deltaRight = BitmapDescriptorFactory.HUE_RED;
            this.deltaBottom = BitmapDescriptorFactory.HUE_RED;
            this.deltaTop = BitmapDescriptorFactory.HUE_RED;
            this.toDeltaLeft = BitmapDescriptorFactory.HUE_RED;
            this.toDeltaRight = BitmapDescriptorFactory.HUE_RED;
            if (this.imageChangeBoundsTransition && this.animateToImageW != BitmapDescriptorFactory.HUE_RED && this.animateToImageH != BitmapDescriptorFactory.HUE_RED) {
                ChatMessageCell.this.photoImage.setImageCoords(this.animateToImageX, this.animateToImageY, this.animateToImageW, this.animateToImageH);
            }
            if (this.animateRadius) {
                ChatMessageCell.this.photoImage.setRoundRadius(this.animateToRadius);
            }
            this.animateToImageX = BitmapDescriptorFactory.HUE_RED;
            this.animateToImageY = BitmapDescriptorFactory.HUE_RED;
            this.animateToImageW = BitmapDescriptorFactory.HUE_RED;
            this.animateToImageH = BitmapDescriptorFactory.HUE_RED;
            this.imageChangeBoundsTransition = false;
            this.changePinnedBottomProgress = 1.0f;
            this.captionEnterProgress = 1.0f;
            this.animateRadius = false;
            this.animateChangeProgress = 1.0f;
            this.animateMessageText = false;
            this.animateOutTextBlocks = null;
            this.animateEditedLayout = null;
            this.animateTimeLayout = null;
            this.animateEditedEnter = false;
            this.animateReplaceCaptionLayout = false;
            this.transformGroupToSingleMessage = false;
            this.animateOutCaptionLayout = null;
            AnimatedEmojiSpan.release(ChatMessageCell.this, this.animateOutAnimateEmoji);
            this.animateOutAnimateEmoji = null;
            this.moveCaption = false;
            this.animateDrawingTimeAlpha = false;
            this.transitionBotButtons.clear();
            this.animateButton = false;
            this.animateReplyTextLayout = null;
            this.animateReplies = false;
            this.animateRepliesLayout = null;
            this.animateComments = false;
            this.animateCommentsLayout = null;
            this.animateViewsLayout = null;
            this.animateShouldDrawTimeOnMedia = false;
            this.animateShouldDrawMenuDrawable = false;
            this.shouldAnimateTimeX = false;
            this.animateDrawBackground = false;
            this.animateSign = false;
            this.animateDrawingTimeAlpha = false;
            this.animateLocationIsExpired = false;
            this.animatePlayingRound = false;
            this.animateText = false;
            this.animateForwardedLayout = false;
            StaticLayout[] staticLayoutArr = this.animatingForwardedNameLayout;
            staticLayoutArr[0] = null;
            staticLayoutArr[1] = null;
            this.animateRoundVideoDotY = false;
            ChatMessageCell.this.reactionsLayoutInBubble.resetAnimation();
        }

        public int createStatusDrawableParams() {
            boolean z;
            int i;
            boolean z2;
            boolean z3 = true;
            if (ChatMessageCell.this.currentMessageObject.isOutOwner()) {
                if (ChatMessageCell.this.currentMessageObject.isSending() || ChatMessageCell.this.currentMessageObject.isEditing()) {
                    z = true;
                    i = 0;
                    z3 = false;
                    z2 = false;
                } else if (ChatMessageCell.this.currentMessageObject.isSendError()) {
                    z2 = true;
                    i = 0;
                    z3 = false;
                    z = false;
                } else {
                    if (ChatMessageCell.this.currentMessageObject.isSent()) {
                        i = (ChatMessageCell.this.currentMessageObject.scheduled || ChatMessageCell.this.currentMessageObject.isUnread()) ? 0 : 1;
                        z = false;
                    } else {
                        i = 0;
                        z3 = false;
                        z = false;
                    }
                    z2 = z;
                }
                return i | (z3 ? 2 : 0) | (z ? 4 : 0) | (z2 ? 8 : 0);
            }
            if (!ChatMessageCell.this.currentMessageObject.isSending() && !ChatMessageCell.this.currentMessageObject.isEditing()) {
                z3 = false;
            }
            return (z3 ? 4 : 0) | (ChatMessageCell.this.currentMessageObject.isSendError() ? 8 : 0);
        }
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private Drawable getThemedDrawable(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Drawable drawable = resourcesProvider != null ? resourcesProvider.getDrawable(str) : null;
        return drawable != null ? drawable : Theme.getThemeDrawable(str);
    }

    public Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        return resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService();
    }

    private ColorMatrixColorFilter getFancyBlurFilter() {
        if (this.fancyBlurFilter == null) {
            ColorMatrix colorMatrix = new ColorMatrix();
            AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.9f);
            AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 0.6f);
            this.fancyBlurFilter = new ColorMatrixColorFilter(colorMatrix);
        }
        return this.fancyBlurFilter;
    }
}
