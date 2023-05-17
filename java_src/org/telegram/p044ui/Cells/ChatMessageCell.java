package org.telegram.p044ui.Cells;

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
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
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
import org.telegram.messenger.C3290R;
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
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.ChatMessageCell;
import org.telegram.p044ui.Cells.TextSelectionHelper;
import org.telegram.p044ui.ChatActivity;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AnimatedEmojiSpan;
import org.telegram.p044ui.Components.AnimatedFileDrawable;
import org.telegram.p044ui.Components.AnimatedFloat;
import org.telegram.p044ui.Components.AnimatedNumberLayout;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackgroundGradientDrawable;
import org.telegram.p044ui.Components.CheckBoxBase;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.FloatSeekBarAccessibilityDelegate;
import org.telegram.p044ui.Components.Forum.MessageTopicButton;
import org.telegram.p044ui.Components.InfiniteProgress;
import org.telegram.p044ui.Components.LinkPath;
import org.telegram.p044ui.Components.LinkSpanDrawable;
import org.telegram.p044ui.Components.LoadingDrawable;
import org.telegram.p044ui.Components.MessageBackgroundDrawable;
import org.telegram.p044ui.Components.MotionBackgroundDrawable;
import org.telegram.p044ui.Components.MsgClockDrawable;
import org.telegram.p044ui.Components.Point;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.RadialProgress2;
import org.telegram.p044ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.Components.RoundVideoPlayingDrawable;
import org.telegram.p044ui.Components.SeekBar;
import org.telegram.p044ui.Components.SeekBarAccessibilityDelegate;
import org.telegram.p044ui.Components.SeekBarWaveform;
import org.telegram.p044ui.Components.SlotsDrawable;
import org.telegram.p044ui.Components.StaticLayoutEx;
import org.telegram.p044ui.Components.TextStyleSpan;
import org.telegram.p044ui.Components.TimerParticles;
import org.telegram.p044ui.Components.TranscribeButton;
import org.telegram.p044ui.Components.TypefaceSpan;
import org.telegram.p044ui.Components.URLSpanBrowser;
import org.telegram.p044ui.Components.URLSpanMono;
import org.telegram.p044ui.Components.URLSpanNoUnderline;
import org.telegram.p044ui.Components.VideoForwardDrawable;
import org.telegram.p044ui.Components.spoilers.SpoilerEffect;
import org.telegram.p044ui.PhotoViewer;
import org.telegram.p044ui.PinchToZoomHelper;
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
    private AtomicReference<Layout> captionPatchedSpoilersLayout;
    private List<SpoilerEffect> captionSpoilers;
    private Stack<SpoilerEffect> captionSpoilersPool;
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
    private int currentAccount;
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
    private int drawInstantViewType;
    private boolean drawMediaCheckBox;
    private boolean drawName;
    private boolean drawNameLayout;
    private boolean drawPhotoImage;
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
    private boolean firstCircleLength;
    private int firstVisibleBlockNum;
    private FlagSecureReason flagSecure;
    private boolean flipImage;
    private boolean forceNotDrawTime;
    private boolean forwardBotPressed;
    private int forwardHeight;
    private int forwardNameCenterX;
    private float[] forwardNameOffsetX;
    private boolean forwardNamePressed;
    private float forwardNameX;
    private int forwardNameY;
    private StaticLayout[] forwardedNameLayout;
    private int forwardedNameWidth;
    private boolean fullyDraw;
    private boolean gamePreviewPressed;
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
    private boolean inLayout;
    private StaticLayout infoLayout;
    private int infoWidth;
    private int infoX;
    private LoadingDrawable instantButtonLoading;
    private ValueAnimator instantButtonPressAnimator;
    private float instantButtonPressProgress;
    private boolean instantButtonPressed;
    private RectF instantButtonRect;
    private boolean instantPressed;
    private int instantTextLeftX;
    private boolean instantTextNewLine;
    private int instantTextX;
    private StaticLayout instantViewLayout;
    private int instantWidth;
    private Runnable invalidateRunnable;
    private boolean invalidateSpoilersParent;
    private boolean invalidatesParent;
    private boolean isAvatarVisible;
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
    public boolean isInBookmarks;
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
    private int lastTime;
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
    private Stack<SpoilerEffect> replySpoilersPool;
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
    private Path sPath;
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
    public boolean shouldCheckVisibleOnScreen;
    private boolean sideButtonPressed;
    private float sideStartX;
    private float sideStartY;
    private StaticLayout siteNameLayout;
    private boolean siteNameRtl;
    private int siteNameWidth;
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
    private int timeWidth;
    private int timeWidthAudio;
    private int timeX;
    private TimerParticles timerParticles;
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
    private boolean wasInBookmarks;
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

        /* renamed from: org.telegram.ui.Cells.ChatMessageCell$ChatMessageCellDelegate$-CC */
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

            public static boolean $default$didLongPressUserAvatar(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2) {
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

        boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2);

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

    public ChatMessageCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, resourcesProvider, UserConfig.selectedAccount);
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
            if (tLRPC$User == null || tLRPC$User.f1574id != ((Long) objArr[0]).longValue()) {
                return;
            }
            setAvatar(this.currentMessageObject);
        } else if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        }
    }

    private void setAvatar(final MessageObject messageObject) {
        TLRPC$Photo tLRPC$Photo;
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
                post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatMessageCell.this.lambda$setAvatar$0();
                    }
                });
                return;
            }
            TLRPC$Chat tLRPC$Chat = this.currentChat;
            if (tLRPC$Chat != null) {
                TLRPC$ChatPhoto tLRPC$ChatPhoto = tLRPC$Chat.photo;
                if (tLRPC$ChatPhoto != null) {
                    this.currentPhoto = tLRPC$ChatPhoto.photo_small;
                } else {
                    this.currentPhoto = null;
                }
                post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatMessageCell.this.lambda$setAvatar$1();
                    }
                });
                return;
            } else if (messageObject.isSponsored()) {
                TLRPC$ChatInvite tLRPC$ChatInvite = messageObject.sponsoredChatInvite;
                if (tLRPC$ChatInvite != null && tLRPC$ChatInvite.chat != null) {
                    post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatMessageCell.this.lambda$setAvatar$2(messageObject);
                        }
                    });
                    return;
                }
                this.avatarDrawable.setInfo(tLRPC$ChatInvite);
                TLRPC$ChatInvite tLRPC$ChatInvite2 = messageObject.sponsoredChatInvite;
                if (tLRPC$ChatInvite2 == null || (tLRPC$Photo = tLRPC$ChatInvite2.photo) == null) {
                    return;
                }
                this.avatarImage.setImage(ImageLocation.getForPhoto(tLRPC$Photo.sizes.get(0), tLRPC$Photo), "50_50", this.avatarDrawable, null, null, 0);
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

    public /* synthetic */ void lambda$setAvatar$0() {
        this.avatarDrawable.setInfo(this.currentUser);
        this.avatarImage.setForUserOrChat(this.currentUser, this.avatarDrawable, null, LiteMode.isEnabled(LiteMode.FLAGS_CHAT), 1);
    }

    public /* synthetic */ void lambda$setAvatar$1() {
        this.avatarDrawable.setInfo(this.currentChat);
        this.avatarImage.setForUserOrChat(this.currentChat, this.avatarDrawable);
    }

    public /* synthetic */ void lambda$setAvatar$2(MessageObject messageObject) {
        this.avatarDrawable.setInfo(messageObject.sponsoredChatInvite.chat);
        this.avatarImage.setForUserOrChat(messageObject.sponsoredChatInvite.chat, this.avatarDrawable);
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
            float f2 = y + reactionsLayoutInBubble.f1731y;
            return f2 > f && (f2 + ((float) reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.m54dp(16)) < ((float) i);
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

    public void setVisibleOnScreen(boolean z) {
        if (this.visibleOnScreen != z) {
            this.visibleOnScreen = z;
            checkImageReceiversAttachState();
            if (z) {
                invalidate();
            }
        }
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
        private int f1598x;

        /* renamed from: y */
        private int f1599y;

        private BotButton() {
            ChatMessageCell.this = r1;
        }

        static /* synthetic */ int access$3576(BotButton botButton, int i) {
            int i2 = i | botButton.positionFlags;
            botButton.positionFlags = i2;
            return i2;
        }

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
                        {
                            BotButton.this = this;
                        }

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

        public /* synthetic */ void lambda$setPressed$0(ValueAnimator valueAnimator) {
            this.pressT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ChatMessageCell.this.invalidateOutbounds();
        }

        public boolean hasPositionFlag(int i) {
            return (this.positionFlags & i) == i;
        }

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
        public int f1600x;

        /* renamed from: y */
        public int f1601y;

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

    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$LoadingDrawableLocation */
    /* loaded from: classes5.dex */
    public class LoadingDrawableLocation {
        int blockNum;
        LoadingDrawable drawable;

        LoadingDrawableLocation(ChatMessageCell chatMessageCell) {
        }
    }

    public ChatMessageCell(Context context) {
        this(context, false, null);
    }

    public ChatMessageCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider, int i) {
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
            {
                ChatMessageCell.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ChatMessageCell.this.delegate != null) {
                    ChatMessageCell.this.delegate.onDiceFinished();
                }
            }
        };
        this.invalidateRunnable = new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell.2
            {
                ChatMessageCell.this = this;
            }

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
        this.backgroundDrawable = new MessageBackgroundDrawable(this);
        ImageReceiver imageReceiver = new ImageReceiver();
        this.avatarImage = imageReceiver;
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        this.avatarImage.setRoundRadius(AndroidUtilities.m54dp(21));
        this.avatarDrawable = new AvatarDrawable();
        ImageReceiver imageReceiver2 = new ImageReceiver(this);
        this.replyImageReceiver = imageReceiver2;
        imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        this.replyImageReceiver.setRoundRadius(AndroidUtilities.m54dp(4));
        ImageReceiver imageReceiver3 = new ImageReceiver(this);
        this.locationImageReceiver = imageReceiver3;
        imageReceiver3.setAllowLoadingOnAttachedOnly(true);
        this.locationImageReceiver.setRoundRadius(AndroidUtilities.m55dp(26.1f));
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
        this.videoRadialProgress.setCircleRadius(AndroidUtilities.m54dp(15));
        SeekBar seekBar = new SeekBar(this) { // from class: org.telegram.ui.Cells.ChatMessageCell.3
            {
                ChatMessageCell.this = this;
            }

            @Override // org.telegram.p044ui.Components.SeekBar
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
            {
                ChatMessageCell.this = this;
            }

            @Override // org.telegram.p044ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                if (ChatMessageCell.this.currentMessageObject.isMusic()) {
                    return ChatMessageCell.this.seekBar.getProgress();
                }
                return ChatMessageCell.this.currentMessageObject.isVoice() ? ChatMessageCell.this.useSeekBarWaveform ? ChatMessageCell.this.seekBarWaveform.getProgress() : ChatMessageCell.this.seekBar.getProgress() : ChatMessageCell.this.currentMessageObject.isRoundVideo() ? ChatMessageCell.this.currentMessageObject.audioProgress : BitmapDescriptorFactory.HUE_RED;
            }

            @Override // org.telegram.p044ui.Components.FloatSeekBarAccessibilityDelegate
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
            this.pollAvatarImages[i].setRoundRadius(AndroidUtilities.m54dp(8));
            this.pollAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.pollAvatarDrawables[i] = new AvatarDrawable();
            this.pollAvatarDrawables[i].setTextSize(AndroidUtilities.m54dp(22));
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
            this.commentAvatarImages[i].setRoundRadius(AndroidUtilities.m54dp(12));
            this.commentAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.commentAvatarDrawables[i] = new AvatarDrawable();
            this.commentAvatarDrawables[i].setTextSize(AndroidUtilities.m54dp(18));
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

    /* JADX WARN: Removed duplicated region for block: B:226:0x0108 A[Catch: Exception -> 0x02bc, TryCatch #1 {Exception -> 0x02bc, blocks: (B:197:0x0080, B:199:0x0095, B:201:0x009b, B:203:0x00bd, B:205:0x00c8, B:207:0x00d8, B:213:0x00e9, B:216:0x00f5, B:218:0x00f8, B:220:0x00fe, B:226:0x0108, B:228:0x010e, B:230:0x0114, B:232:0x011a, B:234:0x011e, B:286:0x027c, B:236:0x0122, B:237:0x012f, B:239:0x0133, B:241:0x013b, B:243:0x015d, B:245:0x0162, B:285:0x0271, B:284:0x026e, B:244:0x0160, B:288:0x0280, B:290:0x0286, B:292:0x028c, B:294:0x0295, B:296:0x029b, B:297:0x02a1, B:299:0x02a5, B:301:0x02ad, B:215:0x00ec, B:211:0x00de, B:246:0x016d, B:248:0x019f, B:249:0x01a1, B:251:0x01ab, B:253:0x01b7, B:256:0x01ce, B:258:0x01d1, B:261:0x01dc, B:264:0x01ff, B:254:0x01c2, B:265:0x0202, B:267:0x0208, B:269:0x020c, B:271:0x0218, B:274:0x0237, B:276:0x023a, B:279:0x0245, B:272:0x0227), top: B:309:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0114 A[Catch: Exception -> 0x02bc, TryCatch #1 {Exception -> 0x02bc, blocks: (B:197:0x0080, B:199:0x0095, B:201:0x009b, B:203:0x00bd, B:205:0x00c8, B:207:0x00d8, B:213:0x00e9, B:216:0x00f5, B:218:0x00f8, B:220:0x00fe, B:226:0x0108, B:228:0x010e, B:230:0x0114, B:232:0x011a, B:234:0x011e, B:286:0x027c, B:236:0x0122, B:237:0x012f, B:239:0x0133, B:241:0x013b, B:243:0x015d, B:245:0x0162, B:285:0x0271, B:284:0x026e, B:244:0x0160, B:288:0x0280, B:290:0x0286, B:292:0x028c, B:294:0x0295, B:296:0x029b, B:297:0x02a1, B:299:0x02a5, B:301:0x02ad, B:215:0x00ec, B:211:0x00de, B:246:0x016d, B:248:0x019f, B:249:0x01a1, B:251:0x01ab, B:253:0x01b7, B:256:0x01ce, B:258:0x01d1, B:261:0x01dc, B:264:0x01ff, B:254:0x01c2, B:265:0x0202, B:267:0x0208, B:269:0x020c, B:271:0x0218, B:274:0x0237, B:276:0x023a, B:279:0x0245, B:272:0x0227), top: B:309:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0280 A[Catch: Exception -> 0x02bc, TryCatch #1 {Exception -> 0x02bc, blocks: (B:197:0x0080, B:199:0x0095, B:201:0x009b, B:203:0x00bd, B:205:0x00c8, B:207:0x00d8, B:213:0x00e9, B:216:0x00f5, B:218:0x00f8, B:220:0x00fe, B:226:0x0108, B:228:0x010e, B:230:0x0114, B:232:0x011a, B:234:0x011e, B:286:0x027c, B:236:0x0122, B:237:0x012f, B:239:0x0133, B:241:0x013b, B:243:0x015d, B:245:0x0162, B:285:0x0271, B:284:0x026e, B:244:0x0160, B:288:0x0280, B:290:0x0286, B:292:0x028c, B:294:0x0295, B:296:0x029b, B:297:0x02a1, B:299:0x02a5, B:301:0x02ad, B:215:0x00ec, B:211:0x00de, B:246:0x016d, B:248:0x019f, B:249:0x01a1, B:251:0x01ab, B:253:0x01b7, B:256:0x01ce, B:258:0x01d1, B:261:0x01dc, B:264:0x01ff, B:254:0x01c2, B:265:0x0202, B:267:0x0208, B:269:0x020c, B:271:0x0218, B:274:0x0237, B:276:0x023a, B:279:0x0245, B:272:0x0227), top: B:309:0x0080, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkTextBlockMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.checkTextBlockMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x00ce A[Catch: Exception -> 0x014b, TryCatch #0 {Exception -> 0x014b, blocks: (B:124:0x005e, B:126:0x007d, B:128:0x0088, B:130:0x0096, B:134:0x00a3, B:137:0x00af, B:139:0x00b2, B:141:0x00b8, B:147:0x00c2, B:149:0x00c8, B:151:0x00ce, B:166:0x0147, B:152:0x00da, B:154:0x00de, B:156:0x00e6, B:158:0x0108, B:160:0x010d, B:165:0x013c, B:164:0x0139, B:159:0x010b, B:136:0x00a6, B:132:0x0099, B:161:0x0116), top: B:184:0x005e, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00da A[Catch: Exception -> 0x014b, TryCatch #0 {Exception -> 0x014b, blocks: (B:124:0x005e, B:126:0x007d, B:128:0x0088, B:130:0x0096, B:134:0x00a3, B:137:0x00af, B:139:0x00b2, B:141:0x00b8, B:147:0x00c2, B:149:0x00c8, B:151:0x00ce, B:166:0x0147, B:152:0x00da, B:154:0x00de, B:156:0x00e6, B:158:0x0108, B:160:0x010d, B:165:0x013c, B:164:0x0139, B:159:0x010b, B:136:0x00a6, B:132:0x0099, B:161:0x0116), top: B:184:0x005e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkCaptionMotionEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.checkCaptionMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x00f5 A[Catch: Exception -> 0x013c, TryCatch #0 {Exception -> 0x013c, blocks: (B:148:0x006e, B:150:0x0095, B:152:0x00a0, B:154:0x00b1, B:156:0x00b7, B:162:0x00c1, B:164:0x00c7, B:166:0x00cb, B:178:0x0138, B:168:0x00d3, B:170:0x00f5, B:172:0x00fa, B:177:0x012d, B:176:0x012a, B:171:0x00f8, B:173:0x0107), top: B:214:0x006e, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00f8 A[Catch: Exception -> 0x013c, TryCatch #0 {Exception -> 0x013c, blocks: (B:148:0x006e, B:150:0x0095, B:152:0x00a0, B:154:0x00b1, B:156:0x00b7, B:162:0x00c1, B:164:0x00c7, B:166:0x00cb, B:178:0x0138, B:168:0x00d3, B:170:0x00f5, B:172:0x00fa, B:177:0x012d, B:176:0x012a, B:171:0x00f8, B:173:0x0107), top: B:214:0x006e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkGameMotionEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.checkGameMotionEvent(android.view.MotionEvent):boolean");
    }

    private boolean checkTranscribeButtonMotionEvent(MotionEvent motionEvent) {
        TranscribeButton transcribeButton;
        return this.useTranscribeButton && (!this.isPlayingRound || getVideoTranscriptionProgress() > BitmapDescriptorFactory.HUE_RED || this.wasTranscriptionOpen) && (transcribeButton = this.transcribeButton) != null && transcribeButton.onTouch(motionEvent.getAction(), motionEvent.getX(), motionEvent.getY());
    }

    /* JADX WARN: Removed duplicated region for block: B:303:0x00f1 A[Catch: Exception -> 0x013b, TryCatch #0 {Exception -> 0x013b, blocks: (B:279:0x005d, B:281:0x0077, B:283:0x008e, B:285:0x0099, B:287:0x00aa, B:289:0x00b0, B:295:0x00ba, B:297:0x00c0, B:299:0x00c4, B:311:0x0137, B:301:0x00cc, B:303:0x00f1, B:305:0x00f6, B:310:0x012c, B:309:0x0129, B:304:0x00f4, B:306:0x0106), top: B:498:0x005d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x00f4 A[Catch: Exception -> 0x013b, TryCatch #0 {Exception -> 0x013b, blocks: (B:279:0x005d, B:281:0x0077, B:283:0x008e, B:285:0x0099, B:287:0x00aa, B:289:0x00b0, B:295:0x00ba, B:297:0x00c0, B:299:0x00c4, B:311:0x0137, B:301:0x00cc, B:303:0x00f1, B:305:0x00f6, B:310:0x012c, B:309:0x0129, B:304:0x00f4, B:306:0x0106), top: B:498:0x005d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkLinkPreviewMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1039
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.checkLinkPreviewMotionEvent(android.view.MotionEvent):boolean");
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
                if (this.hintButtonVisible && (i = this.pollHintX) != -1 && x >= i && x <= i + AndroidUtilities.m54dp(40) && y >= (i2 = this.pollHintY) && y <= i2 + AndroidUtilities.m54dp(40)) {
                    this.pollHintPressed = true;
                    this.selectorDrawableMaskType[0] = 3;
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr = this.selectorDrawable;
                        if (drawableArr[0] != null) {
                            drawableArr[0].setBounds(this.pollHintX - AndroidUtilities.m54dp(8), this.pollHintY - AndroidUtilities.m54dp(8), this.pollHintX + AndroidUtilities.m54dp(32), this.pollHintY + AndroidUtilities.m54dp(32));
                            this.selectorDrawable[0].setHotspot(x, y);
                            this.selectorDrawable[0].setState(this.pressedState);
                        }
                    }
                    invalidate();
                } else {
                    for (int i3 = 0; i3 < this.pollButtons.size(); i3++) {
                        PollButton pollButton = this.pollButtons.get(i3);
                        int m54dp = (pollButton.f1601y + this.namesOffset) - AndroidUtilities.m54dp(13);
                        int i4 = pollButton.f1600x;
                        if (x >= i4 && x <= (i4 + this.backgroundWidth) - AndroidUtilities.m54dp(31) && y >= m54dp && y <= pollButton.height + m54dp + AndroidUtilities.m54dp(26)) {
                            this.pressedVoteButton = i3;
                            if (!this.pollVoted && !this.pollClosed) {
                                this.selectorDrawableMaskType[0] = 1;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    Drawable[] drawableArr2 = this.selectorDrawable;
                                    if (drawableArr2[0] != null) {
                                        drawableArr2[0].setBounds(pollButton.f1600x - AndroidUtilities.m54dp(9), m54dp, (pollButton.f1600x + this.backgroundWidth) - AndroidUtilities.m54dp(22), pollButton.height + m54dp + AndroidUtilities.m54dp(26));
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
                        Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVote", C3290R.string.MessageScheduledVote), 1).show();
                    } else {
                        PollButton pollButton2 = this.pollButtons.get(this.pressedVoteButton);
                        TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = pollButton2.answer;
                        if (this.pollVoted || this.pollClosed) {
                            ArrayList<TLRPC$TL_pollAnswer> arrayList = new ArrayList<>();
                            arrayList.add(tLRPC$TL_pollAnswer);
                            this.delegate.didPressVoteButtons(this, arrayList, pollButton2.count, pollButton2.f1600x + AndroidUtilities.m54dp(50), this.namesOffset + pollButton2.f1601y);
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
                                Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVoteResults", C3290R.string.MessageScheduledVoteResults), 1).show();
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
                    if (x > i3 + AndroidUtilities.m54dp((LocaleController.isRTL ? 0 : 200) + 30 + (!isVideoCall ? 2 : 0)) || y < this.otherY - AndroidUtilities.m54dp(14) || y > this.otherY + AndroidUtilities.m54dp(50)) {
                        return false;
                    }
                    this.otherPressed = true;
                    this.selectorDrawableMaskType[0] = 4;
                    if (Build.VERSION.SDK_INT >= 21 && this.selectorDrawable[0] != null) {
                        int m54dp = this.otherX + AndroidUtilities.m54dp((LocaleController.isRTL ? 0 : 200) + (!isVideoCall ? 2 : 0)) + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicWidth() / 2);
                        int intrinsicHeight = this.otherY + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicHeight() / 2);
                        this.selectorDrawable[0].setBounds(m54dp - AndroidUtilities.m54dp(20), intrinsicHeight - AndroidUtilities.m54dp(20), m54dp + AndroidUtilities.m54dp(20), intrinsicHeight + AndroidUtilities.m54dp(20));
                        this.selectorDrawable[0].setHotspot(x, y);
                        this.selectorDrawable[0].setState(this.pressedState);
                    }
                    invalidate();
                } else if (x < this.otherX - AndroidUtilities.m54dp(20) || x > this.otherX + AndroidUtilities.m54dp(20) || y < this.otherY - AndroidUtilities.m54dp(4) || y > this.otherY + AndroidUtilities.m54dp(30)) {
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
                            ChatMessageCell.this.lambda$setInstantButtonPressed$3(valueAnimator2);
                        }
                    });
                    this.instantButtonPressAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.5
                        {
                            ChatMessageCell.this = this;
                        }

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

    public /* synthetic */ void lambda$setInstantButtonPressed$3(ValueAnimator valueAnimator) {
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
                if (f3 < f4 || f3 > f4 + AndroidUtilities.m54dp(20)) {
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
                if (f >= this.seekbarRoundX - AndroidUtilities.m54dp(20) && f <= this.seekbarRoundX + AndroidUtilities.m54dp(20)) {
                    float f2 = y;
                    if (f2 >= this.seekbarRoundY - AndroidUtilities.m54dp(20) && f2 <= this.seekbarRoundY + AndroidUtilities.m54dp(20)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        cancelCheckLongPress();
                        this.roundSeekbarTouched = 1;
                        invalidate();
                    }
                }
                float centerX = f - this.photoImage.getCenterX();
                float centerY = y - this.photoImage.getCenterY();
                float imageWidth = (this.photoImage.getImageWidth() - AndroidUtilities.m54dp(64)) / 2.0f;
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

    /* JADX WARN: Removed duplicated region for block: B:213:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkPhotoImageMotionEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.checkPhotoImageMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:228:0x0115, code lost:
        if (r4 <= (r0 + r6)) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0117, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x014f, code lost:
        if (r4 <= (r0 + r6)) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkAudioMotionEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.checkAudioMotionEvent(android.view.MotionEvent):boolean");
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
                this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatMessageCell.this.lambda$checkSpoilersMotionEvent$5();
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
                                chatMessageCell2.replySpoilers.get(0).setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda13
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ChatMessageCell.this.lambda$checkSpoilersMotionEvent$7(chatMessageCell2);
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

    public /* synthetic */ void lambda$checkSpoilersMotionEvent$5() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ChatMessageCell.this.lambda$checkSpoilersMotionEvent$4();
            }
        });
    }

    public /* synthetic */ void lambda$checkSpoilersMotionEvent$4() {
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

    public /* synthetic */ void lambda$checkSpoilersMotionEvent$7(ChatMessageCell chatMessageCell) {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ChatMessageCell.lambda$checkSpoilersMotionEvent$6(ChatMessageCell.this);
            }
        });
    }

    public static /* synthetic */ void lambda$checkSpoilersMotionEvent$6(ChatMessageCell chatMessageCell) {
        chatMessageCell.getMessageObject().replyMessageObject.isSpoilersRevealed = true;
        chatMessageCell.replySpoilers.clear();
        chatMessageCell.invalidate();
    }

    private boolean checkBotButtonMotionEvent(MotionEvent motionEvent) {
        int i;
        int m54dp;
        if (this.delegate.isInPreviewMode() || this.botButtons.isEmpty() || this.currentMessageObject.eventId != 0) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            if (this.currentMessageObject.isOutOwner()) {
                m54dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m54dp(10);
            } else {
                m54dp = this.backgroundDrawableLeft + AndroidUtilities.m54dp(this.mediaBackground ? 1 : 7);
            }
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = this.botButtons.get(i2);
                int m54dp2 = (botButton.f1599y + this.layoutHeight) - AndroidUtilities.m54dp(2);
                if (x >= botButton.f1598x + m54dp && x <= botButton.f1598x + m54dp + botButton.width && y >= m54dp2 && y <= botButton.height + m54dp2) {
                    this.pressedBotButton = i2;
                    invalidateOutbounds();
                    if (botButton.selectorDrawable == null) {
                        botButton.selectorDrawable = Theme.createRadSelectorDrawable(getThemedColor(Theme.key_chat_serviceBackgroundSelector), 6, 6);
                        botButton.selectorDrawable.setBounds(botButton.f1598x + m54dp, m54dp2, botButton.f1598x + m54dp + botButton.width, botButton.height + m54dp2);
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        botButton.selectorDrawable.setHotspot(x, y);
                    }
                    botButton.selectorDrawable.setState(this.pressedState);
                    botButton.setPressed(true);
                    final int i3 = this.pressedBotButton;
                    postDelayed(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatMessageCell.this.lambda$checkBotButtonMotionEvent$8(i3);
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
                    Toast.makeText(getContext(), LocaleController.getString("MessageScheduledBotAction", C3290R.string.MessageScheduledBotAction), 1).show();
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

    public /* synthetic */ void lambda$checkBotButtonMotionEvent$8(int i) {
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

    /* JADX WARN: Code restructure failed: missing block: B:760:0x03a7, code lost:
        if (r5 <= (r0 + org.telegram.messenger.AndroidUtilities.m54dp(32))) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:982:0x06fe, code lost:
        if (r5 > (r0 + org.telegram.messenger.AndroidUtilities.m54dp(32 + ((r18.drawSideButton != 3 || r18.commentLayout == null) ? 0 : 18)))) goto L514;
     */
    /* JADX WARN: Removed duplicated region for block: B:736:0x0354  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public /* synthetic */ void lambda$onTouchEvent$9() {
        if (this.replyPressed && !this.replySelectorPressed && this.replySelectorCanBePressed) {
            this.replySelectorPressed = true;
            this.replySelector.setState(new int[]{16842919, 16842910});
        }
    }

    public /* synthetic */ void lambda$onTouchEvent$10() {
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
        return pinchToZoomHelper.checkPinchToZoom(motionEvent, this, this.photoImage, this.currentMessageObject);
    }

    private boolean checkTextSelection(MotionEvent motionEvent) {
        TextSelectionHelper.ChatListTextSelectionHelper textSelectionHelper;
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message;
        int i;
        int m54dp;
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
                        i2 = this.unmovedTextX - AndroidUtilities.m54dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i = this.unmovedTextX;
                            m54dp = AndroidUtilities.m54dp(1);
                        } else {
                            i = this.unmovedTextX;
                            m54dp = AndroidUtilities.m54dp(1);
                        }
                        i2 = i + m54dp;
                    }
                    textSelectionHelper.setMaybeTextCord(i2 + AndroidUtilities.m54dp(10) + this.descriptionX, this.descriptionY);
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
        int m54dp;
        int i2;
        if (getDelegate() == null || getDelegate().getTextSelectionHelper() == null || !getDelegate().getTextSelectionHelper().isSelected(this.currentMessageObject)) {
            return;
        }
        int textSelectionType = getDelegate().getTextSelectionHelper().getTextSelectionType(this);
        if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_DESCRIPTION) {
            if (this.hasGamePreview) {
                i2 = this.unmovedTextX - AndroidUtilities.m54dp(10);
            } else {
                if (this.hasInvoicePreview) {
                    i = this.unmovedTextX;
                    m54dp = AndroidUtilities.m54dp(1);
                } else {
                    i = this.unmovedTextX;
                    m54dp = AndroidUtilities.m54dp(1);
                }
                i2 = i + m54dp;
            }
            getDelegate().getTextSelectionHelper().updateTextPosition(i2 + AndroidUtilities.m54dp(10) + this.descriptionX, this.descriptionY);
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
        int i;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        VideoPlayerRewinder videoPlayerRewinder = this.videoPlayerRewinder;
        if (videoPlayerRewinder != null && videoPlayerRewinder.rewindCount != 0 && videoPlayerRewinder.rewindByBackSeek) {
            messageObject.audioProgress = videoPlayerRewinder.getVideoProgress();
        }
        int i2 = 0;
        if (this.documentAttachType == 4) {
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.clearTimestamps();
            }
            if (this.infoLayout == null || !(PhotoViewer.isPlayingMessage(this.currentMessageObject) || MediaController.getInstance().isGoingToShowMessageObject(this.currentMessageObject))) {
                AnimatedFileDrawable animation = this.photoImage.getAnimation();
                if (animation != null) {
                    MessageObject messageObject2 = this.currentMessageObject;
                    i2 = animation.getDurationMs() / 1000;
                    messageObject2.audioPlayerDuration = i2;
                    MessageObject messageObject3 = this.currentMessageObject;
                    TLRPC$Message tLRPC$Message = messageObject3.messageOwner;
                    if (tLRPC$Message.ttl > 0 && tLRPC$Message.destroyTime == 0 && !messageObject3.needDrawBluredPreview() && this.currentMessageObject.isVideo() && animation.hasBitmap()) {
                        this.delegate.didStartVideoStream(this.currentMessageObject);
                    }
                }
                if (i2 == 0) {
                    i2 = this.currentMessageObject.getDuration();
                }
                if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                    float f = i2;
                    i2 = (int) (f - (this.currentMessageObject.audioProgress * f));
                } else if (animation != null) {
                    if (i2 != 0) {
                        i2 -= animation.getCurrentProgressMs() / 1000;
                    }
                    if (this.delegate != null && animation.getCurrentProgressMs() >= 3000) {
                        this.delegate.videoTimerReached();
                    }
                }
                if (this.lastTime != i2) {
                    String formatShortDuration = AndroidUtilities.formatShortDuration(i2);
                    this.infoWidth = (int) Math.ceil(Theme.chat_infoPaint.measureText(formatShortDuration));
                    this.infoLayout = new StaticLayout(formatShortDuration, Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.lastTime = i2;
                }
            }
        } else if (this.isRoundVideo) {
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
            int i3 = 0;
            while (true) {
                if (i3 >= document.attributes.size()) {
                    i = 0;
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i3);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) {
                    i = tLRPC$DocumentAttribute.duration;
                    break;
                }
                i3++;
            }
            if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                i = Math.max(0, i - this.currentMessageObject.audioProgressSec);
            }
            if (this.lastTime != i) {
                this.lastTime = i;
                String formatLongDuration = AndroidUtilities.formatLongDuration(i);
                this.timeWidthAudio = (int) Math.ceil(Theme.chat_timePaint.measureText(formatLongDuration));
                this.durationLayout = new StaticLayout(formatLongDuration, Theme.chat_timePaint, this.timeWidthAudio, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            }
            float f2 = this.currentMessageObject.audioProgress;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.lastDrawingAudioProgress = f2;
                if (f2 > 0.9f) {
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
                    int i4 = 0;
                    while (true) {
                        if (i4 >= this.documentAttach.attributes.size()) {
                            break;
                        }
                        TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = this.documentAttach.attributes.get(i4);
                        if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeAudio) {
                            i2 = tLRPC$DocumentAttribute2.duration;
                            break;
                        }
                        i4++;
                    }
                } else {
                    i2 = this.currentMessageObject.audioProgressSec;
                }
                if (this.lastTime != i2) {
                    this.lastTime = i2;
                    String formatLongDuration2 = AndroidUtilities.formatLongDuration(i2);
                    this.timeWidthAudio = (int) Math.ceil(Theme.chat_audioTimePaint.measureText(formatLongDuration2));
                    this.durationLayout = new StaticLayout(formatLongDuration2, Theme.chat_audioTimePaint, this.timeWidthAudio, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
            } else {
                int duration = this.currentMessageObject.getDuration();
                int i5 = MediaController.getInstance().isPlayingMessage(this.currentMessageObject) ? this.currentMessageObject.audioProgressSec : 0;
                if (this.miniButtonState >= 0 && this.loadingProgressLayout != null) {
                    i2 = 1;
                }
                if (this.lastTime != i5 || i2 != 0) {
                    if (i2 == 0) {
                        this.lastTime = i5;
                    }
                    String formatShortDuration2 = AndroidUtilities.formatShortDuration(i5, duration);
                    if (i2 != 0) {
                        formatShortDuration2 = AndroidUtilities.formatLongDuration(duration);
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
        return StaticLayoutEx.createStaticLayout(spannableStringBuilder, textPaint, i9, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.m54dp(1), false, TextUtils.TruncateAt.END, i9, i4, true);
    }

    private void didClickedImage() {
        ChatMessageCellDelegate chatMessageCellDelegate;
        TLRPC$WebPage tLRPC$WebPage;
        boolean z;
        TLRPC$MessageMedia tLRPC$MessageMedia;
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup;
        if (this.currentMessageObject.hasMediaSpoilers() && !this.currentMessageObject.isMediaSpoilersRevealed) {
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
                } else if (i3 == 4) {
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
        String secretTimeString;
        if (messageObject == null || !messageObject.needDrawBluredPreview() || (secretTimeString = messageObject.getSecretTimeString()) == null) {
            return;
        }
        int ceil = (int) Math.ceil(Theme.chat_infoPaint.measureText(secretTimeString));
        this.infoWidth = ceil;
        this.infoLayout = new StaticLayout(TextUtils.ellipsize(secretTimeString, Theme.chat_infoPaint, ceil, TextUtils.TruncateAt.END), Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPhotoDataChanged(org.telegram.messenger.MessageObject r25) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.isPhotoDataChanged(org.telegram.messenger.MessageObject):boolean");
    }

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

    /* JADX WARN: Removed duplicated region for block: B:197:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isUserDataChanged() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.isUserDataChanged():boolean");
    }

    public ImageReceiver getPhotoImage() {
        return this.photoImage;
    }

    public int getNoSoundIconCenterX() {
        return this.noSoundCenterX;
    }

    public int getForwardNameCenterX() {
        float f;
        TLRPC$User tLRPC$User = this.currentUser;
        if (tLRPC$User != null && tLRPC$User.f1574id == 0) {
            f = this.avatarImage.getCenterX();
        } else {
            f = this.forwardNameX + this.forwardNameCenterX;
        }
        return (int) f;
    }

    public int getChecksX() {
        return this.layoutWidth - AndroidUtilities.m55dp(SharedConfig.bubbleRadius >= 10 ? 27.3f : 25.3f);
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
    }

    private void checkImageReceiversAttachState(boolean z) {
        int i = 0;
        boolean z2 = this.attachedToWindow && (this.visibleOnScreen || !this.shouldCheckVisibleOnScreen);
        if (z || z2 != this.imageReceiversAttachState) {
            this.imageReceiversAttachState = z2;
            if (z2 || z) {
                this.radialProgress.onAttachedToWindow();
                this.videoRadialProgress.onAttachedToWindow();
                if (this.pollAvatarImages != null) {
                    int i2 = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr = this.pollAvatarImages;
                        if (i2 >= imageReceiverArr.length) {
                            break;
                        }
                        imageReceiverArr[i2].onAttachedToWindow();
                        i2++;
                    }
                }
                if (this.commentAvatarImages != null) {
                    int i3 = 0;
                    while (true) {
                        ImageReceiver[] imageReceiverArr2 = this.commentAvatarImages;
                        if (i3 >= imageReceiverArr2.length) {
                            break;
                        }
                        imageReceiverArr2[i3].onAttachedToWindow();
                        i3++;
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
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject != null && (this.isRoundVideo || messageObject.isVideo())) {
                    checkVideoPlayback(true, null);
                }
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2 != null && !messageObject2.mediaExists) {
                    int canDownloadMedia = DownloadController.getInstance(this.currentAccount).canDownloadMedia(this.currentMessageObject.messageOwner);
                    TLRPC$Document document = this.currentMessageObject.getDocument();
                    if (!(MessageObject.isStickerDocument(document) || MessageObject.isAnimatedStickerDocument(document, true) || MessageObject.isGifDocument(document) || MessageObject.isRoundVideoDocument(document))) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize = document == null ? FileLoader.getClosestPhotoSizeWithSize(this.currentMessageObject.photoThumbs, AndroidUtilities.getPhotoSize()) : null;
                        int i4 = 2;
                        if (canDownloadMedia == 2 || (canDownloadMedia == 1 && this.currentMessageObject.isVideo())) {
                            if (canDownloadMedia != 2 && document != null && !this.currentMessageObject.shouldEncryptPhotoOrVideo() && this.currentMessageObject.canStreamVideo()) {
                                FileLoader.getInstance(this.currentAccount).loadFile(document, this.currentMessageObject, 1, 0);
                            }
                        } else if (canDownloadMedia != 0) {
                            if (document != null) {
                                FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
                                MessageObject messageObject3 = this.currentMessageObject;
                                if (!MessageObject.isVideoDocument(document) || !this.currentMessageObject.shouldEncryptPhotoOrVideo()) {
                                    i4 = 0;
                                }
                                fileLoader.loadFile(document, messageObject3, 1, i4);
                            } else if (closestPhotoSizeWithSize != null) {
                                FileLoader fileLoader2 = FileLoader.getInstance(this.currentAccount);
                                ImageLocation forObject = ImageLocation.getForObject(closestPhotoSizeWithSize, this.currentMessageObject.photoThumbsObject);
                                MessageObject messageObject4 = this.currentMessageObject;
                                fileLoader2.loadFile(forObject, messageObject4, null, 1, messageObject4.shouldEncryptPhotoOrVideo() ? 2 : 0);
                            }
                        }
                        updateButtonState(false, false, false);
                    }
                }
                this.animatedEmojiReplyStack = AnimatedEmojiSpan.update(0, (View) this, false, this.animatedEmojiReplyStack, this.replyTextLayout);
                this.animatedEmojiDescriptionStack = AnimatedEmojiSpan.update(0, (View) this, false, this.animatedEmojiDescriptionStack, this.descriptionLayout);
                updateAnimatedEmojis();
                return;
            }
            this.radialProgress.onDetachedFromWindow();
            this.videoRadialProgress.onDetachedFromWindow();
            if (this.pollAvatarImages != null) {
                int i5 = 0;
                while (true) {
                    ImageReceiver[] imageReceiverArr3 = this.pollAvatarImages;
                    if (i5 >= imageReceiverArr3.length) {
                        break;
                    }
                    imageReceiverArr3[i5].onDetachedFromWindow();
                    i5++;
                }
            }
            if (this.commentAvatarImages != null) {
                while (true) {
                    ImageReceiver[] imageReceiverArr4 = this.commentAvatarImages;
                    if (i >= imageReceiverArr4.length) {
                        break;
                    }
                    imageReceiverArr4[i].onDetachedFromWindow();
                    i++;
                }
            }
            this.replyImageReceiver.onDetachedFromWindow();
            this.locationImageReceiver.onDetachedFromWindow();
            this.photoImage.onDetachedFromWindow();
            this.blurredPhotoImage.onDetachedFromWindow();
            cancelLoading(this.currentMessageObject);
            AnimatedEmojiSpan.release(this, this.animatedEmojiDescriptionStack);
            AnimatedEmojiSpan.release(this, this.animatedEmojiReplyStack);
            AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        }
    }

    private void cancelLoading(MessageObject messageObject) {
        if (messageObject == null || messageObject.mediaExists || messageObject.putInDownloadsStore || DownloadController.getInstance(this.currentAccount).isDownloading(messageObject.messageOwner.f1457id) || PhotoViewer.getInstance().isVisible()) {
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

    /* JADX WARN: Can't wrap try/catch for region: R(41:(1:1638)(4:1668|(1:(2:1682|1683)(5:1670|1671|1672|1673|(1:1675)(2:1676|1677)))|1678|(1:1680)(1:1681))|1639|(24:1664|664|665|(4:1583|(1:1585)(1:1626)|1586|(9:1588|(2:1590|(1:1592)(1:1624))(1:1625)|1593|(1:1595)(1:1623)|1596|(1:1602)|1603|(2:1606|(3:1610|(2:1612|(1:1614))|1615)(1:(4:1617|(1:1619)|1620|(1:1622))))|1605))|667|668|(3:1579|(1:1581)|1582)|1569|(2:1571|(1:1573))|673|(2:1557|(3:1562|(1:1564)(2:1566|(1:1568))|1565)(1:1559))(3:675|676|(2:680|(1:682)(1:1548)))|683|(1:689)(1:1547)|690|(1:1546)(1:692)|693|(1:698)|699|(8:1517|(2:1519|(1:1521))|1523|(2:1533|(1:1535)(6:1536|(1:1540)(1:1542)|1541|703|(2:705|(2:707|(2:709|(2:713|(3:718|(1:720)(1:1366)|721)(4:(1:1370)|1371|(1:1373)(1:1375)|1374))(11:1376|(2:1378|(1:1380)(1:1464))(1:1465)|1381|(1:1383)(2:1461|(3:1463|1385|(1:(4:1409|1410|(1:1412)|(5:1419|(1:1421)|1422|(1:1424)(1:1426)|1425)(2:1427|(1:1432)(1:1433)))(1:(1:(5:1443|(1:1445)|1446|(1:1448)(1:1450)|1449)(1:1451))(3:1452|(1:1454)(1:1456)|1455)))(2:1393|(1:1399)(2:(1:1403)|1404))))|1384|1385|(3:1387|(8:1406|1409|1410|(0)|(6:1415|1419|(0)|1422|(0)(0)|1425)|1427|(2:1430|1432)|1433)|(0)(0))|1457|1459|(0)|(0)(0)))(2:1466|(2:1468|(1:1470)(3:1471|(1:1473)(1:1496)|(2:1481|(1:1485)(3:1486|(1:1488)(1:1490)|1489))(3:1491|(1:1493)(1:1495)|1494)))(1:1497)))(3:1498|(1:1500)(1:1502)|1501))(2:1503|(1:1509)(2:1510|(2:(1:1516)(1:1513)|1514)))|722))|702|703|(0)(0)|722)|701|702|703|(0)(0)|722)|1642|1643|1644|(33:1659|1650|1651|665|(0)|667|668|(1:670)(4:1574|1579|(0)|1582)|1569|(0)|673|(18:1557|(19:1560|1562|(0)(0)|1565|683|(15:685|687|689|690|(11:1544|1546|693|(2:696|698)|699|(0)|701|702|703|(0)(0)|722)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722)|1547|690|(0)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722)|1559|683|(0)|1547|690|(0)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722)|675|676|(18:678|680|(0)(0)|683|(0)|1547|690|(0)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722)|1549|680|(0)(0)|683|(0)|1547|690|(0)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722)|1647|(32:1654|1655|665|(0)|667|668|(0)(0)|1569|(0)|673|(0)|675|676|(0)|1549|680|(0)(0)|683|(0)|1547|690|(0)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722)|1650|1651|665|(0)|667|668|(0)(0)|1569|(0)|673|(0)|675|676|(0)|1549|680|(0)(0)|683|(0)|1547|690|(0)|692|693|(0)|699|(0)|701|702|703|(0)(0)|722) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(3:(9:(1:4112)(1:4114)|4113|4087|4088|4089|4090|4091|4092|4093)(1:4085)|4092|4093)|4086|4087|4088|4089|4090|4091) */
    /* JADX WARN: Code restructure failed: missing block: B:10167:0x5b9b, code lost:
        if ((r1.flags & 8) == 0) goto L811;
     */
    /* JADX WARN: Code restructure failed: missing block: B:10678:0x63d0, code lost:
        if (r11.button.url.startsWith("tg://resolve") != false) goto L1119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5488:0x0097, code lost:
        if (r8.isPlayingRound == ((!org.telegram.messenger.MediaController.getInstance().isPlayingMessage(r8.currentMessageObject) || (r6 = r8.delegate) == null || r6.keyboardIsOpened()) ? false : true)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5566:0x013c, code lost:
        if (r11 != 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5571:0x0145, code lost:
        if ((r6.flags & 4) == 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5880:0x0497, code lost:
        if (r3 != 0) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6472:0x0dd6, code lost:
        if (r4.isSmall != false) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6606:0x107d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6774:0x136c, code lost:
        if (r3.revealingMediaSpoilers != false) goto L1523;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7433:0x2421, code lost:
        if (r1 >= (r8.timeWidth + org.telegram.messenger.AndroidUtilities.m54dp(20 + (!r74.isOutOwner() ? 0 : 20)))) goto L2293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9102:0x463a, code lost:
        if (r6.isSmallImage != false) goto L4086;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9110:0x465d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9111:0x465e, code lost:
        r43 = r2;
        r44 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9182:0x47bf, code lost:
        if (r6.isSmallImage != false) goto L4021;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9886:0x5559, code lost:
        if (r0.revealingMediaSpoilers != false) goto L3541;
     */
    /* JADX WARN: Multi-variable search skipped. Vars limit reached: 8157 (expected less than 5000) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10020:0x5964  */
    /* JADX WARN: Removed duplicated region for block: B:10030:0x5988  */
    /* JADX WARN: Removed duplicated region for block: B:10105:0x5a7d  */
    /* JADX WARN: Removed duplicated region for block: B:10106:0x5a7f  */
    /* JADX WARN: Removed duplicated region for block: B:10110:0x5a94 A[Catch: Exception -> 0x5ad4, TryCatch #19 {Exception -> 0x5ad4, blocks: (B:10108:0x5a83, B:10110:0x5a94, B:10112:0x5acd, B:10111:0x5aab), top: B:10730:0x5a83 }] */
    /* JADX WARN: Removed duplicated region for block: B:10111:0x5aab A[Catch: Exception -> 0x5ad4, TryCatch #19 {Exception -> 0x5ad4, blocks: (B:10108:0x5a83, B:10110:0x5a94, B:10112:0x5acd, B:10111:0x5aab), top: B:10730:0x5a83 }] */
    /* JADX WARN: Removed duplicated region for block: B:10144:0x5b36  */
    /* JADX WARN: Removed duplicated region for block: B:10145:0x5b38 A[Catch: Exception -> 0x5bf4, TryCatch #2 {Exception -> 0x5bf4, blocks: (B:10127:0x5aeb, B:10137:0x5b1e, B:10142:0x5b30, B:10150:0x5b68, B:10154:0x5b75, B:10153:0x5b6d, B:10145:0x5b38, B:10140:0x5b2a, B:10146:0x5b44, B:10130:0x5af2, B:10133:0x5af7, B:10134:0x5b0e, B:10136:0x5b16), top: B:10698:0x5aeb }] */
    /* JADX WARN: Removed duplicated region for block: B:10150:0x5b68 A[Catch: Exception -> 0x5bf4, TryCatch #2 {Exception -> 0x5bf4, blocks: (B:10127:0x5aeb, B:10137:0x5b1e, B:10142:0x5b30, B:10150:0x5b68, B:10154:0x5b75, B:10153:0x5b6d, B:10145:0x5b38, B:10140:0x5b2a, B:10146:0x5b44, B:10130:0x5af2, B:10133:0x5af7, B:10134:0x5b0e, B:10136:0x5b16), top: B:10698:0x5aeb }] */
    /* JADX WARN: Removed duplicated region for block: B:10197:0x5c01  */
    /* JADX WARN: Removed duplicated region for block: B:10207:0x5c1b  */
    /* JADX WARN: Removed duplicated region for block: B:10217:0x5c7f  */
    /* JADX WARN: Removed duplicated region for block: B:10218:0x5c81  */
    /* JADX WARN: Removed duplicated region for block: B:10229:0x5ca9  */
    /* JADX WARN: Removed duplicated region for block: B:10230:0x5caa A[Catch: Exception -> 0x5d1d, TryCatch #14 {Exception -> 0x5d1d, blocks: (B:10227:0x5ca3, B:10231:0x5cb3, B:10232:0x5ceb, B:10236:0x5cf6, B:10237:0x5cfa, B:10240:0x5d0a, B:10242:0x5d0e, B:10243:0x5d16, B:10230:0x5caa), top: B:10720:0x5ca3 }] */
    /* JADX WARN: Removed duplicated region for block: B:10235:0x5cf5  */
    /* JADX WARN: Removed duplicated region for block: B:10236:0x5cf6 A[Catch: Exception -> 0x5d1d, TryCatch #14 {Exception -> 0x5d1d, blocks: (B:10227:0x5ca3, B:10231:0x5cb3, B:10232:0x5ceb, B:10236:0x5cf6, B:10237:0x5cfa, B:10240:0x5d0a, B:10242:0x5d0e, B:10243:0x5d16, B:10230:0x5caa), top: B:10720:0x5ca3 }] */
    /* JADX WARN: Removed duplicated region for block: B:10237:0x5cfa A[Catch: Exception -> 0x5d1d, TryCatch #14 {Exception -> 0x5d1d, blocks: (B:10227:0x5ca3, B:10231:0x5cb3, B:10232:0x5ceb, B:10236:0x5cf6, B:10237:0x5cfa, B:10240:0x5d0a, B:10242:0x5d0e, B:10243:0x5d16, B:10230:0x5caa), top: B:10720:0x5ca3 }] */
    /* JADX WARN: Removed duplicated region for block: B:10250:0x5d27  */
    /* JADX WARN: Removed duplicated region for block: B:10260:0x5d47  */
    /* JADX WARN: Removed duplicated region for block: B:10267:0x5d61  */
    /* JADX WARN: Removed duplicated region for block: B:10285:0x5da3  */
    /* JADX WARN: Removed duplicated region for block: B:10289:0x5db5  */
    /* JADX WARN: Removed duplicated region for block: B:10301:0x5dd8  */
    /* JADX WARN: Removed duplicated region for block: B:10302:0x5dda  */
    /* JADX WARN: Removed duplicated region for block: B:10306:0x5df9  */
    /* JADX WARN: Removed duplicated region for block: B:10310:0x5e06  */
    /* JADX WARN: Removed duplicated region for block: B:10329:0x5e5d  */
    /* JADX WARN: Removed duplicated region for block: B:10334:0x5e7a  */
    /* JADX WARN: Removed duplicated region for block: B:10335:0x5e7c  */
    /* JADX WARN: Removed duplicated region for block: B:10342:0x5e88  */
    /* JADX WARN: Removed duplicated region for block: B:10350:0x5ea6  */
    /* JADX WARN: Removed duplicated region for block: B:10353:0x5eac  */
    /* JADX WARN: Removed duplicated region for block: B:10366:0x5ecb  */
    /* JADX WARN: Removed duplicated region for block: B:10371:0x5ee4  */
    /* JADX WARN: Removed duplicated region for block: B:10386:0x5f17  */
    /* JADX WARN: Removed duplicated region for block: B:10399:0x5f54  */
    /* JADX WARN: Removed duplicated region for block: B:10405:0x5f74  */
    /* JADX WARN: Removed duplicated region for block: B:10406:0x5f7a  */
    /* JADX WARN: Removed duplicated region for block: B:10416:0x5fb1  */
    /* JADX WARN: Removed duplicated region for block: B:10486:0x6041  */
    /* JADX WARN: Removed duplicated region for block: B:10493:0x6051  */
    /* JADX WARN: Removed duplicated region for block: B:10515:0x6089  */
    /* JADX WARN: Removed duplicated region for block: B:10550:0x60fe  */
    /* JADX WARN: Removed duplicated region for block: B:10574:0x6136  */
    /* JADX WARN: Removed duplicated region for block: B:10581:0x614b  */
    /* JADX WARN: Removed duplicated region for block: B:10594:0x6182  */
    /* JADX WARN: Removed duplicated region for block: B:10646:0x6339  */
    /* JADX WARN: Removed duplicated region for block: B:10655:0x6372  */
    /* JADX WARN: Removed duplicated region for block: B:10656:0x6373 A[Catch: Exception -> 0x63d8, TryCatch #21 {Exception -> 0x63d8, blocks: (B:10653:0x6358, B:10681:0x63d5, B:10656:0x6373, B:10662:0x638d, B:10665:0x6396, B:10668:0x639f, B:10671:0x63a8, B:10674:0x63b5, B:10677:0x63c4, B:10659:0x6380), top: B:10734:0x6358 }] */
    /* JADX WARN: Removed duplicated region for block: B:10673:0x63b4  */
    /* JADX WARN: Removed duplicated region for block: B:10674:0x63b5 A[Catch: Exception -> 0x63d8, TryCatch #21 {Exception -> 0x63d8, blocks: (B:10653:0x6358, B:10681:0x63d5, B:10656:0x6373, B:10662:0x638d, B:10665:0x6396, B:10668:0x639f, B:10671:0x63a8, B:10674:0x63b5, B:10677:0x63c4, B:10659:0x6380), top: B:10734:0x6358 }] */
    /* JADX WARN: Removed duplicated region for block: B:10684:0x63f3  */
    /* JADX WARN: Removed duplicated region for block: B:10696:0x5bde A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10711:0x456f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10753:0x57d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10765:0x0f42 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10766:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10780:0x5b16 A[EDGE_INSN: B:10780:0x5b16->B:10136:0x5b16 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10873:0x051c A[EDGE_INSN: B:10873:0x051c->B:5905:0x051c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5533:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:5534:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:5537:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:5544:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:5550:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:5576:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:5582:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:5587:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:5588:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:5600:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:5607:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:5618:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:5639:0x01df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5665:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:5670:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:5677:0x0252 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5681:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:5682:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:5685:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:5686:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:5690:0x0277 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5713:0x02be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5719:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:5726:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:5730:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:5745:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:5757:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:5772:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:5773:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:5777:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:5790:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:5809:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:5821:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:5822:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:5826:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:5836:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:5843:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:5852:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:5898:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:5902:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:5906:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:5916:0x0573 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5924:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:5934:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:5941:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:5945:0x05fc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5954:0x0634  */
    /* JADX WARN: Removed duplicated region for block: B:5963:0x0645  */
    /* JADX WARN: Removed duplicated region for block: B:5968:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:5969:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:5972:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:5973:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:5980:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:5993:0x069f  */
    /* JADX WARN: Removed duplicated region for block: B:6000:0x06c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6010:0x06db A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6011:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:6019:0x06fb  */
    /* JADX WARN: Removed duplicated region for block: B:6024:0x0707 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6030:0x0746  */
    /* JADX WARN: Removed duplicated region for block: B:6031:0x0748  */
    /* JADX WARN: Removed duplicated region for block: B:6036:0x0754  */
    /* JADX WARN: Removed duplicated region for block: B:6039:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:6081:0x085b  */
    /* JADX WARN: Removed duplicated region for block: B:6082:0x085e  */
    /* JADX WARN: Removed duplicated region for block: B:6085:0x086f  */
    /* JADX WARN: Removed duplicated region for block: B:6090:0x08ad  */
    /* JADX WARN: Removed duplicated region for block: B:6096:0x08b9  */
    /* JADX WARN: Removed duplicated region for block: B:6099:0x08c5  */
    /* JADX WARN: Removed duplicated region for block: B:6100:0x08cc  */
    /* JADX WARN: Removed duplicated region for block: B:6105:0x090e  */
    /* JADX WARN: Removed duplicated region for block: B:6264:0x0b04  */
    /* JADX WARN: Removed duplicated region for block: B:6267:0x0b0e  */
    /* JADX WARN: Removed duplicated region for block: B:6299:0x0b82  */
    /* JADX WARN: Removed duplicated region for block: B:6365:0x0c1c  */
    /* JADX WARN: Removed duplicated region for block: B:6406:0x0cb5  */
    /* JADX WARN: Removed duplicated region for block: B:6407:0x0cbd  */
    /* JADX WARN: Removed duplicated region for block: B:6417:0x0ceb  */
    /* JADX WARN: Removed duplicated region for block: B:6420:0x0d10  */
    /* JADX WARN: Removed duplicated region for block: B:6421:0x0d13  */
    /* JADX WARN: Removed duplicated region for block: B:6424:0x0d1b  */
    /* JADX WARN: Removed duplicated region for block: B:6425:0x0d1d  */
    /* JADX WARN: Removed duplicated region for block: B:6429:0x0d29  */
    /* JADX WARN: Removed duplicated region for block: B:6432:0x0d30  */
    /* JADX WARN: Removed duplicated region for block: B:6443:0x0d5e  */
    /* JADX WARN: Removed duplicated region for block: B:6454:0x0d83  */
    /* JADX WARN: Removed duplicated region for block: B:6481:0x0df1  */
    /* JADX WARN: Removed duplicated region for block: B:6483:0x0dfc  */
    /* JADX WARN: Removed duplicated region for block: B:6618:0x1092  */
    /* JADX WARN: Removed duplicated region for block: B:6674:0x11bd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6675:0x11bf  */
    /* JADX WARN: Removed duplicated region for block: B:6686:0x11da  */
    /* JADX WARN: Removed duplicated region for block: B:6693:0x11f6  */
    /* JADX WARN: Removed duplicated region for block: B:6699:0x121b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6710:0x1260  */
    /* JADX WARN: Removed duplicated region for block: B:6711:0x1262  */
    /* JADX WARN: Removed duplicated region for block: B:6719:0x12c4  */
    /* JADX WARN: Removed duplicated region for block: B:6733:0x12e0  */
    /* JADX WARN: Removed duplicated region for block: B:6734:0x12f6  */
    /* JADX WARN: Removed duplicated region for block: B:6738:0x1326  */
    /* JADX WARN: Removed duplicated region for block: B:6748:0x1337 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6757:0x1347 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6767:0x135a  */
    /* JADX WARN: Removed duplicated region for block: B:6804:0x13b5  */
    /* JADX WARN: Removed duplicated region for block: B:6886:0x159e  */
    /* JADX WARN: Removed duplicated region for block: B:6896:0x15b5  */
    /* JADX WARN: Removed duplicated region for block: B:6912:0x1629  */
    /* JADX WARN: Removed duplicated region for block: B:6920:0x1666  */
    /* JADX WARN: Removed duplicated region for block: B:6941:0x16fd  */
    /* JADX WARN: Removed duplicated region for block: B:6944:0x1709  */
    /* JADX WARN: Removed duplicated region for block: B:6945:0x170c  */
    /* JADX WARN: Removed duplicated region for block: B:6988:0x182e  */
    /* JADX WARN: Removed duplicated region for block: B:7377:0x21f7  */
    /* JADX WARN: Removed duplicated region for block: B:7441:0x243a  */
    /* JADX WARN: Removed duplicated region for block: B:7482:0x2646  */
    /* JADX WARN: Removed duplicated region for block: B:7483:0x2652  */
    /* JADX WARN: Removed duplicated region for block: B:7496:0x2671  */
    /* JADX WARN: Removed duplicated region for block: B:7509:0x26b5  */
    /* JADX WARN: Removed duplicated region for block: B:7510:0x26b8  */
    /* JADX WARN: Removed duplicated region for block: B:7514:0x26d2  */
    /* JADX WARN: Removed duplicated region for block: B:7534:0x274c  */
    /* JADX WARN: Removed duplicated region for block: B:7544:0x27ab  */
    /* JADX WARN: Removed duplicated region for block: B:7588:0x28c8  */
    /* JADX WARN: Removed duplicated region for block: B:7589:0x28ca  */
    /* JADX WARN: Removed duplicated region for block: B:7594:0x28d7  */
    /* JADX WARN: Removed duplicated region for block: B:7599:0x28e3  */
    /* JADX WARN: Removed duplicated region for block: B:7604:0x28f1  */
    /* JADX WARN: Removed duplicated region for block: B:7613:0x2912  */
    /* JADX WARN: Removed duplicated region for block: B:7619:0x2925  */
    /* JADX WARN: Removed duplicated region for block: B:7645:0x2989  */
    /* JADX WARN: Removed duplicated region for block: B:7649:0x29a2  */
    /* JADX WARN: Removed duplicated region for block: B:7655:0x29ae  */
    /* JADX WARN: Removed duplicated region for block: B:7696:0x2a39  */
    /* JADX WARN: Removed duplicated region for block: B:7703:0x2a4e  */
    /* JADX WARN: Removed duplicated region for block: B:7725:0x2a96  */
    /* JADX WARN: Removed duplicated region for block: B:7730:0x2abd  */
    /* JADX WARN: Removed duplicated region for block: B:7731:0x2abf  */
    /* JADX WARN: Removed duplicated region for block: B:7735:0x2ad7  */
    /* JADX WARN: Removed duplicated region for block: B:7748:0x2b0b  */
    /* JADX WARN: Removed duplicated region for block: B:7759:0x2b21  */
    /* JADX WARN: Removed duplicated region for block: B:7772:0x2b44  */
    /* JADX WARN: Removed duplicated region for block: B:7776:0x2b60  */
    /* JADX WARN: Removed duplicated region for block: B:7779:0x2b6f  */
    /* JADX WARN: Removed duplicated region for block: B:7780:0x2b72  */
    /* JADX WARN: Removed duplicated region for block: B:7793:0x2b9e  */
    /* JADX WARN: Removed duplicated region for block: B:7797:0x2bb6  */
    /* JADX WARN: Removed duplicated region for block: B:7802:0x2bc3  */
    /* JADX WARN: Removed duplicated region for block: B:7818:0x2bf9  */
    /* JADX WARN: Removed duplicated region for block: B:7819:0x2bfb  */
    /* JADX WARN: Removed duplicated region for block: B:7823:0x2c0e  */
    /* JADX WARN: Removed duplicated region for block: B:7826:0x2c1b  */
    /* JADX WARN: Removed duplicated region for block: B:7827:0x2c1d  */
    /* JADX WARN: Removed duplicated region for block: B:7853:0x2c74  */
    /* JADX WARN: Removed duplicated region for block: B:7886:0x2cd7  */
    /* JADX WARN: Removed duplicated region for block: B:8428:0x387f  */
    /* JADX WARN: Removed duplicated region for block: B:8433:0x388d  */
    /* JADX WARN: Removed duplicated region for block: B:8436:0x389a  */
    /* JADX WARN: Removed duplicated region for block: B:8445:0x38e1  */
    /* JADX WARN: Removed duplicated region for block: B:8485:0x39c4  */
    /* JADX WARN: Removed duplicated region for block: B:8488:0x39d2  */
    /* JADX WARN: Removed duplicated region for block: B:8495:0x3a08  */
    /* JADX WARN: Removed duplicated region for block: B:8499:0x3a12  */
    /* JADX WARN: Removed duplicated region for block: B:8505:0x3a4f  */
    /* JADX WARN: Removed duplicated region for block: B:8561:0x3c18  */
    /* JADX WARN: Removed duplicated region for block: B:8774:0x3fc8 A[Catch: Exception -> 0x3f79, TRY_LEAVE, TryCatch #34 {Exception -> 0x3f79, blocks: (B:8771:0x3fbd, B:8774:0x3fc8, B:8770:0x3fb0), top: B:10759:0x3fb0 }] */
    /* JADX WARN: Removed duplicated region for block: B:8781:0x3fec A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:8782:0x3fed A[Catch: Exception -> 0x3db6, TryCatch #3 {Exception -> 0x3db6, blocks: (B:8779:0x3fe4, B:8786:0x4009, B:8782:0x3fed, B:8785:0x3ffa, B:8778:0x3fd7, B:8788:0x4035, B:8795:0x4074, B:8802:0x4097, B:8809:0x40bc, B:8811:0x40c3, B:8813:0x40cf, B:8812:0x40ca, B:8805:0x40a0, B:8808:0x40ad, B:8798:0x407d, B:8801:0x408a, B:8791:0x4053, B:8794:0x405f), top: B:10700:0x3f6d }] */
    /* JADX WARN: Removed duplicated region for block: B:8847:0x41c4  */
    /* JADX WARN: Removed duplicated region for block: B:8855:0x41d4  */
    /* JADX WARN: Removed duplicated region for block: B:8864:0x421c  */
    /* JADX WARN: Removed duplicated region for block: B:8865:0x421e  */
    /* JADX WARN: Removed duplicated region for block: B:8873:0x4255  */
    /* JADX WARN: Removed duplicated region for block: B:8880:0x4279  */
    /* JADX WARN: Removed duplicated region for block: B:8891:0x42a6  */
    /* JADX WARN: Removed duplicated region for block: B:8895:0x42c9  */
    /* JADX WARN: Removed duplicated region for block: B:8899:0x42dc  */
    /* JADX WARN: Removed duplicated region for block: B:8906:0x42ed  */
    /* JADX WARN: Removed duplicated region for block: B:8914:0x4308  */
    /* JADX WARN: Removed duplicated region for block: B:8918:0x432c  */
    /* JADX WARN: Removed duplicated region for block: B:8921:0x4344  */
    /* JADX WARN: Removed duplicated region for block: B:8927:0x4361  */
    /* JADX WARN: Removed duplicated region for block: B:8933:0x437d  */
    /* JADX WARN: Removed duplicated region for block: B:8945:0x43e6  */
    /* JADX WARN: Removed duplicated region for block: B:8960:0x4416 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:8961:0x4418  */
    /* JADX WARN: Removed duplicated region for block: B:8967:0x442a  */
    /* JADX WARN: Removed duplicated region for block: B:8968:0x442d  */
    /* JADX WARN: Removed duplicated region for block: B:8975:0x4441 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:8980:0x4453  */
    /* JADX WARN: Removed duplicated region for block: B:8984:0x446b  */
    /* JADX WARN: Removed duplicated region for block: B:9011:0x44b8  */
    /* JADX WARN: Removed duplicated region for block: B:9036:0x44e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9045:0x4508  */
    /* JADX WARN: Removed duplicated region for block: B:9055:0x4535  */
    /* JADX WARN: Removed duplicated region for block: B:9059:0x4542  */
    /* JADX WARN: Removed duplicated region for block: B:9060:0x454a  */
    /* JADX WARN: Removed duplicated region for block: B:9064:0x4555 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9068:0x455e  */
    /* JADX WARN: Removed duplicated region for block: B:9143:0x46f1  */
    /* JADX WARN: Removed duplicated region for block: B:9144:0x46f3  */
    /* JADX WARN: Removed duplicated region for block: B:9147:0x46fa  */
    /* JADX WARN: Removed duplicated region for block: B:9152:0x4707  */
    /* JADX WARN: Removed duplicated region for block: B:9154:0x470d  */
    /* JADX WARN: Removed duplicated region for block: B:9209:0x4815  */
    /* JADX WARN: Removed duplicated region for block: B:9215:0x4824 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9219:0x482d  */
    /* JADX WARN: Removed duplicated region for block: B:9220:0x482e A[Catch: Exception -> 0x48db, TRY_LEAVE, TryCatch #10 {Exception -> 0x48db, blocks: (B:9217:0x4829, B:9225:0x4856, B:9230:0x4879, B:9231:0x488e, B:9233:0x48b6, B:9234:0x48c5, B:9229:0x485d, B:9220:0x482e), top: B:10713:0x4829 }] */
    /* JADX WARN: Removed duplicated region for block: B:9233:0x48b6 A[Catch: Exception -> 0x48db, TryCatch #10 {Exception -> 0x48db, blocks: (B:9217:0x4829, B:9225:0x4856, B:9230:0x4879, B:9231:0x488e, B:9233:0x48b6, B:9234:0x48c5, B:9229:0x485d, B:9220:0x482e), top: B:10713:0x4829 }] */
    /* JADX WARN: Removed duplicated region for block: B:9234:0x48c5 A[Catch: Exception -> 0x48db, TRY_LEAVE, TryCatch #10 {Exception -> 0x48db, blocks: (B:9217:0x4829, B:9225:0x4856, B:9230:0x4879, B:9231:0x488e, B:9233:0x48b6, B:9234:0x48c5, B:9229:0x485d, B:9220:0x482e), top: B:10713:0x4829 }] */
    /* JADX WARN: Removed duplicated region for block: B:9245:0x48e2  */
    /* JADX WARN: Removed duplicated region for block: B:9246:0x48e6  */
    /* JADX WARN: Removed duplicated region for block: B:9264:0x492e  */
    /* JADX WARN: Removed duplicated region for block: B:9265:0x4930  */
    /* JADX WARN: Removed duplicated region for block: B:9268:0x4937  */
    /* JADX WARN: Removed duplicated region for block: B:9269:0x4939  */
    /* JADX WARN: Removed duplicated region for block: B:9272:0x493e  */
    /* JADX WARN: Removed duplicated region for block: B:9273:0x4941  */
    /* JADX WARN: Removed duplicated region for block: B:9277:0x4964  */
    /* JADX WARN: Removed duplicated region for block: B:9278:0x4967  */
    /* JADX WARN: Removed duplicated region for block: B:9287:0x49bb A[Catch: Exception -> 0x4a40, TryCatch #36 {Exception -> 0x4a40, blocks: (B:9257:0x491a, B:9262:0x4928, B:9266:0x4931, B:9270:0x493a, B:9274:0x4945, B:9280:0x497a, B:9281:0x49a2, B:9283:0x49aa, B:9284:0x49b1, B:9287:0x49bb, B:9296:0x49d6, B:9308:0x49f9, B:9309:0x49fc, B:9319:0x4a16, B:9317:0x4a0e, B:9314:0x4a04, B:9305:0x49f4, B:9298:0x49e9, B:9290:0x49ca, B:9293:0x49cf, B:9320:0x4a1d, B:9323:0x4a2c, B:9325:0x4a30, B:9326:0x4a38, B:9260:0x4924, B:9275:0x4950, B:9279:0x496b), top: B:10763:0x491a }] */
    /* JADX WARN: Removed duplicated region for block: B:9311:0x4a00  */
    /* JADX WARN: Removed duplicated region for block: B:9312:0x4a01  */
    /* JADX WARN: Removed duplicated region for block: B:9320:0x4a1d A[Catch: Exception -> 0x4a40, TryCatch #36 {Exception -> 0x4a40, blocks: (B:9257:0x491a, B:9262:0x4928, B:9266:0x4931, B:9270:0x493a, B:9274:0x4945, B:9280:0x497a, B:9281:0x49a2, B:9283:0x49aa, B:9284:0x49b1, B:9287:0x49bb, B:9296:0x49d6, B:9308:0x49f9, B:9309:0x49fc, B:9319:0x4a16, B:9317:0x4a0e, B:9314:0x4a04, B:9305:0x49f4, B:9298:0x49e9, B:9290:0x49ca, B:9293:0x49cf, B:9320:0x4a1d, B:9323:0x4a2c, B:9325:0x4a30, B:9326:0x4a38, B:9260:0x4924, B:9275:0x4950, B:9279:0x496b), top: B:10763:0x491a }] */
    /* JADX WARN: Removed duplicated region for block: B:9336:0x4a4b  */
    /* JADX WARN: Removed duplicated region for block: B:9344:0x4a5c  */
    /* JADX WARN: Removed duplicated region for block: B:9346:0x4a5f  */
    /* JADX WARN: Removed duplicated region for block: B:9370:0x4ab1  */
    /* JADX WARN: Removed duplicated region for block: B:9371:0x4ab3  */
    /* JADX WARN: Removed duplicated region for block: B:9374:0x4ac0  */
    /* JADX WARN: Removed duplicated region for block: B:9375:0x4ac2  */
    /* JADX WARN: Removed duplicated region for block: B:9378:0x4acb  */
    /* JADX WARN: Removed duplicated region for block: B:9379:0x4ace  */
    /* JADX WARN: Removed duplicated region for block: B:9383:0x4adf  */
    /* JADX WARN: Removed duplicated region for block: B:9384:0x4ae3  */
    /* JADX WARN: Removed duplicated region for block: B:9626:0x5038  */
    /* JADX WARN: Removed duplicated region for block: B:9645:0x506e  */
    /* JADX WARN: Removed duplicated region for block: B:9675:0x50df  */
    /* JADX WARN: Removed duplicated region for block: B:9678:0x50f4  */
    /* JADX WARN: Removed duplicated region for block: B:9701:0x5132  */
    /* JADX WARN: Removed duplicated region for block: B:9705:0x513d  */
    /* JADX WARN: Removed duplicated region for block: B:9711:0x514e  */
    /* JADX WARN: Removed duplicated region for block: B:9712:0x5150  */
    /* JADX WARN: Removed duplicated region for block: B:9715:0x515f  */
    /* JADX WARN: Removed duplicated region for block: B:9718:0x5167  */
    /* JADX WARN: Removed duplicated region for block: B:9725:0x5176  */
    /* JADX WARN: Removed duplicated region for block: B:9728:0x5184  */
    /* JADX WARN: Removed duplicated region for block: B:9737:0x5197  */
    /* JADX WARN: Removed duplicated region for block: B:9741:0x51aa  */
    /* JADX WARN: Removed duplicated region for block: B:9753:0x51db  */
    /* JADX WARN: Removed duplicated region for block: B:9757:0x51e8  */
    /* JADX WARN: Removed duplicated region for block: B:9761:0x51f0  */
    /* JADX WARN: Removed duplicated region for block: B:9765:0x5209  */
    /* JADX WARN: Removed duplicated region for block: B:9769:0x5219  */
    /* JADX WARN: Removed duplicated region for block: B:9780:0x5253  */
    /* JADX WARN: Removed duplicated region for block: B:9781:0x5265  */
    /* JADX WARN: Removed duplicated region for block: B:9789:0x5298  */
    /* JADX WARN: Removed duplicated region for block: B:9795:0x52f6  */
    /* JADX WARN: Removed duplicated region for block: B:9945:0x5745  */
    /* JADX WARN: Removed duplicated region for block: B:9949:0x5772  */
    /* JADX WARN: Removed duplicated region for block: B:9950:0x5774  */
    /* JADX WARN: Removed duplicated region for block: B:9954:0x578d  */
    /* JADX WARN: Removed duplicated region for block: B:9967:0x57bf  */
    /* JADX WARN: Removed duplicated region for block: B:9993:0x580a  */
    /* JADX WARN: Removed duplicated region for block: B:9998:0x586c  */
    /* JADX WARN: Removed duplicated region for block: B:9999:0x5871  */
    /* JADX WARN: Type inference failed for: r0v1576, types: [org.telegram.ui.Components.SeekBar] */
    /* JADX WARN: Type inference failed for: r0v806, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v814, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v815, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r0v820, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v103 */
    /* JADX WARN: Type inference failed for: r11v112 */
    /* JADX WARN: Type inference failed for: r11v113, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v114 */
    /* JADX WARN: Type inference failed for: r11v136 */
    /* JADX WARN: Type inference failed for: r11v21, types: [android.graphics.PorterDuff$Mode] */
    /* JADX WARN: Type inference failed for: r11v211 */
    /* JADX WARN: Type inference failed for: r11v212 */
    /* JADX WARN: Type inference failed for: r11v219 */
    /* JADX WARN: Type inference failed for: r11v220 */
    /* JADX WARN: Type inference failed for: r11v221 */
    /* JADX WARN: Type inference failed for: r11v222 */
    /* JADX WARN: Type inference failed for: r11v227 */
    /* JADX WARN: Type inference failed for: r11v237 */
    /* JADX WARN: Type inference failed for: r11v238 */
    /* JADX WARN: Type inference failed for: r11v240 */
    /* JADX WARN: Type inference failed for: r11v241 */
    /* JADX WARN: Type inference failed for: r11v251, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r11v255 */
    /* JADX WARN: Type inference failed for: r11v351, types: [org.telegram.messenger.UserConfig] */
    /* JADX WARN: Type inference failed for: r11v364, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v417 */
    /* JADX WARN: Type inference failed for: r11v418 */
    /* JADX WARN: Type inference failed for: r11v419 */
    /* JADX WARN: Type inference failed for: r11v420 */
    /* JADX WARN: Type inference failed for: r11v421 */
    /* JADX WARN: Type inference failed for: r11v437 */
    /* JADX WARN: Type inference failed for: r11v438 */
    /* JADX WARN: Type inference failed for: r11v477 */
    /* JADX WARN: Type inference failed for: r11v478 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [int[]] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r12v90 */
    /* JADX WARN: Type inference failed for: r12v91, types: [int] */
    /* JADX WARN: Type inference failed for: r13v153, types: [int] */
    /* JADX WARN: Type inference failed for: r13v154 */
    /* JADX WARN: Type inference failed for: r13v155, types: [int] */
    /* JADX WARN: Type inference failed for: r13v329 */
    /* JADX WARN: Type inference failed for: r13v330 */
    /* JADX WARN: Type inference failed for: r14v106 */
    /* JADX WARN: Type inference failed for: r14v107, types: [int] */
    /* JADX WARN: Type inference failed for: r14v109, types: [int] */
    /* JADX WARN: Type inference failed for: r15v115, types: [org.telegram.tgnet.TLRPC$InputStickerSet] */
    /* JADX WARN: Type inference failed for: r1v693, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v696, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v698, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v702, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v726, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v847 */
    /* JADX WARN: Type inference failed for: r2v848 */
    /* JADX WARN: Type inference failed for: r3v101, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r3v24, types: [android.graphics.drawable.Drawable[]] */
    /* JADX WARN: Type inference failed for: r3v25, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r4v291 */
    /* JADX WARN: Type inference failed for: r4v292 */
    /* JADX WARN: Type inference failed for: r4v526 */
    /* JADX WARN: Type inference failed for: r56v22 */
    /* JADX WARN: Type inference failed for: r56v23, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r56v24 */
    /* JADX WARN: Type inference failed for: r58v11 */
    /* JADX WARN: Type inference failed for: r58v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r58v13 */
    /* JADX WARN: Type inference failed for: r58v14 */
    /* JADX WARN: Type inference failed for: r58v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r58v16 */
    /* JADX WARN: Type inference failed for: r5v270, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r5v294 */
    /* JADX WARN: Type inference failed for: r5v498 */
    /* JADX WARN: Type inference failed for: r61v3 */
    /* JADX WARN: Type inference failed for: r61v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r61v5 */
    /* JADX WARN: Type inference failed for: r6v120, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v124 */
    /* JADX WARN: Type inference failed for: r8v126, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r8v130 */
    /* JADX WARN: Type inference failed for: r8v132 */
    /* JADX WARN: Type inference failed for: r8v144, types: [android.graphics.Canvas, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v173, types: [android.graphics.Bitmap, org.telegram.tgnet.TLRPC$Document, java.lang.Object, org.telegram.tgnet.TLRPC$PhotoSize, android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r8v179, types: [org.telegram.messenger.WebFile, android.text.StaticLayout, java.lang.Long, org.telegram.ui.Components.LoadingDrawable, org.telegram.ui.Components.LinkPath, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v180 */
    /* JADX WARN: Type inference failed for: r8v181 */
    /* JADX WARN: Type inference failed for: r8v183 */
    /* JADX WARN: Type inference failed for: r8v184 */
    /* JADX WARN: Type inference failed for: r8v185 */
    /* JADX WARN: Type inference failed for: r8v186 */
    /* JADX WARN: Type inference failed for: r8v22, types: [java.lang.CharSequence] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageContent(org.telegram.messenger.MessageObject r74, org.telegram.messenger.MessageObject.GroupedMessages r75, boolean r76, boolean r77) {
        /*
            Method dump skipped, instructions count: 25632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.setMessageContent(org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject$GroupedMessages, boolean, boolean):void");
    }

    public /* synthetic */ void lambda$setMessageContent$11(TLRPC$User tLRPC$User, int i, TLRPC$Chat tLRPC$Chat, long j) {
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

    public static /* synthetic */ int lambda$setMessageContent$12(PollButton pollButton, PollButton pollButton2) {
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
                FileLog.m49e(e);
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
                FlagSecureReason flagSecureReason = new FlagSecureReason(window, new FlagSecureReason.FlagSecureCondition() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda15
                    @Override // org.telegram.messenger.FlagSecureReason.FlagSecureCondition
                    public final boolean run() {
                        boolean lambda$updateFlagSecure$13;
                        lambda$updateFlagSecure$13 = ChatMessageCell.this.lambda$updateFlagSecure$13();
                        return lambda$updateFlagSecure$13;
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

    public /* synthetic */ boolean lambda$updateFlagSecure$13() {
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

    @Override // org.telegram.p044ui.Cells.BaseCell
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
                    {
                        ChatMessageCell.this = this;
                    }

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
                            @Override // org.telegram.p044ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
                            public void onAnimationEnd() {
                            }

                            {
                                C36316.this = this;
                            }

                            @Override // org.telegram.p044ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
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
                    if (tLRPC$User.f1574id != 0) {
                        if (SharedConfig.isExtendedAvatarPreviewerEnabled && SharedConfig.isExtendedAvatarPreviewerByTapEnabled) {
                            chatMessageCellDelegate.didPressUserAvatar(this, tLRPC$User, this.lastTouchX, this.lastTouchY);
                            z = true;
                        } else {
                            z = chatMessageCellDelegate.didLongPressUserAvatar(this, tLRPC$User, this.lastTouchX, this.lastTouchY);
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

    @Override // android.view.View, org.telegram.p044ui.Cells.TextSelectionHelper.SelectableView
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

    @Override // org.telegram.p044ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarPressed() {
        requestDisallowInterceptTouchEvent(true);
    }

    @Override // org.telegram.p044ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarReleased() {
        requestDisallowInterceptTouchEvent(false);
    }

    @Override // org.telegram.p044ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarDrag(float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.audioProgress = f;
        MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        updatePlayingMessageProgress();
    }

    @Override // org.telegram.p044ui.Components.SeekBar.SeekBarDelegate
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
                if (messageObject3 == null || ((messageObject3.isOutOwner() && !this.currentMessageObject.isSent()) || ((!UserConfig.getInstance(this.currentAccount).isPremium() && !isAllowForkTranscribe() && (MessagesController.getInstance(this.currentAccount).didPressTranscribeButtonEnough() || this.currentMessageObject.isOutOwner() || ((((tLRPC$Message2 = (messageObject = this.currentMessageObject).messageOwner) == null || !tLRPC$Message2.voiceTranscriptionForce) && messageObject.getDuration() < 60) || MessagesController.getInstance(this.currentAccount).premiumLocked))) || (((!this.currentMessageObject.isVoice() || !this.useSeekBarWaveform) && !this.currentMessageObject.isRoundVideo()) || (tLRPC$Message = this.currentMessageObject.messageOwner) == null || (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaWebPage))))) {
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
        int i2 = -AndroidUtilities.m54dp((this.hasLinkPreview ? 10 : 0) + 92);
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateBackgroundBoundsInner && ((i = this.documentAttachType) == 3 || i == 7)) {
            int i3 = this.backgroundWidth;
            int i4 = (int) ((i3 - transitionParams.toDeltaLeft) + transitionParams.toDeltaRight);
            int i5 = (int) ((i3 - transitionParams.deltaLeft) + transitionParams.deltaRight);
            if (this.isRoundVideo && !this.drawBackground) {
                i5 = (int) (i5 + (getVideoTranscriptionProgress() * AndroidUtilities.m54dp(8)));
                i4 += AndroidUtilities.m54dp(8);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (transitionParams2.toDeltaLeft == BitmapDescriptorFactory.HUE_RED && transitionParams2.toDeltaRight == BitmapDescriptorFactory.HUE_RED) {
                i4 = i5;
            }
            SeekBarWaveform seekBarWaveform = this.seekBarWaveform;
            if (seekBarWaveform != null) {
                if (transitionParams2.animateUseTranscribeButton) {
                    seekBarWaveform.setSize((i5 + i2) - ((int) (AndroidUtilities.m54dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m54dp(30), i3 + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m54dp(34) : 0), i4 + i2 + (this.useTranscribeButton ? -AndroidUtilities.m54dp(34) : 0));
                } else {
                    seekBarWaveform.setSize((i5 + i2) - ((int) (AndroidUtilities.m54dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m54dp(30), (i3 + i2) - ((int) (AndroidUtilities.m54dp(34) * getUseTranscribeButtonProgress())), (i4 + i2) - ((int) (AndroidUtilities.m54dp(34) * getUseTranscribeButtonProgress())));
                }
            }
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.setSize((i5 - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m54dp(34)))) - AndroidUtilities.m54dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 10 : 0)), AndroidUtilities.m54dp(30));
                return;
            }
            return;
        }
        SeekBarWaveform seekBarWaveform2 = this.seekBarWaveform;
        if (seekBarWaveform2 != null) {
            if (transitionParams.animateUseTranscribeButton) {
                seekBarWaveform2.setSize((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m54dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m54dp(30), this.backgroundWidth + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m54dp(34) : 0), this.backgroundWidth + i2 + (this.useTranscribeButton ? -AndroidUtilities.m54dp(34) : 0));
            } else {
                seekBarWaveform2.setSize((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m54dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m54dp(30));
            }
        }
        SeekBar seekBar2 = this.seekBar;
        if (seekBar2 != null) {
            seekBar2.setSize((this.backgroundWidth - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m54dp(34)))) - AndroidUtilities.m54dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 10 : 0)), AndroidUtilities.m54dp(30));
        }
    }

    private int createDocumentLayout(int i, MessageObject messageObject) {
        int i2;
        int i3;
        int i4 = i;
        if (messageObject.type == 0) {
            this.documentAttach = MessageObject.getMedia(messageObject.messageOwner).webpage.document;
        } else {
            this.documentAttach = messageObject.getDocument();
        }
        TLRPC$Document tLRPC$Document = this.documentAttach;
        int i5 = 0;
        if (tLRPC$Document == null) {
            return 0;
        }
        if (MessageObject.isVoiceDocument(tLRPC$Document)) {
            this.documentAttachType = 3;
            int i6 = 0;
            while (true) {
                if (i6 >= this.documentAttach.attributes.size()) {
                    i3 = 0;
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = this.documentAttach.attributes.get(i6);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeAudio) {
                    i3 = tLRPC$DocumentAttribute.duration;
                    break;
                }
                i6++;
            }
            this.widthBeforeNewTimeLine = (i4 - AndroidUtilities.m54dp(94)) - ((int) Math.ceil(Theme.chat_audioTimePaint.measureText("00:00")));
            this.availableTimeWidth = i4 - AndroidUtilities.m54dp(18);
            measureTime(messageObject);
            int m54dp = AndroidUtilities.m54dp(174) + this.timeWidth;
            if (!this.hasLinkPreview) {
                this.backgroundWidth = Math.min(i4, m54dp + ((int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatLongDuration(i3)))));
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
            int m54dp2 = i4 - AndroidUtilities.m54dp(92);
            if (m54dp2 < 0) {
                m54dp2 = AndroidUtilities.m54dp(100);
            }
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicTitle().replace('\n', ' '), Theme.chat_audioTitlePaint, m54dp2 - AndroidUtilities.m54dp(12), TextUtils.TruncateAt.END), Theme.chat_audioTitlePaint, m54dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.songLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                this.songX = -((int) Math.ceil(this.songLayout.getLineLeft(0)));
            }
            StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicAuthor().replace('\n', ' '), Theme.chat_audioPerformerPaint, m54dp2, TextUtils.TruncateAt.END), Theme.chat_audioPerformerPaint, m54dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.performerLayout = staticLayout2;
            if (staticLayout2.getLineCount() > 0) {
                this.performerX = -((int) Math.ceil(this.performerLayout.getLineLeft(0)));
            }
            int m54dp3 = m54dp2 - AndroidUtilities.m54dp(30);
            TextPaint textPaint = Theme.chat_infoPaint;
            int min = Math.min(m54dp3, (int) Math.ceil(textPaint.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min;
            if (min < 0) {
                try {
                    this.infoWidth = AndroidUtilities.m54dp(10);
                } catch (Exception e) {
                    FileLog.m49e(e);
                }
            }
            this.infoLayout = new StaticLayout(TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size), Theme.chat_infoPaint, this.infoWidth, TextUtils.TruncateAt.END), Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            int i7 = 0;
            while (true) {
                if (i7 >= this.documentAttach.attributes.size()) {
                    break;
                }
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = this.documentAttach.attributes.get(i7);
                if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeAudio) {
                    i5 = tLRPC$DocumentAttribute2.duration;
                    break;
                }
                i7++;
            }
            int ceil = (int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatShortDuration(i5, i5)));
            this.widthBeforeNewTimeLine = (this.backgroundWidth - AndroidUtilities.m54dp(86)) - ceil;
            this.availableTimeWidth = this.backgroundWidth - AndroidUtilities.m54dp(28);
            return ceil;
        } else if (MessageObject.isGifDocument(this.documentAttach, messageObject.hasValidGroupId())) {
            this.documentAttachType = 2;
            if (!messageObject.needDrawBluredPreview()) {
                String string = LocaleController.getString("AttachGif", C3290R.string.AttachGif);
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
                i4 += AndroidUtilities.m54dp(30);
            }
            this.documentAttachType = 1;
            String documentFileName = FileLoader.getDocumentFileName(this.documentAttach);
            this.isBackupFile = BackupController.isBackupFileName(documentFileName);
            if (documentFileName.length() == 0) {
                documentFileName = LocaleController.getString("AttachDocument", C3290R.string.AttachDocument);
            }
            StaticLayout createStaticLayout = StaticLayoutEx.createStaticLayout(documentFileName, Theme.chat_docNamePaint, i4, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false, TextUtils.TruncateAt.MIDDLE, i4, 2, false);
            this.docTitleLayout = createStaticLayout;
            this.docTitleOffsetX = Integer.MIN_VALUE;
            if (createStaticLayout != null && createStaticLayout.getLineCount() > 0) {
                int i8 = 0;
                while (i5 < this.docTitleLayout.getLineCount()) {
                    i8 = Math.max(i8, (int) Math.ceil(this.docTitleLayout.getLineWidth(i5)));
                    this.docTitleOffsetX = Math.max(this.docTitleOffsetX, (int) Math.ceil(-this.docTitleLayout.getLineLeft(i5)));
                    i5++;
                }
                i2 = Math.min(i4, i8);
            } else {
                this.docTitleOffsetX = 0;
                i2 = i4;
            }
            int m54dp4 = i4 - AndroidUtilities.m54dp(30);
            TextPaint textPaint2 = Theme.chat_infoPaint;
            int min2 = Math.min(m54dp4, (int) Math.ceil(textPaint2.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min2;
            CharSequence ellipsize = TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size) + " " + FileLoader.getDocumentExtension(this.documentAttach), Theme.chat_infoPaint, (float) min2, TextUtils.TruncateAt.END);
            try {
                if (this.infoWidth < 0) {
                    this.infoWidth = AndroidUtilities.m54dp(10);
                }
                this.infoLayout = new StaticLayout(ellipsize, Theme.chat_infoPaint, this.infoWidth + AndroidUtilities.m54dp(6), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } catch (Exception e2) {
                FileLog.m49e(e2);
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
                this.totalHeight += AndroidUtilities.m54dp(14);
            }
        } else if (this.hasLinkPreview || this.hasOldCaptionPreview || this.hasGamePreview || this.hasInvoicePreview || i - i4 < i2 || this.currentMessageObject.hasRtl) {
            z2 = true;
        }
        if (z2) {
            this.totalHeight += AndroidUtilities.m54dp(14);
            this.hasNewLineForTime = true;
            int max = Math.max(i3, i4) + AndroidUtilities.m54dp(31);
            this.backgroundWidth = max;
            this.backgroundWidth = Math.max(max, (this.currentMessageObject.isOutOwner() ? this.timeWidth + AndroidUtilities.m54dp(17) : this.timeWidth) + AndroidUtilities.m54dp(31));
            return;
        }
        int extraTextX = (i3 - getExtraTextX()) - i4;
        if (extraTextX >= 0 && extraTextX <= i2) {
            this.backgroundWidth = ((i3 + i2) - extraTextX) + AndroidUtilities.m54dp(31);
        } else {
            this.backgroundWidth = Math.max(i3, i4 + i2) + AndroidUtilities.m54dp(31);
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
                FileLog.m49e(e);
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
                        FileLog.m49e(e2);
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
            int m54dp = this.backgroundWidth - AndroidUtilities.m54dp(91);
            this.docTitleLayout = new StaticLayout(TextUtils.ellipsize(LocaleController.getString("AttachLiveLocation", C3290R.string.AttachLiveLocation), Theme.chat_locationTitlePaint, m54dp, TextUtils.TruncateAt.END), Theme.chat_locationTitlePaint, m54dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
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
            int m54dp = (groupedMessagePosition.flags & 2) == 0 ? 0 + AndroidUtilities.m54dp(4) : 0;
            return (groupedMessagePosition.flags & 1) == 0 ? m54dp + AndroidUtilities.m54dp(4) : m54dp;
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

                {
                    ChatMessageCell.this = this;
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
                                        float m54dp = AndroidUtilities.m54dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i4 + 1] = m54dp;
                                        fArr[i4] = m54dp;
                                    } else if (i3 != 3 || !z) {
                                        if ((ChatMessageCell.this.mediaBackground || ChatMessageCell.this.pinnedBottom) && (i3 == 2 || i3 == 3)) {
                                            float[] fArr2 = ChatMessageCell.radii;
                                            int i5 = i3 * 2;
                                            float[] fArr3 = ChatMessageCell.radii;
                                            int i6 = i5 + 1;
                                            float m54dp2 = AndroidUtilities.m54dp(ChatMessageCell.this.pinnedBottom ? Math.min(5, SharedConfig.bubbleRadius) : SharedConfig.bubbleRadius);
                                            fArr3[i6] = m54dp2;
                                            fArr2[i5] = m54dp2;
                                        }
                                    } else {
                                        float[] fArr4 = ChatMessageCell.radii;
                                        int i7 = i3 * 2;
                                        float m54dp3 = AndroidUtilities.m54dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i7 + 1] = m54dp3;
                                        fArr4[i7] = m54dp3;
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
                                    this.path.moveTo(this.rect.left + AndroidUtilities.m54dp(6), this.rect.top);
                                    this.path.lineTo(this.rect.left + AndroidUtilities.m54dp(6), (this.rect.bottom - AndroidUtilities.m54dp(6)) - AndroidUtilities.m54dp(5));
                                    RectF rectF = AndroidUtilities.rectTmp;
                                    rectF.set(this.rect.left + AndroidUtilities.m54dp(-7), this.rect.bottom - AndroidUtilities.m54dp(23), this.rect.left + AndroidUtilities.m54dp(6), this.rect.bottom);
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
                        float m54dp4 = ChatMessageCell.this.selectorDrawableMaskType[i] == 0 ? AndroidUtilities.m54dp(6) : 0.0f;
                        if (ChatMessageCell.this.selectorDrawableMaskType[i] == 0) {
                            f = AndroidUtilities.m54dp(6);
                        }
                        canvas.drawRoundRect(rectF4, m54dp4, f, paint);
                        return;
                    }
                    canvas.drawCircle(this.rect.centerX(), this.rect.centerY(), AndroidUtilities.m54dp(ChatMessageCell.this.selectorDrawableMaskType[i] == 3 ? 16 : 20), paint);
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
            this.instantWidth = AndroidUtilities.m54dp(33);
            int i = this.drawInstantViewType;
            if (i == 12) {
                string = LocaleController.getString("OpenChannelPost", C3290R.string.OpenChannelPost);
            } else if (i == 1) {
                string = LocaleController.getString("OpenChannel", C3290R.string.OpenChannel);
            } else if (i == 13) {
                string = LocaleController.getString("SendMessage", C3290R.string.SendMessage).toUpperCase();
            } else if (i == 10) {
                string = LocaleController.getString("OpenBot", C3290R.string.OpenBot);
            } else if (i == 2) {
                string = LocaleController.getString("OpenGroup", C3290R.string.OpenGroup);
            } else if (i == 3) {
                string = LocaleController.getString("OpenMessage", C3290R.string.OpenMessage);
            } else if (i == 5) {
                string = LocaleController.getString("ViewContact", C3290R.string.ViewContact);
            } else if (i == 6) {
                string = LocaleController.getString("OpenBackground", C3290R.string.OpenBackground);
            } else if (i == 7) {
                string = LocaleController.getString("OpenTheme", C3290R.string.OpenTheme);
            } else if (i == 8) {
                if (this.pollVoted || this.pollClosed) {
                    string = LocaleController.getString("PollViewResults", C3290R.string.PollViewResults);
                } else {
                    string = LocaleController.getString("PollSubmitVotes", C3290R.string.PollSubmitVotes);
                }
            } else if (i == 9 || i == 11) {
                TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) MessageObject.getMedia(this.currentMessageObject.messageOwner).webpage;
                if (tLRPC$TL_webPage != null && tLRPC$TL_webPage.url.contains("voicechat=")) {
                    string = LocaleController.getString("VoipGroupJoinAsSpeaker", C3290R.string.VoipGroupJoinAsSpeaker);
                } else {
                    string = LocaleController.getString("VoipGroupJoinAsLinstener", C3290R.string.VoipGroupJoinAsLinstener);
                }
            } else if (i == 14) {
                string = LocaleController.getString("ViewChatList", C3290R.string.ViewChatList).toUpperCase();
            } else if (i == 15) {
                string = LocaleController.getString(C3290R.string.BotWebAppInstantViewOpen).toUpperCase();
            } else {
                string = LocaleController.getString("InstantView", C3290R.string.InstantView);
            }
            if (this.currentMessageObject.isSponsored() && this.backgroundWidth < (measureText = (int) (Theme.chat_instantViewPaint.measureText(string) + AndroidUtilities.m54dp(75)))) {
                this.backgroundWidth = measureText;
            }
            int m54dp = this.backgroundWidth - AndroidUtilities.m54dp(75);
            this.instantViewLayout = new StaticLayout(TextUtils.ellipsize(string, Theme.chat_instantViewPaint, m54dp, TextUtils.TruncateAt.END), Theme.chat_instantViewPaint, m54dp + AndroidUtilities.m54dp(2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (this.drawInstantViewType == 8) {
                this.instantWidth = this.backgroundWidth - AndroidUtilities.m54dp(13);
            } else {
                this.instantWidth = this.backgroundWidth - AndroidUtilities.m54dp(34);
            }
            int m54dp2 = this.totalHeight + AndroidUtilities.m54dp(46);
            this.totalHeight = m54dp2;
            if (this.currentMessageObject.type == 12) {
                this.totalHeight = m54dp2 + AndroidUtilities.m54dp(14);
            }
            if (this.currentMessageObject.isSponsored() && this.hasNewLineForTime) {
                this.totalHeight += AndroidUtilities.m54dp(16);
            }
            StaticLayout staticLayout = this.instantViewLayout;
            if (staticLayout == null || staticLayout.getLineCount() <= 0) {
                return;
            }
            this.instantTextX = (((int) (this.instantWidth - Math.ceil(this.instantViewLayout.getLineWidth(0)))) / 2) + (this.drawInstantViewType == 0 ? AndroidUtilities.m54dp(8) : 0);
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
            if (i < AndroidUtilities.m54dp(320)) {
                i = AndroidUtilities.m54dp(320);
            }
            return parentWidth - i;
        }
        return parentWidth;
    }

    private int getExtraTextX() {
        int i = SharedConfig.bubbleRadius;
        if (i >= 15) {
            return AndroidUtilities.m54dp(2);
        }
        if (i >= 11) {
            return AndroidUtilities.m54dp(1);
        }
        return 0;
    }

    private int getExtraTimeX() {
        int i;
        if (!this.currentMessageObject.isOutOwner() && ((!this.mediaBackground || this.captionLayout != null) && (i = SharedConfig.bubbleRadius) > 11)) {
            return AndroidUtilities.m55dp((i - 11) / 1.5f);
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
        int m54dp;
        int m54dp2;
        int i7;
        int m54dp3;
        int i8;
        int i9;
        int m54dp4;
        int m54dp5;
        int m54dp6;
        int i10;
        int m54dp7;
        int i11;
        int i12;
        int m54dp8;
        int m54dp9;
        if (this.currentMessageObject == null) {
            return;
        }
        int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
        if (this.lastSize != measuredHeight || !this.wasLayout) {
            this.layoutWidth = getMeasuredWidth();
            this.layoutHeight = getMeasuredHeight() - this.substractBackgroundHeight;
            if (this.timeTextWidth < 0) {
                this.timeTextWidth = AndroidUtilities.m54dp(10);
            }
            this.timeLayout = new StaticLayout(this.currentTimeString, Theme.chat_timePaint, this.timeTextWidth + AndroidUtilities.m54dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (this.mediaBackground) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m55dp(42.0f);
                } else {
                    this.timeX = (this.backgroundWidth - AndroidUtilities.m54dp(4)) - this.timeWidth;
                    if (this.currentMessageObject.isAnyKindOfSticker()) {
                        this.timeX = Math.max(AndroidUtilities.m54dp(26), this.timeX);
                    }
                    if (this.isAvatarVisible) {
                        this.timeX += AndroidUtilities.m54dp(48);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                    if (groupedMessagePosition != null && (i5 = groupedMessagePosition.leftSpanOffset) != 0) {
                        this.timeX += (int) Math.ceil((i5 / 1000.0f) * getGroupPhotosWidth());
                    }
                    if (this.captionLayout != null && this.currentPosition != null) {
                        this.timeX += AndroidUtilities.m54dp(4);
                    }
                }
                if (SharedConfig.bubbleRadius >= 10 && this.captionLayout == null && (i6 = this.documentAttachType) != 7 && i6 != 6) {
                    this.timeX -= AndroidUtilities.m54dp(2);
                }
            } else if (this.currentMessageObject.isOutOwner()) {
                this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m55dp(38.5f);
            } else {
                this.timeX = (this.backgroundWidth - AndroidUtilities.m54dp(9)) - this.timeWidth;
                if (this.currentMessageObject.isAnyKindOfSticker()) {
                    this.timeX = Math.max(0, this.timeX);
                }
                if (this.isAvatarVisible) {
                    this.timeX += AndroidUtilities.m54dp(48);
                }
                if (shouldDrawTimeOnMedia()) {
                    this.timeX -= AndroidUtilities.m54dp(7);
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
                this.avatarImage.setImageCoords(AndroidUtilities.m54dp(6), this.avatarImage.getImageY(), AndroidUtilities.m54dp(42), AndroidUtilities.m54dp(42));
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
            this.textY = AndroidUtilities.m54dp(10) + this.namesOffset;
        }
        if (this.isRoundVideo) {
            updatePlayingMessageProgress();
        }
        int i14 = this.documentAttachType;
        if (i14 == 3 || i14 == 7) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(57);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(67);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m54dp(114);
                this.buttonX = AndroidUtilities.m54dp(71);
                this.timeAudioX = AndroidUtilities.m54dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m54dp(66);
                this.buttonX = AndroidUtilities.m54dp(23);
                this.timeAudioX = AndroidUtilities.m54dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m54dp(10);
                this.buttonX += AndroidUtilities.m54dp(10);
                this.timeAudioX += AndroidUtilities.m54dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m54dp(13) + this.namesOffset + this.mediaOffsetY;
            int m54dp10 = AndroidUtilities.m54dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m54dp10;
            RadialProgress2 radialProgress2 = this.radialProgress;
            int i15 = this.buttonX;
            radialProgress2.setProgressRect(i15, m54dp10, AndroidUtilities.m54dp(44) + i15, this.buttonY + AndroidUtilities.m54dp(44));
            updatePlayingMessageProgress();
            if (this.documentAttachType == 7) {
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject.type == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                    if (this.hasGamePreview) {
                        i7 = this.unmovedTextX - AndroidUtilities.m54dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i9 = this.unmovedTextX;
                            m54dp4 = AndroidUtilities.m54dp(1);
                        } else {
                            i9 = this.unmovedTextX;
                            m54dp4 = AndroidUtilities.m54dp(1);
                        }
                        i7 = i9 + m54dp4;
                    }
                    if (this.isSmallImage) {
                        m54dp = i7 + this.backgroundWidth;
                        m54dp2 = AndroidUtilities.m54dp(81);
                        m54dp -= m54dp2;
                    } else {
                        m54dp3 = this.hasInvoicePreview ? -AndroidUtilities.m55dp(6.3f) : AndroidUtilities.m54dp(10);
                        m54dp = i7 + m54dp3;
                    }
                } else {
                    if (messageObject.isOutOwner()) {
                        if (this.mediaBackground) {
                            m54dp = this.layoutWidth - this.backgroundWidth;
                            m54dp2 = AndroidUtilities.m54dp(3);
                        } else {
                            i7 = this.layoutWidth - this.backgroundWidth;
                            m54dp3 = AndroidUtilities.m54dp(6);
                            m54dp = i7 + m54dp3;
                        }
                    } else {
                        if (this.isChat && this.isAvatarVisible && (!this.isPlayingRound || this.currentMessageObject.isVoiceTranscriptionOpen())) {
                            m54dp = AndroidUtilities.m54dp(63);
                        } else {
                            m54dp = AndroidUtilities.m54dp(15);
                        }
                        MessageObject.GroupedMessagePosition groupedMessagePosition2 = this.currentPosition;
                        if (groupedMessagePosition2 != null && !groupedMessagePosition2.edge) {
                            m54dp2 = AndroidUtilities.m54dp(10);
                        }
                    }
                    m54dp -= m54dp2;
                }
                MessageObject.GroupedMessagePosition groupedMessagePosition3 = this.currentPosition;
                if (groupedMessagePosition3 != null) {
                    if ((groupedMessagePosition3.flags & 1) == 0) {
                        m54dp -= AndroidUtilities.m54dp(2);
                    }
                    if (this.currentPosition.leftSpanOffset != 0) {
                        m54dp += (int) Math.ceil((i8 / 1000.0f) * getGroupPhotosWidth());
                    }
                }
                if (this.currentMessageObject.type != 0) {
                    m54dp -= AndroidUtilities.m54dp(2);
                }
                if (this.currentMessageObject.isVoiceTranscriptionOpen()) {
                    m54dp += AndroidUtilities.m54dp(10);
                }
                TransitionParams transitionParams = this.transitionParams;
                if (!transitionParams.imageChangeBoundsTransition || transitionParams.updatePhotoImageX) {
                    transitionParams.updatePhotoImageX = false;
                    ImageReceiver imageReceiver = this.photoImage;
                    imageReceiver.setImageCoords(m54dp, imageReceiver.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                }
            }
        } else if (i14 == 5) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(56);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(67);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m54dp(113);
                this.buttonX = AndroidUtilities.m54dp(71);
                this.timeAudioX = AndroidUtilities.m54dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m54dp(65);
                this.buttonX = AndroidUtilities.m54dp(23);
                this.timeAudioX = AndroidUtilities.m54dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m54dp(10);
                this.buttonX += AndroidUtilities.m54dp(10);
                this.timeAudioX += AndroidUtilities.m54dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m54dp(29) + this.namesOffset + this.mediaOffsetY;
            int m54dp11 = AndroidUtilities.m54dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m54dp11;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i16 = this.buttonX;
            radialProgress22.setProgressRect(i16, m54dp11, AndroidUtilities.m54dp(44) + i16, this.buttonY + AndroidUtilities.m54dp(44));
            updatePlayingMessageProgress();
        } else if (i14 == 1 && !this.drawPhotoImage) {
            if (this.currentMessageObject.isOutOwner()) {
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(14);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.buttonX = AndroidUtilities.m54dp(71);
            } else {
                this.buttonX = AndroidUtilities.m54dp(23);
            }
            if (this.hasLinkPreview) {
                this.buttonX += AndroidUtilities.m54dp(10);
            }
            int m54dp12 = AndroidUtilities.m54dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m54dp12;
            RadialProgress2 radialProgress23 = this.radialProgress;
            int i17 = this.buttonX;
            radialProgress23.setProgressRect(i17, m54dp12, AndroidUtilities.m54dp(44) + i17, this.buttonY + AndroidUtilities.m54dp(44));
            this.photoImage.setImageCoords(this.buttonX - AndroidUtilities.m54dp(10), this.buttonY - AndroidUtilities.m54dp(10), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
        } else {
            MessageObject messageObject2 = this.currentMessageObject;
            int i18 = messageObject2.type;
            if (i18 == 12) {
                if (messageObject2.isOutOwner()) {
                    m54dp9 = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m54dp(14);
                } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                    m54dp9 = AndroidUtilities.m54dp(72);
                } else {
                    m54dp9 = AndroidUtilities.m54dp(23);
                }
                this.photoImage.setImageCoords(m54dp9, AndroidUtilities.m54dp(13) + this.namesOffset, AndroidUtilities.m54dp(44), AndroidUtilities.m54dp(44));
                return;
            }
            if (i18 == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                if (this.hasGamePreview) {
                    i10 = this.unmovedTextX - AndroidUtilities.m54dp(10);
                } else {
                    if (this.hasInvoicePreview) {
                        i12 = this.unmovedTextX;
                        m54dp8 = AndroidUtilities.m54dp(1);
                    } else {
                        i12 = this.unmovedTextX;
                        m54dp8 = AndroidUtilities.m54dp(1);
                    }
                    i10 = i12 + m54dp8;
                }
                if (this.isSmallImage) {
                    m54dp5 = i10 + this.backgroundWidth;
                    m54dp6 = AndroidUtilities.m54dp(81);
                    m54dp5 -= m54dp6;
                } else {
                    m54dp7 = this.hasInvoicePreview ? -AndroidUtilities.m55dp(6.3f) : AndroidUtilities.m54dp(10);
                    m54dp5 = i10 + m54dp7;
                }
            } else {
                if (messageObject2.isOutOwner()) {
                    if (this.mediaBackground) {
                        m54dp5 = this.layoutWidth - this.backgroundWidth;
                        m54dp6 = AndroidUtilities.m54dp(3);
                    } else {
                        i10 = this.layoutWidth - this.backgroundWidth;
                        m54dp7 = AndroidUtilities.m54dp(6);
                        m54dp5 = i10 + m54dp7;
                    }
                } else {
                    if (this.isChat && this.isAvatarVisible && !this.isPlayingRound) {
                        m54dp5 = AndroidUtilities.m54dp(63);
                    } else {
                        m54dp5 = AndroidUtilities.m54dp(15);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition4 = this.currentPosition;
                    if (groupedMessagePosition4 != null && !groupedMessagePosition4.edge) {
                        m54dp6 = AndroidUtilities.m54dp(10);
                    }
                }
                m54dp5 -= m54dp6;
            }
            MessageObject.GroupedMessagePosition groupedMessagePosition5 = this.currentPosition;
            if (groupedMessagePosition5 != null) {
                if ((groupedMessagePosition5.flags & 1) == 0) {
                    m54dp5 -= AndroidUtilities.m54dp(2);
                }
                if (this.currentPosition.leftSpanOffset != 0) {
                    m54dp5 += (int) Math.ceil((i11 / 1000.0f) * getGroupPhotosWidth());
                }
            }
            if (this.currentMessageObject.type != 0) {
                m54dp5 -= AndroidUtilities.m54dp(2);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (!transitionParams2.imageChangeBoundsTransition || transitionParams2.updatePhotoImageX) {
                transitionParams2.updatePhotoImageX = false;
                ImageReceiver imageReceiver2 = this.photoImage;
                imageReceiver2.setImageCoords(m54dp5, imageReceiver2.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
            }
            this.buttonX = (int) (m54dp5 + ((this.photoImage.getImageWidth() - AndroidUtilities.m54dp(48)) / 2.0f));
            int imageY = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m54dp(48)) / 2.0f));
            this.buttonY = imageY;
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i19 = this.buttonX;
            radialProgress24.setProgressRect(i19, imageY, AndroidUtilities.m54dp(48) + i19, this.buttonY + AndroidUtilities.m54dp(48));
            this.deleteProgressRect.set(this.buttonX + AndroidUtilities.m54dp(5), this.buttonY + AndroidUtilities.m54dp(5), this.buttonX + AndroidUtilities.m54dp(43), this.buttonY + AndroidUtilities.m54dp(43));
            int i20 = this.documentAttachType;
            if (i20 == 4 || i20 == 2) {
                this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m54dp(8));
                int imageY2 = (int) (this.photoImage.getImageY() + AndroidUtilities.m54dp(8));
                this.videoButtonY = imageY2;
                RadialProgress2 radialProgress25 = this.videoRadialProgress;
                int i21 = this.videoButtonX;
                radialProgress25.setProgressRect(i21, imageY2, AndroidUtilities.m54dp(24) + i21, this.videoButtonY + AndroidUtilities.m54dp(24));
            }
        }
    }

    public boolean needDelayRoundProgressDraw() {
        int i = this.documentAttachType;
        return (i == 7 || i == 4) && this.currentMessageObject.type != 5 && MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x02d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawRoundProgress(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawRoundProgress(android.graphics.Canvas):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:125:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePollAnimations(long r9) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.updatePollAnimations(long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:1230:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:1236:0x0666  */
    /* JADX WARN: Removed duplicated region for block: B:1355:0x0926  */
    /* JADX WARN: Removed duplicated region for block: B:1360:0x096f  */
    /* JADX WARN: Removed duplicated region for block: B:1363:0x0976  */
    /* JADX WARN: Removed duplicated region for block: B:1373:0x0a02  */
    /* JADX WARN: Removed duplicated region for block: B:1374:0x0a08  */
    /* JADX WARN: Removed duplicated region for block: B:1381:0x0a21  */
    /* JADX WARN: Removed duplicated region for block: B:1382:0x0a24  */
    /* JADX WARN: Removed duplicated region for block: B:1385:0x0a52  */
    /* JADX WARN: Removed duplicated region for block: B:1617:0x0f73  */
    /* JADX WARN: Removed duplicated region for block: B:1618:0x0f76  */
    /* JADX WARN: Removed duplicated region for block: B:1621:0x0f92  */
    /* JADX WARN: Removed duplicated region for block: B:1622:0x0f95  */
    /* JADX WARN: Removed duplicated region for block: B:1625:0x0fba  */
    /* JADX WARN: Removed duplicated region for block: B:1626:0x0fc2  */
    /* JADX WARN: Removed duplicated region for block: B:1629:0x0fcb  */
    /* JADX WARN: Removed duplicated region for block: B:1630:0x0ff3  */
    /* JADX WARN: Removed duplicated region for block: B:1633:0x1008  */
    /* JADX WARN: Removed duplicated region for block: B:1646:0x1061  */
    /* JADX WARN: Removed duplicated region for block: B:1649:0x106a  */
    /* JADX WARN: Removed duplicated region for block: B:1650:0x1076  */
    /* JADX WARN: Removed duplicated region for block: B:1653:0x1085  */
    /* JADX WARN: Removed duplicated region for block: B:1657:0x10d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawContent(android.graphics.Canvas r37) {
        /*
            Method dump skipped, instructions count: 5386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawContent(android.graphics.Canvas):void");
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
                ChatMessageCell.this.lambda$startRevealMedia$14(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.9
            {
                ChatMessageCell.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatMessageCell.this.currentMessageObject.isMediaSpoilersRevealed = true;
                ChatMessageCell.this.invalidate();
            }
        });
        duration.start();
    }

    public /* synthetic */ void lambda$startRevealMedia$14(ValueAnimator valueAnimator) {
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
        this.blurredPhotoImage.setImageCoords(this.photoImage.getImageX(), this.photoImage.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
        this.blurredPhotoImage.setRoundRadius(this.photoImage.getRoundRadius());
        this.blurredPhotoImage.draw(canvas);
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

    /* JADX WARN: Code restructure failed: missing block: B:117:0x0017, code lost:
        if ((r1 & 1) != 0) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:203:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateReactionLayoutPosition() {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.updateReactionLayoutPosition():void");
    }

    public void drawLinkPreview(Canvas canvas, float f) {
        int m54dp;
        int i;
        int m54dp2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z;
        int i12;
        int i13;
        boolean z2;
        Drawable themedDrawable;
        float f2;
        int i14;
        float f3;
        int i15;
        int i16;
        int i17;
        int m54dp3;
        Paint paint;
        if (this.currentMessageObject.isSponsored() || this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview) {
            if (this.hasGamePreview) {
                m54dp = AndroidUtilities.m54dp(14) + this.namesOffset;
                i2 = this.unmovedTextX - AndroidUtilities.m54dp(10);
            } else {
                if (this.hasInvoicePreview) {
                    m54dp = AndroidUtilities.m54dp(14) + this.namesOffset;
                    i = this.unmovedTextX;
                    m54dp2 = AndroidUtilities.m54dp(1);
                } else if (this.currentMessageObject.isSponsored()) {
                    m54dp = (this.textY + this.currentMessageObject.textHeight) - AndroidUtilities.m54dp(2);
                    if (this.hasNewLineForTime) {
                        m54dp += AndroidUtilities.m54dp(16);
                    }
                    i = this.unmovedTextX;
                    m54dp2 = AndroidUtilities.m54dp(1);
                } else {
                    m54dp = this.textY + this.currentMessageObject.textHeight + AndroidUtilities.m54dp(8);
                    i = this.unmovedTextX;
                    m54dp2 = AndroidUtilities.m54dp(1);
                }
                i2 = i + m54dp2;
            }
            int i18 = i2;
            int i19 = m54dp + ((int) this.transitionParams.deltaBottom);
            int i20 = 6;
            if (!this.hasInvoicePreview && !this.currentMessageObject.isSponsored()) {
                Theme.chat_replyLinePaint.setColor(getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outPreviewLine : Theme.key_chat_inPreviewLine));
                if (f != 1.0f) {
                    Theme.chat_replyLinePaint.setAlpha((int) (paint.getAlpha() * f));
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(i18, i19 - AndroidUtilities.m54dp(3), i18 + AndroidUtilities.m54dp(3), this.linkPreviewHeight + i19 + AndroidUtilities.m54dp(3));
                Path path = this.replyRoundRectPath;
                if (path == null) {
                    this.replyRoundRectPath = new Path();
                } else {
                    path.rewind();
                }
                if (this.replyRoundRectRadii == null) {
                    this.replyRoundRectRadii = r3;
                    float m54dp4 = AndroidUtilities.m54dp(2);
                    float[] fArr = {m54dp4, m54dp4, 0.0f, 0.0f, 0.0f, 0.0f, m54dp4, m54dp4};
                    float[] fArr2 = this.replyRoundRectRadii;
                    float m54dp5 = AndroidUtilities.m54dp(1);
                    fArr2[5] = m54dp5;
                    fArr2[4] = m54dp5;
                    fArr2[3] = m54dp5;
                    fArr2[2] = m54dp5;
                }
                this.replyRoundRectPath.addRoundRect(rectF, this.replyRoundRectRadii, Path.Direction.CW);
                canvas.drawPath(this.replyRoundRectPath, Theme.chat_replyLinePaint);
            }
            if (this.siteNameLayout != null) {
                int m54dp6 = i19 - AndroidUtilities.m54dp(1);
                Theme.chat_replyNamePaint.setColor(getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outSiteNameText : Theme.key_chat_inSiteNameText));
                if (f != 1.0f) {
                    Theme.chat_replyNamePaint.setAlpha((int) (Theme.chat_replyLinePaint.getAlpha() * f));
                }
                canvas.save();
                if (this.siteNameRtl) {
                    m54dp3 = (this.backgroundWidth - this.siteNameWidth) - AndroidUtilities.m54dp(32);
                    if (this.isSmallImage) {
                        m54dp3 -= AndroidUtilities.m54dp(54);
                    }
                } else {
                    m54dp3 = this.hasInvoicePreview ? 0 : AndroidUtilities.m54dp(10);
                }
                canvas.translate(m54dp3 + i18, i19 - AndroidUtilities.m54dp(3));
                this.siteNameLayout.draw(canvas);
                canvas.restore();
                StaticLayout staticLayout = this.siteNameLayout;
                i3 = staticLayout.getLineBottom(staticLayout.getLineCount() - 1) + i19;
                i4 = m54dp6;
            } else {
                i3 = i19;
                i4 = 0;
            }
            if ((this.hasGamePreview || this.hasInvoicePreview) && (i5 = this.currentMessageObject.textHeight) != 0) {
                i19 += i5 + AndroidUtilities.m54dp(4);
                i3 += this.currentMessageObject.textHeight + AndroidUtilities.m54dp(4);
            }
            int i21 = i19;
            char c = '\t';
            if ((!this.drawPhotoImage || !this.drawInstantView || (i17 = this.drawInstantViewType) == 9 || i17 == 2 || i17 == 13 || i17 == 11 || i17 == 1) && (this.drawInstantViewType != 6 || this.imageBackgroundColor == 0)) {
                i6 = i21;
                i7 = 0;
                i8 = 4;
            } else {
                if (i3 != i21) {
                    i3 += AndroidUtilities.m54dp(2);
                }
                if (this.imageBackgroundSideColor != 0) {
                    int m54dp7 = i18 + AndroidUtilities.m54dp(10);
                    ImageReceiver imageReceiver = this.photoImage;
                    float f4 = m54dp7;
                    imageReceiver.setImageCoords(((this.imageBackgroundSideWidth - imageReceiver.getImageWidth()) / 2.0f) + f4, i3, this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                    this.rect.set(f4, this.photoImage.getImageY(), m54dp7 + this.imageBackgroundSideWidth, this.photoImage.getImageY2());
                    Theme.chat_instantViewPaint.setColor(ColorUtils.setAlphaComponent(this.imageBackgroundSideColor, (int) (f * 255.0f)));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), Theme.chat_instantViewPaint);
                } else {
                    this.photoImage.setImageCoords(AndroidUtilities.m54dp(10) + i18, i3, this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                }
                if (this.imageBackgroundColor != 0) {
                    this.rect.set(this.photoImage.getImageX(), this.photoImage.getImageY(), this.photoImage.getImageX2(), this.photoImage.getImageY2());
                    if (this.imageBackgroundGradientColor1 != 0) {
                        if (this.imageBackgroundGradientColor2 != 0) {
                            if (this.motionBackgroundDrawable == null) {
                                MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(this.imageBackgroundColor, this.imageBackgroundGradientColor1, this.imageBackgroundGradientColor2, this.imageBackgroundGradientColor3, true);
                                this.motionBackgroundDrawable = motionBackgroundDrawable;
                                if (this.imageBackgroundIntensity < BitmapDescriptorFactory.HUE_RED) {
                                    this.photoImage.setGradientBitmap(motionBackgroundDrawable.getBitmap());
                                }
                                if (!this.photoImage.hasImageSet()) {
                                    this.motionBackgroundDrawable.setRoundRadius(AndroidUtilities.m54dp(4));
                                }
                            }
                        } else {
                            if (this.gradientShader == null) {
                                Rect gradientPoints = BackgroundGradientDrawable.getGradientPoints(AndroidUtilities.getWallpaperRotation(this.imageBackgroundGradientRotation, false), (int) this.rect.width(), (int) this.rect.height());
                                this.gradientShader = new LinearGradient(gradientPoints.left, gradientPoints.top, gradientPoints.right, gradientPoints.bottom, new int[]{this.imageBackgroundColor, this.imageBackgroundGradientColor1}, (float[]) null, Shader.TileMode.CLAMP);
                            }
                            Theme.chat_instantViewPaint.setShader(this.gradientShader);
                            if (f != 1.0f) {
                                Theme.chat_instantViewPaint.setAlpha((int) (f * 255.0f));
                            }
                        }
                    } else {
                        Theme.chat_instantViewPaint.setShader(null);
                        Theme.chat_instantViewPaint.setColor(this.imageBackgroundColor);
                        if (f != 1.0f) {
                            Theme.chat_instantViewPaint.setAlpha((int) (f * 255.0f));
                        }
                    }
                    MotionBackgroundDrawable motionBackgroundDrawable2 = this.motionBackgroundDrawable;
                    if (motionBackgroundDrawable2 != null) {
                        RectF rectF2 = this.rect;
                        motionBackgroundDrawable2.setBounds((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                        this.motionBackgroundDrawable.draw(canvas);
                        i16 = i3;
                        i6 = i21;
                        i7 = 0;
                        i8 = 4;
                    } else if (this.imageBackgroundSideColor != 0) {
                        i16 = i3;
                        i8 = 4;
                        i6 = i21;
                        i7 = 0;
                        canvas.drawRect(this.photoImage.getImageX(), this.photoImage.getImageY(), this.photoImage.getImageX2(), this.photoImage.getImageY2(), Theme.chat_instantViewPaint);
                    } else {
                        i16 = i3;
                        i6 = i21;
                        i7 = 0;
                        i8 = 4;
                        canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), Theme.chat_instantViewPaint);
                    }
                    Theme.chat_instantViewPaint.setShader(null);
                    Theme.chat_instantViewPaint.setAlpha(255);
                } else {
                    i16 = i3;
                    i6 = i21;
                    i7 = 0;
                    i8 = 4;
                }
                if (this.drawPhotoImage && this.drawInstantView) {
                    c = '\t';
                    if (this.drawInstantViewType != 9) {
                        if (this.drawImageButton) {
                            int m54dp8 = AndroidUtilities.m54dp(48);
                            float f5 = m54dp8;
                            int imageX = (int) (this.photoImage.getImageX() + ((this.photoImage.getImageWidth() - f5) / 2.0f));
                            this.buttonX = imageX;
                            this.buttonX = imageX;
                            int imageY = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - f5) / 2.0f));
                            this.buttonY = imageY;
                            this.buttonY = imageY;
                            RadialProgress2 radialProgress2 = this.radialProgress;
                            int i22 = this.buttonX;
                            radialProgress2.setProgressRect(i22, imageY, i22 + m54dp8, m54dp8 + imageY);
                        }
                        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
                        if (chatMessageCellDelegate == null || chatMessageCellDelegate.getPinchToZoomHelper() == null || !this.delegate.getPinchToZoomHelper().isInOverlayModeFor(this)) {
                            if (f != 1.0f) {
                                this.photoImage.setAlpha(f);
                                if (allowDrawPhotoImage()) {
                                    this.imageDrawn = this.photoImage.draw(canvas);
                                } else {
                                    this.imageDrawn = true;
                                }
                                if (this.currentMessageObject.hasMediaSpoilers()) {
                                    this.blurredPhotoImage.setAlpha(f);
                                    drawBlurredPhoto(canvas);
                                    this.blurredPhotoImage.setAlpha(1.0f);
                                }
                                this.photoImage.setAlpha(1.0f);
                            } else {
                                if (allowDrawPhotoImage()) {
                                    this.imageDrawn = this.photoImage.draw(canvas);
                                } else {
                                    this.imageDrawn = true;
                                }
                                if (this.currentMessageObject.hasMediaSpoilers()) {
                                    drawBlurredPhoto(canvas);
                                }
                            }
                            float f6 = i16;
                            i20 = 6;
                            i3 = (int) (f6 + this.photoImage.getImageHeight() + AndroidUtilities.m54dp(6));
                        }
                    }
                } else {
                    c = '\t';
                }
                float f62 = i16;
                i20 = 6;
                i3 = (int) (f62 + this.photoImage.getImageHeight() + AndroidUtilities.m54dp(6));
            }
            if (this.currentMessageObject.isOutOwner()) {
                TextPaint textPaint = Theme.chat_replyNamePaint;
                int i23 = Theme.key_chat_messageTextOut;
                int i24 = (int) (f * 255.0f);
                textPaint.setColor(ColorUtils.setAlphaComponent(getThemedColor(i23), i24));
                Theme.chat_replyTextPaint.setColor(ColorUtils.setAlphaComponent(getThemedColor(i23), i24));
            } else {
                TextPaint textPaint2 = Theme.chat_replyNamePaint;
                int i25 = Theme.key_chat_messageTextIn;
                int i26 = (int) (f * 255.0f);
                textPaint2.setColor(ColorUtils.setAlphaComponent(getThemedColor(i25), i26));
                Theme.chat_replyTextPaint.setColor(ColorUtils.setAlphaComponent(getThemedColor(i25), i26));
            }
            if (this.titleLayout != null) {
                if (i3 != i6) {
                    i3 += AndroidUtilities.m54dp(2);
                }
                if (i4 == 0) {
                    i4 = i3 - AndroidUtilities.m54dp(1);
                }
                canvas.save();
                canvas.translate(AndroidUtilities.m54dp(10) + i18 + this.titleX, i3 - AndroidUtilities.m54dp(3));
                this.titleLayout.draw(canvas);
                canvas.restore();
                StaticLayout staticLayout2 = this.titleLayout;
                i3 += staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
            }
            if (this.authorLayout != null) {
                if (i3 != i6) {
                    i3 += AndroidUtilities.m54dp(2);
                }
                if (i4 == 0) {
                    i4 = i3 - AndroidUtilities.m54dp(1);
                }
                canvas.save();
                canvas.translate(AndroidUtilities.m54dp(10) + i18 + this.authorX, i3 - AndroidUtilities.m54dp(3));
                this.authorLayout.draw(canvas);
                canvas.restore();
                StaticLayout staticLayout3 = this.authorLayout;
                i3 += staticLayout3.getLineBottom(staticLayout3.getLineCount() - 1);
            }
            if (this.descriptionLayout != null) {
                if (i3 != i6) {
                    i3 += AndroidUtilities.m54dp(2);
                }
                int i27 = i3;
                if (i4 == 0) {
                    i4 = i27 - AndroidUtilities.m54dp(1);
                }
                this.descriptionY = i27 - AndroidUtilities.m54dp(3);
                canvas.save();
                canvas.translate((this.hasInvoicePreview ? i7 : AndroidUtilities.m54dp(10)) + i18 + this.descriptionX, this.descriptionY);
                if (this.linkBlockNum == -10 && this.links.draw(canvas)) {
                    invalidate();
                }
                drawProgressLoadingLink(canvas, -2);
                ChatMessageCellDelegate chatMessageCellDelegate2 = this.delegate;
                if (chatMessageCellDelegate2 != null && chatMessageCellDelegate2.getTextSelectionHelper() != null && getDelegate().getTextSelectionHelper().isSelected(this.currentMessageObject)) {
                    this.delegate.getTextSelectionHelper().drawDescription(this.currentMessageObject.isOutOwner(), this.descriptionLayout, canvas);
                }
                this.descriptionLayout.draw(canvas);
                i9 = i20;
                i10 = i18;
                i11 = i6;
                z = true;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.descriptionLayout, this.animatedEmojiDescriptionStack, BitmapDescriptorFactory.HUE_RED, null, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, Theme.chat_animatedEmojiTextColorFilter);
                canvas.restore();
                StaticLayout staticLayout4 = this.descriptionLayout;
                i3 = i27 + staticLayout4.getLineBottom(staticLayout4.getLineCount() - 1);
            } else {
                i9 = i20;
                i10 = i18;
                i11 = i6;
                z = true;
            }
            if (this.drawPhotoImage && (!this.drawInstantView || (i15 = this.drawInstantViewType) == 9 || i15 == 2 || i15 == 11 || i15 == 13 || i15 == z)) {
                i12 = i11;
                if (i3 != i12) {
                    i3 += AndroidUtilities.m54dp(2);
                }
                if (this.isSmallImage) {
                    this.photoImage.setImageCoords((i10 + this.backgroundWidth) - AndroidUtilities.m54dp(81), i4, this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                } else {
                    this.photoImage.setImageCoords(i10 + (this.hasInvoicePreview ? -AndroidUtilities.m55dp(6.3f) : AndroidUtilities.m54dp(10)), i3, this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                    if (this.drawImageButton) {
                        int m54dp9 = AndroidUtilities.m54dp(48);
                        float f7 = m54dp9;
                        int imageX2 = (int) (this.photoImage.getImageX() + ((this.photoImage.getImageWidth() - f7) / 2.0f));
                        this.buttonX = imageX2;
                        this.buttonX = imageX2;
                        int imageY2 = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - f7) / 2.0f));
                        this.buttonY = imageY2;
                        this.buttonY = imageY2;
                        RadialProgress2 radialProgress22 = this.radialProgress;
                        int i28 = this.buttonX;
                        radialProgress22.setProgressRect(i28, imageY2, i28 + m54dp9, m54dp9 + imageY2);
                    }
                }
                if (this.isRoundVideo && MediaController.getInstance().isPlayingMessage(this.currentMessageObject) && MediaController.getInstance().isVideoDrawingReady() && canvas.isHardwareAccelerated()) {
                    this.imageDrawn = z;
                    this.drawTime = z;
                } else {
                    ChatMessageCellDelegate chatMessageCellDelegate3 = this.delegate;
                    if (chatMessageCellDelegate3 == null || chatMessageCellDelegate3.getPinchToZoomHelper() == null || !this.delegate.getPinchToZoomHelper().isInOverlayModeFor(this)) {
                        if (f != 1.0f) {
                            this.photoImage.setAlpha(f);
                            if (allowDrawPhotoImage()) {
                                this.imageDrawn = this.photoImage.draw(canvas);
                            } else {
                                this.imageDrawn = z;
                            }
                            if (this.currentMessageObject.hasMediaSpoilers()) {
                                this.blurredPhotoImage.setAlpha(f);
                                drawBlurredPhoto(canvas);
                                f3 = 1.0f;
                                this.blurredPhotoImage.setAlpha(1.0f);
                            } else {
                                f3 = 1.0f;
                            }
                            this.photoImage.setAlpha(f3);
                        } else {
                            if (allowDrawPhotoImage()) {
                                this.imageDrawn = this.photoImage.draw(canvas);
                            } else {
                                this.imageDrawn = z;
                            }
                            if (this.currentMessageObject.hasMediaSpoilers()) {
                                drawBlurredPhoto(canvas);
                            }
                        }
                    }
                }
            } else {
                i12 = i11;
            }
            int i29 = this.documentAttachType;
            if (i29 == i8 || i29 == 2) {
                this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m54dp(8));
                int imageY3 = (int) (this.photoImage.getImageY() + AndroidUtilities.m54dp(8));
                this.videoButtonY = imageY3;
                RadialProgress2 radialProgress23 = this.videoRadialProgress;
                int i30 = this.videoButtonX;
                radialProgress23.setProgressRect(i30, imageY3, AndroidUtilities.m54dp(24) + i30, this.videoButtonY + AndroidUtilities.m54dp(24));
            }
            Paint themedPaint = getThemedPaint("paintChatTimeBackground");
            if (this.photosCountLayout != null && this.photoImage.getVisible()) {
                int imageX3 = (int) (((this.photoImage.getImageX() + this.photoImage.getImageWidth()) - AndroidUtilities.m54dp(8)) - this.photosCountWidth);
                int imageY4 = (int) ((this.photoImage.getImageY() + this.photoImage.getImageHeight()) - AndroidUtilities.m54dp(19));
                this.rect.set(imageX3 - AndroidUtilities.m54dp(i13), imageY4 - AndroidUtilities.m55dp(1.5f), this.photosCountWidth + imageX3 + AndroidUtilities.m54dp(i13), imageY4 + AndroidUtilities.m55dp(14.5f));
                int alpha = themedPaint.getAlpha();
                themedPaint.setAlpha((int) (alpha * this.controlsAlpha));
                Theme.chat_durationPaint.setAlpha((int) (this.controlsAlpha * 255.0f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(i13), AndroidUtilities.m54dp(i13), themedPaint);
                themedPaint.setAlpha(alpha);
                canvas.save();
                canvas.translate(imageX3, imageY4);
                this.photosCountLayout.draw(canvas);
                canvas.restore();
                Theme.chat_durationPaint.setAlpha(255);
            }
            if (this.videoInfoLayout != null && ((!this.drawPhotoImage || this.photoImage.getVisible()) && this.imageBackgroundSideColor == 0)) {
                if (this.hasGamePreview || this.hasInvoicePreview || this.documentAttachType == 8) {
                    if (this.drawPhotoImage) {
                        i14 = (int) (this.photoImage.getImageX() + AndroidUtilities.m55dp(8.5f));
                        i3 = (int) (this.photoImage.getImageY() + AndroidUtilities.m54dp(i9));
                        this.rect.set(i14 - AndroidUtilities.m54dp(i13), i3 - AndroidUtilities.m55dp(1.5f), this.durationWidth + i14 + AndroidUtilities.m54dp(i13), AndroidUtilities.m55dp(this.documentAttachType == 8 ? 14.5f : 16.5f) + i3);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(i13), AndroidUtilities.m54dp(i13), themedPaint);
                    } else {
                        i14 = i10;
                    }
                } else {
                    i14 = (int) (((this.photoImage.getImageX() + this.photoImage.getImageWidth()) - AndroidUtilities.m54dp(8)) - this.durationWidth);
                    i3 = (int) ((this.photoImage.getImageY() + this.photoImage.getImageHeight()) - AndroidUtilities.m54dp(19));
                    this.rect.set(i14 - AndroidUtilities.m54dp(i13), i3 - AndroidUtilities.m55dp(1.5f), this.durationWidth + i14 + AndroidUtilities.m54dp(i13), AndroidUtilities.m55dp(14.5f) + i3);
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(i13), AndroidUtilities.m54dp(i13), getThemedPaint("paintChatTimeBackground"));
                }
                canvas.save();
                canvas.translate(i14, i3);
                if (this.hasInvoicePreview) {
                    if (this.drawPhotoImage) {
                        Theme.chat_shipmentPaint.setColor(getThemedColor(Theme.key_chat_previewGameText));
                    } else if (this.currentMessageObject.isOutOwner()) {
                        Theme.chat_shipmentPaint.setColor(getThemedColor(Theme.key_chat_messageTextOut));
                    } else {
                        Theme.chat_shipmentPaint.setColor(getThemedColor(Theme.key_chat_messageTextIn));
                    }
                }
                this.videoInfoLayout.draw(canvas);
                canvas.restore();
            }
            if (this.drawInstantView) {
                int m54dp10 = i12 + this.linkPreviewHeight + AndroidUtilities.m54dp(10);
                Paint paint2 = Theme.chat_instantViewRectPaint;
                ChatMessageCellDelegate chatMessageCellDelegate4 = this.delegate;
                boolean z3 = chatMessageCellDelegate4 != null && chatMessageCellDelegate4.isProgressLoading(this, 2);
                LoadingDrawable loadingDrawable = this.instantButtonLoading;
                if (loadingDrawable != null && !z3 && !loadingDrawable.isDisappeared() && !this.instantButtonLoading.isDisappearing()) {
                    this.instantButtonLoading.disappear();
                }
                LoadingDrawable loadingDrawable2 = this.instantButtonLoading;
                if (loadingDrawable2 == null && z3) {
                    LoadingDrawable loadingDrawable3 = new LoadingDrawable();
                    this.instantButtonLoading = loadingDrawable3;
                    loadingDrawable3.strokePaint.setStrokeWidth(AndroidUtilities.m55dp(1.25f));
                    z2 = true;
                    this.instantButtonLoading.setAppearByGradient(true);
                } else {
                    z2 = true;
                    if (loadingDrawable2 != null && z3 && (loadingDrawable2.isDisappeared() || this.instantButtonLoading.isDisappearing())) {
                        this.instantButtonLoading.reset();
                        this.instantButtonLoading.resetDisappear();
                    }
                }
                if (this.currentMessageObject.isOutOwner()) {
                    themedDrawable = getThemedDrawable("drawableMsgOutInstant");
                    TextPaint textPaint3 = Theme.chat_instantViewPaint;
                    int i31 = Theme.key_chat_outPreviewInstantText;
                    textPaint3.setColor(getThemedColor(i31));
                    paint2.setColor(getThemedColor(i31));
                    LoadingDrawable loadingDrawable4 = this.instantButtonLoading;
                    if (loadingDrawable4 != null) {
                        loadingDrawable4.setColors(Theme.multAlpha(getThemedColor(i31), 0.1f), Theme.multAlpha(getThemedColor(i31), 0.3f), Theme.multAlpha(getThemedColor(i31), 0.3f), Theme.multAlpha(getThemedColor(i31), 1.2f));
                    }
                } else {
                    themedDrawable = getThemedDrawable("drawableMsgInInstant");
                    TextPaint textPaint4 = Theme.chat_instantViewPaint;
                    int i32 = Theme.key_chat_inPreviewInstantText;
                    textPaint4.setColor(getThemedColor(i32));
                    paint2.setColor(getThemedColor(i32));
                    LoadingDrawable loadingDrawable5 = this.instantButtonLoading;
                    if (loadingDrawable5 != null) {
                        loadingDrawable5.setColors(Theme.multAlpha(getThemedColor(i32), 0.1f), Theme.multAlpha(getThemedColor(i32), 0.3f), Theme.multAlpha(getThemedColor(i32), 0.3f), Theme.multAlpha(getThemedColor(i32), 1.2f));
                    }
                }
                this.instantButtonRect.set(i10, m54dp10, i10 + this.instantWidth, AndroidUtilities.m54dp(36) + m54dp10);
                if (this.instantButtonPressed) {
                    float f8 = this.instantButtonPressProgress;
                    f2 = 1.0f;
                    if (f8 != 1.0f) {
                        float min = f8 + (Math.min(40.0f, 1000.0f / AndroidUtilities.screenRefreshRate) / 100.0f);
                        this.instantButtonPressProgress = min;
                        this.instantButtonPressProgress = Utilities.clamp(min, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                        invalidate();
                    }
                } else {
                    f2 = 1.0f;
                }
                float f9 = ((f2 - this.instantButtonPressProgress) * 0.02f) + 0.98f;
                boolean z4 = f9 != f2 ? z2 : false;
                if (z4) {
                    canvas.save();
                    canvas.scale(f9, f9, this.instantButtonRect.centerX(), this.instantButtonRect.centerY());
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    this.selectorDrawableMaskType[0] = 0;
                    this.selectorDrawable[0].setBounds(i10, m54dp10, i10 + this.instantWidth, AndroidUtilities.m54dp(36) + m54dp10);
                    this.selectorDrawable[0].draw(canvas);
                }
                LoadingDrawable loadingDrawable6 = this.instantButtonLoading;
                if (loadingDrawable6 != null && !loadingDrawable6.isDisappeared()) {
                    this.instantButtonLoading.setBounds(this.instantButtonRect);
                    this.instantButtonLoading.setRadiiDp(6.0f);
                    this.instantButtonLoading.draw(canvas);
                    invalidate();
                }
                canvas.drawRoundRect(this.instantButtonRect, AndroidUtilities.m54dp(i9), AndroidUtilities.m54dp(i9), paint2);
                if (this.drawInstantViewType == 0) {
                    BaseCell.setDrawableBounds(themedDrawable, ((this.instantTextLeftX + this.instantTextX) + i10) - AndroidUtilities.m54dp(15), AndroidUtilities.m55dp(11.5f) + m54dp10, AndroidUtilities.m54dp(9), AndroidUtilities.m54dp(13));
                    themedDrawable.draw(canvas);
                }
                if (this.instantViewLayout != null) {
                    canvas.save();
                    canvas.translate(i10 + this.instantTextX, m54dp10 + AndroidUtilities.m55dp(10.5f));
                    this.instantViewLayout.draw(canvas);
                    canvas.restore();
                }
                if (z4) {
                    canvas.restore();
                }
            }
        }
    }

    public boolean shouldDrawMenuDrawable() {
        return this.currentMessagesGroup == null || (this.currentPosition.flags & 4) != 0;
    }

    private void drawBotButtons(Canvas canvas, ArrayList<BotButton> arrayList, int i) {
        int m54dp;
        Drawable themedDrawable;
        ChatMessageCellDelegate chatMessageCellDelegate;
        char c = 7;
        int i2 = 10;
        if (this.currentMessageObject.isOutOwner()) {
            m54dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m54dp(10);
        } else {
            m54dp = this.backgroundDrawableLeft + AndroidUtilities.m54dp((this.mediaBackground || this.drawPinnedBottom) ? 1 : 7);
        }
        int i3 = 2;
        float m54dp2 = (this.layoutHeight - AndroidUtilities.m54dp(2)) + this.transitionParams.deltaBottom;
        float f = 0.0f;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            BotButton botButton = arrayList.get(i4);
            float f2 = botButton.f1599y + botButton.height;
            if (f2 > f) {
                f = f2;
            }
        }
        this.rect.set(BitmapDescriptorFactory.HUE_RED, m54dp2, getMeasuredWidth(), f + m54dp2);
        if (i != 255) {
            canvas.saveLayerAlpha(this.rect, i, 31);
        } else {
            canvas.save();
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            BotButton botButton2 = arrayList.get(i5);
            float m54dp3 = ((botButton2.f1599y + this.layoutHeight) - AndroidUtilities.m54dp(i3)) + this.transitionParams.deltaBottom;
            float pressScale = botButton2.getPressScale();
            this.rect.set(botButton2.f1598x + m54dp, m54dp3, botButton2.f1598x + m54dp + botButton2.width, botButton2.height + m54dp3);
            canvas.save();
            if (pressScale != 1.0f) {
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            }
            applyServiceShaderMatrix();
            Arrays.fill(this.botButtonRadii, AndroidUtilities.m55dp(Math.min(6.75f, SharedConfig.bubbleRadius)));
            if (botButton2.hasPositionFlag(9)) {
                float[] fArr = this.botButtonRadii;
                float m54dp4 = AndroidUtilities.m54dp(SharedConfig.bubbleRadius);
                fArr[c] = m54dp4;
                fArr[6] = m54dp4;
            }
            if (botButton2.hasPositionFlag(i2)) {
                float[] fArr2 = this.botButtonRadii;
                float m54dp5 = AndroidUtilities.m54dp(SharedConfig.bubbleRadius);
                fArr2[5] = m54dp5;
                fArr2[4] = m54dp5;
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
                int i7 = (int) m54dp3;
                botButton2.selectorDrawable.setBounds(botButton2.f1598x + m54dp, i7, botButton2.f1598x + m54dp + botButton2.width, botButton2.height + i7);
                botButton2.selectorDrawable.setAlpha(255);
                botButton2.selectorDrawable.draw(canvas);
            }
            canvas.restore();
            canvas.save();
            i3 = 2;
            canvas.translate(botButton2.f1598x + m54dp + AndroidUtilities.m54dp(5), ((AndroidUtilities.m54dp(44) - botButton2.title.getLineBottom(botButton2.title.getLineCount() - 1)) / 2) + m54dp3);
            botButton2.title.draw(canvas);
            canvas.restore();
            if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonWebView)) {
                if (botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) {
                    if (botButton2.isInviteButton) {
                        themedDrawable = getThemedDrawable("drawable_botInvite");
                    } else {
                        themedDrawable = getThemedDrawable("drawableBotLink");
                    }
                    BaseCell.setDrawableBounds(themedDrawable, (((botButton2.f1598x + botButton2.width) - AndroidUtilities.m54dp(3)) - themedDrawable.getIntrinsicWidth()) + m54dp, m54dp3 + AndroidUtilities.m54dp(3));
                    themedDrawable.draw(canvas);
                } else if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonSwitchInline) && !(botButton2.button instanceof TLRPC$TL_keyboardButtonRequestPeer)) {
                    if (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) {
                        BaseCell.setDrawableBounds(Theme.chat_botCardDrawable, (((botButton2.f1598x + botButton2.width) - AndroidUtilities.m54dp(5)) - Theme.chat_botCardDrawable.getIntrinsicWidth()) + m54dp, m54dp3 + AndroidUtilities.m54dp(4));
                        Theme.chat_botCardDrawable.draw(canvas);
                    }
                } else {
                    Drawable themedDrawable2 = getThemedDrawable("drawableBotInline");
                    BaseCell.setDrawableBounds(themedDrawable2, (((botButton2.f1598x + botButton2.width) - AndroidUtilities.m54dp(3)) - themedDrawable2.getIntrinsicWidth()) + m54dp, m54dp3 + AndroidUtilities.m54dp(3));
                    themedDrawable2.draw(canvas);
                }
            } else {
                Drawable themedDrawable3 = getThemedDrawable("drawableBotWebView");
                BaseCell.setDrawableBounds(themedDrawable3, (((botButton2.f1598x + botButton2.width) - AndroidUtilities.m54dp(3)) - themedDrawable3.getIntrinsicWidth()) + m54dp, m54dp3 + AndroidUtilities.m54dp(3));
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

    /* JADX WARN: Removed duplicated region for block: B:283:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x02b0 A[LOOP:2: B:298:0x02a8->B:300:0x02b0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:340:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawMessageText(android.graphics.Canvas r27, java.util.ArrayList<org.telegram.messenger.MessageObject.TextLayoutBlock> r28, float r29, boolean r30, float r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawMessageText(android.graphics.Canvas, java.util.ArrayList, float, boolean, float, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0063 A[LOOP:1: B:76:0x0063->B:78:0x0066, LOOP_START, PHI: r2 r5 
      PHI: (r2v1 int) = (r2v0 int), (r2v2 int) binds: [B:75:0x0061, B:78:0x0066] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r5v2 int) = (r5v1 int), (r5v3 int) binds: [B:75:0x0061, B:78:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.telegram.p044ui.Components.AnimatedEmojiSpan[] getAnimatedEmojiSpans() {
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
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r4 = org.telegram.p044ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r0 = r3.getSpans(r2, r0, r4)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r0 = (org.telegram.p044ui.Components.AnimatedEmojiSpan[]) r0
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
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r5 = org.telegram.p044ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r3 = r4.getSpans(r2, r3, r5)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r3 = (org.telegram.p044ui.Components.AnimatedEmojiSpan[]) r3
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
            org.telegram.ui.Components.AnimatedEmojiSpan[] r1 = new org.telegram.p044ui.Components.AnimatedEmojiSpan[r1]
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.getAnimatedEmojiSpans():org.telegram.ui.Components.AnimatedEmojiSpan[]");
    }

    public void updateCaptionLayout() {
        float imageX;
        float imageY;
        float imageHeight;
        MessageObject messageObject = this.currentMessageObject;
        int i = messageObject.type;
        if (i == 1 || i == 20 || this.documentAttachType == 4 || i == 8) {
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
            this.captionX = imageX + AndroidUtilities.m54dp(5) + this.captionOffsetX;
            this.captionY = imageY + imageHeight + AndroidUtilities.m54dp(6);
        } else {
            int i2 = 17;
            if (this.hasOldCaptionPreview) {
                this.captionX = this.backgroundDrawableLeft + AndroidUtilities.m54dp(messageObject.isOutOwner() ? 11 : 17) + this.captionOffsetX;
                float m54dp = (((this.totalHeight - this.captionHeight) - AndroidUtilities.m54dp(this.drawPinnedTop ? 9 : 10)) - this.linkPreviewHeight) - AndroidUtilities.m54dp(17);
                this.captionY = m54dp;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m54dp - AndroidUtilities.m55dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
                }
            } else {
                if (this.isRoundVideo) {
                    this.captionX = getBackgroundDrawableLeft() + AndroidUtilities.m54dp((this.currentMessageObject.isOutOwner() ? 0 : 6) + 11);
                } else {
                    int i3 = this.backgroundDrawableLeft;
                    if (messageObject.isOutOwner() || this.mediaBackground || this.drawPinnedBottom) {
                        i2 = 11;
                    }
                    this.captionX = i3 + AndroidUtilities.m54dp(i2) + this.captionOffsetX;
                }
                float m54dp2 = (this.totalHeight - this.captionHeight) - AndroidUtilities.m54dp(this.drawPinnedTop ? 9 : 10);
                this.captionY = m54dp2;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m54dp2 - AndroidUtilities.m55dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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

    public int getMiniIconForCurrentState() {
        int i = this.miniButtonState;
        if (i < 0) {
            return 4;
        }
        return i == 0 ? 2 : 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x00bc, code lost:
        if (r0.attachPathExists == false) goto L78;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getIconForCurrentState() {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.getIconForCurrentState():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getMaxNameWidth() {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.getMaxNameWidth():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:604:0x011c, code lost:
        if ((r12 & 2) != 0) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateButtonState(boolean r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 2178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.updateButtonState(boolean, boolean, boolean):void");
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
        MessageObject messageObject3;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        String str;
        MessageObject messageObject4;
        MessageObject messageObject5 = this.currentMessageObject;
        if (messageObject5 != null && !messageObject5.isAnyKindOfSticker()) {
            this.currentMessageObject.putInDownloadsStore = true;
        }
        int i = this.buttonState;
        if (i == 0 && (!this.drawVideoImageButton || z2)) {
            int i2 = this.documentAttachType;
            if (i2 == 3 || i2 == 5 || (i2 == 7 && (messageObject4 = this.currentMessageObject) != null && messageObject4.isVoiceTranscriptionOpen() && this.currentMessageObject.mediaExists)) {
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
            MessageObject messageObject6 = this.currentMessageObject;
            int i3 = messageObject6.type;
            if (i3 == 1 || i3 == 20) {
                this.photoImage.setForceLoading(true);
                ImageReceiver imageReceiver = this.photoImage;
                ImageLocation forObject = ImageLocation.getForObject(this.currentPhotoObject, this.photoParentObject);
                String str3 = this.currentPhotoFilter;
                ImageLocation forObject2 = ImageLocation.getForObject(this.currentPhotoObjectThumb, this.photoParentObject);
                String str4 = this.currentPhotoFilterThumb;
                BitmapDrawable bitmapDrawable = this.currentPhotoObjectThumbStripped;
                long j = this.currentPhotoObject.size;
                MessageObject messageObject7 = this.currentMessageObject;
                imageReceiver.setImage(forObject, str3, forObject2, str4, bitmapDrawable, j, null, messageObject7, messageObject7.shouldEncryptPhotoOrVideo() ? 2 : 0);
            } else if (i3 == 8) {
                FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                if (this.currentMessageObject.loadedFileSize > 0) {
                    createLoadingProgressLayout(this.documentAttach);
                }
            } else if (this.isRoundVideo) {
                if (messageObject6.isSecretMedia()) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.currentMessageObject.getDocument(), this.currentMessageObject, 2, 1);
                } else {
                    MessageObject messageObject8 = this.currentMessageObject;
                    messageObject8.gifState = 2.0f;
                    TLRPC$Document document = messageObject8.getDocument();
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
                    MessageObject messageObject9 = this.currentMessageObject;
                    fileLoader.loadFile(tLRPC$Document, messageObject9, 1, messageObject9.shouldEncryptPhotoOrVideo() ? 2 : 0);
                    MessageObject messageObject10 = this.currentMessageObject;
                    if (messageObject10.loadedFileSize > 0) {
                        createLoadingProgressLayout(messageObject10.getDocument());
                    }
                } else if (i3 != 0 || i4 == 0) {
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForObject(this.currentPhotoObject, this.photoParentObject), this.currentPhotoFilter, ImageLocation.getForObject(this.currentPhotoObjectThumb, this.photoParentObject), this.currentPhotoFilterThumb, this.currentPhotoObjectThumbStripped, 0L, null, this.currentMessageObject, 0);
                } else if (i4 == 2) {
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForDocument(this.documentAttach), null, ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), this.currentPhotoFilterThumb, this.documentAttach.size, null, this.currentMessageObject, 0);
                    MessageObject messageObject11 = this.currentMessageObject;
                    messageObject11.gifState = 2.0f;
                    if (messageObject11.loadedFileSize > 0) {
                        createLoadingProgressLayout(messageObject11.getDocument());
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
            if (i5 == 3 || i5 == 5 || (i5 == 7 && (messageObject3 = this.currentMessageObject) != null && messageObject3.isVoiceTranscriptionOpen())) {
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
                MessageObject messageObject12 = this.currentMessageObject;
                messageObject12.loadingCancelled = true;
                int i6 = this.documentAttachType;
                if (i6 == 2 || i6 == 4 || i6 == 1 || i6 == 8) {
                    FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.documentAttach);
                } else {
                    int i7 = messageObject12.type;
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
        } else if (this.documentAttachType == 7 && (messageObject2 = this.currentMessageObject) != null && messageObject2.isVoiceTranscriptionOpen()) {
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

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
        int i = this.documentAttachType;
        updateButtonState(true, i == 3 || i == 5, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x00bc, code lost:
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.onSuccessDownload(java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0024, code lost:
        if (r8.mediaExists == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x003f, code lost:
        if (r8 == 6) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0041, code lost:
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
            if (r6 == 0) goto L8c
            org.telegram.messenger.MessageObject r6 = r4.currentMessageObject
            if (r6 == 0) goto L8c
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
            if (r6 == 0) goto L8c
            android.graphics.Bitmap r6 = r5.getBitmap()
            if (r6 == 0) goto L8c
            android.graphics.Bitmap r6 = r5.getBitmap()
            boolean r6 = r6.isRecycled()
            if (r6 != 0) goto L8c
            org.telegram.messenger.ImageReceiver r6 = r4.blurredPhotoImage
            android.graphics.Bitmap r5 = r5.getBitmap()
            android.graphics.Bitmap r5 = org.telegram.messenger.Utilities.stackBlurBitmapMax(r5)
            r6.setImageBitmap(r5)
        L8c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.didSetImage(org.telegram.messenger.ImageReceiver, boolean, boolean, boolean):void");
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

    /* JADX WARN: Removed duplicated region for block: B:76:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createLoadingProgressLayout(long r17, long r19) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.createLoadingProgressLayout(long, long):void");
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

    /* JADX WARN: Removed duplicated region for block: B:237:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:401:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureTime(org.telegram.messenger.MessageObject r19) {
        /*
            Method dump skipped, instructions count: 1191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.measureTime(org.telegram.messenger.MessageObject):void");
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

    /* JADX WARN: Can't wrap try/catch for region: R(29:30|(1:32)|33|(1:546)(2:39|(24:41|42|43|(1:45)(1:(1:514)(1:515))|46|(1:48)(1:512)|49|(7:51|(1:53)|54|(1:56)(3:62|(1:64)(1:66)|65)|57|(1:59)(1:61)|60)|67|68|69|70|71|(3:73|(1:75)|76)(1:507)|77|(1:79)|(1:81)(1:506)|82|(2:84|(1:86))|87|(1:89)(2:500|(1:502)(2:503|(1:505)))|90|(1:92)|93))|516|(25:523|(4:536|(1:538)(1:545)|539|(3:541|(1:543)|544))|527|43|(0)(0)|46|(0)(0)|49|(0)|67|68|69|70|71|(0)(0)|77|(0)|(0)(0)|82|(0)|87|(0)(0)|90|(0)|93)(1:522)|42|43|(0)(0)|46|(0)(0)|49|(0)|67|68|69|70|71|(0)(0)|77|(0)|(0)(0)|82|(0)|87|(0)(0)|90|(0)|93) */
    /* JADX WARN: Code restructure failed: missing block: B:689:0x03bc, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:690:0x03bd, code lost:
        org.telegram.messenger.FileLog.m49e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:850:0x07e2, code lost:
        if ((r0.action instanceof org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate) == false) goto L482;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:647:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:654:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:657:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:677:0x0340 A[Catch: Exception -> 0x03bc, TryCatch #2 {Exception -> 0x03bc, blocks: (B:675:0x031e, B:677:0x0340, B:679:0x0357, B:680:0x036b, B:682:0x037a, B:684:0x037e, B:686:0x038b, B:687:0x03b8, B:681:0x0375), top: B:1114:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:681:0x0375 A[Catch: Exception -> 0x03bc, TryCatch #2 {Exception -> 0x03bc, blocks: (B:675:0x031e, B:677:0x0340, B:679:0x0357, B:680:0x036b, B:682:0x037a, B:684:0x037e, B:686:0x038b, B:687:0x03b8, B:681:0x0375), top: B:1114:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:684:0x037e A[Catch: Exception -> 0x03bc, TryCatch #2 {Exception -> 0x03bc, blocks: (B:675:0x031e, B:677:0x0340, B:679:0x0357, B:680:0x036b, B:682:0x037a, B:684:0x037e, B:686:0x038b, B:687:0x03b8, B:681:0x0375), top: B:1114:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:686:0x038b A[Catch: Exception -> 0x03bc, TryCatch #2 {Exception -> 0x03bc, blocks: (B:675:0x031e, B:677:0x0340, B:679:0x0357, B:680:0x036b, B:682:0x037a, B:684:0x037e, B:686:0x038b, B:687:0x03b8, B:681:0x0375), top: B:1114:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:687:0x03b8 A[Catch: Exception -> 0x03bc, TRY_LEAVE, TryCatch #2 {Exception -> 0x03bc, blocks: (B:675:0x031e, B:677:0x0340, B:679:0x0357, B:680:0x036b, B:682:0x037a, B:684:0x037e, B:686:0x038b, B:687:0x03b8, B:681:0x0375), top: B:1114:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:693:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:698:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:699:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x040a  */
    /* JADX WARN: Type inference failed for: r4v101 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r5v88 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageObjectInternal(org.telegram.messenger.MessageObject r42) {
        /*
            Method dump skipped, instructions count: 3812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.setMessageObjectInternal(org.telegram.messenger.MessageObject):void");
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
        TLRPC$ChatInvite tLRPC$ChatInvite = this.currentMessageObject.sponsoredChatInvite;
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
                    return ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3290R.C3292drawable.msg_premium_liststar).mutate();
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
            return string == null ? LocaleController.getString("PsaMessageDefault", C3290R.string.PsaMessageDefault) : string;
        }
        return LocaleController.getString("ForwardedMessage", C3290R.string.ForwardedMessage);
    }

    public int getExtraInsetHeight() {
        int i = this.addedCaptionHeight;
        if (this.drawCommentButton) {
            i += AndroidUtilities.m55dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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

    /* JADX WARN: Removed duplicated region for block: B:64:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0046  */
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.setBackgroundTopY(boolean):void");
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
                    i2 -= AndroidUtilities.m54dp(40);
                } else {
                    i3 += AndroidUtilities.m54dp(40);
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
            canvas.clipRect(bounds.left + AndroidUtilities.m54dp(4), bounds.top + AndroidUtilities.m54dp(4), bounds.right - AndroidUtilities.m54dp(4), bounds.bottom - AndroidUtilities.m54dp(4));
            z = true;
        }
        drawContent(canvas);
        if (z) {
            canvas.restore();
        }
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate == null || chatMessageCellDelegate.canDrawOutboundsContent() || this.transitionParams.messageEntering || getAlpha() != 1.0f) {
            drawOutboundsContent(canvas);
        }
        if (this.replyNameLayout != null) {
            this.replyHeight = AndroidUtilities.m54dp(7) + Theme.chat_replyNamePaint.getTextSize() + Theme.chat_replyTextPaint.getTextSize();
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2.type != 19) {
                    if (messageObject2.isOutOwner()) {
                        int m54dp = AndroidUtilities.m54dp(23);
                        this.replyStartX = m54dp;
                        if (this.isPlayingRound) {
                            this.replyStartX = m54dp - (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize);
                        }
                    } else if (this.currentMessageObject.type == 5) {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m54dp(4);
                    } else {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m54dp(17);
                    }
                    if (this.drawForwardedName) {
                        int m54dp2 = AndroidUtilities.m54dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
                        this.forwardHeight = m54dp2;
                        this.replyStartY = this.forwardNameY + m54dp2 + AndroidUtilities.m54dp(6);
                    } else {
                        int m54dp3 = AndroidUtilities.m54dp(12);
                        this.replyStartY = m54dp3;
                        if (this.drawTopic && (messageTopicButton2 = this.topicButton) != null) {
                            this.replyStartY = m54dp3 + messageTopicButton2.height() + AndroidUtilities.m54dp(10);
                        }
                    }
                }
            }
            if (this.currentMessageObject.isOutOwner()) {
                int m54dp4 = this.backgroundDrawableLeft + AndroidUtilities.m54dp(12) + getExtraTextX();
                this.replyStartX = m54dp4;
                if (this.currentMessageObject.type == 19) {
                    this.replyStartX = m54dp4 - Math.max(0, ((Math.max(this.replyNameWidth, this.replyTextWidth) + m54dp4) + AndroidUtilities.m54dp(14)) - AndroidUtilities.displaySize.x);
                }
            } else if (this.mediaBackground) {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m54dp(12) + getExtraTextX();
            } else {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m54dp(this.drawPinnedBottom ? 12 : 18) + getExtraTextX();
            }
            if (this.currentMessageObject.type == 19) {
                this.replyStartX -= AndroidUtilities.m54dp(7);
            }
            this.forwardHeight = AndroidUtilities.m54dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
            int m54dp5 = AndroidUtilities.m54dp(12) + ((!this.drawNameLayout || this.nameLayout == null) ? 0 : AndroidUtilities.m54dp(6) + ((int) Theme.chat_namePaint.getTextSize())) + ((!this.drawForwardedName || this.forwardedNameLayout[0] == null) ? 0 : AndroidUtilities.m54dp(4) + this.forwardHeight);
            this.replyStartY = m54dp5;
            if (this.drawTopic && (messageTopicButton = this.topicButton) != null) {
                this.replyStartY = m54dp5 + messageTopicButton.height() + AndroidUtilities.m54dp(5);
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

    /* JADX WARN: Removed duplicated region for block: B:728:0x0717  */
    /* JADX WARN: Removed duplicated region for block: B:746:0x07d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackgroundInternal(android.graphics.Canvas r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 2138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawBackgroundInternal(android.graphics.Canvas, boolean):void");
    }

    private void animateCheckboxTranslation() {
        boolean z = this.checkBoxVisible;
        if (z || this.checkBoxAnimationInProgress) {
            if ((z && this.checkBoxAnimationProgress == 1.0f) || (!z && this.checkBoxAnimationProgress == BitmapDescriptorFactory.HUE_RED)) {
                this.checkBoxAnimationInProgress = false;
            }
            this.checkBoxTranslation = (int) Math.ceil((z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m54dp(35));
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
        int m54dp = AndroidUtilities.m54dp(32);
        if (this.commentLayout != null) {
            this.sideStartY -= AndroidUtilities.m54dp(18);
            m54dp += AndroidUtilities.m54dp(18);
        }
        RectF rectF = this.rect;
        float f2 = this.sideStartX;
        rectF.set(f2, this.sideStartY, AndroidUtilities.m54dp(32) + f2, this.sideStartY + m54dp);
        applyServiceShaderMatrix();
        int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (i != 0) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
        } else {
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
        }
        if (hasGradientService()) {
            if (i != 0) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        Drawable themeDrawable = Theme.getThemeDrawable("drawableCommentSticker");
        BaseCell.setDrawableBounds(themeDrawable, this.sideStartX + AndroidUtilities.m54dp(4), this.sideStartY + AndroidUtilities.m54dp(4));
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
                    canvas.translate(this.sideStartX + ((AndroidUtilities.m54dp(32) - this.transitionParams.animateTotalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m54dp(30));
                    this.transitionParams.animateCommentsLayout.draw(canvas);
                    canvas.restore();
                }
                Theme.chat_stickerCommentCountPaint.setAlpha((int) (this.transitionParams.animateChangeProgress * 255.0f));
            }
            canvas.save();
            canvas.translate(this.sideStartX + ((AndroidUtilities.m54dp(32) - this.totalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m54dp(30));
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
        float m54dp;
        int extraTextX;
        float f4;
        int themedColor;
        float m54dp2;
        float m54dp3;
        if (!this.enterTransitionInProgress) {
            drawAnimatedEmojis(canvas, 1.0f);
        }
        if (this.currentNameStatusDrawable != null && this.drawNameLayout && this.nameLayout != null) {
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                themedColor = getThemedColor(Theme.key_chat_stickerNameText);
                if (this.currentMessageObject.isOutOwner()) {
                    m54dp3 = AndroidUtilities.m54dp(28);
                } else {
                    m54dp3 = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + this.backgroundDrawableRight + AndroidUtilities.m54dp(22);
                }
                m54dp2 = this.layoutHeight - AndroidUtilities.m54dp(38);
                f4 = m54dp3 - this.nameOffsetX;
            } else {
                int i = 11;
                if (this.mediaBackground || this.currentMessageObject.isOutOwner()) {
                    m54dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m54dp(11);
                    extraTextX = getExtraTextX();
                } else {
                    m54dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m54dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 17);
                    extraTextX = getExtraTextX();
                }
                f4 = m54dp + extraTextX;
                if (this.currentUser != null) {
                    Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
                    if (messageDrawable != null && messageDrawable.hasGradient()) {
                        themedColor = getThemedColor(Theme.key_chat_messageTextOut);
                    } else {
                        themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(this.currentUser.f1574id));
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
                        themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(this.currentChat.f1433id));
                    }
                } else {
                    themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(0L));
                }
                m54dp2 = AndroidUtilities.m54dp(this.drawPinnedTop ? 9 : 10);
            }
            MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
            if (groupedMessages != null) {
                MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages.transitionParams;
                if (transitionParams2.backgroundChangeBounds) {
                    f4 += transitionParams2.offsetLeft;
                    m54dp2 += transitionParams2.offsetTop - getTranslationY();
                }
            }
            float f5 = f4 + this.animationOffsetX;
            TransitionParams transitionParams3 = this.transitionParams;
            float f6 = m54dp2 + transitionParams3.deltaTop;
            if (transitionParams3.animateSign) {
                f5 = ((f5 - this.transitionParams.animateNameX) * this.transitionParams.animateChangeProgress) + this.transitionParams.animateNameX;
            }
            this.currentNameStatusDrawable.setBounds((int) (Math.abs(f5) + this.nameLayoutWidth + AndroidUtilities.m54dp(2)), (int) (((this.nameLayout.getHeight() / 2) + f6) - AndroidUtilities.m54dp(10)), (int) (Math.abs(f5) + this.nameLayoutWidth + AndroidUtilities.m54dp(22)), (int) (f6 + (this.nameLayout.getHeight() / 2) + AndroidUtilities.m54dp(10)));
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
                    canvas.clipRect(bounds.left + AndroidUtilities.m54dp(4), bounds.top + AndroidUtilities.m54dp(4), bounds.right - AndroidUtilities.m54dp(10), bounds.bottom - AndroidUtilities.m54dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m54dp(4), bounds.top + AndroidUtilities.m54dp(4), bounds.right - AndroidUtilities.m54dp(4), bounds.bottom - AndroidUtilities.m54dp(4));
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
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0087, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0088, code lost:
        org.telegram.messenger.FileLog.m49e(r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawAnimatedEmojiCaption(android.graphics.Canvas r12, android.text.Layout r13, org.telegram.p044ui.Components.AnimatedEmojiSpan.EmojiGroupedSpans r14, float r15) {
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
            boolean r1 = org.telegram.p044ui.Cells.ChatMessageCell.TransitionParams.access$6300(r1)
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
            android.graphics.PorterDuffColorFilter r10 = org.telegram.p044ui.ActionBar.Theme.chat_animatedEmojiTextColorFilter     // Catch: java.lang.Exception -> L87
            r1 = r12
            r2 = r13
            r3 = r14
            org.telegram.p044ui.Components.AnimatedEmojiSpan.drawAnimatedEmojis(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L87
            goto L8b
        L87:
            r13 = move-exception
            org.telegram.messenger.FileLog.m49e(r13)
        L8b:
            r12.restore()
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawAnimatedEmojiCaption(android.graphics.Canvas, android.text.Layout, org.telegram.ui.Components.AnimatedEmojiSpan$EmojiGroupedSpans, float):void");
    }

    private void drawSideButton(Canvas canvas) {
        this.drawAdditionalSideButton = !this.wideMode && checkNeedDrawAdditionalSideButton(this.currentMessageObject);
        float backgroundDrawableBottom = (getBackgroundDrawableBottom() - AndroidUtilities.m55dp(1.5f)) + this.transitionParams.deltaBottom;
        int m54dp = AndroidUtilities.m54dp(32);
        int m54dp2 = AndroidUtilities.m54dp(8);
        int i = m54dp + m54dp2;
        boolean z = backgroundDrawableBottom >= ((float) (i + m54dp));
        if (this.drawAdditionalSideButton && (this.drawSideButton == 0 || z)) {
            if (this.currentMessageObject.isOutOwner()) {
                float f = this.transitionParams.lastBackgroundLeft - i;
                this.additionalSideButtonStartX = f;
                MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
                if (groupedMessages != null) {
                    this.additionalSideButtonStartX = f + (groupedMessages.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float f2 = this.transitionParams.lastBackgroundRight + m54dp2;
                this.additionalSideButtonStartX = f2;
                MessageObject.GroupedMessages groupedMessages2 = this.currentMessagesGroup;
                if (groupedMessages2 != null) {
                    this.additionalSideButtonStartX = f2 + (groupedMessages2.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            if (this.drawSideButton == 0) {
                this.additionalSideButtonStartY = backgroundDrawableBottom - m54dp;
            } else if (z) {
                float f3 = m54dp;
                this.additionalSideButtonStartY = ((backgroundDrawableBottom - f3) - m54dp2) - f3;
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
            float f8 = m54dp;
            rectF.set(f6, f7, f6 + f8, f8 + f7);
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, getX(), this.viewTop);
            Paint paint = this.additionalSideButtonPressed ? Theme.chat_actionBackgroundSelectedPaint : Theme.chat_actionBackgroundPaint;
            int alpha = paint.getAlpha();
            paint.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), paint);
            paint.setAlpha(alpha);
            if (Theme.hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            Drawable drawable = this.currentMessageObject.isForwardingEditor ? Theme.chat_editIconDrawable : Theme.chat_translateIconDrawable;
            int alpha2 = drawable.getAlpha();
            BaseCell.setDrawableBounds(drawable, this.additionalSideButtonStartX + AndroidUtilities.m54dp(4), this.additionalSideButtonStartY + AndroidUtilities.m54dp(4));
            drawable.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            drawable.draw(canvas);
            drawable.setAlpha(alpha2);
        }
        if (this.drawSideButton != 0) {
            if (this.currentMessageObject.isOutOwner()) {
                float m54dp3 = this.transitionParams.lastBackgroundLeft - AndroidUtilities.m54dp(40);
                this.sideStartX = m54dp3;
                MessageObject.GroupedMessages groupedMessages4 = this.currentMessagesGroup;
                if (groupedMessages4 != null) {
                    this.sideStartX = m54dp3 + (groupedMessages4.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float m54dp4 = this.transitionParams.lastBackgroundRight + AndroidUtilities.m54dp(8);
                this.sideStartX = m54dp4;
                MessageObject.GroupedMessages groupedMessages5 = this.currentMessagesGroup;
                if (groupedMessages5 != null) {
                    this.sideStartX = m54dp4 + (groupedMessages5.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            float m54dp5 = (this.layoutHeight + this.transitionParams.deltaBottom) - AndroidUtilities.m54dp(41);
            this.sideStartY = m54dp5;
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject.type == 19 && messageObject.textWidth < this.timeTextWidth) {
                this.sideStartY = m54dp5 - AndroidUtilities.m54dp(22);
            }
            if (this.albumMode || (this.drawAdditionalSideButton && z)) {
                this.sideStartY = backgroundDrawableBottom - m54dp;
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
                float m54dp6 = this.isAvatarVisible ? (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f : AndroidUtilities.m54dp(50);
                float videoTranscriptionProgress = this.isPlayingRound ? (1.0f - getVideoTranscriptionProgress()) * m54dp6 : 0.0f;
                if (this.isPlayingRound) {
                    f11 = AndroidUtilities.m54dp(28) * (1.0f - getVideoTranscriptionProgress());
                }
                TransitionParams transitionParams3 = this.transitionParams;
                if (transitionParams3.animatePlayingRound) {
                    videoTranscriptionProgress = (this.isPlayingRound ? transitionParams3.animateChangeProgress : 1.0f - transitionParams3.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress()) * m54dp6;
                    f11 = AndroidUtilities.m54dp(28) * (this.isPlayingRound ? this.transitionParams.animateChangeProgress : 1.0f - this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress());
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
            rectF2.set(f12, this.sideStartY, AndroidUtilities.m54dp(32) + f12, this.sideStartY + AndroidUtilities.m54dp(32));
            applyServiceShaderMatrix();
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(16), AndroidUtilities.m54dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            if (this.drawSideButton == 2) {
                Drawable themedDrawable = getThemedDrawable("drawableGoIcon");
                if (this.currentMessageObject.isOutOwner()) {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m54dp(10), this.sideStartY + AndroidUtilities.m54dp(9));
                    canvas.save();
                    canvas.scale(-1.0f, 1.0f, themedDrawable.getBounds().centerX(), themedDrawable.getBounds().centerY());
                } else {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m54dp(12), this.sideStartY + AndroidUtilities.m54dp(9));
                }
                themedDrawable.draw(canvas);
                if (this.currentMessageObject.isOutOwner()) {
                    canvas.restore();
                    return;
                }
                return;
            }
            Drawable themedDrawable2 = getThemedDrawable("drawableShareIcon");
            BaseCell.setDrawableBounds(themedDrawable2, this.sideStartX + AndroidUtilities.m54dp(8), this.sideStartY + AndroidUtilities.m54dp(9));
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
        int m54dp;
        int m54dp2;
        int i;
        if (this.currentMessageObject.isOutOwner()) {
            if (this.isRoundVideo) {
                return (this.layoutWidth - this.backgroundWidth) - ((int) ((1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m54dp(9)));
            }
            return (this.layoutWidth - this.backgroundWidth) - (this.mediaBackground ? AndroidUtilities.m54dp(9) : 0);
        }
        if (this.isRoundVideo) {
            if (this.isChat && this.isAvatarVisible) {
                r1 = 48;
            }
            m54dp = AndroidUtilities.m54dp(r1 + 3) + ((int) (AndroidUtilities.m54dp(6) * (1.0f - getVideoTranscriptionProgress())));
        } else {
            if (this.isChat && this.isAvatarVisible) {
                r1 = 48;
            }
            m54dp = AndroidUtilities.m54dp(r1 + (this.mediaBackground ? 9 : 3));
        }
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.isDocuments && (i = this.currentPosition.leftSpanOffset) != 0) {
            m54dp += (int) Math.ceil((i / 1000.0f) * getGroupPhotosWidth());
        }
        if (this.isRoundVideo) {
            if (!this.drawPinnedBottom) {
                return m54dp;
            }
            m54dp2 = (int) (AndroidUtilities.m54dp(6) * (1.0f - getVideoTranscriptionProgress()));
        } else if (this.mediaBackground || !this.drawPinnedBottom) {
            return m54dp;
        } else {
            m54dp2 = AndroidUtilities.m54dp(6);
        }
        return m54dp + m54dp2;
    }

    public int getBackgroundDrawableRight() {
        int m54dp;
        int backgroundDrawableLeft;
        int i = this.backgroundWidth;
        if (this.isRoundVideo) {
            m54dp = i - ((int) (getVideoTranscriptionProgress() * AndroidUtilities.m54dp(3)));
            if (this.drawPinnedBottom && this.currentMessageObject.isOutOwner()) {
                m54dp = (int) (m54dp - (AndroidUtilities.m54dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            if (this.drawPinnedBottom && !this.currentMessageObject.isOutOwner()) {
                m54dp = (int) (m54dp - (AndroidUtilities.m54dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        } else {
            m54dp = i - (this.mediaBackground ? 0 : AndroidUtilities.m54dp(3));
            if (!this.mediaBackground && this.drawPinnedBottom) {
                m54dp -= AndroidUtilities.m54dp(6);
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        }
        return backgroundDrawableLeft + m54dp;
    }

    public int getBackgroundDrawableTop() {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int m54dp = ((groupedMessagePosition == null || (groupedMessagePosition.flags & 4) != 0) ? 0 : 0 - AndroidUtilities.m54dp(3)) + (this.drawPinnedTop ? 0 : AndroidUtilities.m54dp(1));
        return (this.mediaBackground || !this.drawPinnedTop) ? m54dp : m54dp - AndroidUtilities.m54dp(1);
    }

    public int getBackgroundDrawableBottom() {
        int i;
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int i2 = 0;
        if (groupedMessagePosition != null) {
            i = (groupedMessagePosition.flags & 4) == 0 ? AndroidUtilities.m54dp(3) + 0 : 0;
            if ((this.currentPosition.flags & 8) == 0) {
                i += AndroidUtilities.m54dp(this.currentMessageObject.isOutOwner() ? 3 : 4);
            }
        } else {
            i = 0;
        }
        boolean z = this.drawPinnedBottom;
        if (!z || !this.drawPinnedTop) {
            if (z) {
                i2 = AndroidUtilities.m54dp(1);
            } else {
                i2 = AndroidUtilities.m54dp(2);
            }
        }
        int backgroundDrawableTop = ((getBackgroundDrawableTop() + this.layoutHeight) - i2) + i;
        if (this.mediaBackground) {
            return backgroundDrawableTop;
        }
        if (this.drawPinnedTop) {
            backgroundDrawableTop += AndroidUtilities.m54dp(1);
        }
        return this.drawPinnedBottom ? backgroundDrawableTop + AndroidUtilities.m54dp(1) : backgroundDrawableTop;
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackground(android.graphics.Canvas r16, int r17, int r18, int r19, int r20, boolean r21, boolean r22, boolean r23, int r24) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawBackground(android.graphics.Canvas, int, int, int, int, boolean, boolean, boolean, int):void");
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

    /* JADX WARN: Removed duplicated region for block: B:1067:0x086b  */
    /* JADX WARN: Removed duplicated region for block: B:1076:0x08c2  */
    /* JADX WARN: Removed duplicated region for block: B:1079:0x08c9  */
    /* JADX WARN: Removed duplicated region for block: B:1113:0x09ab  */
    /* JADX WARN: Removed duplicated region for block: B:1127:0x09cc  */
    /* JADX WARN: Removed duplicated region for block: B:1143:0x0a24  */
    /* JADX WARN: Removed duplicated region for block: B:1145:0x0a34  */
    /* JADX WARN: Removed duplicated region for block: B:1163:0x0a8a  */
    /* JADX WARN: Removed duplicated region for block: B:1166:0x0a95  */
    /* JADX WARN: Removed duplicated region for block: B:1420:0x1372  */
    /* JADX WARN: Removed duplicated region for block: B:1427:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:897:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:902:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:903:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:906:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:910:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:913:0x04f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawNamesLayout(android.graphics.Canvas r33, float r34) {
        /*
            Method dump skipped, instructions count: 4982
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawNamesLayout(android.graphics.Canvas, float):void");
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
    /* JADX WARN: Removed duplicated region for block: B:628:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:629:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:639:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:640:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:644:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:645:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:662:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:666:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:675:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:685:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:695:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:708:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:716:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:719:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:723:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:724:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x05f6  */
    /* JADX WARN: Removed duplicated region for block: B:729:0x05fa  */
    /* JADX WARN: Removed duplicated region for block: B:735:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:938:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawCaptionLayout(android.graphics.Canvas r25, android.text.StaticLayout r26, boolean r27, float r28) {
        /*
            Method dump skipped, instructions count: 2807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawCaptionLayout(android.graphics.Canvas, android.text.StaticLayout, boolean, float):void");
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

    /* JADX WARN: Removed duplicated region for block: B:125:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawTime(android.graphics.Canvas r17, float r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawTime(android.graphics.Canvas, float, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:578:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:579:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:591:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:594:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:599:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:607:0x0304  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawTimeInternal(android.graphics.Canvas r40, float r41, boolean r42, float r43, android.text.StaticLayout r44, float r45, boolean r46) {
        /*
            Method dump skipped, instructions count: 2737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawTimeInternal(android.graphics.Canvas, float, boolean, float, android.text.StaticLayout, float, boolean):void");
    }

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
                    ChatMessageCell.this.lambda$createStatusDrawableAnimator$15(z, valueAnimator);
                }
            });
            this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.11
                {
                    ChatMessageCell.this = this;
                }

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

    public /* synthetic */ void lambda$createStatusDrawableAnimator$15(boolean z, ValueAnimator valueAnimator) {
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
                f6 = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m55dp(9.0f);
            } else {
                float m55dp = (f - AndroidUtilities.m55dp((this.pinnedBottom || this.pinnedTop) ? 9.5f : 8.5f)) + f3;
                if (this.isRoundVideo) {
                    f6 = m55dp - ((AndroidUtilities.m54dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
                } else {
                    f6 = m55dp;
                }
            }
            BaseCell.setDrawableBounds(msgClockDrawable, f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m54dp(11)), f6 - msgClockDrawable.getIntrinsicHeight());
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
            float m54dp = f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m54dp(11));
            float f9 = 21.5f;
            if (shouldDrawTimeOnMedia()) {
                currentTotalHeight = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m55dp(21.5f);
            } else {
                if (!this.pinnedBottom && !this.pinnedTop) {
                    f9 = 20.5f;
                }
                float m55dp2 = (f - AndroidUtilities.m55dp(f9)) + f3;
                currentTotalHeight = this.isRoundVideo ? m55dp2 - (this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress())) : m55dp2;
            }
            this.rect.set(m54dp, currentTotalHeight, AndroidUtilities.m54dp(14) + m54dp, AndroidUtilities.m54dp(14) + currentTotalHeight);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            int i = (int) (f8 * 255.0f);
            Theme.chat_msgErrorPaint.setAlpha(i);
            if (z4) {
                canvas.save();
                canvas.scale(f7, f7, this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            Drawable themedDrawable = getThemedDrawable("drawableMsgError");
            BaseCell.setDrawableBounds(themedDrawable, m54dp + AndroidUtilities.m54dp(6), currentTotalHeight + AndroidUtilities.m54dp(2));
            themedDrawable.setAlpha(i);
            themedDrawable.draw(canvas);
            themedDrawable.setAlpha(255);
            if (z4) {
                canvas.restore();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:348:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:581:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:595:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:599:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0597  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawViewsAndRepliesLayout(android.graphics.Canvas r24, float r25, float r26, float r27, float r28, float r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawViewsAndRepliesLayout(android.graphics.Canvas, float, float, float, float, float, boolean):void");
    }

    private void drawStatusDrawable(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f, boolean z5, float f2, float f3, float f4, boolean z6, boolean z7) {
        float imageY2;
        int m54dp;
        int m54dp2;
        Drawable themedDrawable;
        Drawable drawable;
        int i;
        boolean z8 = (f4 == 1.0f || z6) ? false : true;
        float f5 = (f4 * 0.5f) + 0.5f;
        float f6 = z8 ? f * f4 : f;
        if (this.documentAttachType == 7) {
            imageY2 = f3 - ((AndroidUtilities.m54dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
        } else {
            imageY2 = this.photoImage.getImageY2() + this.additionalTimeOffsetY;
        }
        float m55dp = imageY2 - AndroidUtilities.m55dp(8.5f);
        if (z3) {
            MsgClockDrawable msgClockDrawable = Theme.chat_msgClockDrawable;
            if (shouldDrawTimeOnMedia()) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    i = getThemedColor(Theme.key_chat_serviceText);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m54dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m55dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    i = getThemedColor(Theme.key_chat_mediaSentClock);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m54dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m55dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (f6 * 255.0f));
                }
            } else {
                int themedColor = getThemedColor(Theme.key_chat_outSentClock);
                BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m55dp(18.5f)) - msgClockDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m55dp(8.5f)) - msgClockDrawable.getIntrinsicHeight()) + f2);
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
                            canvas.translate(AndroidUtilities.m55dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m55dp(z5 ? 28.3f : 26.3f)) - drawable.getIntrinsicWidth(), (m55dp - drawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m55dp(z5 ? 23.5f : 21.5f)) - drawable.getIntrinsicWidth(), (m55dp - drawable.getIntrinsicHeight()) + f2);
                    }
                    drawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    if (z) {
                        if (z6) {
                            canvas.translate(AndroidUtilities.m55dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m55dp(z5 ? 28.3f : 26.3f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m55dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m55dp(z5 ? 23.5f : 21.5f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m55dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
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
                        canvas.translate(AndroidUtilities.m54dp(4) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                    }
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckReadSelected" : "drawableMsgOutCheckRead");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m55dp(22.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m54dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
                } else {
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckSelected" : "drawableMsgOutCheck");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m55dp(18.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m54dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
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
                BaseCell.setDrawableBounds(themedDrawable2, (this.layoutWidth - AndroidUtilities.m55dp(z5 ? 23.5f : 21.5f)) - themedDrawable2.getIntrinsicWidth(), (m55dp - themedDrawable2.getIntrinsicHeight()) + f2);
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
                float m54dp3 = (this.layoutWidth - AndroidUtilities.m54dp(18)) - themedDrawable3.getIntrinsicWidth();
                if (!this.pinnedBottom && !this.pinnedTop) {
                    i2 = 8;
                }
                BaseCell.setDrawableBounds(themedDrawable3, m54dp3, ((f3 - AndroidUtilities.m54dp(i2)) - themedDrawable3.getIntrinsicHeight()) + f2);
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
                m54dp = this.layoutWidth - AndroidUtilities.m55dp(34.5f);
                m54dp2 = AndroidUtilities.m55dp(26.5f);
            } else {
                m54dp = this.layoutWidth - AndroidUtilities.m54dp(32);
                m54dp2 = AndroidUtilities.m54dp((this.pinnedBottom || this.pinnedTop) ? 22 : 21);
            }
            float f7 = (f3 - m54dp2) + f2;
            this.rect.set(m54dp, f7, AndroidUtilities.m54dp(14) + m54dp, AndroidUtilities.m54dp(14) + f7);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            Theme.chat_msgErrorPaint.setAlpha((int) (alpha * f6));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            BaseCell.setDrawableBounds(Theme.chat_msgErrorDrawable, m54dp + AndroidUtilities.m54dp(6), f7 + AndroidUtilities.m54dp(2));
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

    /* JADX WARN: Code restructure failed: missing block: B:1469:0x0a40, code lost:
        if (r1[0] == 3) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1737:0x11a3, code lost:
        if (r5 == 2) goto L678;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1802:0x1240, code lost:
        if (r30.documentAttachType != 4) goto L805;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1990:0x1686, code lost:
        if (r1.revealingMediaSpoilers != false) goto L878;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1998:0x16a1, code lost:
        if (r30.radialProgress.getIcon() != 4) goto L878;
     */
    /* JADX WARN: Removed duplicated region for block: B:1190:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:1191:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:1901:0x148b  */
    /* JADX WARN: Removed duplicated region for block: B:1905:0x14a4  */
    /* JADX WARN: Removed duplicated region for block: B:1913:0x14c5  */
    /* JADX WARN: Removed duplicated region for block: B:1917:0x14dc  */
    /* JADX WARN: Removed duplicated region for block: B:1939:0x151a  */
    /* JADX WARN: Removed duplicated region for block: B:1943:0x152b  */
    /* JADX WARN: Removed duplicated region for block: B:1987:0x167e  */
    /* JADX WARN: Removed duplicated region for block: B:2001:0x16a7  */
    /* JADX WARN: Removed duplicated region for block: B:2026:0x1715  */
    /* JADX WARN: Removed duplicated region for block: B:2028:0x171d  */
    /* JADX WARN: Removed duplicated region for block: B:2049:0x17c6  */
    /* JADX WARN: Removed duplicated region for block: B:2055:0x17da  */
    /* JADX WARN: Removed duplicated region for block: B:2059:0x17e8  */
    /* JADX WARN: Removed duplicated region for block: B:2094:0x18b0  */
    /* JADX WARN: Removed duplicated region for block: B:2097:0x18b7  */
    /* JADX WARN: Removed duplicated region for block: B:2172:0x1a90  */
    /* JADX WARN: Removed duplicated region for block: B:2179:0x1aaf  */
    /* JADX WARN: Removed duplicated region for block: B:2182:0x1b01  */
    /* JADX WARN: Removed duplicated region for block: B:2210:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawOverlays(android.graphics.Canvas r31) {
        /*
            Method dump skipped, instructions count: 7126
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.drawOverlays(android.graphics.Canvas):void");
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
            if (i == C3290R.C3293id.acc_action_small_button) {
                didPressMiniButton(true);
            } else if (i == C3290R.C3293id.acc_action_msg_options) {
                ChatMessageCellDelegate chatMessageCellDelegate3 = this.delegate;
                if (chatMessageCellDelegate3 != null) {
                    if (this.currentMessageObject.type == 16) {
                        chatMessageCellDelegate3.didLongPress(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        chatMessageCellDelegate3.didPressOther(this, this.otherX, this.otherY);
                    }
                }
            } else if (i == C3290R.C3293id.acc_action_open_forwarded_origin && (chatMessageCellDelegate = this.delegate) != null) {
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

    /* JADX WARN: Removed duplicated region for block: B:45:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.telegram.p044ui.Components.Point getMessageSize(int r3, int r4, int r5, int r6) {
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
            int r6 = org.telegram.messenger.AndroidUtilities.m54dp(r6)
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
            int r6 = org.telegram.messenger.AndroidUtilities.m54dp(r6)
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
            int r1 = org.telegram.messenger.AndroidUtilities.m54dp(r2)
        L62:
            if (r0 != 0) goto L68
            int r0 = org.telegram.messenger.AndroidUtilities.m54dp(r2)
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
            int r2 = org.telegram.messenger.AndroidUtilities.m54dp(r6)
            if (r0 >= r2) goto L86
            int r6 = org.telegram.messenger.AndroidUtilities.m54dp(r6)
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.getMessageSize(int, int, int, int):org.telegram.ui.Components.Point");
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
            float m54dp = 1.0f - ((i * 0.05f) / AndroidUtilities.m54dp(35));
            setScaleX(m54dp);
            setScaleY(m54dp);
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
                this.checkBoxTranslation = (int) Math.ceil((z2 ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m54dp(35));
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

    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$MessageAccessibilityNodeProvider */
    /* loaded from: classes5.dex */
    public class MessageAccessibilityNodeProvider extends AccessibilityNodeProvider {
        private Path linkPath;
        private Rect rect;
        private RectF rectF;

        private MessageAccessibilityNodeProvider() {
            ChatMessageCell.this = r1;
            this.linkPath = new Path();
            this.rectF = new RectF();
            this.rect = new Rect();
        }

        /* renamed from: org.telegram.ui.Cells.ChatMessageCell$MessageAccessibilityNodeProvider$ProfileSpan */
        /* loaded from: classes5.dex */
        private class ProfileSpan extends ClickableSpan {
            private TLRPC$User user;

            public ProfileSpan(TLRPC$User tLRPC$User) {
                MessageAccessibilityNodeProvider.this = r1;
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
                            spannableStringBuilder.append((CharSequence) LocaleController.formatString(C3290R.string.AccDescrDocumentType, attachFileName.substring(attachFileName.lastIndexOf(46) + 1).toUpperCase(Locale.ROOT)));
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
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString(isSending ? "AccDescrUploadProgress" : "AccDescrDownloadProgress", isSending ? C3290R.string.AccDescrUploadProgress : C3290R.string.AccDescrDownloadProgress, AndroidUtilities.formatFileSize(ChatMessageCell.this.currentMessageObject.loadedFileSize), AndroidUtilities.formatFileSize(ChatMessageCell.this.lastLoadingSizeTotal)));
                    }
                    if (!ChatMessageCell.this.currentMessageObject.isMusic()) {
                        if (ChatMessageCell.this.currentMessageObject.isVoice() || ChatMessageCell.this.isRoundVideo) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) LocaleController.formatDuration(ChatMessageCell.this.currentMessageObject.getDuration()));
                            spannableStringBuilder.append((CharSequence) ", ");
                            if (ChatMessageCell.this.currentMessageObject.isContentUnread()) {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgNotPlayed", C3290R.string.AccDescrMsgNotPlayed));
                            } else {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgPlayed", C3290R.string.AccDescrMsgPlayed));
                            }
                        }
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrMusicInfo", C3290R.string.AccDescrMusicInfo, ChatMessageCell.this.currentMessageObject.getMusicAuthor(), ChatMessageCell.this.currentMessageObject.getMusicTitle()));
                        spannableStringBuilder.append((CharSequence) ", ");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatDuration(ChatMessageCell.this.currentMessageObject.getDuration()));
                    }
                    if (ChatMessageCell.this.lastPoll != null) {
                        spannableStringBuilder.append((CharSequence) ", ");
                        spannableStringBuilder.append((CharSequence) ChatMessageCell.this.lastPoll.question);
                        spannableStringBuilder.append((CharSequence) ", ");
                        if (!ChatMessageCell.this.pollClosed) {
                            if (ChatMessageCell.this.lastPoll.quiz) {
                                if (ChatMessageCell.this.lastPoll.public_voters) {
                                    string = LocaleController.getString("QuizPoll", C3290R.string.QuizPoll);
                                } else {
                                    string = LocaleController.getString("AnonymousQuizPoll", C3290R.string.AnonymousQuizPoll);
                                }
                            } else if (ChatMessageCell.this.lastPoll.public_voters) {
                                string = LocaleController.getString("PublicPoll", C3290R.string.PublicPoll);
                            } else {
                                string = LocaleController.getString("AnonymousPoll", C3290R.string.AnonymousPoll);
                            }
                        } else {
                            string = LocaleController.getString("FinalResults", C3290R.string.FinalResults);
                        }
                        spannableStringBuilder.append((CharSequence) string);
                    }
                    if (ChatMessageCell.this.documentAttach != null) {
                        if (ChatMessageCell.this.documentAttachType == 4) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) LocaleController.formatDuration(ChatMessageCell.this.currentMessageObject.getDuration()));
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
                                    spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSendingError", C3290R.string.AccDescrMsgSendingError));
                                }
                            } else {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSending", C3290R.string.AccDescrMsgSending));
                                float progress = ChatMessageCell.this.radialProgress.getProgress();
                                if (progress > BitmapDescriptorFactory.HUE_RED) {
                                    spannableStringBuilder.append((CharSequence) Integer.toString(Math.round(progress * 100.0f))).append((CharSequence) "%");
                                }
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) "\n");
                            if (ChatMessageCell.this.currentMessageObject.scheduled) {
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrScheduledDate", C3290R.string.AccDescrScheduledDate, ChatMessageCell.this.currentTimeString));
                                str4 = str3;
                            } else {
                                int i6 = C3290R.string.AccDescrSentDate;
                                StringBuilder sb = new StringBuilder();
                                sb.append(LocaleController.getString("TodayAt", C3290R.string.TodayAt));
                                str4 = str3;
                                sb.append(str4);
                                sb.append((Object) ChatMessageCell.this.currentTimeString);
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrSentDate", i6, sb.toString()));
                                spannableStringBuilder.append((CharSequence) ", ");
                                if (ChatMessageCell.this.currentMessageObject.isUnread()) {
                                    i4 = C3290R.string.AccDescrMsgUnread;
                                    str5 = "AccDescrMsgUnread";
                                } else {
                                    i4 = C3290R.string.AccDescrMsgRead;
                                    str5 = "AccDescrMsgRead";
                                }
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(str5, i4));
                            }
                        }
                    } else {
                        str4 = str3;
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReceivedDate", C3290R.string.AccDescrReceivedDate, LocaleController.getString("TodayAt", C3290R.string.TodayAt) + str4 + ((Object) ChatMessageCell.this.currentTimeString)));
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
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrYouReactedWith", C3290R.string.AccDescrYouReactedWith, str7));
                                } else {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReactedWith", C3290R.string.AccDescrReactedWith, str6, str7));
                                }
                            } else if (i7 > 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfPeopleReactions", tLRPC$ReactionCount2.count, str7));
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString("Reactions", C3290R.string.Reactions)).append((CharSequence) ": ");
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
                            {
                                MessageAccessibilityNodeProvider.this = this;
                            }

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
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3290R.C3293id.acc_action_msg_options, LocaleController.getString("AccActionMessageOptions", C3290R.string.AccActionMessageOptions)));
                    int iconForCurrentState = ChatMessageCell.this.getIconForCurrentState();
                    if (iconForCurrentState == 0) {
                        string2 = LocaleController.getString("AccActionPlay", C3290R.string.AccActionPlay);
                    } else if (iconForCurrentState == 1) {
                        string2 = LocaleController.getString("AccActionPause", C3290R.string.AccActionPause);
                    } else if (iconForCurrentState == 2) {
                        string2 = LocaleController.getString("AccActionDownload", C3290R.string.AccActionDownload);
                    } else if (iconForCurrentState == 3) {
                        string2 = LocaleController.getString("AccActionCancelDownload", C3290R.string.AccActionCancelDownload);
                    } else if (iconForCurrentState == 5 || iconForCurrentState == 100) {
                        string2 = LocaleController.getString("AccActionOpenFile", C3290R.string.AccActionOpenFile);
                    } else {
                        string2 = ChatMessageCell.this.currentMessageObject.type == 16 ? LocaleController.getString("CallAgain", C3290R.string.CallAgain) : null;
                    }
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, string2));
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccActionEnterSelectionMode", C3290R.string.AccActionEnterSelectionMode)));
                    if (ChatMessageCell.this.getMiniIconForCurrentState() == 2) {
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3290R.C3293id.acc_action_small_button, LocaleController.getString("AccActionDownload", C3290R.string.AccActionDownload)));
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
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3290R.C3293id.acc_action_open_forwarded_origin, LocaleController.getString("AccActionOpenForwardedOrigin", C3290R.string.AccActionOpenForwardedOrigin)));
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
                obtain2.setContentDescription(LocaleController.getInternalString(C3290R.string.chat_long_action_translate));
                obtain2.addAction(16);
                this.rect.set((int) ChatMessageCell.this.additionalSideButtonStartX, (int) ChatMessageCell.this.additionalSideButtonStartY, ((int) ChatMessageCell.this.additionalSideButtonStartX) + AndroidUtilities.m54dp(40), ((int) ChatMessageCell.this.additionalSideButtonStartY) + AndroidUtilities.m54dp(32));
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
                    this.rect.set(botButton2.f1598x, botButton2.f1599y, botButton2.f1598x + botButton2.width, botButton2.f1599y + botButton2.height);
                    this.rect.offset(ChatMessageCell.this.currentMessageObject.isOutOwner() ? (ChatMessageCell.this.getMeasuredWidth() - ChatMessageCell.this.widthForButtons) - AndroidUtilities.m54dp(10) : ChatMessageCell.this.backgroundDrawableLeft + AndroidUtilities.m54dp(ChatMessageCell.this.mediaBackground ? 1 : 7), ChatMessageCell.this.layoutHeight);
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
                                i3 = C3290R.string.AccDescrQuizCorrectAnswer;
                                str2 = "AccDescrQuizCorrectAnswer";
                            } else {
                                i3 = C3290R.string.AccDescrQuizIncorrectAnswer;
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
                    int i17 = pollButton2.f1601y + ChatMessageCell.this.namesOffset;
                    int m54dp = ChatMessageCell.this.backgroundWidth - AndroidUtilities.m54dp(76);
                    Rect rect3 = this.rect;
                    int i18 = pollButton2.f1600x;
                    rect3.set(i18, i17, m54dp + i18, pollButton2.height + i17);
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
                        obtain2.setText(LocaleController.getString("AccDescrQuizExplanation", C3290R.string.AccDescrQuizExplanation));
                        obtain2.addAction(16);
                        this.rect.set(ChatMessageCell.this.pollHintX - AndroidUtilities.m54dp(8), ChatMessageCell.this.pollHintY - AndroidUtilities.m54dp(8), ChatMessageCell.this.pollHintX + AndroidUtilities.m54dp(32), ChatMessageCell.this.pollHintY + AndroidUtilities.m54dp(32));
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
                            obtain2.setContentDescription(LocaleController.getString("AccDescrOpenChat", C3290R.string.AccDescrOpenChat));
                        } else {
                            obtain2.setContentDescription(LocaleController.getString("ShareFile", C3290R.string.ShareFile));
                        }
                        obtain2.addAction(16);
                        this.rect.set((int) ChatMessageCell.this.sideStartX, (int) ChatMessageCell.this.sideStartY, ((int) ChatMessageCell.this.sideStartX) + AndroidUtilities.m54dp(40), ((int) ChatMessageCell.this.sideStartY) + AndroidUtilities.m54dp(32));
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
                        sb3.append(LocaleController.getString("Reply", C3290R.string.Reply));
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
                                formatShortNumber = LocaleController.getString("ViewInChat", C3290R.string.ViewInChat);
                            } else {
                                formatShortNumber = repliesCount == 0 ? LocaleController.getString("LeaveAComment", C3290R.string.LeaveAComment) : LocaleController.formatPluralString("CommentsCount", repliesCount, new Object[0]);
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
                            i2 = C3290R.string.AccActionCloseTranscription;
                            str = "AccActionCloseTranscription";
                        } else {
                            i2 = C3290R.string.AccActionOpenTranscription;
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
            this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m54dp(8));
            int imageY = (int) (this.photoImage.getImageY() + AndroidUtilities.m54dp(8));
            this.videoButtonY = imageY;
            RadialProgress2 radialProgress2 = this.videoRadialProgress;
            int i2 = this.videoButtonX;
            radialProgress2.setProgressRect(i2, imageY, AndroidUtilities.m54dp(24) + i2, this.videoButtonY + AndroidUtilities.m54dp(24));
            this.buttonX = (int) (f + ((this.photoImage.getImageWidth() - AndroidUtilities.m54dp(48)) / 2.0f));
            int imageY2 = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m54dp(48)) / 2.0f));
            this.buttonY = imageY2;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i3 = this.buttonX;
            radialProgress22.setProgressRect(i3, imageY2, AndroidUtilities.m54dp(48) + i3, this.buttonY + AndroidUtilities.m54dp(48));
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
                return (int) (i - (AndroidUtilities.m54dp(6) * getVideoTranscriptionProgress()));
            }
            return i - AndroidUtilities.m54dp(6);
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
                return (int) (i + (AndroidUtilities.m54dp(6) * getVideoTranscriptionProgress()));
            }
            return i + AndroidUtilities.m54dp(6);
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
        private boolean animateIsInBookmarks;
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
        private boolean lastIsInBookmarks;
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
            ChatMessageCell.this = r2;
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
            this.lastIsInBookmarks = chatMessageCell.isInBookmarks;
            this.lastSignMessage = chatMessageCell.lastPostAuthor;
            this.lastDrawBackground = ChatMessageCell.this.drawBackground;
            this.lastUseTranscribeButton = ChatMessageCell.this.useTranscribeButton;
            this.lastButtonX = ChatMessageCell.this.buttonX;
            this.lastButtonY = ChatMessageCell.this.buttonY;
            this.lastDrawTime = !ChatMessageCell.this.forceNotDrawTime;
            this.lastTimeX = ChatMessageCell.this.timeX;
            this.lastTimeLayout = ChatMessageCell.this.timeLayout;
            this.lastTimeWidth = ChatMessageCell.this.timeWidth;
            this.lastShouldDrawTimeOnMedia = ChatMessageCell.this.shouldDrawTimeOnMedia();
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
            ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
            this.lastDrawnReplyTextLayout = chatMessageCell2.replyTextLayout;
            this.lastReplyTextXOffset = chatMessageCell2.replyTextOffset;
            ChatMessageCell.this.reactionsLayoutInBubble.recordDrawingState();
            ChatMessageCell chatMessageCell3 = ChatMessageCell.this;
            if (chatMessageCell3.replyNameLayout != null) {
                this.lastDrawReplyY = chatMessageCell3.replyStartY;
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

        /* JADX WARN: Removed duplicated region for block: B:281:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:282:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:286:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:318:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:321:0x023e  */
        /* JADX WARN: Removed duplicated region for block: B:324:0x024b  */
        /* JADX WARN: Removed duplicated region for block: B:348:0x02d1  */
        /* JADX WARN: Removed duplicated region for block: B:364:0x032b  */
        /* JADX WARN: Removed duplicated region for block: B:367:0x0331  */
        /* JADX WARN: Removed duplicated region for block: B:381:0x037a  */
        /* JADX WARN: Removed duplicated region for block: B:393:0x03bf  */
        /* JADX WARN: Removed duplicated region for block: B:394:0x03c6  */
        /* JADX WARN: Removed duplicated region for block: B:397:0x03cd  */
        /* JADX WARN: Removed duplicated region for block: B:423:0x0467  */
        /* JADX WARN: Removed duplicated region for block: B:426:0x047c  */
        /* JADX WARN: Removed duplicated region for block: B:428:0x0482  */
        /* JADX WARN: Removed duplicated region for block: B:437:0x04ce  */
        /* JADX WARN: Removed duplicated region for block: B:440:0x04da  */
        /* JADX WARN: Removed duplicated region for block: B:443:0x04e6  */
        /* JADX WARN: Removed duplicated region for block: B:446:0x04f6  */
        /* JADX WARN: Removed duplicated region for block: B:449:0x0505  */
        /* JADX WARN: Removed duplicated region for block: B:454:0x053d  */
        /* JADX WARN: Removed duplicated region for block: B:457:0x054a  */
        /* JADX WARN: Removed duplicated region for block: B:468:0x057c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean animateChange() {
            /*
                Method dump skipped, instructions count: 1423
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.ChatMessageCell.TransitionParams.animateChange():boolean");
        }

        public void onDetach() {
            this.wasDraw = false;
        }

        public void resetAnimation() {
            this.animateIsInBookmarks = false;
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

    private int getThemedColor(int i) {
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
}
