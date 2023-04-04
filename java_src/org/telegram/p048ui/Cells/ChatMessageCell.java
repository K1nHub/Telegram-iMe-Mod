package org.telegram.p048ui.Cells;

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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3316R;
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
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ChatMessageCell;
import org.telegram.p048ui.Cells.TextSelectionHelper;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.AnimatedEmojiDrawable;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
import org.telegram.p048ui.Components.AnimatedFileDrawable;
import org.telegram.p048ui.Components.AnimatedFloat;
import org.telegram.p048ui.Components.AnimatedNumberLayout;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.CheckBoxBase;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.FloatSeekBarAccessibilityDelegate;
import org.telegram.p048ui.Components.Forum.MessageTopicButton;
import org.telegram.p048ui.Components.InfiniteProgress;
import org.telegram.p048ui.Components.LinkPath;
import org.telegram.p048ui.Components.LinkSpanDrawable;
import org.telegram.p048ui.Components.LoadingDrawable;
import org.telegram.p048ui.Components.MessageBackgroundDrawable;
import org.telegram.p048ui.Components.MotionBackgroundDrawable;
import org.telegram.p048ui.Components.MsgClockDrawable;
import org.telegram.p048ui.Components.Point;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.RadialProgress2;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.RoundVideoPlayingDrawable;
import org.telegram.p048ui.Components.SeekBar;
import org.telegram.p048ui.Components.SeekBarAccessibilityDelegate;
import org.telegram.p048ui.Components.SeekBarWaveform;
import org.telegram.p048ui.Components.SlotsDrawable;
import org.telegram.p048ui.Components.StaticLayoutEx;
import org.telegram.p048ui.Components.TextStyleSpan;
import org.telegram.p048ui.Components.TimerParticles;
import org.telegram.p048ui.Components.TranscribeButton;
import org.telegram.p048ui.Components.TypefaceSpan;
import org.telegram.p048ui.Components.URLSpanBrowser;
import org.telegram.p048ui.Components.URLSpanMono;
import org.telegram.p048ui.Components.URLSpanNoUnderline;
import org.telegram.p048ui.Components.VideoForwardDrawable;
import org.telegram.p048ui.Components.spoilers.SpoilerEffect;
import org.telegram.p048ui.PhotoViewer;
import org.telegram.p048ui.PinchToZoomHelper;
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
            if (tLRPC$User == null || tLRPC$User.f1642id != ((Long) objArr[0]).longValue()) {
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
            float f2 = y + reactionsLayoutInBubble.f1799y;
            return f2 > f && (f2 + ((float) reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.m50dp(16)) < ((float) i);
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
        private ValueAnimator pressAnimator;
        private float pressT;
        private boolean pressed;
        private float progressAlpha;
        private Drawable selectorDrawable;
        private StaticLayout title;
        private int width;

        /* renamed from: x */
        private int f1666x;

        /* renamed from: y */
        private int f1667y;

        private BotButton() {
            ChatMessageCell.this = r1;
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
        public int f1668x;

        /* renamed from: y */
        public int f1669y;

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
        this.avatarImage.setRoundRadius(AndroidUtilities.m50dp(21));
        this.avatarDrawable = new AvatarDrawable();
        ImageReceiver imageReceiver2 = new ImageReceiver(this);
        this.replyImageReceiver = imageReceiver2;
        imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        this.replyImageReceiver.setRoundRadius(AndroidUtilities.m50dp(4));
        ImageReceiver imageReceiver3 = new ImageReceiver(this);
        this.locationImageReceiver = imageReceiver3;
        imageReceiver3.setAllowLoadingOnAttachedOnly(true);
        this.locationImageReceiver.setRoundRadius(AndroidUtilities.m51dp(26.1f));
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
        this.videoRadialProgress.setCircleRadius(AndroidUtilities.m50dp(15));
        SeekBar seekBar = new SeekBar(this) { // from class: org.telegram.ui.Cells.ChatMessageCell.3
            {
                ChatMessageCell.this = this;
            }

            @Override // org.telegram.p048ui.Components.SeekBar
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

            @Override // org.telegram.p048ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                if (ChatMessageCell.this.currentMessageObject.isMusic()) {
                    return ChatMessageCell.this.seekBar.getProgress();
                }
                return ChatMessageCell.this.currentMessageObject.isVoice() ? ChatMessageCell.this.useSeekBarWaveform ? ChatMessageCell.this.seekBarWaveform.getProgress() : ChatMessageCell.this.seekBar.getProgress() : ChatMessageCell.this.currentMessageObject.isRoundVideo() ? ChatMessageCell.this.currentMessageObject.audioProgress : BitmapDescriptorFactory.HUE_RED;
            }

            @Override // org.telegram.p048ui.Components.FloatSeekBarAccessibilityDelegate
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
            this.pollAvatarImages[i].setRoundRadius(AndroidUtilities.m50dp(8));
            this.pollAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.pollAvatarDrawables[i] = new AvatarDrawable();
            this.pollAvatarDrawables[i].setTextSize(AndroidUtilities.m50dp(22));
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
            this.commentAvatarImages[i].setRoundRadius(AndroidUtilities.m50dp(12));
            this.commentAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.commentAvatarDrawables[i] = new AvatarDrawable();
            this.commentAvatarDrawables[i].setTextSize(AndroidUtilities.m50dp(18));
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

    /* JADX WARN: Removed duplicated region for block: B:226:0x0108 A[Catch: Exception -> 0x02bc, TryCatch #1 {Exception -> 0x02bc, blocks: (B:197:0x0080, B:199:0x0095, B:201:0x009b, B:203:0x00bd, B:205:0x00c8, B:207:0x00d8, B:213:0x00e9, B:216:0x00f5, B:218:0x00f8, B:220:0x00fe, B:226:0x0108, B:228:0x010e, B:230:0x0114, B:232:0x011a, B:234:0x011e, B:286:0x027c, B:236:0x0122, B:237:0x012f, B:239:0x0133, B:241:0x013b, B:245:0x0162, B:285:0x0271, B:284:0x026e, B:288:0x0280, B:290:0x0286, B:292:0x028c, B:294:0x0295, B:296:0x029b, B:297:0x02a1, B:299:0x02a5, B:301:0x02ad, B:215:0x00ec, B:211:0x00de, B:246:0x016d, B:248:0x019f, B:249:0x01a1, B:251:0x01ab, B:253:0x01b7, B:256:0x01ce, B:258:0x01d1, B:261:0x01dc, B:264:0x01ff, B:254:0x01c2, B:265:0x0202, B:267:0x0208, B:269:0x020c, B:271:0x0218, B:274:0x0237, B:276:0x023a, B:279:0x0245, B:272:0x0227), top: B:309:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0114 A[Catch: Exception -> 0x02bc, TryCatch #1 {Exception -> 0x02bc, blocks: (B:197:0x0080, B:199:0x0095, B:201:0x009b, B:203:0x00bd, B:205:0x00c8, B:207:0x00d8, B:213:0x00e9, B:216:0x00f5, B:218:0x00f8, B:220:0x00fe, B:226:0x0108, B:228:0x010e, B:230:0x0114, B:232:0x011a, B:234:0x011e, B:286:0x027c, B:236:0x0122, B:237:0x012f, B:239:0x0133, B:241:0x013b, B:245:0x0162, B:285:0x0271, B:284:0x026e, B:288:0x0280, B:290:0x0286, B:292:0x028c, B:294:0x0295, B:296:0x029b, B:297:0x02a1, B:299:0x02a5, B:301:0x02ad, B:215:0x00ec, B:211:0x00de, B:246:0x016d, B:248:0x019f, B:249:0x01a1, B:251:0x01ab, B:253:0x01b7, B:256:0x01ce, B:258:0x01d1, B:261:0x01dc, B:264:0x01ff, B:254:0x01c2, B:265:0x0202, B:267:0x0208, B:269:0x020c, B:271:0x0218, B:274:0x0237, B:276:0x023a, B:279:0x0245, B:272:0x0227), top: B:309:0x0080, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0280 A[Catch: Exception -> 0x02bc, TryCatch #1 {Exception -> 0x02bc, blocks: (B:197:0x0080, B:199:0x0095, B:201:0x009b, B:203:0x00bd, B:205:0x00c8, B:207:0x00d8, B:213:0x00e9, B:216:0x00f5, B:218:0x00f8, B:220:0x00fe, B:226:0x0108, B:228:0x010e, B:230:0x0114, B:232:0x011a, B:234:0x011e, B:286:0x027c, B:236:0x0122, B:237:0x012f, B:239:0x0133, B:241:0x013b, B:245:0x0162, B:285:0x0271, B:284:0x026e, B:288:0x0280, B:290:0x0286, B:292:0x028c, B:294:0x0295, B:296:0x029b, B:297:0x02a1, B:299:0x02a5, B:301:0x02ad, B:215:0x00ec, B:211:0x00de, B:246:0x016d, B:248:0x019f, B:249:0x01a1, B:251:0x01ab, B:253:0x01b7, B:256:0x01ce, B:258:0x01d1, B:261:0x01dc, B:264:0x01ff, B:254:0x01c2, B:265:0x0202, B:267:0x0208, B:269:0x020c, B:271:0x0218, B:274:0x0237, B:276:0x023a, B:279:0x0245, B:272:0x0227), top: B:309:0x0080, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkTextBlockMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.checkTextBlockMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x00ce A[Catch: Exception -> 0x014b, TryCatch #0 {Exception -> 0x014b, blocks: (B:124:0x005e, B:126:0x007d, B:128:0x0088, B:130:0x0096, B:134:0x00a3, B:137:0x00af, B:139:0x00b2, B:141:0x00b8, B:147:0x00c2, B:149:0x00c8, B:151:0x00ce, B:166:0x0147, B:152:0x00da, B:154:0x00de, B:156:0x00e6, B:160:0x010d, B:165:0x013c, B:164:0x0139, B:136:0x00a6, B:132:0x0099, B:161:0x0116), top: B:184:0x005e, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00da A[Catch: Exception -> 0x014b, TryCatch #0 {Exception -> 0x014b, blocks: (B:124:0x005e, B:126:0x007d, B:128:0x0088, B:130:0x0096, B:134:0x00a3, B:137:0x00af, B:139:0x00b2, B:141:0x00b8, B:147:0x00c2, B:149:0x00c8, B:151:0x00ce, B:166:0x0147, B:152:0x00da, B:154:0x00de, B:156:0x00e6, B:160:0x010d, B:165:0x013c, B:164:0x0139, B:136:0x00a6, B:132:0x0099, B:161:0x0116), top: B:184:0x005e, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkCaptionMotionEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.checkCaptionMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkGameMotionEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.checkGameMotionEvent(android.view.MotionEvent):boolean");
    }

    private boolean checkTranscribeButtonMotionEvent(MotionEvent motionEvent) {
        TranscribeButton transcribeButton;
        return this.useTranscribeButton && (!this.isPlayingRound || getVideoTranscriptionProgress() > BitmapDescriptorFactory.HUE_RED || this.wasTranscriptionOpen) && (transcribeButton = this.transcribeButton) != null && transcribeButton.onTouch(motionEvent.getAction(), motionEvent.getX(), motionEvent.getY());
    }

    /* JADX WARN: Removed duplicated region for block: B:303:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x00f4  */
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.checkLinkPreviewMotionEvent(android.view.MotionEvent):boolean");
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
                if (this.hintButtonVisible && (i = this.pollHintX) != -1 && x >= i && x <= i + AndroidUtilities.m50dp(40) && y >= (i2 = this.pollHintY) && y <= i2 + AndroidUtilities.m50dp(40)) {
                    this.pollHintPressed = true;
                    this.selectorDrawableMaskType[0] = 3;
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr = this.selectorDrawable;
                        if (drawableArr[0] != null) {
                            drawableArr[0].setBounds(this.pollHintX - AndroidUtilities.m50dp(8), this.pollHintY - AndroidUtilities.m50dp(8), this.pollHintX + AndroidUtilities.m50dp(32), this.pollHintY + AndroidUtilities.m50dp(32));
                            this.selectorDrawable[0].setHotspot(x, y);
                            this.selectorDrawable[0].setState(this.pressedState);
                        }
                    }
                    invalidate();
                } else {
                    for (int i3 = 0; i3 < this.pollButtons.size(); i3++) {
                        PollButton pollButton = this.pollButtons.get(i3);
                        int m50dp = (pollButton.f1669y + this.namesOffset) - AndroidUtilities.m50dp(13);
                        int i4 = pollButton.f1668x;
                        if (x >= i4 && x <= (i4 + this.backgroundWidth) - AndroidUtilities.m50dp(31) && y >= m50dp && y <= pollButton.height + m50dp + AndroidUtilities.m50dp(26)) {
                            this.pressedVoteButton = i3;
                            if (!this.pollVoted && !this.pollClosed) {
                                this.selectorDrawableMaskType[0] = 1;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    Drawable[] drawableArr2 = this.selectorDrawable;
                                    if (drawableArr2[0] != null) {
                                        drawableArr2[0].setBounds(pollButton.f1668x - AndroidUtilities.m50dp(9), m50dp, (pollButton.f1668x + this.backgroundWidth) - AndroidUtilities.m50dp(22), pollButton.height + m50dp + AndroidUtilities.m50dp(26));
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
                        Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVote", C3316R.string.MessageScheduledVote), 1).show();
                    } else {
                        PollButton pollButton2 = this.pollButtons.get(this.pressedVoteButton);
                        TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = pollButton2.answer;
                        if (this.pollVoted || this.pollClosed) {
                            ArrayList<TLRPC$TL_pollAnswer> arrayList = new ArrayList<>();
                            arrayList.add(tLRPC$TL_pollAnswer);
                            this.delegate.didPressVoteButtons(this, arrayList, pollButton2.count, pollButton2.f1668x + AndroidUtilities.m50dp(50), this.namesOffset + pollButton2.f1669y);
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
                                Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVoteResults", C3316R.string.MessageScheduledVoteResults), 1).show();
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
                    if (x > i3 + AndroidUtilities.m50dp((!isVideoCall ? 202 : 200) + 30) || y < this.otherY - AndroidUtilities.m50dp(14) || y > this.otherY + AndroidUtilities.m50dp(50)) {
                        return false;
                    }
                    this.otherPressed = true;
                    this.selectorDrawableMaskType[0] = 4;
                    if (Build.VERSION.SDK_INT >= 21 && this.selectorDrawable[0] != null) {
                        int m50dp = this.otherX + AndroidUtilities.m50dp(isVideoCall ? 200 : 202) + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicWidth() / 2);
                        int intrinsicHeight = this.otherY + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicHeight() / 2);
                        this.selectorDrawable[0].setBounds(m50dp - AndroidUtilities.m50dp(20), intrinsicHeight - AndroidUtilities.m50dp(20), m50dp + AndroidUtilities.m50dp(20), intrinsicHeight + AndroidUtilities.m50dp(20));
                        this.selectorDrawable[0].setHotspot(x, y);
                        this.selectorDrawable[0].setState(this.pressedState);
                    }
                    invalidate();
                } else if (x < this.otherX - AndroidUtilities.m50dp(20) || x > this.otherX + AndroidUtilities.m50dp(20) || y < this.otherY - AndroidUtilities.m50dp(4) || y > this.otherY + AndroidUtilities.m50dp(30)) {
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
                if (f3 < f4 || f3 > f4 + AndroidUtilities.m50dp(20)) {
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
                if (f >= this.seekbarRoundX - AndroidUtilities.m50dp(20) && f <= this.seekbarRoundX + AndroidUtilities.m50dp(20)) {
                    float f2 = y;
                    if (f2 >= this.seekbarRoundY - AndroidUtilities.m50dp(20) && f2 <= this.seekbarRoundY + AndroidUtilities.m50dp(20)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        cancelCheckLongPress();
                        this.roundSeekbarTouched = 1;
                        invalidate();
                    }
                }
                float centerX = f - this.photoImage.getCenterX();
                float centerY = y - this.photoImage.getCenterY();
                float imageWidth = (this.photoImage.getImageWidth() - AndroidUtilities.m50dp(64)) / 2.0f;
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.checkPhotoImageMotionEvent(android.view.MotionEvent):boolean");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.checkAudioMotionEvent(android.view.MotionEvent):boolean");
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
        int m50dp;
        if (this.delegate.isInPreviewMode() || this.botButtons.isEmpty() || this.currentMessageObject.eventId != 0) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            if (this.currentMessageObject.isOutOwner()) {
                m50dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m50dp(10);
            } else {
                m50dp = this.backgroundDrawableLeft + AndroidUtilities.m50dp(this.mediaBackground ? 1 : 7);
            }
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = this.botButtons.get(i2);
                int m50dp2 = (botButton.f1667y + this.layoutHeight) - AndroidUtilities.m50dp(2);
                if (x >= botButton.f1666x + m50dp && x <= botButton.f1666x + m50dp + botButton.width && y >= m50dp2 && y <= botButton.height + m50dp2) {
                    this.pressedBotButton = i2;
                    invalidateOutbounds();
                    if (botButton.selectorDrawable == null) {
                        botButton.selectorDrawable = Theme.createRadSelectorDrawable(getThemedColor("chat_serviceBackgroundSelector"), 6, 6);
                        botButton.selectorDrawable.setBounds(botButton.f1666x + m50dp, m50dp2, botButton.f1666x + m50dp + botButton.width, botButton.height + m50dp2);
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
                    Toast.makeText(getContext(), LocaleController.getString("MessageScheduledBotAction", C3316R.string.MessageScheduledBotAction), 1).show();
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
        if (r5 <= (r0 + org.telegram.messenger.AndroidUtilities.m50dp(32))) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:982:0x06fe, code lost:
        if (r5 > (r0 + org.telegram.messenger.AndroidUtilities.m50dp(32 + ((r18.drawSideButton != 3 || r18.commentLayout == null) ? 0 : 18)))) goto L514;
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.onTouchEvent(android.view.MotionEvent):boolean");
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
        int m50dp;
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
                        i2 = this.unmovedTextX - AndroidUtilities.m50dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i = this.unmovedTextX;
                            m50dp = AndroidUtilities.m50dp(1);
                        } else {
                            i = this.unmovedTextX;
                            m50dp = AndroidUtilities.m50dp(1);
                        }
                        i2 = i + m50dp;
                    }
                    textSelectionHelper.setMaybeTextCord(i2 + AndroidUtilities.m50dp(10) + this.descriptionX, this.descriptionY);
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
        int m50dp;
        int i2;
        if (getDelegate() == null || getDelegate().getTextSelectionHelper() == null || !getDelegate().getTextSelectionHelper().isSelected(this.currentMessageObject)) {
            return;
        }
        int textSelectionType = getDelegate().getTextSelectionHelper().getTextSelectionType(this);
        if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_DESCRIPTION) {
            if (this.hasGamePreview) {
                i2 = this.unmovedTextX - AndroidUtilities.m50dp(10);
            } else {
                if (this.hasInvoicePreview) {
                    i = this.unmovedTextX;
                    m50dp = AndroidUtilities.m50dp(1);
                } else {
                    i = this.unmovedTextX;
                    m50dp = AndroidUtilities.m50dp(1);
                }
                i2 = i + m50dp;
            }
            getDelegate().getTextSelectionHelper().updateTextPosition(i2 + AndroidUtilities.m50dp(10) + this.descriptionX, this.descriptionY);
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
        return StaticLayoutEx.createStaticLayout(spannableStringBuilder, textPaint, i9, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.m50dp(1), false, TextUtils.TruncateAt.END, i9, i4, true);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.isPhotoDataChanged(org.telegram.messenger.MessageObject):boolean");
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
        SpoilerEffect.addSpoilers(this, this.captionLayout, this.captionSpoilersPool, this.captionSpoilers);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.isUserDataChanged():boolean");
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
        if (tLRPC$User != null && tLRPC$User.f1642id == 0) {
            f = this.avatarImage.getCenterX();
        } else {
            f = this.forwardNameX + this.forwardNameCenterX;
        }
        return (int) f;
    }

    public int getChecksX() {
        return this.layoutWidth - AndroidUtilities.m51dp(SharedConfig.bubbleRadius >= 10 ? 27.3f : 25.3f);
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
        if (this.animationRunning) {
            return;
        }
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

    private void checkImageReceiversAttachState() {
        int i = 0;
        boolean z = this.attachedToWindow && (this.visibleOnScreen || !this.shouldCheckVisibleOnScreen);
        if (z == this.imageReceiversAttachState) {
            return;
        }
        this.imageReceiversAttachState = z;
        if (z) {
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

    private void cancelLoading(MessageObject messageObject) {
        if (messageObject == null || messageObject.mediaExists || messageObject.putInDownloadsStore || DownloadController.getInstance(this.currentAccount).isDownloading(messageObject.messageOwner.f1526id)) {
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

    /* JADX WARN: Can't wrap try/catch for region: R(13:3243|3244|(1:3246)(1:3962)|(3:3247|3248|3249)|(3:3250|3251|3252)|3253|(6:3956|3259|(1:3261)(2:3953|3954)|3262|3263|3264)|3258|3259|(0)(0)|3262|3263|3264) */
    /* JADX WARN: Can't wrap try/catch for region: R(181:1|(1:4609)|7|(1:9)(1:4608)|10|(1:12)(1:4607)|13|(1:15)(1:4606)|16|(1:20)(1:4605)|21|(26:25|(2:27|(1:33)(1:35))|36|37|(1:45)(1:4603)|46|(1:48)(1:4584)|(1:52)|53|(1:74)(1:4583)|(1:78)|(9:82|(1:84)(1:4581)|(1:90)(1:4580)|(1:94)|95|(2:97|(3:99|(1:101)|102))|103|(5:107|(1:111)|112|(1:116)(1:118)|117)|(3:135|(1:(2:147|148)(2:137|(1:139)(1:140)))|(3:142|(1:144)(1:146)|145)))(1:4582)|(4:151|(1:153)(1:158)|154|(1:156)(1:157))|159|(1:173)(102:245|(1:4579)|248|(2:4576|(1:4578))(2:250|251)|252|(5:256|(1:262)(1:4572)|263|(1:269)(1:4571)|270)(1:4573)|271|(1:281)(1:4570)|282|(1:284)(1:4569)|285|(1:293)(1:4568)|294|(1:306)(1:4567)|307|(1:315)(1:4566)|316|(1:318)(1:4565)|319|(1:325)(1:4564)|326|(1:330)(1:4563)|331|(1:337)(1:4562)|338|(6:340|(1:348)(1:4560)|349|(1:4559)|360|(1:4555)(2:362|363))(1:4561)|364|(1:366)|367|(2:4540|(2:4541|(1:4550)(3:4543|(2:4545|4546)(2:4548|4549)|4547)))(0)|369|370|(1:4537)|374|(1:4536)|376|377|(1:381)(1:4531)|382|(1:384)|385|(1:4530)|388|389|(3:391|392|(1:396)(5:4488|(1:4490)(1:4523)|(3:4498|(6:4501|(2:4503|(2:4505|(1:4508)(1:4510)))(1:4513)|4512|(1:4511)(1:4508)|4510|4499)|4514)(0)|4515|(1:4517)(3:4518|(1:4520)(1:4522)|4521)))|(2:398|(1:404))|405|(1:409)(1:4487)|410|(4:413|(1:4480)|416|(61:420|(1:422)|423|(4:425|(1:(1:428)(1:4461))(1:(1:4463)(1:4464))|429|(35:434|(2:435|(1:457)(2:(3:(1:439)|440|441)(7:443|(2:445|(1:447)(5:455|449|(1:451)(1:454)|452|453))(1:456)|448|449|(0)(0)|452|453)|442))|458|459|(3:4447|(1:4449)(1:4451)|4450)(3:461|462|(1:464))|465|466|(4:(1:(2:(1:(2:472|(34:474|(1:480)(1:2505)|481|(3:485|(1:495)(1:493)|494)|500|(1:502)(1:2504)|503|(2:2499|(1:2503))(1:505)|506|(2:508|(3:510|(1:512)(1:2488)|513)(3:2489|(1:2493)(1:2495)|2494))(1:2496)|514|(1:(3:517|(2:519|(77:521|(4:523|(2:525|(4:535|(1:537)(1:1944)|538|539)(1:1945))(1:1947)|1946|539)(1:1948)|540|(2:542|(1:544))(6:1929|(1:1933)|1934|(1:1936)|1937|(1:1939))|545|(65:548|(2:551|(1:553))(1:1927)|554|555|(1:557)|558|(4:560|(1:562)|563|(1:(3:568|569|570)(4:1899|(5:1902|(3:1904|(1:1909)(2:1906|1907)|1908)|1910|1911|570)|1901|570))(3:1912|(3:1916|(2:1918|569)|1901)|570))(3:1919|(1:1923)(1:1925)|1924)|571|(1:575)|576|(2:580|(1:583)(1:584))|(1:596)|597|(1:601)|(5:1877|(3:1880|(1:1884)(3:1886|(2:1888|(1:1890)(2:1892|(1:1894)))(1:1895)|1891)|1878)|1897|1898|1891)|(1:1872)|606|(1:610)|611|(1:617)|618|(1:620)(4:1863|(3:1866|(1:1869)(1:1868)|1864)|1871|1870)|621|(1:623)|624|(1:626)(1:1862)|627|(1:629)(1:1861)|630|(1:632)|633|(3:635|(3:639|(1:641)(1:643)|642)|644)(5:1852|(1:1854)(1:1860)|1855|(1:1857)(1:1859)|1858)|645|(10:647|(1:649)(1:1675)|650|(1:652)(1:1674)|653|(3:655|(2:657|(1:659))|(4:662|663|(1:665)|666))|1673|663|(0)|666)(17:1676|(6:1678|(2:1708|(1:1710))|1682|(4:1685|(2:1687|(1:(2:1690|1691)(1:1693))(4:1695|(1:1697)(1:1700)|1698|1699))(4:1701|(1:1703)(1:1706)|1704|1705)|1692|1683)|1707|1694)|1712|(1:1714)|1715|(1:1717)(3:1846|(2:1847|(1:1850)(1:1849))|1851)|1718|(1:1722)(2:1836|(1:1845)(3:1838|1839|(1:1841)(1:1842)))|1723|(1:1725)(1:1835)|1726|(3:1728|(1:1730)|1732)|1733|(5:1735|(1:1737)(2:1751|(15:1753|(4:1797|(1:1831)(1:1799)|1800|(1:1802))(1:1755)|1756|1757|1758|(1:1762)(4:1786|(1:1790)(2:1793|(1:1795)(2:1796|1792))|1791|1792)|1763|(1:1773)|1774|(1:1776)(1:1785)|1777|(1:1784)|1783|(2:1742|(2:1744|1745)(2:1747|1748))|1746))|1738|(1:1750)(3:1740|1742|(0)(0))|1746)|1833|1834|1732)|667|(8:1600|1601|(1:1603)(1:1670)|1604|1605|(2:1668|1669)(1:1607)|1608|(39:(2:1611|1612)(5:1646|1647|(1:(2:1666|1667)(6:1649|1650|1651|1652|1653|(1:1655)(1:1656)))|1658|(1:1660)(1:1661))|1613|(22:1638|1639|670|(4:672|(1:674)(1:714)|675|(8:677|(2:679|(1:681)(1:712))(1:713)|682|(1:684)(1:711)|685|(1:691)|692|(2:694|(3:698|(2:700|(1:702))|703)(1:(4:705|(1:707)|708|(1:710))))))|715|(3:1596|(1:1598)|1599)|1586|(2:1588|(1:1590))|(2:1574|(3:1579|(1:1581)(2:1583|(1:1585))|1582)(1:1576))(3:721|722|(2:726|(1:728)(1:1565)))|729|(1:735)(1:1564)|736|(1:1563)(1:738)|739|(1:744)|745|(8:1534|(2:1536|(1:1538))|1540|(2:1550|(1:1552)(6:1553|(1:1557)(1:1559)|1558|749|(2:751|(2:753|(8:755|(1:757)(2:1461|(3:1463|(3:1468|(1:1470)(1:1472)|1471)(4:(1:1482)(1:1474)|1475|(1:1477)(1:1479)|1478)|783)(1:1483))|758|(2:760|(1:762)(1:1459))(1:1460)|763|(1:767)(1:1458)|768|(2:(4:(1:1405)(2:1430|(1:1433))|1406|(1:1408)|(5:1415|(1:1417)|1418|(1:1420)(1:1422)|1421)(2:1423|(1:1428)(1:1429)))|(1:(5:1440|(1:1442)|1443|(1:1445)(1:1447)|1446)(1:1448))(3:1449|(1:1451)(1:1453)|1452))(3:776|(1:782)(2:(1:1399)|1400)|783))(2:1484|(2:1486|(1:1488)(3:1489|(1:1491)(1:1514)|(2:1499|(1:1503)(3:1504|(1:1506)(1:1508)|1507))(3:1509|(1:1511)(1:1513)|1512)))(1:1515)))(3:1516|(1:1518)(1:1520)|1519))(2:1521|(1:1527)(2:1528|(2:(1:1532)|1533)))|784))|748|749|(0)(0)|784)|747|748|749|(0)(0)|784)|1616|1617|1618|(31:1633|1624|1625|670|(0)|715|(1:717)(4:1591|1596|(0)|1599)|1586|(0)|(18:1574|(19:1577|1579|(0)(0)|1582|729|(15:731|733|735|736|(11:1561|1563|739|(2:742|744)|745|(0)|747|748|749|(0)(0)|784)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1576|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|721|722|(18:724|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1621|(30:1628|1629|670|(0)|715|(0)(0)|1586|(0)|(0)|721|722|(0)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1624|1625|670|(0)|715|(0)(0)|1586|(0)|(0)|721|722|(0)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784))|669|670|(0)|715|(0)(0)|1586|(0)|(0)|721|722|(0)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)(1:1928)|1926|555|(0)|558|(0)(0)|571|(2:573|575)|576|(4:578|580|(1:583)|584)|(4:586|588|592|596)|597|(2:599|601)|(0)|1873|1875|1877|(1:1878)|1897|1898|1891|(0)|1872|606|(2:608|610)|611|(3:613|615|617)|618|(0)(0)|621|(0)|624|(0)(0)|627|(0)(0)|630|(0)|633|(0)(0)|645|(0)(0)|667|(0)|669|670|(0)|715|(0)(0)|1586|(0)|(0)|721|722|(0)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)(30:1949|(1:1951)(1:2134)|1952|(3:2120|(4:2123|(2:2125|(1:2127)(2:2128|2129))(2:2131|2132)|2130|2121)|2133)|1954|1955|(1:2119)|1959|(2:1961|(1:1963))|1964|(1:1966)(1:2116)|1967|(4:(1:1972)|1973|(1:1975)(1:2114)|1976)(1:2115)|1977|(1:1981)(1:2113)|1982|(1:1984)(1:2112)|1985|(3:1987|(3:1989|(3:1994|(1:1996)(1:2076)|1997)(1:2077)|1998)(3:2078|(2:2080|(1:2084)(5:2086|(3:2088|(1:2090)(1:2096)|2091)(1:2097)|2092|(1:2094)|2095))(1:2098)|2085)|1999)(3:2099|(3:2107|(1:2109)(1:2111)|2110)(1:2101)|2102)|2000|(1:2004)|2005|(1:2007)(2:2036|(2:2038|(2:2040|(2:2042|(1:2044)(5:2045|(1:2047)(1:2053)|2048|(1:2050)(1:2052)|2051))(5:2054|(1:2056)(1:2062)|2057|(1:2059)(1:2061)|2060))(3:2063|(1:2065)(1:2067)|2066))(5:2068|(1:2070)|2071|(1:2073)(1:2075)|2074))|2008|(1:2010)(4:2025|(1:2031)(1:2035)|2032|(1:2034))|2011|(1:2013)|2014|(1:2022)|2023))(7:2135|(1:2137)(1:2158)|2138|(1:2140)(3:2153|(1:2155)(1:2157)|2156)|2141|(1:2152)|2147)|2024)(17:2159|(15:2163|(2:2165|(1:2167))(1:2323)|2168|(3:2170|(5:2172|(3:2174|(1:2176)(1:2245)|2177)(3:2246|(1:2248)(1:2250)|2249)|2178|(1:2244)|2182)(7:2251|(3:2253|(1:2255)(1:2281)|2256)(3:2282|(1:2284)(1:2286)|2285)|2257|(1:2280)|2261|(1:2263)(5:2265|(1:2267)(1:2279)|(1:2269)(3:2274|(1:2276)|2277)|(1:2271)(1:2273)|2272)|2264)|2183)(11:2287|(3:2289|(1:2291)(1:2317)|2292)(3:2318|(1:2320)(1:2322)|2321)|2293|(1:2316)|2297|(1:2299)(1:2315)|2300|(2:2302|(1:2304)(3:2310|(1:2312)|2313))(1:2314)|2305|(1:2307)(1:2309)|2308)|2184|(1:2186)(2:2234|(2:2236|(2:2238|(1:2240)(1:2241))(1:2242))(1:2243))|2187|(3:2189|(1:2191)(1:2193)|2192)|2194|(3:2198|(1:2200)(1:2202)|2201)|2203|(3:2205|(4:2207|(1:2210)(1:2225)|2211|(1:2213))(2:2226|(3:2228|(1:2230)(1:2232)|2231))|2214)(1:2233)|2215|(3:2219|(1:2221)|2222)(1:2224)|2223)|2324|2168|(0)(0)|2184|(0)(0)|2187|(0)|2194|(4:2196|2198|(0)(0)|2201)|2203|(0)(0)|2215|(5:2217|2219|(0)|2222|2223)|2224|2223))(20:2325|(3:2327|(1:2329)(1:2482)|2330)(3:2483|(1:2485)(1:2487)|2486)|2331|(1:2333)|2334|(4:2468|2469|(1:2471)(4:2476|2477|2478|2479)|2472)(1:2336)|2337|(1:2339)(3:2456|(3:2458|(2:2460|2461)(2:2463|2464)|2462)|2465)|2340|(3:2342|(3:2344|(2:2346|2347)(2:2349|2350)|2348)|2351)|2352|(3:2354|(3:2356|(1:2361)(2:2358|2359)|2360)|2362)|2363|(2:2365|(1:2369))|(1:2373)|2374|(4:2376|(1:2380)|2381|(2:2385|(3:2389|(1:(1:2392))(1:2394)|2393)))(1:2455)|2395|(11:2399|(1:2401)|2402|(1:2410)(2:2436|(1:2444)(2:2447|(1:2453)))|2411|(1:2415)|2416|(1:2430)|2431|(1:2433)|2434)(1:2454)|2435)|785|(1:787)(1:1395)|788|(1:796)|797|(2:805|(1:807))(3:1385|(1:1394)|1387)|808|(1:810)|811|(1:819)|820|(1:822)|823|(4:827|(1:829)(1:1372)|830|(1:832))(3:1373|(2:1377|(1:1383))|1384)|833|(1:835)(6:1352|(3:1354|(1:1356)(1:1358)|1357)|1359|(3:1363|(1:1365)(1:1367)|1366)|1368|(1:1370)(1:1371))|836|(2:838|(4:842|(7:844|(1:846)(1:856)|847|(1:849)(1:855)|850|(1:852)(1:854)|853)|857|(3:859|(1:861)(1:863)|862)))|864|(1:868)(1:1351)|869|870)(52:2506|(1:2508)|2509|(1:2511)(1:2811)|2512|(1:2514)(1:2810)|2515|(1:2517)|2518|(1:(2:2808|2809)(2:2520|(1:2522)(2:2523|2524)))|2525|(2:2527|(2:2529|(1:2531)(1:2802))(2:2803|(1:2805)(1:2806)))(1:2807)|2532|(1:(1:2537)(1:(1:2541)(1:2542)))|2543|(1:2545)(1:2801)|2546|(6:2548|(1:2552)(1:2575)|2553|(3:2555|(1:2557)(1:2569)|2558)(3:2570|(1:2572)(1:2574)|2573)|2559|(3:2563|(1:2565)(1:2567)|2566)(1:2568))|2576|(1:2582)|2583|(1:2585)|2586|(2:2588|(2:2590|(2:2591|(1:2594)(1:2593)))(0))(2:2771|(2:2772|(1:2790)(3:2774|(4:2777|(1:2779)(1:2783)|2780|2781)(2:2784|(1:2787)(2:2788|2789))|2782)))|2595|(1:2601)|2602|(1:2608)(1:2770)|2609|(1:2611)(5:2750|(3:2752|(1:2758)(1:2760)|2759)|2761|(3:2765|(1:2767)|2768)|2769)|2612|(1:2614)(1:2749)|2615|(1:2617)(1:2748)|2618|(1:2620)(1:2747)|2621|(8:2623|(2:2625|(1:(1:2649)(2:2627|(1:2629)(6:2630|2631|(2:2635|2636)(1:2648)|(2:2638|(2:2642|2643))(1:2645)|2644|2643))))(0)|(2:2666|(1:(1:2673)(2:2668|(1:2670)(2:2671|2672))))(0)|2651|(1:2657)(1:2665)|2658|(2:2660|2661)(2:2663|2664)|2662)|2674|(3:2677|(1:2679)|2680)|2681|(3:2683|(2:2685|2686)(2:2688|2689)|2687)|2690|2691|(1:2695)(2:2742|(1:2746))|2696|(1:2698)|2699|(7:2718|(3:(1:(2:2723|2724)(2:2726|2727))(2:2728|2729)|2725|2719)|2730|2731|(1:2733)(1:2741)|2734|(1:2740))|2703|(4:2707|(1:2709)(1:2713)|2710|(1:2712))|2714))(13:2812|(1:2816)(11:2867|(1:2869)|2821|2822|(3:2824|(1:2826)(1:2860)|2827)(3:2861|(1:2863)(1:2865)|2864)|2828|(4:2834|(1:2836)(1:2840)|2837|(1:2839))|2841|(1:2843)|2844|(2:2846|(7:2848|(1:2850)|2851|(1:2853)|2854|(1:2858)|2859)))|2817|(9:2866|2822|(0)(0)|2828|(6:2830|2832|2834|(0)(0)|2837|(0))|2841|(0)|2844|(0))|2821|2822|(0)(0)|2828|(0)|2841|(0)|2844|(0)))(10:2871|(1:2873)(1:2921)|2874|(1:2878)(1:2920)|2879|(3:2881|(1:2883)(1:2910)|2884)(3:2911|(1:2913)(1:2915)|2914)|2885|(1:2887)|2888|(4:2890|(1:2892)(1:2909)|2893|(9:2895|(1:2897)(1:2908)|2898|(1:2900)|2901|(1:2903)|2904|(1:2906)|2907)))|2715)(35:2922|(1:2926)(1:3030)|2927|(1:2929)(1:3025)|2930|(3:2932|(1:2934)(1:3019)|2935)(3:3020|(1:3022)(1:3024)|3023)|2936|(1:2938)(1:3018)|2939|(1:2941)|(2:2943|(20:2947|2948|(3:2950|(1:2952)(1:3013)|2953)(1:3014)|2954|(1:(1:2959)(2:3008|(1:3010)(1:3011)))(1:3012)|2960|(1:3007)(2:2962|2963)|2964|(1:2968)|2969|(1:2977)(2:2998|(1:3002))|2978|(1:2980)|2981|(2:2983|(2:2985|(1:2987)))(1:2997)|2988|(3:2992|(1:2994)|2995)|2996|2717|870)(1:3015))(1:3017)|3016|2948|(0)(0)|2954|(0)(0)|2960|(18:3003|3005|3007|2964|(2:2966|2968)|2969|(12:2971|2973|2977|2978|(0)|2981|(0)(0)|2988|(4:2990|2992|(0)|2995)|2996|2717|870)|2998|(2:3000|3002)|2978|(0)|2981|(0)(0)|2988|(0)|2996|2717|870)|2962|2963|2964|(0)|2969|(0)|2998|(0)|2978|(0)|2981|(0)(0)|2988|(0)|2996|2717|870))(10:3031|(3:3033|(1:3035)(1:3072)|3036)(3:3073|(1:3075)(1:3077)|3076)|3037|(1:3039)|3040|(1:(2:3043|(2:3045|(1:3047)(1:3054))(2:3055|(1:3057)(1:3058)))(2:3059|(1:3061)(1:3062)))(1:(2:3064|(1:3066)(1:3067))(2:3068|(1:3070)(1:3071)))|3048|(1:3050)|3051|(1:3053))|2716|2717|870)(79:3078|(1:3080)(1:4444)|3081|(5:3083|(1:3085)(1:4438)|3086|(1:3090)(1:4437)|3091)(3:4439|(1:4441)(1:4443)|4442)|3092|(3:3094|(1:3096)(1:3098)|3097)|3099|(1:3101)|3102|(1:3106)(1:4424)|3107|(1:3113)(1:4423)|3114|(1:3116)(1:4422)|3117|(1:3121)(1:4421)|3122|(1:3124)(1:4420)|3125|(1:3133)(1:4419)|3134|(1:3136)(1:4418)|3137|(1:(2:4245|(57:4257|(6:4260|(2:4262|(2:4268|4267)(1:4264))(1:4269)|4265|4266|4267|4258)|4270|4271|3142|3143|(2:3149|(17:3151|(1:3154)(1:4243)|3155|(1:3157)(3:4238|(1:4240)(1:4242)|4241)|3158|(1:3162)(1:4237)|3163|(2:3165|(3:3167|(1:3169)|3170))|3171|(1:3173)|3174|(1:3176)|3177|(1:3181)|3182|(3:3188|(1:3190)|3191)(32:3193|(1:(1:3196)(1:4233))(1:(1:4235)(1:4236))|3197|(1:4232)|3201|(3:3203|(3:3205|(1:3207)(1:4146)|3208)(3:4147|(1:4149)(1:4151)|4150)|3209)(22:4152|(20:4231|(18:4228|(16:4225|4162|(1:4164)(1:(12:4221|4166|(2:4217|(8:4219|4170|(1:4188)(1:4215)|(1:4190)(3:4199|(1:4201)(2:4205|(2:4207|(2:4209|(2:4211|(1:4213)))))|(3:4204|(1:4196)(1:4198)|4197))|4191|(3:4194|4196|4197)|4198|4197))(1:4168)|4169|4170|(14:4172|4174|4176|4178|4180|4182|4184|4186|4188|(0)(0)|4191|(0)|4198|4197)|4215|(0)(0)|4191|(0)|4198|4197)(1:4222))|4165|4166|(11:4217|(0)|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|4168|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|4161|4162|(0)(0)|4165|4166|(0)|4168|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|4158|(1:4160)(17:4223|4225|4162|(0)(0)|4165|4166|(0)|4168|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|4161|4162|(0)(0)|4165|4166|(0)|4168|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|4155|(1:4157)(19:4226|4228|(0)(0)|4161|4162|(0)(0)|4165|4166|(0)|4168|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|4158|(0)(0)|4161|4162|(0)(0)|4165|4166|(0)|4168|4169|4170|(0)|4215|(0)(0)|4191|(0)|4198|4197)|3210|(2:3212|(2:3214|(2:3216|(22:3218|3219|(1:3221)(1:4140)|3222|(1:3225)|(1:3227)(18:4047|4048|4049|4050|4051|(3:4127|4128|4129)(2:4053|4054)|4055|4056|4057|4058|4059|(1:4061)(1:4120)|4062|4063|(11:4067|4068|4069|4070|(9:(9:(1:4100)(1:4102)|4101|4075|4076|4077|4078|4079|4080|4081)(1:4073)|4074|4075|4076|4077|4078|4079|4080|4081)(1:4104)|(3:(1:4088)(2:4089|(1:4091))|4085|4086)(1:4083)|4084|4085|4086|4064|4065)|4108|4109|4110)|(1:3229)(1:4046)|(1:3233)|3234|(12:3966|3967|3968|(1:3970)(1:4044)|3971|(1:3973)(2:4042|4043)|3974|3975|3976|(14:3980|3981|(1:3983)|3984|3985|3986|(3:3988|3989|3990)(2:4029|4030)|(8:(8:(1:4020)(1:4022)|4021|3995|3996|3997|3998|3999|4000)(1:3993)|3994|3995|3996|3997|3998|3999|4000)(1:4024)|(3:(1:4007)(2:4008|(1:4010))|4004|4005)(1:4002)|4003|4004|4005|3977|3978)|4034|4035)|3236|(1:3240)|(17:3243|3244|(1:3246)(1:3962)|3247|3248|3249|3250|3251|3252|3253|(6:3956|3259|(1:3261)(2:3953|3954)|3262|3263|3264)|3258|3259|(0)(0)|3262|3263|3264)(1:3965)|(18:3266|3267|3268|(1:3270)(1:3348)|(13:3347|3274|(10:3340|(1:3342)(1:3344)|3343|3281|(4:3284|(4:3289|(1:3291)(1:3294)|3292|3293)(2:3286|3287)|3288|3282)|3295|3296|(9:3299|(1:3333)|(1:(1:3304)(1:3328))(1:3329)|(4:(1:3322)(1:(1:3324)(2:3325|(1:3327)))|3308|(4:(1:3314)(1:3320)|(1:3316)(1:3319)|3317|3318)(2:3310|3311)|3312)(1:3306)|3307|3308|(0)(0)|3312|3297)|3334|3335)|3277|(1:3279)(1:3337)|3280|3281|(1:3282)|3295|3296|(1:3297)|3334|3335)|3273|3274|(1:3276)(11:3338|3340|(0)(0)|3343|3281|(1:3282)|3295|3296|(1:3297)|3334|3335)|3277|(0)(0)|3280|3281|(1:3282)|3295|3296|(1:3297)|3334|3335)|(1:3356)(1:3949)|(1:3358)|(3:(1:(2:3362|3363)(3:3707|(1:3709)(1:3712)|3710))(14:3713|(1:3715)(2:3737|(11:3739|3717|(1:3720)(1:3736)|(1:3722)(1:3735)|3723|(1:3725)(1:3734)|3726|(1:3728)(1:3733)|3729|(1:3731)|3732))|3716|3717|(9:3720|(0)(0)|3723|(0)(0)|3726|(0)(0)|3729|(0)|3732)|3736|(0)(0)|3723|(0)(0)|3726|(0)(0)|3729|(0)|3732)|3711|3363)(5:3740|(2:3742|(3:3744|(3:3746|(2:3750|(2:3752|(4:3754|(1:3756)|3757|(2:3759|(3:3761|(2:3763|(1:3768)(1:3765))(1:3771)|3769)(6:3772|(1:3776)(1:3785)|3777|(1:3781)|3782|3783))(3:3786|(3:3788|(1:3790)(1:3793)|3791)(3:3794|(1:3796)(1:3798)|3797)|3792))(5:3799|(1:3801)(1:3823)|3802|(4:3808|(2:3809|(1:3821)(2:3811|(1:3813)(2:3814|3815)))|3816|(1:3820))|3822))(3:3824|(4:3830|(2:3831|(1:3843)(2:3833|(1:3835)(2:3836|3837)))|3838|(1:3842))|3844))(3:3845|(4:3851|(2:3852|(1:3864)(2:3854|(1:3856)(2:3857|3858)))|3859|(1:3863))|3865)|3784)(13:3866|(1:3868)(1:3908)|3869|(1:3871)|3872|(1:3874)(1:3907)|3875|(1:3877)|(1:3879)|3880|(4:3890|(2:3891|(1:3906)(2:3893|(1:3895)(3:3896|3897|(1:3899)(1:3905))))|3900|(1:3904))|3882|3883)|3770)(9:3909|(1:3947)(1:3911)|3912|(1:3914)(1:3944)|3915|(1:(1:3918))(1:3943)|3919|(5:3925|(3:3928|(1:3932)(1:3934)|3926)|3941|3935|(1:3939))|3942))(1:3948)|3365|(8:3371|(3:3378|(1:3380)|3381)(31:(1:3411)(1:3705)|3412|(1:3414)|3415|(2:3417|(1:3421)(2:3677|(2:3683|(1:3685))(3:3686|(1:3688)(1:3690)|3689)))(1:3691)|3422|(1:3426)|3427|(1:3429)(1:3676)|3430|(1:(1:3433)(1:3672))(2:3673|(1:3675))|3434|(1:3436)|(2:3440|(8:3444|(2:3446|(1:3448)(1:3656))(1:3657)|3449|(2:3455|(1:3457))(2:3653|(1:3655))|3458|(1:3460)|3461|(1:3463))(3:3658|(1:3660)(2:3662|(1:(2:3669|3670)(2:3664|(1:3666)(2:3667|3668))))|3661))(1:3671)|3464|(1:3466)(3:3648|(1:3650)(1:3652)|3651)|3467|(1:3471)(1:3647)|3472|(2:3474|(2:3476|(2:3478|(2:3480|(2:3482|(4:3486|(2:3539|(2:3541|(1:3545)(2:3546|3490))(1:3547))(1:3488)|3489|3490)(15:3548|(2:3550|(1:3552)(1:3588))(1:3589)|3553|(1:3557)(1:3587)|3558|(1:3561)(2:3563|(7:3570|(1:3572)(1:3581)|3573|(1:3575)|3576|(1:3578)(1:3580)|3579)(3:3582|(1:3584)(1:3586)|3585))|3562|3492|(1:3494)(1:3535)|3495|(1:3534)|3497|3498|(1:3503)(2:3505|(7:3507|3508|(1:3510)|3511|(2:3523|(2:3525|(1:3516)))|3514|(0)))|3504))(5:3590|(4:3592|(2:3594|(1:3596))|3598|(2:3604|3605))|3606|(3:3610|(1:3614)(1:3616)|3615)(1:3617)|3605))(5:3618|(1:3622)|3623|(4:3626|3627|(1:3631)(1:3634)|3632)(1:3637)|3633))(2:3638|(1:3640)(1:3641)))(2:3642|(1:3644)(1:3645)))(1:3646)|3491|3492|(0)(0)|3495|(4:3528|3530|3532|3534)|3497|3498|(3:3500|3503|3504)|3505|(0)|3504)|3382|(4:3384|(2:3386|(1:3388)(1:3399))(1:3400)|3389|(4:3391|(1:3393)(1:3398)|3394|(1:3396)(1:3397)))|3401|(1:3408)|3403|3404)(1:3706)|3405)|3364|3365|(46:3367|3369|3371|(12:3374|3376|3378|(0)|3381|3382|(0)|3401|(2:3406|3408)|3403|3404|3405)|(40:3411|3412|(0)|3415|(0)(0)|3422|(2:3424|3426)|3427|(0)(0)|3430|(0)(0)|3434|(0)|(31:3438|3440|(36:3442|3444|(0)(0)|3449|(32:3451|3455|(0)|3458|(0)|3461|(0)|3464|(0)(0)|3467|(22:3469|3471|3472|(0)(0)|3491|3492|(0)(0)|3495|(0)|3497|3498|(0)|3505|(0)|3504|3382|(0)|3401|(0)|3403|3404|3405)|3647|3472|(0)(0)|3491|3492|(0)(0)|3495|(0)|3497|3498|(0)|3505|(0)|3504|3382|(0)|3401|(0)|3403|3404|3405)|3653|(0)|3458|(0)|3461|(0)|3464|(0)(0)|3467|(0)|3647|3472|(0)(0)|3491|3492|(0)(0)|3495|(0)|3497|3498|(0)|3505|(0)|3504|3382|(0)|3401|(0)|3403|3404|3405)|3658|(0)(0)|3661|3464|(0)(0)|3467|(0)|3647|3472|(0)(0)|3491|3492|(0)(0)|3495|(0)|3497|3498|(0)|3505|(0)|3504|3382|(0)|3401|(0)|3403|3404|3405)|3671|3464|(0)(0)|3467|(0)|3647|3472|(0)(0)|3491|3492|(0)(0)|3495|(0)|3497|3498|(0)|3505|(0)|3504|3382|(0)|3401|(0)|3403|3404|3405)|3693|3411|3412|(0)|3415|(0)(0)|3422|(0)|3427|(0)(0)|3430|(0)(0)|3434|(0)|(0)|3671|3464|(0)(0)|3467|(0)|3647|3472|(0)(0)|3491|3492|(0)(0)|3495|(0)|3497|3498|(0)|3505|(0)|3504|3382|(0)|3401|(0)|3403|3404|3405)|3706|3405)(1:4141))(1:4143))(1:4144))(1:4145)|4142|3219|(0)(0)|3222|(1:3225)|(0)(0)|(0)(0)|(2:3231|3233)|3234|(0)|3236|(2:3238|3240)|(27:3243|3244|(0)(0)|3247|3248|3249|3250|3251|3252|3253|(1:3255)|3956|3259|(0)(0)|3262|3263|3264|(0)|(10:3352|3354|3356|(0)|(0)(0)|3364|3365|(0)|3706|3405)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405)|3965|(0)|(0)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405)|3192))|4244|3155|(0)(0)|3158|(46:3160|3162|3163|(0)|3171|(0)|3174|(0)|3177|(2:3179|3181)|3182|(6:3184|3186|3188|(0)|3191|3192)|3193|(0)(0)|3197|(1:3199)|4232|3201|(0)(0)|3210|(0)(0)|4142|3219|(0)(0)|3222|(0)|(0)(0)|(0)(0)|(0)|3234|(0)|3236|(0)|(0)|3965|(0)|(0)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405|3192)|4237|3163|(0)|3171|(0)|3174|(0)|3177|(0)|3182|(0)|3193|(0)(0)|3197|(0)|4232|3201|(0)(0)|3210|(0)(0)|4142|3219|(0)(0)|3222|(0)|(0)(0)|(0)(0)|(0)|3234|(0)|3236|(0)|(0)|3965|(0)|(0)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405|3192)))(56:4272|(2:4274|(2:4276|(2:4278|(2:4280|(2:4282|(2:4293|(2:4295|(8:4297|4298|4299|(1:4301)(1:4389)|4302|(4:4378|(1:4388)|4381|(1:4383)(1:4384))(1:4304)|4305|(5:4307|(13:4315|4316|4317|4318|(2:4343|(10:4345|4346|4347|4321|4322|(4:4333|4334|4335|(5:4337|4338|4325|(1:4332)|4328))|4324|4325|(1:4327)(2:4329|4332)|4328))|4320|4321|4322|(0)|4324|4325|(0)(0)|4328)|4309|4310|4311)(9:4351|(1:4376)|4354|(1:4372)|4357|(1:4368)|4360|(1:4362)(1:4364)|4363)))(55:4391|(1:(2:4411|4412)(4:4393|(1:(1:4410)(2:4395|(1:4397)(2:4398|4399)))|4400|(2:4402|(1:4404)(2:4405|4406))(2:4408|4409)))|4407|3143|(4:3145|3147|3149|(0))|4244|3155|(0)(0)|3158|(0)|4237|3163|(0)|3171|(0)|3174|(0)|3177|(0)|3182|(0)|3193|(0)(0)|3197|(0)|4232|3201|(0)(0)|3210|(0)(0)|4142|3219|(0)(0)|3222|(0)|(0)(0)|(0)(0)|(0)|3234|(0)|3236|(0)|(0)|3965|(0)|(0)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405|3192))(2:4284|4285))(1:4413))(1:4414))(1:4415))(1:4416))(1:4417)|3141|3142|3143|(0)|4244|3155|(0)(0)|3158|(0)|4237|3163|(0)|3171|(0)|3174|(0)|3177|(0)|3182|(0)|3193|(0)(0)|3197|(0)|4232|3201|(0)(0)|3210|(0)(0)|4142|3219|(0)(0)|3222|(0)|(0)(0)|(0)(0)|(0)|3234|(0)|3236|(0)|(0)|3965|(0)|(0)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405|3192)|3140|3141|3142|3143|(0)|4244|3155|(0)(0)|3158|(0)|4237|3163|(0)|3171|(0)|3174|(0)|3177|(0)|3182|(0)|3193|(0)(0)|3197|(0)|4232|3201|(0)(0)|3210|(0)(0)|4142|3219|(0)(0)|3222|(0)|(0)(0)|(0)(0)|(0)|3234|(0)|3236|(0)|(0)|3965|(0)|(0)|3949|(0)|(0)(0)|3364|3365|(0)|3706|3405|3192)|871|(4:1220|(16:1228|(1:1230)(1:1283)|1231|(3:1239|(1:1241)|1242)|1243|1244|(8:1280|1250|(1:1266)|1253|(1:1255)(1:1262)|1256|(1:1258)(1:1261)|1259)|1247|(3:1267|(3:1269|(1:1271)|1272)(3:1274|(1:1276)|1277)|1273)(1:1249)|1250|(1:1252)(2:1263|1266)|1253|(0)(0)|1256|(0)(0)|1259)|1284|(8:1290|1291|(4:1337|(5:1340|1341|(1:1346)(2:1343|1344)|1345|1338)|1347|1348)|1294|(2:1333|(10:1302|(1:1304)(1:1329)|1305|(1:1328)|1308|(1:1325)|1311|(1:1313)(1:1322)|1314|(1:1316)(2:1317|(1:1319)(1:1320)))(1:1301))|1297|(1:1299)(1:1330)|(0)(0)))|877|(1:1215)|881|(19:1159|1160|1161|1162|(1:1164)(1:1209)|1165|1166|1167|1168|1169|(1:1171)(1:1203)|1172|(4:1175|(2:1177|1178)(2:1180|(2:1182|1183)(2:1184|1185))|1179|1173)|1186|(1:1188)(1:1201)|1189|(1:1200)|1195|(2:1197|(1:1199)))(1:883)|884|(5:886|(1:888)(1:897)|889|(1:895)|896)|898|(1:900)|901|(11:1047|(1:1049)(1:1154)|1050|(1:1052)(1:1153)|1053|(4:(1:1056)(1:1062)|1057|(1:1059)(1:1061)|1060)|1063|(1:1069)(3:1149|(1:1151)|1152)|1070|(1:1072)(4:1074|(3:1076|(5:1078|(14:1081|(1:1083)(1:1140)|(1:1085)(1:1139)|1086|(6:1138|1093|(1:1095)|1096|(6:1100|1101|(7:1108|(3:1131|1121|(5:1124|(1:1126)(1:1127)|1114|1105|1106)(1:1123))|1111|(2:1115|(4:1118|(1:1120)|1121|(0)(0))(1:1117))(1:1113)|1114|1105|1106)(1:1103)|1104|1105|1106)|1107)|1089|(1:1091)(1:1135)|1092|1093|(0)|1096|(1:1134)(7:1098|1100|1101|(0)(0)|1104|1105|1106)|1107|1079)|1141|1142|1143)(2:1145|1146)|1144)|1147|1148)|1073)(2:903|904)|905|(3:907|(1:909)(1:911)|910)|912|(1:916)(2:(2:1030|(1:1038))(1:1040)|1039)|917|(6:919|(1:921)|922|(1:924)(1:928)|925|(1:927))|929|(2:931|(1:935)(2:936|(1:938)))|939|(2:941|(1:943))|944|(1:946)(2:1022|(2:1024|(1:1026)(1:1027))(1:1028))|947|(25:949|(1:951)(1:1020)|952|(1:954)|955|(1:1019)|961|(1:967)(1:1018)|968|(1:1017)|972|(1:974)(1:1016)|975|(8:979|(1:981)|982|(1:984)|985|(1:987)|988|(10:990|991|(2:993|(1:995)(1:996))|997|(2:999|(1:1001)(1:1002))|1003|(1:1007)|1008|(1:1012)(1:1014)|1013))|1015|991|(0)|997|(0)|1003|(2:1005|1007)|1008|(3:1010|1012|1013)|1014|1013)|1021)(3:4452|(2:4454|(2:4455|(1:4458)(1:4457)))(0)|4459))(1:4465)|4460|459|(55:4445|4447|(0)(0)|4450|465|466|(0)(0)|871|(1:873)|1216|1218|1220|(18:1222|1224|1228|(0)(0)|1231|(6:1233|1235|1237|1239|(0)|1242)|1243|1244|(1:1246)(9:1278|1280|1250|(0)(0)|1253|(0)(0)|1256|(0)(0)|1259)|1247|(0)(0)|1250|(0)(0)|1253|(0)(0)|1256|(0)(0)|1259)|1284|(1:1286)|1290|1291|(1:1293)(5:1334|1337|(1:1338)|1347|1348)|1294|(1:1296)(35:1331|1333|(0)(0)|877|(1:879)|1213|1215|881|(47:1155|1157|1159|1160|1161|1162|(0)(0)|1165|1166|1167|1168|1169|(0)(0)|1172|(1:1173)|1186|(0)(0)|1189|(1:1191)|1200|1195|(0)|884|(0)|898|(0)|901|(34:1041|1043|1045|1047|(0)(0)|1050|(0)(0)|1053|(0)|1063|(23:1065|1067|1069|1070|(0)(0)|1073|905|(0)|912|(13:914|916|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|1149|(0)|1152|1070|(0)(0)|1073|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|461|462|(0)|465|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)(56:4466|(1:4477)(2:4468|4469)|4470|(1:4472)(1:4475)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021))(1:4484)|4481|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021)|(14:175|(1:177)|178|(1:180)|181|(1:183)|184|(1:186)|187|(3:189|(1:191)(1:193)|192)|194|(1:196)|197|(1:199))|200|(6:202|(1:210)(1:219)|(1:212)(1:218)|213|(1:215)(1:217)|216)|220|(1:224)(1:244)|225|(1:233)|234|(1:240)|241|242)|4604|37|(166:39|41|43|45|46|(0)(0)|(2:50|52)|53|(159:55|57|74|(2:76|78)|(164:80|82|(0)(0)|(162:86|88|90|(2:92|94)|95|(0)|103|(7:105|107|(2:109|111)|112|(2:116|117)|118|117)|(10:121|123|125|127|129|131|133|135|(2:(0)(0)|139)|(0))|(4:151|(0)(0)|154|(0)(0))|159|(16:167|169|171|173|(0)|200|(0)|220|(8:222|224|225|(4:227|229|231|233)|234|(2:236|240)|241|242)|244|225|(0)|234|(0)|241|242)|245|(0)|4579|248|(146:4574|4576|(0)|252|(148:254|256|(146:258|262|263|(143:265|269|270|271|(142:273|275|277|279|281|282|(0)(0)|285|(136:287|289|291|293|294|(134:296|298|300|302|306|307|(130:309|311|313|315|316|(0)(0)|319|(124:321|323|325|326|(120:328|330|331|(117:333|337|338|(0)(0)|364|(0)|367|(3:4538|4540|(3:4541|(0)(0)|4547))(0)|369|370|(0)|4537|374|(3:4532|4534|4536)|376|377|(101:379|381|382|(0)|385|(0)|4528|4530|388|389|(1:4524)|391|392|(84:394|396|(0)|405|(80:407|409|410|(74:413|(1:415)(66:4478|4480|4481|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|416|(74:418|420|(0)|423|(0)(0)|4460|459|(0)|461|462|(0)|465|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4466|(67:4477|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4488|(0)(0)|(6:4492|4494|4496|4498|(1:4499)|4514)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4571|270|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4572|263|(0)|4571|270|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4573|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|250|251|252|(0)|4573|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4580|(0)|95|(0)|103|(0)|(0)|(0)|159|(0)|245|(0)|4579|248|(0)|250|251|252|(0)|4573|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4582|(0)|159|(0)|245|(0)|4579|248|(0)|250|251|252|(0)|4573|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4583|(0)|(0)|4582|(0)|159|(0)|245|(0)|4579|248|(0)|250|251|252|(0)|4573|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242)|4585|4587|45|46|(0)(0)|(0)|53|(0)|4583|(0)|(0)|4582|(0)|159|(0)|245|(0)|4579|248|(0)|250|251|252|(0)|4573|271|(0)|4570|282|(0)(0)|285|(0)|4568|294|(0)|4567|307|(0)|4566|316|(0)(0)|319|(0)|4564|326|(0)|4563|331|(0)|4562|338|(0)(0)|364|(0)|367|(0)(0)|369|370|(0)|4537|374|(0)|376|377|(0)|4531|382|(0)|385|(0)|4528|4530|388|389|(0)|391|392|(0)|4488|(0)(0)|(0)(0)|4515|(0)(0)|(0)|405|(0)|4487|410|(0)|4482|4485|413|(0)(0)|416|(0)|4466|(0)|4468|4469|4470|(0)(0)|4473|4474|466|(0)(0)|871|(0)|1216|1218|1220|(0)|1284|(0)|1290|1291|(0)(0)|1294|(0)(0)|1297|(0)(0)|(0)(0)|877|(0)|1213|1215|881|(0)|883|884|(0)|898|(0)|901|(0)|903|904|905|(0)|912|(0)|(0)(0)|1039|917|(0)|929|(0)|939|(0)|944|(0)(0)|947|(0)|1021|(0)|200|(0)|220|(0)|244|225|(0)|234|(0)|241|242|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(39:(2:1611|1612)(5:1646|1647|(1:(2:1666|1667)(6:1649|1650|1651|1652|1653|(1:1655)(1:1656)))|1658|(1:1660)(1:1661))|1613|(22:1638|1639|670|(4:672|(1:674)(1:714)|675|(8:677|(2:679|(1:681)(1:712))(1:713)|682|(1:684)(1:711)|685|(1:691)|692|(2:694|(3:698|(2:700|(1:702))|703)(1:(4:705|(1:707)|708|(1:710))))))|715|(3:1596|(1:1598)|1599)|1586|(2:1588|(1:1590))|(2:1574|(3:1579|(1:1581)(2:1583|(1:1585))|1582)(1:1576))(3:721|722|(2:726|(1:728)(1:1565)))|729|(1:735)(1:1564)|736|(1:1563)(1:738)|739|(1:744)|745|(8:1534|(2:1536|(1:1538))|1540|(2:1550|(1:1552)(6:1553|(1:1557)(1:1559)|1558|749|(2:751|(2:753|(8:755|(1:757)(2:1461|(3:1463|(3:1468|(1:1470)(1:1472)|1471)(4:(1:1482)(1:1474)|1475|(1:1477)(1:1479)|1478)|783)(1:1483))|758|(2:760|(1:762)(1:1459))(1:1460)|763|(1:767)(1:1458)|768|(2:(4:(1:1405)(2:1430|(1:1433))|1406|(1:1408)|(5:1415|(1:1417)|1418|(1:1420)(1:1422)|1421)(2:1423|(1:1428)(1:1429)))|(1:(5:1440|(1:1442)|1443|(1:1445)(1:1447)|1446)(1:1448))(3:1449|(1:1451)(1:1453)|1452))(3:776|(1:782)(2:(1:1399)|1400)|783))(2:1484|(2:1486|(1:1488)(3:1489|(1:1491)(1:1514)|(2:1499|(1:1503)(3:1504|(1:1506)(1:1508)|1507))(3:1509|(1:1511)(1:1513)|1512)))(1:1515)))(3:1516|(1:1518)(1:1520)|1519))(2:1521|(1:1527)(2:1528|(2:(1:1532)|1533)))|784))|748|749|(0)(0)|784)|747|748|749|(0)(0)|784)|1616|1617|1618|(31:1633|1624|1625|670|(0)|715|(1:717)(4:1591|1596|(0)|1599)|1586|(0)|(18:1574|(19:1577|1579|(0)(0)|1582|729|(15:731|733|735|736|(11:1561|1563|739|(2:742|744)|745|(0)|747|748|749|(0)(0)|784)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1576|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|721|722|(18:724|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1621|(30:1628|1629|670|(0)|715|(0)(0)|1586|(0)|(0)|721|722|(0)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784)|1624|1625|670|(0)|715|(0)(0)|1586|(0)|(0)|721|722|(0)|1566|726|(0)(0)|729|(0)|1564|736|(0)|738|739|(0)|745|(0)|747|748|749|(0)(0)|784) */
    /* JADX WARN: Code restructure failed: missing block: B:10222:0x5c56, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:10223:0x5c57, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:10688:0x63f8, code lost:
        if (r4.button.url.startsWith("tg://resolve") != false) goto L1114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5499:0x0097, code lost:
        if (r8.isPlayingRound == ((!org.telegram.messenger.MediaController.getInstance().isPlayingMessage(r8.currentMessageObject) || (r6 = r8.delegate) == null || r6.keyboardIsOpened()) ? false : true)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6511:0x0e1e, code lost:
        if (r5.isSmall != false) goto L1673;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6534:0x0e8b, code lost:
        if ((r8.currentPosition.flags & 2) == 0) goto L1712;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6586:0x0f5d, code lost:
        if ((r4 & 4) != 0) goto L1732;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6623:0x103d, code lost:
        r8.captionWidth = r3;
        r40 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6650:0x10ce, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6821:0x13bc, code lost:
        if (r1.revealingMediaSpoilers != false) goto L1540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7070:0x19d2, code lost:
        if ((r11.flags & 1) == 0) goto L1800;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7076:0x19e0, code lost:
        if ((r11.flags & 2) == 0) goto L1756;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7079:0x19e7, code lost:
        r4 = 0;
        r5 = 0;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7081:0x19f2, code lost:
        if (r4 < r8.currentMessagesGroup.posArray.size()) goto L1807;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7082:0x19f4, code lost:
        r17 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7083:0x19f7, code lost:
        r7 = r8.currentMessagesGroup.posArray.get(r4);
        r15 = r7.minY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7084:0x1a03, code lost:
        if (r15 == 0) goto L1823;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7085:0x1a05, code lost:
        r17 = r3;
        r3 = r11.minY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7086:0x1a09, code lost:
        if (r15 == r3) goto L1817;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7087:0x1a0b, code lost:
        if (r15 > r3) goto L1815;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7088:0x1a0d, code lost:
        r19 = r4;
        r20 = r6;
        r32 = r10;
        r31 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7089:0x1a1b, code lost:
        r2 = r2 + (r9 - r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7149:0x1ad9, code lost:
        r19 = r4;
        r3 = r5;
        r20 = r6;
        r5 = java.lang.Math.ceil((r7.f1439pw / 1000.0f) * r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7150:0x1af1, code lost:
        if (r7.leftSpanOffset != 0) goto L1822;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7151:0x1af3, code lost:
        r32 = r10;
        r31 = r11;
        r10 = 0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7152:0x1afe, code lost:
        r32 = r10;
        r31 = r11;
        r10 = java.lang.Math.ceil((r7 / 1000.0f) * r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7153:0x1b0d, code lost:
        r5 = (int) (r3 + (r5 + r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:7154:0x1b12, code lost:
        r17 = r3;
        r19 = r4;
        r20 = r6;
        r32 = r10;
        r31 = r11;
        r3 = r9;
        r9 = java.lang.Math.ceil((r7.f1439pw / 1000.0f) * r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7155:0x1b2f, code lost:
        if (r7.leftSpanOffset != 0) goto L1828;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7156:0x1b31, code lost:
        r6 = 0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7157:0x1b34, code lost:
        r6 = java.lang.Math.ceil((r6 / 1000.0f) * r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7158:0x1b3e, code lost:
        r9 = (int) (r3 + (r9 + r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:7159:0x1b42, code lost:
        r4 = r19 + 1;
        r3 = r17;
        r6 = r20;
        r11 = r31;
        r10 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7482:0x24a1, code lost:
        if (r1 >= (r2 + org.telegram.messenger.AndroidUtilities.m50dp(20 + r31))) goto L2264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8296:0x3570, code lost:
        if (r1.messageOwner.fwd_from.from_id != null) goto L2821;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9061:0x44f6, code lost:
        if (r13 == 13) goto L4202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9136:0x465d, code lost:
        if (r8.isSmallImage != false) goto L4074;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9224:0x47df, code lost:
        if (r8.isSmallImage != false) goto L3994;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9293:0x491f, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9297:0x4923, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9930:0x55b4, code lost:
        if (r0.revealingMediaSpoilers != false) goto L3598;
     */
    /* JADX WARN: Multi-variable search skipped. Vars limit reached: 8274 (expected less than 5000) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10011:0x5834  */
    /* JADX WARN: Removed duplicated region for block: B:10037:0x587f  */
    /* JADX WARN: Removed duplicated region for block: B:10043:0x58e3  */
    /* JADX WARN: Removed duplicated region for block: B:10064:0x59d3  */
    /* JADX WARN: Removed duplicated region for block: B:10074:0x59f8  */
    /* JADX WARN: Removed duplicated region for block: B:10089:0x5a1f  */
    /* JADX WARN: Removed duplicated region for block: B:10100:0x5a38  */
    /* JADX WARN: Removed duplicated region for block: B:10101:0x5a3b  */
    /* JADX WARN: Removed duplicated region for block: B:10117:0x5a7b  */
    /* JADX WARN: Removed duplicated region for block: B:10127:0x5ab5  */
    /* JADX WARN: Removed duplicated region for block: B:10128:0x5ab6 A[Catch: Exception -> 0x5b46, TryCatch #28 {Exception -> 0x5b46, blocks: (B:10119:0x5aa0, B:10125:0x5aaf, B:10139:0x5ad6, B:10146:0x5ae7, B:10150:0x5af2, B:10152:0x5b06, B:10154:0x5b3f, B:10153:0x5b1d, B:10142:0x5adb, B:10145:0x5ae0, B:10128:0x5ab6, B:10130:0x5abc, B:10133:0x5ac4, B:10138:0x5ad5, B:10134:0x5ac9, B:10137:0x5ad1, B:10122:0x5aaa), top: B:10759:0x5aa0 }] */
    /* JADX WARN: Removed duplicated region for block: B:10141:0x5ada A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:10142:0x5adb A[Catch: Exception -> 0x5b46, TryCatch #28 {Exception -> 0x5b46, blocks: (B:10119:0x5aa0, B:10125:0x5aaf, B:10139:0x5ad6, B:10146:0x5ae7, B:10150:0x5af2, B:10152:0x5b06, B:10154:0x5b3f, B:10153:0x5b1d, B:10142:0x5adb, B:10145:0x5ae0, B:10128:0x5ab6, B:10130:0x5abc, B:10133:0x5ac4, B:10138:0x5ad5, B:10134:0x5ac9, B:10137:0x5ad1, B:10122:0x5aaa), top: B:10759:0x5aa0 }] */
    /* JADX WARN: Removed duplicated region for block: B:10148:0x5aee  */
    /* JADX WARN: Removed duplicated region for block: B:10149:0x5af0  */
    /* JADX WARN: Removed duplicated region for block: B:10152:0x5b06 A[Catch: Exception -> 0x5b46, TryCatch #28 {Exception -> 0x5b46, blocks: (B:10119:0x5aa0, B:10125:0x5aaf, B:10139:0x5ad6, B:10146:0x5ae7, B:10150:0x5af2, B:10152:0x5b06, B:10154:0x5b3f, B:10153:0x5b1d, B:10142:0x5adb, B:10145:0x5ae0, B:10128:0x5ab6, B:10130:0x5abc, B:10133:0x5ac4, B:10138:0x5ad5, B:10134:0x5ac9, B:10137:0x5ad1, B:10122:0x5aaa), top: B:10759:0x5aa0 }] */
    /* JADX WARN: Removed duplicated region for block: B:10153:0x5b1d A[Catch: Exception -> 0x5b46, TryCatch #28 {Exception -> 0x5b46, blocks: (B:10119:0x5aa0, B:10125:0x5aaf, B:10139:0x5ad6, B:10146:0x5ae7, B:10150:0x5af2, B:10152:0x5b06, B:10154:0x5b3f, B:10153:0x5b1d, B:10142:0x5adb, B:10145:0x5ae0, B:10128:0x5ab6, B:10130:0x5abc, B:10133:0x5ac4, B:10138:0x5ad5, B:10134:0x5ac9, B:10137:0x5ad1, B:10122:0x5aaa), top: B:10759:0x5aa0 }] */
    /* JADX WARN: Removed duplicated region for block: B:10161:0x5b4f  */
    /* JADX WARN: Removed duplicated region for block: B:10169:0x5b62 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:10170:0x5b63 A[Catch: Exception -> 0x5c56, TryCatch #21 {Exception -> 0x5c56, blocks: (B:10167:0x5b5c, B:10177:0x5b90, B:10182:0x5ba2, B:10189:0x5bd7, B:10193:0x5be4, B:10199:0x5bfc, B:10205:0x5c08, B:10209:0x5c16, B:10212:0x5c2d, B:10215:0x5c3b, B:10208:0x5c12, B:10202:0x5c01, B:10196:0x5bf7, B:10192:0x5bdc, B:10185:0x5bab, B:10180:0x5b9c, B:10186:0x5bb7, B:10170:0x5b63, B:10173:0x5b68, B:10174:0x5b80, B:10176:0x5b88, B:10216:0x5c46), top: B:10746:0x5b5c }] */
    /* JADX WARN: Removed duplicated region for block: B:10179:0x5b9b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:10180:0x5b9c A[Catch: Exception -> 0x5c56, TryCatch #21 {Exception -> 0x5c56, blocks: (B:10167:0x5b5c, B:10177:0x5b90, B:10182:0x5ba2, B:10189:0x5bd7, B:10193:0x5be4, B:10199:0x5bfc, B:10205:0x5c08, B:10209:0x5c16, B:10212:0x5c2d, B:10215:0x5c3b, B:10208:0x5c12, B:10202:0x5c01, B:10196:0x5bf7, B:10192:0x5bdc, B:10185:0x5bab, B:10180:0x5b9c, B:10186:0x5bb7, B:10170:0x5b63, B:10173:0x5b68, B:10174:0x5b80, B:10176:0x5b88, B:10216:0x5c46), top: B:10746:0x5b5c }] */
    /* JADX WARN: Removed duplicated region for block: B:10184:0x5ba9  */
    /* JADX WARN: Removed duplicated region for block: B:10185:0x5bab A[Catch: Exception -> 0x5c56, TryCatch #21 {Exception -> 0x5c56, blocks: (B:10167:0x5b5c, B:10177:0x5b90, B:10182:0x5ba2, B:10189:0x5bd7, B:10193:0x5be4, B:10199:0x5bfc, B:10205:0x5c08, B:10209:0x5c16, B:10212:0x5c2d, B:10215:0x5c3b, B:10208:0x5c12, B:10202:0x5c01, B:10196:0x5bf7, B:10192:0x5bdc, B:10185:0x5bab, B:10180:0x5b9c, B:10186:0x5bb7, B:10170:0x5b63, B:10173:0x5b68, B:10174:0x5b80, B:10176:0x5b88, B:10216:0x5c46), top: B:10746:0x5b5c }] */
    /* JADX WARN: Removed duplicated region for block: B:10188:0x5bd5  */
    /* JADX WARN: Removed duplicated region for block: B:10189:0x5bd7 A[Catch: Exception -> 0x5c56, TryCatch #21 {Exception -> 0x5c56, blocks: (B:10167:0x5b5c, B:10177:0x5b90, B:10182:0x5ba2, B:10189:0x5bd7, B:10193:0x5be4, B:10199:0x5bfc, B:10205:0x5c08, B:10209:0x5c16, B:10212:0x5c2d, B:10215:0x5c3b, B:10208:0x5c12, B:10202:0x5c01, B:10196:0x5bf7, B:10192:0x5bdc, B:10185:0x5bab, B:10180:0x5b9c, B:10186:0x5bb7, B:10170:0x5b63, B:10173:0x5b68, B:10174:0x5b80, B:10176:0x5b88, B:10216:0x5c46), top: B:10746:0x5b5c }] */
    /* JADX WARN: Removed duplicated region for block: B:10216:0x5c46 A[Catch: Exception -> 0x5c56, TRY_LEAVE, TryCatch #21 {Exception -> 0x5c56, blocks: (B:10167:0x5b5c, B:10177:0x5b90, B:10182:0x5ba2, B:10189:0x5bd7, B:10193:0x5be4, B:10199:0x5bfc, B:10205:0x5c08, B:10209:0x5c16, B:10212:0x5c2d, B:10215:0x5c3b, B:10208:0x5c12, B:10202:0x5c01, B:10196:0x5bf7, B:10192:0x5bdc, B:10185:0x5bab, B:10180:0x5b9c, B:10186:0x5bb7, B:10170:0x5b63, B:10173:0x5b68, B:10174:0x5b80, B:10176:0x5b88, B:10216:0x5c46), top: B:10746:0x5b5c }] */
    /* JADX WARN: Removed duplicated region for block: B:10227:0x5c5f  */
    /* JADX WARN: Removed duplicated region for block: B:10237:0x5c7a  */
    /* JADX WARN: Removed duplicated region for block: B:10247:0x5cdc  */
    /* JADX WARN: Removed duplicated region for block: B:10248:0x5cde  */
    /* JADX WARN: Removed duplicated region for block: B:10259:0x5d06  */
    /* JADX WARN: Removed duplicated region for block: B:10260:0x5d07 A[Catch: Exception -> 0x5d7a, TryCatch #32 {Exception -> 0x5d7a, blocks: (B:10257:0x5d00, B:10261:0x5d11, B:10262:0x5d49, B:10266:0x5d54, B:10267:0x5d58, B:10270:0x5d68, B:10272:0x5d6c, B:10273:0x5d74, B:10260:0x5d07), top: B:10767:0x5d00 }] */
    /* JADX WARN: Removed duplicated region for block: B:10265:0x5d53  */
    /* JADX WARN: Removed duplicated region for block: B:10266:0x5d54 A[Catch: Exception -> 0x5d7a, TryCatch #32 {Exception -> 0x5d7a, blocks: (B:10257:0x5d00, B:10261:0x5d11, B:10262:0x5d49, B:10266:0x5d54, B:10267:0x5d58, B:10270:0x5d68, B:10272:0x5d6c, B:10273:0x5d74, B:10260:0x5d07), top: B:10767:0x5d00 }] */
    /* JADX WARN: Removed duplicated region for block: B:10267:0x5d58 A[Catch: Exception -> 0x5d7a, TryCatch #32 {Exception -> 0x5d7a, blocks: (B:10257:0x5d00, B:10261:0x5d11, B:10262:0x5d49, B:10266:0x5d54, B:10267:0x5d58, B:10270:0x5d68, B:10272:0x5d6c, B:10273:0x5d74, B:10260:0x5d07), top: B:10767:0x5d00 }] */
    /* JADX WARN: Removed duplicated region for block: B:10280:0x5d84  */
    /* JADX WARN: Removed duplicated region for block: B:10290:0x5da4  */
    /* JADX WARN: Removed duplicated region for block: B:10297:0x5dbf  */
    /* JADX WARN: Removed duplicated region for block: B:10315:0x5e01  */
    /* JADX WARN: Removed duplicated region for block: B:10319:0x5e13  */
    /* JADX WARN: Removed duplicated region for block: B:10331:0x5e36  */
    /* JADX WARN: Removed duplicated region for block: B:10332:0x5e38  */
    /* JADX WARN: Removed duplicated region for block: B:10335:0x5e56  */
    /* JADX WARN: Removed duplicated region for block: B:10336:0x5e59  */
    /* JADX WARN: Removed duplicated region for block: B:10340:0x5e66  */
    /* JADX WARN: Removed duplicated region for block: B:10359:0x5ebe  */
    /* JADX WARN: Removed duplicated region for block: B:10364:0x5eda  */
    /* JADX WARN: Removed duplicated region for block: B:10365:0x5edc  */
    /* JADX WARN: Removed duplicated region for block: B:10372:0x5ee8  */
    /* JADX WARN: Removed duplicated region for block: B:10380:0x5f06  */
    /* JADX WARN: Removed duplicated region for block: B:10383:0x5f0c  */
    /* JADX WARN: Removed duplicated region for block: B:10396:0x5f2b  */
    /* JADX WARN: Removed duplicated region for block: B:10402:0x5f46  */
    /* JADX WARN: Removed duplicated region for block: B:10417:0x5f79  */
    /* JADX WARN: Removed duplicated region for block: B:10430:0x5fb4  */
    /* JADX WARN: Removed duplicated region for block: B:10436:0x5fd5  */
    /* JADX WARN: Removed duplicated region for block: B:10437:0x5fdb  */
    /* JADX WARN: Removed duplicated region for block: B:10447:0x6012  */
    /* JADX WARN: Removed duplicated region for block: B:10511:0x6097  */
    /* JADX WARN: Removed duplicated region for block: B:10518:0x60a7  */
    /* JADX WARN: Removed duplicated region for block: B:10540:0x60df  */
    /* JADX WARN: Removed duplicated region for block: B:10575:0x6152  */
    /* JADX WARN: Removed duplicated region for block: B:10599:0x618a  */
    /* JADX WARN: Removed duplicated region for block: B:10606:0x619f  */
    /* JADX WARN: Removed duplicated region for block: B:10619:0x61d7  */
    /* JADX WARN: Removed duplicated region for block: B:10656:0x6361  */
    /* JADX WARN: Removed duplicated region for block: B:10665:0x639a  */
    /* JADX WARN: Removed duplicated region for block: B:10666:0x639b A[Catch: Exception -> 0x6400, TryCatch #40 {Exception -> 0x6400, blocks: (B:10663:0x6380, B:10691:0x63fd, B:10666:0x639b, B:10672:0x63b5, B:10675:0x63be, B:10678:0x63c7, B:10681:0x63d0, B:10684:0x63dd, B:10687:0x63ec, B:10669:0x63a8), top: B:10783:0x6380 }] */
    /* JADX WARN: Removed duplicated region for block: B:10683:0x63dc  */
    /* JADX WARN: Removed duplicated region for block: B:10684:0x63dd A[Catch: Exception -> 0x6400, TryCatch #40 {Exception -> 0x6400, blocks: (B:10663:0x6380, B:10691:0x63fd, B:10666:0x639b, B:10672:0x63b5, B:10675:0x63be, B:10678:0x63c7, B:10681:0x63d0, B:10684:0x63dd, B:10687:0x63ec, B:10669:0x63a8), top: B:10783:0x6380 }] */
    /* JADX WARN: Removed duplicated region for block: B:10695:0x641b  */
    /* JADX WARN: Removed duplicated region for block: B:10751:0x0f87 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10765:0x4595 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10771:0x5845 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10785:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10895:0x051d A[EDGE_INSN: B:10895:0x051d->B:5916:0x051d ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5544:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:5545:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:5548:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:5555:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:5587:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:5593:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:5598:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:5599:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:5611:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:5618:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:5629:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:5650:0x01df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5676:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:5681:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:5688:0x0252 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5692:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:5693:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:5696:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:5697:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:5701:0x0277 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5724:0x02bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5730:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:5737:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:5741:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:5756:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:5768:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:5783:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:5784:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:5788:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:5801:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:5820:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:5832:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:5833:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:5837:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:5847:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:5854:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:5863:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:5909:0x04b9  */
    /* JADX WARN: Removed duplicated region for block: B:5913:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:5917:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:5927:0x0574 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5935:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:5945:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:5952:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:5956:0x05fd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5965:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:5974:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:5979:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:5980:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:5983:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:5996:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:6011:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:6012:0x06b4  */
    /* JADX WARN: Removed duplicated region for block: B:6019:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:6032:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:6039:0x070f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6049:0x0725 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6050:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:6058:0x0745  */
    /* JADX WARN: Removed duplicated region for block: B:6063:0x0751 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6069:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:6070:0x0792  */
    /* JADX WARN: Removed duplicated region for block: B:6075:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:6078:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:6120:0x08a5  */
    /* JADX WARN: Removed duplicated region for block: B:6121:0x08a8  */
    /* JADX WARN: Removed duplicated region for block: B:6124:0x08b9  */
    /* JADX WARN: Removed duplicated region for block: B:6129:0x08f7  */
    /* JADX WARN: Removed duplicated region for block: B:6135:0x0903  */
    /* JADX WARN: Removed duplicated region for block: B:6138:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:6139:0x0916  */
    /* JADX WARN: Removed duplicated region for block: B:6144:0x0958  */
    /* JADX WARN: Removed duplicated region for block: B:6303:0x0b4e  */
    /* JADX WARN: Removed duplicated region for block: B:6306:0x0b58  */
    /* JADX WARN: Removed duplicated region for block: B:6338:0x0bcc  */
    /* JADX WARN: Removed duplicated region for block: B:6404:0x0c66  */
    /* JADX WARN: Removed duplicated region for block: B:6445:0x0cff  */
    /* JADX WARN: Removed duplicated region for block: B:6446:0x0d07  */
    /* JADX WARN: Removed duplicated region for block: B:6456:0x0d35  */
    /* JADX WARN: Removed duplicated region for block: B:6459:0x0d5a  */
    /* JADX WARN: Removed duplicated region for block: B:6460:0x0d5d  */
    /* JADX WARN: Removed duplicated region for block: B:6463:0x0d65  */
    /* JADX WARN: Removed duplicated region for block: B:6464:0x0d67  */
    /* JADX WARN: Removed duplicated region for block: B:6468:0x0d73  */
    /* JADX WARN: Removed duplicated region for block: B:6471:0x0d7a  */
    /* JADX WARN: Removed duplicated region for block: B:6482:0x0da8  */
    /* JADX WARN: Removed duplicated region for block: B:6493:0x0dcd  */
    /* JADX WARN: Removed duplicated region for block: B:6519:0x0e38  */
    /* JADX WARN: Removed duplicated region for block: B:6521:0x0e42  */
    /* JADX WARN: Removed duplicated region for block: B:6665:0x10e7  */
    /* JADX WARN: Removed duplicated region for block: B:6721:0x120b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6722:0x120d  */
    /* JADX WARN: Removed duplicated region for block: B:6733:0x1228  */
    /* JADX WARN: Removed duplicated region for block: B:6740:0x1243  */
    /* JADX WARN: Removed duplicated region for block: B:6746:0x1269 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6757:0x12b0  */
    /* JADX WARN: Removed duplicated region for block: B:6758:0x12b2  */
    /* JADX WARN: Removed duplicated region for block: B:6766:0x1314  */
    /* JADX WARN: Removed duplicated region for block: B:6780:0x1330  */
    /* JADX WARN: Removed duplicated region for block: B:6781:0x1346  */
    /* JADX WARN: Removed duplicated region for block: B:6785:0x1376  */
    /* JADX WARN: Removed duplicated region for block: B:6795:0x1387 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6804:0x1397 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:6814:0x13aa  */
    /* JADX WARN: Removed duplicated region for block: B:6851:0x1405  */
    /* JADX WARN: Removed duplicated region for block: B:7038:0x18a3  */
    /* JADX WARN: Removed duplicated region for block: B:7146:0x1ac3  */
    /* JADX WARN: Removed duplicated region for block: B:7147:0x1ac6  */
    /* JADX WARN: Removed duplicated region for block: B:7427:0x227b  */
    /* JADX WARN: Removed duplicated region for block: B:7489:0x24b8  */
    /* JADX WARN: Removed duplicated region for block: B:7530:0x26c7  */
    /* JADX WARN: Removed duplicated region for block: B:7531:0x26d3  */
    /* JADX WARN: Removed duplicated region for block: B:7544:0x26f2  */
    /* JADX WARN: Removed duplicated region for block: B:7557:0x2735  */
    /* JADX WARN: Removed duplicated region for block: B:7558:0x2738  */
    /* JADX WARN: Removed duplicated region for block: B:7562:0x2752  */
    /* JADX WARN: Removed duplicated region for block: B:7582:0x27ce  */
    /* JADX WARN: Removed duplicated region for block: B:7592:0x282d  */
    /* JADX WARN: Removed duplicated region for block: B:7632:0x293f  */
    /* JADX WARN: Removed duplicated region for block: B:7633:0x2941  */
    /* JADX WARN: Removed duplicated region for block: B:7638:0x294e  */
    /* JADX WARN: Removed duplicated region for block: B:7643:0x295a  */
    /* JADX WARN: Removed duplicated region for block: B:7648:0x2968  */
    /* JADX WARN: Removed duplicated region for block: B:7663:0x299c  */
    /* JADX WARN: Removed duplicated region for block: B:7689:0x2a00  */
    /* JADX WARN: Removed duplicated region for block: B:7699:0x2a26  */
    /* JADX WARN: Removed duplicated region for block: B:7740:0x2ab1  */
    /* JADX WARN: Removed duplicated region for block: B:7747:0x2ac6  */
    /* JADX WARN: Removed duplicated region for block: B:7769:0x2b0e  */
    /* JADX WARN: Removed duplicated region for block: B:7774:0x2b35  */
    /* JADX WARN: Removed duplicated region for block: B:7775:0x2b37  */
    /* JADX WARN: Removed duplicated region for block: B:7779:0x2b4f  */
    /* JADX WARN: Removed duplicated region for block: B:7792:0x2b83  */
    /* JADX WARN: Removed duplicated region for block: B:7803:0x2b99  */
    /* JADX WARN: Removed duplicated region for block: B:7816:0x2bbc  */
    /* JADX WARN: Removed duplicated region for block: B:7820:0x2bd8  */
    /* JADX WARN: Removed duplicated region for block: B:7824:0x2be8  */
    /* JADX WARN: Removed duplicated region for block: B:7837:0x2c12  */
    /* JADX WARN: Removed duplicated region for block: B:7841:0x2c2a  */
    /* JADX WARN: Removed duplicated region for block: B:7846:0x2c37  */
    /* JADX WARN: Removed duplicated region for block: B:7862:0x2c6d  */
    /* JADX WARN: Removed duplicated region for block: B:7863:0x2c6f  */
    /* JADX WARN: Removed duplicated region for block: B:7867:0x2c82  */
    /* JADX WARN: Removed duplicated region for block: B:7870:0x2c8f  */
    /* JADX WARN: Removed duplicated region for block: B:7871:0x2c91  */
    /* JADX WARN: Removed duplicated region for block: B:7897:0x2ce8  */
    /* JADX WARN: Removed duplicated region for block: B:7930:0x2d4b  */
    /* JADX WARN: Removed duplicated region for block: B:8307:0x3589  */
    /* JADX WARN: Removed duplicated region for block: B:8312:0x35a6  */
    /* JADX WARN: Removed duplicated region for block: B:8320:0x35da  */
    /* JADX WARN: Removed duplicated region for block: B:8328:0x35f1  */
    /* JADX WARN: Removed duplicated region for block: B:8329:0x35f3  */
    /* JADX WARN: Removed duplicated region for block: B:8333:0x3610  */
    /* JADX WARN: Removed duplicated region for block: B:8337:0x361e  */
    /* JADX WARN: Removed duplicated region for block: B:8341:0x3630  */
    /* JADX WARN: Removed duplicated region for block: B:8470:0x38db  */
    /* JADX WARN: Removed duplicated region for block: B:8475:0x38e9  */
    /* JADX WARN: Removed duplicated region for block: B:8478:0x38f6  */
    /* JADX WARN: Removed duplicated region for block: B:8487:0x393d  */
    /* JADX WARN: Removed duplicated region for block: B:8501:0x3984  */
    /* JADX WARN: Removed duplicated region for block: B:8508:0x39da  */
    /* JADX WARN: Removed duplicated region for block: B:8519:0x39ef  */
    /* JADX WARN: Removed duplicated region for block: B:8527:0x3a20  */
    /* JADX WARN: Removed duplicated region for block: B:8530:0x3a2e  */
    /* JADX WARN: Removed duplicated region for block: B:8537:0x3a64  */
    /* JADX WARN: Removed duplicated region for block: B:8541:0x3a6e  */
    /* JADX WARN: Removed duplicated region for block: B:8547:0x3aab  */
    /* JADX WARN: Removed duplicated region for block: B:8603:0x3c6e  */
    /* JADX WARN: Removed duplicated region for block: B:8810:0x3ffe  */
    /* JADX WARN: Removed duplicated region for block: B:8818:0x4022 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:8819:0x4023 A[Catch: Exception -> 0x41d4, TryCatch #18 {Exception -> 0x41d4, blocks: (B:8816:0x401a, B:8823:0x403d, B:8819:0x4023, B:8822:0x402e, B:8815:0x400d, B:8825:0x4069, B:8832:0x40aa, B:8839:0x40cb, B:8846:0x40ee, B:8848:0x40f5, B:8850:0x4101, B:8849:0x40fc, B:8842:0x40d4, B:8845:0x40df, B:8835:0x40b1, B:8838:0x40be, B:8828:0x4089, B:8831:0x4095), top: B:10741:0x3fa1 }] */
    /* JADX WARN: Removed duplicated region for block: B:8881:0x41de  */
    /* JADX WARN: Removed duplicated region for block: B:8889:0x41ee  */
    /* JADX WARN: Removed duplicated region for block: B:8898:0x4236  */
    /* JADX WARN: Removed duplicated region for block: B:8899:0x4238  */
    /* JADX WARN: Removed duplicated region for block: B:8907:0x426f  */
    /* JADX WARN: Removed duplicated region for block: B:8914:0x4293  */
    /* JADX WARN: Removed duplicated region for block: B:8925:0x42c0  */
    /* JADX WARN: Removed duplicated region for block: B:8929:0x42e3  */
    /* JADX WARN: Removed duplicated region for block: B:8933:0x42f6  */
    /* JADX WARN: Removed duplicated region for block: B:8940:0x4307  */
    /* JADX WARN: Removed duplicated region for block: B:8948:0x4322  */
    /* JADX WARN: Removed duplicated region for block: B:8952:0x434a  */
    /* JADX WARN: Removed duplicated region for block: B:8955:0x4362  */
    /* JADX WARN: Removed duplicated region for block: B:8961:0x437f  */
    /* JADX WARN: Removed duplicated region for block: B:8967:0x439b  */
    /* JADX WARN: Removed duplicated region for block: B:8980:0x4400  */
    /* JADX WARN: Removed duplicated region for block: B:8994:0x4432 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:8995:0x4434  */
    /* JADX WARN: Removed duplicated region for block: B:9001:0x4446  */
    /* JADX WARN: Removed duplicated region for block: B:9002:0x4449  */
    /* JADX WARN: Removed duplicated region for block: B:9009:0x445d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9014:0x4471  */
    /* JADX WARN: Removed duplicated region for block: B:9018:0x4488  */
    /* JADX WARN: Removed duplicated region for block: B:9044:0x44d4  */
    /* JADX WARN: Removed duplicated region for block: B:9045:0x44d7  */
    /* JADX WARN: Removed duplicated region for block: B:9070:0x4504 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9079:0x4529  */
    /* JADX WARN: Removed duplicated region for block: B:9089:0x4558  */
    /* JADX WARN: Removed duplicated region for block: B:9093:0x4565  */
    /* JADX WARN: Removed duplicated region for block: B:9094:0x456f  */
    /* JADX WARN: Removed duplicated region for block: B:9098:0x457c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9102:0x4585  */
    /* JADX WARN: Removed duplicated region for block: B:9178:0x4712  */
    /* JADX WARN: Removed duplicated region for block: B:9179:0x4714  */
    /* JADX WARN: Removed duplicated region for block: B:9182:0x471b  */
    /* JADX WARN: Removed duplicated region for block: B:9188:0x472c  */
    /* JADX WARN: Removed duplicated region for block: B:9258:0x4854  */
    /* JADX WARN: Removed duplicated region for block: B:9264:0x4863 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9268:0x486c  */
    /* JADX WARN: Removed duplicated region for block: B:9269:0x486d A[Catch: Exception -> 0x4921, TRY_LEAVE, TryCatch #12 {Exception -> 0x4921, blocks: (B:9266:0x4868, B:9279:0x489c, B:9284:0x48bf, B:9285:0x48d4, B:9287:0x48fc, B:9288:0x490b, B:9283:0x48a3, B:9269:0x486d), top: B:10730:0x4868 }] */
    /* JADX WARN: Removed duplicated region for block: B:9279:0x489c A[Catch: Exception -> 0x4921, TRY_ENTER, TryCatch #12 {Exception -> 0x4921, blocks: (B:9266:0x4868, B:9279:0x489c, B:9284:0x48bf, B:9285:0x48d4, B:9287:0x48fc, B:9288:0x490b, B:9283:0x48a3, B:9269:0x486d), top: B:10730:0x4868 }] */
    /* JADX WARN: Removed duplicated region for block: B:9287:0x48fc A[Catch: Exception -> 0x4921, TryCatch #12 {Exception -> 0x4921, blocks: (B:9266:0x4868, B:9279:0x489c, B:9284:0x48bf, B:9285:0x48d4, B:9287:0x48fc, B:9288:0x490b, B:9283:0x48a3, B:9269:0x486d), top: B:10730:0x4868 }] */
    /* JADX WARN: Removed duplicated region for block: B:9288:0x490b A[Catch: Exception -> 0x4921, TRY_LEAVE, TryCatch #12 {Exception -> 0x4921, blocks: (B:9266:0x4868, B:9279:0x489c, B:9284:0x48bf, B:9285:0x48d4, B:9287:0x48fc, B:9288:0x490b, B:9283:0x48a3, B:9269:0x486d), top: B:10730:0x4868 }] */
    /* JADX WARN: Removed duplicated region for block: B:9300:0x492a  */
    /* JADX WARN: Removed duplicated region for block: B:9318:0x496d  */
    /* JADX WARN: Removed duplicated region for block: B:9319:0x4970  */
    /* JADX WARN: Removed duplicated region for block: B:9323:0x4995  */
    /* JADX WARN: Removed duplicated region for block: B:9324:0x4998  */
    /* JADX WARN: Removed duplicated region for block: B:9333:0x49ec A[Catch: Exception -> 0x4a71, TryCatch #0 {Exception -> 0x4a71, blocks: (B:9301:0x492b, B:9316:0x4963, B:9320:0x4974, B:9326:0x49ab, B:9327:0x49d3, B:9329:0x49db, B:9330:0x49e2, B:9333:0x49ec, B:9342:0x4a07, B:9354:0x4a2a, B:9355:0x4a2d, B:9365:0x4a47, B:9363:0x4a3f, B:9360:0x4a35, B:9351:0x4a25, B:9344:0x4a1a, B:9336:0x49fb, B:9339:0x4a00, B:9366:0x4a4e, B:9369:0x4a5d, B:9371:0x4a61, B:9372:0x4a69, B:9314:0x495f, B:9321:0x4981, B:9325:0x499c, B:9307:0x494b, B:9304:0x4937), top: B:10707:0x492b }] */
    /* JADX WARN: Removed duplicated region for block: B:9357:0x4a31  */
    /* JADX WARN: Removed duplicated region for block: B:9358:0x4a32  */
    /* JADX WARN: Removed duplicated region for block: B:9366:0x4a4e A[Catch: Exception -> 0x4a71, TryCatch #0 {Exception -> 0x4a71, blocks: (B:9301:0x492b, B:9316:0x4963, B:9320:0x4974, B:9326:0x49ab, B:9327:0x49d3, B:9329:0x49db, B:9330:0x49e2, B:9333:0x49ec, B:9342:0x4a07, B:9354:0x4a2a, B:9355:0x4a2d, B:9365:0x4a47, B:9363:0x4a3f, B:9360:0x4a35, B:9351:0x4a25, B:9344:0x4a1a, B:9336:0x49fb, B:9339:0x4a00, B:9366:0x4a4e, B:9369:0x4a5d, B:9371:0x4a61, B:9372:0x4a69, B:9314:0x495f, B:9321:0x4981, B:9325:0x499c, B:9307:0x494b, B:9304:0x4937), top: B:10707:0x492b }] */
    /* JADX WARN: Removed duplicated region for block: B:9379:0x4a78  */
    /* JADX WARN: Removed duplicated region for block: B:9387:0x4a8a  */
    /* JADX WARN: Removed duplicated region for block: B:9389:0x4a8d  */
    /* JADX WARN: Removed duplicated region for block: B:9414:0x4ae1  */
    /* JADX WARN: Removed duplicated region for block: B:9415:0x4ae3  */
    /* JADX WARN: Removed duplicated region for block: B:9418:0x4af0  */
    /* JADX WARN: Removed duplicated region for block: B:9419:0x4af2  */
    /* JADX WARN: Removed duplicated region for block: B:9422:0x4afb  */
    /* JADX WARN: Removed duplicated region for block: B:9423:0x4afe  */
    /* JADX WARN: Removed duplicated region for block: B:9427:0x4b0f  */
    /* JADX WARN: Removed duplicated region for block: B:9429:0x4b15  */
    /* JADX WARN: Removed duplicated region for block: B:9671:0x506c  */
    /* JADX WARN: Removed duplicated region for block: B:9690:0x50a7  */
    /* JADX WARN: Removed duplicated region for block: B:9720:0x511e  */
    /* JADX WARN: Removed duplicated region for block: B:9723:0x5133  */
    /* JADX WARN: Removed duplicated region for block: B:9746:0x5171  */
    /* JADX WARN: Removed duplicated region for block: B:9750:0x517c  */
    /* JADX WARN: Removed duplicated region for block: B:9756:0x518c  */
    /* JADX WARN: Removed duplicated region for block: B:9757:0x518e  */
    /* JADX WARN: Removed duplicated region for block: B:9760:0x519d  */
    /* JADX WARN: Removed duplicated region for block: B:9763:0x51a5  */
    /* JADX WARN: Removed duplicated region for block: B:9770:0x51b4  */
    /* JADX WARN: Removed duplicated region for block: B:9773:0x51c2  */
    /* JADX WARN: Removed duplicated region for block: B:9782:0x51d5  */
    /* JADX WARN: Removed duplicated region for block: B:9786:0x51e8  */
    /* JADX WARN: Removed duplicated region for block: B:9798:0x5218  */
    /* JADX WARN: Removed duplicated region for block: B:9802:0x5225  */
    /* JADX WARN: Removed duplicated region for block: B:9806:0x522d  */
    /* JADX WARN: Removed duplicated region for block: B:9810:0x5245  */
    /* JADX WARN: Removed duplicated region for block: B:9813:0x5250  */
    /* JADX WARN: Removed duplicated region for block: B:9814:0x5255  */
    /* JADX WARN: Removed duplicated region for block: B:9825:0x528b  */
    /* JADX WARN: Removed duplicated region for block: B:9826:0x529d  */
    /* JADX WARN: Removed duplicated region for block: B:9834:0x52cf  */
    /* JADX WARN: Removed duplicated region for block: B:9840:0x532d  */
    /* JADX WARN: Removed duplicated region for block: B:9989:0x57b4  */
    /* JADX WARN: Removed duplicated region for block: B:9993:0x57e7  */
    /* JADX WARN: Removed duplicated region for block: B:9994:0x57e9  */
    /* JADX WARN: Removed duplicated region for block: B:9998:0x5802  */
    /* JADX WARN: Type inference failed for: r0v1505, types: [org.telegram.ui.Components.SeekBar] */
    /* JADX WARN: Type inference failed for: r0v818, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v826, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v827, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r0v832, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r10v306, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r10v317 */
    /* JADX WARN: Type inference failed for: r10v505 */
    /* JADX WARN: Type inference failed for: r13v102, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r13v259 */
    /* JADX WARN: Type inference failed for: r13v260 */
    /* JADX WARN: Type inference failed for: r13v270 */
    /* JADX WARN: Type inference failed for: r13v271 */
    /* JADX WARN: Type inference failed for: r19v30 */
    /* JADX WARN: Type inference failed for: r19v31, types: [int] */
    /* JADX WARN: Type inference failed for: r19v32 */
    /* JADX WARN: Type inference failed for: r1v303, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v306, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v308, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v312, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r25v13 */
    /* JADX WARN: Type inference failed for: r25v14 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r25v9 */
    /* JADX WARN: Type inference failed for: r2v1104 */
    /* JADX WARN: Type inference failed for: r2v1105 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v616 */
    /* JADX WARN: Type inference failed for: r2v617, types: [int] */
    /* JADX WARN: Type inference failed for: r2v618, types: [int] */
    /* JADX WARN: Type inference failed for: r3v316 */
    /* JADX WARN: Type inference failed for: r3v317, types: [int] */
    /* JADX WARN: Type inference failed for: r3v352, types: [int] */
    /* JADX WARN: Type inference failed for: r3v536, types: [org.telegram.tgnet.TLRPC$InputStickerSet] */
    /* JADX WARN: Type inference failed for: r4v225 */
    /* JADX WARN: Type inference failed for: r4v226, types: [int] */
    /* JADX WARN: Type inference failed for: r4v227, types: [int] */
    /* JADX WARN: Type inference failed for: r54v18 */
    /* JADX WARN: Type inference failed for: r54v19, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r54v20 */
    /* JADX WARN: Type inference failed for: r56v10 */
    /* JADX WARN: Type inference failed for: r56v11 */
    /* JADX WARN: Type inference failed for: r56v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r56v13 */
    /* JADX WARN: Type inference failed for: r56v8 */
    /* JADX WARN: Type inference failed for: r56v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r59v2 */
    /* JADX WARN: Type inference failed for: r59v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r59v4 */
    /* JADX WARN: Type inference failed for: r6v100, types: [android.graphics.Canvas, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v127, types: [android.graphics.Bitmap, org.telegram.tgnet.TLRPC$Document, java.lang.Object, org.telegram.tgnet.TLRPC$PhotoSize, android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r6v189, types: [java.util.List, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v393, types: [org.telegram.messenger.WebFile, android.text.StaticLayout, java.lang.Long, org.telegram.ui.Components.LoadingDrawable, org.telegram.ui.Components.LinkPath, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v394 */
    /* JADX WARN: Type inference failed for: r6v431 */
    /* JADX WARN: Type inference failed for: r6v433 */
    /* JADX WARN: Type inference failed for: r6v434 */
    /* JADX WARN: Type inference failed for: r6v435 */
    /* JADX WARN: Type inference failed for: r6v436 */
    /* JADX WARN: Type inference failed for: r70v1 */
    /* JADX WARN: Type inference failed for: r70v3 */
    /* JADX WARN: Type inference failed for: r9v382, types: [org.telegram.messenger.ImageReceiver] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageContent(org.telegram.messenger.MessageObject r74, org.telegram.messenger.MessageObject.GroupedMessages r75, boolean r76, boolean r77) {
        /*
            Method dump skipped, instructions count: 25674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.setMessageContent(org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject$GroupedMessages, boolean, boolean):void");
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
                FileLog.m45e(e);
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

    @Override // org.telegram.p048ui.Cells.BaseCell
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
                            @Override // org.telegram.p048ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
                            public void onAnimationEnd() {
                            }

                            {
                                C36546.this = this;
                            }

                            @Override // org.telegram.p048ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
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
                    if (tLRPC$User.f1642id != 0) {
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

    @Override // android.view.View, org.telegram.p048ui.Cells.TextSelectionHelper.SelectableView
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

    @Override // org.telegram.p048ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarPressed() {
        requestDisallowInterceptTouchEvent(true);
    }

    @Override // org.telegram.p048ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarReleased() {
        requestDisallowInterceptTouchEvent(false);
    }

    @Override // org.telegram.p048ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarDrag(float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.audioProgress = f;
        MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        updatePlayingMessageProgress();
    }

    @Override // org.telegram.p048ui.Components.SeekBar.SeekBarDelegate
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
        int i2 = -AndroidUtilities.m50dp((this.hasLinkPreview ? 10 : 0) + 92);
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateBackgroundBoundsInner && ((i = this.documentAttachType) == 3 || i == 7)) {
            int i3 = this.backgroundWidth;
            int i4 = (int) ((i3 - transitionParams.toDeltaLeft) + transitionParams.toDeltaRight);
            int i5 = (int) ((i3 - transitionParams.deltaLeft) + transitionParams.deltaRight);
            if (this.isRoundVideo && !this.drawBackground) {
                i5 = (int) (i5 + (getVideoTranscriptionProgress() * AndroidUtilities.m50dp(8)));
                i4 += AndroidUtilities.m50dp(8);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (transitionParams2.toDeltaLeft == BitmapDescriptorFactory.HUE_RED && transitionParams2.toDeltaRight == BitmapDescriptorFactory.HUE_RED) {
                i4 = i5;
            }
            SeekBarWaveform seekBarWaveform = this.seekBarWaveform;
            if (seekBarWaveform != null) {
                if (transitionParams2.animateUseTranscribeButton) {
                    seekBarWaveform.setSize((i5 + i2) - ((int) (AndroidUtilities.m50dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m50dp(30), i3 + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m50dp(34) : 0), i4 + i2 + (this.useTranscribeButton ? -AndroidUtilities.m50dp(34) : 0));
                } else {
                    seekBarWaveform.setSize((i5 + i2) - ((int) (AndroidUtilities.m50dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m50dp(30), (i3 + i2) - ((int) (AndroidUtilities.m50dp(34) * getUseTranscribeButtonProgress())), (i4 + i2) - ((int) (AndroidUtilities.m50dp(34) * getUseTranscribeButtonProgress())));
                }
            }
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.setSize((i5 - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m50dp(34)))) - AndroidUtilities.m50dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 10 : 0)), AndroidUtilities.m50dp(30));
                return;
            }
            return;
        }
        SeekBarWaveform seekBarWaveform2 = this.seekBarWaveform;
        if (seekBarWaveform2 != null) {
            if (transitionParams.animateUseTranscribeButton) {
                seekBarWaveform2.setSize((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m50dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m50dp(30), this.backgroundWidth + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m50dp(34) : 0), this.backgroundWidth + i2 + (this.useTranscribeButton ? -AndroidUtilities.m50dp(34) : 0));
            } else {
                seekBarWaveform2.setSize((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m50dp(34) * getUseTranscribeButtonProgress())), AndroidUtilities.m50dp(30));
            }
        }
        SeekBar seekBar2 = this.seekBar;
        if (seekBar2 != null) {
            seekBar2.setSize((this.backgroundWidth - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m50dp(34)))) - AndroidUtilities.m50dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 10 : 0)), AndroidUtilities.m50dp(30));
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
            this.widthBeforeNewTimeLine = (i4 - AndroidUtilities.m50dp(94)) - ((int) Math.ceil(Theme.chat_audioTimePaint.measureText("00:00")));
            this.availableTimeWidth = i4 - AndroidUtilities.m50dp(18);
            measureTime(messageObject);
            int m50dp = AndroidUtilities.m50dp(174) + this.timeWidth;
            if (!this.hasLinkPreview) {
                this.backgroundWidth = Math.min(i4, m50dp + ((int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatLongDuration(i3)))));
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
            int m50dp2 = i4 - AndroidUtilities.m50dp(92);
            if (m50dp2 < 0) {
                m50dp2 = AndroidUtilities.m50dp(100);
            }
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicTitle().replace('\n', ' '), Theme.chat_audioTitlePaint, m50dp2 - AndroidUtilities.m50dp(12), TextUtils.TruncateAt.END), Theme.chat_audioTitlePaint, m50dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.songLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                this.songX = -((int) Math.ceil(this.songLayout.getLineLeft(0)));
            }
            StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicAuthor().replace('\n', ' '), Theme.chat_audioPerformerPaint, m50dp2, TextUtils.TruncateAt.END), Theme.chat_audioPerformerPaint, m50dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.performerLayout = staticLayout2;
            if (staticLayout2.getLineCount() > 0) {
                this.performerX = -((int) Math.ceil(this.performerLayout.getLineLeft(0)));
            }
            int m50dp3 = m50dp2 - AndroidUtilities.m50dp(30);
            TextPaint textPaint = Theme.chat_infoPaint;
            int min = Math.min(m50dp3, (int) Math.ceil(textPaint.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min;
            if (min < 0) {
                try {
                    this.infoWidth = AndroidUtilities.m50dp(10);
                } catch (Exception e) {
                    FileLog.m45e(e);
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
            this.widthBeforeNewTimeLine = (this.backgroundWidth - AndroidUtilities.m50dp(86)) - ceil;
            this.availableTimeWidth = this.backgroundWidth - AndroidUtilities.m50dp(28);
            return ceil;
        } else if (MessageObject.isGifDocument(this.documentAttach, messageObject.hasValidGroupId())) {
            this.documentAttachType = 2;
            if (!messageObject.needDrawBluredPreview()) {
                String string = LocaleController.getString("AttachGif", C3316R.string.AttachGif);
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
                i4 += AndroidUtilities.m50dp(30);
            }
            this.documentAttachType = 1;
            String documentFileName = FileLoader.getDocumentFileName(this.documentAttach);
            this.isBackupFile = BackupController.isBackupFileName(documentFileName);
            if (documentFileName.length() == 0) {
                documentFileName = LocaleController.getString("AttachDocument", C3316R.string.AttachDocument);
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
            int m50dp4 = i4 - AndroidUtilities.m50dp(30);
            TextPaint textPaint2 = Theme.chat_infoPaint;
            int min2 = Math.min(m50dp4, (int) Math.ceil(textPaint2.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min2;
            CharSequence ellipsize = TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size) + " " + FileLoader.getDocumentExtension(this.documentAttach), Theme.chat_infoPaint, (float) min2, TextUtils.TruncateAt.END);
            try {
                if (this.infoWidth < 0) {
                    this.infoWidth = AndroidUtilities.m50dp(10);
                }
                this.infoLayout = new StaticLayout(ellipsize, Theme.chat_infoPaint, this.infoWidth + AndroidUtilities.m50dp(6), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } catch (Exception e2) {
                FileLog.m45e(e2);
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
                this.totalHeight += AndroidUtilities.m50dp(14);
            }
        } else if (this.hasLinkPreview || this.hasOldCaptionPreview || this.hasGamePreview || this.hasInvoicePreview || i - i4 < i2 || this.currentMessageObject.hasRtl) {
            z2 = true;
        }
        if (z2) {
            this.totalHeight += AndroidUtilities.m50dp(14);
            this.hasNewLineForTime = true;
            int max = Math.max(i3, i4) + AndroidUtilities.m50dp(31);
            this.backgroundWidth = max;
            this.backgroundWidth = Math.max(max, (this.currentMessageObject.isOutOwner() ? this.timeWidth + AndroidUtilities.m50dp(17) : this.timeWidth) + AndroidUtilities.m50dp(31));
            return;
        }
        int extraTextX = (i3 - getExtraTextX()) - i4;
        if (extraTextX >= 0 && extraTextX <= i2) {
            this.backgroundWidth = ((i3 + i2) - extraTextX) + AndroidUtilities.m50dp(31);
        } else {
            this.backgroundWidth = Math.max(i3, i4 + i2) + AndroidUtilities.m50dp(31);
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
                FileLog.m45e(e);
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
                        FileLog.m45e(e2);
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
            int m50dp = this.backgroundWidth - AndroidUtilities.m50dp(91);
            this.docTitleLayout = new StaticLayout(TextUtils.ellipsize(LocaleController.getString("AttachLiveLocation", C3316R.string.AttachLiveLocation), Theme.chat_locationTitlePaint, m50dp, TextUtils.TruncateAt.END), Theme.chat_locationTitlePaint, m50dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
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
            int m50dp = (groupedMessagePosition.flags & 2) == 0 ? 0 + AndroidUtilities.m50dp(4) : 0;
            return (groupedMessagePosition.flags & 1) == 0 ? m50dp + AndroidUtilities.m50dp(4) : m50dp;
        }
        return 0;
    }

    public void createSelectorDrawable(final int i) {
        int themedColor;
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (this.psaHintPressed) {
            themedColor = getThemedColor(this.currentMessageObject.isOutOwner() ? "chat_outViews" : "chat_inViews");
        } else {
            themedColor = getThemedColor(this.currentMessageObject.isOutOwner() ? "chat_outPreviewInstantText" : "chat_inPreviewInstantText");
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
                                        float m50dp = AndroidUtilities.m50dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i4 + 1] = m50dp;
                                        fArr[i4] = m50dp;
                                    } else if (i3 != 3 || !z) {
                                        if ((ChatMessageCell.this.mediaBackground || ChatMessageCell.this.pinnedBottom) && (i3 == 2 || i3 == 3)) {
                                            float[] fArr2 = ChatMessageCell.radii;
                                            int i5 = i3 * 2;
                                            float[] fArr3 = ChatMessageCell.radii;
                                            int i6 = i5 + 1;
                                            float m50dp2 = AndroidUtilities.m50dp(ChatMessageCell.this.pinnedBottom ? Math.min(5, SharedConfig.bubbleRadius) : SharedConfig.bubbleRadius);
                                            fArr3[i6] = m50dp2;
                                            fArr2[i5] = m50dp2;
                                        }
                                    } else {
                                        float[] fArr4 = ChatMessageCell.radii;
                                        int i7 = i3 * 2;
                                        float m50dp3 = AndroidUtilities.m50dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i7 + 1] = m50dp3;
                                        fArr4[i7] = m50dp3;
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
                                    this.path.moveTo(this.rect.left + AndroidUtilities.m50dp(6), this.rect.top);
                                    this.path.lineTo(this.rect.left + AndroidUtilities.m50dp(6), (this.rect.bottom - AndroidUtilities.m50dp(6)) - AndroidUtilities.m50dp(5));
                                    RectF rectF = AndroidUtilities.rectTmp;
                                    rectF.set(this.rect.left + AndroidUtilities.m50dp(-7), this.rect.bottom - AndroidUtilities.m50dp(23), this.rect.left + AndroidUtilities.m50dp(6), this.rect.bottom);
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
                        float m50dp4 = ChatMessageCell.this.selectorDrawableMaskType[i] == 0 ? AndroidUtilities.m50dp(6) : 0.0f;
                        if (ChatMessageCell.this.selectorDrawableMaskType[i] == 0) {
                            f = AndroidUtilities.m50dp(6);
                        }
                        canvas.drawRoundRect(rectF4, m50dp4, f, paint);
                        return;
                    }
                    canvas.drawCircle(this.rect.centerX(), this.rect.centerY(), AndroidUtilities.m50dp(ChatMessageCell.this.selectorDrawableMaskType[i] == 3 ? 16 : 20), paint);
                }
            };
            int[][] iArr = {StateSet.WILD_CARD};
            int[] iArr2 = new int[1];
            iArr2[0] = getThemedColor(this.currentMessageObject.isOutOwner() ? "chat_outPreviewInstantText" : "chat_inPreviewInstantText") & 436207615;
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
            this.instantWidth = AndroidUtilities.m50dp(33);
            int i = this.drawInstantViewType;
            if (i == 12) {
                string = LocaleController.getString("OpenChannelPost", C3316R.string.OpenChannelPost);
            } else if (i == 1) {
                string = LocaleController.getString("OpenChannel", C3316R.string.OpenChannel);
            } else if (i == 13) {
                string = LocaleController.getString("SendMessage", C3316R.string.SendMessage).toUpperCase();
            } else if (i == 10) {
                string = LocaleController.getString("OpenBot", C3316R.string.OpenBot);
            } else if (i == 2) {
                string = LocaleController.getString("OpenGroup", C3316R.string.OpenGroup);
            } else if (i == 3) {
                string = LocaleController.getString("OpenMessage", C3316R.string.OpenMessage);
            } else if (i == 5) {
                string = LocaleController.getString("ViewContact", C3316R.string.ViewContact);
            } else if (i == 6) {
                string = LocaleController.getString("OpenBackground", C3316R.string.OpenBackground);
            } else if (i == 7) {
                string = LocaleController.getString("OpenTheme", C3316R.string.OpenTheme);
            } else if (i == 8) {
                if (this.pollVoted || this.pollClosed) {
                    string = LocaleController.getString("PollViewResults", C3316R.string.PollViewResults);
                } else {
                    string = LocaleController.getString("PollSubmitVotes", C3316R.string.PollSubmitVotes);
                }
            } else if (i == 9 || i == 11) {
                TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) MessageObject.getMedia(this.currentMessageObject.messageOwner).webpage;
                if (tLRPC$TL_webPage != null && tLRPC$TL_webPage.url.contains("voicechat=")) {
                    string = LocaleController.getString("VoipGroupJoinAsSpeaker", C3316R.string.VoipGroupJoinAsSpeaker);
                } else {
                    string = LocaleController.getString("VoipGroupJoinAsLinstener", C3316R.string.VoipGroupJoinAsLinstener);
                }
            } else {
                string = LocaleController.getString("InstantView", C3316R.string.InstantView);
            }
            if (this.currentMessageObject.isSponsored() && this.backgroundWidth < (measureText = (int) (Theme.chat_instantViewPaint.measureText(string) + AndroidUtilities.m50dp(75)))) {
                this.backgroundWidth = measureText;
            }
            int m50dp = this.backgroundWidth - AndroidUtilities.m50dp(75);
            this.instantViewLayout = new StaticLayout(TextUtils.ellipsize(string, Theme.chat_instantViewPaint, m50dp, TextUtils.TruncateAt.END), Theme.chat_instantViewPaint, m50dp + AndroidUtilities.m50dp(2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (this.drawInstantViewType == 8) {
                this.instantWidth = this.backgroundWidth - AndroidUtilities.m50dp(13);
            } else {
                this.instantWidth = this.backgroundWidth - AndroidUtilities.m50dp(34);
            }
            int m50dp2 = this.totalHeight + AndroidUtilities.m50dp(46);
            this.totalHeight = m50dp2;
            if (this.currentMessageObject.type == 12) {
                this.totalHeight = m50dp2 + AndroidUtilities.m50dp(14);
            }
            if (this.currentMessageObject.isSponsored() && this.hasNewLineForTime) {
                this.totalHeight += AndroidUtilities.m50dp(16);
            }
            StaticLayout staticLayout = this.instantViewLayout;
            if (staticLayout == null || staticLayout.getLineCount() <= 0) {
                return;
            }
            this.instantTextX = (((int) (this.instantWidth - Math.ceil(this.instantViewLayout.getLineWidth(0)))) / 2) + (this.drawInstantViewType == 0 ? AndroidUtilities.m50dp(8) : 0);
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
            if (i < AndroidUtilities.m50dp(320)) {
                i = AndroidUtilities.m50dp(320);
            }
            return parentWidth - i;
        }
        return parentWidth;
    }

    private int getExtraTextX() {
        int i = SharedConfig.bubbleRadius;
        if (i >= 15) {
            return AndroidUtilities.m50dp(2);
        }
        if (i >= 11) {
            return AndroidUtilities.m50dp(1);
        }
        return 0;
    }

    private int getExtraTimeX() {
        int i;
        if (!this.currentMessageObject.isOutOwner() && ((!this.mediaBackground || this.captionLayout != null) && (i = SharedConfig.bubbleRadius) > 11)) {
            return AndroidUtilities.m51dp((i - 11) / 1.5f);
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
        int m50dp;
        int m50dp2;
        int i7;
        int m50dp3;
        int i8;
        int i9;
        int m50dp4;
        int m50dp5;
        int m50dp6;
        int i10;
        int m50dp7;
        int i11;
        int i12;
        int m50dp8;
        int m50dp9;
        if (this.currentMessageObject == null) {
            return;
        }
        int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
        if (this.lastSize != measuredHeight || !this.wasLayout) {
            this.layoutWidth = getMeasuredWidth();
            this.layoutHeight = getMeasuredHeight() - this.substractBackgroundHeight;
            if (this.timeTextWidth < 0) {
                this.timeTextWidth = AndroidUtilities.m50dp(10);
            }
            this.timeLayout = new StaticLayout(this.currentTimeString, Theme.chat_timePaint, this.timeTextWidth + AndroidUtilities.m50dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            if (this.mediaBackground) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m51dp(42.0f);
                } else {
                    this.timeX = (this.backgroundWidth - AndroidUtilities.m50dp(4)) - this.timeWidth;
                    if (this.currentMessageObject.isAnyKindOfSticker()) {
                        this.timeX = Math.max(AndroidUtilities.m50dp(26), this.timeX);
                    }
                    if (this.isAvatarVisible) {
                        this.timeX += AndroidUtilities.m50dp(48);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                    if (groupedMessagePosition != null && (i5 = groupedMessagePosition.leftSpanOffset) != 0) {
                        this.timeX += (int) Math.ceil((i5 / 1000.0f) * getGroupPhotosWidth());
                    }
                    if (this.captionLayout != null && this.currentPosition != null) {
                        this.timeX += AndroidUtilities.m50dp(4);
                    }
                }
                if (SharedConfig.bubbleRadius >= 10 && this.captionLayout == null && (i6 = this.documentAttachType) != 7 && i6 != 6) {
                    this.timeX -= AndroidUtilities.m50dp(2);
                }
            } else if (this.currentMessageObject.isOutOwner()) {
                this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m51dp(38.5f);
            } else {
                this.timeX = (this.backgroundWidth - AndroidUtilities.m50dp(9)) - this.timeWidth;
                if (this.currentMessageObject.isAnyKindOfSticker()) {
                    this.timeX = Math.max(0, this.timeX);
                }
                if (this.isAvatarVisible) {
                    this.timeX += AndroidUtilities.m50dp(48);
                }
                if (shouldDrawTimeOnMedia()) {
                    this.timeX -= AndroidUtilities.m50dp(7);
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
                this.avatarImage.setImageCoords(AndroidUtilities.m50dp(6), this.avatarImage.getImageY(), AndroidUtilities.m50dp(42), AndroidUtilities.m50dp(42));
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
            this.textY = AndroidUtilities.m50dp(10) + this.namesOffset;
        }
        if (this.isRoundVideo) {
            updatePlayingMessageProgress();
        }
        int i14 = this.documentAttachType;
        if (i14 == 3 || i14 == 7) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(57);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(67);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m50dp(114);
                this.buttonX = AndroidUtilities.m50dp(71);
                this.timeAudioX = AndroidUtilities.m50dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m50dp(66);
                this.buttonX = AndroidUtilities.m50dp(23);
                this.timeAudioX = AndroidUtilities.m50dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m50dp(10);
                this.buttonX += AndroidUtilities.m50dp(10);
                this.timeAudioX += AndroidUtilities.m50dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m50dp(13) + this.namesOffset + this.mediaOffsetY;
            int m50dp10 = AndroidUtilities.m50dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m50dp10;
            RadialProgress2 radialProgress2 = this.radialProgress;
            int i15 = this.buttonX;
            radialProgress2.setProgressRect(i15, m50dp10, AndroidUtilities.m50dp(44) + i15, this.buttonY + AndroidUtilities.m50dp(44));
            updatePlayingMessageProgress();
            if (this.documentAttachType == 7) {
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject.type == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                    if (this.hasGamePreview) {
                        i7 = this.unmovedTextX - AndroidUtilities.m50dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i9 = this.unmovedTextX;
                            m50dp4 = AndroidUtilities.m50dp(1);
                        } else {
                            i9 = this.unmovedTextX;
                            m50dp4 = AndroidUtilities.m50dp(1);
                        }
                        i7 = i9 + m50dp4;
                    }
                    if (this.isSmallImage) {
                        m50dp = i7 + this.backgroundWidth;
                        m50dp2 = AndroidUtilities.m50dp(81);
                        m50dp -= m50dp2;
                    } else {
                        m50dp3 = this.hasInvoicePreview ? -AndroidUtilities.m51dp(6.3f) : AndroidUtilities.m50dp(10);
                        m50dp = i7 + m50dp3;
                    }
                } else {
                    if (messageObject.isOutOwner()) {
                        if (this.mediaBackground) {
                            m50dp = this.layoutWidth - this.backgroundWidth;
                            m50dp2 = AndroidUtilities.m50dp(3);
                        } else {
                            i7 = this.layoutWidth - this.backgroundWidth;
                            m50dp3 = AndroidUtilities.m50dp(6);
                            m50dp = i7 + m50dp3;
                        }
                    } else {
                        if (this.isChat && this.isAvatarVisible && (!this.isPlayingRound || this.currentMessageObject.isVoiceTranscriptionOpen())) {
                            m50dp = AndroidUtilities.m50dp(63);
                        } else {
                            m50dp = AndroidUtilities.m50dp(15);
                        }
                        MessageObject.GroupedMessagePosition groupedMessagePosition2 = this.currentPosition;
                        if (groupedMessagePosition2 != null && !groupedMessagePosition2.edge) {
                            m50dp2 = AndroidUtilities.m50dp(10);
                        }
                    }
                    m50dp -= m50dp2;
                }
                MessageObject.GroupedMessagePosition groupedMessagePosition3 = this.currentPosition;
                if (groupedMessagePosition3 != null) {
                    if ((groupedMessagePosition3.flags & 1) == 0) {
                        m50dp -= AndroidUtilities.m50dp(2);
                    }
                    if (this.currentPosition.leftSpanOffset != 0) {
                        m50dp += (int) Math.ceil((i8 / 1000.0f) * getGroupPhotosWidth());
                    }
                }
                if (this.currentMessageObject.type != 0) {
                    m50dp -= AndroidUtilities.m50dp(2);
                }
                if (this.currentMessageObject.isVoiceTranscriptionOpen()) {
                    m50dp += AndroidUtilities.m50dp(10);
                }
                TransitionParams transitionParams = this.transitionParams;
                if (!transitionParams.imageChangeBoundsTransition || transitionParams.updatePhotoImageX) {
                    transitionParams.updatePhotoImageX = false;
                    ImageReceiver imageReceiver = this.photoImage;
                    imageReceiver.setImageCoords(m50dp, imageReceiver.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                }
            }
        } else if (i14 == 5) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(56);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(67);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m50dp(113);
                this.buttonX = AndroidUtilities.m50dp(71);
                this.timeAudioX = AndroidUtilities.m50dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m50dp(65);
                this.buttonX = AndroidUtilities.m50dp(23);
                this.timeAudioX = AndroidUtilities.m50dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m50dp(10);
                this.buttonX += AndroidUtilities.m50dp(10);
                this.timeAudioX += AndroidUtilities.m50dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m50dp(29) + this.namesOffset + this.mediaOffsetY;
            int m50dp11 = AndroidUtilities.m50dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m50dp11;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i16 = this.buttonX;
            radialProgress22.setProgressRect(i16, m50dp11, AndroidUtilities.m50dp(44) + i16, this.buttonY + AndroidUtilities.m50dp(44));
            updatePlayingMessageProgress();
        } else if (i14 == 1 && !this.drawPhotoImage) {
            if (this.currentMessageObject.isOutOwner()) {
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(14);
            } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                this.buttonX = AndroidUtilities.m50dp(71);
            } else {
                this.buttonX = AndroidUtilities.m50dp(23);
            }
            if (this.hasLinkPreview) {
                this.buttonX += AndroidUtilities.m50dp(10);
            }
            int m50dp12 = AndroidUtilities.m50dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m50dp12;
            RadialProgress2 radialProgress23 = this.radialProgress;
            int i17 = this.buttonX;
            radialProgress23.setProgressRect(i17, m50dp12, AndroidUtilities.m50dp(44) + i17, this.buttonY + AndroidUtilities.m50dp(44));
            this.photoImage.setImageCoords(this.buttonX - AndroidUtilities.m50dp(10), this.buttonY - AndroidUtilities.m50dp(10), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
        } else {
            MessageObject messageObject2 = this.currentMessageObject;
            int i18 = messageObject2.type;
            if (i18 == 12) {
                if (messageObject2.isOutOwner()) {
                    m50dp9 = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m50dp(14);
                } else if (this.isChat && !this.isThreadPost && this.currentMessageObject.needDrawAvatar()) {
                    m50dp9 = AndroidUtilities.m50dp(72);
                } else {
                    m50dp9 = AndroidUtilities.m50dp(23);
                }
                this.photoImage.setImageCoords(m50dp9, AndroidUtilities.m50dp(13) + this.namesOffset, AndroidUtilities.m50dp(44), AndroidUtilities.m50dp(44));
                return;
            }
            if (i18 == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                if (this.hasGamePreview) {
                    i10 = this.unmovedTextX - AndroidUtilities.m50dp(10);
                } else {
                    if (this.hasInvoicePreview) {
                        i12 = this.unmovedTextX;
                        m50dp8 = AndroidUtilities.m50dp(1);
                    } else {
                        i12 = this.unmovedTextX;
                        m50dp8 = AndroidUtilities.m50dp(1);
                    }
                    i10 = i12 + m50dp8;
                }
                if (this.isSmallImage) {
                    m50dp5 = i10 + this.backgroundWidth;
                    m50dp6 = AndroidUtilities.m50dp(81);
                    m50dp5 -= m50dp6;
                } else {
                    m50dp7 = this.hasInvoicePreview ? -AndroidUtilities.m51dp(6.3f) : AndroidUtilities.m50dp(10);
                    m50dp5 = i10 + m50dp7;
                }
            } else {
                if (messageObject2.isOutOwner()) {
                    if (this.mediaBackground) {
                        m50dp5 = this.layoutWidth - this.backgroundWidth;
                        m50dp6 = AndroidUtilities.m50dp(3);
                    } else {
                        i10 = this.layoutWidth - this.backgroundWidth;
                        m50dp7 = AndroidUtilities.m50dp(6);
                        m50dp5 = i10 + m50dp7;
                    }
                } else {
                    if (this.isChat && this.isAvatarVisible && !this.isPlayingRound) {
                        m50dp5 = AndroidUtilities.m50dp(63);
                    } else {
                        m50dp5 = AndroidUtilities.m50dp(15);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition4 = this.currentPosition;
                    if (groupedMessagePosition4 != null && !groupedMessagePosition4.edge) {
                        m50dp6 = AndroidUtilities.m50dp(10);
                    }
                }
                m50dp5 -= m50dp6;
            }
            MessageObject.GroupedMessagePosition groupedMessagePosition5 = this.currentPosition;
            if (groupedMessagePosition5 != null) {
                if ((groupedMessagePosition5.flags & 1) == 0) {
                    m50dp5 -= AndroidUtilities.m50dp(2);
                }
                if (this.currentPosition.leftSpanOffset != 0) {
                    m50dp5 += (int) Math.ceil((i11 / 1000.0f) * getGroupPhotosWidth());
                }
            }
            if (this.currentMessageObject.type != 0) {
                m50dp5 -= AndroidUtilities.m50dp(2);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (!transitionParams2.imageChangeBoundsTransition || transitionParams2.updatePhotoImageX) {
                transitionParams2.updatePhotoImageX = false;
                ImageReceiver imageReceiver2 = this.photoImage;
                imageReceiver2.setImageCoords(m50dp5, imageReceiver2.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
            }
            this.buttonX = (int) (m50dp5 + ((this.photoImage.getImageWidth() - AndroidUtilities.m50dp(48)) / 2.0f));
            int imageY = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m50dp(48)) / 2.0f));
            this.buttonY = imageY;
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i19 = this.buttonX;
            radialProgress24.setProgressRect(i19, imageY, AndroidUtilities.m50dp(48) + i19, this.buttonY + AndroidUtilities.m50dp(48));
            this.deleteProgressRect.set(this.buttonX + AndroidUtilities.m50dp(5), this.buttonY + AndroidUtilities.m50dp(5), this.buttonX + AndroidUtilities.m50dp(43), this.buttonY + AndroidUtilities.m50dp(43));
            int i20 = this.documentAttachType;
            if (i20 == 4 || i20 == 2) {
                this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m50dp(8));
                int imageY2 = (int) (this.photoImage.getImageY() + AndroidUtilities.m50dp(8));
                this.videoButtonY = imageY2;
                RadialProgress2 radialProgress25 = this.videoRadialProgress;
                int i21 = this.videoButtonX;
                radialProgress25.setProgressRect(i21, imageY2, AndroidUtilities.m50dp(24) + i21, this.videoButtonY + AndroidUtilities.m50dp(24));
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawRoundProgress(android.graphics.Canvas):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.updatePollAnimations(long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:1238:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:1244:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:1362:0x0935  */
    /* JADX WARN: Removed duplicated region for block: B:1367:0x097e  */
    /* JADX WARN: Removed duplicated region for block: B:1370:0x0985  */
    /* JADX WARN: Removed duplicated region for block: B:1380:0x0a11  */
    /* JADX WARN: Removed duplicated region for block: B:1381:0x0a17  */
    /* JADX WARN: Removed duplicated region for block: B:1389:0x0a31  */
    /* JADX WARN: Removed duplicated region for block: B:1390:0x0a34  */
    /* JADX WARN: Removed duplicated region for block: B:1393:0x0a62  */
    /* JADX WARN: Removed duplicated region for block: B:1625:0x0f8b  */
    /* JADX WARN: Removed duplicated region for block: B:1626:0x0f8e  */
    /* JADX WARN: Removed duplicated region for block: B:1629:0x0fa8  */
    /* JADX WARN: Removed duplicated region for block: B:1630:0x0fab  */
    /* JADX WARN: Removed duplicated region for block: B:1633:0x0fd0  */
    /* JADX WARN: Removed duplicated region for block: B:1634:0x0fd8  */
    /* JADX WARN: Removed duplicated region for block: B:1637:0x0fdf  */
    /* JADX WARN: Removed duplicated region for block: B:1638:0x1008  */
    /* JADX WARN: Removed duplicated region for block: B:1641:0x101e  */
    /* JADX WARN: Removed duplicated region for block: B:1654:0x1077  */
    /* JADX WARN: Removed duplicated region for block: B:1657:0x1080  */
    /* JADX WARN: Removed duplicated region for block: B:1658:0x108c  */
    /* JADX WARN: Removed duplicated region for block: B:1661:0x109b  */
    /* JADX WARN: Removed duplicated region for block: B:1665:0x10ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawContent(android.graphics.Canvas r39) {
        /*
            Method dump skipped, instructions count: 5461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawContent(android.graphics.Canvas):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.updateReactionLayoutPosition():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:724:0x0afe  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x0b16  */
    /* JADX WARN: Removed duplicated region for block: B:735:0x0b66  */
    /* JADX WARN: Removed duplicated region for block: B:738:0x0b90  */
    /* JADX WARN: Removed duplicated region for block: B:740:0x0bad  */
    /* JADX WARN: Removed duplicated region for block: B:743:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawLinkPreview(android.graphics.Canvas r36, float r37) {
        /*
            Method dump skipped, instructions count: 2993
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawLinkPreview(android.graphics.Canvas, float):void");
    }

    public boolean shouldDrawMenuDrawable() {
        return this.currentMessagesGroup == null || (this.currentPosition.flags & 4) != 0;
    }

    private void drawBotButtons(Canvas canvas, ArrayList<BotButton> arrayList, int i) {
        int m50dp;
        Drawable themedDrawable;
        ChatMessageCellDelegate chatMessageCellDelegate;
        if (this.currentMessageObject.isOutOwner()) {
            m50dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m50dp(10);
        } else {
            m50dp = this.backgroundDrawableLeft + AndroidUtilities.m50dp((this.mediaBackground || this.drawPinnedBottom) ? 1 : 7);
        }
        float m50dp2 = (this.layoutHeight - AndroidUtilities.m50dp(2)) + this.transitionParams.deltaBottom;
        float f = 0.0f;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            BotButton botButton = arrayList.get(i2);
            float f2 = botButton.f1667y + botButton.height;
            if (f2 > f) {
                f = f2;
            }
        }
        this.rect.set(BitmapDescriptorFactory.HUE_RED, m50dp2, getMeasuredWidth(), f + m50dp2);
        if (i != 255) {
            canvas.saveLayerAlpha(this.rect, i, 31);
        } else {
            canvas.save();
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            BotButton botButton2 = arrayList.get(i3);
            float m50dp3 = ((botButton2.f1667y + this.layoutHeight) - AndroidUtilities.m50dp(2)) + this.transitionParams.deltaBottom;
            float pressScale = botButton2.getPressScale();
            this.rect.set(botButton2.f1666x + m50dp, m50dp3, botButton2.f1666x + m50dp + botButton2.width, botButton2.height + m50dp3);
            canvas.save();
            if (pressScale != 1.0f) {
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            }
            applyServiceShaderMatrix();
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), getThemedPaint("paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(6), AndroidUtilities.m50dp(6), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            boolean z = (((botButton2.button instanceof TLRPC$TL_keyboardButtonCallback) || (botButton2.button instanceof TLRPC$TL_keyboardButtonGame) || (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) || (botButton2.button instanceof TLRPC$TL_keyboardButtonUrlAuth)) && SendMessagesHelper.getInstance(this.currentAccount).isSendingCallback(this.currentMessageObject, botButton2.button)) || ((botButton2.button instanceof TLRPC$TL_keyboardButtonRequestGeoLocation) && SendMessagesHelper.getInstance(this.currentAccount).isSendingCurrentLocation(this.currentMessageObject, botButton2.button)) || ((botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) && (chatMessageCellDelegate = this.delegate) != null && chatMessageCellDelegate.isProgressLoading(this, 3) && this.delegate.getProgressLoadingBotButtonUrl(this) == botButton2.button.url);
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
                botButton2.loadingDrawable.setBounds(this.rect);
                botButton2.loadingDrawable.setColors(Theme.multAlpha(Theme.getColor("chat_serviceBackgroundSelector", this.resourcesProvider), 1.0f), Theme.multAlpha(Theme.getColor("chat_serviceBackgroundSelector", this.resourcesProvider), 2.5f), Theme.multAlpha(Theme.getColor("chat_serviceBackgroundSelector", this.resourcesProvider), 3.0f), Theme.multAlpha(Theme.getColor("chat_serviceBackgroundSelector", this.resourcesProvider), 10.0f));
                botButton2.loadingDrawable.setAlpha(255);
                botButton2.loadingDrawable.draw(canvas);
                invalidateOutbounds();
            }
            if (botButton2.selectorDrawable != null) {
                int i4 = (int) m50dp3;
                botButton2.selectorDrawable.setBounds(botButton2.f1666x + m50dp, i4, botButton2.f1666x + m50dp + botButton2.width, botButton2.height + i4);
                botButton2.selectorDrawable.setAlpha(255);
                botButton2.selectorDrawable.draw(canvas);
            }
            canvas.save();
            canvas.translate(botButton2.f1666x + m50dp + AndroidUtilities.m50dp(5), ((AndroidUtilities.m50dp(44) - botButton2.title.getLineBottom(botButton2.title.getLineCount() - 1)) / 2) + m50dp3);
            botButton2.title.draw(canvas);
            canvas.restore();
            if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonWebView)) {
                if (botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) {
                    if (botButton2.isInviteButton) {
                        themedDrawable = getThemedDrawable("drawable_botInvite");
                    } else {
                        themedDrawable = getThemedDrawable("drawableBotLink");
                    }
                    BaseCell.setDrawableBounds(themedDrawable, (((botButton2.f1666x + botButton2.width) - AndroidUtilities.m50dp(3)) - themedDrawable.getIntrinsicWidth()) + m50dp, m50dp3 + AndroidUtilities.m50dp(3));
                    themedDrawable.draw(canvas);
                } else if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonSwitchInline) && !(botButton2.button instanceof TLRPC$TL_keyboardButtonRequestPeer)) {
                    if (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) {
                        BaseCell.setDrawableBounds(Theme.chat_botCardDrawable, (((botButton2.f1666x + botButton2.width) - AndroidUtilities.m50dp(5)) - Theme.chat_botCardDrawable.getIntrinsicWidth()) + m50dp, m50dp3 + AndroidUtilities.m50dp(4));
                        Theme.chat_botCardDrawable.draw(canvas);
                    }
                } else {
                    Drawable themedDrawable2 = getThemedDrawable("drawableBotInline");
                    BaseCell.setDrawableBounds(themedDrawable2, (((botButton2.f1666x + botButton2.width) - AndroidUtilities.m50dp(3)) - themedDrawable2.getIntrinsicWidth()) + m50dp, m50dp3 + AndroidUtilities.m50dp(3));
                    themedDrawable2.draw(canvas);
                }
            } else {
                Drawable themedDrawable3 = getThemedDrawable("drawableBotWebView");
                BaseCell.setDrawableBounds(themedDrawable3, (((botButton2.f1666x + botButton2.width) - AndroidUtilities.m50dp(3)) - themedDrawable3.getIntrinsicWidth()) + m50dp, m50dp3 + AndroidUtilities.m50dp(3));
                themedDrawable3.draw(canvas);
            }
            canvas.restore();
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawMessageText(android.graphics.Canvas, java.util.ArrayList, float, boolean, float, boolean):void");
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
    public org.telegram.p048ui.Components.AnimatedEmojiSpan[] getAnimatedEmojiSpans() {
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
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r4 = org.telegram.p048ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r0 = r3.getSpans(r2, r0, r4)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r0 = (org.telegram.p048ui.Components.AnimatedEmojiSpan[]) r0
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
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r5 = org.telegram.p048ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r3 = r4.getSpans(r2, r3, r5)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r3 = (org.telegram.p048ui.Components.AnimatedEmojiSpan[]) r3
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
            org.telegram.ui.Components.AnimatedEmojiSpan[] r1 = new org.telegram.p048ui.Components.AnimatedEmojiSpan[r1]
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.getAnimatedEmojiSpans():org.telegram.ui.Components.AnimatedEmojiSpan[]");
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
            this.captionX = imageX + AndroidUtilities.m50dp(5) + this.captionOffsetX;
            this.captionY = imageY + imageHeight + AndroidUtilities.m50dp(6);
        } else {
            int i2 = 17;
            if (this.hasOldCaptionPreview) {
                this.captionX = this.backgroundDrawableLeft + AndroidUtilities.m50dp(messageObject.isOutOwner() ? 11 : 17) + this.captionOffsetX;
                float m50dp = (((this.totalHeight - this.captionHeight) - AndroidUtilities.m50dp(this.drawPinnedTop ? 9 : 10)) - this.linkPreviewHeight) - AndroidUtilities.m50dp(17);
                this.captionY = m50dp;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m50dp - AndroidUtilities.m51dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
                }
            } else {
                if (this.isRoundVideo) {
                    this.captionX = getBackgroundDrawableLeft() + AndroidUtilities.m50dp((this.currentMessageObject.isOutOwner() ? 0 : 6) + 11);
                } else {
                    int i3 = this.backgroundDrawableLeft;
                    if (messageObject.isOutOwner() || this.mediaBackground || this.drawPinnedBottom) {
                        i2 = 11;
                    }
                    this.captionX = i3 + AndroidUtilities.m50dp(i2) + this.captionOffsetX;
                }
                float m50dp2 = (this.totalHeight - this.captionHeight) - AndroidUtilities.m50dp(this.drawPinnedTop ? 9 : 10);
                this.captionY = m50dp2;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m50dp2 - AndroidUtilities.m51dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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

    /* JADX WARN: Code restructure failed: missing block: B:189:0x00bf, code lost:
        if (r1.attachPathExists == false) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getIconForCurrentState() {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.getIconForCurrentState():int");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.getMaxNameWidth():int");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.updateButtonState(boolean, boolean, boolean):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.onSuccessDownload(java.lang.String):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.didSetImage(org.telegram.messenger.ImageReceiver, boolean, boolean, boolean):void");
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

    /* JADX WARN: Removed duplicated region for block: B:66:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createLoadingProgressLayout(long r17, long r19) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.createLoadingProgressLayout(long, long):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.measureTime(org.telegram.messenger.MessageObject):void");
    }

    private boolean shouldDrawSelectionOverlay() {
        return hasSelectionOverlay() && ((isPressed() && this.isCheckPressed) || ((!this.isCheckPressed && this.isPressed) || this.isHighlighted || this.isHighlightedAnimated)) && !textIsSelectionMode() && ((this.currentMessagesGroup == null || this.drawSelectionBackground) && this.currentBackgroundDrawable != null);
    }

    private Integer getSelectionOverlayColor() {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider == null) {
            return null;
        }
        MessageObject messageObject = this.currentMessageObject;
        return resourcesProvider.getColor((messageObject == null || !messageObject.isOut()) ? "chat_inBubbleSelectedOverlay" : "chat_outBubbleSelectedOverlay");
    }

    private boolean hasSelectionOverlay() {
        Integer selectionOverlayColor = getSelectionOverlayColor();
        return (selectionOverlayColor == null || selectionOverlayColor.intValue() == -65536) ? false : true;
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

    /* JADX WARN: Can't wrap try/catch for region: R(29:30|(1:32)|33|(1:545)(2:39|(24:41|42|43|(1:45)(1:(1:513)(1:514))|46|(1:48)(1:511)|49|(7:51|(1:53)|54|(1:56)(3:62|(1:64)(1:66)|65)|57|(1:59)(1:61)|60)|67|68|69|70|71|(3:73|(1:75)|76)(1:506)|77|(1:79)|(1:81)(1:505)|82|(2:84|(1:86))|87|(1:89)(2:499|(1:501)(2:502|(1:504)))|90|(1:92)|93))|515|(25:522|(4:535|(1:537)(1:544)|538|(3:540|(1:542)|543))|526|43|(0)(0)|46|(0)(0)|49|(0)|67|68|69|70|71|(0)(0)|77|(0)|(0)(0)|82|(0)|87|(0)(0)|90|(0)|93)(1:521)|42|43|(0)(0)|46|(0)(0)|49|(0)|67|68|69|70|71|(0)(0)|77|(0)|(0)(0)|82|(0)|87|(0)(0)|90|(0)|93) */
    /* JADX WARN: Code restructure failed: missing block: B:688:0x03bc, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:689:0x03bd, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:849:0x07e2, code lost:
        if ((r0.action instanceof org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate) == false) goto L481;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:646:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:647:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:652:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:656:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:676:0x0340 A[Catch: Exception -> 0x03bc, TryCatch #1 {Exception -> 0x03bc, blocks: (B:674:0x031e, B:676:0x0340, B:678:0x0357, B:679:0x036b, B:681:0x037a, B:683:0x037e, B:685:0x038b, B:686:0x03b8, B:680:0x0375), top: B:1110:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:680:0x0375 A[Catch: Exception -> 0x03bc, TryCatch #1 {Exception -> 0x03bc, blocks: (B:674:0x031e, B:676:0x0340, B:678:0x0357, B:679:0x036b, B:681:0x037a, B:683:0x037e, B:685:0x038b, B:686:0x03b8, B:680:0x0375), top: B:1110:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:683:0x037e A[Catch: Exception -> 0x03bc, TryCatch #1 {Exception -> 0x03bc, blocks: (B:674:0x031e, B:676:0x0340, B:678:0x0357, B:679:0x036b, B:681:0x037a, B:683:0x037e, B:685:0x038b, B:686:0x03b8, B:680:0x0375), top: B:1110:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:685:0x038b A[Catch: Exception -> 0x03bc, TryCatch #1 {Exception -> 0x03bc, blocks: (B:674:0x031e, B:676:0x0340, B:678:0x0357, B:679:0x036b, B:681:0x037a, B:683:0x037e, B:685:0x038b, B:686:0x03b8, B:680:0x0375), top: B:1110:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:686:0x03b8 A[Catch: Exception -> 0x03bc, TRY_LEAVE, TryCatch #1 {Exception -> 0x03bc, blocks: (B:674:0x031e, B:676:0x0340, B:678:0x0357, B:679:0x036b, B:681:0x037a, B:683:0x037e, B:685:0x038b, B:686:0x03b8, B:680:0x0375), top: B:1110:0x031e }] */
    /* JADX WARN: Removed duplicated region for block: B:692:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:697:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:698:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:706:0x040a  */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v150 */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v141 */
    /* JADX WARN: Type inference failed for: r4v2, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageObjectInternal(org.telegram.messenger.MessageObject r42) {
        /*
            Method dump skipped, instructions count: 3803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.setMessageObjectInternal(org.telegram.messenger.MessageObject):void");
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
                    return ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3316R.C3318drawable.msg_premium_liststar).mutate();
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
            return string == null ? LocaleController.getString("PsaMessageDefault", C3316R.string.PsaMessageDefault) : string;
        }
        return LocaleController.getString("ForwardedMessage", C3316R.string.ForwardedMessage);
    }

    public int getExtraInsetHeight() {
        int i = this.addedCaptionHeight;
        if (this.drawCommentButton) {
            i += AndroidUtilities.m51dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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

    /* JADX WARN: Removed duplicated region for block: B:60:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setBackgroundTopY(boolean r14) {
        /*
            r13 = this;
            r0 = 0
            r1 = r0
        L2:
            r2 = 2
            if (r1 >= r2) goto L6f
            r2 = 1
            if (r1 != r2) goto Lb
            if (r14 != 0) goto Lb
            return
        Lb:
            if (r1 != 0) goto L10
            org.telegram.ui.ActionBar.Theme$MessageDrawable r3 = r13.currentBackgroundDrawable
            goto L12
        L10:
            org.telegram.ui.ActionBar.Theme$MessageDrawable r3 = r13.currentBackgroundSelectedDrawable
        L12:
            r4 = r3
            if (r4 != 0) goto L16
            goto L6c
        L16:
            int r3 = r13.parentWidth
            int r5 = r13.parentHeight
            if (r5 != 0) goto L3d
            int r3 = r13.getParentWidth()
            android.graphics.Point r5 = org.telegram.messenger.AndroidUtilities.displaySize
            int r5 = r5.y
            android.view.ViewParent r6 = r13.getParent()
            boolean r6 = r6 instanceof android.view.View
            if (r6 == 0) goto L3d
            android.view.ViewParent r3 = r13.getParent()
            android.view.View r3 = (android.view.View) r3
            int r5 = r3.getMeasuredWidth()
            int r3 = r3.getMeasuredHeight()
            r7 = r3
            r6 = r5
            goto L3f
        L3d:
            r6 = r3
            r7 = r5
        L3f:
            if (r14 == 0) goto L46
            float r3 = r13.getY()
            goto L4b
        L46:
            int r3 = r13.getTop()
            float r3 = (float) r3
        L4b:
            float r5 = r13.parentViewTopOffset
            float r3 = r3 + r5
            int r3 = (int) r3
            int r8 = (int) r5
            int r9 = r13.blurredViewTopOffset
            int r10 = r13.blurredViewBottomOffset
            boolean r11 = r13.pinnedTop
            boolean r5 = r13.pinnedBottom
            if (r5 != 0) goto L67
            org.telegram.ui.Cells.ChatMessageCell$TransitionParams r5 = r13.transitionParams
            float r5 = r5.changePinnedBottomProgress
            r12 = 1065353216(0x3f800000, float:1.0)
            int r5 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r5 == 0) goto L65
            goto L67
        L65:
            r12 = r0
            goto L68
        L67:
            r12 = r2
        L68:
            r5 = r3
            r4.setTop(r5, r6, r7, r8, r9, r10, r11, r12)
        L6c:
            int r1 = r1 + 1
            goto L2
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.setBackgroundTopY(boolean):void");
    }

    public void setBackgroundTopY(int i) {
        int i2;
        int i3;
        Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
        int i4 = this.parentWidth;
        int i5 = this.parentHeight;
        if (i5 == 0) {
            i4 = getParentWidth();
            i5 = AndroidUtilities.displaySize.y;
            if (getParent() instanceof View) {
                View view = (View) getParent();
                i3 = view.getMeasuredWidth();
                i2 = view.getMeasuredHeight();
                float f = this.parentViewTopOffset;
                messageDrawable.setTop((int) (i + f), i3, i2, (int) f, this.blurredViewTopOffset, this.blurredViewBottomOffset, this.pinnedTop, (this.pinnedBottom && this.transitionParams.changePinnedBottomProgress == 1.0f) ? false : true);
            }
        }
        i2 = i5;
        i3 = i4;
        float f2 = this.parentViewTopOffset;
        messageDrawable.setTop((int) (i + f2), i3, i2, (int) f2, this.blurredViewTopOffset, this.blurredViewBottomOffset, this.pinnedTop, (this.pinnedBottom && this.transitionParams.changePinnedBottomProgress == 1.0f) ? false : true);
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
        String str;
        boolean z;
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        MessageTopicButton messageTopicButton;
        MessageTopicButton messageTopicButton2;
        Theme.MessageDrawable messageDrawable;
        int i;
        int i2;
        int i3;
        int i4;
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
            Theme.chat_msgTextPaint.setColor(getThemedColor("chat_messageTextOut"));
            Theme.chat_msgGameTextPaint.setColor(getThemedColor("chat_messageTextOut"));
            Theme.chat_msgGameTextPaint.linkColor = getThemedColor("chat_messageLinkOut");
            Theme.chat_replyTextPaint.linkColor = getThemedColor("chat_messageLinkOut");
            Theme.chat_msgTextPaint.linkColor = getThemedColor("chat_messageLinkOut");
        } else {
            Theme.chat_msgTextPaint.setColor(getThemedColor("chat_messageTextIn"));
            Theme.chat_msgGameTextPaint.setColor(getThemedColor("chat_messageTextIn"));
            Theme.chat_msgGameTextPaint.linkColor = getThemedColor("chat_messageLinkIn");
            Theme.chat_replyTextPaint.linkColor = getThemedColor("chat_messageLinkIn");
            Theme.chat_msgTextPaint.linkColor = getThemedColor("chat_messageLinkIn");
        }
        if (this.documentAttach != null) {
            int i5 = this.documentAttachType;
            if (i5 == 3 || i5 == 7) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.seekBarWaveform.setColors(getThemedColor("chat_outVoiceSeekbar"), getThemedColor("chat_outVoiceSeekbarFill"), getThemedColor("chat_outVoiceSeekbarSelected"));
                    this.seekBar.setColors(getThemedColor("chat_outAudioSeekbar"), getThemedColor("chat_outAudioCacheSeekbar"), getThemedColor("chat_outAudioSeekbarFill"), getThemedColor("chat_outAudioSeekbarFill"), getThemedColor("chat_outAudioSeekbarSelected"));
                } else {
                    this.seekBarWaveform.setColors(getThemedColor("chat_inVoiceSeekbar"), getThemedColor("chat_inVoiceSeekbarFill"), getThemedColor("chat_inVoiceSeekbarSelected"));
                    this.seekBar.setColors(getThemedColor("chat_inAudioSeekbar"), getThemedColor("chat_inAudioCacheSeekbar"), getThemedColor("chat_inAudioSeekbarFill"), getThemedColor("chat_inAudioSeekbarFill"), getThemedColor("chat_inAudioSeekbarSelected"));
                }
            } else if (i5 == 5) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.seekBar.setColors(getThemedColor("chat_outAudioSeekbar"), getThemedColor("chat_outAudioCacheSeekbar"), getThemedColor("chat_outAudioSeekbarFill"), getThemedColor("chat_outAudioSeekbarFill"), getThemedColor("chat_outAudioSeekbarSelected"));
                } else {
                    this.seekBar.setColors(getThemedColor("chat_inAudioSeekbar"), getThemedColor("chat_inAudioCacheSeekbar"), getThemedColor("chat_inAudioSeekbarFill"), getThemedColor("chat_inAudioSeekbarFill"), getThemedColor("chat_inAudioSeekbarSelected"));
                }
            }
        }
        MessageObject messageObject = this.currentMessageObject;
        str = "chat_inTimeText";
        if (messageObject.type == 5) {
            TextPaint textPaint = Theme.chat_timePaint;
            int themedColor = getThemedColor("chat_serviceText");
            if (isDrawSelectionBackground()) {
                str = this.currentMessageObject.isOutOwner() ? "chat_outTimeSelectedText" : "chat_inTimeSelectedText";
            } else if (this.currentMessageObject.isOutOwner()) {
                str = "chat_outTimeText";
            }
            textPaint.setColor(ColorUtils.blendARGB(themedColor, getThemedColor(str), getVideoTranscriptionProgress()));
        } else if (this.mediaBackground) {
            if (messageObject.shouldDrawWithoutBackground()) {
                Theme.chat_timePaint.setColor(getThemedColor("chat_serviceText"));
            } else {
                Theme.chat_timePaint.setColor(getThemedColor("chat_mediaTimeText"));
            }
        } else if (messageObject.isOutOwner()) {
            Theme.chat_timePaint.setColor(getThemedColor(isDrawSelectionBackground() ? "chat_outTimeSelectedText" : "chat_outTimeText"));
        } else {
            Theme.chat_timePaint.setColor(getThemedColor(isDrawSelectionBackground() ? "chat_inTimeSelectedText" : "chat_inTimeText"));
        }
        drawBackgroundInternal(canvas, false);
        if (this.isHighlightedAnimated) {
            long currentTimeMillis = System.currentTimeMillis();
            long abs = Math.abs(currentTimeMillis - this.lastHighlightProgressTime);
            if (abs > 17) {
                abs = 17;
            }
            int i6 = (int) (this.highlightProgress - abs);
            this.highlightProgress = i6;
            this.lastHighlightProgressTime = currentTimeMillis;
            if (i6 <= 0) {
                this.highlightProgress = 0;
                this.isHighlightedAnimated = false;
            }
            invalidate();
            if (getParent() != null) {
                ((View) getParent()).invalidate();
            }
        }
        int i7 = Integer.MIN_VALUE;
        if (this.alphaInternal != 1.0f) {
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = getMeasuredWidth();
            Theme.MessageDrawable messageDrawable2 = this.currentBackgroundDrawable;
            if (messageDrawable2 != null) {
                i4 = messageDrawable2.getBounds().top;
                i3 = this.currentBackgroundDrawable.getBounds().bottom;
                i = this.currentBackgroundDrawable.getBounds().left;
                i2 = this.currentBackgroundDrawable.getBounds().right;
            } else {
                i = 0;
                i2 = measuredWidth;
                i3 = measuredHeight;
                i4 = 0;
            }
            if (this.drawSideButton != 0 || this.drawAdditionalSideButton) {
                if (this.currentMessageObject.isOutOwner()) {
                    i -= AndroidUtilities.m50dp(40);
                } else {
                    i2 += AndroidUtilities.m50dp(40);
                }
            }
            if (getY() < BitmapDescriptorFactory.HUE_RED) {
                i4 = (int) (-getY());
            }
            float y = getY() + getMeasuredHeight();
            int i8 = this.parentHeight;
            if (y > i8) {
                i3 = (int) (i8 - getY());
            }
            this.rect.set(i, i4, i2, i3);
            i7 = canvas.saveLayerAlpha(this.rect, (int) (this.alphaInternal * 255.0f), 31);
        }
        if (!this.transitionParams.animateBackgroundBoundsInner || (messageDrawable = this.currentBackgroundDrawable) == null || this.isRoundVideo) {
            z = false;
        } else {
            Rect bounds = messageDrawable.getBounds();
            canvas.save();
            canvas.clipRect(bounds.left + AndroidUtilities.m50dp(4), bounds.top + AndroidUtilities.m50dp(4), bounds.right - AndroidUtilities.m50dp(4), bounds.bottom - AndroidUtilities.m50dp(4));
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
            this.replyHeight = AndroidUtilities.m50dp(7) + Theme.chat_replyNamePaint.getTextSize() + Theme.chat_replyTextPaint.getTextSize();
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2.type != 19) {
                    if (messageObject2.isOutOwner()) {
                        int m50dp = AndroidUtilities.m50dp(23);
                        this.replyStartX = m50dp;
                        if (this.isPlayingRound) {
                            this.replyStartX = m50dp - (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize);
                        }
                    } else if (this.currentMessageObject.type == 5) {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m50dp(4);
                    } else {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m50dp(17);
                    }
                    if (this.drawForwardedName) {
                        int m50dp2 = AndroidUtilities.m50dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
                        this.forwardHeight = m50dp2;
                        this.replyStartY = this.forwardNameY + m50dp2 + AndroidUtilities.m50dp(6);
                    } else {
                        int m50dp3 = AndroidUtilities.m50dp(12);
                        this.replyStartY = m50dp3;
                        if (this.drawTopic && (messageTopicButton2 = this.topicButton) != null) {
                            this.replyStartY = m50dp3 + messageTopicButton2.height() + AndroidUtilities.m50dp(10);
                        }
                    }
                }
            }
            if (this.currentMessageObject.isOutOwner()) {
                int m50dp4 = this.backgroundDrawableLeft + AndroidUtilities.m50dp(12) + getExtraTextX();
                this.replyStartX = m50dp4;
                if (this.currentMessageObject.type == 19) {
                    this.replyStartX = m50dp4 - Math.max(0, ((Math.max(this.replyNameWidth, this.replyTextWidth) + m50dp4) + AndroidUtilities.m50dp(14)) - AndroidUtilities.displaySize.x);
                }
            } else if (this.mediaBackground) {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m50dp(12) + getExtraTextX();
            } else {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m50dp(this.drawPinnedBottom ? 12 : 18) + getExtraTextX();
            }
            if (this.currentMessageObject.type == 19) {
                this.replyStartX -= AndroidUtilities.m50dp(7);
            }
            this.forwardHeight = AndroidUtilities.m50dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
            int m50dp5 = AndroidUtilities.m50dp(12) + ((!this.drawNameLayout || this.nameLayout == null) ? 0 : AndroidUtilities.m50dp(6) + ((int) Theme.chat_namePaint.getTextSize())) + ((!this.drawForwardedName || this.forwardedNameLayout[0] == null) ? 0 : AndroidUtilities.m50dp(4) + this.forwardHeight);
            this.replyStartY = m50dp5;
            if (this.drawTopic && (messageTopicButton = this.topicButton) != null) {
                this.replyStartY = m50dp5 + messageTopicButton.height() + AndroidUtilities.m50dp(5);
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
            this.selectionOverlayPaint.setColor(getSelectionOverlayColor().intValue());
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
        if (i7 != Integer.MIN_VALUE) {
            canvas.restoreToCount(i7);
        }
        updateSelectionTextPosition();
    }

    /* JADX WARN: Removed duplicated region for block: B:721:0x070e  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x07bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackgroundInternal(android.graphics.Canvas r28, boolean r29) {
        /*
            Method dump skipped, instructions count: 2111
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawBackgroundInternal(android.graphics.Canvas, boolean):void");
    }

    private void animateCheckboxTranslation() {
        boolean z = this.checkBoxVisible;
        if (z || this.checkBoxAnimationInProgress) {
            if ((z && this.checkBoxAnimationProgress == 1.0f) || (!z && this.checkBoxAnimationProgress == BitmapDescriptorFactory.HUE_RED)) {
                this.checkBoxAnimationInProgress = false;
            }
            this.checkBoxTranslation = (int) Math.ceil((z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m50dp(35));
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
        if (this.canDrawBackgroundInParent && (messageObject = this.currentMessageObject) != null && messageObject.isOutOwner()) {
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            return resourcesProvider != null ? resourcesProvider.getCurrentColor("chat_outBubbleGradient") != null : Theme.getColorOrNull("chat_outBubbleGradient") != null;
        }
        return false;
    }

    public void drawCommentButton(Canvas canvas, float f) {
        if (this.drawSideButton != 3) {
            return;
        }
        int m50dp = AndroidUtilities.m50dp(32);
        if (this.commentLayout != null) {
            this.sideStartY -= AndroidUtilities.m50dp(18);
            m50dp += AndroidUtilities.m50dp(18);
        }
        RectF rectF = this.rect;
        float f2 = this.sideStartX;
        rectF.set(f2, this.sideStartY, AndroidUtilities.m50dp(32) + f2, this.sideStartY + m50dp);
        applyServiceShaderMatrix();
        int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (i != 0) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
        } else {
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
        }
        if (hasGradientService()) {
            if (i != 0) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        Drawable themeDrawable = Theme.getThemeDrawable("drawableCommentSticker");
        BaseCell.setDrawableBounds(themeDrawable, this.sideStartX + AndroidUtilities.m50dp(4), this.sideStartY + AndroidUtilities.m50dp(4));
        if (i != 0) {
            themeDrawable.setAlpha((int) (f * 255.0f));
            themeDrawable.draw(canvas);
            themeDrawable.setAlpha(255);
        } else {
            themeDrawable.draw(canvas);
        }
        if (this.commentLayout != null) {
            Theme.chat_stickerCommentCountPaint.setColor(getThemedColor("chat_stickerReplyNameText"));
            Theme.chat_stickerCommentCountPaint.setAlpha((int) (f * 255.0f));
            if (this.transitionParams.animateComments) {
                if (this.transitionParams.animateCommentsLayout != null) {
                    canvas.save();
                    Theme.chat_stickerCommentCountPaint.setAlpha((int) ((1.0d - this.transitionParams.animateChangeProgress) * 255.0d * f));
                    canvas.translate(this.sideStartX + ((AndroidUtilities.m50dp(32) - this.transitionParams.animateTotalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m50dp(30));
                    this.transitionParams.animateCommentsLayout.draw(canvas);
                    canvas.restore();
                }
                Theme.chat_stickerCommentCountPaint.setAlpha((int) (this.transitionParams.animateChangeProgress * 255.0f));
            }
            canvas.save();
            canvas.translate(this.sideStartX + ((AndroidUtilities.m50dp(32) - this.totalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m50dp(30));
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
        float m50dp;
        int extraTextX;
        float f4;
        int themedColor;
        float m50dp2;
        float m50dp3;
        if (!this.enterTransitionInProgress) {
            drawAnimatedEmojis(canvas, 1.0f);
        }
        if (this.currentNameStatusDrawable != null && this.drawNameLayout && this.nameLayout != null) {
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                themedColor = getThemedColor("chat_stickerNameText");
                if (this.currentMessageObject.isOutOwner()) {
                    m50dp3 = AndroidUtilities.m50dp(28);
                } else {
                    m50dp3 = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + this.backgroundDrawableRight + AndroidUtilities.m50dp(22);
                }
                m50dp2 = this.layoutHeight - AndroidUtilities.m50dp(38);
                f4 = m50dp3 - this.nameOffsetX;
            } else {
                int i = 11;
                if (this.mediaBackground || this.currentMessageObject.isOutOwner()) {
                    m50dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m50dp(11);
                    extraTextX = getExtraTextX();
                } else {
                    m50dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m50dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 17);
                    extraTextX = getExtraTextX();
                }
                f4 = m50dp + extraTextX;
                if (this.currentUser != null) {
                    Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
                    if (messageDrawable != null && messageDrawable.hasGradient()) {
                        themedColor = getThemedColor("chat_messageTextOut");
                    } else {
                        themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(this.currentUser.f1642id));
                    }
                } else if (this.currentChat != null) {
                    if (this.currentMessageObject.isOutOwner() && ChatObject.isChannel(this.currentChat)) {
                        Theme.MessageDrawable messageDrawable2 = this.currentBackgroundDrawable;
                        if (messageDrawable2 != null && messageDrawable2.hasGradient()) {
                            themedColor = getThemedColor("chat_messageTextOut");
                        } else {
                            themedColor = getThemedColor("chat_outForwardedNameText");
                        }
                    } else if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) {
                        themedColor = Theme.changeColorAccent(getThemedColor(AvatarDrawable.getNameColorNameForId(5L)));
                    } else if (this.currentMessageObject.isOutOwner()) {
                        themedColor = getThemedColor("chat_outForwardedNameText");
                    } else {
                        themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(this.currentChat.f1502id));
                    }
                } else {
                    themedColor = getThemedColor(AvatarDrawable.getNameColorNameForId(0L));
                }
                m50dp2 = AndroidUtilities.m50dp(this.drawPinnedTop ? 9 : 10);
            }
            MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
            if (groupedMessages != null) {
                MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages.transitionParams;
                if (transitionParams2.backgroundChangeBounds) {
                    f4 += transitionParams2.offsetLeft;
                    m50dp2 += transitionParams2.offsetTop - getTranslationY();
                }
            }
            float f5 = f4 + this.animationOffsetX;
            TransitionParams transitionParams3 = this.transitionParams;
            float f6 = m50dp2 + transitionParams3.deltaTop;
            if (transitionParams3.animateSign) {
                f5 = ((f5 - this.transitionParams.animateNameX) * this.transitionParams.animateChangeProgress) + this.transitionParams.animateNameX;
            }
            this.currentNameStatusDrawable.setBounds((int) (Math.abs(f5) + this.nameLayoutWidth + AndroidUtilities.m50dp(2)), (int) (((this.nameLayout.getHeight() / 2) + f6) - AndroidUtilities.m50dp(10)), (int) (Math.abs(f5) + this.nameLayoutWidth + AndroidUtilities.m50dp(22)), (int) (f6 + (this.nameLayout.getHeight() / 2) + AndroidUtilities.m50dp(10)));
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
                    canvas.clipRect(bounds.left + AndroidUtilities.m50dp(4), bounds.top + AndroidUtilities.m50dp(4), bounds.right - AndroidUtilities.m50dp(10), bounds.bottom - AndroidUtilities.m50dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m50dp(4), bounds.top + AndroidUtilities.m50dp(4), bounds.right - AndroidUtilities.m50dp(4), bounds.bottom - AndroidUtilities.m50dp(4));
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
        org.telegram.messenger.FileLog.m45e(r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawAnimatedEmojiCaption(android.graphics.Canvas r12, android.text.Layout r13, org.telegram.p048ui.Components.AnimatedEmojiSpan.EmojiGroupedSpans r14, float r15) {
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
            boolean r1 = org.telegram.p048ui.Cells.ChatMessageCell.TransitionParams.access$6200(r1)
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
            android.graphics.PorterDuffColorFilter r10 = org.telegram.p048ui.ActionBar.Theme.chat_animatedEmojiTextColorFilter     // Catch: java.lang.Exception -> L87
            r1 = r12
            r2 = r13
            r3 = r14
            org.telegram.p048ui.Components.AnimatedEmojiSpan.drawAnimatedEmojis(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L87
            goto L8b
        L87:
            r13 = move-exception
            org.telegram.messenger.FileLog.m45e(r13)
        L8b:
            r12.restore()
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawAnimatedEmojiCaption(android.graphics.Canvas, android.text.Layout, org.telegram.ui.Components.AnimatedEmojiSpan$EmojiGroupedSpans, float):void");
    }

    private void drawSideButton(Canvas canvas) {
        this.drawAdditionalSideButton = !this.wideMode && checkNeedDrawAdditionalSideButton(this.currentMessageObject);
        float backgroundDrawableBottom = (getBackgroundDrawableBottom() - AndroidUtilities.m51dp(1.5f)) + this.transitionParams.deltaBottom;
        int m50dp = AndroidUtilities.m50dp(32);
        int m50dp2 = AndroidUtilities.m50dp(8);
        int i = m50dp + m50dp2;
        boolean z = backgroundDrawableBottom >= ((float) (i + m50dp));
        if (this.drawAdditionalSideButton && (this.drawSideButton == 0 || z)) {
            if (this.currentMessageObject.isOutOwner()) {
                float f = this.transitionParams.lastBackgroundLeft - i;
                this.additionalSideButtonStartX = f;
                MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
                if (groupedMessages != null) {
                    this.additionalSideButtonStartX = f + (groupedMessages.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float f2 = this.transitionParams.lastBackgroundRight + m50dp2;
                this.additionalSideButtonStartX = f2;
                MessageObject.GroupedMessages groupedMessages2 = this.currentMessagesGroup;
                if (groupedMessages2 != null) {
                    this.additionalSideButtonStartX = f2 + (groupedMessages2.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            if (this.drawSideButton == 0) {
                this.additionalSideButtonStartY = backgroundDrawableBottom - m50dp;
            } else if (z) {
                float f3 = m50dp;
                this.additionalSideButtonStartY = ((backgroundDrawableBottom - f3) - m50dp2) - f3;
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
            float f8 = m50dp;
            rectF.set(f6, f7, f6 + f8, f8 + f7);
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, getX(), this.viewTop);
            Paint paint = this.additionalSideButtonPressed ? Theme.chat_actionBackgroundSelectedPaint : Theme.chat_actionBackgroundPaint;
            int alpha = paint.getAlpha();
            paint.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), paint);
            paint.setAlpha(alpha);
            if (Theme.hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            Drawable drawable = this.currentMessageObject.isForwardingEditor ? Theme.chat_editIconDrawable : Theme.chat_translateIconDrawable;
            int alpha2 = drawable.getAlpha();
            BaseCell.setDrawableBounds(drawable, this.additionalSideButtonStartX + AndroidUtilities.m50dp(4), this.additionalSideButtonStartY + AndroidUtilities.m50dp(4));
            drawable.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            drawable.draw(canvas);
            drawable.setAlpha(alpha2);
        }
        if (this.drawSideButton != 0) {
            if (this.currentMessageObject.isOutOwner()) {
                float m50dp3 = this.transitionParams.lastBackgroundLeft - AndroidUtilities.m50dp(40);
                this.sideStartX = m50dp3;
                MessageObject.GroupedMessages groupedMessages4 = this.currentMessagesGroup;
                if (groupedMessages4 != null) {
                    this.sideStartX = m50dp3 + (groupedMessages4.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float m50dp4 = this.transitionParams.lastBackgroundRight + AndroidUtilities.m50dp(8);
                this.sideStartX = m50dp4;
                MessageObject.GroupedMessages groupedMessages5 = this.currentMessagesGroup;
                if (groupedMessages5 != null) {
                    this.sideStartX = m50dp4 + (groupedMessages5.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            float m50dp5 = (this.layoutHeight + this.transitionParams.deltaBottom) - AndroidUtilities.m50dp(41);
            this.sideStartY = m50dp5;
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject.type == 19 && messageObject.textWidth < this.timeTextWidth) {
                this.sideStartY = m50dp5 - AndroidUtilities.m50dp(22);
            }
            if (this.albumMode || (this.drawAdditionalSideButton && z)) {
                this.sideStartY = backgroundDrawableBottom - m50dp;
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
                float m50dp6 = this.isAvatarVisible ? (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f : AndroidUtilities.m50dp(50);
                float videoTranscriptionProgress = this.isPlayingRound ? (1.0f - getVideoTranscriptionProgress()) * m50dp6 : 0.0f;
                if (this.isPlayingRound) {
                    f11 = AndroidUtilities.m50dp(28) * (1.0f - getVideoTranscriptionProgress());
                }
                TransitionParams transitionParams3 = this.transitionParams;
                if (transitionParams3.animatePlayingRound) {
                    videoTranscriptionProgress = (this.isPlayingRound ? transitionParams3.animateChangeProgress : 1.0f - transitionParams3.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress()) * m50dp6;
                    f11 = AndroidUtilities.m50dp(28) * (this.isPlayingRound ? this.transitionParams.animateChangeProgress : 1.0f - this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress());
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
            rectF2.set(f12, this.sideStartY, AndroidUtilities.m50dp(32) + f12, this.sideStartY + AndroidUtilities.m50dp(32));
            applyServiceShaderMatrix();
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            if (this.drawSideButton == 2) {
                Drawable themedDrawable = getThemedDrawable("drawableGoIcon");
                if (this.currentMessageObject.isOutOwner()) {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m50dp(10), this.sideStartY + AndroidUtilities.m50dp(9));
                    canvas.save();
                    canvas.scale(-1.0f, 1.0f, themedDrawable.getBounds().centerX(), themedDrawable.getBounds().centerY());
                } else {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m50dp(12), this.sideStartY + AndroidUtilities.m50dp(9));
                }
                themedDrawable.draw(canvas);
                if (this.currentMessageObject.isOutOwner()) {
                    canvas.restore();
                    return;
                }
                return;
            }
            Drawable themedDrawable2 = getThemedDrawable("drawableShareIcon");
            BaseCell.setDrawableBounds(themedDrawable2, this.sideStartX + AndroidUtilities.m50dp(8), this.sideStartY + AndroidUtilities.m50dp(9));
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
        int m50dp;
        int m50dp2;
        int i;
        if (this.currentMessageObject.isOutOwner()) {
            if (this.isRoundVideo) {
                return (this.layoutWidth - this.backgroundWidth) - ((int) ((1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m50dp(9)));
            }
            return (this.layoutWidth - this.backgroundWidth) - (this.mediaBackground ? AndroidUtilities.m50dp(9) : 0);
        }
        if (this.isRoundVideo) {
            if (this.isChat && this.isAvatarVisible) {
                r1 = 48;
            }
            m50dp = AndroidUtilities.m50dp(r1 + 3) + ((int) (AndroidUtilities.m50dp(6) * (1.0f - getVideoTranscriptionProgress())));
        } else {
            if (this.isChat && this.isAvatarVisible) {
                r1 = 48;
            }
            m50dp = AndroidUtilities.m50dp(r1 + (this.mediaBackground ? 9 : 3));
        }
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.isDocuments && (i = this.currentPosition.leftSpanOffset) != 0) {
            m50dp += (int) Math.ceil((i / 1000.0f) * getGroupPhotosWidth());
        }
        if (this.isRoundVideo) {
            if (!this.drawPinnedBottom) {
                return m50dp;
            }
            m50dp2 = (int) (AndroidUtilities.m50dp(6) * (1.0f - getVideoTranscriptionProgress()));
        } else if (this.mediaBackground || !this.drawPinnedBottom) {
            return m50dp;
        } else {
            m50dp2 = AndroidUtilities.m50dp(6);
        }
        return m50dp + m50dp2;
    }

    public int getBackgroundDrawableRight() {
        int m50dp;
        int backgroundDrawableLeft;
        int i = this.backgroundWidth;
        if (this.isRoundVideo) {
            m50dp = i - ((int) (getVideoTranscriptionProgress() * AndroidUtilities.m50dp(3)));
            if (this.drawPinnedBottom && this.currentMessageObject.isOutOwner()) {
                m50dp = (int) (m50dp - (AndroidUtilities.m50dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            if (this.drawPinnedBottom && !this.currentMessageObject.isOutOwner()) {
                m50dp = (int) (m50dp - (AndroidUtilities.m50dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        } else {
            m50dp = i - (this.mediaBackground ? 0 : AndroidUtilities.m50dp(3));
            if (!this.mediaBackground && this.drawPinnedBottom) {
                m50dp -= AndroidUtilities.m50dp(6);
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        }
        return backgroundDrawableLeft + m50dp;
    }

    public int getBackgroundDrawableTop() {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int m50dp = ((groupedMessagePosition == null || (groupedMessagePosition.flags & 4) != 0) ? 0 : 0 - AndroidUtilities.m50dp(3)) + (this.drawPinnedTop ? 0 : AndroidUtilities.m50dp(1));
        return (this.mediaBackground || !this.drawPinnedTop) ? m50dp : m50dp - AndroidUtilities.m50dp(1);
    }

    public int getBackgroundDrawableBottom() {
        int i;
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int i2 = 0;
        if (groupedMessagePosition != null) {
            i = (groupedMessagePosition.flags & 4) == 0 ? AndroidUtilities.m50dp(3) + 0 : 0;
            if ((this.currentPosition.flags & 8) == 0) {
                i += AndroidUtilities.m50dp(this.currentMessageObject.isOutOwner() ? 3 : 4);
            }
        } else {
            i = 0;
        }
        boolean z = this.drawPinnedBottom;
        if (!z || !this.drawPinnedTop) {
            if (z) {
                i2 = AndroidUtilities.m50dp(1);
            } else {
                i2 = AndroidUtilities.m50dp(2);
            }
        }
        int backgroundDrawableTop = ((getBackgroundDrawableTop() + this.layoutHeight) - i2) + i;
        if (this.mediaBackground) {
            return backgroundDrawableTop;
        }
        if (this.drawPinnedTop) {
            backgroundDrawableTop += AndroidUtilities.m50dp(1);
        }
        return this.drawPinnedBottom ? backgroundDrawableTop + AndroidUtilities.m50dp(1) : backgroundDrawableTop;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackground(android.graphics.Canvas r16, int r17, int r18, int r19, int r20, boolean r21, boolean r22, boolean r23, int r24) {
        /*
            r15 = this;
            r0 = r15
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            org.telegram.messenger.MessageObject r6 = r0.currentMessageObject
            boolean r6 = r6.isOutOwner()
            if (r6 == 0) goto L39
            boolean r6 = r0.mediaBackground
            if (r6 != 0) goto L29
            if (r22 != 0) goto L29
            if (r23 == 0) goto L1e
            java.lang.String r6 = "drawableMsgOutSelected"
            goto L20
        L1e:
            java.lang.String r6 = "drawableMsgOut"
        L20:
            android.graphics.drawable.Drawable r6 = r15.getThemedDrawable(r6)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = (org.telegram.p048ui.ActionBar.Theme.MessageDrawable) r6
            r0.currentBackgroundDrawable = r6
            goto L5e
        L29:
            if (r23 == 0) goto L2e
            java.lang.String r6 = "drawableMsgOutMediaSelected"
            goto L30
        L2e:
            java.lang.String r6 = "drawableMsgOutMedia"
        L30:
            android.graphics.drawable.Drawable r6 = r15.getThemedDrawable(r6)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = (org.telegram.p048ui.ActionBar.Theme.MessageDrawable) r6
            r0.currentBackgroundDrawable = r6
            goto L5e
        L39:
            boolean r6 = r0.mediaBackground
            if (r6 != 0) goto L4f
            if (r22 != 0) goto L4f
            if (r23 == 0) goto L44
            java.lang.String r6 = "drawableMsgInSelected"
            goto L46
        L44:
            java.lang.String r6 = "drawableMsgIn"
        L46:
            android.graphics.drawable.Drawable r6 = r15.getThemedDrawable(r6)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = (org.telegram.p048ui.ActionBar.Theme.MessageDrawable) r6
            r0.currentBackgroundDrawable = r6
            goto L5e
        L4f:
            if (r23 == 0) goto L54
            java.lang.String r6 = "drawableMsgInMediaSelected"
            goto L56
        L54:
            java.lang.String r6 = "drawableMsgInMedia"
        L56:
            android.graphics.drawable.Drawable r6 = r15.getThemedDrawable(r6)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = (org.telegram.p048ui.ActionBar.Theme.MessageDrawable) r6
            r0.currentBackgroundDrawable = r6
        L5e:
            int r6 = r0.parentWidth
            int r7 = r0.parentHeight
            if (r7 != 0) goto L85
            int r6 = r15.getParentWidth()
            android.graphics.Point r7 = org.telegram.messenger.AndroidUtilities.displaySize
            int r7 = r7.y
            android.view.ViewParent r8 = r15.getParent()
            boolean r8 = r8 instanceof android.view.View
            if (r8 == 0) goto L85
            android.view.ViewParent r6 = r15.getParent()
            android.view.View r6 = (android.view.View) r6
            int r7 = r6.getMeasuredWidth()
            int r6 = r6.getMeasuredHeight()
            r9 = r6
            r8 = r7
            goto L87
        L85:
            r8 = r6
            r9 = r7
        L87:
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = r0.currentBackgroundDrawable
            if (r6 == 0) goto Ld5
            float r7 = r0.parentViewTopOffset
            int r10 = (int) r7
            int r11 = r0.blurredViewTopOffset
            int r12 = r0.blurredViewBottomOffset
            r7 = r24
            r13 = r21
            r14 = r22
            r6.setTop(r7, r8, r9, r10, r11, r12, r13, r14)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = r0.currentBackgroundDrawable
            android.graphics.drawable.Drawable r6 = r6.getShadowDrawable()
            r7 = 255(0xff, float:3.57E-43)
            r8 = 1132396544(0x437f0000, float:255.0)
            if (r6 == 0) goto Lb9
            float r9 = r15.getAlpha()
            float r9 = r9 * r8
            int r9 = (int) r9
            r6.setAlpha(r9)
            r6.setBounds(r2, r3, r4, r5)
            r6.draw(r1)
            r6.setAlpha(r7)
        Lb9:
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = r0.currentBackgroundDrawable
            float r9 = r15.getAlpha()
            float r9 = r9 * r8
            int r8 = (int) r9
            r6.setAlpha(r8)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r6 = r0.currentBackgroundDrawable
            r6.setBounds(r2, r3, r4, r5)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r2 = r0.currentBackgroundDrawable
            org.telegram.ui.ActionBar.Theme$MessageDrawable$PathDrawParams r3 = r0.backgroundCacheParams
            r2.drawCached(r1, r3)
            org.telegram.ui.ActionBar.Theme$MessageDrawable r1 = r0.currentBackgroundDrawable
            r1.setAlpha(r7)
        Ld5:
            r15.animateCheckboxTranslation()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawBackground(android.graphics.Canvas, int, int, int, int, boolean, boolean, boolean, int):void");
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

    /* JADX WARN: Removed duplicated region for block: B:1066:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:1075:0x08d9  */
    /* JADX WARN: Removed duplicated region for block: B:1078:0x08e0  */
    /* JADX WARN: Removed duplicated region for block: B:1161:0x0aa1  */
    /* JADX WARN: Removed duplicated region for block: B:1418:0x138f  */
    /* JADX WARN: Removed duplicated region for block: B:1425:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:896:0x04a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawNamesLayout(android.graphics.Canvas r34, float r35) {
        /*
            Method dump skipped, instructions count: 5011
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawNamesLayout(android.graphics.Canvas, float):void");
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
    /* JADX WARN: Removed duplicated region for block: B:632:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:633:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:650:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:654:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:674:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:683:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:693:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:703:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:716:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:730:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:731:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x05fb  */
    /* JADX WARN: Removed duplicated region for block: B:736:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:742:0x0616  */
    /* JADX WARN: Type inference failed for: r1v77 */
    /* JADX WARN: Type inference failed for: r1v78, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawCaptionLayout(android.graphics.Canvas r23, android.text.StaticLayout r24, boolean r25, float r26) {
        /*
            Method dump skipped, instructions count: 2825
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawCaptionLayout(android.graphics.Canvas, android.text.StaticLayout, boolean, float):void");
    }

    public void drawProgressLoadingLink(Canvas canvas, int i) {
        updateProgressLoadingLink();
        ArrayList<LoadingDrawableLocation> arrayList = this.progressLoadingLinkDrawables;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        int themedColor = getThemedColor((messageObject == null || !messageObject.isOutOwner()) ? "chat_linkSelectBackground" : "chat_outLinkSelectBackground");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawTime(android.graphics.Canvas, float, boolean):void");
    }

    private void drawTimeInternal(Canvas canvas, float f, boolean z, float f2, StaticLayout staticLayout, float f3, boolean z2) {
        int i;
        String str;
        float f4;
        float f5;
        int i2;
        int i3;
        char c;
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        float f6;
        char c2;
        float m50dp;
        boolean z5;
        Paint themedPaint;
        float f7;
        int m50dp2;
        float imageY2;
        int i6;
        int i7;
        float f8;
        float currentWidth;
        TextPaint textPaint;
        if (((!this.drawTime || this.groupPhotoInvisible) && shouldDrawTimeOnMedia()) || staticLayout == null) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if ((!messageObject.deleted || this.currentPosition == null) && (i = messageObject.type) != 16) {
            str = "chat_outTimeSelectedText";
            if (i == 5) {
                TextPaint textPaint2 = Theme.chat_timePaint;
                int themedColor = getThemedColor("chat_serviceText");
                if (isDrawSelectionBackground()) {
                    if (!this.currentMessageObject.isOutOwner()) {
                        str = "chat_inTimeSelectedText";
                    }
                } else {
                    str = this.currentMessageObject.isOutOwner() ? "chat_outTimeText" : "chat_inTimeText";
                }
                textPaint2.setColor(ColorUtils.blendARGB(themedColor, getThemedColor(str), getVideoTranscriptionProgress()));
            } else if (shouldDrawTimeOnMedia()) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    Theme.chat_timePaint.setColor(getThemedColor("chat_serviceText"));
                } else {
                    Theme.chat_timePaint.setColor(getThemedColor("chat_mediaTimeText"));
                }
            } else if (this.currentMessageObject.isOutOwner()) {
                Theme.chat_timePaint.setColor(getThemedColor(z2 ? "chat_outTimeSelectedText" : "chat_outTimeText"));
            } else {
                Theme.chat_timePaint.setColor(getThemedColor(z2 ? "chat_inTimeSelectedText" : "chat_inTimeText"));
            }
            float f9 = getTransitionParams().animateDrawingTimeAlpha ? getTransitionParams().animateChangeProgress * f : f;
            if (f9 != 1.0f) {
                Theme.chat_timePaint.setAlpha((int) (textPaint.getAlpha() * f9));
            }
            canvas.save();
            if (this.drawPinnedBottom && !shouldDrawTimeOnMedia()) {
                canvas.translate(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(2));
            }
            float f10 = this.layoutHeight;
            TransitionParams transitionParams = this.transitionParams;
            if (transitionParams.animateBackgroundBoundsInner) {
                f10 += transitionParams.deltaBottom;
            }
            if (transitionParams.shouldAnimateTimeX) {
                float f11 = transitionParams.animateChangeProgress;
                f4 = (transitionParams.animateFromTimeX * (1.0f - f11)) + (this.timeX * f11);
            } else {
                f4 = f2;
            }
            MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
            if (groupedMessages == null || !groupedMessages.transitionParams.backgroundChangeBounds) {
                f5 = f2;
            } else {
                f10 -= getTranslationY();
                float f12 = this.currentMessagesGroup.transitionParams.offsetRight;
                f5 = f2 + f12;
                f4 += f12;
            }
            if (this.drawPinnedBottom && shouldDrawTimeOnMedia()) {
                f10 += AndroidUtilities.m50dp(1);
            }
            float f13 = f10;
            TransitionParams transitionParams2 = this.transitionParams;
            boolean z6 = transitionParams2.animateBackgroundBoundsInner;
            if (z6) {
                float f14 = this.animationOffsetX;
                f5 += f14;
                f4 += f14;
            }
            float f15 = f5;
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            if (reactionsLayoutInBubble.isSmall) {
                if (z6 && transitionParams2.deltaRight != BitmapDescriptorFactory.HUE_RED) {
                    currentWidth = reactionsLayoutInBubble.getCurrentWidth(1.0f);
                } else {
                    currentWidth = reactionsLayoutInBubble.getCurrentWidth(transitionParams2.animateChangeProgress);
                }
                f4 += currentWidth;
            }
            if (this.transitionParams.animateEditedEnter) {
                f4 -= this.transitionParams.animateEditedWidthDiff * (1.0f - this.transitionParams.animateChangeProgress);
            }
            float f16 = f4;
            if (shouldDrawTimeOnMedia()) {
                int i8 = -(this.drawCommentButton ? AndroidUtilities.m51dp(41.3f) : 0);
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    themedPaint = getThemedPaint("paintChatActionBackground");
                } else {
                    themedPaint = getThemedPaint("paintChatTimeBackground");
                }
                int alpha = themedPaint.getAlpha();
                Theme.chat_timePaint.setAlpha((int) (this.timeAlpha * 255.0f * f9));
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2 == null || messageObject2.type != 4) {
                    f7 = f9;
                } else {
                    float currentAlpha = this.photoImage.isCrossfadingWithOldImage() ? 1.0f : this.photoImage.getCurrentAlpha();
                    if (!this.photoImage.hasNotThumb()) {
                        currentAlpha = BitmapDescriptorFactory.HUE_RED;
                    }
                    f7 = AndroidUtilities.lerp(0.35f, 1.0f, currentAlpha);
                }
                themedPaint.setAlpha((int) (alpha * this.timeAlpha * f7));
                int i9 = this.documentAttachType;
                if (i9 != 7 && i9 != 6 && this.currentMessageObject.type != 19) {
                    int[] roundRadius = this.photoImage.getRoundRadius();
                    m50dp2 = Math.min(AndroidUtilities.m50dp(8), Math.max(roundRadius[2], roundRadius[3]));
                    z4 = SharedConfig.bubbleRadius >= 10;
                } else {
                    m50dp2 = AndroidUtilities.m50dp(4);
                    z4 = false;
                }
                float m50dp3 = f15 - AndroidUtilities.m50dp(z4 ? 6 : 4);
                if (this.documentAttachType == 7) {
                    imageY2 = f13 - ((AndroidUtilities.m50dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
                } else {
                    imageY2 = this.photoImage.getImageY2() + this.additionalTimeOffsetY;
                }
                float f17 = imageY2;
                float m50dp4 = f17 - AndroidUtilities.m50dp(23);
                float max = Math.max(AndroidUtilities.m50dp(17), Theme.chat_timePaint.getTextSize() + AndroidUtilities.m50dp(5));
                RectF rectF = this.rect;
                float f18 = m50dp3 + f3;
                int i10 = z4 ? 12 : 8;
                if (this.currentMessageObject.isOutOwner()) {
                    i6 = (this.currentMessageObject.type == 19 ? 4 : 0) + 20;
                } else {
                    i6 = 0;
                }
                rectF.set(m50dp3, m50dp4, f18 + AndroidUtilities.m50dp(i10 + i6), max + m50dp4);
                applyServiceShaderMatrix();
                float f19 = m50dp2;
                canvas.drawRoundRect(this.rect, f19, f19, themedPaint);
                if (themedPaint == getThemedPaint("paintChatActionBackground") && hasGradientService()) {
                    int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                    Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * this.timeAlpha * f7));
                    canvas.drawRoundRect(this.rect, f19, f19, Theme.chat_actionBackgroundGradientDarkenPaint);
                    Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
                }
                themedPaint.setAlpha(alpha);
                float f20 = -staticLayout.getLineLeft(0);
                if (this.reactionsLayoutInBubble.isSmall) {
                    updateReactionLayoutPosition();
                    this.reactionsLayoutInBubble.draw(canvas, this.transitionParams.animateChangeProgress, null);
                }
                if (this.albumMode || ((!ChatObject.isChannel(this.currentChat) || this.currentChat.megagroup) && (this.currentMessageObject.messageOwner.flags & 1024) == 0 && this.repliesLayout == null && !this.isPinned && !this.isInBookmarks)) {
                    i7 = i8;
                    i3 = 6;
                    i2 = 4;
                    c = 7;
                } else {
                    float lineWidth = f20 + (this.timeWidth - staticLayout.getLineWidth(0));
                    ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
                    if (reactionsLayoutInBubble2.isSmall && !reactionsLayoutInBubble2.isEmpty) {
                        lineWidth -= reactionsLayoutInBubble2.width;
                    }
                    float f21 = lineWidth;
                    int createStatusDrawableParams = this.transitionParams.createStatusDrawableParams();
                    int i11 = this.transitionParams.lastStatusDrawableParams;
                    if (i11 >= 0 && i11 != createStatusDrawableParams && !this.statusDrawableAnimationInProgress) {
                        createStatusDrawableAnimator(i11, createStatusDrawableParams, z);
                    }
                    boolean z7 = this.statusDrawableAnimationInProgress;
                    if (z7) {
                        createStatusDrawableParams = this.animateToStatusDrawableParams;
                    }
                    boolean z8 = (createStatusDrawableParams & 4) != 0;
                    boolean z9 = (createStatusDrawableParams & 8) != 0;
                    if (z7) {
                        int i12 = this.animateFromStatusDrawableParams;
                        boolean z10 = (i12 & 4) != 0;
                        boolean z11 = (i12 & 8) != 0;
                        float f22 = i8;
                        i2 = 4;
                        float f23 = f9;
                        f8 = f21;
                        i3 = 6;
                        i7 = i8;
                        c = 7;
                        drawClockOrErrorLayout(canvas, z10, z11, f13, f23, f22, f15, 1.0f - this.statusDrawableProgress, z2);
                        drawClockOrErrorLayout(canvas, z8, z9, f13, f23, f22, f15, this.statusDrawableProgress, z2);
                        if (!this.currentMessageObject.isOutOwner()) {
                            if (!z10 && !z11) {
                                drawViewsAndRepliesLayout(canvas, f13, f9, f22, f15, 1.0f - this.statusDrawableProgress, z2);
                            }
                            if (!z8 && !z9) {
                                drawViewsAndRepliesLayout(canvas, f13, f9, f22, f15, this.statusDrawableProgress, z2);
                            }
                        }
                    } else {
                        f8 = f21;
                        i3 = 6;
                        i2 = 4;
                        c = 7;
                        i7 = i8;
                        if (!this.currentMessageObject.isOutOwner() && !z8 && !z9) {
                            drawViewsAndRepliesLayout(canvas, f13, f9, i7, f15, 1.0f, z2);
                        }
                        drawClockOrErrorLayout(canvas, z8, z9, f13, f9, i7, f15, 1.0f, z2);
                    }
                    if (this.currentMessageObject.isOutOwner()) {
                        drawViewsAndRepliesLayout(canvas, f13, f9, i7, f15, 1.0f, z2);
                    }
                    TransitionParams transitionParams3 = this.transitionParams;
                    transitionParams3.lastStatusDrawableParams = transitionParams3.createStatusDrawableParams();
                    if (z8 && z && getParent() != null) {
                        ((View) getParent()).invalidate();
                    }
                    f20 = f8;
                }
                canvas.save();
                float f24 = f16 + f20;
                this.drawTimeX = f24;
                float m51dp = (f17 - AndroidUtilities.m51dp(7.3f)) - staticLayout.getHeight();
                this.drawTimeY = m51dp;
                canvas.translate(f24, m51dp);
                staticLayout.draw(canvas);
                canvas.restore();
                Theme.chat_timePaint.setAlpha(255);
                i5 = i7;
                z3 = false;
            } else {
                i2 = 4;
                i3 = 6;
                c = 7;
                if (this.currentMessageObject.isSponsored()) {
                    i4 = -AndroidUtilities.m50dp(48);
                    if (this.hasNewLineForTime) {
                        i4 -= AndroidUtilities.m50dp(16);
                    }
                } else {
                    i4 = -(this.drawCommentButton ? AndroidUtilities.m50dp(43) : 0);
                }
                int i13 = i4;
                float f25 = -staticLayout.getLineLeft(0);
                if (this.reactionsLayoutInBubble.isSmall) {
                    updateReactionLayoutPosition();
                    this.reactionsLayoutInBubble.draw(canvas, this.transitionParams.animateChangeProgress, null);
                }
                if (this.albumMode || !((ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) || (this.currentMessageObject.messageOwner.flags & 1024) != 0 || this.repliesLayout != null || this.transitionParams.animateReplies || this.isPinned || this.transitionParams.animatePinned || this.isInBookmarks || this.transitionParams.animateIsInBookmarks)) {
                    z3 = false;
                } else {
                    z3 = false;
                    float lineWidth2 = f25 + (f3 - staticLayout.getLineWidth(0));
                    ReactionsLayoutInBubble reactionsLayoutInBubble3 = this.reactionsLayoutInBubble;
                    if (reactionsLayoutInBubble3.isSmall && !reactionsLayoutInBubble3.isEmpty) {
                        lineWidth2 -= reactionsLayoutInBubble3.width;
                    }
                    float f26 = lineWidth2;
                    int createStatusDrawableParams2 = this.transitionParams.createStatusDrawableParams();
                    int i14 = this.transitionParams.lastStatusDrawableParams;
                    if (i14 >= 0 && i14 != createStatusDrawableParams2 && !this.statusDrawableAnimationInProgress) {
                        createStatusDrawableAnimator(i14, createStatusDrawableParams2, z);
                    }
                    boolean z12 = this.statusDrawableAnimationInProgress;
                    if (z12) {
                        createStatusDrawableParams2 = this.animateToStatusDrawableParams;
                    }
                    boolean z13 = (createStatusDrawableParams2 & 4) != 0;
                    boolean z14 = (createStatusDrawableParams2 & 8) != 0;
                    if (z12) {
                        int i15 = this.animateFromStatusDrawableParams;
                        boolean z15 = (i15 & 4) != 0;
                        boolean z16 = (i15 & 8) != 0;
                        float f27 = i13;
                        float f28 = f9;
                        drawClockOrErrorLayout(canvas, z15, z16, f13, f28, f27, f15, 1.0f - this.statusDrawableProgress, z2);
                        drawClockOrErrorLayout(canvas, z13, z14, f13, f28, f27, f15, this.statusDrawableProgress, z2);
                        if (!this.currentMessageObject.isOutOwner()) {
                            if (!z15 && !z16) {
                                drawViewsAndRepliesLayout(canvas, f13, f9, f27, f15, 1.0f - this.statusDrawableProgress, z2);
                            }
                            if (!z13 && !z14) {
                                drawViewsAndRepliesLayout(canvas, f13, f9, f27, f15, this.statusDrawableProgress, z2);
                            }
                        }
                    } else {
                        if (!this.currentMessageObject.isOutOwner() && !z13 && !z14) {
                            drawViewsAndRepliesLayout(canvas, f13, f9, i13, f15, 1.0f, z2);
                        }
                        drawClockOrErrorLayout(canvas, z13, z14, f13, f9, i13, f15, 1.0f, z2);
                    }
                    if (this.currentMessageObject.isOutOwner()) {
                        drawViewsAndRepliesLayout(canvas, f13, f9, i13, f15, 1.0f, z2);
                    }
                    TransitionParams transitionParams4 = this.transitionParams;
                    transitionParams4.lastStatusDrawableParams = transitionParams4.createStatusDrawableParams();
                    if (z13 && z && getParent() != null) {
                        ((View) getParent()).invalidate();
                    }
                    f25 = f26;
                }
                canvas.save();
                float f29 = 6.5f;
                if (this.transitionParams.animateEditedEnter) {
                    TransitionParams transitionParams5 = this.transitionParams;
                    if (transitionParams5.animateChangeProgress != 1.0f) {
                        if (transitionParams5.animateEditedLayout != null) {
                            float f30 = f16 + f25;
                            if (this.pinnedBottom || this.pinnedTop) {
                                f29 = 7.5f;
                            }
                            canvas.translate(f30, ((f13 - AndroidUtilities.m51dp(f29)) - staticLayout.getHeight()) + i13);
                            int alpha3 = Theme.chat_timePaint.getAlpha();
                            Theme.chat_timePaint.setAlpha((int) (alpha3 * this.transitionParams.animateChangeProgress));
                            this.transitionParams.animateEditedLayout.draw(canvas);
                            Theme.chat_timePaint.setAlpha(alpha3);
                            this.transitionParams.animateTimeLayout.draw(canvas);
                        } else {
                            int alpha4 = Theme.chat_timePaint.getAlpha();
                            canvas.save();
                            float f31 = i13;
                            canvas.translate(this.transitionParams.animateFromTimeX + f25, ((f13 - AndroidUtilities.m51dp((this.pinnedBottom || this.pinnedTop) ? 7.5f : 6.5f)) - staticLayout.getHeight()) + f31);
                            float f32 = alpha4;
                            Theme.chat_timePaint.setAlpha((int) ((1.0f - this.transitionParams.animateChangeProgress) * f32));
                            this.transitionParams.animateTimeLayout.draw(canvas);
                            canvas.restore();
                            float f33 = f16 + f25;
                            if (this.pinnedBottom || this.pinnedTop) {
                                f29 = 7.5f;
                            }
                            canvas.translate(f33, ((f13 - AndroidUtilities.m51dp(f29)) - staticLayout.getHeight()) + f31);
                            Theme.chat_timePaint.setAlpha((int) (f32 * this.transitionParams.animateChangeProgress));
                            staticLayout.draw(canvas);
                            Theme.chat_timePaint.setAlpha(alpha4);
                        }
                        canvas.restore();
                        i5 = i13;
                        z4 = z3;
                    }
                }
                float f34 = f16 + f25;
                this.drawTimeX = f34;
                if (this.pinnedBottom || this.pinnedTop) {
                    f29 = 7.5f;
                }
                float m51dp2 = ((f13 - AndroidUtilities.m51dp(f29)) - staticLayout.getHeight()) + i13;
                this.drawTimeY = m51dp2;
                canvas.translate(f34, m51dp2);
                staticLayout.draw(canvas);
                canvas.restore();
                i5 = i13;
                z4 = z3;
            }
            if (this.currentMessageObject.isOutOwner()) {
                int createStatusDrawableParams3 = this.transitionParams.createStatusDrawableParams();
                int i16 = this.transitionParams.lastStatusDrawableParams;
                if (i16 >= 0 && i16 != createStatusDrawableParams3 && !this.statusDrawableAnimationInProgress) {
                    createStatusDrawableAnimator(i16, createStatusDrawableParams3, z);
                }
                if (this.statusDrawableAnimationInProgress) {
                    createStatusDrawableParams3 = this.animateToStatusDrawableParams;
                }
                boolean z17 = (createStatusDrawableParams3 & 1) != 0 ? true : z3;
                boolean z18 = (createStatusDrawableParams3 & 2) != 0 ? true : z3;
                boolean z19 = (createStatusDrawableParams3 & 4) != 0 ? true : z3;
                boolean z20 = (createStatusDrawableParams3 & 8) != 0 ? true : z3;
                if (this.transitionYOffsetForDrawables != BitmapDescriptorFactory.HUE_RED) {
                    canvas.save();
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, this.transitionYOffsetForDrawables);
                    z5 = true;
                } else {
                    z5 = z3;
                }
                if (this.statusDrawableAnimationInProgress) {
                    int i17 = this.animateFromStatusDrawableParams;
                    boolean z21 = (i17 & 1) != 0 ? true : z3;
                    boolean z22 = (i17 & 2) != 0 ? true : z3;
                    boolean z23 = (i17 & 4) != 0 ? true : z3;
                    boolean z24 = (i17 & 8) != 0 ? true : z3;
                    if (!z23 && z22 && z18 && !z21 && z17) {
                        f6 = 0.0f;
                        c2 = 5;
                        drawStatusDrawable(canvas, z17, z18, z19, z20, f9, z4, i5, f13, this.statusDrawableProgress, true, z2);
                    } else {
                        f6 = 0.0f;
                        c2 = 5;
                        float f35 = i5;
                        boolean z25 = z22;
                        boolean z26 = z23;
                        boolean z27 = z24;
                        float f36 = f9;
                        boolean z28 = z4;
                        drawStatusDrawable(canvas, z21, z25, z26, z27, f36, z28, f35, f13, 1.0f - this.statusDrawableProgress, false, z2);
                        drawStatusDrawable(canvas, z17, z18, z19, z20, f36, z28, f35, f13, this.statusDrawableProgress, false, z2);
                    }
                } else {
                    f6 = 0.0f;
                    c2 = 5;
                    drawStatusDrawable(canvas, z17, z18, z19, z20, f9, z4, i5, f13, 1.0f, false, z2);
                }
                if (z5) {
                    canvas.restore();
                }
                TransitionParams transitionParams6 = this.transitionParams;
                transitionParams6.lastStatusDrawableParams = transitionParams6.createStatusDrawableParams();
                if (z && z19 && getParent() != null) {
                    ((View) getParent()).invalidate();
                }
            } else {
                f6 = BitmapDescriptorFactory.HUE_RED;
                c2 = 5;
            }
            canvas.restore();
            if (this.unlockLayout != null) {
                if (this.unlockX == f6 || this.unlockY == f6) {
                    calculateUnlockXY();
                }
                this.unlockSpoilerPath.rewind();
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(this.photoImage.getImageX(), this.photoImage.getImageY(), this.photoImage.getImageX2(), this.photoImage.getImageY2());
                int[] roundRadius2 = this.photoImage.getRoundRadius();
                float[] fArr = this.unlockSpoilerRadii;
                float f37 = roundRadius2[0];
                fArr[1] = f37;
                fArr[0] = f37;
                float f38 = roundRadius2[1];
                fArr[3] = f38;
                fArr[2] = f38;
                float f39 = roundRadius2[2];
                fArr[c2] = f39;
                fArr[i2] = f39;
                float f40 = roundRadius2[3];
                fArr[c] = f40;
                fArr[i3] = f40;
                this.unlockSpoilerPath.addRoundRect(rectF2, fArr, Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.unlockSpoilerPath);
                this.unlockSpoilerPath.rewind();
                rectF2.set(this.unlockX - AndroidUtilities.m50dp(12), this.unlockY - AndroidUtilities.m50dp(8), this.unlockX + Theme.chat_msgUnlockDrawable.getIntrinsicWidth() + AndroidUtilities.m50dp(14) + this.unlockLayout.getWidth() + AndroidUtilities.m50dp(12), this.unlockY + this.unlockLayout.getHeight() + AndroidUtilities.m50dp(8));
                this.unlockSpoilerPath.addRoundRect(rectF2, AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(32), Path.Direction.CW);
                canvas.clipPath(this.unlockSpoilerPath, Region.Op.DIFFERENCE);
                this.unlockSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f)));
                this.unlockSpoilerEffect.setBounds((int) this.photoImage.getImageX(), (int) this.photoImage.getImageY(), (int) this.photoImage.getImageX2(), (int) this.photoImage.getImageY2());
                this.unlockSpoilerEffect.draw(canvas);
                invalidate();
                canvas.restore();
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (this.unlockAlpha * 255.0f), 31);
                int alpha5 = Theme.chat_timeBackgroundPaint.getAlpha();
                Theme.chat_timeBackgroundPaint.setAlpha((int) (alpha5 * 0.7f));
                canvas.drawRoundRect(rectF2, AndroidUtilities.m50dp(32), AndroidUtilities.m50dp(32), Theme.chat_timeBackgroundPaint);
                Theme.chat_timeBackgroundPaint.setAlpha(alpha5);
                canvas.translate(this.unlockX + AndroidUtilities.m50dp(i2), this.unlockY);
                Drawable drawable = Theme.chat_msgUnlockDrawable;
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), Theme.chat_msgUnlockDrawable.getIntrinsicHeight());
                Theme.chat_msgUnlockDrawable.draw(canvas);
                canvas.translate(AndroidUtilities.m50dp(i3) + Theme.chat_msgUnlockDrawable.getIntrinsicWidth(), f6);
                this.unlockLayout.draw(canvas);
                canvas.restore();
                if (this.videoInfoLayout != null && this.photoImage.getVisible() && this.imageBackgroundSideColor == 0) {
                    int i18 = SharedConfig.bubbleRadius;
                    if (i18 > 2) {
                        m50dp = AndroidUtilities.m50dp(i18 - 2);
                        z4 = SharedConfig.bubbleRadius >= 10;
                    } else {
                        m50dp = AndroidUtilities.m50dp(i18);
                    }
                    int imageX = (int) (this.photoImage.getImageX() + AndroidUtilities.m50dp(9));
                    int imageY = (int) (this.photoImage.getImageY() + AndroidUtilities.m50dp(i3));
                    this.rect.set(imageX - AndroidUtilities.m50dp(i2), imageY - AndroidUtilities.m51dp(1.5f), this.durationWidth + imageX + AndroidUtilities.m50dp(i2) + AndroidUtilities.m50dp(z4 ? 2 : 0), this.videoInfoLayout.getHeight() + imageY + AndroidUtilities.m51dp(1.5f));
                    canvas.drawRoundRect(this.rect, m50dp, m50dp, getThemedPaint("paintChatTimeBackground"));
                    canvas.save();
                    canvas.translate(imageX + (z4 ? 2 : 0), imageY);
                    this.videoInfoLayout.draw(canvas);
                    canvas.restore();
                }
            }
        }
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
                themedColor = getThemedColor("chat_mediaSentClock");
            } else {
                themedColor = getThemedColor(z3 ? "chat_outSentClockSelected" : "chat_mediaSentClock");
            }
            msgClockDrawable.setColor(themedColor);
            if (shouldDrawTimeOnMedia()) {
                f6 = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m51dp(9.0f);
            } else {
                float m51dp = (f - AndroidUtilities.m51dp((this.pinnedBottom || this.pinnedTop) ? 9.5f : 8.5f)) + f3;
                if (this.isRoundVideo) {
                    f6 = m51dp - ((AndroidUtilities.m50dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
                } else {
                    f6 = m51dp;
                }
            }
            BaseCell.setDrawableBounds(msgClockDrawable, f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m50dp(11)), f6 - msgClockDrawable.getIntrinsicHeight());
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
            float m50dp = f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m50dp(11));
            float f9 = 21.5f;
            if (shouldDrawTimeOnMedia()) {
                currentTotalHeight = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m51dp(21.5f);
            } else {
                if (!this.pinnedBottom && !this.pinnedTop) {
                    f9 = 20.5f;
                }
                float m51dp2 = (f - AndroidUtilities.m51dp(f9)) + f3;
                currentTotalHeight = this.isRoundVideo ? m51dp2 - (this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress())) : m51dp2;
            }
            this.rect.set(m50dp, currentTotalHeight, AndroidUtilities.m50dp(14) + m50dp, AndroidUtilities.m50dp(14) + currentTotalHeight);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            int i = (int) (f8 * 255.0f);
            Theme.chat_msgErrorPaint.setAlpha(i);
            if (z4) {
                canvas.save();
                canvas.scale(f7, f7, this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            Drawable themedDrawable = getThemedDrawable("drawableMsgError");
            BaseCell.setDrawableBounds(themedDrawable, m50dp + AndroidUtilities.m50dp(6), currentTotalHeight + AndroidUtilities.m50dp(2));
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawViewsAndRepliesLayout(android.graphics.Canvas, float, float, float, float, float, boolean):void");
    }

    private void drawStatusDrawable(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f, boolean z5, float f2, float f3, float f4, boolean z6, boolean z7) {
        float imageY2;
        int m50dp;
        int m50dp2;
        Drawable themedDrawable;
        Drawable drawable;
        int i;
        boolean z8 = (f4 == 1.0f || z6) ? false : true;
        float f5 = (f4 * 0.5f) + 0.5f;
        float f6 = z8 ? f * f4 : f;
        if (this.documentAttachType == 7) {
            imageY2 = f3 - ((AndroidUtilities.m50dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
        } else {
            imageY2 = this.photoImage.getImageY2() + this.additionalTimeOffsetY;
        }
        float m51dp = imageY2 - AndroidUtilities.m51dp(8.5f);
        if (z3) {
            MsgClockDrawable msgClockDrawable = Theme.chat_msgClockDrawable;
            if (shouldDrawTimeOnMedia()) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    i = getThemedColor("chat_serviceText");
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m50dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m51dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    i = getThemedColor("chat_mediaSentClock");
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m50dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m51dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (f6 * 255.0f));
                }
            } else {
                int themedColor = getThemedColor("chat_outSentClock");
                BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m51dp(18.5f)) - msgClockDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m51dp(8.5f)) - msgClockDrawable.getIntrinsicHeight()) + f2);
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
                            canvas.translate(AndroidUtilities.m51dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m51dp(z5 ? 28.3f : 26.3f)) - drawable.getIntrinsicWidth(), (m51dp - drawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m51dp(z5 ? 23.5f : 21.5f)) - drawable.getIntrinsicWidth(), (m51dp - drawable.getIntrinsicHeight()) + f2);
                    }
                    drawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    if (z) {
                        if (z6) {
                            canvas.translate(AndroidUtilities.m51dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m51dp(z5 ? 28.3f : 26.3f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m51dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m51dp(z5 ? 23.5f : 21.5f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m51dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
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
                        canvas.translate(AndroidUtilities.m50dp(4) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                    }
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckReadSelected" : "drawableMsgOutCheckRead");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m51dp(22.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m50dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
                } else {
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckSelected" : "drawableMsgOutCheck");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m51dp(18.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m50dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
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
                BaseCell.setDrawableBounds(themedDrawable2, (this.layoutWidth - AndroidUtilities.m51dp(z5 ? 23.5f : 21.5f)) - themedDrawable2.getIntrinsicWidth(), (m51dp - themedDrawable2.getIntrinsicHeight()) + f2);
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
                float m50dp3 = (this.layoutWidth - AndroidUtilities.m50dp(18)) - themedDrawable3.getIntrinsicWidth();
                if (!this.pinnedBottom && !this.pinnedTop) {
                    i2 = 8;
                }
                BaseCell.setDrawableBounds(themedDrawable3, m50dp3, ((f3 - AndroidUtilities.m50dp(i2)) - themedDrawable3.getIntrinsicHeight()) + f2);
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
                m50dp = this.layoutWidth - AndroidUtilities.m51dp(34.5f);
                m50dp2 = AndroidUtilities.m51dp(26.5f);
            } else {
                m50dp = this.layoutWidth - AndroidUtilities.m50dp(32);
                m50dp2 = AndroidUtilities.m50dp((this.pinnedBottom || this.pinnedTop) ? 22 : 21);
            }
            float f7 = (f3 - m50dp2) + f2;
            this.rect.set(m50dp, f7, AndroidUtilities.m50dp(14) + m50dp, AndroidUtilities.m50dp(14) + f7);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            Theme.chat_msgErrorPaint.setAlpha((int) (alpha * f6));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m50dp(1), AndroidUtilities.m50dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            BaseCell.setDrawableBounds(Theme.chat_msgErrorDrawable, m50dp + AndroidUtilities.m50dp(6), f7 + AndroidUtilities.m50dp(2));
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

    /* JADX WARN: Code restructure failed: missing block: B:1443:0x0a17, code lost:
        if (r1[0] == 3) goto L331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1711:0x117e, code lost:
        if (r5 == 2) goto L665;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1776:0x121b, code lost:
        if (r30.documentAttachType != 4) goto L792;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1964:0x1661, code lost:
        if (r2.revealingMediaSpoilers != false) goto L865;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1972:0x167c, code lost:
        if (r30.radialProgress.getIcon() != 4) goto L865;
     */
    /* JADX WARN: Removed duplicated region for block: B:1177:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:1178:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:1875:0x1466  */
    /* JADX WARN: Removed duplicated region for block: B:1879:0x147f  */
    /* JADX WARN: Removed duplicated region for block: B:1887:0x14a0  */
    /* JADX WARN: Removed duplicated region for block: B:1891:0x14b7  */
    /* JADX WARN: Removed duplicated region for block: B:1913:0x14f5  */
    /* JADX WARN: Removed duplicated region for block: B:1917:0x1506  */
    /* JADX WARN: Removed duplicated region for block: B:1961:0x1659  */
    /* JADX WARN: Removed duplicated region for block: B:1975:0x1682  */
    /* JADX WARN: Removed duplicated region for block: B:2000:0x16f0  */
    /* JADX WARN: Removed duplicated region for block: B:2002:0x16f8  */
    /* JADX WARN: Removed duplicated region for block: B:2023:0x17a1  */
    /* JADX WARN: Removed duplicated region for block: B:2029:0x17b5  */
    /* JADX WARN: Removed duplicated region for block: B:2033:0x17c3  */
    /* JADX WARN: Removed duplicated region for block: B:2068:0x188a  */
    /* JADX WARN: Removed duplicated region for block: B:2071:0x1891  */
    /* JADX WARN: Removed duplicated region for block: B:2146:0x1a6a  */
    /* JADX WARN: Removed duplicated region for block: B:2153:0x1a89  */
    /* JADX WARN: Removed duplicated region for block: B:2156:0x1adb  */
    /* JADX WARN: Removed duplicated region for block: B:2184:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawOverlays(android.graphics.Canvas r31) {
        /*
            Method dump skipped, instructions count: 7088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.drawOverlays(android.graphics.Canvas):void");
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
            if (i == C3316R.C3319id.acc_action_small_button) {
                didPressMiniButton(true);
            } else if (i == C3316R.C3319id.acc_action_msg_options) {
                ChatMessageCellDelegate chatMessageCellDelegate3 = this.delegate;
                if (chatMessageCellDelegate3 != null) {
                    if (this.currentMessageObject.type == 16) {
                        chatMessageCellDelegate3.didLongPress(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        chatMessageCellDelegate3.didPressOther(this, this.otherX, this.otherY);
                    }
                }
            } else if (i == C3316R.C3319id.acc_action_open_forwarded_origin && (chatMessageCellDelegate = this.delegate) != null) {
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
    private static org.telegram.p048ui.Components.Point getMessageSize(int r3, int r4, int r5, int r6) {
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
            int r6 = org.telegram.messenger.AndroidUtilities.m50dp(r6)
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
            int r6 = org.telegram.messenger.AndroidUtilities.m50dp(r6)
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
            int r1 = org.telegram.messenger.AndroidUtilities.m50dp(r2)
        L62:
            if (r0 != 0) goto L68
            int r0 = org.telegram.messenger.AndroidUtilities.m50dp(r2)
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
            int r2 = org.telegram.messenger.AndroidUtilities.m50dp(r6)
            if (r0 >= r2) goto L86
            int r6 = org.telegram.messenger.AndroidUtilities.m50dp(r6)
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.getMessageSize(int, int, int, int):org.telegram.ui.Components.Point");
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
            float m50dp = 1.0f - ((i * 0.05f) / AndroidUtilities.m50dp(35));
            setScaleX(m50dp);
            setScaleY(m50dp);
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
                this.checkBoxTranslation = (int) Math.ceil((z2 ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m50dp(35));
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
                            spannableStringBuilder.append((CharSequence) LocaleController.formatString(C3316R.string.AccDescrDocumentType, attachFileName.substring(attachFileName.lastIndexOf(46) + 1).toUpperCase(Locale.ROOT)));
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
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString(isSending ? "AccDescrUploadProgress" : "AccDescrDownloadProgress", isSending ? C3316R.string.AccDescrUploadProgress : C3316R.string.AccDescrDownloadProgress, AndroidUtilities.formatFileSize(ChatMessageCell.this.currentMessageObject.loadedFileSize), AndroidUtilities.formatFileSize(ChatMessageCell.this.lastLoadingSizeTotal)));
                    }
                    if (!ChatMessageCell.this.currentMessageObject.isMusic()) {
                        if (ChatMessageCell.this.currentMessageObject.isVoice() || ChatMessageCell.this.isRoundVideo) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) LocaleController.formatDuration(ChatMessageCell.this.currentMessageObject.getDuration()));
                            spannableStringBuilder.append((CharSequence) ", ");
                            if (ChatMessageCell.this.currentMessageObject.isContentUnread()) {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgNotPlayed", C3316R.string.AccDescrMsgNotPlayed));
                            } else {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgPlayed", C3316R.string.AccDescrMsgPlayed));
                            }
                        }
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrMusicInfo", C3316R.string.AccDescrMusicInfo, ChatMessageCell.this.currentMessageObject.getMusicAuthor(), ChatMessageCell.this.currentMessageObject.getMusicTitle()));
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
                                    string = LocaleController.getString("QuizPoll", C3316R.string.QuizPoll);
                                } else {
                                    string = LocaleController.getString("AnonymousQuizPoll", C3316R.string.AnonymousQuizPoll);
                                }
                            } else if (ChatMessageCell.this.lastPoll.public_voters) {
                                string = LocaleController.getString("PublicPoll", C3316R.string.PublicPoll);
                            } else {
                                string = LocaleController.getString("AnonymousPoll", C3316R.string.AnonymousPoll);
                            }
                        } else {
                            string = LocaleController.getString("FinalResults", C3316R.string.FinalResults);
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
                                    spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSendingError", C3316R.string.AccDescrMsgSendingError));
                                }
                            } else {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSending", C3316R.string.AccDescrMsgSending));
                                float progress = ChatMessageCell.this.radialProgress.getProgress();
                                if (progress > BitmapDescriptorFactory.HUE_RED) {
                                    spannableStringBuilder.append((CharSequence) Integer.toString(Math.round(progress * 100.0f))).append((CharSequence) "%");
                                }
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) "\n");
                            if (ChatMessageCell.this.currentMessageObject.scheduled) {
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrScheduledDate", C3316R.string.AccDescrScheduledDate, ChatMessageCell.this.currentTimeString));
                                str4 = str3;
                            } else {
                                int i6 = C3316R.string.AccDescrSentDate;
                                StringBuilder sb = new StringBuilder();
                                sb.append(LocaleController.getString("TodayAt", C3316R.string.TodayAt));
                                str4 = str3;
                                sb.append(str4);
                                sb.append((Object) ChatMessageCell.this.currentTimeString);
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrSentDate", i6, sb.toString()));
                                spannableStringBuilder.append((CharSequence) ", ");
                                if (ChatMessageCell.this.currentMessageObject.isUnread()) {
                                    i4 = C3316R.string.AccDescrMsgUnread;
                                    str5 = "AccDescrMsgUnread";
                                } else {
                                    i4 = C3316R.string.AccDescrMsgRead;
                                    str5 = "AccDescrMsgRead";
                                }
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(str5, i4));
                            }
                        }
                    } else {
                        str4 = str3;
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReceivedDate", C3316R.string.AccDescrReceivedDate, LocaleController.getString("TodayAt", C3316R.string.TodayAt) + str4 + ((Object) ChatMessageCell.this.currentTimeString)));
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
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrYouReactedWith", C3316R.string.AccDescrYouReactedWith, str7));
                                } else {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReactedWith", C3316R.string.AccDescrReactedWith, str6, str7));
                                }
                            } else if (i7 > 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfPeopleReactions", tLRPC$ReactionCount2.count, str7));
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString("Reactions", C3316R.string.Reactions)).append((CharSequence) ": ");
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
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3316R.C3319id.acc_action_msg_options, LocaleController.getString("AccActionMessageOptions", C3316R.string.AccActionMessageOptions)));
                    int iconForCurrentState = ChatMessageCell.this.getIconForCurrentState();
                    if (iconForCurrentState == 0) {
                        string2 = LocaleController.getString("AccActionPlay", C3316R.string.AccActionPlay);
                    } else if (iconForCurrentState == 1) {
                        string2 = LocaleController.getString("AccActionPause", C3316R.string.AccActionPause);
                    } else if (iconForCurrentState == 2) {
                        string2 = LocaleController.getString("AccActionDownload", C3316R.string.AccActionDownload);
                    } else if (iconForCurrentState == 3) {
                        string2 = LocaleController.getString("AccActionCancelDownload", C3316R.string.AccActionCancelDownload);
                    } else if (iconForCurrentState == 5 || iconForCurrentState == 100) {
                        string2 = LocaleController.getString("AccActionOpenFile", C3316R.string.AccActionOpenFile);
                    } else {
                        string2 = ChatMessageCell.this.currentMessageObject.type == 16 ? LocaleController.getString("CallAgain", C3316R.string.CallAgain) : null;
                    }
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, string2));
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccActionEnterSelectionMode", C3316R.string.AccActionEnterSelectionMode)));
                    if (ChatMessageCell.this.getMiniIconForCurrentState() == 2) {
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3316R.C3319id.acc_action_small_button, LocaleController.getString("AccActionDownload", C3316R.string.AccActionDownload)));
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
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3316R.C3319id.acc_action_open_forwarded_origin, LocaleController.getString("AccActionOpenForwardedOrigin", C3316R.string.AccActionOpenForwardedOrigin)));
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
                obtain2.setContentDescription(LocaleController.getInternalString(C3316R.string.chat_long_action_translate));
                obtain2.addAction(16);
                this.rect.set((int) ChatMessageCell.this.additionalSideButtonStartX, (int) ChatMessageCell.this.additionalSideButtonStartY, ((int) ChatMessageCell.this.additionalSideButtonStartX) + AndroidUtilities.m50dp(40), ((int) ChatMessageCell.this.additionalSideButtonStartY) + AndroidUtilities.m50dp(32));
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
                    this.rect.set(botButton2.f1666x, botButton2.f1667y, botButton2.f1666x + botButton2.width, botButton2.f1667y + botButton2.height);
                    this.rect.offset(ChatMessageCell.this.currentMessageObject.isOutOwner() ? (ChatMessageCell.this.getMeasuredWidth() - ChatMessageCell.this.widthForButtons) - AndroidUtilities.m50dp(10) : ChatMessageCell.this.backgroundDrawableLeft + AndroidUtilities.m50dp(ChatMessageCell.this.mediaBackground ? 1 : 7), ChatMessageCell.this.layoutHeight);
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
                                i3 = C3316R.string.AccDescrQuizCorrectAnswer;
                                str2 = "AccDescrQuizCorrectAnswer";
                            } else {
                                i3 = C3316R.string.AccDescrQuizIncorrectAnswer;
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
                    int i17 = pollButton2.f1669y + ChatMessageCell.this.namesOffset;
                    int m50dp = ChatMessageCell.this.backgroundWidth - AndroidUtilities.m50dp(76);
                    Rect rect3 = this.rect;
                    int i18 = pollButton2.f1668x;
                    rect3.set(i18, i17, m50dp + i18, pollButton2.height + i17);
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
                        obtain2.setText(LocaleController.getString("AccDescrQuizExplanation", C3316R.string.AccDescrQuizExplanation));
                        obtain2.addAction(16);
                        this.rect.set(ChatMessageCell.this.pollHintX - AndroidUtilities.m50dp(8), ChatMessageCell.this.pollHintY - AndroidUtilities.m50dp(8), ChatMessageCell.this.pollHintX + AndroidUtilities.m50dp(32), ChatMessageCell.this.pollHintY + AndroidUtilities.m50dp(32));
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
                            obtain2.setContentDescription(LocaleController.getString("AccDescrOpenChat", C3316R.string.AccDescrOpenChat));
                        } else {
                            obtain2.setContentDescription(LocaleController.getString("ShareFile", C3316R.string.ShareFile));
                        }
                        obtain2.addAction(16);
                        this.rect.set((int) ChatMessageCell.this.sideStartX, (int) ChatMessageCell.this.sideStartY, ((int) ChatMessageCell.this.sideStartX) + AndroidUtilities.m50dp(40), ((int) ChatMessageCell.this.sideStartY) + AndroidUtilities.m50dp(32));
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
                        sb3.append(LocaleController.getString("Reply", C3316R.string.Reply));
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
                                formatShortNumber = LocaleController.getString("ViewInChat", C3316R.string.ViewInChat);
                            } else {
                                formatShortNumber = repliesCount == 0 ? LocaleController.getString("LeaveAComment", C3316R.string.LeaveAComment) : LocaleController.formatPluralString("CommentsCount", repliesCount, new Object[0]);
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
                            i2 = C3316R.string.AccActionCloseTranscription;
                            str = "AccActionCloseTranscription";
                        } else {
                            i2 = C3316R.string.AccActionOpenTranscription;
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
            this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m50dp(8));
            int imageY = (int) (this.photoImage.getImageY() + AndroidUtilities.m50dp(8));
            this.videoButtonY = imageY;
            RadialProgress2 radialProgress2 = this.videoRadialProgress;
            int i2 = this.videoButtonX;
            radialProgress2.setProgressRect(i2, imageY, AndroidUtilities.m50dp(24) + i2, this.videoButtonY + AndroidUtilities.m50dp(24));
            this.buttonX = (int) (f + ((this.photoImage.getImageWidth() - AndroidUtilities.m50dp(48)) / 2.0f));
            int imageY2 = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m50dp(48)) / 2.0f));
            this.buttonY = imageY2;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i3 = this.buttonX;
            radialProgress22.setProgressRect(i3, imageY2, AndroidUtilities.m50dp(48) + i3, this.buttonY + AndroidUtilities.m50dp(48));
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
                return (int) (i - (AndroidUtilities.m50dp(6) * getVideoTranscriptionProgress()));
            }
            return i - AndroidUtilities.m50dp(6);
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
                return (int) (i + (AndroidUtilities.m50dp(6) * getVideoTranscriptionProgress()));
            }
            return i + AndroidUtilities.m50dp(6);
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

        /* JADX WARN: Removed duplicated region for block: B:272:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:273:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:277:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:300:0x0214  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x0223  */
        /* JADX WARN: Removed duplicated region for block: B:306:0x0230  */
        /* JADX WARN: Removed duplicated region for block: B:330:0x02b6  */
        /* JADX WARN: Removed duplicated region for block: B:346:0x0310  */
        /* JADX WARN: Removed duplicated region for block: B:349:0x0316  */
        /* JADX WARN: Removed duplicated region for block: B:363:0x035f  */
        /* JADX WARN: Removed duplicated region for block: B:375:0x03a4  */
        /* JADX WARN: Removed duplicated region for block: B:376:0x03ab  */
        /* JADX WARN: Removed duplicated region for block: B:379:0x03b2  */
        /* JADX WARN: Removed duplicated region for block: B:405:0x044c  */
        /* JADX WARN: Removed duplicated region for block: B:408:0x0461  */
        /* JADX WARN: Removed duplicated region for block: B:410:0x0467  */
        /* JADX WARN: Removed duplicated region for block: B:419:0x04b3  */
        /* JADX WARN: Removed duplicated region for block: B:422:0x04bf  */
        /* JADX WARN: Removed duplicated region for block: B:425:0x04cb  */
        /* JADX WARN: Removed duplicated region for block: B:428:0x04db  */
        /* JADX WARN: Removed duplicated region for block: B:431:0x04ea  */
        /* JADX WARN: Removed duplicated region for block: B:436:0x0522  */
        /* JADX WARN: Removed duplicated region for block: B:439:0x052f  */
        /* JADX WARN: Removed duplicated region for block: B:450:0x0561  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean animateChange() {
            /*
                Method dump skipped, instructions count: 1396
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatMessageCell.TransitionParams.animateChange():boolean");
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

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
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
