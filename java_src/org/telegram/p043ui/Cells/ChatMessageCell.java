package org.telegram.p043ui.Cells;

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
import android.view.ViewParent;
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
import org.telegram.messenger.C3632R;
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
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedNumberLayout;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CheckBoxBase;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.FloatSeekBarAccessibilityDelegate;
import org.telegram.p043ui.Components.Forum.MessageTopicButton;
import org.telegram.p043ui.Components.InfiniteProgress;
import org.telegram.p043ui.Components.LinkPath;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.MessageBackgroundDrawable;
import org.telegram.p043ui.Components.MotionBackgroundDrawable;
import org.telegram.p043ui.Components.MsgClockDrawable;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayMessageCell;
import org.telegram.p043ui.Components.QuoteHighlight;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RadialProgress2;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ReplyMessageLine;
import org.telegram.p043ui.Components.RoundVideoPlayingDrawable;
import org.telegram.p043ui.Components.SeekBar;
import org.telegram.p043ui.Components.SeekBarAccessibilityDelegate;
import org.telegram.p043ui.Components.SeekBarWaveform;
import org.telegram.p043ui.Components.SlotsDrawable;
import org.telegram.p043ui.Components.StaticLayoutEx;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.Components.TimerParticles;
import org.telegram.p043ui.Components.TranscribeButton;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Components.URLSpanBrowser;
import org.telegram.p043ui.Components.URLSpanMono;
import org.telegram.p043ui.Components.URLSpanNoUnderline;
import org.telegram.p043ui.Components.VideoForwardDrawable;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect2;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.PinchToZoomHelper;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatInvite;
import org.telegram.tgnet.TLRPC$ChatPhoto;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$EncryptedChat;
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
import org.telegram.tgnet.TLRPC$TL_chatInvite;
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
import org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway;
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
    private int authorLayoutLeft;
    private int authorLayoutWidth;
    private boolean autoPlayingMedia;
    private int availableTimeWidth;
    protected AvatarDrawable avatarDrawable;
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
    private int captionFullWidth;
    private int captionHeight;
    public MessageObject.TextLayoutBlocks captionLayout;
    private int captionOffsetX;
    private int captionWidth;
    private float captionX;
    public float captionY;
    private CheckBoxBase checkBox;
    private boolean checkBoxAnimationInProgress;
    private float checkBoxAnimationProgress;
    private int checkBoxTranslation;
    private boolean checkBoxVisible;
    private boolean checkOnlyButtonPressed;
    private ButtonBounce closeSponsoredBounce;
    private RectF closeSponsoredBounds;
    private Paint closeSponsoredPaint;
    private Path closeSponsoredPath;
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
    public MessageObject.TextLayoutBlocks computedCaptionLayout;
    public int computedGroupCaptionY;
    private AvatarDrawable contactAvatarDrawable;
    private float controlsAlpha;
    public int currentAccount;
    public Theme.MessageDrawable currentBackgroundDrawable;
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
    public AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable currentNameStatusDrawable;
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
    private int descriptionLayoutLeft;
    private int descriptionLayoutWidth;
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
    public boolean drawPinnedTop;
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
    public final GiveawayMessageCell giveawayMessageCell;
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
    public boolean hasReplyQuote;
    private int highlightCaptionToSetEnd;
    private int highlightCaptionToSetStart;
    private LinkPath highlightPath;
    private long highlightPathStart;
    private int highlightProgress;
    private boolean highlightedQuote;
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
    private ButtonBounce instantButtonBounce;
    private LoadingDrawable instantButtonLoading;
    private boolean instantButtonPressed;
    private RectF instantButtonRect;
    public Drawable instantDrawable;
    public int instantDrawableColor;
    private Paint instantLinkArrowPaint;
    private Path instantLinkArrowPath;
    private boolean instantPressed;
    private int instantTextLeftX;
    private boolean instantTextNewLine;
    private int instantTextX;
    private StaticLayout instantViewLayout;
    private float instantViewLayoutLeft;
    private float instantViewLayoutWidth;
    private int instantWidth;
    private Runnable invalidateRunnable;
    private boolean invalidateSpoilersParent;
    private boolean invalidatesParent;
    public boolean isAvatarVisible;
    private boolean isBackupFile;
    public boolean isBlurred;
    public boolean isBot;
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
    public boolean isReplyQuote;
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
    public ReplyMessageLine linkLine;
    public boolean linkPreviewAbove;
    private ButtonBounce linkPreviewBounce;
    public int linkPreviewHeight;
    private boolean linkPreviewPressed;
    private Drawable linkPreviewSelector;
    public int linkPreviewSelectorColor;
    private int linkPreviewY;
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
    private boolean nameLayoutPressed;
    private Drawable nameLayoutSelector;
    private int nameLayoutSelectorColor;
    private int nameLayoutWidth;
    private float nameOffsetX;
    private boolean nameStatusPressed;
    private Drawable nameStatusSelector;
    private int nameStatusSelectorColor;
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
    private MessageObject.TextLayoutBlock pressedCopyCode;
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
    public QuoteHighlight quoteHighlight;
    public ReplyMessageLine quoteLine;
    private RadialProgress2 radialProgress;
    public final ReactionsLayoutInBubble reactionsLayoutInBubble;
    private RectF rect;
    private Path rectPath;
    private StaticLayout repliesLayout;
    private int repliesTextWidth;
    public ButtonBounce replyBounce;
    public float replyBounceX;
    public float replyBounceY;
    public float replyHeight;
    public ImageReceiver replyImageReceiver;
    public ReplyMessageLine replyLine;
    public StaticLayout replyNameLayout;
    private int replyNameOffset;
    private int replyNameWidth;
    private boolean replyPanelIsForward;
    private boolean replyPressed;
    private AnimatedFloat replyPressedFloat;
    public Drawable replyQuoteDrawable;
    public int replyQuoteDrawableColor;
    private Path replyRoundRectPath;
    public Drawable replySelector;
    private boolean replySelectorCanBePressed;
    public int replySelectorColor;
    private boolean replySelectorPressed;
    public float replySelectorRadLeft;
    public float replySelectorRadRight;
    public RectF replySelectorRect;
    public List<SpoilerEffect> replySpoilers;
    private final Stack<SpoilerEffect> replySpoilersPool;
    public int replyStartX;
    public int replyStartY;
    private int replyTextHeight;
    public StaticLayout replyTextLayout;
    public int replyTextOffset;
    public boolean replyTextRTL;
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
    private final Drawable[] selectorDrawable;
    private int[] selectorDrawableMaskType;
    private AnimatorSet shakeAnimation;
    private ChatMessageSharedResources sharedResources;
    public boolean shouldCheckVisibleOnScreen;
    private boolean sideButtonPressed;
    private float sideStartX;
    private float sideStartY;
    private StaticLayout siteNameLayout;
    private float siteNameLayoutWidth;
    private float siteNameLeft;
    private int siteNameWidth;
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
    public int textX;
    public int textY;
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
    private int titleLayoutLeft;
    private int titleLayoutWidth;
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
    public final TransitionParams transitionParams;
    float transitionYOffsetForDrawables;
    private LoadingDrawable translationLoadingDrawable;
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
    private boolean viaOnly;
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
        MessageObject messageObject;
        if (i == NotificationCenter.startSpoilers) {
            setSpoilersSuppressed(false);
        } else if (i == NotificationCenter.stopSpoilers) {
            setSpoilersSuppressed(true);
        } else if (i == NotificationCenter.userInfoDidLoad) {
            TLRPC$User tLRPC$User = this.currentUser;
            if (tLRPC$User == null || tLRPC$User.f1749id != ((Long) objArr[0]).longValue()) {
                return;
            }
            setAvatar(this.currentMessageObject);
        } else if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        } else if (i == NotificationCenter.didUpdatePremiumGiftStickers && (messageObject = this.currentMessageObject) != null && (messageObject.messageOwner.media instanceof TLRPC$TL_messageMediaGiveaway)) {
            setMessageObject(messageObject, this.currentMessagesGroup, this.pinnedBottom, this.pinnedTop);
        }
    }

    public void setAvatar(MessageObject messageObject) {
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
                        this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo2.sizes, AndroidUtilities.m104dp(50), false, null, true), tLRPC$Photo2), "50_50", this.avatarDrawable, null, null, 0);
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
                this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.m104dp(50), false, null, true), tLRPC$Photo), "50_50", this.avatarDrawable, null, null, 0);
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
        for (int i = 0; i < this.replySpoilers.size(); i++) {
            this.replySpoilers.get(i).setSuppressUpdates(z);
        }
        MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
        if (textLayoutBlocks != null && textLayoutBlocks.textLayoutBlocks != null) {
            for (int i2 = 0; i2 < this.captionLayout.textLayoutBlocks.size(); i2++) {
                MessageObject.TextLayoutBlock textLayoutBlock = this.captionLayout.textLayoutBlocks.get(i2);
                for (int i3 = 0; i3 < textLayoutBlock.spoilers.size(); i3++) {
                    textLayoutBlock.spoilers.get(i3).setSuppressUpdates(z);
                }
            }
        }
        if (getMessageObject() == null || getMessageObject().textLayoutBlocks == null) {
            return;
        }
        for (int i4 = 0; i4 < getMessageObject().textLayoutBlocks.size(); i4++) {
            MessageObject.TextLayoutBlock textLayoutBlock2 = getMessageObject().textLayoutBlocks.get(i4);
            for (int i5 = 0; i5 < textLayoutBlock2.spoilers.size(); i5++) {
                textLayoutBlock2.spoilers.get(i5).setSuppressUpdates(z);
            }
        }
    }

    public boolean hasSpoilers() {
        ArrayList<MessageObject.TextLayoutBlock> arrayList;
        MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
        if (textLayoutBlocks != null && (arrayList = textLayoutBlocks.textLayoutBlocks) != null) {
            Iterator<MessageObject.TextLayoutBlock> it = arrayList.iterator();
            while (it.hasNext()) {
                if (!it.next().spoilers.isEmpty()) {
                    return true;
                }
            }
        }
        if (getMessageObject() == null || getMessageObject().textLayoutBlocks == null) {
            return false;
        }
        Iterator<MessageObject.TextLayoutBlock> it2 = getMessageObject().textLayoutBlocks.iterator();
        while (it2.hasNext()) {
            if (!it2.next().spoilers.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    private void updateSpoilersVisiblePart(int i, int i2) {
        ArrayList<MessageObject.TextLayoutBlock> arrayList;
        MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
        if (textLayoutBlocks != null && (arrayList = textLayoutBlocks.textLayoutBlocks) != null) {
            Iterator<MessageObject.TextLayoutBlock> it = arrayList.iterator();
            while (it.hasNext()) {
                MessageObject.TextLayoutBlock next = it.next();
                for (SpoilerEffect spoilerEffect : next.spoilers) {
                    spoilerEffect.setVisibleBounds(BitmapDescriptorFactory.HUE_RED, (i - next.textYOffset) - this.captionX, getWidth(), (i2 - next.textYOffset) - this.captionY);
                }
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
        Iterator<MessageObject.TextLayoutBlock> it2 = getMessageObject().textLayoutBlocks.iterator();
        while (it2.hasNext()) {
            MessageObject.TextLayoutBlock next2 = it2.next();
            for (SpoilerEffect spoilerEffect3 : next2.spoilers) {
                spoilerEffect3.setVisibleBounds(BitmapDescriptorFactory.HUE_RED, (i - next2.textYOffset) - this.textY, getWidth(), (i2 - next2.textYOffset) - this.textY);
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
            float f2 = y + reactionsLayoutInBubble.f1932y;
            return f2 > f && (f2 + ((float) reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.m104dp(16)) < ((float) i);
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

    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$ChatMessageCellDelegate */
    /* loaded from: classes5.dex */
    public interface ChatMessageCellDelegate {
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

        void didPressCodeCopy(ChatMessageCell chatMessageCell, MessageObject.TextLayoutBlock textLayoutBlock);

        void didPressCommentButton(ChatMessageCell chatMessageCell);

        void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton);

        void didPressForkTranscribeButton(ChatMessageCell chatMessageCell);

        void didPressGiveawayChatButton(ChatMessageCell chatMessageCell, int i);

        void didPressHiddenForward(ChatMessageCell chatMessageCell);

        void didPressHint(ChatMessageCell chatMessageCell, int i);

        void didPressImage(ChatMessageCell chatMessageCell, float f, float f2);

        void didPressInstantButton(ChatMessageCell chatMessageCell, int i);

        void didPressOther(ChatMessageCell chatMessageCell, float f, float f2);

        void didPressReaction(ChatMessageCell chatMessageCell, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z);

        void didPressReplyMessage(ChatMessageCell chatMessageCell, int i);

        void didPressSideButton(ChatMessageCell chatMessageCell);

        void didPressSponsoredClose();

        void didPressTime(ChatMessageCell chatMessageCell);

        void didPressTopicButton(ChatMessageCell chatMessageCell);

        void didPressUrl(ChatMessageCell chatMessageCell, CharacterStyle characterStyle, boolean z);

        void didPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2);

        void didPressUserStatus(ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, TLRPC$Document tLRPC$Document);

        void didPressViaBot(ChatMessageCell chatMessageCell, String str);

        void didPressViaBotNotInline(ChatMessageCell chatMessageCell, long j);

        void didPressVoteButtons(ChatMessageCell chatMessageCell, ArrayList<TLRPC$TL_pollAnswer> arrayList, int i, int i2, int i3);

        void didPressWebPage(ChatMessageCell chatMessageCell, TLRPC$WebPage tLRPC$WebPage, String str, boolean z);

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

            public static void $default$didPressCodeCopy(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, MessageObject.TextLayoutBlock textLayoutBlock) {
            }

            public static void $default$didPressCommentButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressExtendedMediaPreview(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
            }

            public static void $default$didPressForkTranscribeButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressGiveawayChatButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, int i) {
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

            public static void $default$didPressSponsoredClose(ChatMessageCellDelegate chatMessageCellDelegate) {
            }

            public static void $default$didPressTime(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressTopicButton(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
            }

            public static void $default$didPressUrl(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, CharacterStyle characterStyle, boolean z) {
            }

            public static void $default$didPressUserAvatar(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, float f, float f2) {
            }

            public static void $default$didPressUserStatus(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$User tLRPC$User, TLRPC$Document tLRPC$Document) {
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
        private int f1791x;

        /* renamed from: y */
        private int f1792y;

        private BotButton() {
        }

        static /* synthetic */ int access$3376(BotButton botButton, int i) {
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
        public int f1793x;

        /* renamed from: y */
        public int f1794y;

        static /* synthetic */ int access$2012(PollButton pollButton, int i) {
            int i2 = pollButton.percent + i;
            pollButton.percent = i2;
            return i2;
        }

        static /* synthetic */ float access$2724(PollButton pollButton, float f) {
            float f2 = pollButton.decimal - f;
            pollButton.decimal = f2;
            return f2;
        }
    }

    public boolean isCellAttachedToWindow() {
        return this.attachedToWindow;
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
        this.giveawayMessageCell = new GiveawayMessageCell(this);
        this.scrollRect = new Rect();
        this.imageBackgroundGradientRotation = 45;
        this.selectorDrawable = new Drawable[3];
        this.selectorDrawableMaskType = new int[3];
        this.instantButtonRect = new RectF();
        this.pressedState = new int[]{16842910, 16842919};
        this.highlightCaptionToSetStart = -1;
        this.highlightCaptionToSetEnd = -1;
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
        this.replySelectorRect = new RectF();
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
        this.sPath = new Path();
        this.hadLongPress = false;
        this.ANIMATION_OFFSET_X = new Property<ChatMessageCell, Float>(this, Float.class, "animationOffsetX") { // from class: org.telegram.ui.Cells.ChatMessageCell.11
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
        this.avatarImage.setRoundRadius(AndroidUtilities.m104dp(21));
        this.avatarDrawable = new AvatarDrawable();
        ImageReceiver imageReceiver2 = new ImageReceiver(this);
        this.replyImageReceiver = imageReceiver2;
        imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        this.replyImageReceiver.setRoundRadius(AndroidUtilities.m104dp(4));
        ImageReceiver imageReceiver3 = new ImageReceiver(this);
        this.locationImageReceiver = imageReceiver3;
        imageReceiver3.setAllowLoadingOnAttachedOnly(true);
        this.locationImageReceiver.setRoundRadius(AndroidUtilities.m105dp(26.1f));
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
        this.videoRadialProgress.setCircleRadius(AndroidUtilities.m104dp(15));
        SeekBar seekBar = new SeekBar(this) { // from class: org.telegram.ui.Cells.ChatMessageCell.3
            @Override // org.telegram.p043ui.Components.SeekBar
            protected void onTimestampUpdate(URLSpanNoUnderline uRLSpanNoUnderline) {
                ChatMessageCell.this.setHighlightedSpan(uRLSpanNoUnderline);
            }
        };
        this.seekBar = seekBar;
        seekBar.setDelegate(this);
        SeekBarWaveform seekBarWaveform = new SeekBarWaveform(context);
        this.seekBarWaveform = seekBarWaveform;
        seekBarWaveform.setDelegate(this);
        this.seekBarWaveform.setParentView(this);
        this.seekBarAccessibilityDelegate = new FloatSeekBarAccessibilityDelegate() { // from class: org.telegram.ui.Cells.ChatMessageCell.4
            @Override // org.telegram.p043ui.Components.FloatSeekBarAccessibilityDelegate
            public float getProgress() {
                if (ChatMessageCell.this.currentMessageObject.isMusic()) {
                    return ChatMessageCell.this.seekBar.getProgress();
                }
                return ChatMessageCell.this.currentMessageObject.isVoice() ? ChatMessageCell.this.useSeekBarWaveform ? ChatMessageCell.this.seekBarWaveform.getProgress() : ChatMessageCell.this.seekBar.getProgress() : ChatMessageCell.this.currentMessageObject.isRoundVideo() ? ChatMessageCell.this.currentMessageObject.audioProgress : BitmapDescriptorFactory.HUE_RED;
            }

            @Override // org.telegram.p043ui.Components.FloatSeekBarAccessibilityDelegate
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
            this.pollAvatarImages[i].setRoundRadius(AndroidUtilities.m104dp(8));
            this.pollAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.pollAvatarDrawables[i] = new AvatarDrawable();
            this.pollAvatarDrawables[i].setTextSize(AndroidUtilities.m104dp(22));
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
            this.commentAvatarImages[i].setRoundRadius(AndroidUtilities.m104dp(12));
            this.commentAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.commentAvatarDrawables[i] = new AvatarDrawable();
            this.commentAvatarDrawables[i].setTextSize(AndroidUtilities.m104dp(18));
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
        if (this.quoteHighlight != null) {
            this.quoteHighlight = null;
        }
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

    private boolean checkNameMotionEvent(MotionEvent motionEvent) {
        Drawable drawable;
        ChatMessageCellDelegate chatMessageCellDelegate;
        TLRPC$Chat tLRPC$Chat;
        int i;
        int i2;
        if (!this.drawNameLayout || this.nameLayout == null || (drawable = this.nameLayoutSelector) == null || (this.currentUser == null && this.currentChat == null)) {
            this.nameLayoutPressed = false;
            return false;
        }
        boolean contains = drawable.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            this.nameLayoutPressed = contains;
            if (contains) {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.nameLayoutSelector.setHotspot((int) motionEvent.getX(), (int) motionEvent.getY());
                }
                this.nameLayoutSelector.setState(this.pressedState);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (motionEvent.getAction() == 1 && this.nameLayoutPressed && (chatMessageCellDelegate = this.delegate) != null) {
                if (this.viaOnly) {
                    TLRPC$User tLRPC$User = this.currentViaBotUser;
                    if (tLRPC$User != null && tLRPC$User.bot_inline_placeholder == null) {
                        chatMessageCellDelegate.didPressViaBotNotInline(this, tLRPC$User != null ? tLRPC$User.f1749id : 0L);
                    } else {
                        chatMessageCellDelegate.didPressViaBot(this, tLRPC$User != null ? tLRPC$User.username : this.currentMessageObject.messageOwner.via_bot_name);
                    }
                } else {
                    TLRPC$User tLRPC$User2 = this.currentUser;
                    if (tLRPC$User2 != null) {
                        chatMessageCellDelegate.didPressUserAvatar(this, tLRPC$User2, motionEvent.getX(), motionEvent.getY());
                    } else {
                        TLRPC$Chat tLRPC$Chat2 = this.currentChat;
                        if (tLRPC$Chat2 != null) {
                            TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader = this.currentMessageObject.messageOwner.fwd_from;
                            if (tLRPC$MessageFwdHeader != null) {
                                if ((tLRPC$MessageFwdHeader.flags & 16) != 0) {
                                    i2 = tLRPC$MessageFwdHeader.saved_from_msg_id;
                                    tLRPC$Chat = tLRPC$Chat2;
                                } else {
                                    i2 = tLRPC$MessageFwdHeader.channel_post;
                                    tLRPC$Chat = this.currentForwardChannel;
                                }
                                i = i2;
                            } else {
                                tLRPC$Chat = tLRPC$Chat2;
                                i = 0;
                            }
                            chatMessageCellDelegate.didPressChannelAvatar(this, tLRPC$Chat != null ? tLRPC$Chat : tLRPC$Chat2, i, this.lastTouchX, this.lastTouchY);
                        }
                    }
                }
            }
            this.nameLayoutSelector.setState(StateSet.NOTHING);
            this.nameLayoutPressed = false;
        }
        return this.nameLayoutPressed;
    }

    private boolean checkNameStatusMotionEvent(MotionEvent motionEvent) {
        if (!this.drawNameLayout || this.nameLayout == null || this.nameLayoutSelector == null || ((this.currentUser == null && this.currentChat == null) || this.currentNameStatus == null || this.currentNameStatusDrawable == null)) {
            this.nameStatusPressed = false;
            return false;
        }
        boolean contains = this.nameStatusSelector.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            this.nameStatusPressed = contains;
            if (contains) {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.nameStatusSelector.setHotspot((int) motionEvent.getX(), (int) motionEvent.getY());
                }
                this.nameStatusSelector.setState(this.pressedState);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (motionEvent.getAction() == 1 && this.nameStatusPressed && this.delegate != null && this.currentUser != null) {
                this.delegate.didPressUserStatus(this, this.currentUser, this.currentNameStatusDrawable.getDrawable() instanceof AnimatedEmojiDrawable ? ((AnimatedEmojiDrawable) this.currentNameStatusDrawable.getDrawable()).getDocument() : null);
                invalidateOutbounds();
            }
            this.nameStatusSelector.setState(StateSet.NOTHING);
            this.nameStatusPressed = false;
        }
        return this.nameStatusPressed;
    }

    private void resetCodeSelectors() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.textLayoutBlocks != null) {
            for (int i = 0; i < this.currentMessageObject.textLayoutBlocks.size(); i++) {
                Drawable drawable = this.currentMessageObject.textLayoutBlocks.get(i).copySelector;
                if (drawable != null) {
                    drawable.setState(StateSet.NOTHING);
                }
            }
        }
        if (this.captionLayout != null) {
            for (int i2 = 0; i2 < this.captionLayout.textLayoutBlocks.size(); i2++) {
                Drawable drawable2 = this.captionLayout.textLayoutBlocks.get(i2).copySelector;
                if (drawable2 != null) {
                    drawable2.setState(StateSet.NOTHING);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0184 A[Catch: Exception -> 0x034f, TryCatch #0 {Exception -> 0x034f, blocks: (B:45:0x0097, B:47:0x00ac, B:49:0x00b2, B:51:0x00be, B:54:0x00c4, B:56:0x00ca, B:58:0x00db, B:60:0x00e5, B:62:0x00eb, B:64:0x00ef, B:66:0x00f3, B:67:0x00f6, B:68:0x00fc, B:70:0x0104, B:71:0x010b, B:73:0x0113, B:75:0x012d, B:77:0x0138, B:79:0x0148, B:85:0x0159, B:88:0x0165, B:90:0x0168, B:92:0x016e, B:98:0x0178, B:100:0x017e, B:102:0x0184, B:104:0x018a, B:106:0x018e, B:167:0x0310, B:108:0x0192, B:109:0x019f, B:111:0x01a3, B:113:0x01ab, B:115:0x01cf, B:117:0x01d4, B:119:0x01df, B:121:0x01e3, B:125:0x01f6, B:126:0x01fd, B:166:0x0305, B:165:0x0302, B:116:0x01d2, B:169:0x0314, B:171:0x031a, B:173:0x0320, B:175:0x0328, B:177:0x032e, B:178:0x0334, B:180:0x0338, B:182:0x0340, B:87:0x015c, B:83:0x014e, B:127:0x0201, B:129:0x0233, B:130:0x0235, B:132:0x023f, B:134:0x024b, B:137:0x0262, B:139:0x0265, B:142:0x0270, B:145:0x0293, B:135:0x0256, B:146:0x0296, B:148:0x029c, B:150:0x02a0, B:152:0x02ac, B:155:0x02cb, B:157:0x02ce, B:160:0x02d9, B:153:0x02bb), top: B:188:0x0097, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0314 A[Catch: Exception -> 0x034f, TryCatch #0 {Exception -> 0x034f, blocks: (B:45:0x0097, B:47:0x00ac, B:49:0x00b2, B:51:0x00be, B:54:0x00c4, B:56:0x00ca, B:58:0x00db, B:60:0x00e5, B:62:0x00eb, B:64:0x00ef, B:66:0x00f3, B:67:0x00f6, B:68:0x00fc, B:70:0x0104, B:71:0x010b, B:73:0x0113, B:75:0x012d, B:77:0x0138, B:79:0x0148, B:85:0x0159, B:88:0x0165, B:90:0x0168, B:92:0x016e, B:98:0x0178, B:100:0x017e, B:102:0x0184, B:104:0x018a, B:106:0x018e, B:167:0x0310, B:108:0x0192, B:109:0x019f, B:111:0x01a3, B:113:0x01ab, B:115:0x01cf, B:117:0x01d4, B:119:0x01df, B:121:0x01e3, B:125:0x01f6, B:126:0x01fd, B:166:0x0305, B:165:0x0302, B:116:0x01d2, B:169:0x0314, B:171:0x031a, B:173:0x0320, B:175:0x0328, B:177:0x032e, B:178:0x0334, B:180:0x0338, B:182:0x0340, B:87:0x015c, B:83:0x014e, B:127:0x0201, B:129:0x0233, B:130:0x0235, B:132:0x023f, B:134:0x024b, B:137:0x0262, B:139:0x0265, B:142:0x0270, B:145:0x0293, B:135:0x0256, B:146:0x0296, B:148:0x029c, B:150:0x02a0, B:152:0x02ac, B:155:0x02cb, B:157:0x02ce, B:160:0x02d9, B:153:0x02bb), top: B:188:0x0097, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0178 A[Catch: Exception -> 0x034f, TryCatch #0 {Exception -> 0x034f, blocks: (B:45:0x0097, B:47:0x00ac, B:49:0x00b2, B:51:0x00be, B:54:0x00c4, B:56:0x00ca, B:58:0x00db, B:60:0x00e5, B:62:0x00eb, B:64:0x00ef, B:66:0x00f3, B:67:0x00f6, B:68:0x00fc, B:70:0x0104, B:71:0x010b, B:73:0x0113, B:75:0x012d, B:77:0x0138, B:79:0x0148, B:85:0x0159, B:88:0x0165, B:90:0x0168, B:92:0x016e, B:98:0x0178, B:100:0x017e, B:102:0x0184, B:104:0x018a, B:106:0x018e, B:167:0x0310, B:108:0x0192, B:109:0x019f, B:111:0x01a3, B:113:0x01ab, B:115:0x01cf, B:117:0x01d4, B:119:0x01df, B:121:0x01e3, B:125:0x01f6, B:126:0x01fd, B:166:0x0305, B:165:0x0302, B:116:0x01d2, B:169:0x0314, B:171:0x031a, B:173:0x0320, B:175:0x0328, B:177:0x032e, B:178:0x0334, B:180:0x0338, B:182:0x0340, B:87:0x015c, B:83:0x014e, B:127:0x0201, B:129:0x0233, B:130:0x0235, B:132:0x023f, B:134:0x024b, B:137:0x0262, B:139:0x0265, B:142:0x0270, B:145:0x0293, B:135:0x0256, B:146:0x0296, B:148:0x029c, B:150:0x02a0, B:152:0x02ac, B:155:0x02cb, B:157:0x02ce, B:160:0x02d9, B:153:0x02bb), top: B:188:0x0097, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkTextBlockMotionEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkTextBlockMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:161:0x0307 A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:37:0x008e, B:39:0x00a1, B:41:0x00a7, B:43:0x00b3, B:46:0x00b9, B:48:0x00bf, B:50:0x00d0, B:52:0x00da, B:54:0x00e0, B:56:0x00e4, B:58:0x00e8, B:59:0x00eb, B:60:0x00f1, B:62:0x00f9, B:63:0x0100, B:65:0x0108, B:67:0x0122, B:69:0x012d, B:71:0x013b, B:77:0x014c, B:80:0x0158, B:82:0x015b, B:84:0x0161, B:90:0x016b, B:92:0x0171, B:94:0x0177, B:96:0x017d, B:98:0x0181, B:159:0x0303, B:100:0x0185, B:101:0x0192, B:103:0x0196, B:105:0x019e, B:107:0x01c2, B:109:0x01c7, B:111:0x01d2, B:113:0x01d6, B:117:0x01e9, B:118:0x01f0, B:158:0x02f8, B:157:0x02f5, B:108:0x01c5, B:161:0x0307, B:163:0x030d, B:165:0x0313, B:167:0x031b, B:169:0x0321, B:170:0x0327, B:172:0x032b, B:174:0x0333, B:79:0x014f, B:75:0x0141, B:119:0x01f4, B:121:0x0226, B:122:0x0228, B:124:0x0232, B:126:0x023e, B:129:0x0255, B:131:0x0258, B:134:0x0263, B:137:0x0286, B:127:0x0249, B:138:0x0289, B:140:0x028f, B:142:0x0293, B:144:0x029f, B:147:0x02be, B:149:0x02c1, B:152:0x02cc, B:145:0x02ae), top: B:182:0x008e, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x016b A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:37:0x008e, B:39:0x00a1, B:41:0x00a7, B:43:0x00b3, B:46:0x00b9, B:48:0x00bf, B:50:0x00d0, B:52:0x00da, B:54:0x00e0, B:56:0x00e4, B:58:0x00e8, B:59:0x00eb, B:60:0x00f1, B:62:0x00f9, B:63:0x0100, B:65:0x0108, B:67:0x0122, B:69:0x012d, B:71:0x013b, B:77:0x014c, B:80:0x0158, B:82:0x015b, B:84:0x0161, B:90:0x016b, B:92:0x0171, B:94:0x0177, B:96:0x017d, B:98:0x0181, B:159:0x0303, B:100:0x0185, B:101:0x0192, B:103:0x0196, B:105:0x019e, B:107:0x01c2, B:109:0x01c7, B:111:0x01d2, B:113:0x01d6, B:117:0x01e9, B:118:0x01f0, B:158:0x02f8, B:157:0x02f5, B:108:0x01c5, B:161:0x0307, B:163:0x030d, B:165:0x0313, B:167:0x031b, B:169:0x0321, B:170:0x0327, B:172:0x032b, B:174:0x0333, B:79:0x014f, B:75:0x0141, B:119:0x01f4, B:121:0x0226, B:122:0x0228, B:124:0x0232, B:126:0x023e, B:129:0x0255, B:131:0x0258, B:134:0x0263, B:137:0x0286, B:127:0x0249, B:138:0x0289, B:140:0x028f, B:142:0x0293, B:144:0x029f, B:147:0x02be, B:149:0x02c1, B:152:0x02cc, B:145:0x02ae), top: B:182:0x008e, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0177 A[Catch: Exception -> 0x0342, TryCatch #1 {Exception -> 0x0342, blocks: (B:37:0x008e, B:39:0x00a1, B:41:0x00a7, B:43:0x00b3, B:46:0x00b9, B:48:0x00bf, B:50:0x00d0, B:52:0x00da, B:54:0x00e0, B:56:0x00e4, B:58:0x00e8, B:59:0x00eb, B:60:0x00f1, B:62:0x00f9, B:63:0x0100, B:65:0x0108, B:67:0x0122, B:69:0x012d, B:71:0x013b, B:77:0x014c, B:80:0x0158, B:82:0x015b, B:84:0x0161, B:90:0x016b, B:92:0x0171, B:94:0x0177, B:96:0x017d, B:98:0x0181, B:159:0x0303, B:100:0x0185, B:101:0x0192, B:103:0x0196, B:105:0x019e, B:107:0x01c2, B:109:0x01c7, B:111:0x01d2, B:113:0x01d6, B:117:0x01e9, B:118:0x01f0, B:158:0x02f8, B:157:0x02f5, B:108:0x01c5, B:161:0x0307, B:163:0x030d, B:165:0x0313, B:167:0x031b, B:169:0x0321, B:170:0x0327, B:172:0x032b, B:174:0x0333, B:79:0x014f, B:75:0x0141, B:119:0x01f4, B:121:0x0226, B:122:0x0228, B:124:0x0232, B:126:0x023e, B:129:0x0255, B:131:0x0258, B:134:0x0263, B:137:0x0286, B:127:0x0249, B:138:0x0289, B:140:0x028f, B:142:0x0293, B:144:0x029f, B:147:0x02be, B:149:0x02c1, B:152:0x02cc, B:145:0x02ae), top: B:182:0x008e, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkCaptionMotionEvent(android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkCaptionMotionEvent(android.view.MotionEvent):boolean");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkGameMotionEvent(android.view.MotionEvent):boolean");
    }

    private boolean checkTranscribeButtonMotionEvent(MotionEvent motionEvent) {
        TranscribeButton transcribeButton;
        return this.useTranscribeButton && (!this.isPlayingRound || getVideoTranscriptionProgress() > BitmapDescriptorFactory.HUE_RED || this.wasTranscriptionOpen) && (transcribeButton = this.transcribeButton) != null && transcribeButton.onTouch(motionEvent.getAction(), motionEvent.getX(), motionEvent.getY());
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0113 A[Catch: Exception -> 0x015d, TryCatch #0 {Exception -> 0x015d, blocks: (B:32:0x005f, B:34:0x0079, B:36:0x0090, B:38:0x009b, B:40:0x00ac, B:42:0x00b2, B:48:0x00bc, B:50:0x00c2, B:52:0x00c6, B:74:0x0159, B:54:0x00ce, B:56:0x00ef, B:58:0x00f3, B:60:0x00f7, B:62:0x00fd, B:68:0x011c, B:73:0x014e, B:72:0x014b, B:63:0x010b, B:65:0x0113, B:67:0x0118, B:66:0x0116, B:69:0x0128), top: B:292:0x005f, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0116 A[Catch: Exception -> 0x015d, TryCatch #0 {Exception -> 0x015d, blocks: (B:32:0x005f, B:34:0x0079, B:36:0x0090, B:38:0x009b, B:40:0x00ac, B:42:0x00b2, B:48:0x00bc, B:50:0x00c2, B:52:0x00c6, B:74:0x0159, B:54:0x00ce, B:56:0x00ef, B:58:0x00f3, B:60:0x00f7, B:62:0x00fd, B:68:0x011c, B:73:0x014e, B:72:0x014b, B:63:0x010b, B:65:0x0113, B:67:0x0118, B:66:0x0116, B:69:0x0128), top: B:292:0x005f, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkLinkPreviewMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkLinkPreviewMotionEvent(android.view.MotionEvent):boolean");
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
                if (this.hintButtonVisible && (i = this.pollHintX) != -1 && x >= i && x <= i + AndroidUtilities.m104dp(40) && y >= (i2 = this.pollHintY) && y <= i2 + AndroidUtilities.m104dp(40)) {
                    this.pollHintPressed = true;
                    this.selectorDrawableMaskType[0] = 3;
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr = this.selectorDrawable;
                        if (drawableArr[0] != null) {
                            drawableArr[0].setBounds(this.pollHintX - AndroidUtilities.m104dp(8), this.pollHintY - AndroidUtilities.m104dp(8), this.pollHintX + AndroidUtilities.m104dp(32), this.pollHintY + AndroidUtilities.m104dp(32));
                            this.selectorDrawable[0].setHotspot(x, y);
                            this.selectorDrawable[0].setState(this.pressedState);
                        }
                    }
                    invalidate();
                } else {
                    for (int i3 = 0; i3 < this.pollButtons.size(); i3++) {
                        PollButton pollButton = this.pollButtons.get(i3);
                        int m104dp = (pollButton.f1794y + this.namesOffset) - AndroidUtilities.m104dp(13);
                        int i4 = pollButton.f1793x;
                        if (x >= i4 && x <= (i4 + this.backgroundWidth) - AndroidUtilities.m104dp(31) && y >= m104dp && y <= pollButton.height + m104dp + AndroidUtilities.m104dp(26)) {
                            this.pressedVoteButton = i3;
                            if (!this.pollVoted && !this.pollClosed) {
                                this.selectorDrawableMaskType[0] = 1;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    Drawable[] drawableArr2 = this.selectorDrawable;
                                    if (drawableArr2[0] != null) {
                                        drawableArr2[0].setBounds(pollButton.f1793x - AndroidUtilities.m104dp(9), m104dp, (pollButton.f1793x + this.backgroundWidth) - AndroidUtilities.m104dp(22), pollButton.height + m104dp + AndroidUtilities.m104dp(26));
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
                        Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVote", C3632R.string.MessageScheduledVote), 1).show();
                    } else {
                        PollButton pollButton2 = this.pollButtons.get(this.pressedVoteButton);
                        TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = pollButton2.answer;
                        if (this.pollVoted || this.pollClosed) {
                            ArrayList<TLRPC$TL_pollAnswer> arrayList = new ArrayList<>();
                            arrayList.add(tLRPC$TL_pollAnswer);
                            this.delegate.didPressVoteButtons(this, arrayList, pollButton2.count, pollButton2.f1793x + AndroidUtilities.m104dp(50), this.namesOffset + pollButton2.f1794y);
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
                                Toast.makeText(getContext(), LocaleController.getString("MessageScheduledVoteResults", C3632R.string.MessageScheduledVoteResults), 1).show();
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

    private boolean checkSponsoredCloseMotionEvent(MotionEvent motionEvent) {
        ButtonBounce buttonBounce;
        ChatMessageCellDelegate chatMessageCellDelegate;
        RectF rectF;
        if (motionEvent.getAction() == 0 && (rectF = this.closeSponsoredBounds) != null && this.closeSponsoredBounce != null && rectF.contains(motionEvent.getX(), motionEvent.getY())) {
            this.closeSponsoredBounce.setPressed(true);
            return true;
        }
        if (motionEvent.getAction() == 1) {
            ButtonBounce buttonBounce2 = this.closeSponsoredBounce;
            if (buttonBounce2 != null && buttonBounce2.isPressed() && (chatMessageCellDelegate = this.delegate) != null) {
                chatMessageCellDelegate.didPressSponsoredClose();
            }
            ButtonBounce buttonBounce3 = this.closeSponsoredBounce;
            if (buttonBounce3 != null) {
                buttonBounce3.setPressed(false);
            }
        } else if (motionEvent.getAction() == 3 && (buttonBounce = this.closeSponsoredBounce) != null) {
            buttonBounce.setPressed(false);
        }
        ButtonBounce buttonBounce4 = this.closeSponsoredBounce;
        return buttonBounce4 != null && buttonBounce4.isPressed();
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
                    if (x > i3 + AndroidUtilities.m104dp((LocaleController.isRTL ? 0 : 200) + 30 + (!isVideoCall ? 2 : 0)) || y < this.otherY - AndroidUtilities.m104dp(14) || y > this.otherY + AndroidUtilities.m104dp(50)) {
                        return false;
                    }
                    this.otherPressed = true;
                    this.selectorDrawableMaskType[0] = 4;
                    if (Build.VERSION.SDK_INT >= 21 && this.selectorDrawable[0] != null) {
                        int m104dp = this.otherX + AndroidUtilities.m104dp((LocaleController.isRTL ? 0 : 200) + (!isVideoCall ? 2 : 0)) + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicWidth() / 2);
                        int intrinsicHeight = this.otherY + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicHeight() / 2);
                        this.selectorDrawable[0].setBounds(m104dp - AndroidUtilities.m104dp(20), intrinsicHeight - AndroidUtilities.m104dp(20), m104dp + AndroidUtilities.m104dp(20), intrinsicHeight + AndroidUtilities.m104dp(20));
                        this.selectorDrawable[0].setHotspot(x, y);
                        this.selectorDrawable[0].setState(this.pressedState);
                    }
                    invalidate();
                } else if (x < this.otherX - AndroidUtilities.m104dp(20) || x > this.otherX + AndroidUtilities.m104dp(20) || y < this.otherY - AndroidUtilities.m104dp(4) || y > this.otherY + AndroidUtilities.m104dp(30)) {
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
        if (this.instantButtonBounce == null) {
            this.instantButtonBounce = new ButtonBounce(this);
        }
        ButtonBounce buttonBounce = this.instantButtonBounce;
        this.instantButtonPressed = z;
        buttonBounce.setPressed(z);
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
                if (f3 < f4 || f3 > f4 + AndroidUtilities.m104dp(20)) {
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
                if (f >= this.seekbarRoundX - AndroidUtilities.m104dp(20) && f <= this.seekbarRoundX + AndroidUtilities.m104dp(20)) {
                    float f2 = y;
                    if (f2 >= this.seekbarRoundY - AndroidUtilities.m104dp(20) && f2 <= this.seekbarRoundY + AndroidUtilities.m104dp(20)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        cancelCheckLongPress();
                        this.roundSeekbarTouched = 1;
                        invalidate();
                    }
                }
                float centerX = f - this.photoImage.getCenterX();
                float centerY = y - this.photoImage.getCenterY();
                float imageWidth = (this.photoImage.getImageWidth() - AndroidUtilities.m104dp(64)) / 2.0f;
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkPhotoImageMotionEvent(android.view.MotionEvent):boolean");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkAudioMotionEvent(android.view.MotionEvent):boolean");
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
                                    return true;
                                }
                            }
                        }
                    }
                }
                MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
                if (textLayoutBlocks != null) {
                    float f = x;
                    float f2 = this.captionX;
                    if (f >= f2) {
                        float f3 = y;
                        float f4 = this.captionY;
                        if (f3 >= f4 && f <= f2 + textLayoutBlocks.textWidth && f3 <= f4 + textLayoutBlocks.textHeight) {
                            ArrayList<MessageObject.TextLayoutBlock> arrayList2 = textLayoutBlocks.textLayoutBlocks;
                            for (int i8 = 0; i8 < arrayList2.size() && arrayList2.get(i8).textYOffset <= f3; i8++) {
                                MessageObject.TextLayoutBlock textLayoutBlock2 = arrayList2.get(i8);
                                int i9 = textLayoutBlock2.isRtl() ? (int) this.captionLayout.textXOffset : 0;
                                for (SpoilerEffect spoilerEffect2 : textLayoutBlock2.spoilers) {
                                    if (spoilerEffect2.getBounds().contains((int) ((f - this.captionX) + i9), (int) ((f3 - this.captionY) - textLayoutBlock2.textYOffset))) {
                                        this.spoilerPressed = spoilerEffect2;
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (actionMasked == 1 && this.spoilerPressed != null) {
                playSoundEffect(0);
                this.sPath.rewind();
                MessageObject.TextLayoutBlocks textLayoutBlocks2 = this.captionLayout;
                if (textLayoutBlocks2 != null) {
                    Iterator<MessageObject.TextLayoutBlock> it = textLayoutBlocks2.textLayoutBlocks.iterator();
                    while (it.hasNext()) {
                        MessageObject.TextLayoutBlock next = it.next();
                        for (SpoilerEffect spoilerEffect3 : next.spoilers) {
                            Rect bounds = spoilerEffect3.getBounds();
                            float f5 = next.textYOffset;
                            this.sPath.addRect(bounds.left, bounds.top + f5, bounds.right, bounds.bottom + f5, Path.Direction.CW);
                        }
                    }
                } else {
                    Iterator<MessageObject.TextLayoutBlock> it2 = this.currentMessageObject.textLayoutBlocks.iterator();
                    while (it2.hasNext()) {
                        MessageObject.TextLayoutBlock next2 = it2.next();
                        for (SpoilerEffect spoilerEffect4 : next2.spoilers) {
                            Rect bounds2 = spoilerEffect4.getBounds();
                            float f6 = next2.textYOffset;
                            this.sPath.addRect(bounds2.left, bounds2.top + f6, bounds2.right, bounds2.bottom + f6, Path.Direction.CW);
                        }
                    }
                }
                this.sPath.computeBounds(this.rect, false);
                float sqrt = (float) Math.sqrt(Math.pow(this.rect.width(), 2.0d) + Math.pow(this.rect.height(), 2.0d));
                this.isSpoilerRevealing = true;
                this.spoilerPressed.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatMessageCell.this.lambda$checkSpoilersMotionEvent$1();
                    }
                });
                MessageObject.TextLayoutBlocks textLayoutBlocks3 = this.captionLayout;
                if (textLayoutBlocks3 != null) {
                    Iterator<MessageObject.TextLayoutBlock> it3 = textLayoutBlocks3.textLayoutBlocks.iterator();
                    while (it3.hasNext()) {
                        MessageObject.TextLayoutBlock next3 = it3.next();
                        int i10 = next3.isRtl() ? (int) this.captionLayout.textXOffset : 0;
                        for (SpoilerEffect spoilerEffect5 : next3.spoilers) {
                            spoilerEffect5.startRipple((x - this.captionX) + i10, (y - next3.textYOffset) - this.captionY, sqrt);
                        }
                    }
                } else {
                    ArrayList<MessageObject.TextLayoutBlock> arrayList3 = this.currentMessageObject.textLayoutBlocks;
                    if (arrayList3 != null) {
                        Iterator<MessageObject.TextLayoutBlock> it4 = arrayList3.iterator();
                        while (it4.hasNext()) {
                            MessageObject.TextLayoutBlock next4 = it4.next();
                            int i11 = next4.isRtl() ? (int) this.currentMessageObject.textXOffset : 0;
                            for (SpoilerEffect spoilerEffect6 : next4.spoilers) {
                                spoilerEffect6.startRipple((x - this.textX) + i11, (y - next4.textYOffset) - this.textY, sqrt);
                            }
                        }
                    }
                }
                if (getParent() instanceof RecyclerListView) {
                    ViewGroup viewGroup2 = (ViewGroup) getParent();
                    for (int i12 = 0; i12 < viewGroup2.getChildCount(); i12++) {
                        View childAt2 = viewGroup2.getChildAt(i12);
                        if (childAt2 instanceof ChatMessageCell) {
                            final ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt2;
                            if (chatMessageCell2.getMessageObject() != null && chatMessageCell2.getMessageObject().getReplyMsgId() == getMessageObject().getId() && !chatMessageCell2.replySpoilers.isEmpty()) {
                                chatMessageCell2.replySpoilers.get(0).setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda9
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        ChatMessageCell.this.lambda$checkSpoilersMotionEvent$3(chatMessageCell2);
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
    public /* synthetic */ void lambda$checkSpoilersMotionEvent$1() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ChatMessageCell.this.lambda$checkSpoilersMotionEvent$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSpoilersMotionEvent$0() {
        this.isSpoilerRevealing = false;
        getMessageObject().isSpoilersRevealed = true;
        MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
        if (textLayoutBlocks != null) {
            Iterator<MessageObject.TextLayoutBlock> it = textLayoutBlocks.textLayoutBlocks.iterator();
            while (it.hasNext()) {
                it.next().spoilers.clear();
            }
        } else {
            ArrayList<MessageObject.TextLayoutBlock> arrayList = this.currentMessageObject.textLayoutBlocks;
            if (arrayList != null) {
                Iterator<MessageObject.TextLayoutBlock> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().spoilers.clear();
                }
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSpoilersMotionEvent$3(final ChatMessageCell chatMessageCell) {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ChatMessageCell.lambda$checkSpoilersMotionEvent$2(ChatMessageCell.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSpoilersMotionEvent$2(ChatMessageCell chatMessageCell) {
        chatMessageCell.getMessageObject().replyMessageObject.isSpoilersRevealed = true;
        chatMessageCell.replySpoilers.clear();
        chatMessageCell.invalidate();
    }

    private boolean checkBotButtonMotionEvent(MotionEvent motionEvent) {
        int i;
        int m104dp;
        if (this.delegate.isInPreviewMode() || this.botButtons.isEmpty() || this.currentMessageObject.eventId != 0) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            if (this.currentMessageObject.isOutOwner()) {
                m104dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m104dp(10);
            } else {
                m104dp = this.backgroundDrawableLeft + AndroidUtilities.m104dp(this.mediaBackground ? 1 : 7);
            }
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = this.botButtons.get(i2);
                int m104dp2 = (botButton.f1792y + this.layoutHeight) - AndroidUtilities.m104dp(2);
                if (x >= botButton.f1791x + m104dp && x <= botButton.f1791x + m104dp + botButton.width && y >= m104dp2 && y <= botButton.height + m104dp2) {
                    this.pressedBotButton = i2;
                    invalidateOutbounds();
                    if (botButton.selectorDrawable == null) {
                        botButton.selectorDrawable = Theme.createRadSelectorDrawable(getThemedColor(Theme.key_chat_serviceBackgroundSelector), 6, 6);
                        botButton.selectorDrawable.setBounds(botButton.f1791x + m104dp, m104dp2, botButton.f1791x + m104dp + botButton.width, botButton.height + m104dp2);
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        botButton.selectorDrawable.setHotspot(x, y);
                    }
                    botButton.selectorDrawable.setState(this.pressedState);
                    botButton.setPressed(true);
                    final int i3 = this.pressedBotButton;
                    postDelayed(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatMessageCell.this.lambda$checkBotButtonMotionEvent$4(i3);
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
                    Toast.makeText(getContext(), LocaleController.getString("MessageScheduledBotAction", C3632R.string.MessageScheduledBotAction), 1).show();
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
    public /* synthetic */ void lambda$checkBotButtonMotionEvent$4(int i) {
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

    /* JADX WARN: Code restructure failed: missing block: B:268:0x03fd, code lost:
        if (r5 <= (r0 + org.telegram.messenger.AndroidUtilities.m104dp(32))) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:511:0x078b, code lost:
        if (r5 > (r0 + org.telegram.messenger.AndroidUtilities.m104dp(32 + ((r18.drawSideButton != 3 || r18.commentLayout == null) ? 0 : 18)))) goto L568;
     */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03aa  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1948
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$5() {
        if (this.replyPressed && !this.replySelectorPressed && this.replySelectorCanBePressed) {
            this.replySelectorPressed = true;
            this.replySelector.setState(new int[]{16842919, 16842910});
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$6() {
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
        return pinchToZoomHelper.checkPinchToZoom(motionEvent, this, imageReceiver, null, null, messageObject, spoilerEffect2 != null ? spoilerEffect2.getAttachIndex(this) : 0);
    }

    private boolean checkTextSelection(MotionEvent motionEvent) {
        TextSelectionHelper.ChatListTextSelectionHelper textSelectionHelper;
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message;
        int i;
        int m104dp;
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
                } else {
                    MessageObject messageObject2 = this.currentMessageObject;
                    if (messageObject2 != null && !messageObject2.preview && this.descriptionLayout != null && (!this.linkPreviewAbove ? motionEvent.getY() > this.descriptionY : motionEvent.getY() < this.textY)) {
                        textSelectionHelper.setIsDescription(true);
                        if (this.hasGamePreview) {
                            i2 = this.unmovedTextX - AndroidUtilities.m104dp(10);
                        } else {
                            if (this.hasInvoicePreview) {
                                i = this.unmovedTextX;
                                m104dp = AndroidUtilities.m104dp(1);
                            } else {
                                i = this.unmovedTextX;
                                m104dp = AndroidUtilities.m104dp(1);
                            }
                            i2 = i + m104dp;
                        }
                        textSelectionHelper.setMaybeTextCord(i2 + AndroidUtilities.m104dp(10) + this.descriptionX, this.descriptionY);
                    } else {
                        textSelectionHelper.setIsDescription(false);
                        textSelectionHelper.setMaybeTextCord(this.textX, this.textY);
                    }
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
        int m104dp;
        int i2;
        if (getDelegate() == null || getDelegate().getTextSelectionHelper() == null || !getDelegate().getTextSelectionHelper().isSelected(this.currentMessageObject)) {
            return;
        }
        int textSelectionType = getDelegate().getTextSelectionHelper().getTextSelectionType(this);
        if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_DESCRIPTION) {
            if (this.hasGamePreview) {
                i2 = this.unmovedTextX - AndroidUtilities.m104dp(10);
            } else {
                if (this.hasInvoicePreview) {
                    i = this.unmovedTextX;
                    m104dp = AndroidUtilities.m104dp(1);
                } else {
                    i = this.unmovedTextX;
                    m104dp = AndroidUtilities.m104dp(1);
                }
                i2 = i + m104dp;
            }
            getDelegate().getTextSelectionHelper().updateTextPosition(i2 + AndroidUtilities.m104dp(10) + this.descriptionX, this.descriptionY);
        } else if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_CAPTION) {
            updateCaptionLayout();
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
            if (document != null) {
                while (i < document.attributes.size()) {
                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i);
                    if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) {
                        d = tLRPC$DocumentAttribute.duration;
                        break;
                    }
                    i++;
                }
            }
            d = 0.0d;
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
        return StaticLayoutEx.createStaticLayout(spannableStringBuilder, textPaint, i9, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.m104dp(1), false, TextUtils.TruncateAt.END, i9, i4, true);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.isPhotoDataChanged(org.telegram.messenger.MessageObject):boolean");
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
        MessageObject messageObject;
        ArrayList<MessageObject.TextLayoutBlock> arrayList;
        if (!this.imageReceiversAttachState || (messageObject = this.currentMessageObject) == null) {
            return;
        }
        boolean z = false;
        int cacheTypeForEnterView = messageObject.wasJustSent ? AnimatedEmojiDrawable.getCacheTypeForEnterView() : 0;
        MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
        if (textLayoutBlocks != null && (arrayList = textLayoutBlocks.textLayoutBlocks) != null) {
            this.animatedEmojiStack = AnimatedEmojiSpan.update(cacheTypeForEnterView, (View) this, false, this.animatedEmojiStack, arrayList);
            return;
        }
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        this.animatedEmojiStack = AnimatedEmojiSpan.update(cacheTypeForEnterView, this, (chatMessageCellDelegate == null || !chatMessageCellDelegate.canDrawOutboundsContent()) ? true : true, this.animatedEmojiStack, this.currentMessageObject.textLayoutBlocks);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.isUserDataChanged():boolean");
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
        if (tLRPC$User != null && tLRPC$User.f1749id == 0) {
            f = this.avatarImage.getCenterX();
        } else {
            f = this.forwardNameX + this.forwardNameCenterX;
        }
        return (int) f;
    }

    public int getChecksX() {
        return this.layoutWidth - AndroidUtilities.m105dp(SharedConfig.bubbleRadius >= 10 ? 27.3f : 25.3f);
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

    public TLRPC$Chat getCurrentChat() {
        return this.currentChat;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.startSpoilers);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.stopSpoilers);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
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
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
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
        boolean z3 = false;
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
                this.giveawayMessageCell.onAttachedToWindow();
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
                this.giveawayMessageCell.onDetachedFromWindow();
                AnimatedEmojiSpan.release(this, this.animatedEmojiDescriptionStack);
                AnimatedEmojiSpan.release(this, this.animatedEmojiReplyStack);
                AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
            }
        }
        if (this.attachedToWindow && (this.visibleOnScreen || !this.shouldCheckVisibleOnScreen)) {
            z3 = true;
        }
        if (z3 != this.imageReceiversVisibleState) {
            this.imageReceiversVisibleState = z3;
            if (z3) {
                fileAttach(true, this.currentMessageObject);
            } else {
                fileDetach(this.currentMessageObject);
            }
        }
    }

    private void fileAttach(boolean z, MessageObject messageObject) {
        ImageReceiver imageReceiver = this.photoImage;
        if (imageReceiver != null) {
            imageReceiver.setFileLoadingPriority(1);
        }
        if (z && messageObject != null && (this.isRoundVideo || messageObject.isVideo())) {
            checkVideoPlayback(true, null);
        }
        if (messageObject == null || messageObject.mediaExists) {
            return;
        }
        int canDownloadMedia = DownloadController.getInstance(this.currentAccount).canDownloadMedia(messageObject.messageOwner);
        TLRPC$Document document = messageObject.getDocument();
        if ((MessageObject.isStickerDocument(document) || MessageObject.isAnimatedStickerDocument(document, true) || MessageObject.isGifDocument(document) || MessageObject.isRoundVideoDocument(document)) || this.isSmallImage) {
            return;
        }
        TLRPC$PhotoSize closestPhotoSizeWithSize = document == null ? FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize()) : null;
        int i = 2;
        if (canDownloadMedia == 2 || (canDownloadMedia == 1 && messageObject.isVideo())) {
            if (canDownloadMedia != 2 && document != null && !messageObject.shouldEncryptPhotoOrVideo() && messageObject.canStreamVideo()) {
                FileLoader.getInstance(this.currentAccount).loadFile(document, messageObject, 1, 0);
            }
        } else if (canDownloadMedia != 0) {
            if (document != null) {
                FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
                if (!MessageObject.isVideoDocument(document) || !messageObject.shouldEncryptPhotoOrVideo()) {
                    i = 0;
                }
                fileLoader.loadFile(document, messageObject, 1, i);
            } else if (closestPhotoSizeWithSize != null) {
                FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject.photoThumbsObject), messageObject, null, 1, messageObject.shouldEncryptPhotoOrVideo() ? 2 : 0);
            }
        }
        if (z) {
            updateButtonState(false, false, false);
        }
    }

    private void fileDetach(MessageObject messageObject) {
        ImageReceiver imageReceiver = this.photoImage;
        if (imageReceiver != null) {
            imageReceiver.setFileLoadingPriority(0);
        }
        cancelLoading(messageObject);
    }

    private void cancelLoading(MessageObject messageObject) {
        if (messageObject == null || messageObject.mediaExists || messageObject.putInDownloadsStore || DownloadController.getInstance(this.currentAccount).isDownloading(messageObject.messageOwner.f1626id) || PhotoViewer.getInstance().isVisible()) {
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

    /* JADX WARN: Can't wrap try/catch for region: R(81:3330|3331|(1:3333)(1:3375)|3334|(1:3336)(2:3371|(1:3373)(1:3374))|3337|(74:3370|3341|(1:3367)|3344|3345|3346|3347|(57:3362|3353|3354|2837|(1:3329)|2839|2840|(4:3283|(1:3285)(1:3326)|3286|(9:3288|(2:3290|(1:3292)(1:3324))(1:3325)|3293|(1:3295)(1:3323)|3296|(1:3302)|3303|(2:3306|(3:3310|(2:3312|(1:3314))|3315)(1:(4:3317|(1:3319)|3320|(1:3322))))|3305))|2842|2843|(3:3279|(1:3281)|3282)|3269|(2:3271|(1:3273))|(2:3254|(3:3258|(1:3260)(2:3262|(1:3264))|3261)(3:3265|(1:3267)|3268))(3:2849|2850|(2:2854|(1:2856)(1:3245)))|2857|(1:2863)(1:3244)|2864|(1:3243)(1:2866)|2867|(1:2872)|2873|(38:3212|(2:3214|(1:3216))|3218|(2:3222|(2:3230|(1:3232)(3:3233|(1:3237)(1:3239)|3238)))|2876|(5:2878|(2:2882|(2:2884|(13:2886|(1:2888)(2:3129|(6:3131|(3:3136|(1:3138)(1:3141)|3139)(4:(1:3151)(1:3143)|3144|(1:3146)(1:3148)|3147)|3140|2928|2929|2930)(1:3152))|2889|(2:2891|(1:2893)(1:3127))(1:3128)|2894|(1:2898)(1:3126)|2899|(3:2904|(2:2906|(8:2910|2911|(1:2913)|(5:2920|(1:2922)|2923|(1:2925)(1:3074)|2926)(2:3075|(1:3080)(1:3081))|2927|2928|2929|2930)(1:2908))|(2:(5:3091|(1:3093)|3094|(1:3096)(1:3100)|3097)(1:3101)|3098)(3:3102|(1:3104)(1:3106)|3105))(2:3110|(1:3116)(2:(1:3120)|3121))|3099|2927|2928|2929|2930)(2:3153|(2:3155|(1:3157)(3:3159|(1:3161)(1:3184)|(2:3169|(1:3173)(3:3174|(1:3176)(1:3178)|3177))(3:3179|(1:3181)(1:3183)|3182)))(1:3185)))(3:3186|(1:3188)(1:3190)|3189))(2:3191|(1:3193)(2:3194|(1:3196)(1:3197)))|3158|2929|2930)(4:3198|(1:3204)(3:3205|(2:(1:3211)(1:3208)|3209)|3158)|2929|2930)|2931|(0)(0)|2934|(4:2936|2938|2940|2942)|2943|(27:2945|2947|2951|(0)|2954|(0)|2957|(0)(0)|2960|(0)|2963|(17:2965|2967|(0)(0)|2970|(0)|2973|(0)(0)|2976|(0)|3004|(7:3006|3008|3009|(4:3011|3013|(0)|3016)|3017|(0)|3016)|3020|3009|(0)|3017|(0)|3016)|3042|(3:3044|3046|(4:3048|3050|3052|3054))|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3063|(2:3066|3072)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3350|(64:3357|3358|2837|(2:3327|3329)|2839|2840|(0)|2842|2843|(1:2845)(4:3274|3279|(0)|3282)|3269|(0)|(50:3254|(49:3256|3258|(0)(0)|3261|2857|(45:2859|2861|2863|2864|(41:3241|3243|2867|(2:2870|2872)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3265|(0)|3268|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|2849|2850|(48:2852|2854|(0)(0)|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3246|2854|(0)(0)|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3353|3354|2837|(0)|2839|2840|(0)|2842|2843|(0)(0)|3269|(0)|(0)|2849|2850|(0)|3246|2854|(0)(0)|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3340|3341|(1:3343)(2:3365|3367)|3344|3345|3346|3347|(1:3349)(66:3360|3362|3353|3354|2837|(0)|2839|2840|(0)|2842|2843|(0)(0)|3269|(0)|(0)|2849|2850|(0)|3246|2854|(0)(0)|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3350|(1:3352)(65:3355|3357|3358|2837|(0)|2839|2840|(0)|2842|2843|(0)(0)|3269|(0)|(0)|2849|2850|(0)|3246|2854|(0)(0)|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016)|3353|3354|2837|(0)|2839|2840|(0)|2842|2843|(0)(0)|3269|(0)|(0)|2849|2850|(0)|3246|2854|(0)(0)|2857|(0)|3244|2864|(0)|2866|2867|(0)|2873|(0)|2875|2876|(0)(0)|2931|(0)(0)|2934|(0)|2943|(0)|3063|(0)|3065|2954|(0)|2957|(0)(0)|2960|(0)|2963|(0)|3042|(0)|3055|2973|(0)(0)|2976|(0)|3004|(0)|3020|3009|(0)|3017|(0)|3016) */
    /* JADX WARN: Code restructure failed: missing block: B:1066:0x0e4e, code lost:
        if (r5.isSmall != false) goto L3378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1191:0x1083, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1195:0x1087, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1366:0x139c, code lost:
        if (r1.revealingMediaSpoilers != false) goto L3218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1683:0x1a93, code lost:
        if (r1.forceAvatar != false) goto L3490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2053:0x2485, code lost:
        if (r1 >= (r2 + org.telegram.messenger.AndroidUtilities.m104dp(r15 + r12))) goto L3986;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3876:0x486a, code lost:
        if (r8.isSmallImage != false) goto L2135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4716:0x5886, code lost:
        if (r0.revealingMediaSpoilers != false) goto L1598;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5089:0x6075, code lost:
        if ((r1.flags & r7) == 0) goto L639;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0097, code lost:
        if (r8.isPlayingRound == ((!org.telegram.messenger.MediaController.getInstance().isPlayingMessage(r8.currentMessageObject) || (r6 = r8.delegate) == null || r6.keyboardIsOpened()) ? false : true)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5632:0x68e3, code lost:
        if (r10.button.url.startsWith("tg://resolve") != false) goto L884;
     */
    /* JADX WARN: Multi-variable search skipped. Vars limit reached: 8506 (expected less than 5000) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1000:0x0d27  */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x0d2f  */
    /* JADX WARN: Removed duplicated region for block: B:1011:0x0d5d  */
    /* JADX WARN: Removed duplicated region for block: B:1014:0x0d82  */
    /* JADX WARN: Removed duplicated region for block: B:1015:0x0d85  */
    /* JADX WARN: Removed duplicated region for block: B:1018:0x0d8d  */
    /* JADX WARN: Removed duplicated region for block: B:1019:0x0d8f  */
    /* JADX WARN: Removed duplicated region for block: B:1023:0x0d9b  */
    /* JADX WARN: Removed duplicated region for block: B:1026:0x0da2  */
    /* JADX WARN: Removed duplicated region for block: B:1037:0x0dd7  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:1048:0x0dfb  */
    /* JADX WARN: Removed duplicated region for block: B:1075:0x0e6b  */
    /* JADX WARN: Removed duplicated region for block: B:1077:0x0e78  */
    /* JADX WARN: Removed duplicated region for block: B:1200:0x1091  */
    /* JADX WARN: Removed duplicated region for block: B:1207:0x10ab  */
    /* JADX WARN: Removed duplicated region for block: B:1263:0x11d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1264:0x11d9  */
    /* JADX WARN: Removed duplicated region for block: B:1275:0x11f4  */
    /* JADX WARN: Removed duplicated region for block: B:1282:0x120f  */
    /* JADX WARN: Removed duplicated region for block: B:1288:0x1232 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1299:0x1270  */
    /* JADX WARN: Removed duplicated region for block: B:1303:0x1287  */
    /* JADX WARN: Removed duplicated region for block: B:1304:0x1289  */
    /* JADX WARN: Removed duplicated region for block: B:1312:0x12eb  */
    /* JADX WARN: Removed duplicated region for block: B:1326:0x1307  */
    /* JADX WARN: Removed duplicated region for block: B:1327:0x131d  */
    /* JADX WARN: Removed duplicated region for block: B:1331:0x1356  */
    /* JADX WARN: Removed duplicated region for block: B:1341:0x1367 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1350:0x1377 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1359:0x138a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:1399:0x13ea  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:1603:0x18bb  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:1694:0x1ab2  */
    /* JADX WARN: Removed duplicated region for block: B:1695:0x1ab5  */
    /* JADX WARN: Removed duplicated region for block: B:1709:0x1add  */
    /* JADX WARN: Removed duplicated region for block: B:1714:0x1ae6  */
    /* JADX WARN: Removed duplicated region for block: B:1716:0x1aea  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x01d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1997:0x2257  */
    /* JADX WARN: Removed duplicated region for block: B:2061:0x249d  */
    /* JADX WARN: Removed duplicated region for block: B:2102:0x26ac  */
    /* JADX WARN: Removed duplicated region for block: B:2103:0x26b8  */
    /* JADX WARN: Removed duplicated region for block: B:2116:0x26d7  */
    /* JADX WARN: Removed duplicated region for block: B:2129:0x271b  */
    /* JADX WARN: Removed duplicated region for block: B:2130:0x271e  */
    /* JADX WARN: Removed duplicated region for block: B:2134:0x2738  */
    /* JADX WARN: Removed duplicated region for block: B:2154:0x27bb  */
    /* JADX WARN: Removed duplicated region for block: B:2164:0x281a  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:2333:0x2ace  */
    /* JADX WARN: Removed duplicated region for block: B:2334:0x2ad0  */
    /* JADX WARN: Removed duplicated region for block: B:2338:0x2ae8  */
    /* JADX WARN: Removed duplicated region for block: B:2351:0x2b25  */
    /* JADX WARN: Removed duplicated region for block: B:2362:0x2b3b  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x024b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2375:0x2b5e  */
    /* JADX WARN: Removed duplicated region for block: B:2379:0x2b79  */
    /* JADX WARN: Removed duplicated region for block: B:2382:0x2b88  */
    /* JADX WARN: Removed duplicated region for block: B:2383:0x2b8b  */
    /* JADX WARN: Removed duplicated region for block: B:2396:0x2bb7  */
    /* JADX WARN: Removed duplicated region for block: B:2400:0x2bcf  */
    /* JADX WARN: Removed duplicated region for block: B:2405:0x2bdc  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:2424:0x2c17  */
    /* JADX WARN: Removed duplicated region for block: B:2425:0x2c19  */
    /* JADX WARN: Removed duplicated region for block: B:2429:0x2c2c  */
    /* JADX WARN: Removed duplicated region for block: B:2432:0x2c39  */
    /* JADX WARN: Removed duplicated region for block: B:2433:0x2c3b  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:2459:0x2c93  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:2492:0x2cfa  */
    /* JADX WARN: Removed duplicated region for block: B:2499:0x2d30  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0272 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2504:0x2d3b  */
    /* JADX WARN: Removed duplicated region for block: B:2508:0x2d46  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x02b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:3043:0x38b1  */
    /* JADX WARN: Removed duplicated region for block: B:3048:0x38bf  */
    /* JADX WARN: Removed duplicated region for block: B:3051:0x38cc  */
    /* JADX WARN: Removed duplicated region for block: B:3060:0x3913  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:3100:0x39f6  */
    /* JADX WARN: Removed duplicated region for block: B:3103:0x3a04  */
    /* JADX WARN: Removed duplicated region for block: B:3110:0x3a3a  */
    /* JADX WARN: Removed duplicated region for block: B:3114:0x3a44  */
    /* JADX WARN: Removed duplicated region for block: B:3120:0x3a83  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:3404:0x3ff5  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:3412:0x4019 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3413:0x401a A[Catch: Exception -> 0x3ddc, TryCatch #11 {Exception -> 0x3ddc, blocks: (B:3410:0x4011, B:3417:0x4034, B:3413:0x401a, B:3416:0x4025, B:3409:0x4004, B:3419:0x4060, B:3426:0x409f, B:3433:0x40c0, B:3440:0x40e3, B:3442:0x40ea, B:3444:0x40f6, B:3443:0x40f1, B:3436:0x40c9, B:3439:0x40d4, B:3429:0x40a6, B:3432:0x40b3, B:3422:0x407f, B:3425:0x408a), top: B:5671:0x3f9a }] */
    /* JADX WARN: Removed duplicated region for block: B:3502:0x4273  */
    /* JADX WARN: Removed duplicated region for block: B:3513:0x4288  */
    /* JADX WARN: Removed duplicated region for block: B:3522:0x42d0  */
    /* JADX WARN: Removed duplicated region for block: B:3523:0x42d4  */
    /* JADX WARN: Removed duplicated region for block: B:3531:0x4319  */
    /* JADX WARN: Removed duplicated region for block: B:3538:0x433d  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:3553:0x4378  */
    /* JADX WARN: Removed duplicated region for block: B:3557:0x4387  */
    /* JADX WARN: Removed duplicated region for block: B:3567:0x43b4  */
    /* JADX WARN: Removed duplicated region for block: B:3571:0x43c7  */
    /* JADX WARN: Removed duplicated region for block: B:3578:0x43d8  */
    /* JADX WARN: Removed duplicated region for block: B:3586:0x43f3  */
    /* JADX WARN: Removed duplicated region for block: B:3590:0x4416  */
    /* JADX WARN: Removed duplicated region for block: B:3595:0x4428  */
    /* JADX WARN: Removed duplicated region for block: B:3603:0x443f  */
    /* JADX WARN: Removed duplicated region for block: B:3609:0x445d  */
    /* JADX WARN: Removed duplicated region for block: B:3640:0x4500 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3641:0x4502  */
    /* JADX WARN: Removed duplicated region for block: B:3647:0x4513  */
    /* JADX WARN: Removed duplicated region for block: B:3648:0x4516  */
    /* JADX WARN: Removed duplicated region for block: B:3654:0x452a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3659:0x4540  */
    /* JADX WARN: Removed duplicated region for block: B:3663:0x4559  */
    /* JADX WARN: Removed duplicated region for block: B:3693:0x45af  */
    /* JADX WARN: Removed duplicated region for block: B:3725:0x45e8  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:3736:0x45fb  */
    /* JADX WARN: Removed duplicated region for block: B:3743:0x4607 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3809:0x46e8  */
    /* JADX WARN: Removed duplicated region for block: B:3812:0x470d  */
    /* JADX WARN: Removed duplicated region for block: B:3825:0x4745  */
    /* JADX WARN: Removed duplicated region for block: B:3830:0x475a  */
    /* JADX WARN: Removed duplicated region for block: B:3834:0x4762  */
    /* JADX WARN: Removed duplicated region for block: B:3838:0x4772 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3843:0x479b  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:3931:0x4959  */
    /* JADX WARN: Removed duplicated region for block: B:3975:0x4a4c  */
    /* JADX WARN: Removed duplicated region for block: B:3981:0x4a5b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3985:0x4a64  */
    /* JADX WARN: Removed duplicated region for block: B:3986:0x4a65 A[Catch: Exception -> 0x4b3b, TRY_LEAVE, TryCatch #28 {Exception -> 0x4b3b, blocks: (B:3983:0x4a60, B:3991:0x4a8d, B:3996:0x4ab0, B:3997:0x4ac5, B:3998:0x4ad1, B:4000:0x4ad9, B:4001:0x4aff, B:4014:0x4b20, B:4004:0x4b09, B:4013:0x4b18, B:3995:0x4a94, B:3986:0x4a65), top: B:5703:0x4a60 }] */
    /* JADX WARN: Removed duplicated region for block: B:4001:0x4aff A[Catch: Exception -> 0x4b3b, TryCatch #28 {Exception -> 0x4b3b, blocks: (B:3983:0x4a60, B:3991:0x4a8d, B:3996:0x4ab0, B:3997:0x4ac5, B:3998:0x4ad1, B:4000:0x4ad9, B:4001:0x4aff, B:4014:0x4b20, B:4004:0x4b09, B:4013:0x4b18, B:3995:0x4a94, B:3986:0x4a65), top: B:5703:0x4a60 }] */
    /* JADX WARN: Removed duplicated region for block: B:4020:0x4b45  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:4038:0x4b8d  */
    /* JADX WARN: Removed duplicated region for block: B:4039:0x4b8f  */
    /* JADX WARN: Removed duplicated region for block: B:4042:0x4b96  */
    /* JADX WARN: Removed duplicated region for block: B:4043:0x4b98  */
    /* JADX WARN: Removed duplicated region for block: B:4046:0x4b9d  */
    /* JADX WARN: Removed duplicated region for block: B:4047:0x4ba0  */
    /* JADX WARN: Removed duplicated region for block: B:4051:0x4bc3  */
    /* JADX WARN: Removed duplicated region for block: B:4052:0x4bc6  */
    /* JADX WARN: Removed duplicated region for block: B:4058:0x4c1d A[Catch: Exception -> 0x4c54, TryCatch #15 {Exception -> 0x4c54, blocks: (B:4021:0x4b46, B:4031:0x4b79, B:4036:0x4b87, B:4040:0x4b90, B:4044:0x4b99, B:4048:0x4ba4, B:4054:0x4bd9, B:4055:0x4c0b, B:4057:0x4c13, B:4058:0x4c1d, B:4069:0x4c43, B:4070:0x4c47, B:4063:0x4c39, B:4066:0x4c3e, B:4034:0x4b83, B:4049:0x4baf, B:4053:0x4bca, B:4027:0x4b66, B:4024:0x4b52), top: B:5678:0x4b46 }] */
    /* JADX WARN: Removed duplicated region for block: B:4076:0x4c5b  */
    /* JADX WARN: Removed duplicated region for block: B:4084:0x4c6d  */
    /* JADX WARN: Removed duplicated region for block: B:4087:0x4c74  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:4112:0x4cd0  */
    /* JADX WARN: Removed duplicated region for block: B:4113:0x4cd2  */
    /* JADX WARN: Removed duplicated region for block: B:4116:0x4cdf  */
    /* JADX WARN: Removed duplicated region for block: B:4117:0x4ce1  */
    /* JADX WARN: Removed duplicated region for block: B:4120:0x4cea  */
    /* JADX WARN: Removed duplicated region for block: B:4121:0x4ced  */
    /* JADX WARN: Removed duplicated region for block: B:4125:0x4cfe  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:4397:0x5275  */
    /* JADX WARN: Removed duplicated region for block: B:4446:0x5344  */
    /* JADX WARN: Removed duplicated region for block: B:4465:0x537a  */
    /* JADX WARN: Removed duplicated region for block: B:4495:0x53ec  */
    /* JADX WARN: Removed duplicated region for block: B:4499:0x53f4  */
    /* JADX WARN: Removed duplicated region for block: B:4502:0x5409  */
    /* JADX WARN: Removed duplicated region for block: B:4528:0x544e  */
    /* JADX WARN: Removed duplicated region for block: B:4532:0x5459  */
    /* JADX WARN: Removed duplicated region for block: B:4538:0x5469  */
    /* JADX WARN: Removed duplicated region for block: B:4539:0x546b  */
    /* JADX WARN: Removed duplicated region for block: B:4542:0x547c  */
    /* JADX WARN: Removed duplicated region for block: B:4545:0x5483  */
    /* JADX WARN: Removed duplicated region for block: B:4552:0x5492  */
    /* JADX WARN: Removed duplicated region for block: B:4555:0x54a0  */
    /* JADX WARN: Removed duplicated region for block: B:4564:0x54b3  */
    /* JADX WARN: Removed duplicated region for block: B:4568:0x54c6  */
    /* JADX WARN: Removed duplicated region for block: B:4580:0x54fa  */
    /* JADX WARN: Removed duplicated region for block: B:4584:0x5507  */
    /* JADX WARN: Removed duplicated region for block: B:4588:0x550f  */
    /* JADX WARN: Removed duplicated region for block: B:4592:0x5528  */
    /* JADX WARN: Removed duplicated region for block: B:4595:0x5533  */
    /* JADX WARN: Removed duplicated region for block: B:4596:0x5538  */
    /* JADX WARN: Removed duplicated region for block: B:4607:0x556e  */
    /* JADX WARN: Removed duplicated region for block: B:4608:0x5582  */
    /* JADX WARN: Removed duplicated region for block: B:4616:0x55b7  */
    /* JADX WARN: Removed duplicated region for block: B:4622:0x5615  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:4803:0x5b36  */
    /* JADX WARN: Removed duplicated region for block: B:4808:0x5b67  */
    /* JADX WARN: Removed duplicated region for block: B:4812:0x5b7f  */
    /* JADX WARN: Removed duplicated region for block: B:4825:0x5bb9  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x058d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4854:0x5c0b  */
    /* JADX WARN: Removed duplicated region for block: B:4860:0x5c71  */
    /* JADX WARN: Removed duplicated region for block: B:4881:0x5d64  */
    /* JADX WARN: Removed duplicated region for block: B:4889:0x5d86  */
    /* JADX WARN: Removed duplicated region for block: B:4899:0x5db0  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:4926:0x5df3  */
    /* JADX WARN: Removed duplicated region for block: B:4927:0x5df6  */
    /* JADX WARN: Removed duplicated region for block: B:4929:0x5e05  */
    /* JADX WARN: Removed duplicated region for block: B:4943:0x5e6b  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:5021:0x5f69  */
    /* JADX WARN: Removed duplicated region for block: B:5022:0x5f6b  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:5055:0x5ffb A[Catch: Exception -> 0x60bc, TryCatch #31 {Exception -> 0x60bc, blocks: (B:5046:0x5fbd, B:5053:0x5ff0, B:5055:0x5ffb, B:5062:0x601f, B:5066:0x602a, B:5065:0x6024, B:5058:0x6004, B:5059:0x6010, B:5049:0x5fc4, B:5052:0x5fc9), top: B:5708:0x5fbd }] */
    /* JADX WARN: Removed duplicated region for block: B:5059:0x6010 A[Catch: Exception -> 0x60bc, TryCatch #31 {Exception -> 0x60bc, blocks: (B:5046:0x5fbd, B:5053:0x5ff0, B:5055:0x5ffb, B:5062:0x601f, B:5066:0x602a, B:5065:0x6024, B:5058:0x6004, B:5059:0x6010, B:5049:0x5fc4, B:5052:0x5fc9), top: B:5708:0x5fbd }] */
    /* JADX WARN: Removed duplicated region for block: B:5062:0x601f A[Catch: Exception -> 0x60bc, TryCatch #31 {Exception -> 0x60bc, blocks: (B:5046:0x5fbd, B:5053:0x5ff0, B:5055:0x5ffb, B:5062:0x601f, B:5066:0x602a, B:5065:0x6024, B:5058:0x6004, B:5059:0x6010, B:5049:0x5fc4, B:5052:0x5fc9), top: B:5708:0x5fbd }] */
    /* JADX WARN: Removed duplicated region for block: B:5113:0x60c9  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:5123:0x60e4  */
    /* JADX WARN: Removed duplicated region for block: B:5136:0x615f A[Catch: Exception -> 0x6172, TRY_LEAVE, TryCatch #1 {Exception -> 0x6172, blocks: (B:5132:0x613c, B:5133:0x6141, B:5135:0x6149, B:5136:0x615f), top: B:5651:0x613c }] */
    /* JADX WARN: Removed duplicated region for block: B:5146:0x6180  */
    /* JADX WARN: Removed duplicated region for block: B:5147:0x6181 A[Catch: Exception -> 0x61f2, TryCatch #0 {Exception -> 0x61f2, blocks: (B:5144:0x617a, B:5148:0x618b, B:5149:0x61c1, B:5153:0x61cc, B:5154:0x61d0, B:5157:0x61e0, B:5159:0x61e4, B:5160:0x61ec, B:5147:0x6181), top: B:5649:0x617a }] */
    /* JADX WARN: Removed duplicated region for block: B:5152:0x61cb  */
    /* JADX WARN: Removed duplicated region for block: B:5153:0x61cc A[Catch: Exception -> 0x61f2, TryCatch #0 {Exception -> 0x61f2, blocks: (B:5144:0x617a, B:5148:0x618b, B:5149:0x61c1, B:5153:0x61cc, B:5154:0x61d0, B:5157:0x61e0, B:5159:0x61e4, B:5160:0x61ec, B:5147:0x6181), top: B:5649:0x617a }] */
    /* JADX WARN: Removed duplicated region for block: B:5154:0x61d0 A[Catch: Exception -> 0x61f2, TryCatch #0 {Exception -> 0x61f2, blocks: (B:5144:0x617a, B:5148:0x618b, B:5149:0x61c1, B:5153:0x61cc, B:5154:0x61d0, B:5157:0x61e0, B:5159:0x61e4, B:5160:0x61ec, B:5147:0x6181), top: B:5649:0x617a }] */
    /* JADX WARN: Removed duplicated region for block: B:515:0x061a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5167:0x61fb  */
    /* JADX WARN: Removed duplicated region for block: B:5177:0x621c  */
    /* JADX WARN: Removed duplicated region for block: B:5183:0x6236  */
    /* JADX WARN: Removed duplicated region for block: B:5184:0x6239  */
    /* JADX WARN: Removed duplicated region for block: B:5206:0x6285  */
    /* JADX WARN: Removed duplicated region for block: B:5210:0x6298  */
    /* JADX WARN: Removed duplicated region for block: B:5222:0x62bb  */
    /* JADX WARN: Removed duplicated region for block: B:5223:0x62bd  */
    /* JADX WARN: Removed duplicated region for block: B:5226:0x62da  */
    /* JADX WARN: Removed duplicated region for block: B:5227:0x62dc  */
    /* JADX WARN: Removed duplicated region for block: B:5231:0x62e9  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:5250:0x6340  */
    /* JADX WARN: Removed duplicated region for block: B:5255:0x635c  */
    /* JADX WARN: Removed duplicated region for block: B:5256:0x635e  */
    /* JADX WARN: Removed duplicated region for block: B:5263:0x636a  */
    /* JADX WARN: Removed duplicated region for block: B:5271:0x6387  */
    /* JADX WARN: Removed duplicated region for block: B:5274:0x638d  */
    /* JADX WARN: Removed duplicated region for block: B:5287:0x63ab  */
    /* JADX WARN: Removed duplicated region for block: B:5293:0x63c5  */
    /* JADX WARN: Removed duplicated region for block: B:5308:0x63f6  */
    /* JADX WARN: Removed duplicated region for block: B:5320:0x6430  */
    /* JADX WARN: Removed duplicated region for block: B:5321:0x6432  */
    /* JADX WARN: Removed duplicated region for block: B:5327:0x6453  */
    /* JADX WARN: Removed duplicated region for block: B:5328:0x6459  */
    /* JADX WARN: Removed duplicated region for block: B:5338:0x648f  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0667  */
    /* JADX WARN: Removed duplicated region for block: B:5407:0x6520  */
    /* JADX WARN: Removed duplicated region for block: B:5408:0x6522  */
    /* JADX WARN: Removed duplicated region for block: B:5415:0x6533  */
    /* JADX WARN: Removed duplicated region for block: B:541:0x0683  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:5436:0x6567  */
    /* JADX WARN: Removed duplicated region for block: B:5441:0x6577  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:5501:0x6627  */
    /* JADX WARN: Removed duplicated region for block: B:5525:0x665f  */
    /* JADX WARN: Removed duplicated region for block: B:5532:0x6672  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x06a9  */
    /* JADX WARN: Removed duplicated region for block: B:5545:0x66aa  */
    /* JADX WARN: Removed duplicated region for block: B:5600:0x684c  */
    /* JADX WARN: Removed duplicated region for block: B:5609:0x6885  */
    /* JADX WARN: Removed duplicated region for block: B:5610:0x6886 A[Catch: Exception -> 0x68eb, TryCatch #5 {Exception -> 0x68eb, blocks: (B:5607:0x686b, B:5635:0x68e8, B:5610:0x6886, B:5616:0x68a0, B:5619:0x68a9, B:5622:0x68b2, B:5625:0x68bb, B:5628:0x68c8, B:5631:0x68d7, B:5613:0x6893), top: B:5659:0x686b }] */
    /* JADX WARN: Removed duplicated region for block: B:5627:0x68c7  */
    /* JADX WARN: Removed duplicated region for block: B:5628:0x68c8 A[Catch: Exception -> 0x68eb, TryCatch #5 {Exception -> 0x68eb, blocks: (B:5607:0x686b, B:5635:0x68e8, B:5610:0x6886, B:5616:0x68a0, B:5619:0x68a9, B:5622:0x68b2, B:5625:0x68bb, B:5628:0x68c8, B:5631:0x68d7, B:5613:0x6893), top: B:5659:0x686b }] */
    /* JADX WARN: Removed duplicated region for block: B:5638:0x6906  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x06c6  */
    /* JADX WARN: Removed duplicated region for block: B:5688:0x495d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5691:0x47a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5705:0x0fc4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5714:0x021b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:573:0x06ec A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5818:0x0534 A[EDGE_INSN: B:5818:0x0534->B:471:0x0534 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:592:0x0722  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x072e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:603:0x076d  */
    /* JADX WARN: Removed duplicated region for block: B:604:0x076f  */
    /* JADX WARN: Removed duplicated region for block: B:609:0x077a  */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:654:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:655:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x0891  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x08cf  */
    /* JADX WARN: Removed duplicated region for block: B:669:0x08db  */
    /* JADX WARN: Removed duplicated region for block: B:673:0x08e6  */
    /* JADX WARN: Removed duplicated region for block: B:674:0x08ed  */
    /* JADX WARN: Removed duplicated region for block: B:679:0x0933  */
    /* JADX WARN: Removed duplicated region for block: B:807:0x0aca  */
    /* JADX WARN: Removed duplicated region for block: B:810:0x0ad5  */
    /* JADX WARN: Removed duplicated region for block: B:842:0x0b1a  */
    /* JADX WARN: Removed duplicated region for block: B:850:0x0b4d  */
    /* JADX WARN: Removed duplicated region for block: B:853:0x0b57  */
    /* JADX WARN: Removed duplicated region for block: B:885:0x0bcc  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x0be2  */
    /* JADX WARN: Removed duplicated region for block: B:903:0x0bf5  */
    /* JADX WARN: Removed duplicated region for block: B:914:0x0c0d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:933:0x0c3d  */
    /* JADX WARN: Removed duplicated region for block: B:939:0x0c48 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:951:0x0c64  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:971:0x0cb7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:977:0x0cc7  */
    /* JADX WARN: Removed duplicated region for block: B:984:0x0ce3  */
    /* JADX WARN: Removed duplicated region for block: B:991:0x0d0c  */
    /* JADX WARN: Type inference failed for: r0v1521, types: [org.telegram.messenger.FileLoader] */
    /* JADX WARN: Type inference failed for: r0v1527, types: [org.telegram.ui.Components.AnimatedFloat] */
    /* JADX WARN: Type inference failed for: r0v1530, types: [org.telegram.ui.Components.AnimatedFloat] */
    /* JADX WARN: Type inference failed for: r0v204, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v221, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v962, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37, types: [int] */
    /* JADX WARN: Type inference failed for: r12v38, types: [int] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44, types: [int] */
    /* JADX WARN: Type inference failed for: r12v54, types: [int] */
    /* JADX WARN: Type inference failed for: r12v55 */
    /* JADX WARN: Type inference failed for: r12v56, types: [int] */
    /* JADX WARN: Type inference failed for: r12v57, types: [int] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v148 */
    /* JADX WARN: Type inference failed for: r13v149 */
    /* JADX WARN: Type inference failed for: r13v159 */
    /* JADX WARN: Type inference failed for: r13v160 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v261 */
    /* JADX WARN: Type inference failed for: r13v262 */
    /* JADX WARN: Type inference failed for: r13v349 */
    /* JADX WARN: Type inference failed for: r13v350 */
    /* JADX WARN: Type inference failed for: r13v367 */
    /* JADX WARN: Type inference failed for: r13v368 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v70 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v22, types: [int] */
    /* JADX WARN: Type inference failed for: r19v23 */
    /* JADX WARN: Type inference failed for: r1v1272 */
    /* JADX WARN: Type inference failed for: r1v142 */
    /* JADX WARN: Type inference failed for: r1v143, types: [org.telegram.tgnet.TLRPC$Document, java.lang.Object, org.telegram.tgnet.TLRPC$PhotoSize] */
    /* JADX WARN: Type inference failed for: r1v171 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v548, types: [org.telegram.tgnet.TLRPC$InputStickerSet] */
    /* JADX WARN: Type inference failed for: r2v843 */
    /* JADX WARN: Type inference failed for: r2v844 */
    /* JADX WARN: Type inference failed for: r3v643, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v647 */
    /* JADX WARN: Type inference failed for: r3v648 */
    /* JADX WARN: Type inference failed for: r3v788 */
    /* JADX WARN: Type inference failed for: r3v789 */
    /* JADX WARN: Type inference failed for: r4v170 */
    /* JADX WARN: Type inference failed for: r4v171 */
    /* JADX WARN: Type inference failed for: r4v540 */
    /* JADX WARN: Type inference failed for: r5v100, types: [java.util.List, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v176 */
    /* JADX WARN: Type inference failed for: r5v610, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v611 */
    /* JADX WARN: Type inference failed for: r5v639 */
    /* JADX WARN: Type inference failed for: r71v1 */
    /* JADX WARN: Type inference failed for: r71v3 */
    /* JADX WARN: Type inference failed for: r9v199, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r9v35, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v52 */
    /* JADX WARN: Type inference failed for: r9v53, types: [int] */
    /* JADX WARN: Type inference failed for: r9v55, types: [int] */
    /* JADX WARN: Type inference failed for: r9v576 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageContent(org.telegram.messenger.MessageObject r75, org.telegram.messenger.MessageObject.GroupedMessages r76, boolean r77, boolean r78) {
        /*
            Method dump skipped, instructions count: 26934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.setMessageContent(org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject$GroupedMessages, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMessageContent$7(TLRPC$User tLRPC$User, int i, TLRPC$Chat tLRPC$Chat, long j) {
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
    public static /* synthetic */ int lambda$setMessageContent$8(PollButton pollButton, PollButton pollButton2) {
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
                FlagSecureReason flagSecureReason = new FlagSecureReason(window, new FlagSecureReason.FlagSecureCondition() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.FlagSecureReason.FlagSecureCondition
                    public final boolean run() {
                        boolean lambda$updateFlagSecure$9;
                        lambda$updateFlagSecure$9 = ChatMessageCell.this.lambda$updateFlagSecure$9();
                        return lambda$updateFlagSecure$9;
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
    public /* synthetic */ boolean lambda$updateFlagSecure$9() {
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

    @Override // org.telegram.p043ui.Cells.BaseCell
    protected boolean onLongPress() {
        boolean z = false;
        z = false;
        int i = 0;
        z = false;
        if (this.isRoundVideo && this.isPlayingRound && MediaController.getInstance().isPlayingMessage(this.currentMessageObject) && ((this.lastTouchX - this.photoImage.getCenterX()) * (this.lastTouchX - this.photoImage.getCenterX())) + ((this.lastTouchY - this.photoImage.getCenterY()) * (this.lastTouchY - this.photoImage.getCenterY())) < (this.photoImage.getImageWidth() / 2.0f) * (this.photoImage.getImageWidth() / 2.0f) && (this.lastTouchX > this.photoImage.getCenterX() + (this.photoImage.getImageWidth() / 4.0f) || this.lastTouchX < this.photoImage.getCenterX() - (this.photoImage.getImageWidth() / 4.0f))) {
            boolean z2 = this.lastTouchX > this.photoImage.getCenterX();
            if (this.videoPlayerRewinder == null) {
                this.videoForwardDrawable = new VideoForwardDrawable(true);
                this.videoPlayerRewinder = new VideoPlayerRewinder() { // from class: org.telegram.ui.Cells.ChatMessageCell.5
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
                        ChatMessageCell.this.videoForwardDrawable.setDelegate(new VideoForwardDrawable.VideoForwardDrawableDelegate() { // from class: org.telegram.ui.Cells.ChatMessageCell.5.1
                            @Override // org.telegram.p043ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
                            public void onAnimationEnd() {
                            }

                            @Override // org.telegram.p043ui.Components.VideoForwardDrawable.VideoForwardDrawableDelegate
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
        Drawable drawable2 = this.nameStatusSelector;
        if (drawable2 != null) {
            drawable2.setState(StateSet.NOTHING);
        }
        Drawable drawable3 = this.nameLayoutSelector;
        if (drawable3 != null) {
            drawable3.setState(StateSet.NOTHING);
        }
        resetCodeSelectors();
        ButtonBounce buttonBounce = this.replyBounce;
        if (buttonBounce != null) {
            buttonBounce.setPressed(false);
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
        this.giveawayMessageCell.setButtonPressed(false);
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
                Drawable drawable4 = this.linkPreviewSelector;
                if (drawable4 != null) {
                    drawable4.setState(StateSet.NOTHING);
                }
            }
            ButtonBounce buttonBounce2 = this.linkPreviewBounce;
            if (buttonBounce2 != null) {
                buttonBounce2.setPressed(false);
            }
            invalidate();
        }
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate != null) {
            if (this.avatarPressed) {
                TLRPC$User tLRPC$User = this.currentUser;
                if (tLRPC$User != null) {
                    if (tLRPC$User.f1749id != 0) {
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
        MessageObject messageObject;
        return (this.links.isEmpty() && this.reactionsLayoutInBubble.isEmpty && ((messageObject = this.currentMessageObject) == null || !messageObject.preview)) ? false : true;
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

    @Override // android.view.View, org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView
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
        if (z) {
            this.quoteHighlight = null;
        }
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

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarPressed() {
        requestDisallowInterceptTouchEvent(true);
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarReleased() {
        requestDisallowInterceptTouchEvent(false);
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public void onSeekBarDrag(float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.audioProgress = f;
        MediaController.getInstance().seekToProgress(this.currentMessageObject, f);
        updatePlayingMessageProgress();
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
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
        int i2 = -AndroidUtilities.m104dp((this.hasLinkPreview ? 10 : 0) + 92);
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateBackgroundBoundsInner && ((i = this.documentAttachType) == 3 || i == 7)) {
            int i3 = this.backgroundWidth;
            int i4 = (int) ((i3 - transitionParams.toDeltaLeft) + transitionParams.toDeltaRight);
            int i5 = (int) ((i3 - transitionParams.deltaLeft) + transitionParams.deltaRight);
            if (this.isRoundVideo && !this.drawBackground) {
                i5 = (int) (i5 + (getVideoTranscriptionProgress() * AndroidUtilities.m104dp(8)));
                i4 += AndroidUtilities.m104dp(8);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (transitionParams2.toDeltaLeft == BitmapDescriptorFactory.HUE_RED && transitionParams2.toDeltaRight == BitmapDescriptorFactory.HUE_RED) {
                i4 = i5;
            }
            SeekBarWaveform seekBarWaveform = this.seekBarWaveform;
            if (seekBarWaveform != null) {
                if (transitionParams2.animateUseTranscribeButton) {
                    seekBarWaveform.setSize(((i5 + i2) - ((int) (AndroidUtilities.m104dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m104dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m104dp(30), i3 + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m104dp(34) : 0), i4 + i2 + (this.useTranscribeButton ? -AndroidUtilities.m104dp(34) : 0));
                } else {
                    seekBarWaveform.setSize(((i5 + i2) - ((int) (AndroidUtilities.m104dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m104dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m104dp(30), (i3 + i2) - ((int) (AndroidUtilities.m104dp(34) * getUseTranscribeButtonProgress())), (i4 + i2) - ((int) (AndroidUtilities.m104dp(34) * getUseTranscribeButtonProgress())));
                }
            }
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.setSize((i5 - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m104dp(34)))) - AndroidUtilities.m104dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 20 : 0)), AndroidUtilities.m104dp(30));
                return;
            }
            return;
        }
        SeekBarWaveform seekBarWaveform2 = this.seekBarWaveform;
        if (seekBarWaveform2 != null) {
            if (transitionParams.animateUseTranscribeButton) {
                seekBarWaveform2.setSize(((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m104dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m104dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m104dp(30), ((this.backgroundWidth + i2) + (!this.useTranscribeButton ? -AndroidUtilities.m104dp(34) : 0)) - AndroidUtilities.m104dp(this.hasLinkPreview ? 10 : 0), this.backgroundWidth + i2 + (this.useTranscribeButton ? -AndroidUtilities.m104dp(34) : 0));
            } else {
                seekBarWaveform2.setSize(((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m104dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m104dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m104dp(30));
            }
        }
        SeekBar seekBar2 = this.seekBar;
        if (seekBar2 != null) {
            seekBar2.setSize((this.backgroundWidth - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m104dp(34)))) - AndroidUtilities.m104dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 20 : 0)), AndroidUtilities.m104dp(30));
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
            this.widthBeforeNewTimeLine = (i3 - AndroidUtilities.m104dp(94)) - ((int) Math.ceil(Theme.chat_audioTimePaint.measureText("00:00")));
            this.availableTimeWidth = i3 - AndroidUtilities.m104dp(18);
            measureTime(messageObject);
            int m104dp = AndroidUtilities.m104dp(174) + this.timeWidth;
            if (!this.hasLinkPreview) {
                this.backgroundWidth = Math.min(i3, m104dp + ((int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatLongDuration((int) d)))));
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
            int m104dp2 = i3 - AndroidUtilities.m104dp(92);
            if (m104dp2 < 0) {
                m104dp2 = AndroidUtilities.m104dp(100);
            }
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicTitle().replace('\n', ' '), Theme.chat_audioTitlePaint, m104dp2 - AndroidUtilities.m104dp(12), TextUtils.TruncateAt.END), Theme.chat_audioTitlePaint, m104dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.songLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                this.songX = -((int) Math.ceil(this.songLayout.getLineLeft(0)));
            }
            StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicAuthor().replace('\n', ' '), Theme.chat_audioPerformerPaint, m104dp2, TextUtils.TruncateAt.END), Theme.chat_audioPerformerPaint, m104dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.performerLayout = staticLayout2;
            if (staticLayout2.getLineCount() > 0) {
                this.performerX = -((int) Math.ceil(this.performerLayout.getLineLeft(0)));
            }
            int m104dp3 = m104dp2 - AndroidUtilities.m104dp(30);
            TextPaint textPaint = Theme.chat_infoPaint;
            int min = Math.min(m104dp3, (int) Math.ceil(textPaint.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min;
            if (min < 0) {
                try {
                    this.infoWidth = AndroidUtilities.m104dp(10);
                } catch (Exception e) {
                    FileLog.m99e(e);
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
            this.widthBeforeNewTimeLine = (this.backgroundWidth - AndroidUtilities.m104dp(86)) - ceil;
            this.availableTimeWidth = this.backgroundWidth - AndroidUtilities.m104dp(28);
            return ceil;
        } else if (MessageObject.isGifDocument(this.documentAttach, messageObject.hasValidGroupId())) {
            this.documentAttachType = 2;
            if (!messageObject.needDrawBluredPreview()) {
                String string = LocaleController.getString("AttachGif", C3632R.string.AttachGif);
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
                i3 += AndroidUtilities.m104dp(30);
            }
            this.documentAttachType = 1;
            String documentFileName = FileLoader.getDocumentFileName(this.documentAttach);
            this.isBackupFile = BackupController.isBackupFileName(documentFileName);
            if (documentFileName.length() == 0) {
                documentFileName = LocaleController.getString("AttachDocument", C3632R.string.AttachDocument);
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
            int m104dp4 = i3 - AndroidUtilities.m104dp(30);
            TextPaint textPaint2 = Theme.chat_infoPaint;
            int min2 = Math.min(m104dp4, (int) Math.ceil(textPaint2.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min2;
            CharSequence ellipsize = TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size) + " " + FileLoader.getDocumentExtension(this.documentAttach), Theme.chat_infoPaint, (float) min2, TextUtils.TruncateAt.END);
            try {
                if (this.infoWidth < 0) {
                    this.infoWidth = AndroidUtilities.m104dp(10);
                }
                this.infoLayout = new StaticLayout(ellipsize, Theme.chat_infoPaint, this.infoWidth + AndroidUtilities.m104dp(6), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } catch (Exception e2) {
                FileLog.m99e(e2);
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

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0060, code lost:
        if (r0.isSmall == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x006e, code lost:
        if (r0.isSmall == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0074, code lost:
        if (r7.isGiveaway() != false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void calcBackgroundWidth(int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.calcBackgroundWidth(int, int, int):void");
    }

    public boolean setHighlightedText(String str) {
        return setHighlightedText(str, false);
    }

    public boolean setHighlightedText(String str, boolean z) {
        String str2;
        String str3;
        int i;
        int i2;
        int i3 = 0;
        if (this.highlightedQuote && !z && TextUtils.isEmpty(str)) {
            return false;
        }
        MessageObject messageObject = this.messageObjectToSet;
        if (messageObject == null) {
            messageObject = this.currentMessageObject;
        }
        this.highlightedQuote = z;
        if (messageObject == null || TextUtils.isEmpty(str)) {
            if (!this.urlPathSelection.isEmpty()) {
                this.linkSelectionBlockNum = -1;
                this.highlightedQuote = false;
                resetUrlPaths();
                invalidate();
            }
            return false;
        }
        if (!z) {
            this.quoteHighlight = null;
        }
        CharSequence charSequence = this.currentCaption;
        if (charSequence != null) {
            str2 = charSequence.toString();
        } else {
            str2 = messageObject.messageOwner.message;
        }
        if (str2 == null || TextUtils.isEmpty(str2)) {
            if (this.urlPathSelection.isEmpty()) {
                return false;
            }
            this.linkSelectionBlockNum = -1;
            this.highlightedQuote = false;
            resetUrlPaths();
            invalidate();
            return false;
        }
        if (z) {
            str3 = str;
        } else {
            str3 = str.toLowerCase();
            str2 = str2.toLowerCase();
        }
        if (z) {
            int indexOf = str2.indexOf(str3);
            i = str3.length();
            i2 = indexOf;
        } else {
            int length = str2.length();
            int i4 = 0;
            i = -1;
            int i5 = -1;
            while (i4 < length) {
                int min = Math.min(str3.length(), length - i4);
                int i6 = i3;
                int i7 = i6;
                while (i6 < min) {
                    boolean z2 = str2.charAt(i4 + i6) == str3.charAt(i6);
                    if (z2) {
                        if (i7 != 0 || i4 == 0 || " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(str2.charAt(i4 - 1)) >= 0) {
                            i7++;
                        } else {
                            z2 = false;
                        }
                    }
                    if (!z2 || i6 == min - 1) {
                        if (i7 > 0 && i7 > i) {
                            i5 = i4;
                            i = i7;
                        }
                        i4++;
                        i3 = 0;
                    } else {
                        i6++;
                    }
                }
                i4++;
                i3 = 0;
            }
            i2 = i5;
        }
        if (i2 == -1) {
            if (this.urlPathSelection.isEmpty()) {
                return false;
            }
            this.linkSelectionBlockNum = -1;
            this.highlightedQuote = false;
            resetUrlPaths();
            invalidate();
            return false;
        }
        if (!z) {
            int length2 = str2.length();
            for (int i8 = i2 + i; i8 < length2 && " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(str2.charAt(i8)) < 0; i8++) {
                i++;
            }
        }
        this.highlightedQuote = z;
        int i9 = i2 + i;
        if (z && this.currentMessagesGroup == null && this.groupedMessagesToSet == null) {
            QuoteHighlight quoteHighlight = this.quoteHighlight;
            if (quoteHighlight != null && quoteHighlight.f1926id == messageObject.getId()) {
                QuoteHighlight quoteHighlight2 = this.quoteHighlight;
                if (quoteHighlight2.start == i2 && quoteHighlight2.end == i9) {
                    return true;
                }
            }
            if (this.captionLayout != null) {
                ViewParent parent = getParent();
                int id = messageObject.getId();
                MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
                this.quoteHighlight = new QuoteHighlight(this, parent, id, textLayoutBlocks.textLayoutBlocks, i2, i9, textLayoutBlocks.textXOffset);
                return true;
            }
            this.quoteHighlight = new QuoteHighlight(this, getParent(), messageObject.getId(), messageObject.textLayoutBlocks, i2, i9, messageObject.textXOffset);
            return true;
        } else if (!TextUtils.isEmpty(this.currentCaption)) {
            MessageObject.TextLayoutBlocks textLayoutBlocks2 = this.captionLayout;
            if (textLayoutBlocks2 == null) {
                this.highlightCaptionToSetStart = i2;
                this.highlightCaptionToSetEnd = i9;
                return true;
            }
            highlight(i2, i9, textLayoutBlocks2.textLayoutBlocks);
            return true;
        } else {
            ArrayList<MessageObject.TextLayoutBlock> arrayList = messageObject.textLayoutBlocks;
            if (arrayList != null) {
                highlight(i2, i9, arrayList);
                return true;
            }
            return true;
        }
    }

    private void highlight(int i, int i2, ArrayList<MessageObject.TextLayoutBlock> arrayList) {
        if (arrayList == null) {
            return;
        }
        int i3 = i2 - i;
        int i4 = 0;
        while (true) {
            if (i4 >= arrayList.size()) {
                break;
            }
            MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i4);
            if (i < textLayoutBlock.charactersOffset || i >= textLayoutBlock.charactersEnd) {
                i4++;
            } else {
                this.linkSelectionBlockNum = i4;
                resetUrlPaths();
                try {
                    LinkPath obtainNewUrlPath = obtainNewUrlPath();
                    obtainNewUrlPath.setCurrentLayout(textLayoutBlock.textLayout, i, BitmapDescriptorFactory.HUE_RED);
                    textLayoutBlock.textLayout.getSelectionPath(i, i2, obtainNewUrlPath);
                    float f = textLayoutBlock.height + textLayoutBlock.padBottom;
                    if (i2 >= textLayoutBlock.charactersOffset + i3) {
                        for (int i5 = i4 + 1; i5 < arrayList.size(); i5++) {
                            MessageObject.TextLayoutBlock textLayoutBlock2 = arrayList.get(i5);
                            int i6 = textLayoutBlock2.charactersEnd - textLayoutBlock2.charactersOffset;
                            LinkPath obtainNewUrlPath2 = obtainNewUrlPath();
                            float f2 = f + textLayoutBlock2.padTop;
                            obtainNewUrlPath2.setCurrentLayout(textLayoutBlock2.textLayout, 0, f2);
                            f = f2 + textLayoutBlock2.height + textLayoutBlock2.padBottom;
                            textLayoutBlock2.textLayout.getSelectionPath(0, i2 - textLayoutBlock2.charactersOffset, obtainNewUrlPath2);
                            if (i2 < (textLayoutBlock.charactersOffset + i6) - 1) {
                                break;
                            }
                        }
                    }
                    if (this.highlightedQuote) {
                        this.isHighlightedAnimated = true;
                        this.highlightProgress = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
                    }
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
                invalidate();
            }
        }
        this.highlightCaptionToSetStart = -1;
        this.highlightCaptionToSetEnd = -1;
    }

    public boolean setHighlightedSpan(CharacterStyle characterStyle) {
        int i;
        int i2;
        int i3;
        int i4;
        MessageObject messageObject = this.messageObjectToSet;
        if (messageObject == null) {
            messageObject = this.currentMessageObject;
        }
        this.highlightedQuote = false;
        if (messageObject == null || messageObject.messageOwner.message == null || characterStyle == null) {
            if (!this.urlPathSelection.isEmpty()) {
                this.linkSelectionBlockNum = -1;
                this.highlightedQuote = false;
                resetUrlPaths();
                invalidate();
            }
            return false;
        }
        if (this.captionLayout != null && !TextUtils.isEmpty(messageObject.caption)) {
            CharSequence charSequence = messageObject.caption;
            if (charSequence instanceof Spannable) {
                Spanned spanned = (Spanned) charSequence;
                CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(0, spanned.length(), CharacterStyle.class);
                if (characterStyleArr != null && characterStyleArr.length > 0) {
                    for (CharacterStyle characterStyle2 : characterStyleArr) {
                        if (characterStyle2 == characterStyle) {
                            i4 = spanned.getSpanStart(characterStyle);
                            i3 = spanned.getSpanEnd(characterStyle);
                            break;
                        }
                    }
                }
                i3 = -1;
                i4 = -1;
                if (i4 >= 0 && i3 >= 0) {
                    int i5 = i3 - i4;
                    for (int i6 = 0; i6 < this.captionLayout.textLayoutBlocks.size(); i6++) {
                        MessageObject.TextLayoutBlock textLayoutBlock = this.captionLayout.textLayoutBlocks.get(i6);
                        if (i4 >= textLayoutBlock.charactersOffset && i4 < textLayoutBlock.charactersEnd) {
                            this.linkSelectionBlockNum = i6;
                            this.highlightedQuote = false;
                            resetUrlPaths();
                            try {
                                LinkPath obtainNewUrlPath = obtainNewUrlPath();
                                obtainNewUrlPath.setCurrentLayout(textLayoutBlock.textLayout, i4, BitmapDescriptorFactory.HUE_RED);
                                textLayoutBlock.textLayout.getSelectionPath(i4, i3, obtainNewUrlPath);
                                if (i3 >= textLayoutBlock.charactersOffset + i5) {
                                    for (int i7 = i6 + 1; i7 < this.captionLayout.textLayoutBlocks.size(); i7++) {
                                        MessageObject.TextLayoutBlock textLayoutBlock2 = this.captionLayout.textLayoutBlocks.get(i7);
                                        int i8 = textLayoutBlock2.charactersEnd - textLayoutBlock2.charactersOffset;
                                        LinkPath obtainNewUrlPath2 = obtainNewUrlPath();
                                        obtainNewUrlPath2.setCurrentLayout(textLayoutBlock2.textLayout, 0, textLayoutBlock2.height);
                                        textLayoutBlock2.textLayout.getSelectionPath(0, i3 - textLayoutBlock2.charactersOffset, obtainNewUrlPath2);
                                        if (i3 < (textLayoutBlock.charactersOffset + i8) - 1) {
                                            break;
                                        }
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.m99e(e);
                            }
                            invalidate();
                            return true;
                        }
                    }
                }
            }
        }
        CharSequence charSequence2 = messageObject.messageText;
        if ((charSequence2 instanceof Spanned) && messageObject.textLayoutBlocks != null) {
            Spanned spanned2 = (Spanned) charSequence2;
            CharacterStyle[] characterStyleArr2 = (CharacterStyle[]) spanned2.getSpans(0, spanned2.length(), CharacterStyle.class);
            if (characterStyleArr2 != null && characterStyleArr2.length > 0) {
                for (CharacterStyle characterStyle3 : characterStyleArr2) {
                    if (characterStyle3 == characterStyle) {
                        i2 = spanned2.getSpanStart(characterStyle);
                        i = spanned2.getSpanEnd(characterStyle);
                        break;
                    }
                }
            }
            i = -1;
            i2 = -1;
            if (i2 >= 0 && i >= 0) {
                int i9 = i - i2;
                for (int i10 = 0; i10 < messageObject.textLayoutBlocks.size(); i10++) {
                    MessageObject.TextLayoutBlock textLayoutBlock3 = messageObject.textLayoutBlocks.get(i10);
                    if (i2 >= textLayoutBlock3.charactersOffset && i2 < textLayoutBlock3.charactersEnd) {
                        this.linkSelectionBlockNum = i10;
                        this.highlightedQuote = false;
                        resetUrlPaths();
                        try {
                            LinkPath obtainNewUrlPath3 = obtainNewUrlPath();
                            obtainNewUrlPath3.setCurrentLayout(textLayoutBlock3.textLayout, i2, BitmapDescriptorFactory.HUE_RED);
                            textLayoutBlock3.textLayout.getSelectionPath(i2, i, obtainNewUrlPath3);
                            if (i >= textLayoutBlock3.charactersOffset + i9) {
                                for (int i11 = i10 + 1; i11 < messageObject.textLayoutBlocks.size(); i11++) {
                                    MessageObject.TextLayoutBlock textLayoutBlock4 = messageObject.textLayoutBlocks.get(i11);
                                    int i12 = textLayoutBlock4.charactersEnd - textLayoutBlock4.charactersOffset;
                                    LinkPath obtainNewUrlPath4 = obtainNewUrlPath();
                                    obtainNewUrlPath4.setCurrentLayout(textLayoutBlock4.textLayout, 0, textLayoutBlock4.height);
                                    textLayoutBlock4.textLayout.getSelectionPath(0, i - textLayoutBlock4.charactersOffset, obtainNewUrlPath4);
                                    if (i < (textLayoutBlock3.charactersOffset + i12) - 1) {
                                        break;
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m99e(e2);
                        }
                        invalidate();
                        return true;
                    }
                }
            }
        }
        if (!this.urlPathSelection.isEmpty()) {
            this.linkSelectionBlockNum = -1;
            this.highlightedQuote = false;
            resetUrlPaths();
            invalidate();
        }
        return false;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        if (drawable == this.selectorDrawable[2] || super.verifyDrawable(drawable)) {
            return true;
        }
        Drawable[] drawableArr = this.selectorDrawable;
        return drawable == drawableArr[0] || drawable == drawableArr[1] || drawable == this.linkPreviewSelector || drawable == this.nameLayoutSelector || drawable == this.replySelector;
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
            int m104dp = this.backgroundWidth - AndroidUtilities.m104dp(91);
            this.docTitleLayout = new StaticLayout(TextUtils.ellipsize(LocaleController.getString("AttachLiveLocation", C3632R.string.AttachLiveLocation), Theme.chat_locationTitlePaint, m104dp, TextUtils.TruncateAt.END), Theme.chat_locationTitlePaint, m104dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
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
            int m104dp = (groupedMessagePosition.flags & 2) == 0 ? 0 + AndroidUtilities.m104dp(4) : 0;
            return (groupedMessagePosition.flags & 1) == 0 ? m104dp + AndroidUtilities.m104dp(4) : m104dp;
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
            ReplyMessageLine replyMessageLine = this.linkLine;
            if (replyMessageLine != null) {
                themedColor = replyMessageLine.getColor();
            } else {
                themedColor = getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outPreviewInstantText : Theme.key_chat_inPreviewInstantText);
            }
        }
        Drawable[] drawableArr = this.selectorDrawable;
        if (drawableArr[i] == null) {
            final Paint paint = new Paint(1);
            paint.setColor(-1);
            Drawable drawable = new Drawable() { // from class: org.telegram.ui.Cells.ChatMessageCell.6
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
                                        float m104dp = AndroidUtilities.m104dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i4 + 1] = m104dp;
                                        fArr[i4] = m104dp;
                                    } else if (i3 != 3 || !z) {
                                        if ((ChatMessageCell.this.mediaBackground || ChatMessageCell.this.pinnedBottom) && (i3 == 2 || i3 == 3)) {
                                            float[] fArr2 = ChatMessageCell.radii;
                                            int i5 = i3 * 2;
                                            float[] fArr3 = ChatMessageCell.radii;
                                            int i6 = i5 + 1;
                                            float m104dp2 = AndroidUtilities.m104dp(ChatMessageCell.this.pinnedBottom ? Math.min(5, SharedConfig.bubbleRadius) : SharedConfig.bubbleRadius);
                                            fArr3[i6] = m104dp2;
                                            fArr2[i5] = m104dp2;
                                        }
                                    } else {
                                        float[] fArr4 = ChatMessageCell.radii;
                                        int i7 = i3 * 2;
                                        float m104dp3 = AndroidUtilities.m104dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i7 + 1] = m104dp3;
                                        fArr4[i7] = m104dp3;
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
                                    this.path.moveTo(this.rect.left + AndroidUtilities.m104dp(6), this.rect.top);
                                    this.path.lineTo(this.rect.left + AndroidUtilities.m104dp(6), (this.rect.bottom - AndroidUtilities.m104dp(6)) - AndroidUtilities.m104dp(5));
                                    RectF rectF = AndroidUtilities.rectTmp;
                                    rectF.set(this.rect.left + AndroidUtilities.m104dp(-7), this.rect.bottom - AndroidUtilities.m104dp(23), this.rect.left + AndroidUtilities.m104dp(6), this.rect.bottom);
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
                        float m104dp4 = ChatMessageCell.this.selectorDrawableMaskType[i] == 0 ? AndroidUtilities.m104dp(6) : 0.0f;
                        if (ChatMessageCell.this.selectorDrawableMaskType[i] == 0) {
                            f = AndroidUtilities.m104dp(6);
                        }
                        canvas.drawRoundRect(rectF4, m104dp4, f, paint);
                        return;
                    }
                    canvas.drawCircle(this.rect.centerX(), this.rect.centerY(), AndroidUtilities.m104dp(ChatMessageCell.this.selectorDrawableMaskType[i] == 3 ? 16 : 20), paint);
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
            this.instantWidth = AndroidUtilities.m104dp(33);
            int i = this.drawInstantViewType;
            if (i == 12) {
                string = LocaleController.getString("OpenChannelPost", C3632R.string.OpenChannelPost);
            } else if (i == 1) {
                string = LocaleController.getString("OpenChannel", C3632R.string.OpenChannel);
            } else if (i == 13) {
                string = LocaleController.getString("SendMessage", C3632R.string.SendMessage).toUpperCase();
            } else if (i == 10) {
                string = LocaleController.getString("OpenBot", C3632R.string.OpenBot);
            } else if (i == 2) {
                string = LocaleController.getString("OpenGroup", C3632R.string.OpenGroup);
            } else if (i == 3) {
                string = LocaleController.getString("OpenMessage", C3632R.string.OpenMessage);
            } else if (i == 5) {
                string = LocaleController.getString("ViewContact", C3632R.string.ViewContact);
            } else if (i == 6) {
                string = LocaleController.getString("OpenBackground", C3632R.string.OpenBackground);
            } else if (i == 7) {
                string = LocaleController.getString("OpenTheme", C3632R.string.OpenTheme);
            } else if (i == 8) {
                if (this.pollVoted || this.pollClosed) {
                    string = LocaleController.getString("PollViewResults", C3632R.string.PollViewResults);
                } else {
                    string = LocaleController.getString("PollSubmitVotes", C3632R.string.PollSubmitVotes);
                }
            } else if (i == 9 || i == 11) {
                TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) MessageObject.getMedia(this.currentMessageObject.messageOwner).webpage;
                if (tLRPC$TL_webPage != null && tLRPC$TL_webPage.url.contains("voicechat=")) {
                    string = LocaleController.getString("VoipGroupJoinAsSpeaker", C3632R.string.VoipGroupJoinAsSpeaker);
                } else {
                    string = LocaleController.getString("VoipGroupJoinAsLinstener", C3632R.string.VoipGroupJoinAsLinstener);
                }
            } else if (i == 14) {
                string = LocaleController.getString("ViewChatList", C3632R.string.ViewChatList).toUpperCase();
            } else if (i == 15) {
                string = LocaleController.getString(C3632R.string.BotWebAppInstantViewOpen).toUpperCase();
            } else if (i == 16) {
                string = LocaleController.getString("OpenLink").toUpperCase();
            } else if (i == 17) {
                string = LocaleController.getString("ViewStory").toUpperCase();
            } else if (i == 18) {
                string = LocaleController.getString("BoostLinkButton", C3632R.string.BoostLinkButton);
            } else if (i == 19) {
                string = LocaleController.getString("BoostingHowItWork", C3632R.string.BoostingHowItWork);
            } else if (i == 20) {
                string = LocaleController.getString(C3632R.string.OpenGift);
            } else {
                string = LocaleController.getString(C3632R.string.InstantView);
            }
            if (this.currentMessageObject.isSponsored() && this.backgroundWidth < (measureText = (int) (Theme.chat_instantViewPaint.measureText(string) + AndroidUtilities.m104dp(75)))) {
                this.backgroundWidth = measureText;
            }
            int m104dp = this.backgroundWidth - AndroidUtilities.m104dp(75);
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(string, Theme.chat_instantViewPaint, m104dp, TextUtils.TruncateAt.END), Theme.chat_instantViewPaint, m104dp + AndroidUtilities.m104dp(2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.instantViewLayout = staticLayout;
            int lineCount = staticLayout.getLineCount();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.instantViewLayoutWidth = lineCount > 0 ? this.instantViewLayout.getLineWidth(0) : 0.0f;
            if (this.instantViewLayout.getLineCount() > 0) {
                f = this.instantViewLayout.getLineLeft(0);
            }
            this.instantViewLayoutLeft = f;
            this.instantWidth = this.backgroundWidth - AndroidUtilities.m104dp(this.drawInstantViewType != 8 ? 34 : 13);
            int m104dp2 = this.totalHeight + AndroidUtilities.m104dp(46);
            this.totalHeight = m104dp2;
            if (this.currentMessageObject.type == 12) {
                this.totalHeight = m104dp2 + AndroidUtilities.m104dp(14);
            }
            if (this.currentMessageObject.isSponsored()) {
                this.totalHeight += AndroidUtilities.m104dp(2);
            }
            StaticLayout staticLayout2 = this.instantViewLayout;
            if (staticLayout2 == null || staticLayout2.getLineCount() <= 0) {
                return;
            }
            this.instantTextX = (((int) (this.instantWidth - Math.ceil(this.instantViewLayout.getLineWidth(0)))) / 2) + (this.drawInstantViewType == 0 ? AndroidUtilities.m104dp(8) : 0);
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
        if (messageObject3 == null || !messageObject3.isForwardHidden) {
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
            if (i < AndroidUtilities.m104dp(320)) {
                i = AndroidUtilities.m104dp(320);
            }
            return parentWidth - i;
        }
        return parentWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getExtraTextX() {
        int i = SharedConfig.bubbleRadius;
        if (i >= 15) {
            return AndroidUtilities.m104dp(2);
        }
        if (i >= 11) {
            return AndroidUtilities.m104dp(1);
        }
        return 0;
    }

    private int getExtraTimeX() {
        int i;
        if (!this.currentMessageObject.isOutOwner() && ((!this.mediaBackground || this.captionLayout != null) && (i = SharedConfig.bubbleRadius) > 11)) {
            return AndroidUtilities.m105dp((i - 11) / 1.5f);
        }
        if (!this.currentMessageObject.isOutOwner() && this.isPlayingRound && this.isAvatarVisible && this.currentMessageObject.type == 5) {
            return (int) ((AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int m104dp;
        int m104dp2;
        MessageObject messageObject;
        int i7;
        int m104dp3;
        int i8;
        int i9;
        int m104dp4;
        int m104dp5;
        int m104dp6;
        int i10;
        int m104dp7;
        int i11;
        int i12;
        int m104dp8;
        int m104dp9;
        if (this.currentMessageObject == null) {
            return;
        }
        int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
        if (this.lastSize != measuredHeight || !this.wasLayout) {
            this.layoutWidth = getMeasuredWidth();
            this.layoutHeight = getMeasuredHeight() - this.substractBackgroundHeight;
            if (this.timeTextWidth < 0) {
                this.timeTextWidth = AndroidUtilities.m104dp(10);
            }
            if (this.currentTimeString != null) {
                this.timeLayout = new StaticLayout(this.currentTimeString, Theme.chat_timePaint, this.timeTextWidth + AndroidUtilities.m104dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.timeLayout = null;
            }
            if (this.mediaBackground) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m105dp(42.0f);
                } else {
                    this.timeX = (this.backgroundWidth - AndroidUtilities.m104dp(4)) - this.timeWidth;
                    if (this.currentMessageObject.isAnyKindOfSticker()) {
                        this.timeX = Math.max(AndroidUtilities.m104dp(26), this.timeX);
                    }
                    if (this.isAvatarVisible) {
                        this.timeX += AndroidUtilities.m104dp(48);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                    if (groupedMessagePosition != null && (i5 = groupedMessagePosition.leftSpanOffset) != 0) {
                        this.timeX += (int) Math.ceil((i5 / 1000.0f) * getGroupPhotosWidth());
                    }
                    if (this.captionLayout != null && this.currentPosition != null) {
                        this.timeX += AndroidUtilities.m104dp(4);
                    }
                }
                if (SharedConfig.bubbleRadius >= 10 && this.captionLayout == null && (i6 = this.documentAttachType) != 7 && i6 != 6) {
                    this.timeX -= AndroidUtilities.m104dp(2);
                }
            } else if (this.currentMessageObject.isOutOwner()) {
                this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m105dp(38.5f);
            } else {
                this.timeX = (this.backgroundWidth - AndroidUtilities.m104dp(9)) - this.timeWidth;
                if (this.currentMessageObject.isAnyKindOfSticker()) {
                    this.timeX = Math.max(0, this.timeX);
                }
                if (this.isAvatarVisible) {
                    this.timeX += AndroidUtilities.m104dp(48);
                }
                if (shouldDrawTimeOnMedia()) {
                    this.timeX -= AndroidUtilities.m104dp(7);
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
                this.avatarImage.setImageCoords(AndroidUtilities.m104dp(6), this.avatarImage.getImageY(), AndroidUtilities.m104dp(42), AndroidUtilities.m104dp(42));
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
            int m104dp10 = AndroidUtilities.m104dp(10) + this.namesOffset;
            this.textY = m104dp10;
            if (this.linkPreviewAbove) {
                this.linkPreviewY = m104dp10 + AndroidUtilities.m104dp(10);
                this.textY += this.linkPreviewHeight + AndroidUtilities.m104dp(13);
                if (this.drawInstantView && !this.hasInvoicePreview && !this.currentMessageObject.isSponsored() && !this.currentMessageObject.isGiveaway()) {
                    this.textY += AndroidUtilities.m104dp(44);
                }
            } else {
                MessageObject messageObject2 = this.currentMessageObject;
                this.linkPreviewY = m104dp10 + messageObject2.textHeight + AndroidUtilities.m104dp(!messageObject2.isSponsored() ? 10 : 0);
            }
        }
        if (this.isRoundVideo) {
            updatePlayingMessageProgress();
        }
        int i14 = this.documentAttachType;
        if (i14 == 3 || i14 == 7) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(57);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(67);
            } else if (((this.isChat && !this.isThreadPost) || this.currentMessageObject.forceAvatar) && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m104dp(114);
                this.buttonX = AndroidUtilities.m104dp(71);
                this.timeAudioX = AndroidUtilities.m104dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m104dp(66);
                this.buttonX = AndroidUtilities.m104dp(23);
                this.timeAudioX = AndroidUtilities.m104dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m104dp(10);
                this.buttonX += AndroidUtilities.m104dp(10);
                this.timeAudioX += AndroidUtilities.m104dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m104dp(13) + this.namesOffset + this.mediaOffsetY;
            int m104dp11 = AndroidUtilities.m104dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m104dp11;
            RadialProgress2 radialProgress2 = this.radialProgress;
            int i15 = this.buttonX;
            radialProgress2.setProgressRect(i15, m104dp11, AndroidUtilities.m104dp(44) + i15, this.buttonY + AndroidUtilities.m104dp(44));
            updatePlayingMessageProgress();
            if (this.documentAttachType == 7) {
                MessageObject messageObject3 = this.currentMessageObject;
                if (messageObject3.type == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                    if (this.hasGamePreview) {
                        i7 = this.unmovedTextX - AndroidUtilities.m104dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i9 = this.unmovedTextX;
                            m104dp4 = AndroidUtilities.m104dp(1);
                        } else {
                            i9 = this.unmovedTextX;
                            m104dp4 = AndroidUtilities.m104dp(1);
                        }
                        i7 = i9 + m104dp4;
                    }
                    if (this.isSmallImage) {
                        m104dp = i7 + this.backgroundWidth;
                        m104dp2 = AndroidUtilities.m104dp(81);
                        m104dp -= m104dp2;
                    } else {
                        m104dp3 = this.hasInvoicePreview ? -AndroidUtilities.m105dp(6.3f) : AndroidUtilities.m104dp(10);
                        m104dp = i7 + m104dp3;
                    }
                } else {
                    if (messageObject3.isOutOwner()) {
                        if (this.mediaBackground) {
                            m104dp = this.layoutWidth - this.backgroundWidth;
                            m104dp2 = AndroidUtilities.m104dp(3);
                        } else {
                            i7 = this.layoutWidth - this.backgroundWidth;
                            m104dp3 = AndroidUtilities.m104dp(6);
                            m104dp = i7 + m104dp3;
                        }
                    } else {
                        if ((this.isChat || ((messageObject = this.currentMessageObject) != null && messageObject.forceAvatar)) && this.isAvatarVisible && (!this.isPlayingRound || this.currentMessageObject.isVoiceTranscriptionOpen())) {
                            m104dp = AndroidUtilities.m104dp(63);
                        } else {
                            m104dp = AndroidUtilities.m104dp(15);
                        }
                        MessageObject.GroupedMessagePosition groupedMessagePosition2 = this.currentPosition;
                        if (groupedMessagePosition2 != null && !groupedMessagePosition2.edge) {
                            m104dp2 = AndroidUtilities.m104dp(10);
                        }
                    }
                    m104dp -= m104dp2;
                }
                MessageObject.GroupedMessagePosition groupedMessagePosition3 = this.currentPosition;
                if (groupedMessagePosition3 != null) {
                    if ((groupedMessagePosition3.flags & 1) == 0) {
                        m104dp -= AndroidUtilities.m104dp(2);
                    }
                    if (this.currentPosition.leftSpanOffset != 0) {
                        m104dp += (int) Math.ceil((i8 / 1000.0f) * getGroupPhotosWidth());
                    }
                }
                if (this.currentMessageObject.type != 0) {
                    m104dp -= AndroidUtilities.m104dp(2);
                }
                if (this.currentMessageObject.isVoiceTranscriptionOpen()) {
                    m104dp += AndroidUtilities.m104dp(10);
                }
                TransitionParams transitionParams = this.transitionParams;
                if (!transitionParams.imageChangeBoundsTransition || transitionParams.updatePhotoImageX) {
                    transitionParams.updatePhotoImageX = false;
                    ImageReceiver imageReceiver = this.photoImage;
                    imageReceiver.setImageCoords(m104dp, imageReceiver.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                }
            }
        } else if (i14 == 5) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(56);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(67);
            } else if (((this.isChat && !this.isThreadPost) || this.currentMessageObject.forceAvatar) && this.currentMessageObject.needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m104dp(113);
                this.buttonX = AndroidUtilities.m104dp(71);
                this.timeAudioX = AndroidUtilities.m104dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m104dp(65);
                this.buttonX = AndroidUtilities.m104dp(23);
                this.timeAudioX = AndroidUtilities.m104dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m104dp(10);
                this.buttonX += AndroidUtilities.m104dp(10);
                this.timeAudioX += AndroidUtilities.m104dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m104dp(29) + this.namesOffset + this.mediaOffsetY;
            int m104dp12 = AndroidUtilities.m104dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m104dp12;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i16 = this.buttonX;
            radialProgress22.setProgressRect(i16, m104dp12, AndroidUtilities.m104dp(44) + i16, this.buttonY + AndroidUtilities.m104dp(44));
            updatePlayingMessageProgress();
        } else if (i14 == 1 && !this.drawPhotoImage) {
            if (this.currentMessageObject.isOutOwner()) {
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(14);
            } else if (((this.isChat && !this.isThreadPost) || this.currentMessageObject.forceAvatar) && this.currentMessageObject.needDrawAvatar()) {
                this.buttonX = AndroidUtilities.m104dp(71);
            } else {
                this.buttonX = AndroidUtilities.m104dp(23);
            }
            if (this.hasLinkPreview) {
                this.buttonX += AndroidUtilities.m104dp(10);
            }
            int m104dp13 = AndroidUtilities.m104dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m104dp13;
            RadialProgress2 radialProgress23 = this.radialProgress;
            int i17 = this.buttonX;
            radialProgress23.setProgressRect(i17, m104dp13, AndroidUtilities.m104dp(44) + i17, this.buttonY + AndroidUtilities.m104dp(44));
            this.photoImage.setImageCoords(this.buttonX - AndroidUtilities.m104dp(10), this.buttonY - AndroidUtilities.m104dp(10), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
        } else {
            MessageObject messageObject4 = this.currentMessageObject;
            int i18 = messageObject4.type;
            if (i18 == 12) {
                if (messageObject4.isOutOwner()) {
                    m104dp9 = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m104dp(14);
                } else if (((this.isChat && !this.isThreadPost) || this.currentMessageObject.forceAvatar) && this.currentMessageObject.needDrawAvatar()) {
                    m104dp9 = AndroidUtilities.m104dp(72);
                } else {
                    m104dp9 = AndroidUtilities.m104dp(23);
                }
                this.photoImage.setImageCoords(m104dp9, AndroidUtilities.m104dp(13) + this.namesOffset, AndroidUtilities.m104dp(44), AndroidUtilities.m104dp(44));
                return;
            }
            if (i18 == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                if (this.hasGamePreview) {
                    i10 = this.unmovedTextX - AndroidUtilities.m104dp(10);
                } else {
                    if (this.hasInvoicePreview) {
                        i12 = this.unmovedTextX;
                        m104dp8 = AndroidUtilities.m104dp(1);
                    } else {
                        i12 = this.unmovedTextX;
                        m104dp8 = AndroidUtilities.m104dp(1);
                    }
                    i10 = i12 + m104dp8;
                }
                if (this.isSmallImage) {
                    m104dp5 = i10 + this.backgroundWidth;
                    m104dp6 = AndroidUtilities.m104dp(81);
                    m104dp5 -= m104dp6;
                } else {
                    m104dp7 = this.hasInvoicePreview ? -AndroidUtilities.m105dp(6.3f) : AndroidUtilities.m104dp(10);
                    m104dp5 = i10 + m104dp7;
                }
            } else {
                if (messageObject4.isOutOwner()) {
                    if (this.mediaBackground) {
                        m104dp5 = this.layoutWidth - this.backgroundWidth;
                        m104dp6 = AndroidUtilities.m104dp(3);
                    } else {
                        i10 = this.layoutWidth - this.backgroundWidth;
                        m104dp7 = AndroidUtilities.m104dp(6);
                        m104dp5 = i10 + m104dp7;
                    }
                } else {
                    if (this.isChat && this.isAvatarVisible && !this.isPlayingRound) {
                        m104dp5 = AndroidUtilities.m104dp(63);
                    } else {
                        m104dp5 = AndroidUtilities.m104dp(15);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition4 = this.currentPosition;
                    if (groupedMessagePosition4 != null && !groupedMessagePosition4.edge) {
                        m104dp6 = AndroidUtilities.m104dp(10);
                    }
                }
                m104dp5 -= m104dp6;
            }
            MessageObject.GroupedMessagePosition groupedMessagePosition5 = this.currentPosition;
            if (groupedMessagePosition5 != null) {
                if ((groupedMessagePosition5.flags & 1) == 0) {
                    m104dp5 -= AndroidUtilities.m104dp(2);
                }
                if (this.currentPosition.leftSpanOffset != 0) {
                    m104dp5 += (int) Math.ceil((i11 / 1000.0f) * getGroupPhotosWidth());
                }
            }
            if (this.currentMessageObject.type != 0) {
                m104dp5 -= AndroidUtilities.m104dp(2);
            }
            if (this.drawInstantViewType == 17) {
                m104dp5 = (int) (m104dp5 + AndroidUtilities.m104dp(10) + ((this.instantWidth - this.photoImage.getImageWidth()) / 2.0f));
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (!transitionParams2.imageChangeBoundsTransition || transitionParams2.updatePhotoImageX) {
                transitionParams2.updatePhotoImageX = false;
                ImageReceiver imageReceiver2 = this.photoImage;
                imageReceiver2.setImageCoords(m104dp5, imageReceiver2.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
            }
            this.buttonX = (int) (m104dp5 + ((this.photoImage.getImageWidth() - AndroidUtilities.m104dp(48)) / 2.0f));
            int imageY = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m104dp(48)) / 2.0f));
            this.buttonY = imageY;
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i19 = this.buttonX;
            radialProgress24.setProgressRect(i19, imageY, AndroidUtilities.m104dp(48) + i19, this.buttonY + AndroidUtilities.m104dp(48));
            this.deleteProgressRect.set(this.buttonX + AndroidUtilities.m104dp(5), this.buttonY + AndroidUtilities.m104dp(5), this.buttonX + AndroidUtilities.m104dp(43), this.buttonY + AndroidUtilities.m104dp(43));
            int i20 = this.documentAttachType;
            if (i20 == 4 || i20 == 2) {
                this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m104dp(8));
                int imageY2 = (int) (this.photoImage.getImageY() + AndroidUtilities.m104dp(8));
                this.videoButtonY = imageY2;
                RadialProgress2 radialProgress25 = this.videoRadialProgress;
                int i21 = this.videoButtonX;
                radialProgress25.setProgressRect(i21, imageY2, AndroidUtilities.m104dp(24) + i21, this.videoButtonY + AndroidUtilities.m104dp(24));
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawRoundProgress(android.graphics.Canvas):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.updatePollAnimations(long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:431:0x089c  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0992  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0998  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x09b1  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x09b4  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x09e2  */
    /* JADX WARN: Removed duplicated region for block: B:722:0x0ff8  */
    /* JADX WARN: Removed duplicated region for block: B:723:0x0ffb  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x1017  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x101a  */
    /* JADX WARN: Removed duplicated region for block: B:730:0x103f  */
    /* JADX WARN: Removed duplicated region for block: B:731:0x1047  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x107d  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x10c8  */
    /* JADX WARN: Removed duplicated region for block: B:746:0x10d1  */
    /* JADX WARN: Removed duplicated region for block: B:747:0x10dd  */
    /* JADX WARN: Removed duplicated region for block: B:750:0x10ec  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x114d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawContent(android.graphics.Canvas r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 5799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawContent(android.graphics.Canvas, boolean):void");
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
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatMessageCell.this.lambda$startRevealMedia$10(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatMessageCell.this.currentMessageObject.isMediaSpoilersRevealed = true;
                ChatMessageCell.this.invalidate();
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRevealMedia$10(ValueAnimator valueAnimator) {
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.updateReactionLayoutPosition():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:293:0x07e7  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0807  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x082a  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x08a9  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0924  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0a52  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0a64  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0a92  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0ac0  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0bd4  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0c06  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0c24  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0da4  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0e02  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0e0f  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0e53  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawLinkPreview(android.graphics.Canvas r50, float r51) {
        /*
            Method dump skipped, instructions count: 4574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawLinkPreview(android.graphics.Canvas, float):void");
    }

    private float isSmallImage() {
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateSmallImage) {
            boolean z = this.isSmallImage;
            float f = transitionParams.animateChangeProgress;
            return z ? f : 1.0f - f;
        } else if (this.isSmallImage) {
            return 1.0f;
        } else {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldDrawMenuDrawable() {
        return (this.currentMessagesGroup == null || (this.currentPosition.flags & 4) != 0) && !this.hasLinkPreview;
    }

    private void drawBotButtons(Canvas canvas, ArrayList<BotButton> arrayList, int i) {
        int m104dp;
        Drawable themedDrawable;
        ChatMessageCellDelegate chatMessageCellDelegate;
        char c = 7;
        int i2 = 10;
        if (this.currentMessageObject.isOutOwner()) {
            m104dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m104dp(10);
        } else {
            m104dp = this.backgroundDrawableLeft + AndroidUtilities.m104dp((this.mediaBackground || this.drawPinnedBottom) ? 1 : 7);
        }
        int i3 = 2;
        float m104dp2 = (this.layoutHeight - AndroidUtilities.m104dp(2)) + this.transitionParams.deltaBottom;
        float f = 0.0f;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            BotButton botButton = arrayList.get(i4);
            float f2 = botButton.f1792y + botButton.height;
            if (f2 > f) {
                f = f2;
            }
        }
        this.rect.set(BitmapDescriptorFactory.HUE_RED, m104dp2, getMeasuredWidth(), f + m104dp2);
        if (i != 255) {
            canvas.saveLayerAlpha(this.rect, i, 31);
        } else {
            canvas.save();
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            BotButton botButton2 = arrayList.get(i5);
            float m104dp3 = ((botButton2.f1792y + this.layoutHeight) - AndroidUtilities.m104dp(i3)) + this.transitionParams.deltaBottom;
            float pressScale = botButton2.getPressScale();
            this.rect.set(botButton2.f1791x + m104dp, m104dp3, botButton2.f1791x + m104dp + botButton2.width, botButton2.height + m104dp3);
            canvas.save();
            if (pressScale != 1.0f) {
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            }
            applyServiceShaderMatrix();
            Arrays.fill(this.botButtonRadii, AndroidUtilities.m105dp(Math.min(6.75f, SharedConfig.bubbleRadius)));
            if (botButton2.hasPositionFlag(9)) {
                float[] fArr = this.botButtonRadii;
                float m104dp4 = AndroidUtilities.m104dp(SharedConfig.bubbleRadius);
                fArr[c] = m104dp4;
                fArr[6] = m104dp4;
            }
            if (botButton2.hasPositionFlag(i2)) {
                float[] fArr2 = this.botButtonRadii;
                float m104dp5 = AndroidUtilities.m104dp(SharedConfig.bubbleRadius);
                fArr2[5] = m104dp5;
                fArr2[4] = m104dp5;
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
                int i7 = (int) m104dp3;
                botButton2.selectorDrawable.setBounds(botButton2.f1791x + m104dp, i7, botButton2.f1791x + m104dp + botButton2.width, botButton2.height + i7);
                botButton2.selectorDrawable.setAlpha(255);
                botButton2.selectorDrawable.draw(canvas);
            }
            canvas.restore();
            canvas.save();
            i3 = 2;
            canvas.translate(botButton2.f1791x + m104dp + AndroidUtilities.m104dp(5), ((AndroidUtilities.m104dp(44) - botButton2.title.getLineBottom(botButton2.title.getLineCount() - 1)) / 2) + m104dp3);
            botButton2.title.draw(canvas);
            canvas.restore();
            if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonWebView)) {
                if (botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) {
                    if (botButton2.isInviteButton) {
                        themedDrawable = getThemedDrawable("drawable_botInvite");
                    } else {
                        themedDrawable = getThemedDrawable("drawableBotLink");
                    }
                    BaseCell.setDrawableBounds(themedDrawable, (((botButton2.f1791x + botButton2.width) - AndroidUtilities.m104dp(3)) - themedDrawable.getIntrinsicWidth()) + m104dp, m104dp3 + AndroidUtilities.m104dp(3));
                    themedDrawable.draw(canvas);
                } else if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonSwitchInline) && !(botButton2.button instanceof TLRPC$TL_keyboardButtonRequestPeer)) {
                    if (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) {
                        BaseCell.setDrawableBounds(Theme.chat_botCardDrawable, (((botButton2.f1791x + botButton2.width) - AndroidUtilities.m104dp(5)) - Theme.chat_botCardDrawable.getIntrinsicWidth()) + m104dp, m104dp3 + AndroidUtilities.m104dp(4));
                        Theme.chat_botCardDrawable.draw(canvas);
                    }
                } else {
                    Drawable themedDrawable2 = getThemedDrawable("drawableBotInline");
                    BaseCell.setDrawableBounds(themedDrawable2, (((botButton2.f1791x + botButton2.width) - AndroidUtilities.m104dp(3)) - themedDrawable2.getIntrinsicWidth()) + m104dp, m104dp3 + AndroidUtilities.m104dp(3));
                    themedDrawable2.draw(canvas);
                }
            } else {
                Drawable themedDrawable3 = getThemedDrawable("drawableBotWebView");
                BaseCell.setDrawableBounds(themedDrawable3, (((botButton2.f1791x + botButton2.width) - AndroidUtilities.m104dp(3)) - themedDrawable3.getIntrinsicWidth()) + m104dp, m104dp3 + AndroidUtilities.m104dp(3));
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

    public void layoutTextXY(boolean z) {
        int m104dp;
        int i;
        if (this.currentMessageObject.isOutOwner()) {
            this.textX = (z ? (int) (this.backgroundDrawableLeft + this.transitionParams.deltaLeft) : getCurrentBackgroundLeft()) + AndroidUtilities.m104dp(11) + getExtraTextX();
        } else {
            int currentBackgroundLeft = z ? (int) (this.backgroundDrawableLeft + this.transitionParams.deltaLeft) : getCurrentBackgroundLeft();
            if (this.currentMessageObject.type == 19) {
                m104dp = 0;
            } else {
                m104dp = AndroidUtilities.m104dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 11);
            }
            this.textX = currentBackgroundLeft + m104dp + getExtraTextX();
        }
        if (this.hasGamePreview) {
            this.textX += AndroidUtilities.m104dp(11);
            int m104dp2 = AndroidUtilities.m104dp(14) + this.namesOffset;
            this.textY = m104dp2;
            StaticLayout staticLayout = this.siteNameLayout;
            if (staticLayout != null) {
                this.textY = m104dp2 + staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
            }
        } else if (this.hasInvoicePreview) {
            int m104dp3 = AndroidUtilities.m104dp(14) + this.namesOffset;
            this.textY = m104dp3;
            StaticLayout staticLayout2 = this.siteNameLayout;
            if (staticLayout2 != null) {
                this.textY = m104dp3 + staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
            }
        } else if (this.currentMessageObject.type == 19) {
            this.textY = AndroidUtilities.m104dp(6) + this.namesOffset;
            if (!this.currentMessageObject.isOut()) {
                this.textX = getCurrentBackgroundLeft();
            } else {
                this.textX -= AndroidUtilities.m104dp(4);
            }
        } else {
            int m104dp4 = AndroidUtilities.m104dp(8) + this.namesOffset;
            this.textY = m104dp4;
            if (this.currentMessageObject.hasCodeAtTop && (i = SharedConfig.bubbleRadius) > 10) {
                this.textY = m104dp4 + AndroidUtilities.m104dp(i >= 15 ? 2 : 1);
            }
            if (this.currentMessageObject.hasCodeAtTop && this.namesOffset > 0) {
                this.textY += AndroidUtilities.m104dp(5);
            }
        }
        if (this.linkPreviewAbove) {
            this.linkPreviewY = this.textY + AndroidUtilities.m104dp(10);
            this.textY += this.linkPreviewHeight + AndroidUtilities.m104dp(13);
            if (this.drawInstantView && !this.hasInvoicePreview && !this.currentMessageObject.isSponsored() && !this.currentMessageObject.isGiveaway()) {
                this.textY += AndroidUtilities.m104dp(44);
            }
        } else {
            int i2 = this.textY;
            MessageObject messageObject = this.currentMessageObject;
            this.linkPreviewY = i2 + messageObject.textHeight + AndroidUtilities.m104dp(messageObject.isSponsored() ? 0 : 10);
        }
        this.unmovedTextX = this.textX;
        if (this.currentMessageObject.textXOffset == BitmapDescriptorFactory.HUE_RED || this.replyNameLayout == null) {
            return;
        }
        int m104dp5 = this.backgroundWidth - AndroidUtilities.m104dp(31);
        MessageObject messageObject2 = this.currentMessageObject;
        int i3 = m104dp5 - messageObject2.textWidth;
        if (!this.hasNewLineForTime) {
            i3 -= this.timeWidth + AndroidUtilities.m104dp((messageObject2.isOutOwner() ? 20 : 0) + 4);
        }
        if (i3 > 0) {
            this.textX += i3 - getExtraTimeX();
        }
    }

    public void drawMessageText(Canvas canvas) {
        float f;
        int i;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        int i2 = this.textY;
        float f2 = i2;
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateText) {
            float f3 = transitionParams.animateFromTextY;
            float f4 = transitionParams.animateChangeProgress;
            f2 = (f3 * (1.0f - f4)) + (i2 * f4);
        }
        float f5 = f2;
        float f6 = transitionParams.animateChangeProgress;
        if (f6 != 1.0f && transitionParams.animateMessageText) {
            canvas.save();
            Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
            if (messageDrawable != null) {
                Rect bounds = messageDrawable.getBounds();
                if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                    canvas.clipRect(bounds.left + AndroidUtilities.m104dp(4), bounds.top + AndroidUtilities.m104dp(4), bounds.right - AndroidUtilities.m104dp(10), bounds.bottom - AndroidUtilities.m104dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m104dp(4), bounds.top + AndroidUtilities.m104dp(4), bounds.right - AndroidUtilities.m104dp(4), bounds.bottom - AndroidUtilities.m104dp(4));
                }
            }
            drawMessageText(this.textX, f5, canvas, this.transitionParams.animateOutTextBlocks, this.transitionParams.animateOutTextXOffset, false, 1.0f - this.transitionParams.animateChangeProgress, true, false, false);
            float f7 = this.textX;
            MessageObject messageObject2 = this.currentMessageObject;
            drawMessageText(f7, f5, canvas, messageObject2.textLayoutBlocks, messageObject2.textXOffset, true, this.transitionParams.animateChangeProgress, true, false, false);
            canvas.restore();
            return;
        }
        boolean z = transitionParams.animateLinkAbove;
        if (z && this.currentBackgroundDrawable != null) {
            if (z) {
                float f8 = i2;
                boolean z2 = this.linkPreviewAbove;
                int i3 = z2 ? 1 : -1;
                int i4 = messageObject.textHeight;
                f5 = f8 + (i3 * i4 * (1.0f - f6));
                f = transitionParams.animateFromTextY - (((z2 ? 1 : -1) * i4) * f6);
            } else {
                f = f5;
            }
            canvas.save();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.currentBackgroundDrawable.getBounds());
            if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                rectF.left += AndroidUtilities.m104dp(4);
                rectF.right -= AndroidUtilities.m104dp(10);
            } else {
                rectF.left += AndroidUtilities.m104dp(4);
                rectF.right -= AndroidUtilities.m104dp(4);
            }
            float f9 = rectF.left;
            float f10 = this.transitionParams.animateFromTextY;
            canvas.clipRect(f9, f10, rectF.right, this.currentMessageObject.textHeight + f10 + AndroidUtilities.m104dp(4));
            float f11 = this.textX;
            MessageObject messageObject3 = this.currentMessageObject;
            drawMessageText(f11, f, canvas, messageObject3.textLayoutBlocks, messageObject3.textXOffset, false, 1.0f - this.transitionParams.animateChangeProgress, true, false, false);
            canvas.restore();
            canvas.save();
            rectF.set(this.currentBackgroundDrawable.getBounds());
            if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                rectF.left += AndroidUtilities.m104dp(4);
                rectF.right -= AndroidUtilities.m104dp(10);
            } else {
                rectF.left += AndroidUtilities.m104dp(4);
                rectF.right -= AndroidUtilities.m104dp(4);
            }
            canvas.clipRect(rectF.left, this.textY, rectF.right, i + this.currentMessageObject.textHeight + AndroidUtilities.m104dp(4));
            float f12 = this.textX;
            MessageObject messageObject4 = this.currentMessageObject;
            drawMessageText(f12, f5, canvas, messageObject4.textLayoutBlocks, messageObject4.textXOffset, true, 1.0f, true, false, false);
            canvas.restore();
            return;
        }
        drawMessageText(this.textX, f5, canvas, messageObject.textLayoutBlocks, messageObject.textXOffset, true, 1.0f, true, false, false);
    }

    public void drawMessageText(Canvas canvas, ArrayList<MessageObject.TextLayoutBlock> arrayList, boolean z, float f, boolean z2) {
        int i = this.textY;
        float f2 = i;
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateText) {
            float f3 = transitionParams.animateFromTextY;
            float f4 = transitionParams.animateChangeProgress;
            f2 = (f3 * (1.0f - f4)) + (i * f4);
        }
        float f5 = f2;
        float f6 = this.textX;
        MessageObject messageObject = this.currentMessageObject;
        drawMessageText(f6, f5, canvas, arrayList, messageObject == null ? BitmapDescriptorFactory.HUE_RED : messageObject.textXOffset, z, f, false, z2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0618  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x064a  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0697  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x06e4  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x06e7  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0705 A[LOOP:3: B:283:0x06fd->B:285:0x0705, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0781  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x079a  */
    /* JADX WARN: Removed duplicated region for block: B:334:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:335:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawMessageText(float r38, float r39, android.graphics.Canvas r40, java.util.ArrayList<org.telegram.messenger.MessageObject.TextLayoutBlock> r41, float r42, boolean r43, float r44, boolean r45, boolean r46, boolean r47) {
        /*
            Method dump skipped, instructions count: 1950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawMessageText(float, float, android.graphics.Canvas, java.util.ArrayList, float, boolean, float, boolean, boolean, boolean):void");
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
    public org.telegram.p043ui.Components.AnimatedEmojiSpan[] getAnimatedEmojiSpans() {
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
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r4 = org.telegram.p043ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r0 = r3.getSpans(r2, r0, r4)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r0 = (org.telegram.p043ui.Components.AnimatedEmojiSpan[]) r0
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
            java.lang.Class<org.telegram.ui.Components.AnimatedEmojiSpan> r5 = org.telegram.p043ui.Components.AnimatedEmojiSpan.class
            java.lang.Object[] r3 = r4.getSpans(r2, r3, r5)
            org.telegram.ui.Components.AnimatedEmojiSpan[] r3 = (org.telegram.p043ui.Components.AnimatedEmojiSpan[]) r3
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
            org.telegram.ui.Components.AnimatedEmojiSpan[] r1 = new org.telegram.p043ui.Components.AnimatedEmojiSpan[r1]
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.getAnimatedEmojiSpans():org.telegram.ui.Components.AnimatedEmojiSpan[]");
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
            this.captionX = imageX + AndroidUtilities.m104dp(5) + this.captionOffsetX;
            this.captionY = imageY + imageHeight + AndroidUtilities.m104dp(6);
        } else {
            int i2 = 17;
            if (this.hasOldCaptionPreview) {
                this.captionX = this.backgroundDrawableLeft + AndroidUtilities.m104dp(messageObject.isOutOwner() ? 11 : 17) + this.captionOffsetX;
                float m104dp = (((this.totalHeight - this.captionHeight) - AndroidUtilities.m104dp(this.drawPinnedTop ? 9 : 10)) - this.linkPreviewHeight) - AndroidUtilities.m104dp(17);
                this.captionY = m104dp;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m104dp - AndroidUtilities.m105dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
                }
            } else {
                if (this.isRoundVideo) {
                    this.captionX = getBackgroundDrawableLeft() + AndroidUtilities.m104dp((this.currentMessageObject.isOutOwner() ? 0 : 6) + 11);
                } else {
                    int i3 = this.backgroundDrawableLeft;
                    if (messageObject.isOutOwner() || this.mediaBackground || this.drawPinnedBottom) {
                        i2 = 11;
                    }
                    this.captionX = i3 + AndroidUtilities.m104dp(i2) + this.captionOffsetX;
                }
                float m104dp2 = (this.totalHeight - this.captionHeight) - AndroidUtilities.m104dp(this.drawPinnedTop ? 9 : 10);
                this.captionY = m104dp2;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m104dp2 - AndroidUtilities.m105dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f6, code lost:
        if (r0.attachPathExists == false) goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getIconForCurrentState() {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.getIconForCurrentState():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getMaxNameWidth() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.getMaxNameWidth():int");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.updateButtonState(boolean, boolean, boolean):void");
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

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c0, code lost:
        if ((r1 & 2) != 0) goto L43;
     */
    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccessDownload(java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.onSuccessDownload(java.lang.String):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.didSetImage(org.telegram.messenger.ImageReceiver, boolean, boolean, boolean):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.createLoadingProgressLayout(long, long):void");
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.measureTime(org.telegram.messenger.MessageObject):void");
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
        MessageObject messageObject;
        return ((isPressed() && this.isCheckPressed) || ((!this.isCheckPressed && this.isPressed) || this.isHighlighted)) && !textIsSelectionMode() && !hasSelectionOverlay() && ((messageObject = this.currentMessageObject) == null || !messageObject.preview);
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
        if (this.currentMessageObject == null) {
            return;
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader = this.currentMessageObject.messageOwner.fwd_from;
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (tLRPC$MessageFwdHeader != null && (tLRPC$MessageFwdHeader.from_id instanceof TLRPC$TL_peerChannel) && (this.currentMessageObject.getDialogId() == clientUserId || this.currentMessageObject.getDialogId() == UserObject.REPLY_BOT)) {
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
                        return;
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
            if (DialogObject.isEncryptedDialog(this.currentMessageObject.getDialogId())) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                    return;
                }
                TLRPC$EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(this.currentMessageObject.getDialogId())));
                if (encryptedChat != null) {
                    this.currentUser = messagesController.getUser(Long.valueOf(encryptedChat.user_id));
                }
            } else if (DialogObject.isUserDialog(fromChatId) && !this.currentMessageObject.messageOwner.post) {
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
    }

    /* JADX WARN: Can't wrap try/catch for region: R(31:30|(1:32)|33|(2:783|(29:790|(4:803|(1:805)(1:812)|806|(3:808|(1:810)|811))|794|43|(1:45)(1:(1:781)(1:782))|46|(1:48)(1:779)|49|50|51|52|(1:54)(1:776)|55|(7:57|(1:59)|60|(1:62)(3:71|(1:73)(1:75)|74)|63|(3:65|(1:67)|68)(1:70)|69)|76|77|78|(3:80|(1:82)|83)(1:773)|84|(1:86)|87|(1:89)(1:772)|90|(2:92|(1:94))|95|(1:97)(2:766|(1:768)(2:769|(1:771)))|98|(1:100)|101)(1:789))(1:41)|42|43|(0)(0)|46|(0)(0)|49|50|51|52|(0)(0)|55|(0)|76|77|78|(0)(0)|84|(0)|87|(0)(0)|90|(0)|95|(0)(0)|98|(0)|101) */
    /* JADX WARN: Can't wrap try/catch for region: R(82:1|(2:3|(2:7|(1:13)))|14|(3:16|(1:20)|816)(3:817|(1:819)|816)|21|(1:815)(1:25)|26|(1:813)(31:30|(1:32)|33|(2:783|(29:790|(4:803|(1:805)(1:812)|806|(3:808|(1:810)|811))|794|43|(1:45)(1:(1:781)(1:782))|46|(1:48)(1:779)|49|50|51|52|(1:54)(1:776)|55|(7:57|(1:59)|60|(1:62)(3:71|(1:73)(1:75)|74)|63|(3:65|(1:67)|68)(1:70)|69)|76|77|78|(3:80|(1:82)|83)(1:773)|84|(1:86)|87|(1:89)(1:772)|90|(2:92|(1:94))|95|(1:97)(2:766|(1:768)(2:769|(1:771)))|98|(1:100)|101)(1:789))(1:41)|42|43|(0)(0)|46|(0)(0)|49|50|51|52|(0)(0)|55|(0)|76|77|78|(0)(0)|84|(0)|87|(0)(0)|90|(0)|95|(0)(0)|98|(0)|101)|102|(2:104|(1:106)(2:107|(1:109)(2:110|(1:112))))|113|(3:684|(1:688)|(21:(5:697|(1:699)(1:733)|700|(1:704)|705)(11:734|(2:736|(1:738)(2:758|(1:760)(1:761)))(2:762|(1:764)(1:765))|739|(1:741)|742|743|744|(1:746)(1:755)|747|(1:753)|754)|706|707|708|709|710|711|712|713|(1:715)|716|(2:720|(1:722))|724|124|(5:140|(1:142)(1:161)|143|(1:145)|(5:147|(1:149)(3:154|(1:156)(2:158|(1:160))|157)|150|(1:152)|153))|162|(1:166)|167|(2:177|(39:184|(1:646)(2:188|(1:(1:643))(1:192))|193|(1:197)|198|(5:200|(1:202)(1:638)|203|(1:637)|207)(2:639|(1:641))|208|(1:636)(1:214)|215|(1:635)(1:219)|220|(1:634)(1:224)|(1:229)|230|(1:633)(1:234)|235|(22:380|(8:433|(1:435)(1:630)|436|(4:438|(3:440|(3:442|(1:444)(1:626)|445)(1:627)|446)(1:628)|447|(1:449))(1:629)|450|(2:598|(1:625)(7:612|(1:614)(1:624)|615|(1:617)(1:623)|618|(1:620)(1:622)|621))(4:456|(1:458)(3:595|(1:597)|(1:461)(5:586|(1:588)(1:594)|589|(1:591)(1:593)|592))|459|(0)(0))|462|(6:464|(3:538|(1:540)|541)(1:468)|(1:470)|471|(4:531|(1:533)(1:537)|534|(1:536))(2:(2:487|(2:492|(1:494)(2:495|(1:497)(2:498|(2:514|(1:530)(6:520|(1:522)(1:529)|523|(1:525)|526|(1:528)))(6:502|(1:504)(1:513)|505|(1:507)|508|(1:512)))))(1:491))(1:484)|485)|486)(10:542|(2:547|(2:549|(2:551|(3:553|(1:555)|541)(1:556))(1:557))(2:558|(2:560|(2:(3:568|(1:570)(1:585)|(2:572|(2:574|(2:576|577))(1:(2:579|(2:581|577))(2:582|(1:584)))))|541)(1:566))))(1:546)|(0)|471|(3:473|475|477)|531|(0)(0)|534|(0)|486))(4:392|(4:394|(1:396)(2:400|(1:402)(2:403|(1:405)))|397|(1:399))|406|(7:413|(1:(1:416)(1:429))(1:(1:431)(1:432))|417|(1:419)(1:428)|420|(1:426)|427)(1:412))|246|247|248|(1:250)|251|(1:253)(1:373)|254|255|(1:257)(1:370)|258|(2:260|(1:262))|263|(1:369)(3:268|(1:270)(1:368)|271)|272|273|(1:275)(1:365)|276|(18:278|(3:280|(2:282|283)(1:285)|284)|286|287|(2:(1:293)(1:295)|294)|296|(1:300)|360|302|(4:304|(1:308)|309|(4:311|(2:313|(2:315|316))(1:357)|356|316)(1:358))(1:359)|317|(1:321)|322|(4:324|(4:327|(1:341)(4:329|(1:331)(1:340)|(1:333)(1:339)|(2:335|336)(1:338))|337|325)|342|343)|344|(2:351|352)|353|352)|361|(1:363))(3:239|(2:(1:377)(1:379)|378)(1:243)|244)|245|246|247|248|(0)|251|(0)(0)|254|255|(0)(0)|258|(0)|263|(0)|369|272|273|(0)(0)|276|(0)|361|(0)))(2:655|(8:659|(2:661|(1:(1:664)))|666|(2:670|(1:672))|673|(1:675)(2:679|(1:681))|676|(1:678)))|181|182))|123|124|(10:126|128|130|132|136|140|(0)(0)|143|(0)|(0))|162|(2:164|166)|167|(1:169)|682|177|(1:179)|184|(1:186)|644|646|193|(2:195|197)|198|(0)(0)|208|(1:210)|636|215|(1:217)|635|220|(1:222)|634|(2:227|229)|230|(1:232)|633|235|(1:237)|380|(1:382)|631|433|(0)(0)|436|(0)(0)|450|(1:452)|598|(1:600)|625|462|(0)(0)|246|247|248|(0)|251|(0)(0)|254|255|(0)(0)|258|(0)|263|(0)|369|272|273|(0)(0)|276|(0)|361|(0)|181|182) */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0402, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0403, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x08c5, code lost:
        if ((r0.action instanceof org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate) == false) goto L666;
     */
    /* JADX WARN: Code restructure failed: missing block: B:716:0x1167, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:717:0x1168, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x11fd, code lost:
        if (android.os.Build.VERSION.SDK_INT < 23) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:804:0x1374, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:805:0x1375, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0381 A[Catch: Exception -> 0x0402, TryCatch #6 {Exception -> 0x0402, blocks: (B:118:0x035e, B:120:0x0381, B:122:0x0398, B:123:0x03ac, B:125:0x03bb, B:127:0x03bf, B:128:0x03ca, B:130:0x03d1, B:131:0x03fe, B:124:0x03b6), top: B:822:0x035e }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03b6 A[Catch: Exception -> 0x0402, TryCatch #6 {Exception -> 0x0402, blocks: (B:118:0x035e, B:120:0x0381, B:122:0x0398, B:123:0x03ac, B:125:0x03bb, B:127:0x03bf, B:128:0x03ca, B:130:0x03d1, B:131:0x03fe, B:124:0x03b6), top: B:822:0x035e }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03bf A[Catch: Exception -> 0x0402, TryCatch #6 {Exception -> 0x0402, blocks: (B:118:0x035e, B:120:0x0381, B:122:0x0398, B:123:0x03ac, B:125:0x03bb, B:127:0x03bf, B:128:0x03ca, B:130:0x03d1, B:131:0x03fe, B:124:0x03b6), top: B:822:0x035e }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03d1 A[Catch: Exception -> 0x0402, TryCatch #6 {Exception -> 0x0402, blocks: (B:118:0x035e, B:120:0x0381, B:122:0x0398, B:123:0x03ac, B:125:0x03bb, B:127:0x03bf, B:128:0x03ca, B:130:0x03d1, B:131:0x03fe, B:124:0x03b6), top: B:822:0x035e }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03fe A[Catch: Exception -> 0x0402, TRY_LEAVE, TryCatch #6 {Exception -> 0x0402, blocks: (B:118:0x035e, B:120:0x0381, B:122:0x0398, B:123:0x03ac, B:125:0x03bb, B:127:0x03bf, B:128:0x03ca, B:130:0x03d1, B:131:0x03fe, B:124:0x03b6), top: B:822:0x035e }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x07f1  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x07f9  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0814  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x09d8  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x09fa  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0c4e  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0c50  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0c58  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0cb1  */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0cdd  */
    /* JADX WARN: Removed duplicated region for block: B:523:0x0cf2  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x0dd4  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x0e1e  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x0eff  */
    /* JADX WARN: Removed duplicated region for block: B:681:0x1059  */
    /* JADX WARN: Removed duplicated region for block: B:682:0x105f  */
    /* JADX WARN: Removed duplicated region for block: B:685:0x107f  */
    /* JADX WARN: Removed duplicated region for block: B:690:0x10b5  */
    /* JADX WARN: Removed duplicated region for block: B:693:0x10bf  */
    /* JADX WARN: Removed duplicated region for block: B:694:0x10c2  */
    /* JADX WARN: Removed duplicated region for block: B:697:0x10dd A[Catch: Exception -> 0x1167, TryCatch #4 {Exception -> 0x1167, blocks: (B:695:0x10d5, B:697:0x10dd, B:699:0x10f2, B:701:0x10f7, B:703:0x1117, B:704:0x1138, B:707:0x113e, B:709:0x1142, B:713:0x114d, B:714:0x115d), top: B:819:0x10d5 }] */
    /* JADX WARN: Removed duplicated region for block: B:698:0x10f1  */
    /* JADX WARN: Removed duplicated region for block: B:701:0x10f7 A[Catch: Exception -> 0x1167, TryCatch #4 {Exception -> 0x1167, blocks: (B:695:0x10d5, B:697:0x10dd, B:699:0x10f2, B:701:0x10f7, B:703:0x1117, B:704:0x1138, B:707:0x113e, B:709:0x1142, B:713:0x114d, B:714:0x115d), top: B:819:0x10d5 }] */
    /* JADX WARN: Removed duplicated region for block: B:706:0x113c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:720:0x1173 A[Catch: Exception -> 0x1374, TryCatch #5 {Exception -> 0x1374, blocks: (B:718:0x116b, B:720:0x1173, B:722:0x117b, B:724:0x1180, B:726:0x1196, B:728:0x11a2, B:729:0x11a5, B:730:0x11a8, B:732:0x11b2, B:738:0x11be, B:739:0x11ed, B:741:0x11f1, B:743:0x11f9, B:746:0x1206, B:748:0x120f, B:750:0x1228, B:752:0x122e, B:753:0x1237, B:755:0x1243, B:757:0x1249, B:762:0x125b, B:765:0x1282, B:767:0x1290, B:771:0x1298, B:772:0x12b6, B:774:0x12be, B:775:0x12c8, B:777:0x12d0, B:779:0x12ee, B:787:0x12fc, B:788:0x1302, B:789:0x130d, B:790:0x1319, B:792:0x1322, B:794:0x132a, B:799:0x134c, B:798:0x1338, B:769:0x1294, B:764:0x1260, B:745:0x11ff, B:800:0x135a, B:802:0x1360), top: B:820:0x116b }] */
    /* JADX WARN: Removed duplicated region for block: B:721:0x117a  */
    /* JADX WARN: Removed duplicated region for block: B:724:0x1180 A[Catch: Exception -> 0x1374, TryCatch #5 {Exception -> 0x1374, blocks: (B:718:0x116b, B:720:0x1173, B:722:0x117b, B:724:0x1180, B:726:0x1196, B:728:0x11a2, B:729:0x11a5, B:730:0x11a8, B:732:0x11b2, B:738:0x11be, B:739:0x11ed, B:741:0x11f1, B:743:0x11f9, B:746:0x1206, B:748:0x120f, B:750:0x1228, B:752:0x122e, B:753:0x1237, B:755:0x1243, B:757:0x1249, B:762:0x125b, B:765:0x1282, B:767:0x1290, B:771:0x1298, B:772:0x12b6, B:774:0x12be, B:775:0x12c8, B:777:0x12d0, B:779:0x12ee, B:787:0x12fc, B:788:0x1302, B:789:0x130d, B:790:0x1319, B:792:0x1322, B:794:0x132a, B:799:0x134c, B:798:0x1338, B:769:0x1294, B:764:0x1260, B:745:0x11ff, B:800:0x135a, B:802:0x1360), top: B:820:0x116b }] */
    /* JADX WARN: Removed duplicated region for block: B:802:0x1360 A[Catch: Exception -> 0x1374, TRY_LEAVE, TryCatch #5 {Exception -> 0x1374, blocks: (B:718:0x116b, B:720:0x1173, B:722:0x117b, B:724:0x1180, B:726:0x1196, B:728:0x11a2, B:729:0x11a5, B:730:0x11a8, B:732:0x11b2, B:738:0x11be, B:739:0x11ed, B:741:0x11f1, B:743:0x11f9, B:746:0x1206, B:748:0x120f, B:750:0x1228, B:752:0x122e, B:753:0x1237, B:755:0x1243, B:757:0x1249, B:762:0x125b, B:765:0x1282, B:767:0x1290, B:771:0x1298, B:772:0x12b6, B:774:0x12be, B:775:0x12c8, B:777:0x12d0, B:779:0x12ee, B:787:0x12fc, B:788:0x1302, B:789:0x130d, B:790:0x1319, B:792:0x1322, B:794:0x132a, B:799:0x134c, B:798:0x1338, B:769:0x1294, B:764:0x1260, B:745:0x11ff, B:800:0x135a, B:802:0x1360), top: B:820:0x116b }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0243  */
    /* JADX WARN: Type inference failed for: r4v121 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r8v152 */
    /* JADX WARN: Type inference failed for: r8v153, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v154 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageObjectInternal(org.telegram.messenger.MessageObject r51) {
        /*
            Method dump skipped, instructions count: 4988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.setMessageObjectInternal(org.telegram.messenger.MessageObject):void");
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
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject.forceAvatar) {
            return true;
        }
        if (messageObject.isGiveaway()) {
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
                    return ContextCompat.getDrawable(ApplicationLoader.applicationContext, C3632R.C3634drawable.msg_premium_liststar).mutate();
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
            return string == null ? LocaleController.getString("PsaMessageDefault", C3632R.string.PsaMessageDefault) : string;
        }
        return LocaleController.getString("ForwardedMessage", C3632R.string.ForwardedMessage);
    }

    public int getExtraInsetHeight() {
        int i = this.addedCaptionHeight;
        if (this.drawCommentButton) {
            i += AndroidUtilities.m105dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.setBackgroundTopY(boolean):void");
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

    private void setupTextColors() {
        if (this.currentMessageObject.isOutOwner()) {
            TextPaint textPaint = Theme.chat_msgTextPaint;
            int i = Theme.key_chat_messageTextOut;
            textPaint.setColor(getThemedColor(i));
            Theme.chat_msgGameTextPaint.setColor(getThemedColor(i));
            Theme.chat_msgTextCodePaint.setColor(getThemedColor(i));
            Theme.chat_msgTextCode2Paint.setColor(getThemedColor(i));
            Theme.chat_msgTextCode3Paint.setColor(getThemedColor(i));
            TextPaint textPaint2 = Theme.chat_msgGameTextPaint;
            TextPaint textPaint3 = Theme.chat_replyTextPaint;
            TextPaint textPaint4 = Theme.chat_quoteTextPaint;
            TextPaint textPaint5 = Theme.chat_msgTextPaint;
            TextPaint textPaint6 = Theme.chat_msgTextCodePaint;
            TextPaint textPaint7 = Theme.chat_msgTextCode2Paint;
            TextPaint textPaint8 = Theme.chat_msgTextCode3Paint;
            int themedColor = getThemedColor(Theme.key_chat_messageLinkOut);
            textPaint8.linkColor = themedColor;
            textPaint7.linkColor = themedColor;
            textPaint6.linkColor = themedColor;
            textPaint5.linkColor = themedColor;
            textPaint4.linkColor = themedColor;
            textPaint3.linkColor = themedColor;
            textPaint2.linkColor = themedColor;
            return;
        }
        TextPaint textPaint9 = Theme.chat_msgTextPaint;
        int i2 = Theme.key_chat_messageTextIn;
        textPaint9.setColor(getThemedColor(i2));
        Theme.chat_msgGameTextPaint.setColor(getThemedColor(i2));
        Theme.chat_msgTextCodePaint.setColor(getThemedColor(i2));
        Theme.chat_msgTextCode2Paint.setColor(getThemedColor(i2));
        Theme.chat_msgTextCode3Paint.setColor(getThemedColor(i2));
        TextPaint textPaint10 = Theme.chat_msgGameTextPaint;
        TextPaint textPaint11 = Theme.chat_replyTextPaint;
        TextPaint textPaint12 = Theme.chat_quoteTextPaint;
        TextPaint textPaint13 = Theme.chat_msgTextPaint;
        TextPaint textPaint14 = Theme.chat_msgTextCodePaint;
        TextPaint textPaint15 = Theme.chat_msgTextCode2Paint;
        TextPaint textPaint16 = Theme.chat_msgTextCode3Paint;
        int themedColor2 = getThemedColor(Theme.key_chat_messageLinkIn);
        textPaint16.linkColor = themedColor2;
        textPaint15.linkColor = themedColor2;
        textPaint14.linkColor = themedColor2;
        textPaint13.linkColor = themedColor2;
        textPaint12.linkColor = themedColor2;
        textPaint11.linkColor = themedColor2;
        textPaint10.linkColor = themedColor2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        boolean z;
        MessageObject messageObject;
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
        setupTextColors();
        if (this.documentAttach != null) {
            int i7 = this.documentAttachType;
            if (i7 == 3 || i7 == 7) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.seekBarWaveform.setColors(getThemedColor(Theme.key_chat_outVoiceSeekbar), getThemedColor(Theme.key_chat_outVoiceSeekbarFill), getThemedColor(Theme.key_chat_outVoiceSeekbarSelected));
                    SeekBar seekBar = this.seekBar;
                    int themedColor = getThemedColor(Theme.key_chat_outAudioSeekbar);
                    int themedColor2 = getThemedColor(Theme.key_chat_outAudioCacheSeekbar);
                    int i8 = Theme.key_chat_outAudioSeekbarFill;
                    seekBar.setColors(themedColor, themedColor2, getThemedColor(i8), getThemedColor(i8), getThemedColor(Theme.key_chat_outAudioSeekbarSelected));
                } else if (this.hasLinkPreview && this.linkLine != null) {
                    this.seekBarWaveform.setColors(Theme.adaptHue(getThemedColor(Theme.key_chat_inVoiceSeekbar), this.linkLine.getColor()), Theme.adaptHue(getThemedColor(Theme.key_chat_inVoiceSeekbarFill), this.linkLine.getColor()), Theme.adaptHue(getThemedColor(Theme.key_chat_inVoiceSeekbarSelected), this.linkLine.getColor()));
                    SeekBar seekBar2 = this.seekBar;
                    int adaptHue = Theme.adaptHue(getThemedColor(Theme.key_chat_inAudioSeekbar), this.linkLine.getColor());
                    int adaptHue2 = Theme.adaptHue(getThemedColor(Theme.key_chat_inAudioCacheSeekbar), this.linkLine.getColor());
                    int i9 = Theme.key_chat_inAudioSeekbarFill;
                    seekBar2.setColors(adaptHue, adaptHue2, Theme.adaptHue(getThemedColor(i9), this.linkLine.getColor()), Theme.adaptHue(getThemedColor(i9), this.linkLine.getColor()), Theme.adaptHue(getThemedColor(Theme.key_chat_inAudioSeekbarSelected), this.linkLine.getColor()));
                } else {
                    this.seekBarWaveform.setColors(getThemedColor(Theme.key_chat_inVoiceSeekbar), getThemedColor(Theme.key_chat_inVoiceSeekbarFill), getThemedColor(Theme.key_chat_inVoiceSeekbarSelected));
                    SeekBar seekBar3 = this.seekBar;
                    int themedColor3 = getThemedColor(Theme.key_chat_inAudioSeekbar);
                    int themedColor4 = getThemedColor(Theme.key_chat_inAudioCacheSeekbar);
                    int i10 = Theme.key_chat_inAudioSeekbarFill;
                    seekBar3.setColors(themedColor3, themedColor4, getThemedColor(i10), getThemedColor(i10), getThemedColor(Theme.key_chat_inAudioSeekbarSelected));
                }
            } else if (i7 == 5) {
                if (this.currentMessageObject.isOutOwner()) {
                    SeekBar seekBar4 = this.seekBar;
                    int themedColor5 = getThemedColor(Theme.key_chat_outAudioSeekbar);
                    int themedColor6 = getThemedColor(Theme.key_chat_outAudioCacheSeekbar);
                    int i11 = Theme.key_chat_outAudioSeekbarFill;
                    seekBar4.setColors(themedColor5, themedColor6, getThemedColor(i11), getThemedColor(i11), getThemedColor(Theme.key_chat_outAudioSeekbarSelected));
                } else if (this.hasLinkPreview && this.linkLine != null) {
                    SeekBar seekBar5 = this.seekBar;
                    int adaptHue3 = Theme.adaptHue(getThemedColor(Theme.key_chat_inAudioSeekbar), this.linkLine.getColor());
                    int adaptHue4 = Theme.adaptHue(getThemedColor(Theme.key_chat_inAudioCacheSeekbar), this.linkLine.getColor());
                    int i12 = Theme.key_chat_inAudioSeekbarFill;
                    seekBar5.setColors(adaptHue3, adaptHue4, Theme.adaptHue(getThemedColor(i12), this.linkLine.getColor()), Theme.adaptHue(getThemedColor(i12), this.linkLine.getColor()), Theme.adaptHue(getThemedColor(Theme.key_chat_inAudioSeekbarSelected), this.linkLine.getColor()));
                } else {
                    SeekBar seekBar6 = this.seekBar;
                    int themedColor7 = getThemedColor(Theme.key_chat_inAudioSeekbar);
                    int themedColor8 = getThemedColor(Theme.key_chat_inAudioCacheSeekbar);
                    int i13 = Theme.key_chat_inAudioSeekbarFill;
                    seekBar6.setColors(themedColor7, themedColor8, getThemedColor(i13), getThemedColor(i13), getThemedColor(Theme.key_chat_inAudioSeekbarSelected));
                }
            }
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2.type == 5) {
            TextPaint textPaint = Theme.chat_timePaint;
            int themedColor9 = getThemedColor(Theme.key_chat_serviceText);
            if (isDrawSelectionBackground()) {
                i6 = this.currentMessageObject.isOutOwner() ? Theme.key_chat_outTimeSelectedText : Theme.key_chat_inTimeSelectedText;
            } else {
                i6 = this.currentMessageObject.isOutOwner() ? Theme.key_chat_outTimeText : Theme.key_chat_inTimeText;
            }
            textPaint.setColor(ColorUtils.blendARGB(themedColor9, getThemedColor(i6), getVideoTranscriptionProgress()));
        } else if (this.mediaBackground) {
            if (messageObject2.shouldDrawWithoutBackground()) {
                Theme.chat_timePaint.setColor(getThemedColor(Theme.key_chat_serviceText));
            } else {
                Theme.chat_timePaint.setColor(getThemedColor(Theme.key_chat_mediaTimeText));
            }
        } else if (messageObject2.isOutOwner()) {
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
            int i14 = (int) (this.highlightProgress - abs);
            this.highlightProgress = i14;
            this.lastHighlightProgressTime = currentTimeMillis;
            if (i14 <= 0) {
                this.highlightProgress = 0;
                this.isHighlightedAnimated = false;
                if (this.highlightedQuote) {
                    resetUrlPaths();
                }
                this.highlightedQuote = false;
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
                    i2 -= AndroidUtilities.m104dp(40);
                } else {
                    i3 += AndroidUtilities.m104dp(40);
                }
            }
            if (getY() < BitmapDescriptorFactory.HUE_RED) {
                i5 = (int) (-getY());
            }
            float y = getY() + getMeasuredHeight();
            int i15 = this.parentHeight;
            if (y > i15) {
                i4 = (int) (i15 - getY());
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
            canvas.clipRect(bounds.left + AndroidUtilities.m104dp(4), bounds.top + AndroidUtilities.m104dp(4), bounds.right - AndroidUtilities.m104dp(4), bounds.bottom - AndroidUtilities.m104dp(4));
            z = true;
        }
        drawContent(canvas, false);
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
            float f = this.replyTextHeight;
            TransitionParams transitionParams = this.transitionParams;
            if (transitionParams != null && transitionParams.animateReplyTextLayout != null) {
                f = AndroidUtilities.lerp(this.transitionParams.animateFromReplyTextHeight, f, this.transitionParams.animateChangeProgress);
            }
            this.replyHeight = AndroidUtilities.m104dp(9) + Theme.chat_replyNamePaint.getTextSize() + Math.max(f - AndroidUtilities.m105dp(3.66f), Theme.chat_replyTextPaint.getTextSize());
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                MessageObject messageObject3 = this.currentMessageObject;
                if (messageObject3.type != 19) {
                    if (messageObject3.isOutOwner()) {
                        int m104dp = AndroidUtilities.m104dp(23);
                        this.replyStartX = m104dp;
                        if (this.isPlayingRound) {
                            this.replyStartX = m104dp - (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize);
                        }
                    } else if (this.currentMessageObject.type == 5) {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m104dp(4);
                    } else {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m104dp(17);
                    }
                    if (this.drawForwardedName) {
                        int m104dp2 = AndroidUtilities.m104dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
                        this.forwardHeight = m104dp2;
                        this.replyStartY = this.forwardNameY + m104dp2 + AndroidUtilities.m104dp(6);
                    } else {
                        int m104dp3 = AndroidUtilities.m104dp(12);
                        this.replyStartY = m104dp3;
                        if (this.drawTopic && (messageTopicButton2 = this.topicButton) != null) {
                            this.replyStartY = m104dp3 + messageTopicButton2.height() + AndroidUtilities.m104dp(10);
                        }
                    }
                    this.replyStartY += AndroidUtilities.m105dp(0.66f);
                }
            }
            if (this.currentMessageObject.isOutOwner()) {
                int m104dp4 = this.backgroundDrawableLeft + AndroidUtilities.m104dp(12) + getExtraTextX();
                this.replyStartX = m104dp4;
                if (this.currentMessageObject.type == 19) {
                    this.replyStartX = m104dp4 - Math.max(0, ((Math.max(this.replyNameWidth, this.replyTextWidth) + m104dp4) + AndroidUtilities.m104dp(14)) - AndroidUtilities.displaySize.x);
                }
            } else if (this.mediaBackground) {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m104dp(12) + getExtraTextX();
            } else {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m104dp(this.drawPinnedBottom ? 12 : 18) + getExtraTextX();
            }
            if (this.currentMessageObject.type == 19) {
                this.replyStartX -= AndroidUtilities.m104dp(7);
            }
            this.forwardHeight = AndroidUtilities.m104dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
            int m104dp5 = AndroidUtilities.m104dp(12) + ((!this.drawNameLayout || this.nameLayout == null) ? 0 : AndroidUtilities.m104dp(6) + ((int) Theme.chat_namePaint.getTextSize())) + ((!this.drawForwardedName || this.forwardedNameLayout[0] == null) ? 0 : AndroidUtilities.m104dp(4) + this.forwardHeight);
            this.replyStartY = m104dp5;
            if (this.drawTopic && (messageTopicButton = this.topicButton) != null) {
                this.replyStartY = m104dp5 + messageTopicButton.height() + AndroidUtilities.m104dp(5);
            }
            this.replyStartY += AndroidUtilities.m105dp(0.66f);
        }
        if (this.currentPosition == null && !this.transitionParams.animateBackgroundBoundsInner && (!this.enterTransitionInProgress || this.currentMessageObject.isVoice())) {
            drawNamesLayout(canvas, 1.0f);
        }
        if ((!this.autoPlayingMedia || !MediaController.getInstance().isPlayingMessageAndReadyToDraw(this.currentMessageObject) || this.isRoundVideo) && !this.transitionParams.animateBackgroundBoundsInner && ((messageObject = this.currentMessageObject) == null || !messageObject.preview)) {
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
    /* JADX WARN: Removed duplicated region for block: B:355:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x07fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackgroundInternal(android.graphics.Canvas r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2181
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawBackgroundInternal(android.graphics.Canvas, boolean):void");
    }

    private void animateCheckboxTranslation() {
        boolean z = this.checkBoxVisible;
        if (z || this.checkBoxAnimationInProgress) {
            if ((z && this.checkBoxAnimationProgress == 1.0f) || (!z && this.checkBoxAnimationProgress == BitmapDescriptorFactory.HUE_RED)) {
                this.checkBoxAnimationInProgress = false;
            }
            this.checkBoxTranslation = (int) Math.ceil((z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m104dp(35));
            if (!this.currentMessageObject.isOutOwner() || this.currentMessageObject.hasWideCode) {
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
        int m104dp = AndroidUtilities.m104dp(32);
        if (this.commentLayout != null) {
            this.sideStartY -= AndroidUtilities.m104dp(18);
            m104dp += AndroidUtilities.m104dp(18);
        }
        RectF rectF = this.rect;
        float f2 = this.sideStartX;
        rectF.set(f2, this.sideStartY, AndroidUtilities.m104dp(32) + f2, this.sideStartY + m104dp);
        applyServiceShaderMatrix();
        int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (i != 0) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
        } else {
            canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
        }
        if (hasGradientService()) {
            if (i != 0) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        Drawable themeDrawable = Theme.getThemeDrawable("drawableCommentSticker");
        BaseCell.setDrawableBounds(themeDrawable, this.sideStartX + AndroidUtilities.m104dp(4), this.sideStartY + AndroidUtilities.m104dp(4));
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
                    canvas.translate(this.sideStartX + ((AndroidUtilities.m104dp(32) - this.transitionParams.animateTotalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m104dp(30));
                    this.transitionParams.animateCommentsLayout.draw(canvas);
                    canvas.restore();
                }
                Theme.chat_stickerCommentCountPaint.setAlpha((int) (this.transitionParams.animateChangeProgress * 255.0f));
            }
            canvas.save();
            canvas.translate(this.sideStartX + ((AndroidUtilities.m104dp(32) - this.totalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m104dp(30));
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
        float m104dp;
        int extraTextX;
        float f4;
        int themedColor;
        long j;
        int i;
        TLRPC$User tLRPC$User;
        TLRPC$ChatInvite tLRPC$ChatInvite;
        TLRPC$Chat tLRPC$Chat;
        TLRPC$ChatInvite tLRPC$ChatInvite2;
        float m104dp2;
        int i2;
        int i3;
        float m104dp3;
        if (!this.enterTransitionInProgress) {
            drawAnimatedEmojis(canvas, 1.0f);
        }
        if (this.currentNameStatusDrawable != null && this.drawNameLayout && this.nameLayout != null) {
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                themedColor = getThemedColor(Theme.key_chat_stickerNameText);
                if (this.currentMessageObject.isOutOwner()) {
                    m104dp3 = AndroidUtilities.m104dp(28);
                } else {
                    m104dp3 = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + this.backgroundDrawableRight + AndroidUtilities.m104dp(22);
                }
                m104dp2 = this.layoutHeight - AndroidUtilities.m104dp(38);
                f4 = m104dp3 - this.nameOffsetX;
            } else {
                int i4 = 11;
                if (this.mediaBackground || this.currentMessageObject.isOutOwner()) {
                    m104dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m104dp(11);
                    extraTextX = getExtraTextX();
                } else {
                    m104dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m104dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 17);
                    extraTextX = getExtraTextX();
                }
                f4 = m104dp + extraTextX;
                if (this.currentMessageObject.isOutOwner() && ChatObject.isChannel(this.currentChat)) {
                    Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
                    if (messageDrawable != null && messageDrawable.hasGradient()) {
                        themedColor = getThemedColor(Theme.key_chat_messageTextOut);
                    } else {
                        themedColor = getThemedColor(Theme.key_chat_outForwardedNameText);
                    }
                } else if (this.currentMessageObject.isOutOwner()) {
                    themedColor = getThemedColor(Theme.key_chat_outForwardedNameText);
                } else {
                    MessageObject messageObject = this.currentMessageObject;
                    if (messageObject.overrideLinkColor >= 0 || ((messageObject.isFromUser() && this.currentUser != null) || ((this.currentMessageObject.isFromChannel() && this.currentChat != null) || ((this.currentMessageObject.isSponsored() && (this.currentMessageObject.sponsoredChatInvite instanceof TLRPC$TL_chatInvite)) || (this.currentMessageObject.isSponsored() && (tLRPC$ChatInvite2 = this.currentMessageObject.sponsoredChatInvite) != null && tLRPC$ChatInvite2.chat != null))))) {
                        MessageObject messageObject2 = this.currentMessageObject;
                        int i5 = messageObject2.overrideLinkColor;
                        if (i5 < 0) {
                            if (messageObject2.isSponsored()) {
                                TLRPC$ChatInvite tLRPC$ChatInvite3 = this.currentMessageObject.sponsoredChatInvite;
                                if (tLRPC$ChatInvite3 instanceof TLRPC$TL_chatInvite) {
                                    i5 = tLRPC$ChatInvite3.color;
                                }
                            }
                            if (this.currentMessageObject.isSponsored() && (tLRPC$ChatInvite = this.currentMessageObject.sponsoredChatInvite) != null && (tLRPC$Chat = tLRPC$ChatInvite.chat) != null) {
                                if ((tLRPC$Chat.flags2 & 64) != 0) {
                                    i = tLRPC$Chat.color;
                                    i5 = i;
                                } else {
                                    j = tLRPC$Chat.f1602id % 7;
                                    i = (int) j;
                                    i5 = i;
                                }
                            } else if (this.currentMessageObject.isFromUser() && (tLRPC$User = this.currentUser) != null) {
                                if ((tLRPC$User.flags2 & 128) != 0) {
                                    i = tLRPC$User.color;
                                    i5 = i;
                                } else {
                                    j = tLRPC$User.f1749id % 7;
                                    i = (int) j;
                                    i5 = i;
                                }
                            } else {
                                TLRPC$Chat tLRPC$Chat2 = this.currentChat;
                                if ((tLRPC$Chat2.flags2 & 64) != 0) {
                                    i = tLRPC$Chat2.color;
                                    i5 = i;
                                } else {
                                    j = tLRPC$Chat2.f1602id % 7;
                                    i = (int) j;
                                    i5 = i;
                                }
                            }
                        }
                        if (i5 < 7) {
                            themedColor = getThemedColor(Theme.keys_avatar_nameInMessage[i5]);
                        } else {
                            MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
                            MessagesController.PeerColor color = peerColors != null ? peerColors.getColor(i5) : null;
                            if (color != null) {
                                themedColor = color.getColor1();
                            } else {
                                themedColor = getThemedColor(Theme.key_chat_inForwardedNameText);
                            }
                        }
                    } else {
                        themedColor = getThemedColor(Theme.key_chat_inForwardedNameText);
                    }
                }
                m104dp2 = AndroidUtilities.m104dp(this.drawPinnedTop ? 9 : 10);
            }
            MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
            if (groupedMessages != null) {
                MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages.transitionParams;
                if (transitionParams2.backgroundChangeBounds) {
                    f4 += transitionParams2.offsetLeft;
                    m104dp2 += transitionParams2.offsetTop - getTranslationY();
                }
            }
            float f5 = f4 + this.animationOffsetX;
            TransitionParams transitionParams3 = this.transitionParams;
            float f6 = m104dp2 + transitionParams3.deltaTop;
            if (transitionParams3.animateSign) {
                f5 = ((f5 - this.transitionParams.animateNameX) * this.transitionParams.animateChangeProgress) + this.transitionParams.animateNameX;
            }
            this.currentNameStatusDrawable.setBounds((int) (Math.abs(f5) + (this.viaNameWidth > 0 ? i2 - AndroidUtilities.m104dp(32) : this.nameLayoutWidth) + AndroidUtilities.m104dp(2)), (int) (((this.nameLayout.getHeight() / 2) + f6) - AndroidUtilities.m104dp(10)), (int) (Math.abs(f5) + (this.viaNameWidth > 0 ? i3 - AndroidUtilities.m104dp(32) : this.nameLayoutWidth) + AndroidUtilities.m104dp(22)), (int) (f6 + (this.nameLayout.getHeight() / 2) + AndroidUtilities.m104dp(10)));
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
        if (shouldDrawCaptionLayout()) {
            drawAnimatedEmojiCaption(canvas, f);
        }
    }

    private void drawAnimatedEmojiMessageText(Canvas canvas, float f) {
        int i = this.textY;
        float f2 = i;
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateText) {
            float f3 = transitionParams.animateFromTextY;
            float f4 = transitionParams.animateChangeProgress;
            f2 = (f3 * (1.0f - f4)) + (i * f4);
        }
        float f5 = f2;
        if (transitionParams.animateChangeProgress != 1.0f && transitionParams.animateMessageText) {
            canvas.save();
            Theme.MessageDrawable messageDrawable = this.currentBackgroundDrawable;
            if (messageDrawable != null) {
                Rect bounds = messageDrawable.getBounds();
                if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                    canvas.clipRect(bounds.left + AndroidUtilities.m104dp(4), bounds.top + AndroidUtilities.m104dp(4), bounds.right - AndroidUtilities.m104dp(10), bounds.bottom - AndroidUtilities.m104dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m104dp(4), bounds.top + AndroidUtilities.m104dp(4), bounds.right - AndroidUtilities.m104dp(4), bounds.bottom - AndroidUtilities.m104dp(4));
                }
            }
            drawAnimatedEmojiMessageText(this.textX, f5, canvas, this.transitionParams.animateOutTextBlocks, this.transitionParams.animateOutAnimateEmoji, false, f * (1.0f - this.transitionParams.animateChangeProgress), this.currentMessageObject.textXOffset, false);
            float f6 = this.textX;
            MessageObject messageObject = this.currentMessageObject;
            drawAnimatedEmojiMessageText(f6, f5, canvas, messageObject.textLayoutBlocks, this.animatedEmojiStack, true, f * this.transitionParams.animateChangeProgress, messageObject.textXOffset, false);
            canvas.restore();
            return;
        }
        float f7 = this.textX;
        MessageObject messageObject2 = this.currentMessageObject;
        drawAnimatedEmojiMessageText(f7, f5, canvas, messageObject2.textLayoutBlocks, this.animatedEmojiStack, true, f, messageObject2.textXOffset, false);
    }

    private void drawAnimatedEmojiMessageText(float f, float f2, Canvas canvas, ArrayList<MessageObject.TextLayoutBlock> arrayList, AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans, boolean z, float f3, float f4, boolean z2) {
        int size;
        int i;
        if (arrayList == null || arrayList.isEmpty() || f3 == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        if (z && !z2) {
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
        for (int i3 = i; i3 <= i2 && i3 < arrayList.size(); i3++) {
            if (i3 >= 0) {
                MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i3);
                canvas.save();
                canvas.translate(f - (textLayoutBlock.isRtl() ? (int) Math.ceil(f4) : 0), f2 + textLayoutBlock.padTop + textLayoutBlock.textYOffset + this.transitionYOffsetForDrawables);
                float f5 = f2 + textLayoutBlock.textYOffset + this.transitionYOffsetForDrawables;
                boolean z3 = this.transitionParams.messageEntering;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayoutBlock.textLayout, emojiGroupedSpans, BitmapDescriptorFactory.HUE_RED, textLayoutBlock.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f5, f3, this.currentMessageObject.isOutOwner() ? Theme.chat_outAnimatedEmojiTextColorFilter : Theme.chat_animatedEmojiTextColorFilter);
                canvas.restore();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawAnimatedEmojiCaption(android.graphics.Canvas r17, float r18) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawAnimatedEmojiCaption(android.graphics.Canvas, float):void");
    }

    private void drawSideButton(Canvas canvas) {
        this.drawAdditionalSideButton = !this.wideMode && checkNeedDrawAdditionalSideButton(this.currentMessageObject);
        float backgroundDrawableBottom = (getBackgroundDrawableBottom() - AndroidUtilities.m105dp(1.5f)) + this.transitionParams.deltaBottom;
        int m104dp = AndroidUtilities.m104dp(32);
        int m104dp2 = AndroidUtilities.m104dp(8);
        int i = m104dp + m104dp2;
        boolean z = backgroundDrawableBottom >= ((float) (i + m104dp));
        if (this.drawAdditionalSideButton && (this.drawSideButton == 0 || z)) {
            if (this.currentMessageObject.isOutOwner()) {
                float f = this.transitionParams.lastBackgroundLeft - i;
                this.additionalSideButtonStartX = f;
                MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
                if (groupedMessages != null) {
                    this.additionalSideButtonStartX = f + (groupedMessages.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float f2 = this.transitionParams.lastBackgroundRight + m104dp2;
                this.additionalSideButtonStartX = f2;
                MessageObject.GroupedMessages groupedMessages2 = this.currentMessagesGroup;
                if (groupedMessages2 != null) {
                    this.additionalSideButtonStartX = f2 + (groupedMessages2.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            if (this.drawSideButton == 0) {
                this.additionalSideButtonStartY = backgroundDrawableBottom - m104dp;
            } else if (z) {
                float f3 = m104dp;
                this.additionalSideButtonStartY = ((backgroundDrawableBottom - f3) - m104dp2) - f3;
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
            float f8 = m104dp;
            rectF.set(f6, f7, f6 + f8, f8 + f7);
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, getX(), this.viewTop);
            Paint paint = this.additionalSideButtonPressed ? Theme.chat_actionBackgroundSelectedPaint : Theme.chat_actionBackgroundPaint;
            int alpha = paint.getAlpha();
            paint.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), paint);
            paint.setAlpha(alpha);
            if (Theme.hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            Drawable drawable = this.currentMessageObject.isForwardingEditor ? Theme.chat_editIconDrawable : Theme.chat_translateIconDrawable;
            int alpha2 = drawable.getAlpha();
            BaseCell.setDrawableBounds(drawable, this.additionalSideButtonStartX + AndroidUtilities.m104dp(4), this.additionalSideButtonStartY + AndroidUtilities.m104dp(4));
            drawable.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            drawable.draw(canvas);
            drawable.setAlpha(alpha2);
        }
        if (this.drawSideButton != 0) {
            if (this.currentMessageObject.isOutOwner()) {
                float m104dp3 = this.transitionParams.lastBackgroundLeft - AndroidUtilities.m104dp(40);
                this.sideStartX = m104dp3;
                MessageObject.GroupedMessages groupedMessages4 = this.currentMessagesGroup;
                if (groupedMessages4 != null) {
                    this.sideStartX = m104dp3 + (groupedMessages4.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float m104dp4 = this.transitionParams.lastBackgroundRight + AndroidUtilities.m104dp(8);
                this.sideStartX = m104dp4;
                MessageObject.GroupedMessages groupedMessages5 = this.currentMessagesGroup;
                if (groupedMessages5 != null) {
                    this.sideStartX = m104dp4 + (groupedMessages5.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            float m104dp5 = (this.layoutHeight + this.transitionParams.deltaBottom) - AndroidUtilities.m104dp(41);
            this.sideStartY = m104dp5;
            MessageObject messageObject = this.currentMessageObject;
            if (messageObject.type == 19 && messageObject.textWidth < this.timeTextWidth) {
                this.sideStartY = m104dp5 - AndroidUtilities.m104dp(22);
            }
            if (this.albumMode || (this.drawAdditionalSideButton && z)) {
                this.sideStartY = backgroundDrawableBottom - m104dp;
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
                float m104dp6 = this.isAvatarVisible ? (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f : AndroidUtilities.m104dp(50);
                float videoTranscriptionProgress = this.isPlayingRound ? (1.0f - getVideoTranscriptionProgress()) * m104dp6 : 0.0f;
                if (this.isPlayingRound) {
                    f11 = AndroidUtilities.m104dp(28) * (1.0f - getVideoTranscriptionProgress());
                }
                TransitionParams transitionParams3 = this.transitionParams;
                if (transitionParams3.animatePlayingRound) {
                    videoTranscriptionProgress = (this.isPlayingRound ? transitionParams3.animateChangeProgress : 1.0f - transitionParams3.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress()) * m104dp6;
                    f11 = AndroidUtilities.m104dp(28) * (this.isPlayingRound ? this.transitionParams.animateChangeProgress : 1.0f - this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress());
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
            rectF2.set(f12, this.sideStartY, AndroidUtilities.m104dp(32) + f12, this.sideStartY + AndroidUtilities.m104dp(32));
            applyServiceShaderMatrix();
            canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            if (this.drawSideButton == 2) {
                Drawable themedDrawable = getThemedDrawable("drawableGoIcon");
                if (this.currentMessageObject.isOutOwner()) {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m104dp(10), this.sideStartY + AndroidUtilities.m104dp(9));
                    canvas.save();
                    canvas.scale(-1.0f, 1.0f, themedDrawable.getBounds().centerX(), themedDrawable.getBounds().centerY());
                } else {
                    BaseCell.setDrawableBounds(themedDrawable, this.sideStartX + AndroidUtilities.m104dp(12), this.sideStartY + AndroidUtilities.m104dp(9));
                }
                themedDrawable.draw(canvas);
                if (this.currentMessageObject.isOutOwner()) {
                    canvas.restore();
                    return;
                }
                return;
            }
            int m104dp7 = (int) (this.sideStartX + AndroidUtilities.m104dp(16));
            int m104dp8 = (int) (this.sideStartY + AndroidUtilities.m104dp(16));
            Drawable themedDrawable2 = getThemedDrawable("drawableShareIcon");
            int intrinsicWidth = themedDrawable2.getIntrinsicWidth() / 2;
            int intrinsicHeight = themedDrawable2.getIntrinsicHeight() / 2;
            themedDrawable2.setBounds(m104dp7 - intrinsicWidth, m104dp8 - intrinsicHeight, m104dp7 + intrinsicWidth, m104dp8 + intrinsicHeight);
            BaseCell.setDrawableBounds(themedDrawable2, this.sideStartX + AndroidUtilities.m104dp(4), this.sideStartY + AndroidUtilities.m104dp(4));
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
        int m104dp;
        MessageObject messageObject;
        int m104dp2;
        int i;
        MessageObject messageObject2;
        if (this.currentMessageObject.isOutOwner()) {
            if (this.isRoundVideo) {
                return (this.layoutWidth - this.backgroundWidth) - ((int) ((1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m104dp(9)));
            }
            return (this.layoutWidth - this.backgroundWidth) - (this.mediaBackground ? AndroidUtilities.m104dp(9) : 0);
        }
        if (this.isRoundVideo) {
            if ((this.isChat || ((messageObject2 = this.currentMessageObject) != null && messageObject2.forceAvatar)) && this.isAvatarVisible) {
                r1 = 48;
            }
            m104dp = AndroidUtilities.m104dp(r1 + 3) + ((int) (AndroidUtilities.m104dp(6) * (1.0f - getVideoTranscriptionProgress())));
        } else {
            if ((this.isChat || ((messageObject = this.currentMessageObject) != null && messageObject.forceAvatar)) && this.isAvatarVisible) {
                r1 = 48;
            }
            m104dp = AndroidUtilities.m104dp(r1 + (this.mediaBackground ? 9 : 3));
        }
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.isDocuments && (i = this.currentPosition.leftSpanOffset) != 0) {
            m104dp += (int) Math.ceil((i / 1000.0f) * getGroupPhotosWidth());
        }
        if (this.isRoundVideo) {
            if (!this.drawPinnedBottom) {
                return m104dp;
            }
            m104dp2 = (int) (AndroidUtilities.m104dp(6) * (1.0f - getVideoTranscriptionProgress()));
        } else if (this.mediaBackground || !this.drawPinnedBottom) {
            return m104dp;
        } else {
            m104dp2 = AndroidUtilities.m104dp(6);
        }
        return m104dp + m104dp2;
    }

    public int getBackgroundDrawableRight() {
        int m104dp;
        int backgroundDrawableLeft;
        int i = this.backgroundWidth;
        if (this.isRoundVideo) {
            m104dp = i - ((int) (getVideoTranscriptionProgress() * AndroidUtilities.m104dp(3)));
            if (this.drawPinnedBottom && this.currentMessageObject.isOutOwner()) {
                m104dp = (int) (m104dp - (AndroidUtilities.m104dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            if (this.drawPinnedBottom && !this.currentMessageObject.isOutOwner()) {
                m104dp = (int) (m104dp - (AndroidUtilities.m104dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        } else {
            m104dp = i - (this.mediaBackground ? 0 : AndroidUtilities.m104dp(3));
            if (!this.mediaBackground && this.drawPinnedBottom) {
                m104dp -= AndroidUtilities.m104dp(6);
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        }
        return backgroundDrawableLeft + m104dp;
    }

    public int getBackgroundDrawableTop() {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int m104dp = ((groupedMessagePosition == null || (groupedMessagePosition.flags & 4) != 0) ? 0 : 0 - AndroidUtilities.m104dp(3)) + (this.drawPinnedTop ? 0 : AndroidUtilities.m104dp(1));
        return (this.mediaBackground || !this.drawPinnedTop) ? m104dp : m104dp - AndroidUtilities.m104dp(1);
    }

    public int getBackgroundDrawableBottom() {
        int i;
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int i2 = 0;
        if (groupedMessagePosition != null) {
            i = (groupedMessagePosition.flags & 4) == 0 ? AndroidUtilities.m104dp(3) + 0 : 0;
            if ((this.currentPosition.flags & 8) == 0) {
                i += AndroidUtilities.m104dp(this.currentMessageObject.isOutOwner() ? 3 : 4);
            }
        } else {
            i = 0;
        }
        boolean z = this.drawPinnedBottom;
        if (!z || !this.drawPinnedTop) {
            if (z) {
                i2 = AndroidUtilities.m104dp(1);
            } else {
                i2 = AndroidUtilities.m104dp(2);
            }
        }
        int backgroundDrawableTop = ((getBackgroundDrawableTop() + this.layoutHeight) - i2) + i;
        if (this.mediaBackground) {
            return backgroundDrawableTop;
        }
        if (this.drawPinnedTop) {
            backgroundDrawableTop += AndroidUtilities.m104dp(1);
        }
        return this.drawPinnedBottom ? backgroundDrawableTop + AndroidUtilities.m104dp(1) : backgroundDrawableTop;
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawBackground(android.graphics.Canvas, int, int, int, int, boolean, boolean, boolean, int):void");
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

    /* JADX WARN: Code restructure failed: missing block: B:654:0x0fd1, code lost:
        if (android.text.TextUtils.isEmpty(r6.caption) != false) goto L781;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x0fed, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r43.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaInvoice) != false) goto L781;
     */
    /* JADX WARN: Code restructure failed: missing block: B:677:0x1054, code lost:
        if (android.text.TextUtils.isEmpty(r6.caption) != false) goto L804;
     */
    /* JADX WARN: Code restructure failed: missing block: B:681:0x1070, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r43.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaInvoice) != false) goto L804;
     */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0859  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0867  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0b87  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0be4  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0beb  */
    /* JADX WARN: Removed duplicated region for block: B:591:0x0dad  */
    /* JADX WARN: Removed duplicated region for block: B:791:0x1296  */
    /* JADX WARN: Removed duplicated region for block: B:796:0x12a3  */
    /* JADX WARN: Removed duplicated region for block: B:961:0x17ce  */
    /* JADX WARN: Removed duplicated region for block: B:970:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawNamesLayout(android.graphics.Canvas r44, float r45) {
        /*
            Method dump skipped, instructions count: 6098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawNamesLayout(android.graphics.Canvas, float):void");
    }

    public boolean hasCaptionLayout() {
        return this.captionLayout != null;
    }

    public boolean hasCommentLayout() {
        return this.drawCommentButton;
    }

    public MessageObject.TextLayoutBlocks getCaptionLayout() {
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
        return getHighlightAlpha(false);
    }

    public float getHighlightAlpha(boolean z) {
        float f;
        QuoteHighlight quoteHighlight;
        if (this.drawSelectionBackground || !this.isHighlightedAnimated) {
            f = 1.0f;
        } else {
            int i = this.highlightProgress;
            f = (i >= 300 ? 1.0f : i / 300.0f) * 1.0f;
        }
        return (z || (quoteHighlight = this.quoteHighlight) == null) ? f : f * (1.0f - quoteHighlight.getT());
    }

    public void setCheckBoxVisible(boolean z, boolean z2) {
        MessageObject.GroupedMessages groupedMessages;
        MessageObject.GroupedMessages groupedMessages2;
        if (z) {
            this.quoteHighlight = null;
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
            drawCaptionLayout(canvas, this.captionLayout, true, z, f);
        } else {
            drawCaptionLayout(canvas, transitionParams.animateOutCaptionLayout, false, z, f * (1.0f - this.transitionParams.animateChangeProgress));
            drawCaptionLayout(canvas, this.captionLayout, true, z, f * this.transitionParams.animateChangeProgress);
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
    /* JADX WARN: Removed duplicated region for block: B:226:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0605  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x060b  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x063f  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:406:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawCaptionLayout(android.graphics.Canvas r26, org.telegram.messenger.MessageObject.TextLayoutBlocks r27, boolean r28, boolean r29, float r30) {
        /*
            Method dump skipped, instructions count: 2424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawCaptionLayout(android.graphics.Canvas, org.telegram.messenger.MessageObject$TextLayoutBlocks, boolean, boolean, float):void");
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
        MessageObject messageObject;
        ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
        if (chatMessageCellDelegate == null) {
            return;
        }
        if (!chatMessageCellDelegate.isProgressLoading(this, 1)) {
            this.progressLoadingLink = null;
            ArrayList<LoadingDrawableLocation> arrayList = this.progressLoadingLinkDrawables;
            if (arrayList == null || arrayList.isEmpty()) {
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
        if (this.progressLoadingLink == null || findProgressLoadingLink(loadingDrawableLocation2, linkPath, this.descriptionLayout, BitmapDescriptorFactory.HUE_RED, -2)) {
            return;
        }
        MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
        if ((textLayoutBlocks == null || !findProgressLoadingLink(loadingDrawableLocation2, linkPath, textLayoutBlocks.textLayoutBlocks)) && (messageObject = this.currentMessageObject) != null) {
            findProgressLoadingLink(loadingDrawableLocation2, linkPath, messageObject.textLayoutBlocks);
        }
    }

    private boolean findProgressLoadingLink(LoadingDrawableLocation loadingDrawableLocation, LinkPath linkPath, ArrayList<MessageObject.TextLayoutBlock> arrayList) {
        if (arrayList == null) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (findProgressLoadingLink(loadingDrawableLocation, linkPath, arrayList.get(i).textLayout, arrayList.get(i).textYOffset, i)) {
                return true;
            }
        }
        return false;
    }

    private boolean findProgressLoadingLink(LoadingDrawableLocation loadingDrawableLocation, LinkPath linkPath, Layout layout, float f, int i) {
        if (layout != null && (layout.getText() instanceof Spanned)) {
            Spanned spanned = (Spanned) layout.getText();
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) spanned.getSpans(0, spanned.length(), CharacterStyle.class);
            if (characterStyleArr != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= characterStyleArr.length) {
                        break;
                    } else if (characterStyleArr[i2] == this.progressLoadingLink) {
                        loadingDrawableLocation.blockNum = i;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            if (loadingDrawableLocation.blockNum == i) {
                linkPath.rewind();
                int spanStart = spanned.getSpanStart(this.progressLoadingLink);
                int spanEnd = spanned.getSpanEnd(this.progressLoadingLink);
                linkPath.setCurrentLayout(layout, spanStart, f);
                layout.getSelectionPath(spanStart, spanEnd, linkPath);
                this.progressLoadingLinkCurrentDrawable.updateBounds();
                return true;
            }
        }
        return false;
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
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawTime(android.graphics.Canvas, float, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0365  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawTimeInternal(android.graphics.Canvas r41, float r42, boolean r43, float r44, android.text.StaticLayout r45, float r46, boolean r47) {
        /*
            Method dump skipped, instructions count: 2817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawTimeInternal(android.graphics.Canvas, float, boolean, float, android.text.StaticLayout, float, boolean):void");
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
            this.statusDrawableAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ChatMessageCell.this.lambda$createStatusDrawableAnimator$11(z, valueAnimator);
                }
            });
            this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ChatMessageCell.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    int createStatusDrawableParams = ChatMessageCell.this.transitionParams.createStatusDrawableParams();
                    if (ChatMessageCell.this.animateToStatusDrawableParams == createStatusDrawableParams) {
                        ChatMessageCell.this.statusDrawableAnimationInProgress = false;
                        ChatMessageCell chatMessageCell = ChatMessageCell.this;
                        chatMessageCell.transitionParams.lastStatusDrawableParams = chatMessageCell.animateToStatusDrawableParams;
                        return;
                    }
                    ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
                    chatMessageCell2.createStatusDrawableAnimator(chatMessageCell2.animateToStatusDrawableParams, createStatusDrawableParams, z);
                }
            });
            this.statusDrawableAnimationInProgress = true;
            this.statusDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStatusDrawableAnimator$11(boolean z, ValueAnimator valueAnimator) {
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
                f6 = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m105dp(9.0f);
            } else {
                float m105dp = (f - AndroidUtilities.m105dp((this.pinnedBottom || this.pinnedTop) ? 9.5f : 8.5f)) + f3;
                if (this.isRoundVideo) {
                    f6 = m105dp - ((AndroidUtilities.m104dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
                } else {
                    f6 = m105dp;
                }
            }
            BaseCell.setDrawableBounds(msgClockDrawable, f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m104dp(11)), f6 - msgClockDrawable.getIntrinsicHeight());
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
            float m104dp = f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m104dp(11));
            float f9 = 21.5f;
            if (shouldDrawTimeOnMedia()) {
                currentTotalHeight = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m105dp(21.5f);
            } else {
                if (!this.pinnedBottom && !this.pinnedTop) {
                    f9 = 20.5f;
                }
                float m105dp2 = (f - AndroidUtilities.m105dp(f9)) + f3;
                currentTotalHeight = this.isRoundVideo ? m105dp2 - (this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress())) : m105dp2;
            }
            this.rect.set(m104dp, currentTotalHeight, AndroidUtilities.m104dp(14) + m104dp, AndroidUtilities.m104dp(14) + currentTotalHeight);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            int i = (int) (f8 * 255.0f);
            Theme.chat_msgErrorPaint.setAlpha(i);
            if (z4) {
                canvas.save();
                canvas.scale(f7, f7, this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            Drawable themedDrawable = getThemedDrawable("drawableMsgError");
            BaseCell.setDrawableBounds(themedDrawable, m104dp + AndroidUtilities.m104dp(6), currentTotalHeight + AndroidUtilities.m104dp(2));
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawViewsAndRepliesLayout(android.graphics.Canvas, float, float, float, float, float, boolean):void");
    }

    private void drawStatusDrawable(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f, boolean z5, float f2, float f3, float f4, boolean z6, boolean z7) {
        float imageY2;
        int m104dp;
        int m104dp2;
        Drawable themedDrawable;
        Drawable drawable;
        int i;
        boolean z8 = (f4 == 1.0f || z6) ? false : true;
        float f5 = (f4 * 0.5f) + 0.5f;
        float f6 = z8 ? f * f4 : f;
        if (this.documentAttachType == 7) {
            imageY2 = f3 - ((AndroidUtilities.m104dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
        } else {
            imageY2 = this.photoImage.getImageY2() + this.additionalTimeOffsetY;
        }
        float m105dp = imageY2 - AndroidUtilities.m105dp(8.5f);
        if (z3) {
            MsgClockDrawable msgClockDrawable = Theme.chat_msgClockDrawable;
            if (shouldDrawTimeOnMedia()) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    i = getThemedColor(Theme.key_chat_serviceText);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m104dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m105dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    i = getThemedColor(Theme.key_chat_mediaSentClock);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m104dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m105dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (f6 * 255.0f));
                }
            } else {
                int themedColor = getThemedColor(Theme.key_chat_outSentClock);
                BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m105dp(18.5f)) - msgClockDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m105dp(8.5f)) - msgClockDrawable.getIntrinsicHeight()) + f2);
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
                            canvas.translate(AndroidUtilities.m105dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m105dp(z5 ? 28.3f : 26.3f)) - drawable.getIntrinsicWidth(), (m105dp - drawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m105dp(z5 ? 23.5f : 21.5f)) - drawable.getIntrinsicWidth(), (m105dp - drawable.getIntrinsicHeight()) + f2);
                    }
                    drawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    if (z) {
                        if (z6) {
                            canvas.translate(AndroidUtilities.m105dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m105dp(z5 ? 28.3f : 26.3f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m105dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m105dp(z5 ? 23.5f : 21.5f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m105dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
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
                        canvas.translate(AndroidUtilities.m104dp(4) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                    }
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckReadSelected" : "drawableMsgOutCheckRead");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m105dp(22.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m104dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
                } else {
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckSelected" : "drawableMsgOutCheck");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m105dp(18.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m104dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
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
                BaseCell.setDrawableBounds(themedDrawable2, (this.layoutWidth - AndroidUtilities.m105dp(z5 ? 23.5f : 21.5f)) - themedDrawable2.getIntrinsicWidth(), (m105dp - themedDrawable2.getIntrinsicHeight()) + f2);
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
                float m104dp3 = (this.layoutWidth - AndroidUtilities.m104dp(18)) - themedDrawable3.getIntrinsicWidth();
                if (!this.pinnedBottom && !this.pinnedTop) {
                    i2 = 8;
                }
                BaseCell.setDrawableBounds(themedDrawable3, m104dp3, ((f3 - AndroidUtilities.m104dp(i2)) - themedDrawable3.getIntrinsicHeight()) + f2);
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
                m104dp = this.layoutWidth - AndroidUtilities.m105dp(34.5f);
                m104dp2 = AndroidUtilities.m105dp(26.5f);
            } else {
                m104dp = this.layoutWidth - AndroidUtilities.m104dp(32);
                m104dp2 = AndroidUtilities.m104dp((this.pinnedBottom || this.pinnedTop) ? 22 : 21);
            }
            float f7 = (f3 - m104dp2) + f2;
            this.rect.set(m104dp, f7, AndroidUtilities.m104dp(14) + m104dp, AndroidUtilities.m104dp(14) + f7);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            Theme.chat_msgErrorPaint.setAlpha((int) (alpha * f6));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m104dp(1), AndroidUtilities.m104dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            BaseCell.setDrawableBounds(Theme.chat_msgErrorDrawable, m104dp + AndroidUtilities.m104dp(6), f7 + AndroidUtilities.m104dp(2));
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

    /* JADX WARN: Code restructure failed: missing block: B:369:0x0a5a, code lost:
        if (r0[0] == 3) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:649:0x120e, code lost:
        if (r4 == 2) goto L1133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:659:0x121f, code lost:
        if (r4 != (-1)) goto L926;
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x1227, code lost:
        if (r27.currentMessageObject.needDrawBluredPreview() == false) goto L928;
     */
    /* JADX WARN: Code restructure failed: missing block: B:915:0x1768, code lost:
        if (r0.revealingMediaSpoilers != false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:923:0x1783, code lost:
        if (r27.radialProgress.getIcon() != 4) goto L265;
     */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x198f  */
    /* JADX WARN: Removed duplicated region for block: B:1007:0x199d  */
    /* JADX WARN: Removed duplicated region for block: B:1042:0x1a64  */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x1a6b  */
    /* JADX WARN: Removed duplicated region for block: B:1120:0x1c41  */
    /* JADX WARN: Removed duplicated region for block: B:1127:0x1c60  */
    /* JADX WARN: Removed duplicated region for block: B:1130:0x1cb2  */
    /* JADX WARN: Removed duplicated region for block: B:1159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:762:0x135e  */
    /* JADX WARN: Removed duplicated region for block: B:763:0x1361  */
    /* JADX WARN: Removed duplicated region for block: B:766:0x136d  */
    /* JADX WARN: Removed duplicated region for block: B:767:0x136f  */
    /* JADX WARN: Removed duplicated region for block: B:770:0x137d  */
    /* JADX WARN: Removed duplicated region for block: B:771:0x1384  */
    /* JADX WARN: Removed duplicated region for block: B:779:0x13bb  */
    /* JADX WARN: Removed duplicated region for block: B:780:0x13bf  */
    /* JADX WARN: Removed duplicated region for block: B:783:0x13ff  */
    /* JADX WARN: Removed duplicated region for block: B:784:0x143b  */
    /* JADX WARN: Removed duplicated region for block: B:796:0x1479  */
    /* JADX WARN: Removed duplicated region for block: B:797:0x147c  */
    /* JADX WARN: Removed duplicated region for block: B:800:0x1483  */
    /* JADX WARN: Removed duplicated region for block: B:801:0x1487  */
    /* JADX WARN: Removed duplicated region for block: B:819:0x1530  */
    /* JADX WARN: Removed duplicated region for block: B:823:0x1563  */
    /* JADX WARN: Removed duplicated region for block: B:827:0x157c  */
    /* JADX WARN: Removed duplicated region for block: B:835:0x159d  */
    /* JADX WARN: Removed duplicated region for block: B:839:0x15b4  */
    /* JADX WARN: Removed duplicated region for block: B:847:0x15d3  */
    /* JADX WARN: Removed duplicated region for block: B:855:0x15e4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:861:0x15f2  */
    /* JADX WARN: Removed duplicated region for block: B:865:0x1603  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:874:0x1620  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x1760  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x178d  */
    /* JADX WARN: Removed duplicated region for block: B:927:0x1793  */
    /* JADX WARN: Removed duplicated region for block: B:943:0x17e1  */
    /* JADX WARN: Removed duplicated region for block: B:961:0x188e  */
    /* JADX WARN: Removed duplicated region for block: B:965:0x1898  */
    /* JADX WARN: Removed duplicated region for block: B:976:0x18bb  */
    /* JADX WARN: Removed duplicated region for block: B:982:0x18df  */
    /* JADX WARN: Removed duplicated region for block: B:983:0x18e1  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x18ea  */
    /* JADX WARN: Removed duplicated region for block: B:995:0x1977  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawOverlays(android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 7558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawOverlays(android.graphics.Canvas):void");
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
            if (i == C3632R.C3635id.acc_action_small_button) {
                didPressMiniButton(true);
            } else if (i == C3632R.C3635id.acc_action_msg_options) {
                ChatMessageCellDelegate chatMessageCellDelegate3 = this.delegate;
                if (chatMessageCellDelegate3 != null) {
                    if (this.currentMessageObject.type == 16) {
                        chatMessageCellDelegate3.didLongPress(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                    } else {
                        chatMessageCellDelegate3.didPressOther(this, this.otherX, this.otherY);
                    }
                }
            } else if (i == C3632R.C3635id.acc_action_open_forwarded_origin && (chatMessageCellDelegate = this.delegate) != null) {
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
    private static org.telegram.p043ui.Components.Point getMessageSize(int r3, int r4, int r5, int r6) {
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
            int r6 = org.telegram.messenger.AndroidUtilities.m104dp(r6)
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
            int r6 = org.telegram.messenger.AndroidUtilities.m104dp(r6)
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
            int r1 = org.telegram.messenger.AndroidUtilities.m104dp(r2)
        L62:
            if (r0 != 0) goto L68
            int r0 = org.telegram.messenger.AndroidUtilities.m104dp(r2)
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
            int r2 = org.telegram.messenger.AndroidUtilities.m104dp(r6)
            if (r0 >= r2) goto L86
            int r6 = org.telegram.messenger.AndroidUtilities.m104dp(r6)
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.getMessageSize(int, int, int, int):org.telegram.ui.Components.Point");
    }

    public StaticLayout getDescriptionlayout() {
        return this.descriptionLayout;
    }

    public void setSelectedBackgroundProgress(float f) {
        this.selectedBackgroundProgress = f;
        invalidate();
    }

    public int computeHeight(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, boolean z) {
        this.photoImage.setIgnoreImageSet(true);
        this.avatarImage.setIgnoreImageSet(true);
        this.replyImageReceiver.setIgnoreImageSet(true);
        this.locationImageReceiver.setIgnoreImageSet(true);
        if (groupedMessages != null && groupedMessages.messages.size() != 1) {
            if (groupedMessages.messages.size() != groupedMessages.positions.size()) {
                groupedMessages.calculate();
            }
            this.computedGroupCaptionY = 0;
            int i = 0;
            for (int i2 = 0; i2 < groupedMessages.messages.size(); i2++) {
                MessageObject messageObject2 = groupedMessages.messages.get(i2);
                MessageObject.GroupedMessagePosition groupedMessagePosition = groupedMessages.positions.get(messageObject2);
                if (groupedMessagePosition != null && (groupedMessagePosition.flags & 1) != 0) {
                    setMessageContent(messageObject2, groupedMessages, false, false);
                    if (z && !TextUtils.isEmpty(this.currentCaption)) {
                        updateCaptionLayout();
                        this.computedGroupCaptionY = (int) (i + this.captionY);
                        this.computedCaptionLayout = this.captionLayout;
                    }
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
        updateCaptionLayout();
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
        int i = (!messageObject.isOutOwner() || this.currentMessageObject.hasWideCode) ? this.checkBoxTranslation : 0;
        if (this.wideMode) {
            float m104dp = 1.0f - ((i * 0.05f) / AndroidUtilities.m104dp(35));
            setScaleX(m104dp);
            setScaleY(m104dp);
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
                this.checkBoxTranslation = (int) Math.ceil((z2 ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m104dp(35));
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
            boolean z3;
            String str3;
            long j;
            boolean z4;
            String str4;
            CharacterStyle[] characterStyleArr;
            TLRPC$ReactionCount tLRPC$ReactionCount;
            boolean z5;
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
                boolean z6 = ChatMessageCell.this.currentMessageObject != null && ChatMessageCell.this.currentMessageObject.isOut() && !ChatMessageCell.this.currentMessageObject.scheduled && ChatMessageCell.this.currentMessageObject.isUnread();
                boolean z7 = ChatMessageCell.this.currentMessageObject != null && ChatMessageCell.this.currentMessageObject.isContentUnread();
                if (ChatMessageCell.this.currentMessageObject != null) {
                    str3 = " ";
                    j = ChatMessageCell.this.currentMessageObject.loadedFileSize;
                } else {
                    str3 = " ";
                    j = 0;
                }
                ChatMessageCell chatMessageCell = ChatMessageCell.this;
                if (chatMessageCell.accessibilityText == null || chatMessageCell.accessibilityTextUnread != z6 || ChatMessageCell.this.accessibilityTextContentUnread != z7 || ChatMessageCell.this.accessibilityTextFileSize != j) {
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
                            if (ChatMessageCell.this.forwardedNameLayout[i5] != null && ChatMessageCell.this.forwardedNameLayout[i5].getText() != null) {
                                spannableStringBuilder.append(ChatMessageCell.this.forwardedNameLayout[i5].getText());
                                spannableStringBuilder.append((CharSequence) (i5 == 0 ? str3 : "\n"));
                            }
                            i5++;
                        }
                    }
                    if (ChatMessageCell.this.documentAttach != null && ChatMessageCell.this.documentAttachType == 1) {
                        String attachFileName = FileLoader.getAttachFileName(ChatMessageCell.this.documentAttach);
                        if (attachFileName.indexOf(46) != -1) {
                            spannableStringBuilder.append((CharSequence) LocaleController.formatString(C3632R.string.AccDescrDocumentType, attachFileName.substring(attachFileName.lastIndexOf(46) + 1).toUpperCase(Locale.ROOT)));
                        }
                    }
                    if (!TextUtils.isEmpty(ChatMessageCell.this.currentMessageObject.messageText)) {
                        spannableStringBuilder.append(ChatMessageCell.this.currentMessageObject.messageText);
                    }
                    if (ChatMessageCell.this.documentAttach == null || !((ChatMessageCell.this.documentAttachType == 1 || ChatMessageCell.this.documentAttachType == 2 || ChatMessageCell.this.documentAttachType == 4) && ChatMessageCell.this.buttonState == 1 && ChatMessageCell.this.loadingProgressLayout != null)) {
                        z4 = z6;
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        boolean isSending = ChatMessageCell.this.currentMessageObject.isSending();
                        z4 = z6;
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString(isSending ? "AccDescrUploadProgress" : "AccDescrDownloadProgress", isSending ? C3632R.string.AccDescrUploadProgress : C3632R.string.AccDescrDownloadProgress, AndroidUtilities.formatFileSize(ChatMessageCell.this.currentMessageObject.loadedFileSize), AndroidUtilities.formatFileSize(ChatMessageCell.this.lastLoadingSizeTotal)));
                    }
                    if (!ChatMessageCell.this.currentMessageObject.isMusic()) {
                        if (ChatMessageCell.this.currentMessageObject.isVoice() || ChatMessageCell.this.isRoundVideo) {
                            spannableStringBuilder.append((CharSequence) ", ");
                            spannableStringBuilder.append((CharSequence) LocaleController.formatDuration((int) ChatMessageCell.this.currentMessageObject.getDuration()));
                            spannableStringBuilder.append((CharSequence) ", ");
                            if (ChatMessageCell.this.currentMessageObject.isContentUnread()) {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgNotPlayed", C3632R.string.AccDescrMsgNotPlayed));
                            } else {
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgPlayed", C3632R.string.AccDescrMsgPlayed));
                            }
                        }
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrMusicInfo", C3632R.string.AccDescrMusicInfo, ChatMessageCell.this.currentMessageObject.getMusicAuthor(), ChatMessageCell.this.currentMessageObject.getMusicTitle()));
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
                                    string = LocaleController.getString("QuizPoll", C3632R.string.QuizPoll);
                                } else {
                                    string = LocaleController.getString("AnonymousQuizPoll", C3632R.string.AnonymousQuizPoll);
                                }
                            } else if (ChatMessageCell.this.lastPoll.public_voters) {
                                string = LocaleController.getString("PublicPoll", C3632R.string.PublicPoll);
                            } else {
                                string = LocaleController.getString("AnonymousPoll", C3632R.string.AnonymousPoll);
                            }
                        } else {
                            string = LocaleController.getString("FinalResults", C3632R.string.FinalResults);
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
                                    spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSendingError", C3632R.string.AccDescrMsgSendingError));
                                }
                            } else {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("AccDescrMsgSending", C3632R.string.AccDescrMsgSending));
                                float progress = ChatMessageCell.this.radialProgress.getProgress();
                                if (progress > BitmapDescriptorFactory.HUE_RED) {
                                    spannableStringBuilder.append((CharSequence) Integer.toString(Math.round(progress * 100.0f))).append((CharSequence) "%");
                                }
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) "\n");
                            if (ChatMessageCell.this.currentMessageObject.scheduled) {
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrScheduledDate", C3632R.string.AccDescrScheduledDate, ChatMessageCell.this.currentTimeString));
                                str4 = str3;
                            } else {
                                int i6 = C3632R.string.AccDescrSentDate;
                                StringBuilder sb = new StringBuilder();
                                sb.append(LocaleController.getString("TodayAt", C3632R.string.TodayAt));
                                str4 = str3;
                                sb.append(str4);
                                sb.append((Object) ChatMessageCell.this.currentTimeString);
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrSentDate", i6, sb.toString()));
                                spannableStringBuilder.append((CharSequence) ", ");
                                if (ChatMessageCell.this.currentMessageObject.isUnread()) {
                                    i4 = C3632R.string.AccDescrMsgUnread;
                                    str5 = "AccDescrMsgUnread";
                                } else {
                                    i4 = C3632R.string.AccDescrMsgRead;
                                    str5 = "AccDescrMsgRead";
                                }
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(str5, i4));
                            }
                        }
                    } else {
                        str4 = str3;
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReceivedDate", C3632R.string.AccDescrReceivedDate, LocaleController.getString("TodayAt", C3632R.string.TodayAt) + str4 + ((Object) ChatMessageCell.this.currentTimeString)));
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
                                    z5 = false;
                                } else {
                                    TLRPC$User user = MessagesController.getInstance(ChatMessageCell.this.currentAccount).getUser(Long.valueOf(MessageObject.getPeerId(tLRPC$MessagePeerReaction.peer_id)));
                                    z5 = UserObject.isUserSelf(user);
                                    if (user != null) {
                                        str6 = UserObject.getFirstName(user);
                                    }
                                }
                                if (z5) {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrYouReactedWith", C3632R.string.AccDescrYouReactedWith, str7));
                                } else {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReactedWith", C3632R.string.AccDescrReactedWith, str6, str7));
                                }
                            } else if (i7 > 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfPeopleReactions", tLRPC$ReactionCount2.count, str7));
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString("Reactions", C3632R.string.Reactions)).append((CharSequence) ": ");
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
                    chatMessageCell4.accessibilityTextUnread = z4;
                    ChatMessageCell.this.accessibilityTextContentUnread = z7;
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
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3632R.C3635id.acc_action_msg_options, LocaleController.getString("AccActionMessageOptions", C3632R.string.AccActionMessageOptions)));
                    int iconForCurrentState = ChatMessageCell.this.getIconForCurrentState();
                    if (iconForCurrentState == 0) {
                        string2 = LocaleController.getString("AccActionPlay", C3632R.string.AccActionPlay);
                    } else if (iconForCurrentState == 1) {
                        string2 = LocaleController.getString("AccActionPause", C3632R.string.AccActionPause);
                    } else if (iconForCurrentState == 2) {
                        string2 = LocaleController.getString("AccActionDownload", C3632R.string.AccActionDownload);
                    } else if (iconForCurrentState == 3) {
                        string2 = LocaleController.getString("AccActionCancelDownload", C3632R.string.AccActionCancelDownload);
                    } else if (iconForCurrentState == 5 || iconForCurrentState == 100) {
                        string2 = LocaleController.getString("AccActionOpenFile", C3632R.string.AccActionOpenFile);
                    } else {
                        string2 = ChatMessageCell.this.currentMessageObject.type == 16 ? LocaleController.getString("CallAgain", C3632R.string.CallAgain) : null;
                    }
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, string2));
                    obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccActionEnterSelectionMode", C3632R.string.AccActionEnterSelectionMode)));
                    if (ChatMessageCell.this.getMiniIconForCurrentState() == 2) {
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3632R.C3635id.acc_action_small_button, LocaleController.getString("AccActionDownload", C3632R.string.AccActionDownload)));
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
                    if (ChatMessageCell.this.currentMessageObject.caption instanceof Spannable) {
                        ChatMessageCell chatMessageCell6 = ChatMessageCell.this;
                        if (chatMessageCell6.captionLayout != null) {
                            Spannable spannable2 = (Spannable) chatMessageCell6.currentMessageObject.caption;
                            int i11 = 0;
                            for (CharacterStyle characterStyle3 : (CharacterStyle[]) spannable2.getSpans(0, spannable2.length(), ClickableSpan.class)) {
                                obtain.addChild(ChatMessageCell.this, i11 + AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
                                i11++;
                            }
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
                ChatMessageCell chatMessageCell7 = ChatMessageCell.this;
                if (chatMessageCell7.replyNameLayout != null) {
                    obtain.addChild(chatMessageCell7, 497);
                }
                if (ChatMessageCell.this.forwardedNameLayout[0] != null && ChatMessageCell.this.forwardedNameLayout[1] != null) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        obtain.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3632R.C3635id.acc_action_open_forwarded_origin, LocaleController.getString("AccActionOpenForwardedOrigin", C3632R.string.AccActionOpenForwardedOrigin)));
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
                obtain2.setContentDescription(LocaleController.getInternalString(C3632R.string.chat_long_action_translate));
                obtain2.addAction(16);
                this.rect.set((int) ChatMessageCell.this.additionalSideButtonStartX, (int) ChatMessageCell.this.additionalSideButtonStartY, ((int) ChatMessageCell.this.additionalSideButtonStartX) + AndroidUtilities.m104dp(40), ((int) ChatMessageCell.this.additionalSideButtonStartY) + AndroidUtilities.m104dp(32));
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
                    if (!(ChatMessageCell.this.currentMessageObject.caption instanceof Spannable)) {
                        return null;
                    }
                    ChatMessageCell chatMessageCell8 = ChatMessageCell.this;
                    if (chatMessageCell8.captionLayout == null) {
                        return null;
                    }
                    Spannable spannable3 = (Spannable) chatMessageCell8.currentMessageObject.caption;
                    ClickableSpan linkById = getLinkById(i, false);
                    if (linkById == null) {
                        return null;
                    }
                    int[] realSpanStartAndEnd = ChatMessageCell.this.getRealSpanStartAndEnd(spannable3, linkById);
                    obtain2.setText(spannable3.subSequence(realSpanStartAndEnd[0], realSpanStartAndEnd[1]).toString());
                    Iterator<MessageObject.TextLayoutBlock> it3 = ChatMessageCell.this.captionLayout.textLayoutBlocks.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z3 = true;
                            break;
                        }
                        MessageObject.TextLayoutBlock next = it3.next();
                        int length = next.textLayout.getText().length();
                        int i14 = next.charactersOffset;
                        if (i14 <= realSpanStartAndEnd[0] && length + i14 >= realSpanStartAndEnd[1]) {
                            next.textLayout.getSelectionPath(realSpanStartAndEnd[0] - i14, realSpanStartAndEnd[1] - i14, this.linkPath);
                            this.linkPath.computeBounds(this.rectF, true);
                            Rect rect = this.rect;
                            RectF rectF = this.rectF;
                            rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                            this.rect.offset(0, (int) next.textYOffset);
                            Rect rect2 = this.rect;
                            ChatMessageCell chatMessageCell9 = ChatMessageCell.this;
                            rect2.offset(chatMessageCell9.textX, chatMessageCell9.textY);
                            obtain2.setBoundsInParent(this.rect);
                            if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                                ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                            }
                            z3 = true;
                            this.rect.offset(iArr[0], iArr[1]);
                            obtain2.setBoundsInScreen(this.rect);
                        }
                    }
                    obtain2.setClassName("android.widget.TextView");
                    obtain2.setEnabled(z3);
                    obtain2.setClickable(z3);
                    obtain2.setLongClickable(z3);
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
                    Iterator<MessageObject.TextLayoutBlock> it4 = ChatMessageCell.this.currentMessageObject.textLayoutBlocks.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z2 = true;
                            break;
                        }
                        MessageObject.TextLayoutBlock next2 = it4.next();
                        int length2 = next2.textLayout.getText().length();
                        int i15 = next2.charactersOffset;
                        if (i15 <= realSpanStartAndEnd2[0] && length2 + i15 >= realSpanStartAndEnd2[1]) {
                            next2.textLayout.getSelectionPath(realSpanStartAndEnd2[0] - i15, realSpanStartAndEnd2[1] - i15, this.linkPath);
                            this.linkPath.computeBounds(this.rectF, true);
                            Rect rect3 = this.rect;
                            RectF rectF2 = this.rectF;
                            rect3.set((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                            this.rect.offset(0, (int) next2.textYOffset);
                            Rect rect4 = this.rect;
                            ChatMessageCell chatMessageCell10 = ChatMessageCell.this;
                            rect4.offset(chatMessageCell10.textX, chatMessageCell10.textY);
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
                    int i16 = i - 1000;
                    if (i16 >= ChatMessageCell.this.botButtons.size()) {
                        return null;
                    }
                    BotButton botButton2 = (BotButton) ChatMessageCell.this.botButtons.get(i16);
                    obtain2.setText(botButton2.title.getText());
                    obtain2.setClassName("android.widget.Button");
                    obtain2.setEnabled(true);
                    obtain2.setClickable(true);
                    obtain2.addAction(16);
                    this.rect.set(botButton2.f1791x, botButton2.f1792y, botButton2.f1791x + botButton2.width, botButton2.f1792y + botButton2.height);
                    this.rect.offset(ChatMessageCell.this.currentMessageObject.isOutOwner() ? (ChatMessageCell.this.getMeasuredWidth() - ChatMessageCell.this.widthForButtons) - AndroidUtilities.m104dp(10) : ChatMessageCell.this.backgroundDrawableLeft + AndroidUtilities.m104dp(ChatMessageCell.this.mediaBackground ? 1 : 7), ChatMessageCell.this.layoutHeight);
                    obtain2.setBoundsInParent(this.rect);
                    if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                        ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                    }
                    this.rect.offset(iArr[0], iArr[1]);
                    obtain2.setBoundsInScreen(this.rect);
                } else if (i >= 500) {
                    int i17 = i - 500;
                    if (i17 >= ChatMessageCell.this.pollButtons.size()) {
                        return null;
                    }
                    PollButton pollButton2 = (PollButton) ChatMessageCell.this.pollButtons.get(i17);
                    StringBuilder sb2 = new StringBuilder(pollButton2.title.getText());
                    if (ChatMessageCell.this.pollVoted) {
                        obtain2.setSelected(pollButton2.chosen);
                        sb2.append(", ");
                        sb2.append(pollButton2.percent);
                        sb2.append("%");
                        if (ChatMessageCell.this.lastPoll != null && ChatMessageCell.this.lastPoll.quiz && (pollButton2.chosen || pollButton2.correct)) {
                            sb2.append(", ");
                            if (pollButton2.correct) {
                                i3 = C3632R.string.AccDescrQuizCorrectAnswer;
                                str2 = "AccDescrQuizCorrectAnswer";
                            } else {
                                i3 = C3632R.string.AccDescrQuizIncorrectAnswer;
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
                    int i18 = pollButton2.f1794y + ChatMessageCell.this.namesOffset;
                    int m104dp = ChatMessageCell.this.backgroundWidth - AndroidUtilities.m104dp(76);
                    Rect rect5 = this.rect;
                    int i19 = pollButton2.f1793x;
                    rect5.set(i19, i18, m104dp + i19, pollButton2.height + i18);
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
                        obtain2.setText(LocaleController.getString("AccDescrQuizExplanation", C3632R.string.AccDescrQuizExplanation));
                        obtain2.addAction(16);
                        this.rect.set(ChatMessageCell.this.pollHintX - AndroidUtilities.m104dp(8), ChatMessageCell.this.pollHintY - AndroidUtilities.m104dp(8), ChatMessageCell.this.pollHintX + AndroidUtilities.m104dp(32), ChatMessageCell.this.pollHintY + AndroidUtilities.m104dp(32));
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
                        ChatMessageCell chatMessageCell11 = ChatMessageCell.this;
                        if (chatMessageCell11.isOpenChatByShare(chatMessageCell11.currentMessageObject)) {
                            obtain2.setContentDescription(LocaleController.getString("AccDescrOpenChat", C3632R.string.AccDescrOpenChat));
                        } else {
                            obtain2.setContentDescription(LocaleController.getString("ShareFile", C3632R.string.ShareFile));
                        }
                        obtain2.addAction(16);
                        this.rect.set((int) ChatMessageCell.this.sideStartX, (int) ChatMessageCell.this.sideStartY, ((int) ChatMessageCell.this.sideStartX) + AndroidUtilities.m104dp(40), ((int) ChatMessageCell.this.sideStartY) + AndroidUtilities.m104dp(32));
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
                        sb3.append(LocaleController.getString("Reply", C3632R.string.Reply));
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
                        Rect rect6 = this.rect;
                        ChatMessageCell chatMessageCell12 = ChatMessageCell.this;
                        int i20 = chatMessageCell12.replyStartX;
                        ChatMessageCell chatMessageCell13 = ChatMessageCell.this;
                        rect6.set(i20, chatMessageCell12.replyStartY, Math.max(chatMessageCell12.replyNameWidth, ChatMessageCell.this.replyTextWidth) + i20, chatMessageCell13.replyStartY + ((int) chatMessageCell13.replyHeight));
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
                            int i21 = 0;
                            while (i21 < 2) {
                                sb4.append(ChatMessageCell.this.forwardedNameLayout[i21].getText());
                                sb4.append(i21 == 0 ? " " : "\n");
                                i21++;
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
                                formatShortNumber = LocaleController.getString("ViewInChat", C3632R.string.ViewInChat);
                            } else {
                                formatShortNumber = repliesCount == 0 ? LocaleController.getString("LeaveAComment", C3632R.string.LeaveAComment) : LocaleController.formatPluralString("CommentsCount", repliesCount, new Object[0]);
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
                            i2 = C3632R.string.AccActionCloseTranscription;
                            str = "AccActionCloseTranscription";
                        } else {
                            i2 = C3632R.string.AccActionOpenTranscription;
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

        /* JADX WARN: Code restructure failed: missing block: B:81:0x01b3, code lost:
            if (r7.this$0.currentMessageObject.messageOwner.reply_to.reply_from == null) goto L4;
         */
        @Override // android.view.accessibility.AccessibilityNodeProvider
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean performAction(int r8, int r9, android.os.Bundle r10) {
            /*
                Method dump skipped, instructions count: 665
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.MessageAccessibilityNodeProvider.performAction(int, int, android.os.Bundle):boolean");
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
            this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m104dp(8));
            int imageY = (int) (this.photoImage.getImageY() + AndroidUtilities.m104dp(8));
            this.videoButtonY = imageY;
            RadialProgress2 radialProgress2 = this.videoRadialProgress;
            int i2 = this.videoButtonX;
            radialProgress2.setProgressRect(i2, imageY, AndroidUtilities.m104dp(24) + i2, this.videoButtonY + AndroidUtilities.m104dp(24));
            this.buttonX = (int) (f + ((this.photoImage.getImageWidth() - AndroidUtilities.m104dp(48)) / 2.0f));
            int imageY2 = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m104dp(48)) / 2.0f));
            this.buttonY = imageY2;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i3 = this.buttonX;
            radialProgress22.setProgressRect(i3, imageY2, AndroidUtilities.m104dp(48) + i3, this.buttonY + AndroidUtilities.m104dp(48));
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
                return (int) (i - (AndroidUtilities.m104dp(6) * getVideoTranscriptionProgress()));
            }
            return i - AndroidUtilities.m104dp(6);
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
                return (int) (i + (AndroidUtilities.m104dp(6) * getVideoTranscriptionProgress()));
            }
            return i + AndroidUtilities.m104dp(6);
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

    public int getMediaOffsetY() {
        if (!this.transitionParams.animateMediaOffsetY) {
            return this.mediaOffsetY;
        }
        return AndroidUtilities.lerp(this.transitionParams.animateFromMediaOffsetY, this.mediaOffsetY, this.transitionParams.animateChangeProgress);
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
        public int animateFromLinkPreviewHeight;
        public int animateFromLinkPreviewY;
        private int animateFromMediaOffsetY;
        private float animateFromReplyTextHeight;
        public float animateFromReplyY;
        public float animateFromRoundVideoDotY;
        public float animateFromTextY;
        public int animateFromTimeX;
        public float animateFromTimeXPinned;
        private float animateFromTimeXReplies;
        private float animateFromTimeXViews;
        public boolean animateLinkAbove;
        public boolean animateLinkPreviewHeight;
        public boolean animateLinkPreviewY;
        public boolean animateLocationIsExpired;
        private boolean animateMediaOffsetY;
        public boolean animateMessageText;
        private float animateNameX;
        private AnimatedEmojiSpan.EmojiGroupedSpans animateOutAnimateEmoji;
        private AnimatedEmojiSpan.EmojiGroupedSpans animateOutAnimateEmojiReply;
        private MessageObject.TextLayoutBlocks animateOutCaptionLayout;
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
        public boolean animateSmallImage;
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
        private MessageObject.TextLayoutBlocks lastDrawingCaptionLayout;
        public float lastDrawingCaptionX;
        public float lastDrawingCaptionY;
        private boolean lastDrawingEdited;
        public float lastDrawingImageH;
        public float lastDrawingImageW;
        public float lastDrawingImageX;
        public float lastDrawingImageY;
        public boolean lastDrawingLinkAbove;
        public int lastDrawingLinkPreviewHeight;
        public int lastDrawingLinkPreviewY;
        private float lastDrawingReplyTextHeight;
        public boolean lastDrawingSmallImage;
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
        private int lastMediaOffsetY;
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
        public float photoImageFromCenterX;
        public float photoImageFromCenterY;
        public float photoImageFromHeight;
        public float photoImageFromWidth;
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
            Theme.MessageDrawable messageDrawable = ChatMessageCell.this.currentBackgroundDrawable;
            if (messageDrawable != null) {
                this.lastDrawingBackgroundRect.set(messageDrawable.getBounds());
            }
            this.lastDrawingTextBlocks = ChatMessageCell.this.currentMessageObject.textLayoutBlocks;
            this.lastDrawingEdited = ChatMessageCell.this.edited;
            this.lastDrawingCaptionX = ChatMessageCell.this.captionX;
            ChatMessageCell chatMessageCell = ChatMessageCell.this;
            this.lastDrawingCaptionY = chatMessageCell.captionY;
            this.lastDrawingCaptionLayout = chatMessageCell.captionLayout;
            this.lastDrawBotButtons.clear();
            if (!ChatMessageCell.this.botButtons.isEmpty()) {
                this.lastDrawBotButtons.addAll(ChatMessageCell.this.botButtons);
            }
            this.lastDrawingSmallImage = ChatMessageCell.this.isSmallImage;
            ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
            this.lastDrawingLinkPreviewHeight = chatMessageCell2.linkPreviewHeight;
            this.lastDrawingLinkAbove = chatMessageCell2.linkPreviewAbove;
            if (chatMessageCell2.commentLayout != null) {
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
            ChatMessageCell chatMessageCell3 = ChatMessageCell.this;
            this.lastIsPinned = chatMessageCell3.isPinned;
            this.lastSignMessage = chatMessageCell3.lastPostAuthor;
            this.lastDrawBackground = ChatMessageCell.this.drawBackground;
            this.lastUseTranscribeButton = ChatMessageCell.this.useTranscribeButton;
            this.lastButtonX = ChatMessageCell.this.buttonX;
            this.lastButtonY = ChatMessageCell.this.buttonY;
            this.lastMediaOffsetY = ChatMessageCell.this.mediaOffsetY;
            this.lastDrawTime = !ChatMessageCell.this.forceNotDrawTime;
            this.lastTimeX = ChatMessageCell.this.timeX;
            this.lastTimeLayout = ChatMessageCell.this.timeLayout;
            ChatMessageCell chatMessageCell4 = ChatMessageCell.this;
            this.lastTimeWidth = chatMessageCell4.timeWidth;
            this.lastShouldDrawTimeOnMedia = chatMessageCell4.shouldDrawTimeOnMedia();
            this.lastTopOffset = ChatMessageCell.this.getTopMediaOffset();
            this.lastShouldDrawMenuDrawable = ChatMessageCell.this.shouldDrawMenuDrawable();
            this.lastLocatinIsExpired = ChatMessageCell.this.locationExpired;
            this.lastIsPlayingRound = ChatMessageCell.this.isPlayingRound;
            ChatMessageCell chatMessageCell5 = ChatMessageCell.this;
            this.lastDrawingTextY = chatMessageCell5.textY;
            int i = chatMessageCell5.textX;
            this.lastDrawingLinkPreviewY = chatMessageCell5.linkPreviewY;
            this.lastDrawnForwardedNameLayout[0] = ChatMessageCell.this.forwardedNameLayout[0];
            this.lastDrawnForwardedNameLayout[1] = ChatMessageCell.this.forwardedNameLayout[1];
            this.lastDrawnForwardedName = ChatMessageCell.this.currentMessageObject.needDrawForwarded();
            this.lastForwardNameX = ChatMessageCell.this.forwardNameX;
            this.lastForwardedNamesOffset = ChatMessageCell.this.namesOffset;
            this.lastForwardNameWidth = ChatMessageCell.this.forwardedNameWidth;
            this.lastBackgroundLeft = ChatMessageCell.this.getCurrentBackgroundLeft();
            Theme.MessageDrawable messageDrawable2 = ChatMessageCell.this.currentBackgroundDrawable;
            if (messageDrawable2 != null) {
                this.lastBackgroundRight = messageDrawable2.getBounds().right;
            }
            this.lastTextXOffset = ChatMessageCell.this.currentMessageObject.textXOffset;
            this.lastDrawingReplyTextHeight = ChatMessageCell.this.replyTextHeight;
            ChatMessageCell chatMessageCell6 = ChatMessageCell.this;
            this.lastDrawnReplyTextLayout = chatMessageCell6.replyTextLayout;
            this.lastReplyTextXOffset = chatMessageCell6.replyTextOffset;
            chatMessageCell6.reactionsLayoutInBubble.recordDrawingState();
            ChatMessageCell chatMessageCell7 = ChatMessageCell.this;
            if (chatMessageCell7.replyNameLayout != null) {
                this.lastDrawReplyY = chatMessageCell7.replyStartY;
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

        /* JADX WARN: Removed duplicated region for block: B:124:0x030a  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0358  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x035e  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x03a7  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x03f7  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x0404  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x040b  */
        /* JADX WARN: Removed duplicated region for block: B:199:0x04a2  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x04b7  */
        /* JADX WARN: Removed duplicated region for block: B:204:0x04bd  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x0509  */
        /* JADX WARN: Removed duplicated region for block: B:216:0x0515  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0521  */
        /* JADX WARN: Removed duplicated region for block: B:222:0x052f  */
        /* JADX WARN: Removed duplicated region for block: B:225:0x053c  */
        /* JADX WARN: Removed duplicated region for block: B:228:0x054b  */
        /* JADX WARN: Removed duplicated region for block: B:233:0x0583  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x0590  */
        /* JADX WARN: Removed duplicated region for block: B:247:0x05c2  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x023e  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0261  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x026c  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0285  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0290  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean animateChange() {
            /*
                Method dump skipped, instructions count: 1493
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.TransitionParams.animateChange():boolean");
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
            this.animateMediaOffsetY = false;
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
            this.animateSmallImage = false;
            this.animateLinkAbove = false;
            this.animateDrawingTimeAlpha = false;
            this.animateLocationIsExpired = false;
            this.animatePlayingRound = false;
            this.animateText = false;
            this.animateLinkPreviewY = false;
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

    public int getNameStatusX() {
        float f = this.nameX;
        int i = this.viaNameWidth;
        return (int) (f + (i > 0 ? i - AndroidUtilities.m104dp(32) : this.nameLayoutWidth) + AndroidUtilities.m104dp(2) + (AndroidUtilities.m104dp(20) / 2));
    }

    public int getNameStatusY() {
        float f = this.nameY;
        StaticLayout staticLayout = this.nameLayout;
        return (int) (f + ((staticLayout == null ? 0 : staticLayout.getHeight()) / 2));
    }
}
