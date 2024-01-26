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
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
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
import org.telegram.p043ui.Components.AudioVisualizerDrawable;
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
import org.telegram.p043ui.Components.Premium.boosts.cells.msg.GiveawayResultsMessageCell;
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
import org.telegram.p043ui.Stories.recorder.CaptionContainerView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotApp;
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
import org.telegram.tgnet.TLRPC$TL_messageMediaGiveawayResults;
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
    private int[] adaptiveEmojiColor;
    private ColorFilter[] adaptiveEmojiColorFilter;
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
    public ChannelRecommendationsCell channelRecommendationsCell;
    private CheckBoxBase checkBox;
    private boolean checkBoxAnimationInProgress;
    private float checkBoxAnimationProgress;
    public int checkBoxTranslation;
    private boolean checkBoxVisible;
    private boolean checkOnlyButtonPressed;
    private int childPosition;
    private Paint clipPaint;
    private ButtonBounce closeSponsoredBounce;
    private RectF closeSponsoredBounds;
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
    public ButtonBounce contactBounce;
    private ArrayList<InstantViewButton> contactButtons;
    public ReplyMessageLine contactLine;
    private boolean contactPressed;
    private RectF contactRect;
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
    private ImageLocation currentPhotoLocation;
    private TLRPC$PhotoSize currentPhotoObject;
    private TLRPC$PhotoSize currentPhotoObjectThumb;
    private BitmapDrawable currentPhotoObjectThumbStripped;
    private ImageLocation currentPhotoThumbLocation;
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
    private boolean drawContact;
    private boolean drawContactAdd;
    private boolean drawContactSendMessage;
    private boolean drawContactView;
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
    public boolean drawingToBitmap;
    private int drawnContactButtonsFlag;
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
    private boolean frozen;
    private boolean fullyDraw;
    private boolean gamePreviewPressed;
    public final GiveawayMessageCell giveawayMessageCell;
    public final GiveawayResultsMessageCell giveawayResultsMessageCell;
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
    public String instantViewButtonText;
    private StaticLayout instantViewLayout;
    private float instantViewLayoutLeft;
    private float instantViewLayoutWidth;
    private int instantWidth;
    private Runnable invalidateCallback;
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
    public boolean isSavedChat;
    public boolean isSavedPreviewChat;
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
    public boolean makeVisibleAfterChange;
    private boolean mediaBackground;
    private CheckBoxBase mediaCheckBox;
    private int mediaOffsetY;
    private SpoilerEffect mediaSpoilerEffect;
    private SpoilerEffect2 mediaSpoilerEffect2;
    private Integer mediaSpoilerEffect2Index;
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
    private Paint onceClearPaint;
    private RLottieDrawable onceFire;
    private CaptionContainerView.PeriodDrawable oncePeriod;
    private Paint onceRadialCutPaint;
    private Paint onceRadialPaint;
    private Paint onceRadialStrokePaint;
    private boolean otherPressed;
    private int otherX;
    private int otherY;
    private int overideShouldDrawTimeOnMedia;
    private AudioVisualizerDrawable overridenAudioVisualizer;
    private long overridenDuration;
    public int parentBoundsBottom;
    public float parentBoundsTop;
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
    protected float radialProgressAlpha;
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
    protected int timeX;
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
    public int totalHeight;
    private int totalVisibleBlocksCount;
    public TranscribeButton transcribeButton;
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
    private int visibleHeight;
    private boolean visibleOnScreen;
    private int visibleParent;
    private float visibleParentOffset;
    private float visibleTop;
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

    protected boolean isWidthAdaptive() {
        return false;
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
            if (tLRPC$User == null || tLRPC$User.f1751id != ((Long) objArr[0]).longValue()) {
                return;
            }
            setAvatar(this.currentMessageObject);
        } else if (i == NotificationCenter.emojiLoaded) {
            invalidate();
        } else if (i != NotificationCenter.didUpdatePremiumGiftStickers || (messageObject = this.currentMessageObject) == null) {
        } else {
            TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
            if ((tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGiveaway) || (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGiveawayResults)) {
                setMessageObject(messageObject, this.currentMessagesGroup, this.pinnedBottom, this.pinnedTop);
            }
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
                this.avatarDrawable.setInfo(this.currentAccount, tLRPC$User);
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
                this.avatarDrawable.setInfo(this.currentAccount, tLRPC$Chat2);
                this.avatarImage.setForUserOrChat(this.currentChat, this.avatarDrawable);
                return;
            } else if (messageObject.isSponsored()) {
                TLRPC$TL_sponsoredWebPage tLRPC$TL_sponsoredWebPage = messageObject.sponsoredWebPage;
                if (tLRPC$TL_sponsoredWebPage != null) {
                    this.avatarDrawable.setInfo(messageObject.sponsoredId[0], tLRPC$TL_sponsoredWebPage.site_name, null, null);
                    TLRPC$Photo tLRPC$Photo2 = messageObject.sponsoredWebPage.photo;
                    if (tLRPC$Photo2 != null) {
                        this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo2.sizes, AndroidUtilities.m107dp(50), false, null, true), tLRPC$Photo2), "50_50", this.avatarDrawable, null, null, 0);
                        return;
                    }
                    return;
                }
                TLRPC$ChatInvite tLRPC$ChatInvite = messageObject.sponsoredChatInvite;
                if (tLRPC$ChatInvite != null && (tLRPC$Chat = tLRPC$ChatInvite.chat) != null) {
                    this.avatarDrawable.setInfo(this.currentAccount, tLRPC$Chat);
                    this.avatarImage.setForUserOrChat(messageObject.sponsoredChatInvite.chat, this.avatarDrawable);
                    return;
                }
                this.avatarDrawable.setInfo(this.currentAccount, tLRPC$ChatInvite);
                TLRPC$ChatInvite tLRPC$ChatInvite2 = messageObject.sponsoredChatInvite;
                if (tLRPC$ChatInvite2 == null || (tLRPC$Photo = tLRPC$ChatInvite2.photo) == null) {
                    return;
                }
                this.avatarImage.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.m107dp(50), false, null, true), tLRPC$Photo), "50_50", this.avatarDrawable, null, null, 0);
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
            float f2 = y + reactionsLayoutInBubble.f1939y;
            return f2 > f && (f2 + ((float) reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.m107dp(16)) < ((float) i);
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

        void didPressChannelRecommendation(ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat, boolean z);

        void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell);

        void didPressCodeCopy(ChatMessageCell chatMessageCell, MessageObject.TextLayoutBlock textLayoutBlock);

        void didPressCommentButton(ChatMessageCell chatMessageCell);

        void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell, TLRPC$KeyboardButton tLRPC$KeyboardButton);

        void didPressForkTranscribeButton(ChatMessageCell chatMessageCell);

        void didPressGiveawayChatButton(ChatMessageCell chatMessageCell, int i);

        void didPressHiddenForward(ChatMessageCell chatMessageCell);

        void didPressHint(ChatMessageCell chatMessageCell, int i);

        void didPressImage(ChatMessageCell chatMessageCell, float f, float f2);

        void didPressInstantButton(ChatMessageCell chatMessageCell, int i);

        void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell);

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

        boolean needPlayMessage(ChatMessageCell chatMessageCell, MessageObject messageObject, boolean z);

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

            public static void $default$didPressChannelRecommendation(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, TLRPC$Chat tLRPC$Chat, boolean z) {
            }

            public static void $default$didPressChannelRecommendationsClose(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
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

            public static void $default$didPressMoreChannelRecommendations(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell) {
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

            public static boolean $default$needPlayMessage(ChatMessageCellDelegate chatMessageCellDelegate, ChatMessageCell chatMessageCell, MessageObject messageObject, boolean z) {
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
        private int f1797x;

        /* renamed from: y */
        private int f1798y;

        private BotButton() {
        }

        static /* synthetic */ int access$3776(BotButton botButton, int i) {
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
        public int f1799x;

        /* renamed from: y */
        public int f1800y;

        static /* synthetic */ int access$2412(PollButton pollButton, int i) {
            int i2 = pollButton.percent + i;
            pollButton.percent = i2;
            return i2;
        }

        static /* synthetic */ float access$3124(PollButton pollButton, float f) {
            float f2 = pollButton.decimal - f;
            pollButton.decimal = f2;
            return f2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.ChatMessageCell$InstantViewButton */
    /* loaded from: classes5.dex */
    public static class InstantViewButton {
        private ButtonBounce buttonBounce;
        private int buttonWidth;
        private StaticLayout layout;
        private final RectF rect;
        private Drawable selectorDrawable;
        private float textX;
        private int type;

        private InstantViewButton() {
            this.rect = new RectF();
        }

        static /* synthetic */ float access$4924(InstantViewButton instantViewButton, float f) {
            float f2 = instantViewButton.textX - f;
            instantViewButton.textX = f2;
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
        this.giveawayResultsMessageCell = new GiveawayResultsMessageCell(this);
        this.scrollRect = new Rect();
        this.drawnContactButtonsFlag = 0;
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
        this.overridenDuration = -1L;
        this.hadLongPress = false;
        this.radialProgressAlpha = 1.0f;
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
        this.avatarImage.setRoundRadius(AndroidUtilities.m107dp(21));
        this.avatarDrawable = new AvatarDrawable();
        ImageReceiver imageReceiver2 = new ImageReceiver(this);
        this.replyImageReceiver = imageReceiver2;
        imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        this.replyImageReceiver.setRoundRadius(AndroidUtilities.m107dp(4));
        ImageReceiver imageReceiver3 = new ImageReceiver(this);
        this.locationImageReceiver = imageReceiver3;
        imageReceiver3.setAllowLoadingOnAttachedOnly(true);
        this.locationImageReceiver.setRoundRadius(AndroidUtilities.m108dp(26.1f));
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
        this.videoRadialProgress.setCircleRadius(AndroidUtilities.m107dp(15));
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

    public Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
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
            this.pollAvatarImages[i].setRoundRadius(AndroidUtilities.m107dp(8));
            this.pollAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.pollAvatarDrawables[i] = new AvatarDrawable();
            this.pollAvatarDrawables[i].setTextSize(AndroidUtilities.m107dp(22));
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
            this.commentAvatarImages[i].setRoundRadius(AndroidUtilities.m107dp(12));
            this.commentAvatarImages[i].setCurrentAccount(this.currentAccount);
            this.commentAvatarDrawables[i] = new AvatarDrawable();
            this.commentAvatarDrawables[i].setTextSize(AndroidUtilities.m107dp(18));
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
                        chatMessageCellDelegate.didPressViaBotNotInline(this, tLRPC$User != null ? tLRPC$User.f1751id : 0L);
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
                                if (tLRPC$Chat2 == null && (tLRPC$MessageFwdHeader.flags & 16) != 0) {
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

    /* JADX WARN: Removed duplicated region for block: B:65:0x011a A[Catch: Exception -> 0x0164, TryCatch #0 {Exception -> 0x0164, blocks: (B:32:0x0066, B:34:0x0080, B:36:0x0097, B:38:0x00a2, B:40:0x00b3, B:42:0x00b9, B:48:0x00c3, B:50:0x00c9, B:52:0x00cd, B:74:0x0160, B:54:0x00d5, B:56:0x00f6, B:58:0x00fa, B:60:0x00fe, B:62:0x0104, B:68:0x0123, B:73:0x0155, B:72:0x0152, B:63:0x0112, B:65:0x011a, B:67:0x011f, B:66:0x011d, B:69:0x012f), top: B:295:0x0066, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011d A[Catch: Exception -> 0x0164, TryCatch #0 {Exception -> 0x0164, blocks: (B:32:0x0066, B:34:0x0080, B:36:0x0097, B:38:0x00a2, B:40:0x00b3, B:42:0x00b9, B:48:0x00c3, B:50:0x00c9, B:52:0x00cd, B:74:0x0160, B:54:0x00d5, B:56:0x00f6, B:58:0x00fa, B:60:0x00fe, B:62:0x0104, B:68:0x0123, B:73:0x0155, B:72:0x0152, B:63:0x0112, B:65:0x011a, B:67:0x011f, B:66:0x011d, B:69:0x012f), top: B:295:0x0066, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkLinkPreviewMotionEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 1220
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
                if (this.hintButtonVisible && (i = this.pollHintX) != -1 && x >= i && x <= i + AndroidUtilities.m107dp(40) && y >= (i2 = this.pollHintY) && y <= i2 + AndroidUtilities.m107dp(40)) {
                    this.pollHintPressed = true;
                    this.selectorDrawableMaskType[0] = 3;
                    if (Build.VERSION.SDK_INT >= 21) {
                        Drawable[] drawableArr = this.selectorDrawable;
                        if (drawableArr[0] != null) {
                            drawableArr[0].setBounds(this.pollHintX - AndroidUtilities.m107dp(8), this.pollHintY - AndroidUtilities.m107dp(8), this.pollHintX + AndroidUtilities.m107dp(32), this.pollHintY + AndroidUtilities.m107dp(32));
                            this.selectorDrawable[0].setHotspot(x, y);
                            this.selectorDrawable[0].setState(this.pressedState);
                        }
                    }
                    invalidate();
                } else {
                    for (int i3 = 0; i3 < this.pollButtons.size(); i3++) {
                        PollButton pollButton = this.pollButtons.get(i3);
                        int m107dp = (pollButton.f1800y + this.namesOffset) - AndroidUtilities.m107dp(13);
                        int i4 = pollButton.f1799x;
                        if (x >= i4 && x <= (i4 + this.backgroundWidth) - AndroidUtilities.m107dp(31) && y >= m107dp && y <= pollButton.height + m107dp + AndroidUtilities.m107dp(26)) {
                            this.pressedVoteButton = i3;
                            if (!this.pollVoted && !this.pollClosed) {
                                this.selectorDrawableMaskType[0] = 1;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    Drawable[] drawableArr2 = this.selectorDrawable;
                                    if (drawableArr2[0] != null) {
                                        drawableArr2[0].setBounds(pollButton.f1799x - AndroidUtilities.m107dp(9), m107dp, (pollButton.f1799x + this.backgroundWidth) - AndroidUtilities.m107dp(22), pollButton.height + m107dp + AndroidUtilities.m107dp(26));
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
                            this.delegate.didPressVoteButtons(this, arrayList, pollButton2.count, pollButton2.f1799x + AndroidUtilities.m107dp(50), this.namesOffset + pollButton2.f1800y);
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

    private boolean checkContactMotionEvent(MotionEvent motionEvent) {
        if (this.currentMessageObject.type != 12) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            ArrayList<InstantViewButton> arrayList = this.contactButtons;
            if (arrayList != null && arrayList.size() > 1) {
                for (int i = 0; i < this.contactButtons.size(); i++) {
                    InstantViewButton instantViewButton = this.contactButtons.get(i);
                    float f = x;
                    float f2 = y;
                    if (instantViewButton.rect.contains(f, f2)) {
                        if (instantViewButton.buttonBounce == null) {
                            instantViewButton.buttonBounce = new ButtonBounce(this);
                        }
                        instantViewButton.buttonBounce.setPressed(true);
                        if (Build.VERSION.SDK_INT >= 21 && instantViewButton.selectorDrawable != null) {
                            instantViewButton.selectorDrawable.setHotspot(f, f2);
                            instantViewButton.selectorDrawable.setState(this.pressedState);
                        }
                        invalidate();
                        return true;
                    }
                }
            }
            float f3 = x;
            float f4 = y;
            if (this.contactRect.contains(f3, f4)) {
                this.contactPressed = true;
                this.contactBounce.setPressed(true);
                if (Build.VERSION.SDK_INT >= 21) {
                    Drawable[] drawableArr = this.selectorDrawable;
                    if (drawableArr[0] != null) {
                        drawableArr[0].setHotspot(f3, f4);
                        this.selectorDrawable[0].setState(this.pressedState);
                    }
                }
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 1) {
            if (this.contactPressed) {
                if (this.delegate != null) {
                    ArrayList<InstantViewButton> arrayList2 = this.contactButtons;
                    if (arrayList2 != null && arrayList2.size() == 1) {
                        this.delegate.didPressInstantButton(this, this.contactButtons.get(0).type);
                    } else {
                        this.delegate.didPressInstantButton(this, 5);
                    }
                }
                playSoundEffect(0);
                if (Build.VERSION.SDK_INT >= 21) {
                    Drawable[] drawableArr2 = this.selectorDrawable;
                    if (drawableArr2[0] != null) {
                        drawableArr2[0].setState(StateSet.NOTHING);
                    }
                }
                this.contactPressed = false;
                this.contactBounce.setPressed(false);
                invalidate();
            } else {
                ArrayList<InstantViewButton> arrayList3 = this.contactButtons;
                if (arrayList3 != null && arrayList3.size() > 1) {
                    for (int i2 = 0; i2 < this.contactButtons.size(); i2++) {
                        InstantViewButton instantViewButton2 = this.contactButtons.get(i2);
                        if (instantViewButton2.buttonBounce != null && instantViewButton2.buttonBounce.isPressed()) {
                            ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
                            if (chatMessageCellDelegate != null) {
                                chatMessageCellDelegate.didPressInstantButton(this, instantViewButton2.type);
                            }
                            if (Build.VERSION.SDK_INT >= 21 && instantViewButton2.selectorDrawable != null) {
                                instantViewButton2.selectorDrawable.setState(StateSet.NOTHING);
                            }
                            instantViewButton2.buttonBounce.setPressed(false);
                            playSoundEffect(0);
                            invalidate();
                        }
                    }
                }
            }
        } else if (motionEvent.getAction() == 2) {
            if (this.contactPressed && Build.VERSION.SDK_INT >= 21) {
                Drawable[] drawableArr3 = this.selectorDrawable;
                if (drawableArr3[0] != null) {
                    drawableArr3[0].setHotspot(x, y);
                }
            }
            ArrayList<InstantViewButton> arrayList4 = this.contactButtons;
            if (arrayList4 != null && arrayList4.size() > 1) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.contactButtons.size()) {
                        break;
                    }
                    InstantViewButton instantViewButton3 = this.contactButtons.get(i3);
                    if (instantViewButton3.buttonBounce == null || !instantViewButton3.buttonBounce.isPressed()) {
                        i3++;
                    } else if (Build.VERSION.SDK_INT >= 21 && instantViewButton3.selectorDrawable != null) {
                        instantViewButton3.selectorDrawable.setHotspot(x, y);
                    }
                }
            }
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
                    if (x > i3 + AndroidUtilities.m107dp((LocaleController.isRTL ? 0 : 200) + 30 + (!isVideoCall ? 2 : 0)) || y < this.otherY - AndroidUtilities.m107dp(14) || y > this.otherY + AndroidUtilities.m107dp(50)) {
                        return false;
                    }
                    this.otherPressed = true;
                    this.selectorDrawableMaskType[0] = 4;
                    if (Build.VERSION.SDK_INT >= 21 && this.selectorDrawable[0] != null) {
                        int m107dp = this.otherX + AndroidUtilities.m107dp((LocaleController.isRTL ? 0 : 200) + (!isVideoCall ? 2 : 0)) + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicWidth() / 2);
                        int intrinsicHeight = this.otherY + (Theme.chat_msgInCallDrawable[isVideoCall ? 1 : 0].getIntrinsicHeight() / 2);
                        this.selectorDrawable[0].setBounds(m107dp - AndroidUtilities.m107dp(20), intrinsicHeight - AndroidUtilities.m107dp(20), m107dp + AndroidUtilities.m107dp(20), intrinsicHeight + AndroidUtilities.m107dp(20));
                        this.selectorDrawable[0].setHotspot(x, y);
                        this.selectorDrawable[0].setState(this.pressedState);
                    }
                    invalidate();
                } else if (x < this.otherX - AndroidUtilities.m107dp(20) || x > this.otherX + AndroidUtilities.m107dp(20) || y < this.otherY - AndroidUtilities.m107dp(4) || y > this.otherY + AndroidUtilities.m107dp(30)) {
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

    private void resetContactButtonsPressedState() {
        this.contactPressed = false;
        ButtonBounce buttonBounce = this.contactBounce;
        if (buttonBounce != null) {
            buttonBounce.setPressed(false);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Drawable[] drawableArr = this.selectorDrawable;
            if (drawableArr[0] != null) {
                drawableArr[0].setState(StateSet.NOTHING);
            }
        }
        if (this.contactButtons != null) {
            for (int i = 0; i < this.contactButtons.size(); i++) {
                InstantViewButton instantViewButton = this.contactButtons.get(i);
                if (instantViewButton.buttonBounce != null) {
                    instantViewButton.buttonBounce.setPressed(false);
                }
                if (instantViewButton.selectorDrawable != null) {
                    instantViewButton.selectorDrawable.setState(StateSet.NOTHING);
                }
            }
        }
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
                if (f3 < f4 || f3 > f4 + AndroidUtilities.m107dp(20)) {
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
                if (f >= this.seekbarRoundX - AndroidUtilities.m107dp(20) && f <= this.seekbarRoundX + AndroidUtilities.m107dp(20)) {
                    float f2 = y;
                    if (f2 >= this.seekbarRoundY - AndroidUtilities.m107dp(20) && f2 <= this.seekbarRoundY + AndroidUtilities.m107dp(20)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        cancelCheckLongPress();
                        this.roundSeekbarTouched = 1;
                        invalidate();
                    }
                }
                float centerX = f - this.photoImage.getCenterX();
                float centerY = y - this.photoImage.getCenterY();
                float imageWidth = (this.photoImage.getImageWidth() - AndroidUtilities.m107dp(64)) / 2.0f;
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
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkPhotoImageMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x011d, code lost:
        if (r4 <= (r0 + r6)) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x011f, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0157, code lost:
        if (r4 <= (r0 + r6)) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkAudioMotionEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 465
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
                                chatMessageCell2.replySpoilers.get(0).setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda10
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
        int m107dp;
        if (this.delegate.isInPreviewMode() || this.botButtons.isEmpty() || this.currentMessageObject.eventId != 0) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (motionEvent.getAction() == 0) {
            if (this.currentMessageObject.isOutOwner()) {
                m107dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m107dp(10);
            } else {
                m107dp = this.backgroundDrawableLeft + AndroidUtilities.m107dp(this.mediaBackground ? 1 : 7);
            }
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = this.botButtons.get(i2);
                int m107dp2 = (botButton.f1798y + this.layoutHeight) - AndroidUtilities.m107dp(2);
                if (x >= botButton.f1797x + m107dp && x <= botButton.f1797x + m107dp + botButton.width && y >= m107dp2 && y <= botButton.height + m107dp2) {
                    this.pressedBotButton = i2;
                    invalidateOutbounds();
                    if (botButton.selectorDrawable == null) {
                        botButton.selectorDrawable = Theme.createRadSelectorDrawable(getThemedColor(Theme.key_chat_serviceBackgroundSelector), 6, 6);
                        botButton.selectorDrawable.setBounds(botButton.f1797x + m107dp, m107dp2, botButton.f1797x + m107dp + botButton.width, botButton.height + m107dp2);
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

    /* JADX WARN: Code restructure failed: missing block: B:284:0x043c, code lost:
        if (r5 <= (r0 + org.telegram.messenger.AndroidUtilities.m107dp(32))) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x07e1, code lost:
        if (r5 > (r20.sideStartY + org.telegram.messenger.AndroidUtilities.m107dp(38 + ((r20.drawSideButton != 3 || r20.commentLayout == null) ? 0 : 18)))) goto L586;
     */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03e9  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r21) {
        /*
            Method dump skipped, instructions count: 2034
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
        int m107dp;
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
                            i2 = this.unmovedTextX - AndroidUtilities.m107dp(10);
                        } else {
                            if (this.hasInvoicePreview) {
                                i = this.unmovedTextX;
                                m107dp = AndroidUtilities.m107dp(1);
                            } else {
                                i = this.unmovedTextX;
                                m107dp = AndroidUtilities.m107dp(1);
                            }
                            i2 = i + m107dp;
                        }
                        textSelectionHelper.setMaybeTextCord(i2 + AndroidUtilities.m107dp(10) + this.descriptionX, this.descriptionY);
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
        int m107dp;
        int i2;
        if (getDelegate() == null || getDelegate().getTextSelectionHelper() == null || !getDelegate().getTextSelectionHelper().isSelected(this.currentMessageObject)) {
            return;
        }
        int textSelectionType = getDelegate().getTextSelectionHelper().getTextSelectionType(this);
        if (textSelectionType == TextSelectionHelper.ChatListTextSelectionHelper.TYPE_DESCRIPTION) {
            if (this.hasGamePreview) {
                i2 = this.unmovedTextX - AndroidUtilities.m107dp(10);
            } else {
                if (this.hasInvoicePreview) {
                    i = this.unmovedTextX;
                    m107dp = AndroidUtilities.m107dp(1);
                } else {
                    i = this.unmovedTextX;
                    m107dp = AndroidUtilities.m107dp(1);
                }
                i2 = i + m107dp;
            }
            getDelegate().getTextSelectionHelper().updateTextPosition(i2 + AndroidUtilities.m107dp(10) + this.descriptionX, this.descriptionY);
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
        double d3;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        VideoPlayerRewinder videoPlayerRewinder = this.videoPlayerRewinder;
        if (videoPlayerRewinder != null && videoPlayerRewinder.rewindCount != 0 && videoPlayerRewinder.rewindByBackSeek) {
            messageObject.audioProgress = videoPlayerRewinder.getVideoProgress();
        }
        double d4 = 0.0d;
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
                    d3 = durationMs;
                    MessageObject messageObject3 = this.currentMessageObject;
                    TLRPC$Message tLRPC$Message = messageObject3.messageOwner;
                    if (tLRPC$Message.ttl > 0 && tLRPC$Message.destroyTime == 0 && !messageObject3.needDrawBluredPreview() && this.currentMessageObject.isVideo() && animation.hasBitmap()) {
                        this.delegate.didStartVideoStream(this.currentMessageObject);
                    }
                } else {
                    d3 = 0.0d;
                }
                if (d3 == 0.0d) {
                    d3 = this.currentMessageObject.getDuration();
                }
                if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                    d3 -= this.currentMessageObject.audioProgress * d3;
                } else if (animation != null) {
                    if (d3 != 0.0d) {
                        d3 -= animation.getCurrentProgressMs() / 1000;
                    }
                    if (this.delegate != null && animation.getCurrentProgressMs() >= 3000) {
                        this.delegate.videoTimerReached();
                    }
                }
                if (this.lastTime != d3) {
                    String formatShortDuration = AndroidUtilities.formatShortDuration((int) d3);
                    this.infoWidth = (int) Math.ceil(Theme.chat_infoPaint.measureText(formatShortDuration));
                    this.infoLayout = new StaticLayout(formatShortDuration, Theme.chat_infoPaint, this.infoWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.lastTime = d3;
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
                        d2 = tLRPC$DocumentAttribute.duration;
                        break;
                    }
                    i++;
                }
            }
            d2 = 0.0d;
            long j = this.overridenDuration;
            if (j >= 0) {
                d2 = j;
            } else if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                d2 = Math.max(0.0d, d2 - this.currentMessageObject.audioProgressSec);
            }
            if (this.lastTime != d2) {
                this.lastTime = d2;
                String formatLongDuration = AndroidUtilities.formatLongDuration((int) d2);
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
                long j2 = this.overridenDuration;
                if (j2 >= 0) {
                    d = j2;
                } else if (MediaController.getInstance().isPlayingMessage(this.currentMessageObject)) {
                    d = this.currentMessageObject.audioProgressSec;
                } else {
                    while (true) {
                        if (i >= this.documentAttach.attributes.size()) {
                            break;
                        }
                        TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = this.documentAttach.attributes.get(i);
                        if (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeAudio) {
                            d4 = tLRPC$DocumentAttribute2.duration;
                            break;
                        }
                        i++;
                    }
                    d = d4;
                }
                if (this.lastTime != d) {
                    this.lastTime = d;
                    String formatLongDuration2 = AndroidUtilities.formatLongDuration((int) d);
                    this.timeWidthAudio = (int) Math.ceil(Theme.chat_audioTimePaint.measureText(formatLongDuration2));
                    this.durationLayout = new StaticLayout(formatLongDuration2, Theme.chat_audioTimePaint, this.timeWidthAudio, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
            } else {
                double duration = this.currentMessageObject.getDuration();
                int i2 = MediaController.getInstance().isPlayingMessage(this.currentMessageObject) ? this.currentMessageObject.audioProgressSec : 0;
                if (this.miniButtonState >= 0 && this.loadingProgressLayout != null) {
                    i = 1;
                }
                double d5 = i2;
                if (this.lastTime != d5 || i != 0) {
                    if (i == 0) {
                        this.lastTime = d5;
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

    public void overrideDuration(long j) {
        this.overridenDuration = j;
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

    public void copyVisiblePartTo(ChatMessageCell chatMessageCell) {
        if (chatMessageCell == null) {
            return;
        }
        chatMessageCell.setVisiblePart(this.childPosition, this.visibleHeight, this.visibleParent, this.visibleParentOffset, this.visibleTop, this.parentWidth, this.parentHeight, this.blurredViewTopOffset, this.blurredViewBottomOffset);
    }

    public void setVisiblePart(int i, int i2, int i3, float f, float f2, int i4, int i5, int i6, int i7) {
        MessageObject.TextLayoutBlock textLayoutBlock;
        MessageObject messageObject;
        this.childPosition = i;
        this.visibleHeight = i2;
        this.visibleParent = i3;
        this.parentWidth = i4;
        this.parentHeight = i5;
        this.visibleTop = f2;
        this.visibleParentOffset = f;
        this.backgroundHeight = i5;
        this.blurredViewTopOffset = i6;
        this.blurredViewBottomOffset = i7;
        if ((!this.botButtons.isEmpty() || (this.channelRecommendationsCell != null && (messageObject = this.currentMessageObject) != null && messageObject.type == 27)) && this.viewTop != f2) {
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
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 == null || messageObject2.textLayoutBlocks == null) {
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
        return StaticLayoutEx.createStaticLayout(spannableStringBuilder, textPaint, i9, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.m107dp(1), false, TextUtils.TruncateAt.END, i9, i4, true);
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
                    this.delegate.needPlayMessage(this, this.currentMessageObject, false);
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
        if (tLRPC$User != null && tLRPC$User.f1751id == 0) {
            f = this.avatarImage.getCenterX();
        } else {
            f = this.forwardNameX + this.forwardNameCenterX;
        }
        return (int) f;
    }

    public int getChecksX() {
        return this.layoutWidth - AndroidUtilities.m108dp(SharedConfig.bubbleRadius >= 10 ? 27.3f : 25.3f);
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

    public void overrideAudioVisualizer(AudioVisualizerDrawable audioVisualizerDrawable) {
        this.overridenAudioVisualizer = audioVisualizerDrawable;
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
        ChannelRecommendationsCell channelRecommendationsCell = this.channelRecommendationsCell;
        if (channelRecommendationsCell != null) {
            channelRecommendationsCell.onDetachedFromWindow();
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
                SpoilerEffect2 spoilerEffect22 = SpoilerEffect2.getInstance(this);
                this.mediaSpoilerEffect2 = spoilerEffect22;
                Integer num = this.mediaSpoilerEffect2Index;
                if (num != null) {
                    spoilerEffect22.reassignAttach(this, num.intValue());
                }
            } else {
                spoilerEffect2.attach(this);
            }
        }
        ChannelRecommendationsCell channelRecommendationsCell = this.channelRecommendationsCell;
        if (channelRecommendationsCell != null) {
            channelRecommendationsCell.onAttachedToWindow();
        }
    }

    public void copySpoilerEffect2AttachIndexFrom(ChatMessageCell chatMessageCell) {
        SpoilerEffect2 spoilerEffect2;
        if (chatMessageCell == null || (spoilerEffect2 = chatMessageCell.mediaSpoilerEffect2) == null) {
            return;
        }
        Integer valueOf = Integer.valueOf(spoilerEffect2.getAttachIndex(chatMessageCell));
        this.mediaSpoilerEffect2Index = valueOf;
        SpoilerEffect2 spoilerEffect22 = this.mediaSpoilerEffect2;
        if (spoilerEffect22 != null) {
            spoilerEffect22.reassignAttach(this, valueOf.intValue());
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
                this.giveawayResultsMessageCell.onAttachedToWindow();
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
                this.giveawayResultsMessageCell.onDetachedFromWindow();
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
        if (canDownloadMedia == 2 || (canDownloadMedia == 1 && messageObject.isVideo())) {
            if (canDownloadMedia != 2 && document != null && !messageObject.shouldEncryptPhotoOrVideo() && messageObject.canStreamVideo()) {
                FileLoader.getInstance(this.currentAccount).loadFile(document, messageObject, 1, 0);
            }
        } else if (canDownloadMedia != 0) {
            if (document != null) {
                FileLoader.getInstance(this.currentAccount).loadFile(document, messageObject, 1, ((MessageObject.isVideoDocument(document) || messageObject.isVoiceOnce() || messageObject.isRoundOnce()) && messageObject.shouldEncryptPhotoOrVideo()) ? 2 : 0);
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

    /* JADX WARN: Can't wrap try/catch for region: R(134:1|(1:5054)|7|(1:9)(1:5053)|10|(1:12)(1:5052)|13|(1:15)(1:5051)|16|(1:20)(1:5050)|21|(26:25|(2:27|(1:33)(1:35))|36|37|(1:45)(1:5048)|46|(1:48)(1:5031)|(1:52)|53|(1:74)(1:5030)|(1:78)|(9:82|(1:84)(1:5028)|(1:90)(1:5027)|(1:94)|95|(2:97|(3:99|(1:101)|102))|103|(5:107|(1:111)|112|(1:116)(1:118)|117)|(3:135|(1:(2:147|148)(2:137|(1:139)(1:140)))|(3:142|(1:144)(1:146)|145)))(1:5029)|(4:151|(1:153)(1:158)|154|(1:156)(1:157))|159|(1:173)(70:274|(3:5023|(1:5025)|5026)|277|(2:5020|(1:5022))(2:279|280)|281|(5:285|(1:291)(1:5016)|292|(1:298)(1:5015)|299)(1:5017)|300|(1:310)(1:5014)|311|(1:313)(1:5013)|314|(1:322)(1:5012)|323|(1:329)(1:5011)|330|(1:334)(1:5010)|335|(1:341)(1:5009)|342|(1:346)(1:5008)|347|(4:349|(1:355)(1:5006)|356|(6:358|(1:362)(1:5004)|363|(1:5003)|376|(1:4999)(2:378|379))(1:5005))(1:5007)|380|(1:382)|383|(2:387|(2:388|(1:397)(3:390|(2:392|393)(2:395|396)|394)))(0)|398|(1:4994)|402|(1:4993)|404|405|(1:407)|408|(1:412)(1:4988)|413|(1:415)|416|(1:4987)|419|420|(3:422|423|(4:431|(1:433)(1:4979)|434|(1:436)(3:4974|(1:4976)(1:4978)|4977))(1:4980))|(2:438|(1:444))|445|(1:449)(1:4973)|450|(4:453|(1:4966)|456|(32:460|(1:462)|463|(4:465|(1:(1:468)(1:4947))(1:(1:4949)(1:4950))|469|(27:474|(2:475|(1:497)(2:(3:(1:479)|480|481)(7:483|(2:485|(1:487)(5:495|489|(1:491)(1:494)|492|493))(1:496)|488|489|(0)(0)|492|493)|482))|498|499|(3:4933|(1:4935)(1:4937)|4936)(3:501|502|(1:504))|505|506|(2:508|(34:510|(4:2737|(1:(2:2740|(1:(2:2743|(35:2745|(1:2751)(1:4311)|2752|(10:4283|(6:4305|(1:4307)|4290|(2:4296|4295)|4294|4295)(1:4285)|4286|(1:4288)|4297|(4:4299|(1:4301)|4294|4295)|4290|(1:4292)|4296|4295)(1:2754)|2755|(1:2757)(1:4280)|2758|(1:2767)|2768|(2:2770|(3:2772|(1:2774)(1:4271)|2775)(3:4272|(1:4276)(1:4278)|4277))(1:4279)|2776|(2:2778|(3:2780|(2:2782|(87:2784|(4:2786|(2:2788|(4:2799|(1:2801)(1:3748)|2802|2803)(1:3749))(1:3751)|3750|2803)(1:3752)|2804|(2:2806|(1:2808))(6:3733|(1:3737)|3738|(1:3740)|3741|(1:3743))|2809|(74:2812|(1:(1:2817))(1:3731)|2818|2819|(1:2821)|2822|(5:2824|(1:2826)|2827|(1:(1:2832)(2:3701|(1:3703)(4:3704|(3:3706|(1:3711)(2:3708|3709)|3710)|3712|3713)))(3:3714|(2:3719|(1:3721)(1:3722))|3718)|2833)(3:3723|(1:3727)(1:3729)|3728)|2834|(1:2838)|2839|(2:2843|(1:2846)(1:2847))|(1:2859)|2860|(1:2864)|(5:3678|(3:3681|(1:3685)(3:3687|(3:3689|(1:3691)(2:3694|(1:3696))|3692)(1:3697)|3693)|3679)|3699|3700|3693)|(1:3673)|2869|(1:2873)|2874|(1:3672)|2878|(1:2884)|2885|(1:2887)(4:3663|(3:3666|(1:3669)(1:3668)|3664)|3671|3670)|2888|(1:2890)|2891|(1:2893)(1:3662)|2894|(1:2896)(1:3661)|2897|(1:2899)|2900|(3:2902|(3:2906|(1:2908)(1:2910)|2909)|2911)(5:3652|(1:3654)(1:3660)|3655|(1:3657)(1:3659)|3658)|2912|(11:2914|(1:2916)(1:3475)|2917|(1:2919)(1:3474)|2920|(3:2922|(2:2924|(1:2926))|(5:2929|2930|2931|(1:2933)|2934))|3473|2930|2931|(0)|2934)(13:3476|(6:3478|(2:3508|(1:3510))|3482|(4:3485|(2:3487|(1:(2:3490|3491)(1:3493))(4:3495|(1:3497)(1:3500)|3498|3499))(4:3501|(1:3503)(1:3506)|3504|3505)|3492|3483)|3507|3494)|3512|(1:3514)|3515|(1:3517)(3:3646|(2:3647|(1:3650)(1:3649))|3651)|3518|(1:3522)(2:3636|(1:3645)(3:3638|3639|(1:3641)(1:3642)))|3523|(1:3525)(1:3635)|3526|(1:3532)(3:3534|(5:3536|(1:3538)(2:3552|(21:3554|(6:3556|(2:3586|(1:3588))|3560|(4:3563|(2:3565|(1:(2:3568|3569)(1:3571))(4:3573|(1:3575)(1:3578)|3576|3577))(4:3579|(1:3581)(1:3584)|3582|3583)|3570|3561)|3585|3572)|3590|3591|(1:3595)(12:3624|(1:3628)(2:3630|(1:3632)(1:3633))|3629|3597|(1:3607)|3608|(1:3610)(1:3619)|3611|(1:3618)|3617|(2:3543|(2:3545|3546)(2:3548|3549))|3547)|3596|3597|(1:3599)|3620|3622|3603|3605|3607|3608|(0)(0)|3611|(2:3613|3615)|3618|3617|(1:3551)(3:3541|3543|(0)(0))|3547))|3539|(0)(0)|3547)|3634)|3533)|2935|(54:3425|3426|(1:3428)(1:3470)|3429|(1:3431)(2:3466|(1:3468)(1:3469))|3432|(47:3465|3436|(1:3462)|3439|3440|3441|3442|(30:3457|3448|3449|2938|(1:3424)|2940|2941|(4:3379|(1:3381)(1:3421)|3382|(9:3384|(2:3386|(1:3388))(1:3420)|3389|(1:3391)(1:3419)|3392|(1:3398)|3399|(2:3402|(3:3406|(2:3408|(1:3410))|3411)(1:(4:3413|(1:3415)|3416|(1:3418))))|3401))|2943|2944|(3:3375|(1:3377)|3378)|3365|(2:3367|(1:3369))|2949|(2:3350|(3:3354|(1:3356)(2:3358|(1:3360))|3357)(3:3361|(1:3363)|3364))(3:2951|2952|(2:2956|(1:2958)(4:3335|(1:3337)|3338|(1:3340)(1:3341))))|2959|(1:2965)(1:3334)|2966|(1:3333)(1:2968)|2969|(1:2974)|2975|(2:3300|(10:3302|(2:3304|(1:3306))|3308|(2:3312|(2:3320|(1:3322)(8:3323|(1:3327)(1:3329)|3328|2979|(1:2981)(1:3299)|2982|(2:2984|(2:2988|(2:2990|(8:2992|(1:2994)(2:3239|(3:3241|(1:3246)(2:(1:3252)(1:3248)|3249)|3020)(1:3253))|2995|(2:2997|(1:2999)(1:3237))(1:3238)|3000|(1:3004)(1:3236)|3005|(1:(4:3176|3177|(1:3179)|(5:3186|(1:3188)|3189|(1:3191)(1:3193)|3192)(2:3194|(3:3199|(1:3201)(1:3203)|3202)(1:3204)))(1:(1:(5:3214|(1:3216)|3217|(1:3219)(1:3221)|3220)(3:3222|(1:3224)(1:3226)|3225))(3:3227|(1:3229)(1:3231)|3230)))(3:3013|(1:3019)(2:(1:3170)|3171)|3020))(2:3254|(2:3256|(1:3258)(3:3259|(1:3261)(1:3276)|(2:3269|(1:3273)(1:3274))(1:3275)))(1:3277)))(1:3278))(2:3279|(1:3281)(2:3282|(1:3284)(1:3285))))(2:3286|(1:3292)(2:3293|(2:(1:3297)|3298)))|3021)))|2978|2979|(0)(0)|2982|(0)(0)|3021))|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3445|(37:3452|3453|2938|(2:3422|3424)|2940|2941|(0)|2943|2944|(1:2946)(4:3370|3375|(0)|3378)|3365|(0)|2949|(22:3350|(21:3352|3354|(0)(0)|3357|2959|(17:2961|2963|2965|2966|(13:3331|3333|2969|(2:2972|2974)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3361|(0)|3364|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|2951|2952|(20:2954|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3448|3449|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3435|3436|(1:3438)(2:3460|3462)|3439|3440|3441|3442|(1:3444)(39:3455|3457|3448|3449|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3445|(1:3447)(38:3450|3452|3453|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3448|3449|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|2937|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)(1:3732)|3730|2819|(0)|2822|(0)(0)|2834|(2:2836|2838)|2839|(4:2841|2843|(1:2846)|2847)|(4:2849|2851|2855|2859)|2860|(2:2862|2864)|(0)|3674|3676|3678|(1:3679)|3699|3700|3693|(0)|3673|2869|(2:2871|2873)|2874|(1:2876)|3672|2878|(3:2880|2882|2884)|2885|(0)(0)|2888|(0)|2891|(0)(0)|2894|(0)(0)|2897|(0)|2900|(0)(0)|2912|(0)(0)|2935|(0)|2937|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)(31:3753|(1:3755)(1:3941)|3756|(3:3927|(4:3930|(2:3932|(1:3934)(2:3935|3936))(2:3938|3939)|3937|3928)|3940)|3758|3759|(1:3926)|3763|(2:3765|(1:3767))|3768|(1:3770)(1:3923)|3771|(4:(1:3776)|3777|(1:3779)(1:3921)|3780)(1:3922)|3781|(1:3785)(1:3920)|3786|(1:3788)(1:3919)|3789|(4:3791|(3:3793|(3:3798|(1:3800)(1:3883)|3801)(1:3884)|3802)(4:3885|(2:3887|(1:3891)(5:3893|(3:3895|(1:3897)(1:3903)|3898)(1:3904)|3899|(1:3901)|3902))(1:3905)|3892|3804)|3803|3804)(3:3906|(3:3914|(1:3916)(1:3918)|3917)(1:3908)|3909)|3805|(1:3882)(1:3807)|3808|(1:3810)(9:3840|(2:3842|(2:3844|(2:3846|(1:3848)(5:3849|(1:3851)(1:3857)|3852|(1:3854)(1:3856)|3855))(5:3858|(1:3860)(1:3866)|3861|(1:3863)(1:3865)|3864))(3:3867|(1:3869)(1:3871)|3870))(5:3872|(1:3874)|3875|(1:3877)(1:3879)|3878)|3812|(1:3814)(4:3829|(1:3835)(1:3839)|3836|(1:3838))|3815|(1:3817)|3818|(1:3826)|3827)|3811|3812|(0)(0)|3815|(0)|3818|(4:3820|3822|3824|3826)|3827))(7:3942|(1:3944)(1:3965)|3945|(1:3947)(3:3960|(1:3962)(1:3964)|3963)|3948|(1:3959)|3954)|3828)(17:3966|(14:(1:(1:3972))(1:4128)|3973|(2:3975|(5:3977|(3:3979|(1:3981)(1:4049)|3982)(3:4050|(1:4052)(1:4054)|4053)|3983|(1:4048)|3987)(7:4055|(3:4057|(1:4059)(1:4085)|4060)(3:4086|(1:4088)(1:4090)|4089)|4061|(1:4084)|4065|(1:4067)(5:4069|(1:4071)(1:4083)|(3:4073|(1:4075)(1:4078)|4076)|(1:4080)(1:4082)|4081)|4068))(11:4091|(3:4093|(1:4095)(1:4122)|4096)(3:4123|(1:4125)(1:4127)|4126)|4097|(1:4101)(1:4121)|4102|(1:4104)(1:4120)|4105|(2:4107|(1:4109)(3:4115|(1:4117)|4118))(1:4119)|4110|(1:4112)(1:4114)|4113)|3988|(1:3990)(2:4038|(2:4040|(2:4042|(1:4044)(1:4045))(1:4046))(1:4047))|3991|(3:3993|(1:3995)(1:3997)|3996)|3998|(3:4002|(1:4004)(1:4006)|4005)|4007|(3:4009|(4:4011|(1:4014)(1:4029)|4015|(1:4017))(2:4030|(3:4032|(1:4034)(1:4036)|4035))|4018)(1:4037)|4019|(3:4023|(1:4025)|4026)(1:4028)|4027)|4129|3973|(0)(0)|3988|(0)(0)|3991|(0)|3998|(4:4000|4002|(0)(0)|4005)|4007|(0)(0)|4019|(5:4021|4023|(0)|4026|4027)|4028|4027))(18:4130|(3:4132|(1:4134)(1:4265)|4135)(3:4266|(1:4268)(1:4270)|4269)|4136|(1:4138)|4139|(1:4141)(3:4255|(3:4257|(2:4259|4260)(2:4262|4263)|4261)|4264)|4142|(3:4144|(3:4146|(2:4148|4149)(2:4151|4152)|4150)|4153)|4154|(1:4156)|4157|(2:4159|(1:4163))|(1:4167)|4168|(4:4170|(1:4172)(2:4251|(1:4253))|4173|(2:4177|(3:4181|(1:(1:4184))(1:4186)|4185)))(1:4254)|4187|(11:4191|(1:4193)|4194|(1:4202)(2:4230|(1:4240)(2:4243|(1:4249)))|4203|(1:4207)|4208|(1:4224)|4225|(1:4227)|4228)(1:4250)|4229)|3022|(1:3024)(1:3166)|3025|(1:3033)|3034|(2:3042|(1:3044))(3:3156|(1:3165)|3158)|3045|(1:3047)|3048|(1:3050)(2:3149|(1:3155))|3051|(1:3053)|3054|(4:3058|(1:3060)(1:3134)|3061|(1:3063))(3:3135|(2:3139|(1:3147))|3148)|3064|(1:3066)(6:3114|(3:3116|(1:3118)(1:3120)|3119)|3121|(3:3125|(1:3127)(1:3129)|3128)|3130|(1:3132)(1:3133))|3067|(2:3069|(4:3073|(7:3075|(1:3077)(1:3087)|3078|(1:3080)(1:3086)|3081|(1:3083)(1:3085)|3084)|3088|(3:3090|(1:3092)(1:3094)|3093)))|3095|(1:3099)(1:3113)|3100|(2:3104|(2:3106|(1:3108)))(2:3110|(1:3112))|3109)(53:4312|(1:4314)|4315|(1:4317)(1:4616)|4318|(1:4320)(1:4615)|4321|(1:4323)|4324|(1:(2:4613|4614)(2:4326|(1:4328)(2:4329|4330)))|4331|(2:4333|(2:4335|(1:4337)(1:4607))(2:4608|(1:4610)(1:4611)))(1:4612)|4338|(1:(1:4343)(1:(1:4347)(1:4348)))|4349|(1:4351)(1:4606)|4352|(6:4354|(1:4358)(1:4381)|4359|(3:4361|(1:4363)(1:4375)|4364)(3:4376|(1:4378)(1:4380)|4379)|4365|(3:4369|(1:4371)(1:4373)|4372)(1:4374))|4382|(1:4388)|4389|(1:4391)|4392|(2:4394|(2:4396|(2:4397|(1:4400)(1:4399)))(0))(2:4576|(2:4577|(1:4595)(3:4579|(4:4582|(1:4584)(1:4588)|4585|4586)(2:4589|(1:4592)(2:4593|4594))|4587)))|4401|(1:4407)|4408|(1:4414)(1:4575)|4415|(1:4417)(5:4555|(3:4557|(1:4563)(1:4565)|4564)|4566|(3:4570|(1:4572)|4573)|4574)|4418|(1:4420)(1:4554)|4421|(1:4423)(1:4553)|4424|(1:4426)(1:4552)|4427|(8:4429|(2:4431|(1:(1:4455)(2:4433|(1:4435)(6:4436|4437|(2:4441|4442)(1:4454)|(2:4444|(2:4448|4449))(1:4451)|4450|4449))))(0)|(2:4472|(1:(1:4479)(2:4474|(1:4476)(2:4477|4478))))(0)|4457|(1:4463)(1:4471)|4464|(2:4466|4467)(2:4469|4470)|4468)|4480|(3:4483|(1:4485)|4486)|4487|(3:4489|(2:4491|4492)(2:4494|4495)|4493)|4496|4497|(1:4501)(2:4547|(1:4551))|4502|(1:4504)|4505|(7:4523|(3:(1:(2:4528|4529)(2:4531|4532))(2:4533|4534)|4530|4524)|4535|4536|(1:4538)(1:4546)|4539|(1:4545))|4509|(4:4513|(1:4515)(1:4519)|4516|(1:4518))|4520|4521))(17:4617|(2:4684|(12:4686|4677|4630|(3:4632|(1:4634)(1:4671)|4635)(3:4672|(1:4674)(1:4676)|4675)|4636|(1:4638)|4639|(4:4645|(1:4647)|4648|(1:4650))|4651|(1:4653)|4654|(2:4656|(7:4658|(1:4660)|4661|(1:4663)|4664|(1:4668)|4669))))(1:4619)|4620|(1:4624)(13:4678|(1:4680)|4629|4630|(0)(0)|4636|(0)|4639|(6:4641|4643|4645|(0)|4648|(0))|4651|(0)|4654|(0))|4625|(1:4627)|4677|4630|(0)(0)|4636|(0)|4639|(0)|4651|(0)|4654|(0)))(10:4689|(1:4691)(1:4747)|4692|(1:4700)(1:4746)|4701|(3:4703|(1:4705)(1:4732)|4706)(3:4733|(1:4735)(1:4737)|4736)|4707|(1:4709)|4710|(4:4712|(1:4714)(1:4731)|4715|(9:4717|(1:4719)(1:4730)|4720|(1:4722)|4723|(1:4725)|4726|(1:4728)|4729))))(33:4748|(1:4756)(1:4872)|4757|(1:4759)(1:4863)|4760|(3:4762|(1:4764)(1:4857)|4765)(3:4858|(1:4860)(1:4862)|4861)|4766|(1:4768)(1:4856)|4769|(1:4771)|(2:4773|(18:4777|4778|(3:4780|(1:4782)(1:4851)|4783)(1:4852)|4784|(1:(1:4789)(2:4846|(1:4848)(1:4849)))(1:4850)|4790|(1:(1:4840)(3:4841|(1:4843)(1:4845)|4844))|4796|(1:4800)|4801|(1:4809)(2:4834|(1:4838))|4810|(1:4812)|4813|(2:4819|(2:4821|(1:4823)))(1:4833)|4824|(3:4828|(1:4830)|4831)|4832)(1:4853))(1:4855)|4854|4778|(0)(0)|4784|(0)(0)|4790|(1:4792)|(0)(0)|4796|(2:4798|4800)|4801|(11:4803|4805|4809|4810|(0)|4813|(7:4815|4817|4819|(0)|4824|(4:4826|4828|(0)|4831)|4832)|4833|4824|(0)|4832)|4834|(2:4836|4838)|4810|(0)|4813|(0)|4833|4824|(0)|4832))(10:4873|(3:4875|(1:4877)(1:4914)|4878)(3:4915|(1:4917)(1:4919)|4918)|4879|(1:4881)|4882|(1:(2:4885|(2:4887|(1:4889)(1:4896))(2:4897|(1:4899)(1:4900)))(2:4901|(1:4903)(1:4904)))(1:(2:4906|(1:4908)(1:4909))(2:4910|(1:4912)(1:4913)))|4890|(1:4892)|4893|(1:4895))|4670|4521)(89:512|513|(1:515)(1:2730)|516|(5:518|(1:520)(1:2724)|521|(1:525)(1:2723)|526)(3:2725|(1:2727)(1:2729)|2728)|527|(3:529|(1:531)(1:533)|532)|534|(1:536)|537|(1:541)(1:2702)|542|(1:548)(1:2701)|549|(1:551)(1:2700)|552|(1:554)|555|(1:559)(1:2699)|560|(1:562)(1:2698)|(1:570)(1:2697)|571|(1:573)(1:2696)|574|(1:576)|577|(1:(2:2466|(57:2478|(6:2481|(2:2483|(2:2489|2488)(1:2485))(1:2490)|2486|2487|2488|2479)|2491|2492|584|(1:586)|587|(2:2459|(21:2461|(1:2464)(1:2465)|592|(1:594)(3:2450|(1:2452)(1:2454)|2453)|595|(3:597|(1:601)(1:2445)|602)(2:2446|(1:2448)(1:2449))|603|(1:605)(1:2444)|606|(4:608|(2:610|(1:612)(1:619))(1:620)|613|(3:615|(1:617)|618))|621|(1:623)|624|(1:630)|631|(1:633)|634|(1:638)|639|(3:645|(1:647)|648)(28:1151|(3:1153|(3:1155|(1:1157)(1:2437)|1158)(3:2438|(1:2440)(1:2442)|2441)|1159)(1:2443)|1160|(1:2436)|1164|(2:1166|(24:1168|(23:1170|(2:1172|(3:1174|(1:1176)(1:2233)|1177)(3:2234|(1:2236)(1:2238)|2237))(27:2239|(25:2338|(23:2335|(20:2332|2249|(1:2251)(1:(1:2328)(1:2329))|2252|(2:2324|(14:2326|2256|(1:2276)(1:2322)|(1:2278)(3:2302|(1:2304)(2:2308|(2:2310|(2:2312|(2:2314|(2:2316|(2:2318|(1:2320)))))))|(8:2307|2280|(4:2282|(1:2284)|2285|(1:2287))|2288|(1:2292)(1:2301)|2293|(1:2298)(1:2300)|2299))|2279|2280|(0)|2288|(6:2290|2292|2293|(3:2296|2298|2299)|2300|2299)|2301|2293|(0)|2300|2299))(1:2254)|2255|2256|(21:2258|2260|2262|2264|2266|2268|2270|2272|2274|2276|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2248|2249|(0)(0)|2252|(17:2324|(0)|2255|2256|(0)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2254|2255|2256|(0)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2245|(1:2247)(22:2330|2332|2249|(0)(0)|2252|(0)|2254|2255|2256|(0)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2248|2249|(0)(0)|2252|(0)|2254|2255|2256|(0)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2242|(1:2244)(24:2333|2335|(0)(0)|2248|2249|(0)(0)|2252|(0)|2254|2255|2256|(0)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|2245|(0)(0)|2248|2249|(0)(0)|2252|(0)|2254|2255|2256|(0)|2322|(0)(0)|2279|2280|(0)|2288|(0)|2301|2293|(0)|2300|2299)|1179|(2:1181|(2:1183|(2:1185|(19:1187|(1:1189)|1191|(1:1193)|1194|(1:1196)|1197|(1:1200)|1201|(1:1203)(17:2120|2121|2122|2123|2124|(3:2216|2217|2218)(2:2126|2127)|2128|2129|2130|(7:2134|2135|(4:2140|(1:2142)(1:2149)|(1:2144)(1:2148)|(1:2146)(1:2147))(1:2137)|2138|2139|2131|2132)|2153|2154|2155|(11:2159|2160|2161|2162|(8:(8:(1:2190)(1:2192)|2191|2167|2168|2169|2170|2171|2172)(1:2165)|2166|2167|2168|2169|2170|2171|2172)(1:2194)|(2:(2:2179|2180)(2:2181|(2:2183|2184))|2177)(1:2174)|2175|2176|2177|2156|2157)|2198|2199|2200)|(1:1205)(19:2068|2069|(1:2071)(1:2118)|2072|2073|2074|2075|(1:2077)(1:2115)|2078|(1:2080)(2:2113|2114)|2081|2082|(6:2085|(4:2091|(1:2093)(2:2094|(1:2096))|2089|2090)(1:2087)|2088|2089|2090|2083)|2097|2098|(1:2100)(1:2108)|2101|2102|2103)|(1:1209)|(12:1212|1213|(1:1215)(1:1249)|1216|1217|1218|(5:1246|1224|(5:1227|(4:1232|(1:1234)(1:1241)|(1:1236)(1:1240)|(1:1238)(1:1239))(1:1229)|1230|1231|1225)|1242|1243)|1223|1224|(1:1225)|1242|1243)|1252|(1:1254)(18:2009|2010|2011|(1:2013)(1:2065)|(1:2015)(2:2061|(13:2063|2017|(2:2059|2060)(1:2019)|2020|(2:2022|(1:2024)(1:2057))(1:2058)|(5:2056|2031|(6:2034|(3:(1:2041)(2:2042|(1:2044)(2:2045|(1:2047)))|2038|2039)(1:2036)|2037|2038|2039|2032)|2048|2049)|2027|(1:2029)(1:2053)|2030|2031|(1:2032)|2048|2049))|2016|2017|(0)(0)|2020|(0)(0)|(1:2026)(6:2054|2056|2031|(1:2032)|2048|2049)|2027|(0)(0)|2030|2031|(1:2032)|2048|2049)|(1:1260)(1:2008)|(1:1262)|1263|(1:(15:(1:(1:(13:1269|1270|1271|1272|1273|(7:1279|(3:1288|(1:1290)|1291)(32:(1:1347)(1:1686)|1348|(1:1350)|1351|(1:1353)|1354|(2:1356|(1:1360)(2:1655|(2:1661|(2:1663|(1:1665))(1:1666))(3:1667|(1:1669)(1:1671)|1670)))(1:1672)|1361|(1:1365)|1366|(1:1368)(1:1654)|1369|(1:(1:1372)(1:1650))(2:1651|(1:1653))|1373|(1:1375)|(2:1379|(8:1383|(2:1385|(1:1387)(1:1634))(1:1635)|1388|(2:1394|(1:1396))(2:1631|(1:1633))|1397|(1:1399)|1400|(1:1402))(3:1636|(1:1638)(2:1640|(1:(2:1647|1648)(2:1642|(1:1644)(2:1645|1646))))|1639))(1:1649)|1403|(1:1405)(3:1626|(1:1628)(1:1630)|1629)|1406|(1:1410)(1:1625)|1411|(3:1413|(2:1415|(2:1417|(3:1419|(2:1421|(16:1423|(1:1425)(2:1516|(3:1518|(2:1534|(1:1538)(1:1539))(3:1520|1521|(1:1523)(1:1526))|1524)(1:1540))|1426|(3:1428|(1:1430)(1:1514)|1431)(1:1515)|1432|(1:1436)(1:1513)|1437|(1:1440)(2:1489|(7:1496|(1:1498)(1:1507)|1499|(1:1501)|1502|(1:1504)(1:1506)|1505)(3:1508|(1:1510)(1:1512)|1511))|1441|1442|(1:1444)(1:1486)|1445|(1:1485)|1447|1448|(1:1476)(2:1453|(7:1455|1456|(1:1458)|1459|(2:1471|(2:1473|(1:1464)))|1462|(0))))(4:1541|(2:1545|(4:1547|(2:1549|(1:1551))|1553|(1:1561)))|1563|(3:1567|(1:1571)(1:1573)|1572)(1:1574)))(5:1575|(1:1579)|1580|(4:1583|1584|(1:1588)(1:1591)|1589)(1:1594)|1590)|1562)(4:1595|(1:(1:1598))(1:1614)|1599|(1:1605)(3:1606|(2:1610|(1:1612)(1:1613))|1562)))(2:1615|(1:1617)(1:1619)))(2:1620|(1:1622)(1:1623))|1618)(1:1624)|1525|1442|(0)(0)|1445|(4:1479|1481|1483|1485)|1447|1448|(2:1450|1476)|1477|1476)|1292|(4:1294|(2:1296|(1:1298)(1:1310))(1:1311)|1299|(5:1301|(1:1303)(1:1309)|1304|(1:1306)(1:1308)|1307))|1312|(1:1316)|1317)(1:1687)|1318|(1:1322)|1323|(1:1339)|1340|(1:1342)(1:1344)|1343)(13:1688|(1:1690)(1:1692)|1691|1273|(52:1275|1277|1279|(18:1281|1284|1286|1288|(0)|1291|1292|(0)|1312|(2:1314|1316)|1317|1318|(2:1320|1322)|1323|(4:1325|1327|1331|1339)|1340|(0)(0)|1343)|(46:1347|1348|(0)|1351|(0)|1354|(0)(0)|1361|(2:1363|1365)|1366|(0)(0)|1369|(0)(0)|1373|(0)|(35:1377|1379|(40:1381|1383|(0)(0)|1388|(36:1390|1394|(0)|1397|(0)|1400|(0)|1403|(0)(0)|1406|(26:1408|1410|1411|(0)(0)|1525|1442|(0)(0)|1445|(0)|1447|1448|(0)|1477|1476|1292|(0)|1312|(0)|1317|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1625|1411|(0)(0)|1525|1442|(0)(0)|1445|(0)|1447|1448|(0)|1477|1476|1292|(0)|1312|(0)|1317|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1631|(0)|1397|(0)|1400|(0)|1403|(0)(0)|1406|(0)|1625|1411|(0)(0)|1525|1442|(0)(0)|1445|(0)|1447|1448|(0)|1477|1476|1292|(0)|1312|(0)|1317|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1636|(0)(0)|1639|1403|(0)(0)|1406|(0)|1625|1411|(0)(0)|1525|1442|(0)(0)|1445|(0)|1447|1448|(0)|1477|1476|1292|(0)|1312|(0)|1317|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1649|1403|(0)(0)|1406|(0)|1625|1411|(0)(0)|1525|1442|(0)(0)|1445|(0)|1447|1448|(0)|1477|1476|1292|(0)|1312|(0)|1317|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1674|1347|1348|(0)|1351|(0)|1354|(0)(0)|1361|(0)|1366|(0)(0)|1369|(0)(0)|1373|(0)|(0)|1649|1403|(0)(0)|1406|(0)|1625|1411|(0)(0)|1525|1442|(0)(0)|1445|(0)|1447|1448|(0)|1477|1476|1292|(0)|1312|(0)|1317|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343))(13:1693|(1:1695)(2:1717|(10:1719|1697|(1:1700)(1:1716)|(1:1702)(1:1715)|1703|(1:1705)(1:1714)|1706|(1:1708)(1:1713)|1709|(1:1711)))|1696|1697|(8:1700|(0)(0)|1703|(0)(0)|1706|(0)(0)|1709|(0))|1716|(0)(0)|1703|(0)(0)|1706|(0)(0)|1709|(0)))(2:1720|(2:1722|(1:1724))(1:1725))|1712|1270|1271|1272|1273|(0)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343)(13:1726|(13:1728|(2:1730|(3:1732|(2:1736|(2:1738|(15:1740|(1:1742)|1743|(2:1745|(4:1747|(6:1749|(1:1751)(1:1762)|1752|(1:1754)(1:1761)|1755|(1:1759))(1:1763)|1760|1271)(10:1764|(1:1766)(1:1785)|1767|(1:1769)(1:1784)|1770|(1:1774)(1:1783)|1775|(1:1779)|1780|1781))(9:1786|(1:1788)(1:1813)|1789|(2:1791|(1:1793)(1:1811))(1:1812)|1794|(1:1796)(1:1810)|1797|(3:1799|(1:1801)(1:1804)|1802)(3:1805|(1:1807)(1:1809)|1808)|1803)|1782|1273|(0)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343)(6:1814|(1:1816)(1:1841)|1817|(4:1827|(2:1828|(1:1840)(2:1830|(1:1832)(2:1833|1834)))|1835|(1:1839))|1819|1820))(3:1842|(4:1848|(2:1849|(1:1861)(2:1851|(1:1853)(2:1854|1855)))|1856|(1:1860))|1862))(3:1863|(4:1869|(2:1870|(1:1882)(2:1872|(1:1874)(2:1875|1876)))|1877|(1:1881))|1883)|1821)(13:1884|(1:1886)(1:1926)|1887|(1:1889)|1890|(1:1892)(1:1925)|1893|(1:1895)|(1:1897)|1898|(4:1908|(2:1909|(1:1924)(2:1911|(1:1913)(3:1914|1915|(1:1917)(1:1923))))|1918|(1:1922))|1900|1901))(9:1927|(1:1933)|1934|(1:1936)(1:1966)|1937|(1:(1:1940))(1:1965)|1941|(5:1947|(3:1950|(1:1954)(1:1956)|1948)|1963|1957|(1:1961))|1964)|1272|1273|(0)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343)(1:1967)|1822|1273|(0)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343))(13:1968|(13:1972|(2:1974|(1:1976)(3:1978|(1:1980)(1:1982)|1981))(5:1983|(1:1985)(1:2007)|1986|(4:1992|(2:1993|(1:2005)(2:1995|(1:1997)(2:1998|1999)))|2000|(1:2004))|2006)|1977|1273|(0)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343)|1272|1273|(0)|1687|1318|(0)|1323|(0)|1340|(0)(0)|1343))(1:2229))(1:2230))(1:2231))(1:2232)|1190|1191|(0)|1194|(0)|1197|(1:1200)|1201|(0)(0)|(0)(0)|(2:1207|1209)|(12:1212|1213|(0)(0)|1216|1217|1218|(1:1220)|1246|1224|(1:1225)|1242|1243)|1252|(0)(0)|(6:1256|1258|1260|(0)|1263|(0)(0))|2008|(0)|1263|(0)(0))(13:2339|(1:2341)(1:2390)|2342|(2:(1:(1:2346)(1:2387))(1:2388)|2347)(1:2389)|(1:(1:2350)(1:2385))(1:2386)|(1:(1:2383)(1:2384))|(1:(1:2380)(1:2381))|(1:2362)(1:2378)|(1:2368)(1:2377)|2369|2370|(1:2374)(1:2376)|2375)|1178|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0))(1:2391))(13:2393|(1:2395)(1:2435)|2396|(1:2398)|2399|(1:2401)(1:2434)|2402|(2:2404|(6:2406|(1:2410)(2:2421|(1:2423)(2:2425|(2:2427|(1:2429)(1:2430))(1:2431)))|2411|(1:2415)|(1:2418)(1:2420)|2419)(1:2432))(1:2433)|2424|(2:2413|2415)|(2:2418|2419)|2420|2419)|2392|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0))|649))|591|592|(0)(0)|595|(0)(0)|603|(0)(0)|606|(0)|621|(0)|624|(3:626|628|630)|631|(0)|634|(2:636|638)|639|(6:641|643|645|(0)|648|649)|1151|(0)(0)|1160|(1:1162)|2436|1164|(0)(0)|2392|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0)|649)))(62:2493|(2:2495|(2:2497|(2:2499|(2:2501|(2:2503|(2:2505|(2:2507|(2:2509|(2:2511|(2:2520|(2:2524|(2:2526|(2:2528|(2:2530|(8:2532|2533|2534|(1:2536)(1:2624)|2537|(4:2613|(1:2623)|2616|(1:2618)(1:2619))(1:2539)|2540|(4:2542|(13:2549|2550|2551|2552|(2:2578|(10:2580|2581|2582|2555|2556|(4:2567|2568|2569|(5:2571|2572|2559|(1:2566)|2562))|2558|2559|(1:2561)(2:2563|2566)|2562))|2554|2555|2556|(0)|2558|2559|(0)(0)|2562)|2544|2545)(9:2586|(1:2611)|2589|(1:2607)|2592|(1:2603)|2595|(1:2597)(1:2599)|2598)))(62:2626|(1:(2:2639|2640)(2:2628|(3:2631|2632|(1:2634)(2:2636|(1:2638)(0)))(1:2630)))|2635|582|583|584|(0)|587|(1:589)|2455|2457|2459|(0)|591|592|(0)(0)|595|(0)(0)|603|(0)(0)|606|(0)|621|(0)|624|(0)|631|(0)|634|(0)|639|(0)|1151|(0)(0)|1160|(0)|2436|1164|(0)(0)|2392|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0)|649))(61:2641|(1:(2:2668|2669)(3:2643|(4:2645|(1:(2:2664|2665)(2:2647|(1:2649)(2:2650|2651)))|2652|(2:2654|(2:2656|2657)(2:2659|2660))(2:2662|2663))(2:2666|2667)|2658))|2661|583|584|(0)|587|(0)|2455|2457|2459|(0)|591|592|(0)(0)|595|(0)(0)|603|(0)(0)|606|(0)|621|(0)|624|(0)|631|(0)|634|(0)|639|(0)|1151|(0)(0)|1160|(0)|2436|1164|(0)(0)|2392|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0)|649))(1:2670))(1:2671))(2:2513|2514))(1:2672))(1:2673))(1:2674))(1:2675))(1:2676))(1:2677))(1:2678))(1:2679))(2:2680|(2:2682|(2:2684|(2:2686|(1:2692))(1:2693))(1:2694))(1:2695))|581|582|583|584|(0)|587|(0)|2455|2457|2459|(0)|591|592|(0)(0)|595|(0)(0)|603|(0)(0)|606|(0)|621|(0)|624|(0)|631|(0)|634|(0)|639|(0)|1151|(0)(0)|1160|(0)|2436|1164|(0)(0)|2392|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0)|649)|580|581|582|583|584|(0)|587|(0)|2455|2457|2459|(0)|591|592|(0)(0)|595|(0)(0)|603|(0)(0)|606|(0)|621|(0)|624|(0)|631|(0)|634|(0)|639|(0)|1151|(0)(0)|1160|(0)|2436|1164|(0)(0)|2392|1179|(0)(0)|1190|1191|(0)|1194|(0)|1197|(0)|1201|(0)(0)|(0)(0)|(0)|(0)|1252|(0)(0)|(0)|2008|(0)|1263|(0)(0)|649)|650|(7:1011|(14:1019|(1:1021)(1:1070)|1022|(3:1030|(1:1032)|1033)|1034|1035|(6:1067|1041|(1:1053)|1044|(1:1046)(1:1049)|1047)|1038|(3:1054|(3:1056|(1:1058)|1059)(3:1061|(1:1063)|1064)|1060)(1:1040)|1041|(1:1043)(2:1050|1053)|1044|(0)(0)|1047)|1071|(1:1150)|1073|1074|(6:1080|1081|(1:1145)|1084|(2:1086|(1:1088)(1:1140))(1:1141)|(1:1090)(45:1091|(1:1093)(1:1139)|1094|1095|1096|1097|(3:1129|(1:1135)|1132)(1:1099)|1100|(24:1128|657|(1:1004)|661|(21:945|946|947|948|949|950|(3:953|954|951)|955|956|957|958|959|(1:961)(1:993)|962|(4:965|(2:967|968)(2:970|(2:972|973)(2:974|975))|969|963)|976|(1:978)(1:991)|979|(1:990)|985|(2:987|(1:989)))(1:663)|664|(1:666)|667|(11:822|(1:824)(1:940)|825|(1:827)(1:939)|828|(4:(1:831)(1:837)|832|(1:834)(1:836)|835)|838|(1:844)(3:935|(1:937)|938)|845|(1:847)(4:849|(3:851|(3:853|(21:856|(1:858)(1:929)|(1:860)(1:928)|861|(1:863)(1:927)|864|(1:866)(1:926)|(1:868)|869|(1:871)(1:925)|872|(6:924|879|(1:881)|882|(6:886|887|(7:894|(3:917|907|(5:910|(1:912)(1:913)|900|891|892)(1:909))|897|(2:901|(4:904|(1:906)|907|(0)(0))(1:903))(1:899)|900|891|892)(1:889)|890|891|892)|893)|875|(1:877)(1:921)|878|879|(0)|882|(1:920)(7:884|886|887|(0)(0)|890|891|892)|893|854)|930)(1:932)|931)|933|934)|848)(2:669|670)|671|(3:673|(1:675)(1:677)|676)|678|(1:682)(1:(2:804|(1:812))(1:813))|683|(6:685|(1:687)|688|(1:690)(1:694)|691|(1:693))|695|(2:697|(1:701)(2:702|(1:704)))|705|(2:707|(1:709))|710|(1:712)(2:796|(2:798|(1:800)(1:801))(1:802))|713|(27:715|(1:717)(1:794)|718|(1:720)|721|(1:793)|727|(1:733)(1:792)|734|(1:791)|742|(1:744)(1:790)|745|(8:749|(1:751)|752|(1:754)|755|(1:757)|758|(12:760|761|(1:763)(2:785|(1:787)(1:788))|764|(2:766|(1:768)(1:769))|770|(1:774)|775|(1:779)(1:784)|780|(1:782)|783))|789|761|(0)(0)|764|(0)|770|(2:772|774)|775|(5:777|779|780|(0)|783)|784|780|(0)|783)|795)|1103|(1:1105)(2:1122|1123)|1106|1107|(1:1109)(1:1119)|1110|(1:1112)(2:1113|(1:1115)(2:1116|1117))|657|(1:659)|1002|1004|661|(46:941|943|945|946|947|948|949|950|(1:951)|955|956|957|958|959|(0)(0)|962|(1:963)|976|(0)(0)|979|(1:981)|990|985|(0)|664|(0)|667|(34:814|816|818|820|822|(0)(0)|825|(0)(0)|828|(0)|838|(22:840|842|844|845|(0)(0)|848|671|(0)|678|(13:680|682|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|935|(0)|938|845|(0)(0)|848|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|669|670|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|663|664|(0)|667|(0)|669|670|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)))|656|657|(0)|1002|1004|661|(0)|663|664|(0)|667|(0)|669|670|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)(5:4920|(1:4922)|4923|(1:4925)|4926))(3:4927|(1:4929)|4930)|4522|650|(1:652)|1005|1007|1009|1011|(16:1013|1015|1019|(0)(0)|1022|(6:1024|1026|1028|1030|(0)|1033)|1034|1035|(1:1037)(7:1065|1067|1041|(0)(0)|1044|(0)(0)|1047)|1038|(0)(0)|1041|(0)(0)|1044|(0)(0)|1047)|1071|(2:1148|1150)|1073|1074|(1:1076)|1080|1081|(1:1083)(2:1142|1145)|1084|(0)(0)|(0)(0))(3:4938|(2:4940|(2:4941|(1:4944)(1:4943)))(0)|4945))(1:4951)|4946|499|(26:4931|4933|(0)(0)|4936|505|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|501|502|(0)|505|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))(27:4952|(1:4963)(2:4954|4955)|4956|(1:4958)(1:4961)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0)))(1:4970)|4967|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|(19:175|(1:177)|178|(1:180)|181|(1:183)|184|(1:186)|187|(3:189|(1:199)(1:201)|200)|202|(3:204|(1:206)(1:208)|207)|209|(1:211)|212|(1:214)|215|(1:217)|218)|219|(8:221|(1:229)(1:242)|(1:231)(1:241)|232|(1:234)(1:240)|235|(1:237)(1:239)|238)|243|(1:247)(1:273)|248|(3:256|(1:258)(1:260)|259)|261|(1:269)|270|271)|5049|37|(119:39|41|43|45|46|(0)(0)|(2:50|52)|53|(112:55|57|74|(2:76|78)|(117:80|82|(0)(0)|(115:86|88|90|(2:92|94)|95|(0)|103|(7:105|107|(2:109|111)|112|(2:116|117)|118|117)|(10:121|123|125|127|129|131|133|135|(2:(0)(0)|139)|(0))|(4:151|(0)(0)|154|(0)(0))|159|(16:167|169|171|173|(0)|219|(0)|243|(8:245|247|248|(6:250|252|254|256|(0)(0)|259)|261|(3:263|267|269)|270|271)|273|248|(0)|261|(0)|270|271)|274|(0)|5023|(0)|5026|277|(97:5018|5020|(0)|281|(99:283|285|(97:287|291|292|(94:294|298|299|300|(93:302|304|306|308|310|311|(0)(0)|314|(87:316|318|320|322|323|(82:325|329|330|(79:332|334|335|(77:337|339|341|342|(73:344|346|347|(0)(0)|380|(0)|383|(3:385|387|(3:388|(0)(0)|394))(0)|398|(0)|4994|402|(3:4989|4991|4993)|404|405|(0)|408|(56:410|412|413|(0)|416|(0)|4985|4987|419|420|(1:4981)|422|423|(47:425|427|431|(0)(0)|434|(0)(0)|(0)|445|(39:447|449|450|(33:453|(1:455)(25:4964|4966|4967|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|456|(33:458|460|(0)|463|(0)(0)|4946|499|(0)|501|502|(0)|505|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|4952|(26:4963|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5015|299|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5016|292|(0)|5015|299|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5017|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|279|280|281|(0)|5017|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5027|(0)|95|(0)|103|(0)|(0)|(0)|159|(0)|274|(0)|5023|(0)|5026|277|(0)|279|280|281|(0)|5017|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5029|(0)|159|(0)|274|(0)|5023|(0)|5026|277|(0)|279|280|281|(0)|5017|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5030|(0)|(0)|5029|(0)|159|(0)|274|(0)|5023|(0)|5026|277|(0)|279|280|281|(0)|5017|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0))|5032|5034|45|46|(0)(0)|(0)|53|(0)|5030|(0)|(0)|5029|(0)|159|(0)|274|(0)|5023|(0)|5026|277|(0)|279|280|281|(0)|5017|300|(0)|5014|311|(0)(0)|314|(0)|5012|323|(0)|5011|330|(0)|5010|335|(0)|5009|342|(0)|5008|347|(0)(0)|380|(0)|383|(0)(0)|398|(0)|4994|402|(0)|404|405|(0)|408|(0)|4988|413|(0)|416|(0)|4985|4987|419|420|(0)|422|423|(0)|4980|(0)|445|(0)|4973|450|(0)|4968|4971|453|(0)(0)|456|(0)|4952|(0)|4954|4955|4956|(0)(0)|4959|4960|506|(0)(0)|4522|650|(0)|1005|1007|1009|1011|(0)|1071|(0)|1073|1074|(0)|1080|1081|(0)(0)|1084|(0)(0)|(0)(0)|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(42:1091|(1:1093)(1:1139)|1094|1095|(4:1096|1097|(3:1129|(1:1135)|1132)(1:1099)|1100)|(24:1128|657|(1:1004)|661|(21:945|946|947|948|949|950|(3:953|954|951)|955|956|957|958|959|(1:961)(1:993)|962|(4:965|(2:967|968)(2:970|(2:972|973)(2:974|975))|969|963)|976|(1:978)(1:991)|979|(1:990)|985|(2:987|(1:989)))(1:663)|664|(1:666)|667|(11:822|(1:824)(1:940)|825|(1:827)(1:939)|828|(4:(1:831)(1:837)|832|(1:834)(1:836)|835)|838|(1:844)(3:935|(1:937)|938)|845|(1:847)(4:849|(3:851|(3:853|(21:856|(1:858)(1:929)|(1:860)(1:928)|861|(1:863)(1:927)|864|(1:866)(1:926)|(1:868)|869|(1:871)(1:925)|872|(6:924|879|(1:881)|882|(6:886|887|(7:894|(3:917|907|(5:910|(1:912)(1:913)|900|891|892)(1:909))|897|(2:901|(4:904|(1:906)|907|(0)(0))(1:903))(1:899)|900|891|892)(1:889)|890|891|892)|893)|875|(1:877)(1:921)|878|879|(0)|882|(1:920)(7:884|886|887|(0)(0)|890|891|892)|893|854)|930)(1:932)|931)|933|934)|848)(2:669|670)|671|(3:673|(1:675)(1:677)|676)|678|(1:682)(1:(2:804|(1:812))(1:813))|683|(6:685|(1:687)|688|(1:690)(1:694)|691|(1:693))|695|(2:697|(1:701)(2:702|(1:704)))|705|(2:707|(1:709))|710|(1:712)(2:796|(2:798|(1:800)(1:801))(1:802))|713|(27:715|(1:717)(1:794)|718|(1:720)|721|(1:793)|727|(1:733)(1:792)|734|(1:791)|742|(1:744)(1:790)|745|(8:749|(1:751)|752|(1:754)|755|(1:757)|758|(12:760|761|(1:763)(2:785|(1:787)(1:788))|764|(2:766|(1:768)(1:769))|770|(1:774)|775|(1:779)(1:784)|780|(1:782)|783))|789|761|(0)(0)|764|(0)|770|(2:772|774)|775|(5:777|779|780|(0)|783)|784|780|(0)|783)|795)|1103|(1:1105)(2:1122|1123)|1106|1107|(1:1109)(1:1119)|1110|(1:1112)(2:1113|(1:1115)(2:1116|1117))|657|(1:659)|1002|1004|661|(46:941|943|945|946|947|948|949|950|(1:951)|955|956|957|958|959|(0)(0)|962|(1:963)|976|(0)(0)|979|(1:981)|990|985|(0)|664|(0)|667|(34:814|816|818|820|822|(0)(0)|825|(0)(0)|828|(0)|838|(22:840|842|844|845|(0)(0)|848|671|(0)|678|(13:680|682|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|935|(0)|938|845|(0)(0)|848|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|669|670|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795)|663|664|(0)|667|(0)|669|670|671|(0)|678|(0)|(0)(0)|683|(0)|695|(0)|705|(0)|710|(0)(0)|713|(0)|795) */
    /* JADX WARN: Can't wrap try/catch for region: R(54:3425|3426|(1:3428)(1:3470)|3429|(1:3431)(2:3466|(1:3468)(1:3469))|3432|(47:3465|3436|(1:3462)|3439|3440|3441|3442|(30:3457|3448|3449|2938|(1:3424)|2940|2941|(4:3379|(1:3381)(1:3421)|3382|(9:3384|(2:3386|(1:3388))(1:3420)|3389|(1:3391)(1:3419)|3392|(1:3398)|3399|(2:3402|(3:3406|(2:3408|(1:3410))|3411)(1:(4:3413|(1:3415)|3416|(1:3418))))|3401))|2943|2944|(3:3375|(1:3377)|3378)|3365|(2:3367|(1:3369))|2949|(2:3350|(3:3354|(1:3356)(2:3358|(1:3360))|3357)(3:3361|(1:3363)|3364))(3:2951|2952|(2:2956|(1:2958)(4:3335|(1:3337)|3338|(1:3340)(1:3341))))|2959|(1:2965)(1:3334)|2966|(1:3333)(1:2968)|2969|(1:2974)|2975|(2:3300|(10:3302|(2:3304|(1:3306))|3308|(2:3312|(2:3320|(1:3322)(8:3323|(1:3327)(1:3329)|3328|2979|(1:2981)(1:3299)|2982|(2:2984|(2:2988|(2:2990|(8:2992|(1:2994)(2:3239|(3:3241|(1:3246)(2:(1:3252)(1:3248)|3249)|3020)(1:3253))|2995|(2:2997|(1:2999)(1:3237))(1:3238)|3000|(1:3004)(1:3236)|3005|(1:(4:3176|3177|(1:3179)|(5:3186|(1:3188)|3189|(1:3191)(1:3193)|3192)(2:3194|(3:3199|(1:3201)(1:3203)|3202)(1:3204)))(1:(1:(5:3214|(1:3216)|3217|(1:3219)(1:3221)|3220)(3:3222|(1:3224)(1:3226)|3225))(3:3227|(1:3229)(1:3231)|3230)))(3:3013|(1:3019)(2:(1:3170)|3171)|3020))(2:3254|(2:3256|(1:3258)(3:3259|(1:3261)(1:3276)|(2:3269|(1:3273)(1:3274))(1:3275)))(1:3277)))(1:3278))(2:3279|(1:3281)(2:3282|(1:3284)(1:3285))))(2:3286|(1:3292)(2:3293|(2:(1:3297)|3298)))|3021)))|2978|2979|(0)(0)|2982|(0)(0)|3021))|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3445|(37:3452|3453|2938|(2:3422|3424)|2940|2941|(0)|2943|2944|(1:2946)(4:3370|3375|(0)|3378)|3365|(0)|2949|(22:3350|(21:3352|3354|(0)(0)|3357|2959|(17:2961|2963|2965|2966|(13:3331|3333|2969|(2:2972|2974)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3361|(0)|3364|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|2951|2952|(20:2954|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3448|3449|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3435|3436|(1:3438)(2:3460|3462)|3439|3440|3441|3442|(1:3444)(39:3455|3457|3448|3449|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3445|(1:3447)(38:3450|3452|3453|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021)|3448|3449|2938|(0)|2940|2941|(0)|2943|2944|(0)(0)|3365|(0)|2949|(0)|2951|2952|(0)|3342|2956|(0)(0)|2959|(0)|3334|2966|(0)|2968|2969|(0)|2975|(0)|2977|2978|2979|(0)(0)|2982|(0)(0)|3021) */
    /* JADX WARN: Code restructure failed: missing block: B:1070:0x0ead, code lost:
        if (r10.isSmall != false) goto L3473;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1094:0x0f1e, code lost:
        if (r0 == 0) goto L3512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1194:0x10dd, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1198:0x10e1, code lost:
        org.telegram.messenger.FileLog.m102e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1380:0x141d, code lost:
        if (r1.revealingMediaSpoilers != false) goto L3308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1641:0x1a8a, code lost:
        if ((r4.flags & 2) == 0) goto L3590;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2052:0x2527, code lost:
        if (r1 >= (r2 + org.telegram.messenger.AndroidUtilities.m107dp(r3 + r35))) goto L4068;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2878:0x35f6, code lost:
        if (r1.messageOwner.fwd_from.from_id != null) goto L4629;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2884:0x3602, code lost:
        if ((r0.flags & 4) != 0) goto L4677;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3815:0x47ca, code lost:
        if (r13 == 20) goto L2305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4023:0x4b5f, code lost:
        if (r8.isSmallImage != false) goto L2166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4897:0x5bfb, code lost:
        if (r0.revealingMediaSpoilers != false) goto L1553;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0097, code lost:
        if (r8.isPlayingRound == ((!org.telegram.messenger.MediaController.getInstance().isPlayingMessage(r8.currentMessageObject) || (r6 = r8.delegate) == null || r6.keyboardIsOpened()) ? false : true)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5265:0x63f4, code lost:
        if ((r1.flags & r7) == 0) goto L657;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5279:0x6435, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5283:0x643b, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5284:0x643c, code lost:
        r7 = r52;
        r4 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5285:0x6440, code lost:
        org.telegram.messenger.FileLog.m102e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:5796:0x6c45, code lost:
        if (r11.button.url.startsWith("tg://resolve") != false) goto L900;
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x09de, code lost:
        if (r69.getSavedDialogId() == org.telegram.messenger.UserObject.ANONYMOUS) goto L4290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:714:0x09ec, code lost:
        if (r69.isSupergroup() == false) goto L4297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:723:0x0a01, code lost:
        if (r15.messageOwner.fwd_from.from_id != null) goto L4294;
     */
    /* JADX WARN: Multi-variable search skipped. Vars limit reached: 8770 (expected less than 5000) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1004:0x0d89  */
    /* JADX WARN: Removed duplicated region for block: B:1005:0x0d91  */
    /* JADX WARN: Removed duplicated region for block: B:1015:0x0dbe  */
    /* JADX WARN: Removed duplicated region for block: B:1018:0x0de3  */
    /* JADX WARN: Removed duplicated region for block: B:1019:0x0de6  */
    /* JADX WARN: Removed duplicated region for block: B:1022:0x0dee  */
    /* JADX WARN: Removed duplicated region for block: B:1023:0x0df0  */
    /* JADX WARN: Removed duplicated region for block: B:1027:0x0dfc  */
    /* JADX WARN: Removed duplicated region for block: B:1030:0x0e03  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:1041:0x0e38  */
    /* JADX WARN: Removed duplicated region for block: B:1052:0x0e5c  */
    /* JADX WARN: Removed duplicated region for block: B:1079:0x0eca  */
    /* JADX WARN: Removed duplicated region for block: B:1081:0x0ed5  */
    /* JADX WARN: Removed duplicated region for block: B:1203:0x10eb  */
    /* JADX WARN: Removed duplicated region for block: B:1210:0x1105  */
    /* JADX WARN: Removed duplicated region for block: B:1266:0x122d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1267:0x122f  */
    /* JADX WARN: Removed duplicated region for block: B:1278:0x124a  */
    /* JADX WARN: Removed duplicated region for block: B:1285:0x1266  */
    /* JADX WARN: Removed duplicated region for block: B:1291:0x128a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1302:0x12c8  */
    /* JADX WARN: Removed duplicated region for block: B:1306:0x12df  */
    /* JADX WARN: Removed duplicated region for block: B:1307:0x12e1  */
    /* JADX WARN: Removed duplicated region for block: B:1315:0x1343  */
    /* JADX WARN: Removed duplicated region for block: B:1329:0x135f  */
    /* JADX WARN: Removed duplicated region for block: B:1330:0x1375  */
    /* JADX WARN: Removed duplicated region for block: B:1341:0x13d1  */
    /* JADX WARN: Removed duplicated region for block: B:1351:0x13e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:1360:0x13f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1370:0x1406  */
    /* JADX WARN: Removed duplicated region for block: B:1413:0x146f  */
    /* JADX WARN: Removed duplicated region for block: B:1414:0x1472  */
    /* JADX WARN: Removed duplicated region for block: B:1417:0x1478  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:1603:0x1949  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:1696:0x1b33  */
    /* JADX WARN: Removed duplicated region for block: B:1697:0x1b36  */
    /* JADX WARN: Removed duplicated region for block: B:1711:0x1b5e  */
    /* JADX WARN: Removed duplicated region for block: B:1716:0x1b67  */
    /* JADX WARN: Removed duplicated region for block: B:1717:0x1b6a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:1921:0x2135  */
    /* JADX WARN: Removed duplicated region for block: B:1922:0x2137  */
    /* JADX WARN: Removed duplicated region for block: B:1939:0x2192  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x01d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1997:0x22f9  */
    /* JADX WARN: Removed duplicated region for block: B:2059:0x2541  */
    /* JADX WARN: Removed duplicated region for block: B:2100:0x2751  */
    /* JADX WARN: Removed duplicated region for block: B:2101:0x275d  */
    /* JADX WARN: Removed duplicated region for block: B:2114:0x277c  */
    /* JADX WARN: Removed duplicated region for block: B:2127:0x27c0  */
    /* JADX WARN: Removed duplicated region for block: B:2128:0x27c3  */
    /* JADX WARN: Removed duplicated region for block: B:2132:0x27dd  */
    /* JADX WARN: Removed duplicated region for block: B:2152:0x285d  */
    /* JADX WARN: Removed duplicated region for block: B:2162:0x28bd  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:2330:0x2b75  */
    /* JADX WARN: Removed duplicated region for block: B:2331:0x2b77  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x024b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2372:0x2c0b  */
    /* JADX WARN: Removed duplicated region for block: B:2376:0x2c26  */
    /* JADX WARN: Removed duplicated region for block: B:2379:0x2c35  */
    /* JADX WARN: Removed duplicated region for block: B:2380:0x2c38  */
    /* JADX WARN: Removed duplicated region for block: B:2393:0x2c64  */
    /* JADX WARN: Removed duplicated region for block: B:2397:0x2c7c  */
    /* JADX WARN: Removed duplicated region for block: B:2402:0x2c89  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:2421:0x2cc4  */
    /* JADX WARN: Removed duplicated region for block: B:2422:0x2cc6  */
    /* JADX WARN: Removed duplicated region for block: B:2426:0x2cd9  */
    /* JADX WARN: Removed duplicated region for block: B:2429:0x2ce6  */
    /* JADX WARN: Removed duplicated region for block: B:2430:0x2ce8  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:2456:0x2d3f  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:2489:0x2da6  */
    /* JADX WARN: Removed duplicated region for block: B:2496:0x2dda  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0272 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2501:0x2de5  */
    /* JADX WARN: Removed duplicated region for block: B:2505:0x2df0  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x02b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:2889:0x360f  */
    /* JADX WARN: Removed duplicated region for block: B:2894:0x362c  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:2902:0x3672  */
    /* JADX WARN: Removed duplicated region for block: B:2906:0x3680  */
    /* JADX WARN: Removed duplicated region for block: B:2915:0x3698  */
    /* JADX WARN: Removed duplicated region for block: B:2919:0x36b4  */
    /* JADX WARN: Removed duplicated region for block: B:2923:0x36c2  */
    /* JADX WARN: Removed duplicated region for block: B:2927:0x36d4  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:3079:0x39c9  */
    /* JADX WARN: Removed duplicated region for block: B:3084:0x39d7  */
    /* JADX WARN: Removed duplicated region for block: B:3087:0x39e4  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:3096:0x3a2b  */
    /* JADX WARN: Removed duplicated region for block: B:3107:0x3a48  */
    /* JADX WARN: Removed duplicated region for block: B:3108:0x3a4c  */
    /* JADX WARN: Removed duplicated region for block: B:3142:0x3b18  */
    /* JADX WARN: Removed duplicated region for block: B:3146:0x3b27  */
    /* JADX WARN: Removed duplicated region for block: B:3154:0x3b39  */
    /* JADX WARN: Removed duplicated region for block: B:3162:0x3b70  */
    /* JADX WARN: Removed duplicated region for block: B:3168:0x3b9b  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:3462:0x411d  */
    /* JADX WARN: Removed duplicated region for block: B:3470:0x4142 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3471:0x4143 A[Catch: Exception -> 0x3f08, TryCatch #26 {Exception -> 0x3f08, blocks: (B:3468:0x413a, B:3475:0x415d, B:3471:0x4143, B:3474:0x414e, B:3467:0x412c, B:3477:0x4189, B:3484:0x41c8, B:3491:0x41e9, B:3498:0x420c, B:3500:0x4213, B:3502:0x421f, B:3501:0x421a, B:3494:0x41f2, B:3497:0x41fd, B:3487:0x41cf, B:3490:0x41dc, B:3480:0x41a8, B:3483:0x41b3), top: B:5864:0x40c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:3578:0x43e3  */
    /* JADX WARN: Removed duplicated region for block: B:3582:0x43ed  */
    /* JADX WARN: Removed duplicated region for block: B:3593:0x4402  */
    /* JADX WARN: Removed duplicated region for block: B:3602:0x444a  */
    /* JADX WARN: Removed duplicated region for block: B:3603:0x444d  */
    /* JADX WARN: Removed duplicated region for block: B:3610:0x4494  */
    /* JADX WARN: Removed duplicated region for block: B:3618:0x44b2  */
    /* JADX WARN: Removed duplicated region for block: B:3624:0x44e9  */
    /* JADX WARN: Removed duplicated region for block: B:3625:0x44f8  */
    /* JADX WARN: Removed duplicated region for block: B:3629:0x4507  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:3647:0x4551  */
    /* JADX WARN: Removed duplicated region for block: B:3651:0x4560  */
    /* JADX WARN: Removed duplicated region for block: B:3661:0x458d  */
    /* JADX WARN: Removed duplicated region for block: B:3665:0x45a0  */
    /* JADX WARN: Removed duplicated region for block: B:3672:0x45b1  */
    /* JADX WARN: Removed duplicated region for block: B:3680:0x45cc  */
    /* JADX WARN: Removed duplicated region for block: B:3684:0x45ee  */
    /* JADX WARN: Removed duplicated region for block: B:3697:0x4619  */
    /* JADX WARN: Removed duplicated region for block: B:3701:0x4622  */
    /* JADX WARN: Removed duplicated region for block: B:3707:0x4640  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:3740:0x46f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3741:0x46f3  */
    /* JADX WARN: Removed duplicated region for block: B:3747:0x4704  */
    /* JADX WARN: Removed duplicated region for block: B:3748:0x4707  */
    /* JADX WARN: Removed duplicated region for block: B:3754:0x471a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3759:0x4732  */
    /* JADX WARN: Removed duplicated region for block: B:3763:0x4749  */
    /* JADX WARN: Removed duplicated region for block: B:3792:0x479e  */
    /* JADX WARN: Removed duplicated region for block: B:3793:0x47a1  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:3825:0x47de  */
    /* JADX WARN: Removed duplicated region for block: B:3836:0x47f1  */
    /* JADX WARN: Removed duplicated region for block: B:3843:0x47fd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:3911:0x4902  */
    /* JADX WARN: Removed duplicated region for block: B:3960:0x49dc  */
    /* JADX WARN: Removed duplicated region for block: B:3973:0x4a14  */
    /* JADX WARN: Removed duplicated region for block: B:3978:0x4a29  */
    /* JADX WARN: Removed duplicated region for block: B:3982:0x4a31  */
    /* JADX WARN: Removed duplicated region for block: B:3986:0x4a41 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:3991:0x4a8a  */
    /* JADX WARN: Removed duplicated region for block: B:4078:0x4c52  */
    /* JADX WARN: Removed duplicated region for block: B:4126:0x4d52  */
    /* JADX WARN: Removed duplicated region for block: B:4132:0x4d61 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4136:0x4d6a  */
    /* JADX WARN: Removed duplicated region for block: B:4137:0x4d6b A[Catch: Exception -> 0x4e41, TRY_LEAVE, TryCatch #21 {Exception -> 0x4e41, blocks: (B:4134:0x4d66, B:4142:0x4d93, B:4147:0x4db4, B:4148:0x4dc9, B:4149:0x4dd5, B:4151:0x4ddd, B:4152:0x4e05, B:4165:0x4e26, B:4155:0x4e0f, B:4164:0x4e1e, B:4146:0x4d9a, B:4137:0x4d6b), top: B:5854:0x4d66 }] */
    /* JADX WARN: Removed duplicated region for block: B:4152:0x4e05 A[Catch: Exception -> 0x4e41, TryCatch #21 {Exception -> 0x4e41, blocks: (B:4134:0x4d66, B:4142:0x4d93, B:4147:0x4db4, B:4148:0x4dc9, B:4149:0x4dd5, B:4151:0x4ddd, B:4152:0x4e05, B:4165:0x4e26, B:4155:0x4e0f, B:4164:0x4e1e, B:4146:0x4d9a, B:4137:0x4d6b), top: B:5854:0x4d66 }] */
    /* JADX WARN: Removed duplicated region for block: B:4170:0x4e49  */
    /* JADX WARN: Removed duplicated region for block: B:4171:0x4e4d  */
    /* JADX WARN: Removed duplicated region for block: B:4185:0x4e8a  */
    /* JADX WARN: Removed duplicated region for block: B:4188:0x4e92 A[Catch: Exception -> 0x4f6e, TryCatch #7 {Exception -> 0x4f6e, blocks: (B:4184:0x4e85, B:4186:0x4e8c, B:4188:0x4e92, B:4197:0x4eac, B:4201:0x4eb5, B:4203:0x4ee7, B:4204:0x4f19, B:4206:0x4f21, B:4207:0x4f2c, B:4218:0x4f5d, B:4219:0x4f61, B:4212:0x4f53, B:4215:0x4f58, B:4200:0x4eb2, B:4195:0x4ea8, B:4202:0x4ec6), top: B:5827:0x4e85 }] */
    /* JADX WARN: Removed duplicated region for block: B:4192:0x4ea0  */
    /* JADX WARN: Removed duplicated region for block: B:4199:0x4eb0  */
    /* JADX WARN: Removed duplicated region for block: B:4200:0x4eb2 A[Catch: Exception -> 0x4f6e, TryCatch #7 {Exception -> 0x4f6e, blocks: (B:4184:0x4e85, B:4186:0x4e8c, B:4188:0x4e92, B:4197:0x4eac, B:4201:0x4eb5, B:4203:0x4ee7, B:4204:0x4f19, B:4206:0x4f21, B:4207:0x4f2c, B:4218:0x4f5d, B:4219:0x4f61, B:4212:0x4f53, B:4215:0x4f58, B:4200:0x4eb2, B:4195:0x4ea8, B:4202:0x4ec6), top: B:5827:0x4e85 }] */
    /* JADX WARN: Removed duplicated region for block: B:4207:0x4f2c A[Catch: Exception -> 0x4f6e, TryCatch #7 {Exception -> 0x4f6e, blocks: (B:4184:0x4e85, B:4186:0x4e8c, B:4188:0x4e92, B:4197:0x4eac, B:4201:0x4eb5, B:4203:0x4ee7, B:4204:0x4f19, B:4206:0x4f21, B:4207:0x4f2c, B:4218:0x4f5d, B:4219:0x4f61, B:4212:0x4f53, B:4215:0x4f58, B:4200:0x4eb2, B:4195:0x4ea8, B:4202:0x4ec6), top: B:5827:0x4e85 }] */
    /* JADX WARN: Removed duplicated region for block: B:4228:0x4f79  */
    /* JADX WARN: Removed duplicated region for block: B:4236:0x4f8b  */
    /* JADX WARN: Removed duplicated region for block: B:4239:0x4f92  */
    /* JADX WARN: Removed duplicated region for block: B:4263:0x4fe9  */
    /* JADX WARN: Removed duplicated region for block: B:4264:0x4feb  */
    /* JADX WARN: Removed duplicated region for block: B:4267:0x4ff8  */
    /* JADX WARN: Removed duplicated region for block: B:4268:0x4ffa  */
    /* JADX WARN: Removed duplicated region for block: B:4271:0x5003  */
    /* JADX WARN: Removed duplicated region for block: B:4272:0x5006  */
    /* JADX WARN: Removed duplicated region for block: B:4276:0x5017  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:4561:0x55dd  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0584 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4610:0x56a7  */
    /* JADX WARN: Removed duplicated region for block: B:4632:0x56e0  */
    /* JADX WARN: Removed duplicated region for block: B:4662:0x574e  */
    /* JADX WARN: Removed duplicated region for block: B:4666:0x5756  */
    /* JADX WARN: Removed duplicated region for block: B:4669:0x576b  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:4695:0x57b0  */
    /* JADX WARN: Removed duplicated region for block: B:4699:0x57bb  */
    /* JADX WARN: Removed duplicated region for block: B:4705:0x57cb  */
    /* JADX WARN: Removed duplicated region for block: B:4706:0x57cd  */
    /* JADX WARN: Removed duplicated region for block: B:4709:0x57de  */
    /* JADX WARN: Removed duplicated region for block: B:4712:0x57e6  */
    /* JADX WARN: Removed duplicated region for block: B:4719:0x57f5  */
    /* JADX WARN: Removed duplicated region for block: B:4722:0x5803  */
    /* JADX WARN: Removed duplicated region for block: B:4731:0x5816  */
    /* JADX WARN: Removed duplicated region for block: B:4735:0x5829  */
    /* JADX WARN: Removed duplicated region for block: B:4747:0x585d  */
    /* JADX WARN: Removed duplicated region for block: B:4751:0x586a  */
    /* JADX WARN: Removed duplicated region for block: B:4755:0x5872  */
    /* JADX WARN: Removed duplicated region for block: B:4759:0x588a  */
    /* JADX WARN: Removed duplicated region for block: B:4762:0x5895  */
    /* JADX WARN: Removed duplicated region for block: B:4763:0x589a  */
    /* JADX WARN: Removed duplicated region for block: B:4774:0x58d6  */
    /* JADX WARN: Removed duplicated region for block: B:4775:0x58ea  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:4783:0x591f  */
    /* JADX WARN: Removed duplicated region for block: B:4789:0x597d  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0616 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:4984:0x5e9b  */
    /* JADX WARN: Removed duplicated region for block: B:4988:0x5ec5  */
    /* JADX WARN: Removed duplicated region for block: B:4989:0x5ec7  */
    /* JADX WARN: Removed duplicated region for block: B:4993:0x5ee0  */
    /* JADX WARN: Removed duplicated region for block: B:5006:0x5f21  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:5035:0x5f73  */
    /* JADX WARN: Removed duplicated region for block: B:5040:0x5fd5  */
    /* JADX WARN: Removed duplicated region for block: B:5062:0x60c6  */
    /* JADX WARN: Removed duplicated region for block: B:5070:0x60e8  */
    /* JADX WARN: Removed duplicated region for block: B:5077:0x6109  */
    /* JADX WARN: Removed duplicated region for block: B:5101:0x6143  */
    /* JADX WARN: Removed duplicated region for block: B:5102:0x6145  */
    /* JADX WARN: Removed duplicated region for block: B:510:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:5114:0x61b8  */
    /* JADX WARN: Removed duplicated region for block: B:5123:0x61f4  */
    /* JADX WARN: Removed duplicated region for block: B:5141:0x6224  */
    /* JADX WARN: Removed duplicated region for block: B:5152:0x623d  */
    /* JADX WARN: Removed duplicated region for block: B:5153:0x6240  */
    /* JADX WARN: Removed duplicated region for block: B:5169:0x6280  */
    /* JADX WARN: Removed duplicated region for block: B:5179:0x62b9  */
    /* JADX WARN: Removed duplicated region for block: B:5180:0x62ba A[Catch: Exception -> 0x6316, TryCatch #15 {Exception -> 0x6316, blocks: (B:5171:0x62a5, B:5177:0x62b3, B:5191:0x62da, B:5198:0x62eb, B:5202:0x62f6, B:5194:0x62df, B:5197:0x62e4, B:5180:0x62ba, B:5182:0x62c0, B:5185:0x62c8, B:5190:0x62d9, B:5186:0x62cd, B:5189:0x62d5, B:5174:0x62ae), top: B:5842:0x62a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:5193:0x62de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5194:0x62df A[Catch: Exception -> 0x6316, TryCatch #15 {Exception -> 0x6316, blocks: (B:5171:0x62a5, B:5177:0x62b3, B:5191:0x62da, B:5198:0x62eb, B:5202:0x62f6, B:5194:0x62df, B:5197:0x62e4, B:5180:0x62ba, B:5182:0x62c0, B:5185:0x62c8, B:5190:0x62d9, B:5186:0x62cd, B:5189:0x62d5, B:5174:0x62ae), top: B:5842:0x62a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:5200:0x62f2  */
    /* JADX WARN: Removed duplicated region for block: B:5201:0x62f4  */
    /* JADX WARN: Removed duplicated region for block: B:5209:0x6320  */
    /* JADX WARN: Removed duplicated region for block: B:5216:0x6336  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:5224:0x6348 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5225:0x6349 A[Catch: Exception -> 0x643b, TryCatch #29 {Exception -> 0x643b, blocks: (B:5222:0x6342, B:5229:0x6374, B:5231:0x637f, B:5238:0x639e, B:5242:0x63a9, B:5241:0x63a3, B:5234:0x6387, B:5235:0x6393, B:5225:0x6349, B:5228:0x634e), top: B:5868:0x6342 }] */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:5231:0x637f A[Catch: Exception -> 0x643b, TryCatch #29 {Exception -> 0x643b, blocks: (B:5222:0x6342, B:5229:0x6374, B:5231:0x637f, B:5238:0x639e, B:5242:0x63a9, B:5241:0x63a3, B:5234:0x6387, B:5235:0x6393, B:5225:0x6349, B:5228:0x634e), top: B:5868:0x6342 }] */
    /* JADX WARN: Removed duplicated region for block: B:5235:0x6393 A[Catch: Exception -> 0x643b, TryCatch #29 {Exception -> 0x643b, blocks: (B:5222:0x6342, B:5229:0x6374, B:5231:0x637f, B:5238:0x639e, B:5242:0x63a9, B:5241:0x63a3, B:5234:0x6387, B:5235:0x6393, B:5225:0x6349, B:5228:0x634e), top: B:5868:0x6342 }] */
    /* JADX WARN: Removed duplicated region for block: B:5237:0x639c  */
    /* JADX WARN: Removed duplicated region for block: B:5238:0x639e A[Catch: Exception -> 0x643b, TryCatch #29 {Exception -> 0x643b, blocks: (B:5222:0x6342, B:5229:0x6374, B:5231:0x637f, B:5238:0x639e, B:5242:0x63a9, B:5241:0x63a3, B:5234:0x6387, B:5235:0x6393, B:5225:0x6349, B:5228:0x634e), top: B:5868:0x6342 }] */
    /* JADX WARN: Removed duplicated region for block: B:525:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:5289:0x6448  */
    /* JADX WARN: Removed duplicated region for block: B:5299:0x6463  */
    /* JADX WARN: Removed duplicated region for block: B:5312:0x64e1 A[Catch: Exception -> 0x64f4, TRY_LEAVE, TryCatch #2 {Exception -> 0x64f4, blocks: (B:5308:0x64bd, B:5309:0x64c2, B:5311:0x64ca, B:5312:0x64e1), top: B:5817:0x64bd }] */
    /* JADX WARN: Removed duplicated region for block: B:5322:0x6502  */
    /* JADX WARN: Removed duplicated region for block: B:5323:0x6503 A[Catch: Exception -> 0x6575, TryCatch #4 {Exception -> 0x6575, blocks: (B:5320:0x64fc, B:5324:0x650c, B:5325:0x6544, B:5329:0x654f, B:5330:0x6553, B:5333:0x6563, B:5335:0x6567, B:5336:0x656f, B:5323:0x6503), top: B:5821:0x64fc }] */
    /* JADX WARN: Removed duplicated region for block: B:5328:0x654e  */
    /* JADX WARN: Removed duplicated region for block: B:5329:0x654f A[Catch: Exception -> 0x6575, TryCatch #4 {Exception -> 0x6575, blocks: (B:5320:0x64fc, B:5324:0x650c, B:5325:0x6544, B:5329:0x654f, B:5330:0x6553, B:5333:0x6563, B:5335:0x6567, B:5336:0x656f, B:5323:0x6503), top: B:5821:0x64fc }] */
    /* JADX WARN: Removed duplicated region for block: B:5330:0x6553 A[Catch: Exception -> 0x6575, TryCatch #4 {Exception -> 0x6575, blocks: (B:5320:0x64fc, B:5324:0x650c, B:5325:0x6544, B:5329:0x654f, B:5330:0x6553, B:5333:0x6563, B:5335:0x6567, B:5336:0x656f, B:5323:0x6503), top: B:5821:0x64fc }] */
    /* JADX WARN: Removed duplicated region for block: B:533:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:5343:0x657f  */
    /* JADX WARN: Removed duplicated region for block: B:5353:0x65a0  */
    /* JADX WARN: Removed duplicated region for block: B:5360:0x65bb  */
    /* JADX WARN: Removed duplicated region for block: B:5364:0x65cd  */
    /* JADX WARN: Removed duplicated region for block: B:5379:0x65f5  */
    /* JADX WARN: Removed duplicated region for block: B:5380:0x65f7  */
    /* JADX WARN: Removed duplicated region for block: B:5383:0x6615  */
    /* JADX WARN: Removed duplicated region for block: B:5384:0x6617  */
    /* JADX WARN: Removed duplicated region for block: B:5388:0x6624  */
    /* JADX WARN: Removed duplicated region for block: B:5407:0x667c  */
    /* JADX WARN: Removed duplicated region for block: B:5412:0x6698  */
    /* JADX WARN: Removed duplicated region for block: B:5413:0x669a  */
    /* JADX WARN: Removed duplicated region for block: B:5420:0x66a6  */
    /* JADX WARN: Removed duplicated region for block: B:5428:0x66c4  */
    /* JADX WARN: Removed duplicated region for block: B:5431:0x66ca  */
    /* JADX WARN: Removed duplicated region for block: B:5444:0x66e9  */
    /* JADX WARN: Removed duplicated region for block: B:5449:0x6702  */
    /* JADX WARN: Removed duplicated region for block: B:5464:0x6735  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x06c7  */
    /* JADX WARN: Removed duplicated region for block: B:5477:0x6770  */
    /* JADX WARN: Removed duplicated region for block: B:5483:0x6791  */
    /* JADX WARN: Removed duplicated region for block: B:5484:0x6797  */
    /* JADX WARN: Removed duplicated region for block: B:5494:0x67ce  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x06ed A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5563:0x685f  */
    /* JADX WARN: Removed duplicated region for block: B:5564:0x6861  */
    /* JADX WARN: Removed duplicated region for block: B:5571:0x6872  */
    /* JADX WARN: Removed duplicated region for block: B:5592:0x68a6  */
    /* JADX WARN: Removed duplicated region for block: B:5597:0x68b6  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x0703 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:5657:0x6965  */
    /* JADX WARN: Removed duplicated region for block: B:5685:0x69ad  */
    /* JADX WARN: Removed duplicated region for block: B:5692:0x69c2  */
    /* JADX WARN: Removed duplicated region for block: B:5703:0x69ea  */
    /* JADX WARN: Removed duplicated region for block: B:5704:0x69ed  */
    /* JADX WARN: Removed duplicated region for block: B:5709:0x6a04  */
    /* JADX WARN: Removed duplicated region for block: B:572:0x0727  */
    /* JADX WARN: Removed duplicated region for block: B:5764:0x6bae  */
    /* JADX WARN: Removed duplicated region for block: B:5773:0x6be7  */
    /* JADX WARN: Removed duplicated region for block: B:5774:0x6be8 A[Catch: Exception -> 0x6c4d, TryCatch #17 {Exception -> 0x6c4d, blocks: (B:5771:0x6bcd, B:5799:0x6c4a, B:5774:0x6be8, B:5780:0x6c02, B:5783:0x6c0b, B:5786:0x6c14, B:5789:0x6c1d, B:5792:0x6c2a, B:5795:0x6c39, B:5777:0x6bf5), top: B:5846:0x6bcd }] */
    /* JADX WARN: Removed duplicated region for block: B:577:0x0733 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:5791:0x6c29  */
    /* JADX WARN: Removed duplicated region for block: B:5792:0x6c2a A[Catch: Exception -> 0x6c4d, TryCatch #17 {Exception -> 0x6c4d, blocks: (B:5771:0x6bcd, B:5799:0x6c4a, B:5774:0x6be8, B:5780:0x6c02, B:5783:0x6c0b, B:5786:0x6c14, B:5789:0x6c1d, B:5792:0x6c2a, B:5795:0x6c39, B:5777:0x6bf5), top: B:5846:0x6bcd }] */
    /* JADX WARN: Removed duplicated region for block: B:5802:0x6c67  */
    /* JADX WARN: Removed duplicated region for block: B:5827:0x4e85 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5833:0x1020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0772  */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0774  */
    /* JADX WARN: Removed duplicated region for block: B:5865:0x4c56 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5870:0x4a97 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5878:0x021b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5880:0x0528 A[EDGE_INSN: B:5880:0x0528->B:456:0x0528 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:589:0x077f  */
    /* JADX WARN: Removed duplicated region for block: B:592:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:5938:0x1b6f A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:634:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:635:0x0895  */
    /* JADX WARN: Removed duplicated region for block: B:638:0x08a9  */
    /* JADX WARN: Removed duplicated region for block: B:643:0x08eb  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x08f7  */
    /* JADX WARN: Removed duplicated region for block: B:652:0x0901  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0908  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x094b  */
    /* JADX WARN: Removed duplicated region for block: B:854:0x0bac  */
    /* JADX WARN: Removed duplicated region for block: B:857:0x0bb5  */
    /* JADX WARN: Removed duplicated region for block: B:889:0x0c2d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:955:0x0cc7  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00f9  */
    /* JADX WARN: Type inference failed for: r0v1561, types: [org.telegram.ui.Components.SeekBar] */
    /* JADX WARN: Type inference failed for: r0v183, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v200, types: [org.telegram.ui.Components.RadialProgress2] */
    /* JADX WARN: Type inference failed for: r0v201, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r0v206, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r0v941, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r11v479 */
    /* JADX WARN: Type inference failed for: r11v480 */
    /* JADX WARN: Type inference failed for: r11v481 */
    /* JADX WARN: Type inference failed for: r11v482 */
    /* JADX WARN: Type inference failed for: r11v483 */
    /* JADX WARN: Type inference failed for: r11v64, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r12v289 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v40, types: [int] */
    /* JADX WARN: Type inference failed for: r12v50, types: [int] */
    /* JADX WARN: Type inference failed for: r12v51 */
    /* JADX WARN: Type inference failed for: r12v52, types: [int] */
    /* JADX WARN: Type inference failed for: r12v53, types: [int] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v377 */
    /* JADX WARN: Type inference failed for: r13v378 */
    /* JADX WARN: Type inference failed for: r13v394 */
    /* JADX WARN: Type inference failed for: r13v395 */
    /* JADX WARN: Type inference failed for: r13v413 */
    /* JADX WARN: Type inference failed for: r13v416 */
    /* JADX WARN: Type inference failed for: r13v417 */
    /* JADX WARN: Type inference failed for: r13v54 */
    /* JADX WARN: Type inference failed for: r13v89 */
    /* JADX WARN: Type inference failed for: r13v90 */
    /* JADX WARN: Type inference failed for: r1v478, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v481, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v483, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v487, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v512, types: [org.telegram.messenger.ImageReceiver] */
    /* JADX WARN: Type inference failed for: r1v657 */
    /* JADX WARN: Type inference failed for: r1v658, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v660 */
    /* JADX WARN: Type inference failed for: r2v358 */
    /* JADX WARN: Type inference failed for: r2v359, types: [int] */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v360, types: [int] */
    /* JADX WARN: Type inference failed for: r2v37, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v669, types: [org.telegram.tgnet.TLRPC$InputStickerSet] */
    /* JADX WARN: Type inference failed for: r2v939 */
    /* JADX WARN: Type inference failed for: r2v941 */
    /* JADX WARN: Type inference failed for: r2v942 */
    /* JADX WARN: Type inference failed for: r3v404 */
    /* JADX WARN: Type inference failed for: r3v405, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v408 */
    /* JADX WARN: Type inference failed for: r44v20, types: [android.text.TextPaint] */
    /* JADX WARN: Type inference failed for: r47v10 */
    /* JADX WARN: Type inference failed for: r47v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r47v12 */
    /* JADX WARN: Type inference failed for: r49v4 */
    /* JADX WARN: Type inference failed for: r49v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r49v6 */
    /* JADX WARN: Type inference failed for: r49v7 */
    /* JADX WARN: Type inference failed for: r49v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r49v9 */
    /* JADX WARN: Type inference failed for: r4v237 */
    /* JADX WARN: Type inference failed for: r4v238 */
    /* JADX WARN: Type inference failed for: r4v521 */
    /* JADX WARN: Type inference failed for: r5v88, types: [java.util.List, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r63v0 */
    /* JADX WARN: Type inference failed for: r63v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r63v2 */
    /* JADX WARN: Type inference failed for: r66v1 */
    /* JADX WARN: Type inference failed for: r66v3 */
    /* JADX WARN: Type inference failed for: r6v101 */
    /* JADX WARN: Type inference failed for: r6v15, types: [android.graphics.Canvas, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v47, types: [android.graphics.Bitmap, org.telegram.tgnet.TLRPC$Document, java.lang.Object, org.telegram.tgnet.TLRPC$PhotoSize, android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r6v52 */
    /* JADX WARN: Type inference failed for: r6v598, types: [org.telegram.messenger.WebFile, android.text.StaticLayout, java.lang.Long, org.telegram.ui.Components.LoadingDrawable, org.telegram.ui.Components.LinkPath, java.lang.String, org.telegram.ui.Components.QuoteHighlight] */
    /* JADX WARN: Type inference failed for: r6v599 */
    /* JADX WARN: Type inference failed for: r6v636 */
    /* JADX WARN: Type inference failed for: r6v638 */
    /* JADX WARN: Type inference failed for: r6v639 */
    /* JADX WARN: Type inference failed for: r6v640 */
    /* JADX WARN: Type inference failed for: r6v641 */
    /* JADX WARN: Type inference failed for: r7v112, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v139 */
    /* JADX WARN: Type inference failed for: r7v503 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageContent(org.telegram.messenger.MessageObject r69, org.telegram.messenger.MessageObject.GroupedMessages r70, boolean r71, boolean r72) {
        /*
            Method dump skipped, instructions count: 27796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.setMessageContent(org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject$GroupedMessages, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMessageContent$7(TLRPC$User tLRPC$User, int i, TLRPC$Chat tLRPC$Chat, long j) {
        if (tLRPC$User != null) {
            this.commentAvatarDrawables[i].setInfo(this.currentAccount, tLRPC$User);
            this.commentAvatarImages[i].setForUserOrChat(tLRPC$User, this.commentAvatarDrawables[i]);
        } else if (tLRPC$Chat != null) {
            this.commentAvatarDrawables[i].setInfo(this.currentAccount, tLRPC$Chat);
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
                FlagSecureReason flagSecureReason = new FlagSecureReason(window, new FlagSecureReason.FlagSecureCondition() { // from class: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda12
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
        return (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || (!tLRPC$Message.noforwards && !messageObject.isVoiceOnce() && !this.currentMessageObject.hasRevealedExtendedMedia())) ? false : true;
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
            drawable.setState(StateSet.NOTHING);
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
        this.giveawayResultsMessageCell.setButtonPressed(false);
        resetContactButtonsPressedState();
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
                    if (tLRPC$User.f1751id != 0) {
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
        Runnable runnable = this.invalidateCallback;
        if (runnable != null) {
            runnable.run();
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

    public void setInvalidateCallback(Runnable runnable) {
        this.invalidateCallback = runnable;
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        ChatMessageCellDelegate chatMessageCellDelegate;
        if (this.currentMessageObject == null) {
            return;
        }
        Runnable runnable = this.invalidateCallback;
        if (runnable != null) {
            runnable.run();
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
    public boolean isSeekBarDragAllowed() {
        MessageObject messageObject = this.currentMessageObject;
        return messageObject == null || !messageObject.isVoiceOnce();
    }

    @Override // org.telegram.p043ui.Components.SeekBar.SeekBarDelegate
    public boolean reverseWaveform() {
        MessageObject messageObject = this.currentMessageObject;
        return messageObject != null && messageObject.isVoiceOnce();
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

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b1, code lost:
        if (r3.voiceTranscriptionForce != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
        if (r0.getDuration() >= 60.0d) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c7, code lost:
        if (r7.useSeekBarWaveform != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00cf, code lost:
        if (r7.currentMessageObject.isRoundVideo() != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d1, code lost:
        r0 = r7.currentMessageObject.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d5, code lost:
        if (r0 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00dd, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r0) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaWebPage) != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00df, code lost:
        r0 = r7.currentMessageObject.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e5, code lost:
        if (r0 != null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e9, code lost:
        if (r0.ttl_seconds != 0) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateWaveform() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.updateWaveform():void");
    }

    private void updateSeekBarWaveformWidth(Canvas canvas) {
        int i;
        this.seekBarWaveformTranslateX = 0;
        int i2 = -AndroidUtilities.m107dp((this.hasLinkPreview ? 10 : 0) + 92);
        TransitionParams transitionParams = this.transitionParams;
        if (transitionParams.animateBackgroundBoundsInner && ((i = this.documentAttachType) == 3 || i == 7)) {
            int i3 = this.backgroundWidth;
            int i4 = (int) ((i3 - transitionParams.toDeltaLeft) + transitionParams.toDeltaRight);
            int i5 = (int) ((i3 - transitionParams.deltaLeft) + transitionParams.deltaRight);
            if (this.isRoundVideo && !this.drawBackground) {
                i5 = (int) (i5 + (getVideoTranscriptionProgress() * AndroidUtilities.m107dp(8)));
                i4 += AndroidUtilities.m107dp(8);
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (transitionParams2.toDeltaLeft == BitmapDescriptorFactory.HUE_RED && transitionParams2.toDeltaRight == BitmapDescriptorFactory.HUE_RED) {
                i4 = i5;
            }
            SeekBarWaveform seekBarWaveform = this.seekBarWaveform;
            if (seekBarWaveform != null) {
                if (transitionParams2.animateUseTranscribeButton) {
                    seekBarWaveform.setSize(((i5 + i2) - ((int) (AndroidUtilities.m107dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m107dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m107dp(30), i3 + i2 + (!this.useTranscribeButton ? -AndroidUtilities.m107dp(34) : 0), i4 + i2 + (this.useTranscribeButton ? -AndroidUtilities.m107dp(34) : 0));
                } else {
                    seekBarWaveform.setSize(((i5 + i2) - ((int) (AndroidUtilities.m107dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m107dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m107dp(30), (i3 + i2) - ((int) (AndroidUtilities.m107dp(34) * getUseTranscribeButtonProgress())), (i4 + i2) - ((int) (AndroidUtilities.m107dp(34) * getUseTranscribeButtonProgress())));
                }
            }
            SeekBar seekBar = this.seekBar;
            if (seekBar != null) {
                seekBar.setSize((i5 - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m107dp(34)))) - AndroidUtilities.m107dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 20 : 0)), AndroidUtilities.m107dp(30));
                return;
            }
            return;
        }
        SeekBarWaveform seekBarWaveform2 = this.seekBarWaveform;
        if (seekBarWaveform2 != null) {
            if (transitionParams.animateUseTranscribeButton) {
                seekBarWaveform2.setSize(((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m107dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m107dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m107dp(30), ((this.backgroundWidth + i2) + (!this.useTranscribeButton ? -AndroidUtilities.m107dp(34) : 0)) - AndroidUtilities.m107dp(this.hasLinkPreview ? 10 : 0), this.backgroundWidth + i2 + (this.useTranscribeButton ? -AndroidUtilities.m107dp(34) : 0));
            } else {
                seekBarWaveform2.setSize(((this.backgroundWidth + i2) - ((int) (AndroidUtilities.m107dp(34) * getUseTranscribeButtonProgress()))) - AndroidUtilities.m107dp(this.hasLinkPreview ? 10 : 0), AndroidUtilities.m107dp(30));
            }
        }
        SeekBar seekBar2 = this.seekBar;
        if (seekBar2 != null) {
            seekBar2.setSize((this.backgroundWidth - ((int) (getUseTranscribeButtonProgress() * AndroidUtilities.m107dp(34)))) - AndroidUtilities.m107dp((this.documentAttachType != 5 ? 72 : 65) + (this.hasLinkPreview ? 20 : 0)), AndroidUtilities.m107dp(30));
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
            this.widthBeforeNewTimeLine = (i3 - AndroidUtilities.m107dp(94)) - ((int) Math.ceil(Theme.chat_audioTimePaint.measureText("00:00")));
            this.availableTimeWidth = i3 - AndroidUtilities.m107dp(18);
            measureTime(messageObject);
            int m107dp = AndroidUtilities.m107dp(174) + this.timeWidth;
            if (!this.hasLinkPreview) {
                this.backgroundWidth = Math.min(i3, m107dp + ((int) Math.ceil(Theme.chat_audioTimePaint.measureText(AndroidUtilities.formatLongDuration((int) d)))));
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
            int m107dp2 = i3 - AndroidUtilities.m107dp(92);
            if (m107dp2 < 0) {
                m107dp2 = AndroidUtilities.m107dp(100);
            }
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicTitle().replace('\n', ' '), Theme.chat_audioTitlePaint, m107dp2 - AndroidUtilities.m107dp(12), TextUtils.TruncateAt.END), Theme.chat_audioTitlePaint, m107dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.songLayout = staticLayout;
            if (staticLayout.getLineCount() > 0) {
                this.songX = -((int) Math.ceil(this.songLayout.getLineLeft(0)));
            }
            StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(messageObject.getMusicAuthor().replace('\n', ' '), Theme.chat_audioPerformerPaint, m107dp2, TextUtils.TruncateAt.END), Theme.chat_audioPerformerPaint, m107dp2, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.performerLayout = staticLayout2;
            if (staticLayout2.getLineCount() > 0) {
                this.performerX = -((int) Math.ceil(this.performerLayout.getLineLeft(0)));
            }
            int m107dp3 = m107dp2 - AndroidUtilities.m107dp(30);
            TextPaint textPaint = Theme.chat_infoPaint;
            int min = Math.min(m107dp3, (int) Math.ceil(textPaint.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min;
            if (min < 0) {
                try {
                    this.infoWidth = AndroidUtilities.m107dp(10);
                } catch (Exception e) {
                    FileLog.m102e(e);
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
            this.widthBeforeNewTimeLine = (this.backgroundWidth - AndroidUtilities.m107dp(86)) - ceil;
            this.availableTimeWidth = this.backgroundWidth - AndroidUtilities.m107dp(28);
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
                i3 += AndroidUtilities.m107dp(30);
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
            int m107dp4 = i3 - AndroidUtilities.m107dp(30);
            TextPaint textPaint2 = Theme.chat_infoPaint;
            int min2 = Math.min(m107dp4, (int) Math.ceil(textPaint2.measureText("000.0 mm / " + AndroidUtilities.formatFileSize(this.documentAttach.size))));
            this.infoWidth = min2;
            CharSequence ellipsize = TextUtils.ellipsize(AndroidUtilities.formatFileSize(this.documentAttach.size) + " " + FileLoader.getDocumentExtension(this.documentAttach), Theme.chat_infoPaint, (float) min2, TextUtils.TruncateAt.END);
            try {
                if (this.infoWidth < 0) {
                    this.infoWidth = AndroidUtilities.m107dp(10);
                }
                this.infoLayout = new StaticLayout(ellipsize, Theme.chat_infoPaint, this.infoWidth + AndroidUtilities.m107dp(6), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } catch (Exception e2) {
                FileLog.m102e(e2);
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

    /* JADX WARN: Code restructure failed: missing block: B:47:0x007a, code lost:
        if (r0.isSmall == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0088, code lost:
        if (r0.isSmall == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008e, code lost:
        if (r8.isGiveawayOrGiveawayResults() != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void calcBackgroundWidth(int r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.calcBackgroundWidth(int, int, int):void");
    }

    public boolean setHighlightedText(String str) {
        return setHighlightedText(str, false, -1);
    }

    public boolean setHighlightedText(String str, boolean z, int i) {
        String str2;
        String str3;
        int i2;
        int i3;
        int i4 = 0;
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
            int findQuoteStart = MessageObject.findQuoteStart(str2, str3, i);
            i2 = str3.length();
            i3 = findQuoteStart;
        } else {
            int length = str2.length();
            int i5 = 0;
            i2 = -1;
            int i6 = -1;
            while (i5 < length) {
                int min = Math.min(str3.length(), length - i5);
                int i7 = i4;
                int i8 = i7;
                while (i7 < min) {
                    boolean z2 = str2.charAt(i5 + i7) == str3.charAt(i7);
                    if (z2) {
                        if (i8 != 0 || i5 == 0 || " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(str2.charAt(i5 - 1)) >= 0) {
                            i8++;
                        } else {
                            z2 = false;
                        }
                    }
                    if (!z2 || i7 == min - 1) {
                        if (i8 > 0 && i8 > i2) {
                            i6 = i5;
                            i2 = i8;
                        }
                        i5++;
                        i4 = 0;
                    } else {
                        i7++;
                    }
                }
                i5++;
                i4 = 0;
            }
            i3 = i6;
        }
        if (i3 == -1) {
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
            for (int i9 = i3 + i2; i9 < length2 && " !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\n".indexOf(str2.charAt(i9)) < 0; i9++) {
                i2++;
            }
        }
        this.highlightedQuote = z;
        int i10 = i3 + i2;
        if (z && this.currentMessagesGroup == null && this.groupedMessagesToSet == null) {
            QuoteHighlight quoteHighlight = this.quoteHighlight;
            if (quoteHighlight != null && quoteHighlight.f1933id == messageObject.getId()) {
                QuoteHighlight quoteHighlight2 = this.quoteHighlight;
                if (quoteHighlight2.start == i3 && quoteHighlight2.end == i10) {
                    return true;
                }
            }
            if (this.captionLayout != null) {
                ViewParent parent = getParent();
                int id = messageObject.getId();
                MessageObject.TextLayoutBlocks textLayoutBlocks = this.captionLayout;
                this.quoteHighlight = new QuoteHighlight(this, parent, id, textLayoutBlocks.textLayoutBlocks, i3, i10, textLayoutBlocks.textXOffset);
                return true;
            }
            this.quoteHighlight = new QuoteHighlight(this, getParent(), messageObject.getId(), messageObject.textLayoutBlocks, i3, i10, messageObject.textXOffset);
            return true;
        } else if (!TextUtils.isEmpty(this.currentCaption)) {
            MessageObject.TextLayoutBlocks textLayoutBlocks2 = this.captionLayout;
            if (textLayoutBlocks2 == null) {
                this.highlightCaptionToSetStart = i3;
                this.highlightCaptionToSetEnd = i10;
                return true;
            }
            highlight(i3, i10, textLayoutBlocks2.textLayoutBlocks);
            return true;
        } else {
            ArrayList<MessageObject.TextLayoutBlock> arrayList = messageObject.textLayoutBlocks;
            if (arrayList != null) {
                highlight(i3, i10, arrayList);
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
                    FileLog.m102e(e);
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
                                FileLog.m102e(e);
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
                            FileLog.m102e(e2);
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
            int m107dp = this.backgroundWidth - AndroidUtilities.m107dp(91);
            this.docTitleLayout = new StaticLayout(TextUtils.ellipsize(LocaleController.getString("AttachLiveLocation", C3632R.string.AttachLiveLocation), Theme.chat_locationTitlePaint, m107dp, TextUtils.TruncateAt.END), Theme.chat_locationTitlePaint, m107dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
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
        if (this.attachedToWindow && !this.frozen) {
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
            int m107dp = (groupedMessagePosition.flags & 2) == 0 ? 0 + AndroidUtilities.m107dp(4) : 0;
            return (groupedMessagePosition.flags & 1) == 0 ? m107dp + AndroidUtilities.m107dp(4) : m107dp;
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
                ReplyMessageLine replyMessageLine2 = this.contactLine;
                if (replyMessageLine2 != null) {
                    themedColor = replyMessageLine2.getColor();
                } else {
                    themedColor = getThemedColor(this.currentMessageObject.isOutOwner() ? Theme.key_chat_outPreviewInstantText : Theme.key_chat_inPreviewInstantText);
                }
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
                                        float m107dp = AndroidUtilities.m107dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i4 + 1] = m107dp;
                                        fArr[i4] = m107dp;
                                    } else if (i3 != 3 || !z) {
                                        if ((ChatMessageCell.this.mediaBackground || ChatMessageCell.this.pinnedBottom) && (i3 == 2 || i3 == 3)) {
                                            float[] fArr2 = ChatMessageCell.radii;
                                            int i5 = i3 * 2;
                                            float[] fArr3 = ChatMessageCell.radii;
                                            int i6 = i5 + 1;
                                            float m107dp2 = AndroidUtilities.m107dp(ChatMessageCell.this.pinnedBottom ? Math.min(5, SharedConfig.bubbleRadius) : SharedConfig.bubbleRadius);
                                            fArr3[i6] = m107dp2;
                                            fArr2[i5] = m107dp2;
                                        }
                                    } else {
                                        float[] fArr4 = ChatMessageCell.radii;
                                        int i7 = i3 * 2;
                                        float m107dp3 = AndroidUtilities.m107dp(SharedConfig.bubbleRadius);
                                        ChatMessageCell.radii[i7 + 1] = m107dp3;
                                        fArr4[i7] = m107dp3;
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
                                    this.path.moveTo(this.rect.left + AndroidUtilities.m107dp(6), this.rect.top);
                                    this.path.lineTo(this.rect.left + AndroidUtilities.m107dp(6), (this.rect.bottom - AndroidUtilities.m107dp(6)) - AndroidUtilities.m107dp(5));
                                    RectF rectF = AndroidUtilities.rectTmp;
                                    rectF.set(this.rect.left + AndroidUtilities.m107dp(-7), this.rect.bottom - AndroidUtilities.m107dp(23), this.rect.left + AndroidUtilities.m107dp(6), this.rect.bottom);
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
                        float m107dp4 = ChatMessageCell.this.selectorDrawableMaskType[i] == 0 ? AndroidUtilities.m107dp(6) : 0.0f;
                        if (ChatMessageCell.this.selectorDrawableMaskType[i] == 0) {
                            f = AndroidUtilities.m107dp(6);
                        }
                        canvas.drawRoundRect(rectF4, m107dp4, f, paint);
                        return;
                    }
                    canvas.drawCircle(this.rect.centerX(), this.rect.centerY(), AndroidUtilities.m107dp(ChatMessageCell.this.selectorDrawableMaskType[i] == 3 ? 16 : 20), paint);
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
        int measureText;
        if (Build.VERSION.SDK_INT >= 21 && this.drawInstantView) {
            createSelectorDrawable(0);
        }
        if (this.drawInstantView && this.instantViewLayout == null) {
            this.instantWidth = AndroidUtilities.m107dp(33);
            String str = this.instantViewButtonText;
            if (str == null) {
                int i = this.drawInstantViewType;
                if (i == 12) {
                    str = LocaleController.getString("OpenChannelPost", C3632R.string.OpenChannelPost);
                } else if (i == 1) {
                    str = LocaleController.getString("OpenChannel", C3632R.string.OpenChannel);
                } else if (i == 13) {
                    str = LocaleController.getString("SendMessage", C3632R.string.SendMessage).toUpperCase();
                } else if (i == 10) {
                    str = LocaleController.getString("OpenBot", C3632R.string.OpenBot);
                } else if (i == 2) {
                    str = LocaleController.getString("OpenGroup", C3632R.string.OpenGroup);
                } else if (i == 3) {
                    str = LocaleController.getString("OpenMessage", C3632R.string.OpenMessage);
                } else if (i == 5) {
                    str = LocaleController.getString("ViewContact", C3632R.string.ViewContact);
                } else if (i == 6) {
                    str = LocaleController.getString("OpenBackground", C3632R.string.OpenBackground);
                } else if (i == 7) {
                    str = LocaleController.getString("OpenTheme", C3632R.string.OpenTheme);
                } else if (i == 8) {
                    if (this.pollVoted || this.pollClosed) {
                        str = LocaleController.getString("PollViewResults", C3632R.string.PollViewResults);
                    } else {
                        str = LocaleController.getString("PollSubmitVotes", C3632R.string.PollSubmitVotes);
                    }
                } else if (i == 9 || i == 11) {
                    TLRPC$TL_webPage tLRPC$TL_webPage = (TLRPC$TL_webPage) MessageObject.getMedia(this.currentMessageObject.messageOwner).webpage;
                    if (tLRPC$TL_webPage != null && tLRPC$TL_webPage.url.contains("voicechat=")) {
                        str = LocaleController.getString("VoipGroupJoinAsSpeaker", C3632R.string.VoipGroupJoinAsSpeaker);
                    } else {
                        str = LocaleController.getString("VoipGroupJoinAsLinstener", C3632R.string.VoipGroupJoinAsLinstener);
                    }
                } else if (i == 14) {
                    str = LocaleController.getString("ViewChatList", C3632R.string.ViewChatList).toUpperCase();
                } else if (i == 15) {
                    str = LocaleController.getString(C3632R.string.BotWebAppInstantViewOpen).toUpperCase();
                } else if (i == 16) {
                    str = LocaleController.getString("OpenLink").toUpperCase();
                } else if (i == 17) {
                    str = LocaleController.getString("ViewStory").toUpperCase();
                } else if (i == 18) {
                    str = LocaleController.getString("BoostLinkButton", C3632R.string.BoostLinkButton);
                } else if (i == 19) {
                    str = LocaleController.getString("BoostingHowItWork", C3632R.string.BoostingHowItWork);
                } else if (i == 20) {
                    str = LocaleController.getString(C3632R.string.OpenGift);
                } else {
                    str = LocaleController.getString(C3632R.string.InstantView);
                }
            }
            if (this.currentMessageObject.isSponsored() && this.backgroundWidth < (measureText = (int) (Theme.chat_instantViewPaint.measureText(str) + AndroidUtilities.m107dp(75)))) {
                this.backgroundWidth = measureText;
            }
            int m107dp = this.backgroundWidth - AndroidUtilities.m107dp(75);
            StaticLayout staticLayout = new StaticLayout(TextUtils.ellipsize(str, Theme.chat_instantViewPaint, m107dp, TextUtils.TruncateAt.END), Theme.chat_instantViewPaint, m107dp + AndroidUtilities.m107dp(2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.instantViewLayout = staticLayout;
            int lineCount = staticLayout.getLineCount();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.instantViewLayoutWidth = lineCount > 0 ? this.instantViewLayout.getLineWidth(0) : 0.0f;
            if (this.instantViewLayout.getLineCount() > 0) {
                f = this.instantViewLayout.getLineLeft(0);
            }
            this.instantViewLayoutLeft = f;
            this.instantWidth = this.backgroundWidth - AndroidUtilities.m107dp(this.drawInstantViewType != 8 ? 34 : 13);
            int m107dp2 = this.totalHeight + AndroidUtilities.m107dp(46);
            this.totalHeight = m107dp2;
            if (this.currentMessageObject.type == 12) {
                this.totalHeight = m107dp2 + AndroidUtilities.m107dp(14);
            }
            if (this.currentMessageObject.isSponsored()) {
                this.totalHeight += AndroidUtilities.m107dp(2);
            }
            StaticLayout staticLayout2 = this.instantViewLayout;
            if (staticLayout2 == null || staticLayout2.getLineCount() <= 0) {
                return;
            }
            this.instantTextX = (((int) (this.instantWidth - Math.ceil(this.instantViewLayout.getLineWidth(0)))) / 2) + (this.drawInstantViewType == 0 ? AndroidUtilities.m107dp(8) : 0);
            int lineLeft = (int) this.instantViewLayout.getLineLeft(0);
            this.instantTextLeftX = lineLeft;
            this.instantTextX += -lineLeft;
        }
    }

    private void createContactButtons() {
        int i;
        if (Build.VERSION.SDK_INT >= 21) {
            createSelectorDrawable(0);
        }
        if (this.drawContact) {
            boolean z = this.drawContactView;
            if (this.drawContactSendMessage) {
                boolean z2 = (z ? 1 : 0) | true;
                i = (z ? 1 : 0) + 1;
                z = z2;
            } else {
                i = z ? 1 : 0;
            }
            if (this.drawContactAdd) {
                z = (z ? 1 : 0) | true;
                i++;
            }
            if (i == 0) {
                this.contactButtons = null;
                this.drawnContactButtonsFlag = 0;
                return;
            }
            this.totalHeight += AndroidUtilities.m107dp(60);
            if ((z != this.drawnContactButtonsFlag ? 1 : null) != null) {
                this.drawnContactButtonsFlag = 0;
                int m107dp = (this.backgroundWidth - AndroidUtilities.m107dp(75)) / i;
                int m107dp2 = (this.backgroundWidth - AndroidUtilities.m107dp(37)) / i;
                ArrayList<InstantViewButton> arrayList = this.contactButtons;
                if (arrayList == null) {
                    this.contactButtons = new ArrayList<>(i);
                } else {
                    arrayList.clear();
                }
                if (this.drawContactView) {
                    this.drawnContactButtonsFlag = 1 | this.drawnContactButtonsFlag;
                    this.contactButtons.add(createInstantViewButton(5, LocaleController.getString("ViewContact", C3632R.string.ViewContact), m107dp, m107dp2));
                }
                if (this.drawContactSendMessage) {
                    this.drawnContactButtonsFlag |= 2;
                    this.contactButtons.add(createInstantViewButton(30, LocaleController.getString("SharedContactMessage", C3632R.string.SharedContactMessage), m107dp, m107dp2));
                }
                if (this.drawContactAdd) {
                    this.drawnContactButtonsFlag |= 4;
                    this.contactButtons.add(createInstantViewButton(31, LocaleController.getString("SharedContactAdd", C3632R.string.SharedContactAdd), m107dp, m107dp2));
                }
            }
        }
    }

    private InstantViewButton createInstantViewButton(int i, String str, int i2, int i3) {
        InstantViewButton instantViewButton = new InstantViewButton();
        instantViewButton.type = i;
        instantViewButton.layout = new StaticLayout(TextUtils.ellipsize(str, Theme.chat_instantViewPaint, i2, TextUtils.TruncateAt.END), Theme.chat_instantViewPaint, i2 + AndroidUtilities.m107dp(2), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        instantViewButton.buttonWidth = i3;
        if (instantViewButton.layout.getLineCount() > 0) {
            instantViewButton.textX = ((float) (instantViewButton.buttonWidth - Math.ceil(instantViewButton.layout.getLineWidth(0)))) / 2.0f;
            InstantViewButton.access$4924(instantViewButton, (int) instantViewButton.layout.getLineLeft(0));
        }
        return instantViewButton;
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
        int boundsRight = isWidthAdaptive() ? getBoundsRight() - getBoundsLeft() : View.MeasureSpec.getSize(i);
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 == null || !messageObject3.isForwardHidden) {
            i3 = this.keyboardHeight + this.totalHeight;
        }
        setMeasuredDimension(boundsRight, i3);
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
            if (i < AndroidUtilities.m107dp(320)) {
                i = AndroidUtilities.m107dp(320);
            }
            return parentWidth - i;
        }
        return parentWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getExtraTextX() {
        int i = SharedConfig.bubbleRadius;
        if (i >= 15) {
            return AndroidUtilities.m107dp(2);
        }
        if (i >= 11) {
            return AndroidUtilities.m107dp(1);
        }
        return 0;
    }

    private int getExtraTimeX() {
        int i;
        if (!this.currentMessageObject.isOutOwner() && ((!this.mediaBackground || this.captionLayout != null) && (i = SharedConfig.bubbleRadius) > 11)) {
            return AndroidUtilities.m108dp((i - 11) / 1.5f);
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
        int m107dp;
        int m107dp2;
        MessageObject messageObject;
        int i7;
        int m107dp3;
        int i8;
        int i9;
        int m107dp4;
        int m107dp5;
        int m107dp6;
        int i10;
        int m107dp7;
        int i11;
        int i12;
        int m107dp8;
        int m107dp9;
        if (this.currentMessageObject == null) {
            return;
        }
        int measuredHeight = getMeasuredHeight() + (getMeasuredWidth() << 16);
        if (this.lastSize != measuredHeight || !this.wasLayout) {
            this.layoutWidth = getMeasuredWidth();
            this.layoutHeight = getMeasuredHeight() - this.substractBackgroundHeight;
            if (this.timeTextWidth < 0) {
                this.timeTextWidth = AndroidUtilities.m107dp(10);
            }
            if (this.currentTimeString != null) {
                this.timeLayout = new StaticLayout(this.currentTimeString, Theme.chat_timePaint, this.timeTextWidth + AndroidUtilities.m107dp(100), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            } else {
                this.timeLayout = null;
            }
            if (this.mediaBackground) {
                if (this.currentMessageObject.isOutOwner()) {
                    this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m108dp(42.0f);
                } else {
                    this.timeX = (this.backgroundWidth - AndroidUtilities.m107dp(4)) - this.timeWidth;
                    if (this.currentMessageObject.isAnyKindOfSticker()) {
                        this.timeX = Math.max(AndroidUtilities.m107dp(26), this.timeX);
                    }
                    if (this.isAvatarVisible && !isWidthAdaptive()) {
                        this.timeX += AndroidUtilities.m107dp(48);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                    if (groupedMessagePosition != null && (i5 = groupedMessagePosition.leftSpanOffset) != 0) {
                        this.timeX += (int) Math.ceil((i5 / 1000.0f) * getGroupPhotosWidth());
                    }
                    if (this.captionLayout != null && this.currentPosition != null) {
                        this.timeX += AndroidUtilities.m107dp(4);
                    }
                }
                if (SharedConfig.bubbleRadius >= 10 && this.captionLayout == null && (i6 = this.documentAttachType) != 7 && i6 != 6) {
                    this.timeX -= AndroidUtilities.m107dp(2);
                }
            } else if (this.currentMessageObject.isOutOwner()) {
                this.timeX = (this.layoutWidth - this.timeWidth) - AndroidUtilities.m108dp(38.5f);
            } else {
                this.timeX = (this.backgroundWidth - AndroidUtilities.m107dp(9)) - this.timeWidth;
                if (this.currentMessageObject.isAnyKindOfSticker()) {
                    this.timeX = Math.max(0, this.timeX);
                }
                if (this.isAvatarVisible && !isWidthAdaptive()) {
                    this.timeX += AndroidUtilities.m107dp(48);
                }
                if (shouldDrawTimeOnMedia()) {
                    this.timeX -= AndroidUtilities.m107dp(7);
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
                this.avatarImage.setImageCoords(AndroidUtilities.m107dp(this.currentMessageObject.isRepostPreview ? 15 : 6), this.avatarImage.getImageY(), AndroidUtilities.m107dp(this.currentMessageObject.isRepostPreview ? 36 : 42), AndroidUtilities.m107dp(this.currentMessageObject.isRepostPreview ? 36 : 42));
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
            this.textY = AndroidUtilities.m107dp(10) + this.namesOffset;
            if (this.currentMessageObject.isSponsored()) {
                this.linkPreviewY = this.textY + AndroidUtilities.m107dp(14);
            } else if (this.linkPreviewAbove) {
                this.linkPreviewY = this.textY + AndroidUtilities.m107dp(10);
                this.textY += this.linkPreviewHeight + AndroidUtilities.m107dp(13);
                if (this.drawInstantView && !this.hasInvoicePreview && !this.currentMessageObject.isGiveawayOrGiveawayResults()) {
                    this.textY += AndroidUtilities.m107dp(44);
                }
            } else {
                this.linkPreviewY = this.textY + this.currentMessageObject.textHeight + AndroidUtilities.m107dp(10);
            }
        }
        if (this.isRoundVideo) {
            updatePlayingMessageProgress();
        }
        int i14 = this.documentAttachType;
        if (i14 == 3 || i14 == 7) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(57);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(67);
            } else if (needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m107dp(114);
                this.buttonX = AndroidUtilities.m107dp(71);
                this.timeAudioX = AndroidUtilities.m107dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m107dp(66);
                this.buttonX = AndroidUtilities.m107dp(23);
                this.timeAudioX = AndroidUtilities.m107dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m107dp(10);
                this.buttonX += AndroidUtilities.m107dp(10);
                this.timeAudioX += AndroidUtilities.m107dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m107dp(13) + this.namesOffset + this.mediaOffsetY;
            int m107dp10 = AndroidUtilities.m107dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m107dp10;
            RadialProgress2 radialProgress2 = this.radialProgress;
            int i15 = this.buttonX;
            radialProgress2.setProgressRect(i15, m107dp10, AndroidUtilities.m107dp(44) + i15, this.buttonY + AndroidUtilities.m107dp(44));
            updatePlayingMessageProgress();
            if (this.documentAttachType == 7) {
                MessageObject messageObject2 = this.currentMessageObject;
                if (messageObject2.type == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                    if (this.hasGamePreview) {
                        i7 = this.unmovedTextX - AndroidUtilities.m107dp(10);
                    } else {
                        if (this.hasInvoicePreview) {
                            i9 = this.unmovedTextX;
                            m107dp4 = AndroidUtilities.m107dp(1);
                        } else {
                            i9 = this.unmovedTextX;
                            m107dp4 = AndroidUtilities.m107dp(1);
                        }
                        i7 = i9 + m107dp4;
                    }
                    if (this.isSmallImage) {
                        m107dp = i7 + this.backgroundWidth;
                        m107dp2 = AndroidUtilities.m107dp(81);
                        m107dp -= m107dp2;
                    } else {
                        m107dp3 = this.hasInvoicePreview ? -AndroidUtilities.m108dp(6.3f) : AndroidUtilities.m107dp(10);
                        m107dp = i7 + m107dp3;
                    }
                } else {
                    if (messageObject2.isOutOwner()) {
                        if (this.mediaBackground) {
                            m107dp = this.layoutWidth - this.backgroundWidth;
                            m107dp2 = AndroidUtilities.m107dp(3);
                        } else {
                            i7 = this.layoutWidth - this.backgroundWidth;
                            m107dp3 = AndroidUtilities.m107dp(6);
                            m107dp = i7 + m107dp3;
                        }
                    } else {
                        if ((this.isChat || ((messageObject = this.currentMessageObject) != null && messageObject.forceAvatar)) && this.isAvatarVisible && (!this.isPlayingRound || this.currentMessageObject.isVoiceTranscriptionOpen())) {
                            m107dp = AndroidUtilities.m107dp(63);
                        } else {
                            m107dp = AndroidUtilities.m107dp(15);
                        }
                        MessageObject.GroupedMessagePosition groupedMessagePosition2 = this.currentPosition;
                        if (groupedMessagePosition2 != null && !groupedMessagePosition2.edge) {
                            m107dp2 = AndroidUtilities.m107dp(10);
                        }
                    }
                    m107dp -= m107dp2;
                }
                MessageObject.GroupedMessagePosition groupedMessagePosition3 = this.currentPosition;
                if (groupedMessagePosition3 != null) {
                    if ((groupedMessagePosition3.flags & 1) == 0) {
                        m107dp -= AndroidUtilities.m107dp(2);
                    }
                    if (this.currentPosition.leftSpanOffset != 0) {
                        m107dp += (int) Math.ceil((i8 / 1000.0f) * getGroupPhotosWidth());
                    }
                }
                if (this.currentMessageObject.type != 0) {
                    m107dp -= AndroidUtilities.m107dp(2);
                }
                if (this.currentMessageObject.isVoiceTranscriptionOpen()) {
                    m107dp += AndroidUtilities.m107dp(10);
                }
                TransitionParams transitionParams = this.transitionParams;
                if (!transitionParams.imageChangeBoundsTransition || transitionParams.updatePhotoImageX) {
                    transitionParams.updatePhotoImageX = false;
                    ImageReceiver imageReceiver = this.photoImage;
                    imageReceiver.setImageCoords(m107dp, this.currentMessageObject.type != 5 ? this.linkPreviewY : imageReceiver.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
                }
            }
        } else if (i14 == 5) {
            if (this.currentMessageObject.isOutOwner()) {
                this.seekBarX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(56);
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(14);
                this.timeAudioX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(67);
            } else if (needDrawAvatar()) {
                this.seekBarX = AndroidUtilities.m107dp(113);
                this.buttonX = AndroidUtilities.m107dp(71);
                this.timeAudioX = AndroidUtilities.m107dp(124);
            } else {
                this.seekBarX = AndroidUtilities.m107dp(65);
                this.buttonX = AndroidUtilities.m107dp(23);
                this.timeAudioX = AndroidUtilities.m107dp(76);
            }
            if (this.hasLinkPreview) {
                this.seekBarX += AndroidUtilities.m107dp(10);
                this.buttonX += AndroidUtilities.m107dp(10);
                this.timeAudioX += AndroidUtilities.m107dp(10);
            }
            updateSeekBarWaveformWidth(null);
            this.seekBarY = AndroidUtilities.m107dp(29) + this.namesOffset + this.mediaOffsetY;
            int m107dp11 = AndroidUtilities.m107dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m107dp11;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i16 = this.buttonX;
            radialProgress22.setProgressRect(i16, m107dp11, AndroidUtilities.m107dp(44) + i16, this.buttonY + AndroidUtilities.m107dp(44));
            updatePlayingMessageProgress();
        } else if (i14 == 1 && !this.drawPhotoImage) {
            if (this.currentMessageObject.isOutOwner()) {
                this.buttonX = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(14);
            } else if (needDrawAvatar()) {
                this.buttonX = AndroidUtilities.m107dp(71);
            } else {
                this.buttonX = AndroidUtilities.m107dp(23);
            }
            if (this.hasLinkPreview) {
                this.buttonX += AndroidUtilities.m107dp(10);
            }
            int m107dp12 = AndroidUtilities.m107dp(13) + this.namesOffset + this.mediaOffsetY;
            this.buttonY = m107dp12;
            RadialProgress2 radialProgress23 = this.radialProgress;
            int i17 = this.buttonX;
            radialProgress23.setProgressRect(i17, m107dp12, AndroidUtilities.m107dp(44) + i17, this.buttonY + AndroidUtilities.m107dp(44));
            this.photoImage.setImageCoords(this.buttonX - AndroidUtilities.m107dp(10), this.buttonY - AndroidUtilities.m107dp(10), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
        } else {
            MessageObject messageObject3 = this.currentMessageObject;
            int i18 = messageObject3.type;
            if (i18 == 12) {
                if (messageObject3.isOutOwner()) {
                    m107dp9 = (this.layoutWidth - this.backgroundWidth) + AndroidUtilities.m107dp(26);
                } else if (needDrawAvatar()) {
                    m107dp9 = AndroidUtilities.m107dp(84);
                } else {
                    m107dp9 = AndroidUtilities.m107dp(35);
                }
                this.photoImage.setImageCoords(m107dp9, AndroidUtilities.m107dp(24) + this.namesOffset, AndroidUtilities.m107dp(46), AndroidUtilities.m107dp(46));
                return;
            }
            if (i18 == 0 && (this.hasLinkPreview || this.hasGamePreview || this.hasInvoicePreview)) {
                if (this.hasGamePreview) {
                    i10 = this.unmovedTextX - AndroidUtilities.m107dp(10);
                } else {
                    if (this.hasInvoicePreview) {
                        i12 = this.unmovedTextX;
                        m107dp8 = AndroidUtilities.m107dp(1);
                    } else {
                        i12 = this.unmovedTextX;
                        m107dp8 = AndroidUtilities.m107dp(1);
                    }
                    i10 = i12 + m107dp8;
                }
                if (this.isSmallImage) {
                    m107dp5 = i10 + this.backgroundWidth;
                    m107dp6 = AndroidUtilities.m107dp(81);
                    m107dp5 -= m107dp6;
                } else {
                    m107dp7 = this.hasInvoicePreview ? -AndroidUtilities.m108dp(6.3f) : AndroidUtilities.m107dp(10);
                    m107dp5 = i10 + m107dp7;
                }
            } else {
                if (messageObject3.isOutOwner()) {
                    if (this.mediaBackground) {
                        m107dp5 = this.layoutWidth - this.backgroundWidth;
                        m107dp6 = AndroidUtilities.m107dp(3);
                    } else {
                        i10 = this.layoutWidth - this.backgroundWidth;
                        m107dp7 = AndroidUtilities.m107dp(6);
                        m107dp5 = i10 + m107dp7;
                    }
                } else {
                    if ((this.isChat || this.currentMessageObject.isRepostPreview) && this.isAvatarVisible && !this.isPlayingRound) {
                        m107dp5 = AndroidUtilities.m107dp(63);
                    } else {
                        m107dp5 = AndroidUtilities.m107dp(15);
                    }
                    MessageObject.GroupedMessagePosition groupedMessagePosition4 = this.currentPosition;
                    if (groupedMessagePosition4 != null && !groupedMessagePosition4.edge) {
                        m107dp6 = AndroidUtilities.m107dp(10);
                    }
                }
                m107dp5 -= m107dp6;
            }
            MessageObject.GroupedMessagePosition groupedMessagePosition5 = this.currentPosition;
            if (groupedMessagePosition5 != null) {
                if ((groupedMessagePosition5.flags & 1) == 0) {
                    m107dp5 -= AndroidUtilities.m107dp(2);
                }
                if (this.currentPosition.leftSpanOffset != 0) {
                    m107dp5 += (int) Math.ceil((i11 / 1000.0f) * getGroupPhotosWidth());
                }
            }
            if (this.currentMessageObject.type != 0) {
                m107dp5 -= AndroidUtilities.m107dp(2);
            }
            if (this.drawInstantViewType == 17) {
                m107dp5 = (int) (m107dp5 + AndroidUtilities.m107dp(10) + ((this.instantWidth - this.photoImage.getImageWidth()) / 2.0f));
            }
            TransitionParams transitionParams2 = this.transitionParams;
            if (!transitionParams2.imageChangeBoundsTransition || transitionParams2.updatePhotoImageX) {
                transitionParams2.updatePhotoImageX = false;
                ImageReceiver imageReceiver2 = this.photoImage;
                imageReceiver2.setImageCoords(m107dp5, imageReceiver2.getImageY(), this.photoImage.getImageWidth(), this.photoImage.getImageHeight());
            }
            this.buttonX = (int) (m107dp5 + ((this.photoImage.getImageWidth() - AndroidUtilities.m107dp(48)) / 2.0f));
            int imageY = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m107dp(48)) / 2.0f));
            this.buttonY = imageY;
            RadialProgress2 radialProgress24 = this.radialProgress;
            int i19 = this.buttonX;
            radialProgress24.setProgressRect(i19, imageY, AndroidUtilities.m107dp(48) + i19, this.buttonY + AndroidUtilities.m107dp(48));
            this.deleteProgressRect.set(this.buttonX + AndroidUtilities.m107dp(5), this.buttonY + AndroidUtilities.m107dp(5), this.buttonX + AndroidUtilities.m107dp(43), this.buttonY + AndroidUtilities.m107dp(43));
            int i20 = this.documentAttachType;
            if (i20 == 4 || i20 == 2) {
                this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m107dp(8));
                int imageY2 = (int) (this.photoImage.getImageY() + AndroidUtilities.m107dp(8));
                this.videoButtonY = imageY2;
                RadialProgress2 radialProgress25 = this.videoRadialProgress;
                int i21 = this.videoButtonX;
                radialProgress25.setProgressRect(i21, imageY2, AndroidUtilities.m107dp(24) + i21, this.videoButtonY + AndroidUtilities.m107dp(24));
            }
        }
    }

    public boolean needDelayRoundProgressDraw() {
        MessageObject messageObject;
        int i = this.documentAttachType;
        return (i == 7 || i == 4) && (messageObject = this.currentMessageObject) != null && messageObject.type != 5 && MediaController.getInstance().isPlayingMessage(this.currentMessageObject);
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

    /* JADX WARN: Removed duplicated region for block: B:221:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x08c9  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0921  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x092d  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x09bf  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x09c5  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x09de  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x09e1  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0a0f  */
    /* JADX WARN: Removed duplicated region for block: B:739:0x1046  */
    /* JADX WARN: Removed duplicated region for block: B:740:0x1049  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x1065  */
    /* JADX WARN: Removed duplicated region for block: B:744:0x1068  */
    /* JADX WARN: Removed duplicated region for block: B:747:0x108d  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x1095  */
    /* JADX WARN: Removed duplicated region for block: B:751:0x10cb  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x1116  */
    /* JADX WARN: Removed duplicated region for block: B:763:0x111f  */
    /* JADX WARN: Removed duplicated region for block: B:764:0x112b  */
    /* JADX WARN: Removed duplicated region for block: B:767:0x113a  */
    /* JADX WARN: Removed duplicated region for block: B:771:0x1197  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawContent(final android.graphics.Canvas r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 5873
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawContent(android.graphics.Canvas, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawContent$10(Canvas canvas) {
        this.radialProgress.draw(canvas);
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
                ChatMessageCell.this.lambda$startRevealMedia$11(valueAnimator);
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
    public /* synthetic */ void lambda$startRevealMedia$11(ValueAnimator valueAnimator) {
        this.mediaSpoilerRevealProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void drawBlurredPhoto(Canvas canvas) {
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
        drawBlurredPhotoParticles(canvas);
        canvas.restore();
    }

    public void drawBlurredPhotoParticles(Canvas canvas) {
        if (this.mediaSpoilerEffect2 != null) {
            canvas.translate(this.photoImage.getImageX(), this.photoImage.getImageY());
            this.mediaSpoilerEffect2.draw(canvas, this, (int) this.photoImage.getImageWidth(), (int) this.photoImage.getImageHeight(), this.photoImage.getAlpha(), this.drawingToBitmap);
            return;
        }
        this.mediaSpoilerEffect.setColor(ColorUtils.setAlphaComponent(-1, (int) (Color.alpha(-1) * 0.325f * this.photoImage.getAlpha())));
        this.mediaSpoilerEffect.setBounds((int) this.photoImage.getImageX(), (int) this.photoImage.getImageY(), (int) this.photoImage.getImageX2(), (int) this.photoImage.getImageY2());
        this.mediaSpoilerEffect.draw(canvas);
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
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        if ((r1 & 1) != 0) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateReactionLayoutPosition() {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.updateReactionLayoutPosition():void");
    }

    public void drawVoiceOnce(Canvas canvas, float f, Runnable runnable) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.isVoiceOnce()) {
            float centerX = this.radialProgress.progressRect.centerX() + (((float) Math.cos((AndroidUtilities.lerp(190, 45, f) / 180.0f) * 3.141592653589793d)) * AndroidUtilities.m108dp(22.6274f));
            float centerY = this.radialProgress.progressRect.centerY() + (((float) Math.sin((AndroidUtilities.lerp(190, 45, f) / 180.0f) * 3.141592653589793d)) * AndroidUtilities.m108dp(22.6274f));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.radialProgress.progressRect);
            rectF.inset(-AndroidUtilities.m107dp(1), -AndroidUtilities.m107dp(1));
            canvas.saveLayerAlpha(rectF, 255, 31);
            this.radialProgress.setBackgroundDrawable(isDrawSelectionBackground() ? this.currentBackgroundSelectedDrawable : this.currentBackgroundDrawable);
            this.radialProgress.iconScale = f;
            runnable.run();
            if (this.onceClearPaint == null) {
                Paint paint = new Paint(1);
                this.onceClearPaint = paint;
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            if (f < 1.0f) {
                canvas.save();
                float f2 = 1.0f - f;
                float f3 = 0.7f * f2;
                float centerX2 = this.radialProgress.progressRect.centerX();
                RectF rectF2 = this.radialProgress.progressRect;
                canvas.scale(f3, f3, centerX2, AndroidUtilities.lerp(rectF2.top, rectF2.bottom, 0.5f));
                if (this.onceFire == null) {
                    RLottieDrawable rLottieDrawable = new RLottieDrawable(C3632R.raw.fire_once, "fire_once", AndroidUtilities.m107dp(32), AndroidUtilities.m107dp(32), true, null);
                    this.onceFire = rLottieDrawable;
                    rLottieDrawable.setMasterParent(this);
                    this.onceFire.setAllowDecodeSingleFrame(true);
                    this.onceFire.setAutoRepeat(1);
                    this.onceFire.start();
                    this.onceFire.scaleByCanvas = true;
                }
                RLottieDrawable rLottieDrawable2 = this.onceFire;
                RectF rectF3 = this.radialProgress.progressRect;
                rLottieDrawable2.setBounds((int) rectF3.left, (int) rectF3.top, (int) rectF3.right, (int) rectF3.bottom);
                if (this.onceRadialPaint == null) {
                    this.onceRadialPaint = new Paint(1);
                }
                if (this.onceRadialCutPaint == null) {
                    Paint paint2 = new Paint(1);
                    this.onceRadialCutPaint = paint2;
                    paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
                }
                if (this.onceRadialStrokePaint == null) {
                    Paint paint3 = new Paint(1);
                    this.onceRadialStrokePaint = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                RadialProgress2 radialProgress2 = this.radialProgress;
                int i = radialProgress2.iconColorKey;
                int themedColor = i >= 0 ? getThemedColor(i) : radialProgress2.iconColor;
                this.onceRadialPaint.setColor(themedColor);
                this.onceRadialStrokePaint.setColor(themedColor);
                this.radialProgress.mediaActionDrawable.applyShaderMatrix(false);
                this.onceRadialPaint.setShader(this.radialProgress.mediaActionDrawable.paint2.getShader());
                this.onceRadialStrokePaint.setShader(this.radialProgress.mediaActionDrawable.paint2.getShader());
                rectF.set(this.onceFire.getBounds());
                canvas.saveLayerAlpha(rectF, 255, 31);
                rectF.inset(1.0f, 1.0f);
                canvas.drawRect(rectF, this.onceRadialPaint);
                this.onceFire.draw(canvas, this.onceRadialCutPaint);
                canvas.restore();
                canvas.restore();
                this.onceRadialStrokePaint.setAlpha((int) (255.0f * f2));
                this.onceRadialStrokePaint.setStrokeWidth(AndroidUtilities.m108dp(1.66f));
                this.rect.set(this.radialProgress.progressRect);
                this.rect.inset(AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(3));
                canvas.drawArc(this.rect, -90.0f, (1.0f - this.seekBarWaveform.explodeProgress) * (-360.0f), false, this.onceRadialStrokePaint);
                if (this.timerParticles == null) {
                    this.timerParticles = new TimerParticles();
                }
                this.timerParticles.draw(canvas, this.onceRadialStrokePaint, this.rect, (1.0f - this.seekBarWaveform.explodeProgress) * (-360.0f), f2);
            } else {
                RLottieDrawable rLottieDrawable3 = this.onceFire;
                if (rLottieDrawable3 != null) {
                    rLottieDrawable3.recycle(true);
                    this.onceFire = null;
                    if (this.timerParticles != null) {
                        this.timerParticles = null;
                    }
                }
            }
            canvas.drawCircle(centerX, centerY, AndroidUtilities.m108dp((f * 1.5f) + 10.0f) * f, this.onceClearPaint);
            canvas.restore();
            if (this.oncePeriod == null) {
                CaptionContainerView.PeriodDrawable periodDrawable = new CaptionContainerView.PeriodDrawable(3);
                this.oncePeriod = periodDrawable;
                periodDrawable.updateColors(-1, 0, 0);
                CaptionContainerView.PeriodDrawable periodDrawable2 = this.oncePeriod;
                periodDrawable2.diameterDp = 14.0f;
                periodDrawable2.setTextSize(10.0f);
                this.oncePeriod.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.5f));
                this.oncePeriod.setValue(1, false, false);
                this.oncePeriod.textOffsetX = -AndroidUtilities.dpf2(0.33f);
                this.oncePeriod.textOffsetY = AndroidUtilities.dpf2(0.33f);
            }
            CaptionContainerView.PeriodDrawable periodDrawable3 = this.oncePeriod;
            periodDrawable3.diameterDp = f * 14.0f;
            periodDrawable3.setTextSize(f * 10.0f);
            canvas.saveLayerAlpha(centerX - AndroidUtilities.m107dp(10), centerY - AndroidUtilities.m107dp(10), centerX + AndroidUtilities.m107dp(10), centerY + AndroidUtilities.m107dp(10), 255, 31);
            canvas.drawCircle(centerX, centerY, AndroidUtilities.m107dp(10) * f, this.radialProgress.circlePaint);
            this.oncePeriod.setClear(AndroidUtilities.computePerceivedBrightness(this.radialProgress.circlePaint.getColor()) > 0.8f);
            this.oncePeriod.setCenterXY(centerX, centerY);
            this.oncePeriod.draw(canvas, f);
            canvas.restore();
            return;
        }
        runnable.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:317:0x0835  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0855  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0878  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x08f6  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0970  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0a94  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0aa5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0aa9  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0ab9  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0ad4  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0be6  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0c1d  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0c42  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0c84  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0d21  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0dac  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0e08  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0e15  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0e62  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawLinkPreview(android.graphics.Canvas r49, float r50) {
        /*
            Method dump skipped, instructions count: 4658
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
        MessageObject messageObject;
        return (this.currentMessagesGroup == null || (this.currentPosition.flags & 4) != 0) && !this.hasLinkPreview && ((messageObject = this.currentMessageObject) == null || !messageObject.isRepostPreview);
    }

    private void drawContact(Canvas canvas) {
        boolean z;
        boolean z2;
        float f;
        if (this.contactLine == null) {
            this.contactLine = new ReplyMessageLine(this);
        }
        int check = this.contactLine.check(this.currentMessageObject, this.currentUser, this.currentChat, this.resourcesProvider, 4);
        if (this.contactBounce == null) {
            this.contactBounce = new ButtonBounce(this, 2.0f, 2.0f);
        }
        int imageX = (int) (this.photoImage.getImageX() - AndroidUtilities.m107dp(13));
        int m107dp = this.layoutHeight - AndroidUtilities.m107dp(62);
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (!reactionsLayoutInBubble.isEmpty && !reactionsLayoutInBubble.isSmall) {
            m107dp -= reactionsLayoutInBubble.totalHeight;
        }
        if (this.drawCommentButton) {
            m107dp -= AndroidUtilities.m108dp(shouldDrawTimeOnMedia() ? 39.3f : 41.0f);
        }
        int i = m107dp;
        if (this.contactRect == null) {
            this.contactRect = new RectF();
        }
        int backgroundDrawableRight = (getBackgroundDrawableRight() - (AndroidUtilities.m107dp(10) + ((!this.currentMessageObject.isOutOwner() || this.mediaBackground || this.drawPinnedBottom) ? 0 : AndroidUtilities.m107dp(6)))) - getExtraTextX();
        this.contactRect.set(imageX, this.photoImage.getImageY() - AndroidUtilities.m107dp(9), backgroundDrawableRight, AndroidUtilities.m108dp(38.0f) + i);
        float scale = this.contactBounce.getScale(0.0125f);
        boolean z3 = scale != 1.0f;
        if (z3) {
            canvas.save();
            canvas.scale(scale, scale, this.contactRect.centerX(), this.contactRect.centerY());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            Drawable[] drawableArr = this.selectorDrawable;
            if (drawableArr[0] != null) {
                this.selectorDrawableMaskType[0] = 0;
                drawableArr[0].setBounds(imageX, (int) (this.photoImage.getImageY() - AndroidUtilities.m107dp(9)), backgroundDrawableRight, AndroidUtilities.m108dp(38.0f) + i);
                this.selectorDrawable[0].draw(canvas);
            }
        }
        float floor = (float) Math.floor(SharedConfig.bubbleRadius / 3.0f);
        int i2 = (int) floor;
        this.contactLine.drawBackground(canvas, this.contactRect, floor, floor, floor, 1.0f);
        this.contactLine.drawLine(canvas, this.contactRect, 1.0f);
        Theme.chat_contactNamePaint.setColor(check);
        Theme.chat_contactPhonePaint.setColor(getThemedColor(Theme.key_chat_inContactPhoneSelectedText));
        if (this.currentMessageObject.isOutOwner()) {
            Theme.chat_contactPhonePaint.setColor(getThemedColor(Theme.key_chat_messageTextOut));
        } else {
            Theme.chat_contactPhonePaint.setColor(getThemedColor(Theme.key_chat_messageTextIn));
        }
        if (this.titleLayout != null) {
            canvas.save();
            canvas.translate(this.photoImage.getImageX() + this.photoImage.getImageWidth() + AndroidUtilities.m107dp(9), AndroidUtilities.m107dp(27) + this.namesOffset);
            this.titleLayout.draw(canvas);
            canvas.restore();
        }
        if (this.docTitleLayout != null) {
            canvas.save();
            canvas.translate(this.photoImage.getImageX() + this.photoImage.getImageWidth() + AndroidUtilities.m107dp(9), AndroidUtilities.m107dp(50) + this.namesOffset);
            this.docTitleLayout.draw(canvas);
            canvas.restore();
        }
        ArrayList<InstantViewButton> arrayList = this.contactButtons;
        if (arrayList != null && arrayList.size() > 0) {
            Theme.chat_instantViewPaint.setColor(check);
            Theme.chat_instantViewButtonPaint.setColor(Theme.multAlpha(check, 0.1f));
            int alpha = Theme.chat_instantViewPaint.getAlpha();
            Theme.chat_instantViewPaint.setAlpha((int) (alpha * 0.18f));
            canvas.drawRect(AndroidUtilities.m107dp(10) + this.contactRect.left, AndroidUtilities.m107dp(2) + i, this.contactRect.right - AndroidUtilities.m107dp(7), AndroidUtilities.m107dp(2) + i + Math.max(1, AndroidUtilities.m108dp(0.66f)), Theme.chat_instantViewPaint);
            Theme.chat_instantViewPaint.setAlpha(alpha);
            int m107dp2 = i + AndroidUtilities.m107dp(2);
            int m107dp3 = imageX + AndroidUtilities.m107dp(3);
            ArrayList<InstantViewButton> arrayList2 = this.contactButtons;
            boolean z4 = arrayList2 != null && arrayList2.size() > 1;
            int backgroundColor = this.contactLine.getBackgroundColor();
            int i3 = 0;
            while (i3 < this.contactButtons.size()) {
                InstantViewButton instantViewButton = this.contactButtons.get(i3);
                float f2 = m107dp3;
                instantViewButton.rect.set(f2, m107dp2, instantViewButton.buttonWidth + m107dp3, AndroidUtilities.m107dp(36) + m107dp2);
                if (z4 && instantViewButton.selectorDrawable == null) {
                    this.linkPreviewSelectorColor = backgroundColor;
                    z = false;
                    instantViewButton.selectorDrawable = Theme.createRadSelectorDrawable(backgroundColor, 0, 0, i3 == this.contactButtons.size() - 1 ? i2 : 0, 0);
                } else {
                    z = false;
                }
                if (instantViewButton.selectorDrawable != null) {
                    instantViewButton.selectorDrawable.setBounds(m107dp3, m107dp2, instantViewButton.buttonWidth + m107dp3, AndroidUtilities.m107dp(36) + m107dp2);
                    instantViewButton.selectorDrawable.draw(canvas);
                }
                if (z3 || instantViewButton.buttonBounce == null) {
                    z2 = z;
                    f = 1.0f;
                } else {
                    f = instantViewButton.buttonBounce.getScale(0.02f);
                    z2 = f != 1.0f ? true : z;
                }
                if (z2) {
                    canvas.save();
                    canvas.scale(f, f, instantViewButton.rect.centerX(), instantViewButton.rect.centerY());
                }
                if (instantViewButton.layout != null) {
                    canvas.save();
                    canvas.translate(f2 + instantViewButton.textX, AndroidUtilities.m108dp(10.5f) + m107dp2);
                    instantViewButton.layout.draw(canvas);
                    canvas.restore();
                }
                if (z2) {
                    canvas.restore();
                }
                m107dp3 += instantViewButton.buttonWidth;
                i3++;
            }
        }
        if (z3) {
            canvas.restore();
        }
    }

    private void drawBotButtons(Canvas canvas, ArrayList<BotButton> arrayList, int i) {
        int m107dp;
        Drawable themedDrawable;
        ChatMessageCellDelegate chatMessageCellDelegate;
        MessageObject messageObject = this.currentMessageObject;
        char c = 7;
        int i2 = 10;
        if (messageObject != null && messageObject.isOutOwner()) {
            m107dp = (getMeasuredWidth() - this.widthForButtons) - AndroidUtilities.m107dp(10);
        } else {
            m107dp = this.backgroundDrawableLeft + AndroidUtilities.m107dp((this.mediaBackground || this.drawPinnedBottom) ? 1 : 7);
        }
        int i3 = 2;
        float m107dp2 = (this.layoutHeight - AndroidUtilities.m107dp(2)) + this.transitionParams.deltaBottom;
        float f = 0.0f;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            BotButton botButton = arrayList.get(i4);
            float f2 = botButton.f1798y + botButton.height;
            if (f2 > f) {
                f = f2;
            }
        }
        this.rect.set(BitmapDescriptorFactory.HUE_RED, m107dp2, getMeasuredWidth(), f + m107dp2);
        if (i != 255) {
            canvas.saveLayerAlpha(this.rect, i, 31);
        } else {
            canvas.save();
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            BotButton botButton2 = arrayList.get(i5);
            float m107dp3 = ((botButton2.f1798y + this.layoutHeight) - AndroidUtilities.m107dp(i3)) + this.transitionParams.deltaBottom;
            float pressScale = botButton2.getPressScale();
            this.rect.set(botButton2.f1797x + m107dp, m107dp3, botButton2.f1797x + m107dp + botButton2.width, botButton2.height + m107dp3);
            canvas.save();
            if (pressScale != 1.0f) {
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            }
            applyServiceShaderMatrix();
            Arrays.fill(this.botButtonRadii, AndroidUtilities.m108dp(Math.min(6.75f, SharedConfig.bubbleRadius)));
            if (botButton2.hasPositionFlag(9)) {
                float[] fArr = this.botButtonRadii;
                float m107dp4 = AndroidUtilities.m107dp(SharedConfig.bubbleRadius);
                fArr[c] = m107dp4;
                fArr[6] = m107dp4;
            }
            if (botButton2.hasPositionFlag(i2)) {
                float[] fArr2 = this.botButtonRadii;
                float m107dp5 = AndroidUtilities.m107dp(SharedConfig.bubbleRadius);
                fArr2[5] = m107dp5;
                fArr2[4] = m107dp5;
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
                int i7 = (int) m107dp3;
                botButton2.selectorDrawable.setBounds(botButton2.f1797x + m107dp, i7, botButton2.f1797x + m107dp + botButton2.width, botButton2.height + i7);
                botButton2.selectorDrawable.setAlpha(255);
                botButton2.selectorDrawable.draw(canvas);
            }
            canvas.restore();
            canvas.save();
            i3 = 2;
            canvas.translate(botButton2.f1797x + m107dp + AndroidUtilities.m107dp(5), ((AndroidUtilities.m107dp(44) - botButton2.title.getLineBottom(botButton2.title.getLineCount() - 1)) / 2) + m107dp3);
            botButton2.title.draw(canvas);
            canvas.restore();
            if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonWebView)) {
                if (botButton2.button instanceof TLRPC$TL_keyboardButtonUrl) {
                    if (botButton2.isInviteButton) {
                        themedDrawable = getThemedDrawable("drawable_botInvite");
                    } else {
                        themedDrawable = getThemedDrawable("drawableBotLink");
                    }
                    BaseCell.setDrawableBounds(themedDrawable, (((botButton2.f1797x + botButton2.width) - AndroidUtilities.m107dp(3)) - themedDrawable.getIntrinsicWidth()) + m107dp, m107dp3 + AndroidUtilities.m107dp(3));
                    themedDrawable.draw(canvas);
                } else if (!(botButton2.button instanceof TLRPC$TL_keyboardButtonSwitchInline) && !(botButton2.button instanceof TLRPC$TL_keyboardButtonRequestPeer)) {
                    if (botButton2.button instanceof TLRPC$TL_keyboardButtonBuy) {
                        BaseCell.setDrawableBounds(Theme.chat_botCardDrawable, (((botButton2.f1797x + botButton2.width) - AndroidUtilities.m107dp(5)) - Theme.chat_botCardDrawable.getIntrinsicWidth()) + m107dp, m107dp3 + AndroidUtilities.m107dp(4));
                        Theme.chat_botCardDrawable.draw(canvas);
                    }
                } else {
                    Drawable themedDrawable2 = getThemedDrawable("drawableBotInline");
                    BaseCell.setDrawableBounds(themedDrawable2, (((botButton2.f1797x + botButton2.width) - AndroidUtilities.m107dp(3)) - themedDrawable2.getIntrinsicWidth()) + m107dp, m107dp3 + AndroidUtilities.m107dp(3));
                    themedDrawable2.draw(canvas);
                }
            } else {
                Drawable themedDrawable3 = getThemedDrawable("drawableBotWebView");
                BaseCell.setDrawableBounds(themedDrawable3, (((botButton2.f1797x + botButton2.width) - AndroidUtilities.m107dp(3)) - themedDrawable3.getIntrinsicWidth()) + m107dp, m107dp3 + AndroidUtilities.m107dp(3));
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
        int m107dp;
        int i;
        if (this.currentMessageObject.isOutOwner()) {
            this.textX = (z ? (int) (this.backgroundDrawableLeft + this.transitionParams.deltaLeft) : getCurrentBackgroundLeft()) + AndroidUtilities.m107dp(11) + getExtraTextX();
        } else {
            int currentBackgroundLeft = z ? (int) (this.backgroundDrawableLeft + this.transitionParams.deltaLeft) : getCurrentBackgroundLeft();
            if (this.currentMessageObject.type == 19) {
                m107dp = 0;
            } else {
                m107dp = AndroidUtilities.m107dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 11);
            }
            this.textX = currentBackgroundLeft + m107dp + getExtraTextX();
        }
        if (this.hasGamePreview) {
            this.textX += AndroidUtilities.m107dp(11);
            int m107dp2 = AndroidUtilities.m107dp(14) + this.namesOffset;
            this.textY = m107dp2;
            StaticLayout staticLayout = this.siteNameLayout;
            if (staticLayout != null) {
                this.textY = m107dp2 + staticLayout.getLineBottom(staticLayout.getLineCount() - 1);
            }
        } else if (this.hasInvoicePreview) {
            int m107dp3 = AndroidUtilities.m107dp(14) + this.namesOffset;
            this.textY = m107dp3;
            StaticLayout staticLayout2 = this.siteNameLayout;
            if (staticLayout2 != null) {
                this.textY = m107dp3 + staticLayout2.getLineBottom(staticLayout2.getLineCount() - 1);
            }
        } else if (this.currentMessageObject.type == 19) {
            this.textY = AndroidUtilities.m107dp(6) + this.namesOffset;
            if (!this.currentMessageObject.isOut()) {
                this.textX = getCurrentBackgroundLeft();
            } else {
                this.textX -= AndroidUtilities.m107dp(4);
            }
        } else {
            int m107dp4 = AndroidUtilities.m107dp(8) + this.namesOffset;
            this.textY = m107dp4;
            if (this.currentMessageObject.hasCodeAtTop && (i = SharedConfig.bubbleRadius) > 10) {
                this.textY = m107dp4 + AndroidUtilities.m107dp(i >= 15 ? 2 : 1);
            }
            if (this.currentMessageObject.hasCodeAtTop && this.namesOffset > 0) {
                this.textY += AndroidUtilities.m107dp(5);
            }
        }
        if (this.currentMessageObject.isSponsored()) {
            this.linkPreviewY = this.textY + AndroidUtilities.m107dp(14);
        } else if (this.linkPreviewAbove) {
            this.linkPreviewY = this.textY + AndroidUtilities.m107dp(10);
            this.textY += this.linkPreviewHeight + AndroidUtilities.m107dp(13);
            if (this.drawInstantView && !this.hasInvoicePreview && !this.currentMessageObject.isGiveawayOrGiveawayResults()) {
                this.textY += AndroidUtilities.m107dp(44);
            }
        } else {
            this.linkPreviewY = this.textY + this.currentMessageObject.textHeight + AndroidUtilities.m107dp(10);
        }
        this.unmovedTextX = this.textX;
        if (this.currentMessageObject.textXOffset == BitmapDescriptorFactory.HUE_RED || this.replyNameLayout == null) {
            return;
        }
        int m107dp5 = this.backgroundWidth - AndroidUtilities.m107dp(31);
        MessageObject messageObject = this.currentMessageObject;
        int i2 = m107dp5 - messageObject.textWidth;
        if (!this.hasNewLineForTime) {
            i2 -= this.timeWidth + AndroidUtilities.m107dp((messageObject.isOutOwner() ? 20 : 0) + 4);
        }
        if (i2 > 0) {
            this.textX += i2 - getExtraTimeX();
        }
    }

    public void drawMessageText(Canvas canvas) {
        float f;
        int i;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.isSponsored()) {
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
                    canvas.clipRect(bounds.left + AndroidUtilities.m107dp(4), bounds.top + AndroidUtilities.m107dp(4), bounds.right - AndroidUtilities.m107dp(10), bounds.bottom - AndroidUtilities.m107dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m107dp(4), bounds.top + AndroidUtilities.m107dp(4), bounds.right - AndroidUtilities.m107dp(4), bounds.bottom - AndroidUtilities.m107dp(4));
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
                int i4 = this.currentMessageObject.textHeight;
                float f9 = f8 + (i3 * i4 * (1.0f - f6));
                f = transitionParams.animateFromTextY - (((z2 ? 1 : -1) * i4) * f6);
                f5 = f9;
            } else {
                f = f5;
            }
            canvas.save();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.currentBackgroundDrawable.getBounds());
            if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                rectF.left += AndroidUtilities.m107dp(4);
                rectF.right -= AndroidUtilities.m107dp(10);
            } else {
                rectF.left += AndroidUtilities.m107dp(4);
                rectF.right -= AndroidUtilities.m107dp(4);
            }
            float f10 = rectF.left;
            float f11 = this.transitionParams.animateFromTextY;
            canvas.clipRect(f10, f11, rectF.right, this.currentMessageObject.textHeight + f11 + AndroidUtilities.m107dp(4));
            float f12 = this.textX;
            MessageObject messageObject3 = this.currentMessageObject;
            drawMessageText(f12, f, canvas, messageObject3.textLayoutBlocks, messageObject3.textXOffset, false, 1.0f - this.transitionParams.animateChangeProgress, true, false, false);
            canvas.restore();
            canvas.save();
            rectF.set(this.currentBackgroundDrawable.getBounds());
            if (this.currentMessageObject.isOutOwner() && !this.mediaBackground && !this.pinnedBottom) {
                rectF.left += AndroidUtilities.m107dp(4);
                rectF.right -= AndroidUtilities.m107dp(10);
            } else {
                rectF.left += AndroidUtilities.m107dp(4);
                rectF.right -= AndroidUtilities.m107dp(4);
            }
            canvas.clipRect(rectF.left, this.textY, rectF.right, i + this.currentMessageObject.textHeight + AndroidUtilities.m107dp(4));
            float f13 = this.textX;
            MessageObject messageObject4 = this.currentMessageObject;
            drawMessageText(f13, f5, canvas, messageObject4.textLayoutBlocks, messageObject4.textXOffset, true, 1.0f, true, false, false);
            canvas.restore();
            return;
        }
        float f14 = this.textX;
        MessageObject messageObject5 = this.currentMessageObject;
        drawMessageText(f14, f5, canvas, messageObject5.textLayoutBlocks, messageObject5.textXOffset, true, 1.0f, true, false, false);
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
    /* JADX WARN: Removed duplicated region for block: B:244:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x06ec  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x06f5  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x06fa  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x070a A[LOOP:3: B:287:0x0702->B:289:0x070a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0731  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0788  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x07a1  */
    /* JADX WARN: Removed duplicated region for block: B:340:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:341:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawMessageText(float r38, float r39, android.graphics.Canvas r40, java.util.ArrayList<org.telegram.messenger.MessageObject.TextLayoutBlock> r41, float r42, boolean r43, float r44, boolean r45, boolean r46, boolean r47) {
        /*
            Method dump skipped, instructions count: 1957
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
            this.captionX = imageX + AndroidUtilities.m107dp(5) + this.captionOffsetX;
            this.captionY = imageY + imageHeight + AndroidUtilities.m107dp(6);
        } else {
            int i2 = 17;
            if (this.hasOldCaptionPreview) {
                this.captionX = this.backgroundDrawableLeft + AndroidUtilities.m107dp(messageObject.isOutOwner() ? 11 : 17) + this.captionOffsetX;
                float m107dp = (((this.totalHeight - this.captionHeight) - AndroidUtilities.m107dp(this.drawPinnedTop ? 9 : 10)) - this.linkPreviewHeight) - AndroidUtilities.m107dp(17);
                this.captionY = m107dp;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m107dp - AndroidUtilities.m108dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
                }
            } else {
                if (this.isRoundVideo) {
                    this.captionX = getBackgroundDrawableLeft() + AndroidUtilities.m107dp((this.currentMessageObject.isOutOwner() ? 0 : 6) + 11);
                } else {
                    int i3 = this.backgroundDrawableLeft;
                    if (messageObject.isOutOwner() || this.mediaBackground || this.drawPinnedBottom) {
                        i2 = 11;
                    }
                    this.captionX = i3 + AndroidUtilities.m107dp(i2) + this.captionOffsetX;
                }
                float m107dp2 = (this.totalHeight - this.captionHeight) - AndroidUtilities.m107dp(this.drawPinnedTop ? 9 : 10);
                this.captionY = m107dp2;
                if (this.drawCommentButton && this.drawSideButton != 3) {
                    this.captionY = m107dp2 - AndroidUtilities.m108dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getMaxNameWidth() {
        /*
            Method dump skipped, instructions count: 261
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
            FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
            TLRPC$Document tLRPC$Document = this.documentAttach;
            MessageObject messageObject2 = this.currentMessageObject;
            fileLoader.loadFile(tLRPC$Document, messageObject2, 2, messageObject2.shouldEncryptPhotoOrVideo() ? 2 : 0);
            this.currentMessageObject.loadingCancelled = false;
        } else if (i3 == 4 || i3 == 7) {
            createLoadingProgressLayout(this.documentAttach);
            FileLoader fileLoader2 = FileLoader.getInstance(this.currentAccount);
            TLRPC$Document tLRPC$Document2 = this.documentAttach;
            MessageObject messageObject3 = this.currentMessageObject;
            fileLoader2.loadFile(tLRPC$Document2, messageObject3, 2, messageObject3.shouldEncryptPhotoOrVideo() ? 2 : 0);
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
                if (this.delegate.needPlayMessage(this, this.currentMessageObject, false)) {
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
            int i3 = this.currentMessageObject.shouldEncryptPhotoOrVideo() ? 2 : 0;
            MessageObject messageObject5 = this.currentMessageObject;
            int i4 = messageObject5.type;
            if (i4 == 1 || i4 == 20) {
                this.photoImage.setForceLoading(true);
                this.photoImage.setImage(ImageLocation.getForObject(this.currentPhotoObject, this.photoParentObject), this.currentPhotoFilter, ImageLocation.getForObject(this.currentPhotoObjectThumb, this.photoParentObject), this.currentPhotoFilterThumb, this.currentPhotoObjectThumbStripped, this.currentPhotoObject.size, null, this.currentMessageObject, i3);
            } else if (i4 == 8) {
                FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                if (this.currentMessageObject.loadedFileSize > 0) {
                    createLoadingProgressLayout(this.documentAttach);
                }
            } else if (this.isRoundVideo) {
                if (messageObject5.isSecretMedia()) {
                    FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
                    TLRPC$Document document = this.currentMessageObject.getDocument();
                    MessageObject messageObject6 = this.currentMessageObject;
                    fileLoader.loadFile(document, messageObject6, 2, messageObject6.shouldEncryptPhotoOrVideo() ? 2 : 1);
                } else {
                    MessageObject messageObject7 = this.currentMessageObject;
                    messageObject7.gifState = 2.0f;
                    TLRPC$Document document2 = messageObject7.getDocument();
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForDocument(document2), null, ImageLocation.getForObject(tLRPC$PhotoSize, document2), str2, document2.size, null, this.currentMessageObject, 0);
                }
                this.wouldBeInPip = true;
                invalidate();
            } else if (i4 == 9) {
                FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                if (this.currentMessageObject.loadedFileSize > 0) {
                    createLoadingProgressLayout(this.documentAttach);
                }
            } else {
                int i5 = this.documentAttachType;
                if (i5 == 4) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 1, i3);
                    MessageObject messageObject8 = this.currentMessageObject;
                    if (messageObject8.loadedFileSize > 0) {
                        createLoadingProgressLayout(messageObject8.getDocument());
                    }
                } else if (i4 != 0 || i5 == 0) {
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForObject(this.currentPhotoObject, this.photoParentObject), this.currentPhotoFilter, ImageLocation.getForObject(this.currentPhotoObjectThumb, this.photoParentObject), this.currentPhotoFilterThumb, this.currentPhotoObjectThumbStripped, 0L, null, this.currentMessageObject, 0);
                } else if (i5 == 2) {
                    this.photoImage.setForceLoading(true);
                    this.photoImage.setImage(ImageLocation.getForDocument(this.documentAttach), null, ImageLocation.getForDocument(this.currentPhotoObject, this.documentAttach), this.currentPhotoFilterThumb, this.documentAttach.size, null, this.currentMessageObject, i3);
                    MessageObject messageObject9 = this.currentMessageObject;
                    messageObject9.gifState = 2.0f;
                    if (messageObject9.loadedFileSize > 0) {
                        createLoadingProgressLayout(messageObject9.getDocument());
                    }
                } else if (i5 == 1) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                } else if (i5 == 8) {
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
            int i6 = this.documentAttachType;
            if (i6 == 3 || i6 == 5 || (i6 == 7 && (messageObject2 = this.currentMessageObject) != null && messageObject2.isVoiceTranscriptionOpen())) {
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
                MessageObject messageObject10 = this.currentMessageObject;
                messageObject10.loadingCancelled = true;
                int i7 = this.documentAttachType;
                if (i7 == 2 || i7 == 4 || i7 == 1 || i7 == 8) {
                    FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.documentAttach);
                } else {
                    int i8 = messageObject10.type;
                    if (i8 == 0 || i8 == 1 || i8 == 20 || i8 == 8 || i8 == 5) {
                        ImageLoader.getInstance().cancelForceLoadingForImageReceiver(this.photoImage);
                        this.photoImage.cancelLoadImage();
                    } else if (i8 == 9) {
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
                ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
                if (chatMessageCellDelegate != null) {
                    chatMessageCellDelegate.didPressImage(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                }
            } else if (i == 4) {
                int i9 = this.documentAttachType;
                if (i9 == 3 || i9 == 5 || (i9 == 7 && (messageObject = this.currentMessageObject) != null && messageObject.isVoiceTranscriptionOpen())) {
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
            MessageObject messageObject11 = this.currentMessageObject;
            if (messageObject11 != null && messageObject11.type == 23) {
                this.delegate.didPressImage(this, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } else if (this.documentAttachType == 7 && messageObject11 != null && messageObject11.isVoiceTranscriptionOpen()) {
                if (this.miniButtonState == 0) {
                    FileLoader.getInstance(this.currentAccount).loadFile(this.documentAttach, this.currentMessageObject, 2, 0);
                    this.currentMessageObject.loadingCancelled = false;
                }
                if (this.delegate.needPlayMessage(this, this.currentMessageObject, false)) {
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
                int i10 = this.documentAttachType;
                if (i10 == 3 || i10 == 5) {
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

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c6, code lost:
        if ((r1 & 2) != 0) goto L45;
     */
    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccessDownload(java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 487
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
            if (r6 == 0) goto L9b
            org.telegram.messenger.MessageObject r6 = r4.currentMessageObject
            if (r6 == 0) goto L9b
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
            if (r6 == 0) goto L9b
            android.graphics.Bitmap r6 = r5.getBitmap()
            if (r6 == 0) goto L9b
            android.graphics.Bitmap r6 = r5.getBitmap()
            boolean r6 = r6.isRecycled()
            if (r6 != 0) goto L9b
            org.telegram.messenger.ImageReceiver r6 = r4.blurredPhotoImage
            android.graphics.Bitmap r5 = r5.getBitmap()
            org.telegram.messenger.MessageObject r7 = r4.currentMessageObject
            boolean r7 = r7.isRoundVideo()
            android.graphics.Bitmap r5 = org.telegram.messenger.Utilities.stackBlurBitmapMax(r5, r7)
            r6.setImageBitmap(r5)
            org.telegram.messenger.ImageReceiver r5 = r4.blurredPhotoImage
            android.graphics.ColorMatrixColorFilter r6 = r4.getFancyBlurFilter()
            r5.setColorFilter(r6)
        L9b:
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
        CharSequence charSequence;
        CharSequence charSequence2;
        super.onProvideStructure(viewStructure);
        if (!this.allowAssistant || Build.VERSION.SDK_INT < 23) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && (charSequence2 = messageObject.messageText) != null && charSequence2.length() > 0) {
            viewStructure.setText(this.currentMessageObject.messageText);
            return;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 == null || (charSequence = messageObject2.caption) == null || charSequence.length() <= 0) {
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

    /* JADX WARN: Removed duplicated region for block: B:102:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:200:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureTime(org.telegram.messenger.MessageObject r20) {
        /*
            Method dump skipped, instructions count: 1229
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

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
        if ((r0 & (r5.isOutOwner() ? 1 : 2)) != 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean checkNeedDrawShareButton(org.telegram.messenger.MessageObject r5) {
        /*
            r4 = this;
            boolean r0 = r4.wideMode
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            org.telegram.messenger.MessageObject r0 = r4.currentMessageObject
            boolean r2 = r0.deleted
            if (r2 == 0) goto L10
            boolean r2 = r0.deletedByThanos
            if (r2 == 0) goto L16
        L10:
            boolean r0 = r0.isSponsored()
            if (r0 == 0) goto L17
        L16:
            return r1
        L17:
            org.telegram.messenger.MessageObject$GroupedMessages r0 = r4.currentMessagesGroup
            if (r0 == 0) goto L45
            org.telegram.messenger.MessageObject$GroupedMessagePosition r0 = r4.currentPosition
            if (r0 == 0) goto L45
            int r0 = r0.flags
            r2 = r0 & 8
            r3 = 1
            if (r2 == 0) goto L33
            boolean r2 = r5.isOutOwner()
            if (r2 == 0) goto L2e
            r2 = r3
            goto L2f
        L2e:
            r2 = 2
        L2f:
            r0 = r0 & r2
            if (r0 == 0) goto L33
            goto L34
        L33:
            r3 = r1
        L34:
            org.telegram.messenger.MessageObject$GroupedMessages r0 = r4.currentMessagesGroup
            boolean r2 = r0.reversed
            if (r2 != 0) goto L40
            boolean r0 = r0.isDocuments
            if (r0 != 0) goto L40
            if (r3 == 0) goto L44
        L40:
            if (r2 == 0) goto L45
            if (r3 != 0) goto L45
        L44:
            return r1
        L45:
            boolean r5 = r5.needDrawShareButton()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.checkNeedDrawShareButton(org.telegram.messenger.MessageObject):boolean");
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
                if (!this.isSavedChat) {
                    TLRPC$Peer tLRPC$Peer2 = tLRPC$MessageFwdHeader.from_id;
                    if (tLRPC$Peer2 instanceof TLRPC$TL_peerUser) {
                        this.currentUser = messagesController.getUser(Long.valueOf(tLRPC$Peer2.user_id));
                        return;
                    }
                }
                this.currentUser = messagesController.getUser(Long.valueOf(j));
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

    /* JADX WARN: Can't wrap try/catch for region: R(31:30|(1:32)|33|(2:805|(29:812|(4:825|(1:827)(1:834)|828|(3:830|(1:832)|833))|816|43|(1:45)(1:(1:803)(1:804))|46|(1:48)(1:801)|49|50|51|52|(1:54)(1:798)|55|(7:57|(1:59)|60|(1:62)(3:71|(1:73)(1:75)|74)|63|(3:65|(1:67)|68)(1:70)|69)|76|77|78|(3:80|(1:82)|83)(1:795)|84|(1:86)|87|(1:89)(1:794)|90|(2:92|(1:94))|95|(1:97)(2:788|(1:790)(2:791|(1:793)))|98|(1:100)|101)(1:811))(1:41)|42|43|(0)(0)|46|(0)(0)|49|50|51|52|(0)(0)|55|(0)|76|77|78|(0)(0)|84|(0)|87|(0)(0)|90|(0)|95|(0)(0)|98|(0)|101) */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0402, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0403, code lost:
        org.telegram.messenger.FileLog.m102e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x11ad, code lost:
        if (android.os.Build.VERSION.SDK_INT < 23) goto L363;
     */
    /* JADX WARN: Code restructure failed: missing block: B:808:0x134f, code lost:
        if ((r0.action instanceof org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate) == false) goto L688;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x037f A[Catch: Exception -> 0x0402, TryCatch #8 {Exception -> 0x0402, blocks: (B:118:0x035c, B:120:0x037f, B:122:0x0396, B:123:0x03aa, B:125:0x03b9, B:127:0x03bd, B:128:0x03c8, B:130:0x03cf, B:131:0x03fe, B:124:0x03b4), top: B:847:0x035c }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03b4 A[Catch: Exception -> 0x0402, TryCatch #8 {Exception -> 0x0402, blocks: (B:118:0x035c, B:120:0x037f, B:122:0x0396, B:123:0x03aa, B:125:0x03b9, B:127:0x03bd, B:128:0x03c8, B:130:0x03cf, B:131:0x03fe, B:124:0x03b4), top: B:847:0x035c }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03bd A[Catch: Exception -> 0x0402, TryCatch #8 {Exception -> 0x0402, blocks: (B:118:0x035c, B:120:0x037f, B:122:0x0396, B:123:0x03aa, B:125:0x03b9, B:127:0x03bd, B:128:0x03c8, B:130:0x03cf, B:131:0x03fe, B:124:0x03b4), top: B:847:0x035c }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03cf A[Catch: Exception -> 0x0402, TryCatch #8 {Exception -> 0x0402, blocks: (B:118:0x035c, B:120:0x037f, B:122:0x0396, B:123:0x03aa, B:125:0x03b9, B:127:0x03bd, B:128:0x03c8, B:130:0x03cf, B:131:0x03fe, B:124:0x03b4), top: B:847:0x035c }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03fe A[Catch: Exception -> 0x0402, TRY_LEAVE, TryCatch #8 {Exception -> 0x0402, blocks: (B:118:0x035c, B:120:0x037f, B:122:0x0396, B:123:0x03aa, B:125:0x03b9, B:127:0x03bd, B:128:0x03c8, B:130:0x03cf, B:131:0x03fe, B:124:0x03b4), top: B:847:0x035c }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0807  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x080e  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0823  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0c34  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0c49  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0e8f  */
    /* JADX WARN: Removed duplicated region for block: B:665:0x0ff4  */
    /* JADX WARN: Removed duplicated region for block: B:666:0x0ffa  */
    /* JADX WARN: Removed duplicated region for block: B:669:0x101a  */
    /* JADX WARN: Removed duplicated region for block: B:738:0x11bf A[Catch: Exception -> 0x1327, TryCatch #5 {Exception -> 0x1327, blocks: (B:702:0x1106, B:704:0x110e, B:706:0x1116, B:708:0x111b, B:710:0x1132, B:712:0x113e, B:713:0x1142, B:714:0x1145, B:716:0x114f, B:717:0x1156, B:719:0x115a, B:721:0x115e, B:726:0x1167, B:729:0x119d, B:731:0x11a1, B:733:0x11a9, B:736:0x11b6, B:738:0x11bf, B:740:0x11d8, B:742:0x11de, B:743:0x11e7, B:745:0x11f3, B:747:0x11f9, B:752:0x120b, B:755:0x1232, B:757:0x1240, B:761:0x124a, B:762:0x1268, B:764:0x1270, B:765:0x127a, B:767:0x1282, B:769:0x12a0, B:777:0x12ae, B:778:0x12b4, B:779:0x12bf, B:780:0x12cb, B:782:0x12d4, B:784:0x12dc, B:789:0x12fe, B:788:0x12ea, B:759:0x1244, B:754:0x1210, B:735:0x11af, B:790:0x130c, B:792:0x1312), top: B:842:0x1106 }] */
    /* JADX WARN: Removed duplicated region for block: B:754:0x1210 A[Catch: Exception -> 0x1327, TryCatch #5 {Exception -> 0x1327, blocks: (B:702:0x1106, B:704:0x110e, B:706:0x1116, B:708:0x111b, B:710:0x1132, B:712:0x113e, B:713:0x1142, B:714:0x1145, B:716:0x114f, B:717:0x1156, B:719:0x115a, B:721:0x115e, B:726:0x1167, B:729:0x119d, B:731:0x11a1, B:733:0x11a9, B:736:0x11b6, B:738:0x11bf, B:740:0x11d8, B:742:0x11de, B:743:0x11e7, B:745:0x11f3, B:747:0x11f9, B:752:0x120b, B:755:0x1232, B:757:0x1240, B:761:0x124a, B:762:0x1268, B:764:0x1270, B:765:0x127a, B:767:0x1282, B:769:0x12a0, B:777:0x12ae, B:778:0x12b4, B:779:0x12bf, B:780:0x12cb, B:782:0x12d4, B:784:0x12dc, B:789:0x12fe, B:788:0x12ea, B:759:0x1244, B:754:0x1210, B:735:0x11af, B:790:0x130c, B:792:0x1312), top: B:842:0x1106 }] */
    /* JADX WARN: Removed duplicated region for block: B:764:0x1270 A[Catch: Exception -> 0x1327, TryCatch #5 {Exception -> 0x1327, blocks: (B:702:0x1106, B:704:0x110e, B:706:0x1116, B:708:0x111b, B:710:0x1132, B:712:0x113e, B:713:0x1142, B:714:0x1145, B:716:0x114f, B:717:0x1156, B:719:0x115a, B:721:0x115e, B:726:0x1167, B:729:0x119d, B:731:0x11a1, B:733:0x11a9, B:736:0x11b6, B:738:0x11bf, B:740:0x11d8, B:742:0x11de, B:743:0x11e7, B:745:0x11f3, B:747:0x11f9, B:752:0x120b, B:755:0x1232, B:757:0x1240, B:761:0x124a, B:762:0x1268, B:764:0x1270, B:765:0x127a, B:767:0x1282, B:769:0x12a0, B:777:0x12ae, B:778:0x12b4, B:779:0x12bf, B:780:0x12cb, B:782:0x12d4, B:784:0x12dc, B:789:0x12fe, B:788:0x12ea, B:759:0x1244, B:754:0x1210, B:735:0x11af, B:790:0x130c, B:792:0x1312), top: B:842:0x1106 }] */
    /* JADX WARN: Removed duplicated region for block: B:782:0x12d4 A[Catch: Exception -> 0x1327, TryCatch #5 {Exception -> 0x1327, blocks: (B:702:0x1106, B:704:0x110e, B:706:0x1116, B:708:0x111b, B:710:0x1132, B:712:0x113e, B:713:0x1142, B:714:0x1145, B:716:0x114f, B:717:0x1156, B:719:0x115a, B:721:0x115e, B:726:0x1167, B:729:0x119d, B:731:0x11a1, B:733:0x11a9, B:736:0x11b6, B:738:0x11bf, B:740:0x11d8, B:742:0x11de, B:743:0x11e7, B:745:0x11f3, B:747:0x11f9, B:752:0x120b, B:755:0x1232, B:757:0x1240, B:761:0x124a, B:762:0x1268, B:764:0x1270, B:765:0x127a, B:767:0x1282, B:769:0x12a0, B:777:0x12ae, B:778:0x12b4, B:779:0x12bf, B:780:0x12cb, B:782:0x12d4, B:784:0x12dc, B:789:0x12fe, B:788:0x12ea, B:759:0x1244, B:754:0x1210, B:735:0x11af, B:790:0x130c, B:792:0x1312), top: B:842:0x1106 }] */
    /* JADX WARN: Removed duplicated region for block: B:804:0x1343  */
    /* JADX WARN: Removed duplicated region for block: B:811:0x135c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0241  */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.text.StaticLayout[]] */
    /* JADX WARN: Type inference failed for: r14v18, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v51 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v108 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v15, types: [org.telegram.tgnet.TLRPC$Photo] */
    /* JADX WARN: Type inference failed for: r8v173 */
    /* JADX WARN: Type inference failed for: r8v174, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v175 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setMessageObjectInternal(org.telegram.messenger.MessageObject r49) {
        /*
            Method dump skipped, instructions count: 5115
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

    protected boolean isNeedAuthorName() {
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
        if (messageObject.isSponsored() || this.currentMessageObject.isGiveawayOrGiveawayResults()) {
            return false;
        }
        return (this.isPinnedChat && this.currentMessageObject.type == 0) || (!this.pinnedTop && this.drawName && this.isChat && (!this.currentMessageObject.isOutOwner() || ((this.currentMessageObject.isSupergroup() && this.currentMessageObject.isFromGroup()) || this.currentMessageObject.isRepostPreview))) || (this.currentMessageObject.isImportedForward() && this.currentMessageObject.messageOwner.fwd_from.from_id == null);
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
        TLRPC$BotApp tLRPC$BotApp = messageObject2.sponsoredBotApp;
        if (tLRPC$BotApp != null) {
            return tLRPC$BotApp.title;
        }
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
            i += AndroidUtilities.m108dp(shouldDrawTimeOnMedia() ? 41.3f : 43.0f);
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
        if (messageObject == null || messageObject.isSending()) {
            return;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2.type == 27 || messageObject2.isSendError() || this.checkBox == null) {
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

    @Override // org.telegram.p043ui.Cells.BaseCell
    public int getBoundsLeft() {
        int i;
        int i2;
        int backgroundDrawableLeft = getBackgroundDrawableLeft();
        if (needDrawAvatar()) {
            if (this.currentPosition != null) {
                i2 = 73;
            } else {
                MessageObject messageObject = this.currentMessageObject;
                i2 = (messageObject == null || !messageObject.isRepostPreview) ? 63 : 42;
            }
            i = AndroidUtilities.m107dp(i2);
        } else {
            i = 0;
        }
        int i3 = backgroundDrawableLeft - i;
        MessageObject messageObject2 = this.currentMessageObject;
        return Math.max(0, i3 - ((messageObject2 != null && messageObject2.isOutOwner() && (checkNeedDrawShareButton(this.currentMessageObject) || this.useTranscribeButton)) ? AndroidUtilities.m107dp(48) : 0));
    }

    @Override // org.telegram.p043ui.Cells.BaseCell
    public int getBoundsRight() {
        int backgroundDrawableRight = getBackgroundDrawableRight();
        MessageObject messageObject = this.currentMessageObject;
        return backgroundDrawableRight + ((messageObject == null || messageObject.isOutOwner() || !(checkNeedDrawShareButton(this.currentMessageObject) || this.useTranscribeButton)) ? 0 : AndroidUtilities.m107dp(48));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
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
        if (this.channelRecommendationsCell != null && this.currentMessageObject.type == 27) {
            ChatMessageCellDelegate chatMessageCellDelegate = this.delegate;
            if (chatMessageCellDelegate == null || chatMessageCellDelegate.canDrawOutboundsContent()) {
                this.channelRecommendationsCell.draw(canvas);
            }
            this.transitionParams.recordDrawingState();
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
        if (isWidthAdaptive()) {
            canvas.save();
            canvas.translate(-getBoundsLeft(), BitmapDescriptorFactory.HUE_RED);
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
                    i2 -= AndroidUtilities.m107dp(40);
                } else {
                    i3 += AndroidUtilities.m107dp(40);
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
            canvas.clipRect(bounds.left + AndroidUtilities.m107dp(4), bounds.top + AndroidUtilities.m107dp(4), bounds.right - AndroidUtilities.m107dp(4), bounds.bottom - AndroidUtilities.m107dp(4));
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
        ChatMessageCellDelegate chatMessageCellDelegate2 = this.delegate;
        if (chatMessageCellDelegate2 == null || chatMessageCellDelegate2.canDrawOutboundsContent() || this.transitionParams.messageEntering || getAlpha() != 1.0f) {
            drawOutboundsContent(canvas);
        }
        if (this.replyNameLayout != null) {
            float f = this.replyTextHeight;
            TransitionParams transitionParams = this.transitionParams;
            if (transitionParams != null && transitionParams.animateReplyTextLayout != null) {
                f = AndroidUtilities.lerp(this.transitionParams.animateFromReplyTextHeight, f, this.transitionParams.animateChangeProgress);
            }
            this.replyHeight = AndroidUtilities.m107dp(9) + Theme.chat_replyNamePaint.getTextSize() + Math.max(f - AndroidUtilities.m108dp(3.66f), Theme.chat_replyTextPaint.getTextSize());
            if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                MessageObject messageObject3 = this.currentMessageObject;
                if (messageObject3.type != 19) {
                    if (messageObject3.isOutOwner()) {
                        int m107dp = AndroidUtilities.m107dp(23);
                        this.replyStartX = m107dp;
                        if (this.isPlayingRound) {
                            this.replyStartX = m107dp - (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize);
                        }
                    } else if (this.currentMessageObject.type == 5) {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m107dp(4);
                    } else {
                        this.replyStartX = this.backgroundDrawableLeft + this.backgroundDrawableRight + AndroidUtilities.m107dp(17);
                    }
                    if (this.drawForwardedName) {
                        int m107dp2 = AndroidUtilities.m107dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
                        this.forwardHeight = m107dp2;
                        this.replyStartY = this.forwardNameY + m107dp2 + AndroidUtilities.m107dp(6);
                    } else {
                        int m107dp3 = AndroidUtilities.m107dp(12);
                        this.replyStartY = m107dp3;
                        if (this.drawTopic && (messageTopicButton2 = this.topicButton) != null) {
                            this.replyStartY = m107dp3 + messageTopicButton2.height() + AndroidUtilities.m107dp(10);
                        }
                    }
                    this.replyStartY += AndroidUtilities.m108dp(0.66f);
                }
            }
            if (this.currentMessageObject.isOutOwner()) {
                int m107dp4 = this.backgroundDrawableLeft + AndroidUtilities.m107dp(12) + getExtraTextX();
                this.replyStartX = m107dp4;
                if (this.currentMessageObject.type == 19) {
                    this.replyStartX = m107dp4 - Math.max(0, ((Math.max(this.replyNameWidth, this.replyTextWidth) + m107dp4) + AndroidUtilities.m107dp(14)) - AndroidUtilities.displaySize.x);
                }
            } else if (this.mediaBackground) {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m107dp(12) + getExtraTextX();
            } else {
                this.replyStartX = this.backgroundDrawableLeft + AndroidUtilities.m107dp(this.drawPinnedBottom ? 12 : 18) + getExtraTextX();
            }
            if (this.currentMessageObject.type == 19) {
                this.replyStartX -= AndroidUtilities.m107dp(7);
            }
            this.forwardHeight = AndroidUtilities.m107dp(4) + (((int) Theme.chat_forwardNamePaint.getTextSize()) * 2);
            int m107dp5 = AndroidUtilities.m107dp(12) + ((!this.drawNameLayout || this.nameLayout == null) ? 0 : AndroidUtilities.m107dp(6) + ((int) Theme.chat_namePaint.getTextSize())) + ((!this.drawForwardedName || this.forwardedNameLayout[0] == null) ? 0 : AndroidUtilities.m107dp(4) + this.forwardHeight);
            this.replyStartY = m107dp5;
            if (this.drawTopic && (messageTopicButton = this.topicButton) != null) {
                this.replyStartY = m107dp5 + messageTopicButton.height() + AndroidUtilities.m107dp(5);
            }
            this.replyStartY += AndroidUtilities.m108dp(0.66f);
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
        if (isWidthAdaptive()) {
            canvas.restore();
        }
        updateSelectionTextPosition();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:357:0x073f  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0802  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackgroundInternal(android.graphics.Canvas r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2185
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
            this.checkBoxTranslation = (int) Math.ceil((z ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m107dp(35));
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

    public void drawServiceBackground(Canvas canvas, RectF rectF, float f, float f2) {
        applyServiceShaderMatrix();
        int i = (f2 > 1.0f ? 1 : (f2 == 1.0f ? 0 : -1));
        if (i != 0) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f2));
            canvas.drawRoundRect(rectF, f, f, getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
        } else {
            canvas.drawRoundRect(rectF, f, f, getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
        }
        if (hasGradientService()) {
            if (i != 0) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (f2 * alpha2));
                canvas.drawRoundRect(rectF, f, f, Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
                return;
            }
            canvas.drawRoundRect(rectF, f, f, Theme.chat_actionBackgroundGradientDarkenPaint);
        }
    }

    public void drawCommentButton(Canvas canvas, float f) {
        if (this.drawSideButton != 3) {
            return;
        }
        int m107dp = AndroidUtilities.m107dp(32);
        if (this.commentLayout != null) {
            this.sideStartY -= AndroidUtilities.m107dp(18);
            m107dp += AndroidUtilities.m107dp(18);
        }
        RectF rectF = this.rect;
        float f2 = this.sideStartX;
        rectF.set(f2, this.sideStartY, AndroidUtilities.m107dp(32) + f2, this.sideStartY + m107dp);
        applyServiceShaderMatrix();
        int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (i != 0) {
            int alpha = getThemedPaint("paintChatActionBackground").getAlpha();
            getThemedPaint("paintChatActionBackground").setAlpha((int) (alpha * f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), getThemedPaint("paintChatActionBackground"));
            getThemedPaint("paintChatActionBackground").setAlpha(alpha);
        } else {
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
        }
        if (hasGradientService()) {
            if (i != 0) {
                int alpha2 = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (alpha2 * f));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
                Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(alpha2);
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        Drawable themeDrawable = Theme.getThemeDrawable("drawableCommentSticker");
        BaseCell.setDrawableBounds(themeDrawable, this.sideStartX + AndroidUtilities.m107dp(4), this.sideStartY + AndroidUtilities.m107dp(4));
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
                    canvas.translate(this.sideStartX + ((AndroidUtilities.m107dp(32) - this.transitionParams.animateTotalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m107dp(30));
                    this.transitionParams.animateCommentsLayout.draw(canvas);
                    canvas.restore();
                }
                Theme.chat_stickerCommentCountPaint.setAlpha((int) (this.transitionParams.animateChangeProgress * 255.0f));
            }
            canvas.save();
            canvas.translate(this.sideStartX + ((AndroidUtilities.m107dp(32) - this.totalCommentWidth) / 2), this.sideStartY + AndroidUtilities.m107dp(30));
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
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        MessageObject messageObject;
        if (this.channelRecommendationsCell == null || (messageObject = this.currentMessageObject) == null || messageObject.type != 27) {
            if (getAlpha() != 1.0f) {
                return false;
            }
            if (this.drawAdditionalSideButton) {
                return true;
            }
            if ((this.transitionParams.transitionBotButtons.isEmpty() || !this.transitionParams.animateBotButtonsChanged) && this.botButtons.isEmpty() && this.drawSideButton == 0) {
                if (!this.drawNameLayout || this.nameLayout == null || (swapAnimatedEmojiDrawable = this.currentNameStatusDrawable) == null || swapAnimatedEmojiDrawable.getDrawable() == null) {
                    AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.animatedEmojiStack;
                    if (emojiGroupedSpans == null || emojiGroupedSpans.holders.isEmpty()) {
                        if (this.drawTopic && this.topicButton != null) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
                            if (groupedMessagePosition == null) {
                                return true;
                            }
                            if (groupedMessagePosition.minY == 0 && groupedMessagePosition.minX == 0) {
                                return true;
                            }
                        }
                        if (this.currentMessagesGroup == null) {
                            TransitionParams transitionParams = this.transitionParams;
                            if (((transitionParams.animateReplaceCaptionLayout && transitionParams.animateChangeProgress != 1.0f) || (transitionParams.animateChangeProgress != 1.0f && transitionParams.animateMessageText)) && transitionParams.animateOutAnimateEmoji != null && !this.transitionParams.animateOutAnimateEmoji.holders.isEmpty()) {
                                return true;
                            }
                        }
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public void drawOutboundsContent(Canvas canvas) {
        TransitionParams transitionParams;
        MessageObject.GroupedMessagePosition groupedMessagePosition;
        float f;
        float f2;
        float f3;
        MessageObject.GroupedMessagePosition groupedMessagePosition2;
        float m107dp;
        int extraTextX;
        float f4;
        int themedColor;
        TLRPC$User tLRPC$User;
        TLRPC$ChatInvite tLRPC$ChatInvite;
        TLRPC$Chat tLRPC$Chat;
        TLRPC$ChatInvite tLRPC$ChatInvite2;
        float m107dp2;
        int i;
        int i2;
        float m107dp3;
        MessageObject.GroupedMessages groupedMessages;
        MessageObject messageObject;
        ChannelRecommendationsCell channelRecommendationsCell = this.channelRecommendationsCell;
        if (channelRecommendationsCell != null && (messageObject = this.currentMessageObject) != null && messageObject.type == 27) {
            channelRecommendationsCell.draw(canvas);
        } else if (this.currentMessageObject == null) {
        } else {
            if (!this.enterTransitionInProgress) {
                drawAnimatedEmojis(canvas, 1.0f);
            }
            if (this.currentNameStatusDrawable != null && this.drawNameLayout && this.nameLayout != null && (((groupedMessagePosition2 = this.currentPosition) == null || (groupedMessagePosition2.minX == 0 && groupedMessagePosition2.minY == 0)) && (!this.currentMessageObject.deleted || this.drawingToBitmap || (groupedMessages = this.currentMessagesGroup) == null || groupedMessages.messages.size() < 1))) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    themedColor = getThemedColor(Theme.key_chat_stickerNameText);
                    if (this.currentMessageObject.isOutOwner()) {
                        m107dp3 = AndroidUtilities.m107dp(28);
                    } else {
                        m107dp3 = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + this.backgroundDrawableRight + AndroidUtilities.m107dp(22);
                    }
                    m107dp2 = this.layoutHeight - AndroidUtilities.m107dp(38);
                    f4 = m107dp3 - this.nameOffsetX;
                } else {
                    int i3 = 11;
                    if (this.mediaBackground || this.currentMessageObject.isOutOwner()) {
                        m107dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m107dp(11);
                        extraTextX = getExtraTextX();
                    } else {
                        m107dp = this.backgroundDrawableLeft + this.transitionParams.deltaLeft + AndroidUtilities.m107dp((this.mediaBackground || !this.drawPinnedBottom) ? 17 : 17);
                        extraTextX = getExtraTextX();
                    }
                    f4 = m107dp + extraTextX;
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
                        MessageObject messageObject2 = this.currentMessageObject;
                        if (messageObject2.overrideLinkColor >= 0 || ((messageObject2.isFromUser() && this.currentUser != null) || ((this.currentMessageObject.isFromChannel() && this.currentChat != null) || ((this.currentMessageObject.isSponsored() && (this.currentMessageObject.sponsoredChatInvite instanceof TLRPC$TL_chatInvite)) || (this.currentMessageObject.isSponsored() && (tLRPC$ChatInvite2 = this.currentMessageObject.sponsoredChatInvite) != null && tLRPC$ChatInvite2.chat != null))))) {
                            MessageObject messageObject3 = this.currentMessageObject;
                            int i4 = messageObject3.overrideLinkColor;
                            if (i4 < 0) {
                                if (messageObject3.isSponsored()) {
                                    TLRPC$ChatInvite tLRPC$ChatInvite3 = this.currentMessageObject.sponsoredChatInvite;
                                    if (tLRPC$ChatInvite3 instanceof TLRPC$TL_chatInvite) {
                                        i4 = tLRPC$ChatInvite3.color;
                                    }
                                }
                                if (this.currentMessageObject.isSponsored() && (tLRPC$ChatInvite = this.currentMessageObject.sponsoredChatInvite) != null && (tLRPC$Chat = tLRPC$ChatInvite.chat) != null) {
                                    i4 = ChatObject.getColorId(tLRPC$Chat);
                                } else if (this.currentMessageObject.isFromUser() && (tLRPC$User = this.currentUser) != null) {
                                    i4 = UserObject.getColorId(tLRPC$User);
                                } else {
                                    i4 = ChatObject.getColorId(this.currentChat);
                                }
                            }
                            if (i4 < 7) {
                                themedColor = getThemedColor(Theme.keys_avatar_nameInMessage[i4]);
                            } else {
                                MessagesController.PeerColors peerColors = MessagesController.getInstance(this.currentAccount).peerColors;
                                MessagesController.PeerColor color = peerColors != null ? peerColors.getColor(i4) : null;
                                if (color != null) {
                                    themedColor = color.getColor(0, this.resourcesProvider);
                                } else {
                                    themedColor = getThemedColor(Theme.key_chat_inForwardedNameText);
                                }
                            }
                        } else {
                            themedColor = getThemedColor(Theme.key_chat_inForwardedNameText);
                        }
                    }
                    m107dp2 = AndroidUtilities.m107dp(this.drawPinnedTop ? 9 : 10);
                }
                MessageObject.GroupedMessages groupedMessages2 = this.currentMessagesGroup;
                if (groupedMessages2 != null) {
                    MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages2.transitionParams;
                    if (transitionParams2.backgroundChangeBounds) {
                        f4 += transitionParams2.offsetLeft;
                        m107dp2 += transitionParams2.offsetTop - getTranslationY();
                    }
                }
                float f5 = f4 + this.animationOffsetX;
                TransitionParams transitionParams3 = this.transitionParams;
                float f6 = m107dp2 + transitionParams3.deltaTop;
                if (transitionParams3.animateSign) {
                    f5 = ((f5 - this.transitionParams.animateNameX) * this.transitionParams.animateChangeProgress) + this.transitionParams.animateNameX;
                }
                this.currentNameStatusDrawable.setBounds((int) (Math.abs(f5) + (this.viaNameWidth > 0 ? i - AndroidUtilities.m107dp(32) : this.nameLayoutWidth) + AndroidUtilities.m107dp(2)), (int) (((this.nameLayout.getHeight() / 2) + f6) - AndroidUtilities.m107dp(10)), (int) (Math.abs(f5) + (this.viaNameWidth > 0 ? i2 - AndroidUtilities.m107dp(32) : this.nameLayoutWidth) + AndroidUtilities.m107dp(22)), (int) (f6 + (this.nameLayout.getHeight() / 2) + AndroidUtilities.m107dp(10)));
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
    }

    public void drawAnimatedEmojis(Canvas canvas, float f) {
        drawAnimatedEmojiMessageText(canvas, f);
        if (shouldDrawCaptionLayout()) {
            drawAnimatedEmojiCaption(canvas, f);
        }
    }

    private void drawAnimatedEmojiMessageText(Canvas canvas, float f) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.isSponsored()) {
            return;
        }
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
                    canvas.clipRect(bounds.left + AndroidUtilities.m107dp(4), bounds.top + AndroidUtilities.m107dp(4), bounds.right - AndroidUtilities.m107dp(10), bounds.bottom - AndroidUtilities.m107dp(4));
                } else {
                    canvas.clipRect(bounds.left + AndroidUtilities.m107dp(4), bounds.top + AndroidUtilities.m107dp(4), bounds.right - AndroidUtilities.m107dp(4), bounds.bottom - AndroidUtilities.m107dp(4));
                }
            }
            drawAnimatedEmojiMessageText(this.textX, f5, canvas, this.transitionParams.animateOutTextBlocks, this.transitionParams.animateOutAnimateEmoji, false, f * (1.0f - this.transitionParams.animateChangeProgress), this.currentMessageObject.textXOffset, false);
            float f6 = this.textX;
            MessageObject messageObject2 = this.currentMessageObject;
            drawAnimatedEmojiMessageText(f6, f5, canvas, messageObject2.textLayoutBlocks, this.animatedEmojiStack, true, f * this.transitionParams.animateChangeProgress, messageObject2.textXOffset, false);
            canvas.restore();
            return;
        }
        float f7 = this.textX;
        MessageObject messageObject3 = this.currentMessageObject;
        drawAnimatedEmojiMessageText(f7, f5, canvas, messageObject3.textLayoutBlocks, this.animatedEmojiStack, true, f, messageObject3.textXOffset, false);
    }

    private void drawAnimatedEmojiMessageText(float f, float f2, Canvas canvas, ArrayList<MessageObject.TextLayoutBlock> arrayList, AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans, boolean z, float f3, float f4, boolean z2) {
        int size;
        int i;
        if (this.currentMessageObject == null || arrayList == null || arrayList.isEmpty() || f3 == BitmapDescriptorFactory.HUE_RED) {
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
                int i4 = this.currentMessageObject.isOutOwner() ? Theme.key_chat_messageTextOut : Theme.key_chat_messageTextIn;
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    i4 = Theme.key_windowBackgroundWhiteBlackText;
                }
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayoutBlock.textLayout, emojiGroupedSpans, BitmapDescriptorFactory.HUE_RED, textLayoutBlock.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f5, f3, getAdaptiveEmojiColorFilter(0, getThemedColor(i4)));
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
        MessageObject.GroupedMessages groupedMessages;
        this.drawAdditionalSideButton = !this.wideMode && checkNeedDrawAdditionalSideButton(this.currentMessageObject);
        float backgroundDrawableBottom = (getBackgroundDrawableBottom() - AndroidUtilities.m108dp(1.5f)) + this.transitionParams.deltaBottom;
        int m107dp = AndroidUtilities.m107dp(32);
        int m107dp2 = AndroidUtilities.m107dp(8);
        int i = m107dp + m107dp2;
        boolean z = backgroundDrawableBottom >= ((float) (i + m107dp));
        if (this.drawAdditionalSideButton && (this.drawSideButton == 0 || z)) {
            if (this.currentMessageObject.isOutOwner()) {
                float f = this.transitionParams.lastBackgroundLeft - i;
                this.additionalSideButtonStartX = f;
                MessageObject.GroupedMessages groupedMessages2 = this.currentMessagesGroup;
                if (groupedMessages2 != null) {
                    this.additionalSideButtonStartX = f + (groupedMessages2.transitionParams.offsetLeft - this.animationOffsetX);
                }
            } else {
                float f2 = this.transitionParams.lastBackgroundRight + m107dp2;
                this.additionalSideButtonStartX = f2;
                MessageObject.GroupedMessages groupedMessages3 = this.currentMessagesGroup;
                if (groupedMessages3 != null) {
                    this.additionalSideButtonStartX = f2 + (groupedMessages3.transitionParams.offsetRight - this.animationOffsetX);
                }
            }
            if (this.drawSideButton == 0) {
                this.additionalSideButtonStartY = backgroundDrawableBottom - m107dp;
            } else if (z) {
                float f3 = m107dp;
                this.additionalSideButtonStartY = ((backgroundDrawableBottom - f3) - m107dp2) - f3;
            }
            MessageObject.GroupedMessages groupedMessages4 = this.currentMessagesGroup;
            if (groupedMessages4 != null) {
                float f4 = this.additionalSideButtonStartY;
                MessageObject.GroupedMessages.TransitionParams transitionParams = groupedMessages4.transitionParams;
                float f5 = f4 + transitionParams.offsetBottom;
                this.additionalSideButtonStartY = f5;
                if (transitionParams.backgroundChangeBounds) {
                    this.additionalSideButtonStartY = f5 - getTranslationY();
                }
            }
            RectF rectF = this.rect;
            float f6 = this.additionalSideButtonStartX;
            float f7 = this.additionalSideButtonStartY;
            float f8 = m107dp;
            rectF.set(f6, f7, f6 + f8, f8 + f7);
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, getX(), this.viewTop);
            Paint paint = this.additionalSideButtonPressed ? Theme.chat_actionBackgroundSelectedPaint : Theme.chat_actionBackgroundPaint;
            int alpha = paint.getAlpha();
            paint.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), paint);
            paint.setAlpha(alpha);
            if (Theme.hasGradientService()) {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            Drawable drawable = this.currentMessageObject.isForwardingEditor ? Theme.chat_editIconDrawable : Theme.chat_translateIconDrawable;
            int alpha2 = drawable.getAlpha();
            BaseCell.setDrawableBounds(drawable, this.additionalSideButtonStartX + AndroidUtilities.m107dp(4), this.additionalSideButtonStartY + AndroidUtilities.m107dp(4));
            drawable.setAlpha((int) ((1.0f - this.checkBoxAnimationProgress) * 255.0f));
            drawable.draw(canvas);
            drawable.setAlpha(alpha2);
        }
        if (this.drawSideButton != 0) {
            MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
            if (groupedMessagePosition == null || (groupedMessages = this.currentMessagesGroup) == null || !groupedMessages.isDocuments || groupedMessagePosition.last) {
                if (this.currentMessageObject.isOutOwner()) {
                    float m107dp3 = this.transitionParams.lastBackgroundLeft - AndroidUtilities.m107dp(40);
                    this.sideStartX = m107dp3;
                    MessageObject.GroupedMessages groupedMessages5 = this.currentMessagesGroup;
                    if (groupedMessages5 != null) {
                        this.sideStartX = m107dp3 + (groupedMessages5.transitionParams.offsetLeft - this.animationOffsetX);
                    }
                } else {
                    float m107dp4 = this.transitionParams.lastBackgroundRight + AndroidUtilities.m107dp(8);
                    this.sideStartX = m107dp4;
                    MessageObject.GroupedMessages groupedMessages6 = this.currentMessagesGroup;
                    if (groupedMessages6 != null) {
                        this.sideStartX = m107dp4 + (groupedMessages6.transitionParams.offsetRight - this.animationOffsetX);
                    }
                }
                int i2 = this.drawSideButton;
                float f9 = BitmapDescriptorFactory.HUE_RED;
                if (i2 == 4) {
                    this.sideStartY = AndroidUtilities.m107dp(6);
                } else {
                    float m107dp5 = (this.layoutHeight + this.transitionParams.deltaBottom) - AndroidUtilities.m107dp(41);
                    this.sideStartY = m107dp5;
                    MessageObject messageObject = this.currentMessageObject;
                    if (messageObject.type == 19 && messageObject.textWidth < this.timeTextWidth) {
                        this.sideStartY = m107dp5 - AndroidUtilities.m107dp(22);
                    }
                    if (this.albumMode || (this.drawAdditionalSideButton && z)) {
                        this.sideStartY = backgroundDrawableBottom - m107dp;
                    }
                    MessageObject.GroupedMessages groupedMessages7 = this.currentMessagesGroup;
                    if (groupedMessages7 != null) {
                        float f10 = this.sideStartY;
                        MessageObject.GroupedMessages.TransitionParams transitionParams2 = groupedMessages7.transitionParams;
                        float f11 = f10 + transitionParams2.offsetBottom;
                        this.sideStartY = f11;
                        if (transitionParams2.backgroundChangeBounds) {
                            this.sideStartY = f11 - getTranslationY();
                        }
                    }
                    if (this.currentMessageObject.shouldDrawReactions()) {
                        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
                        if (!reactionsLayoutInBubble.isSmall) {
                            if (this.isRoundVideo) {
                                this.sideStartY -= reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress());
                            } else if (reactionsLayoutInBubble.drawServiceShaderBackground > BitmapDescriptorFactory.HUE_RED) {
                                this.sideStartY -= reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress);
                            }
                        }
                    }
                }
                if (this.drawSideButton != 4 && this.sideStartY < (this.layoutHeight - AndroidUtilities.m107dp(32)) / 2.0f) {
                    this.sideStartY = (this.layoutHeight - AndroidUtilities.m107dp(32)) / 2.0f;
                }
                if (!this.currentMessageObject.isOutOwner() && this.isRoundVideo && !this.hasLinkPreview) {
                    float m107dp6 = this.isAvatarVisible ? (AndroidUtilities.roundPlayingMessageSize - AndroidUtilities.roundMessageSize) * 0.7f : AndroidUtilities.m107dp(50);
                    float videoTranscriptionProgress = this.isPlayingRound ? (1.0f - getVideoTranscriptionProgress()) * m107dp6 : 0.0f;
                    if (this.isPlayingRound) {
                        f9 = (1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m107dp(28);
                    }
                    TransitionParams transitionParams3 = this.transitionParams;
                    if (transitionParams3.animatePlayingRound) {
                        videoTranscriptionProgress = (this.isPlayingRound ? transitionParams3.animateChangeProgress : 1.0f - transitionParams3.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress()) * m107dp6;
                        f9 = (this.isPlayingRound ? this.transitionParams.animateChangeProgress : 1.0f - this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m107dp(28);
                    }
                    this.sideStartX -= videoTranscriptionProgress;
                    this.sideStartY -= f9;
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
                rectF2.set(f12, this.sideStartY, AndroidUtilities.m107dp(32) + f12, this.sideStartY + AndroidUtilities.m107dp(32));
                applyServiceShaderMatrix();
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), getThemedPaint(this.sideButtonPressed ? "paintChatActionBackgroundSelected" : "paintChatActionBackground"));
                if (hasGradientService()) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
                }
                int i3 = this.drawSideButton;
                if (i3 == 2) {
                    Drawable themedDrawable = getThemedDrawable("drawableGoIcon");
                    BaseCell.setDrawableBounds(themedDrawable, (this.sideStartX + AndroidUtilities.m107dp(16)) - (themedDrawable.getIntrinsicWidth() / 2.0f), (this.sideStartY + AndroidUtilities.m107dp(16)) - (themedDrawable.getIntrinsicHeight() / 2.0f));
                    themedDrawable.draw(canvas);
                } else if (i3 == 4) {
                    int m107dp7 = (int) (this.sideStartX + AndroidUtilities.m107dp(16));
                    int m107dp8 = (int) (this.sideStartY + AndroidUtilities.m107dp(16));
                    Drawable themedDrawable2 = getThemedDrawable("drawableCloseIcon");
                    int intrinsicWidth = themedDrawable2.getIntrinsicWidth() / 2;
                    int intrinsicHeight = themedDrawable2.getIntrinsicHeight() / 2;
                    themedDrawable2.setBounds(m107dp7 - intrinsicWidth, m107dp8 - intrinsicHeight, m107dp7 + intrinsicWidth, m107dp8 + intrinsicHeight);
                    BaseCell.setDrawableBounds(themedDrawable2, this.sideStartX + AndroidUtilities.m107dp(4), this.sideStartY + AndroidUtilities.m107dp(4));
                    canvas.save();
                    canvas.scale(0.65f, 0.65f, themedDrawable2.getBounds().centerX(), themedDrawable2.getBounds().centerY());
                    themedDrawable2.draw(canvas);
                    canvas.restore();
                } else {
                    int m107dp9 = (int) (this.sideStartX + AndroidUtilities.m107dp(16));
                    int m107dp10 = (int) (this.sideStartY + AndroidUtilities.m107dp(16));
                    Drawable themedDrawable3 = getThemedDrawable("drawableShareIcon");
                    int intrinsicWidth2 = themedDrawable3.getIntrinsicWidth() / 2;
                    int intrinsicHeight2 = themedDrawable3.getIntrinsicHeight() / 2;
                    themedDrawable3.setBounds(m107dp9 - intrinsicWidth2, m107dp10 - intrinsicHeight2, m107dp9 + intrinsicWidth2, m107dp10 + intrinsicHeight2);
                    BaseCell.setDrawableBounds(themedDrawable3, this.sideStartX + AndroidUtilities.m107dp(4), this.sideStartY + AndroidUtilities.m107dp(4));
                    themedDrawable3.draw(canvas);
                }
            }
        }
    }

    public void setTimeAlpha(float f) {
        this.timeAlpha = f;
    }

    public float getTimeAlpha() {
        return this.timeAlpha;
    }

    public int getBackgroundDrawableLeft() {
        int m107dp;
        int m107dp2;
        int i;
        MessageObject messageObject = getMessageObject();
        if (messageObject != null && messageObject.isOutOwner()) {
            if (this.isRoundVideo) {
                return (this.layoutWidth - this.backgroundWidth) - ((int) ((1.0f - getVideoTranscriptionProgress()) * AndroidUtilities.m107dp(9)));
            }
            return (this.layoutWidth - this.backgroundWidth) - (this.mediaBackground ? AndroidUtilities.m107dp(9) : 0);
        }
        if (this.isRoundVideo) {
            if ((this.isChat || (messageObject != null && (messageObject.isRepostPreview || messageObject.forceAvatar))) && this.isAvatarVisible) {
                r1 = 48;
            }
            m107dp = AndroidUtilities.m107dp(r1 + 3) + ((int) (AndroidUtilities.m107dp(6) * (1.0f - getVideoTranscriptionProgress())));
        } else {
            if ((this.isChat || (messageObject != null && (messageObject.isRepostPreview || messageObject.forceAvatar))) && this.isAvatarVisible) {
                r1 = 48;
            }
            m107dp = AndroidUtilities.m107dp(r1 + (this.mediaBackground ? 9 : 3));
        }
        MessageObject.GroupedMessages groupedMessages = this.currentMessagesGroup;
        if (groupedMessages != null && !groupedMessages.isDocuments && (i = this.currentPosition.leftSpanOffset) != 0) {
            m107dp += (int) Math.ceil((i / 1000.0f) * getGroupPhotosWidth());
        }
        if (this.isRoundVideo) {
            if (!this.drawPinnedBottom) {
                return m107dp;
            }
            m107dp2 = (int) (AndroidUtilities.m107dp(6) * (1.0f - getVideoTranscriptionProgress()));
        } else if (this.mediaBackground || !this.drawPinnedBottom) {
            return m107dp;
        } else {
            m107dp2 = AndroidUtilities.m107dp(6);
        }
        return m107dp + m107dp2;
    }

    public int getBackgroundDrawableRight() {
        int m107dp;
        int backgroundDrawableLeft;
        MessageObject messageObject;
        MessageObject messageObject2;
        int i = this.backgroundWidth;
        if (this.isRoundVideo) {
            m107dp = i - ((int) (getVideoTranscriptionProgress() * AndroidUtilities.m107dp(3)));
            if (this.drawPinnedBottom && (messageObject2 = this.currentMessageObject) != null && messageObject2.isOutOwner()) {
                m107dp = (int) (m107dp - (AndroidUtilities.m107dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            if (this.drawPinnedBottom && ((messageObject = this.currentMessageObject) == null || !messageObject.isOutOwner())) {
                m107dp = (int) (m107dp - (AndroidUtilities.m107dp(6) * (1.0f - getVideoTranscriptionProgress())));
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        } else {
            m107dp = i - (this.mediaBackground ? 0 : AndroidUtilities.m107dp(3));
            if (!this.mediaBackground && this.drawPinnedBottom) {
                m107dp -= AndroidUtilities.m107dp(6);
            }
            backgroundDrawableLeft = getBackgroundDrawableLeft();
        }
        return backgroundDrawableLeft + m107dp;
    }

    public int getBackgroundDrawableTop() {
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int m107dp = ((groupedMessagePosition == null || (groupedMessagePosition.flags & 4) != 0) ? 0 : 0 - AndroidUtilities.m107dp(3)) + (this.drawPinnedTop ? 0 : AndroidUtilities.m107dp(1));
        return (this.mediaBackground || !this.drawPinnedTop) ? m107dp : m107dp - AndroidUtilities.m107dp(1);
    }

    public int getBackgroundDrawableBottom() {
        int i;
        MessageObject.GroupedMessagePosition groupedMessagePosition = this.currentPosition;
        int i2 = 0;
        if (groupedMessagePosition != null) {
            int i3 = 4;
            i = (groupedMessagePosition.flags & 4) == 0 ? AndroidUtilities.m107dp(3) + 0 : 0;
            if ((this.currentPosition.flags & 8) == 0) {
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject != null && messageObject.isOutOwner()) {
                    i3 = 3;
                }
                i += AndroidUtilities.m107dp(i3);
            }
        } else {
            i = 0;
        }
        boolean z = this.drawPinnedBottom;
        if (!z || !this.drawPinnedTop) {
            if (z) {
                i2 = AndroidUtilities.m107dp(1);
            } else {
                i2 = AndroidUtilities.m107dp(2);
            }
        }
        int backgroundDrawableTop = ((getBackgroundDrawableTop() + this.layoutHeight) - i2) + i;
        if (this.mediaBackground) {
            return backgroundDrawableTop;
        }
        if (this.drawPinnedTop) {
            backgroundDrawableTop += AndroidUtilities.m107dp(1);
        }
        return this.drawPinnedBottom ? backgroundDrawableTop + AndroidUtilities.m107dp(1) : backgroundDrawableTop;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBackground(android.graphics.Canvas r16, int r17, int r18, int r19, int r20, boolean r21, boolean r22, boolean r23, int r24) {
        /*
            Method dump skipped, instructions count: 237
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

    /* JADX WARN: Code restructure failed: missing block: B:629:0x0eb3, code lost:
        if (r6.type == 0) goto L720;
     */
    /* JADX WARN: Code restructure failed: missing block: B:631:0x0ebb, code lost:
        if (android.text.TextUtils.isEmpty(r6.caption) == false) goto L720;
     */
    /* JADX WARN: Code restructure failed: missing block: B:633:0x0ec9, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r42.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) != false) goto L726;
     */
    /* JADX WARN: Code restructure failed: missing block: B:635:0x0ed7, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r42.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaInvoice) != false) goto L726;
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x0f3b, code lost:
        if (r6.type == 0) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x0f43, code lost:
        if (android.text.TextUtils.isEmpty(r6.caption) == false) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x0f51, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r42.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) != false) goto L751;
     */
    /* JADX WARN: Code restructure failed: missing block: B:660:0x0f5f, code lost:
        if ((org.telegram.messenger.MessageObject.getMedia(r42.currentMessageObject.replyMessageObject.messageOwner) instanceof org.telegram.tgnet.TLRPC$TL_messageMediaInvoice) != false) goto L751;
     */
    /* JADX WARN: Removed duplicated region for block: B:338:0x072c  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x073a  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0a5d  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0abc  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0ac3  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0c8a  */
    /* JADX WARN: Removed duplicated region for block: B:929:0x16b3  */
    /* JADX WARN: Removed duplicated region for block: B:938:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawNamesLayout(android.graphics.Canvas r43, float r44) {
        /*
            Method dump skipped, instructions count: 5815
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
        MessageObject messageObject;
        if (z2 && (messageObject = this.currentMessageObject) != null && messageObject.deletedByThanos) {
            return;
        }
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
        MessageObject messageObject;
        if (z || !z3 || (messageObject = this.currentMessageObject) == null || !messageObject.deletedByThanos) {
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
        return (messageObject == null || messageObject.preview || ((groupedMessagePosition = this.currentPosition) != null && ((groupedMessages = this.currentMessagesGroup) == null || !groupedMessages.isDocuments || (groupedMessagePosition.flags & 8) != 0)) || this.transitionParams.animateBackgroundBoundsInner || (this.enterTransitionInProgress && messageObject.isVoice())) ? false : true;
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
        if (z || !this.currentMessageObject.shouldDrawReactions()) {
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
    /* JADX WARN: Removed duplicated region for block: B:408:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawCaptionLayout(android.graphics.Canvas r26, org.telegram.messenger.MessageObject.TextLayoutBlocks r27, boolean r28, boolean r29, float r30) {
        /*
            Method dump skipped, instructions count: 2428
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
            if (findProgressLoadingLink(loadingDrawableLocation, linkPath, arrayList.get(i).textLayout, BitmapDescriptorFactory.HUE_RED, i)) {
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
        MessageObject messageObject;
        return !this.forceNotDrawTime && ((messageObject = this.currentMessageObject) == null || messageObject.type != 27);
    }

    public boolean shouldDrawTimeOnMedia() {
        int i = this.overideShouldDrawTimeOnMedia;
        if (i != 0) {
            return i == 1;
        } else if (this.mediaBackground && this.captionLayout == null) {
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble.isEmpty && !reactionsLayoutInBubble.isSmall) {
                MessageObject messageObject = this.currentMessageObject;
                if (messageObject == null) {
                    return false;
                }
                if (!messageObject.isAnyKindOfSticker() && !this.currentMessageObject.isRoundVideo()) {
                    return false;
                }
            }
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawTime(android.graphics.Canvas r17, float r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawTime(android.graphics.Canvas, float, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawTimeInternal(android.graphics.Canvas r41, float r42, boolean r43, float r44, android.text.StaticLayout r45, float r46, boolean r47) {
        /*
            Method dump skipped, instructions count: 2872
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
                    ChatMessageCell.this.lambda$createStatusDrawableAnimator$12(z, valueAnimator);
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
                f6 = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m108dp(9.0f);
            } else {
                float m108dp = (f - AndroidUtilities.m108dp((this.pinnedBottom || this.pinnedTop) ? 9.5f : 8.5f)) + f3;
                if (this.isRoundVideo) {
                    f6 = m108dp - ((AndroidUtilities.m107dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
                } else {
                    f6 = m108dp;
                }
            }
            BaseCell.setDrawableBounds(msgClockDrawable, f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m107dp(11)), f6 - msgClockDrawable.getIntrinsicHeight());
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
            float m107dp = f4 + (this.currentMessageObject.scheduled ? 0 : AndroidUtilities.m107dp(11));
            float f9 = 21.5f;
            if (shouldDrawTimeOnMedia()) {
                currentTotalHeight = (this.photoImage.getImageY2() + this.additionalTimeOffsetY) - AndroidUtilities.m108dp(21.5f);
            } else {
                if (!this.pinnedBottom && !this.pinnedTop) {
                    f9 = 20.5f;
                }
                float m108dp2 = (f - AndroidUtilities.m108dp(f9)) + f3;
                currentTotalHeight = this.isRoundVideo ? m108dp2 - (this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress) * (1.0f - getVideoTranscriptionProgress())) : m108dp2;
            }
            this.rect.set(m107dp, currentTotalHeight, AndroidUtilities.m107dp(14) + m107dp, AndroidUtilities.m107dp(14) + currentTotalHeight);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            int i = (int) (f8 * 255.0f);
            Theme.chat_msgErrorPaint.setAlpha(i);
            if (z4) {
                canvas.save();
                canvas.scale(f7, f7, this.rect.centerX(), this.rect.centerY());
            }
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            Drawable themedDrawable = getThemedDrawable("drawableMsgError");
            BaseCell.setDrawableBounds(themedDrawable, m107dp + AndroidUtilities.m107dp(6), currentTotalHeight + AndroidUtilities.m107dp(2));
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
        int m107dp;
        int m107dp2;
        Drawable themedDrawable;
        Drawable drawable;
        int i;
        MessageObject messageObject;
        boolean z8 = (f4 == 1.0f || z6) ? false : true;
        float f5 = (f4 * 0.5f) + 0.5f;
        float f6 = z8 ? f * f4 : f;
        if (this.documentAttachType != 7 || ((messageObject = this.currentMessageObject) != null && messageObject.isRoundOnce())) {
            imageY2 = this.photoImage.getImageY2() + this.additionalTimeOffsetY;
        } else {
            imageY2 = f3 - ((AndroidUtilities.m107dp(this.drawPinnedBottom ? 4 : 5) + this.reactionsLayoutInBubble.getCurrentTotalHeight(this.transitionParams.animateChangeProgress)) * (1.0f - getVideoTranscriptionProgress()));
        }
        float m108dp = imageY2 - AndroidUtilities.m108dp(8.5f);
        if (z3) {
            MsgClockDrawable msgClockDrawable = Theme.chat_msgClockDrawable;
            if (shouldDrawTimeOnMedia()) {
                if (this.currentMessageObject.shouldDrawWithoutBackground()) {
                    i = getThemedColor(Theme.key_chat_serviceText);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m107dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m108dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    i = getThemedColor(Theme.key_chat_mediaSentClock);
                    BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m107dp(z5 ? 24 : 22)) - msgClockDrawable.getIntrinsicWidth(), (m108dp - msgClockDrawable.getIntrinsicHeight()) + f2);
                    msgClockDrawable.setAlpha((int) (f6 * 255.0f));
                }
            } else {
                int themedColor = getThemedColor(Theme.key_chat_outSentClock);
                BaseCell.setDrawableBounds(msgClockDrawable, (this.layoutWidth - AndroidUtilities.m108dp(18.5f)) - msgClockDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m108dp(8.5f)) - msgClockDrawable.getIntrinsicHeight()) + f2);
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
                            canvas.translate(AndroidUtilities.m108dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m108dp(z5 ? 28.3f : 26.3f)) - drawable.getIntrinsicWidth(), (m108dp - drawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(drawable, (this.layoutWidth - AndroidUtilities.m108dp(z5 ? 23.5f : 21.5f)) - drawable.getIntrinsicWidth(), (m108dp - drawable.getIntrinsicHeight()) + f2);
                    }
                    drawable.setAlpha((int) (this.timeAlpha * 255.0f * f6));
                } else {
                    if (z) {
                        if (z6) {
                            canvas.translate(AndroidUtilities.m108dp(4.8f) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                        }
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m108dp(z5 ? 28.3f : 26.3f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m108dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
                    } else {
                        BaseCell.setDrawableBounds(Theme.chat_msgMediaCheckDrawable, (this.layoutWidth - AndroidUtilities.m108dp(z5 ? 23.5f : 21.5f)) - Theme.chat_msgMediaCheckDrawable.getIntrinsicWidth(), (m108dp - Theme.chat_msgMediaCheckDrawable.getIntrinsicHeight()) + f2);
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
                        canvas.translate(AndroidUtilities.m107dp(4) * (1.0f - f4), BitmapDescriptorFactory.HUE_RED);
                    }
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckReadSelected" : "drawableMsgOutCheckRead");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m108dp(22.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m107dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
                } else {
                    themedDrawable = getThemedDrawable(z7 ? "drawableMsgOutCheckSelected" : "drawableMsgOutCheck");
                    BaseCell.setDrawableBounds(themedDrawable, (this.layoutWidth - AndroidUtilities.m108dp(18.5f)) - themedDrawable.getIntrinsicWidth(), ((f3 - AndroidUtilities.m107dp((this.pinnedBottom || this.pinnedTop) ? 9 : 8)) - themedDrawable.getIntrinsicHeight()) + f2);
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
                BaseCell.setDrawableBounds(themedDrawable2, (this.layoutWidth - AndroidUtilities.m108dp(z5 ? 23.5f : 21.5f)) - themedDrawable2.getIntrinsicWidth(), (m108dp - themedDrawable2.getIntrinsicHeight()) + f2);
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
                float m107dp3 = (this.layoutWidth - AndroidUtilities.m107dp(18)) - themedDrawable3.getIntrinsicWidth();
                if (!this.pinnedBottom && !this.pinnedTop) {
                    i2 = 8;
                }
                BaseCell.setDrawableBounds(themedDrawable3, m107dp3, ((f3 - AndroidUtilities.m107dp(i2)) - themedDrawable3.getIntrinsicHeight()) + f2);
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
                m107dp = this.layoutWidth - AndroidUtilities.m108dp(34.5f);
                m107dp2 = AndroidUtilities.m108dp(26.5f);
            } else {
                m107dp = this.layoutWidth - AndroidUtilities.m107dp(32);
                m107dp2 = AndroidUtilities.m107dp((this.pinnedBottom || this.pinnedTop) ? 22 : 21);
            }
            float f7 = (f3 - m107dp2) + f2;
            this.rect.set(m107dp, f7, AndroidUtilities.m107dp(14) + m107dp, AndroidUtilities.m107dp(14) + f7);
            int alpha = Theme.chat_msgErrorPaint.getAlpha();
            Theme.chat_msgErrorPaint.setAlpha((int) (alpha * f6));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(1), Theme.chat_msgErrorPaint);
            Theme.chat_msgErrorPaint.setAlpha(alpha);
            BaseCell.setDrawableBounds(Theme.chat_msgErrorDrawable, m107dp + AndroidUtilities.m107dp(6), f7 + AndroidUtilities.m107dp(2));
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

    /* JADX WARN: Code restructure failed: missing block: B:359:0x0a37, code lost:
        if (r0[0] == 3) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0fed, code lost:
        if (r4 == 2) goto L786;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0ffe, code lost:
        if (r4 != (-1)) goto L578;
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x1006, code lost:
        if (r29.currentMessageObject.needDrawBluredPreview() == false) goto L785;
     */
    /* JADX WARN: Code restructure failed: missing block: B:854:0x1551, code lost:
        if (r0.revealingMediaSpoilers != false) goto L1041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:864:0x1572, code lost:
        if (r29.radialProgress.getIcon() != 4) goto L1041;
     */
    /* JADX WARN: Removed duplicated region for block: B:1074:0x19f7  */
    /* JADX WARN: Removed duplicated region for block: B:1081:0x1a16  */
    /* JADX WARN: Removed duplicated region for block: B:1084:0x1a67  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0772  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x07b0  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x07d8  */
    /* JADX WARN: Removed duplicated region for block: B:757:0x1341  */
    /* JADX WARN: Removed duplicated region for block: B:761:0x135a  */
    /* JADX WARN: Removed duplicated region for block: B:769:0x137b  */
    /* JADX WARN: Removed duplicated region for block: B:773:0x1392  */
    /* JADX WARN: Removed duplicated region for block: B:795:0x13d0  */
    /* JADX WARN: Removed duplicated region for block: B:799:0x13e1  */
    /* JADX WARN: Removed duplicated region for block: B:841:0x1525  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:851:0x1549  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:867:0x157c  */
    /* JADX WARN: Removed duplicated region for block: B:868:0x1582  */
    /* JADX WARN: Removed duplicated region for block: B:873:0x15a1  */
    /* JADX WARN: Removed duplicated region for block: B:886:0x15dc  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x1607  */
    /* JADX WARN: Removed duplicated region for block: B:903:0x1613  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawOverlays(android.graphics.Canvas r30) {
        /*
            Method dump skipped, instructions count: 6946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatMessageCell.drawOverlays(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void drawRadialProgress(Canvas canvas) {
        boolean isRoundOnce = this.currentMessageObject.isRoundOnce();
        if (isRoundOnce) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(this.radialProgress.getProgressRect());
            rectF.inset(-AndroidUtilities.m107dp(15), -AndroidUtilities.m107dp(15));
            canvas.saveLayerAlpha(rectF, (int) (this.radialProgressAlpha * 255.0f), 31);
        }
        if (this.currentMessageObject.needDrawBluredPreview()) {
            drawPhotoBlurRect(canvas, this.radialProgress.getProgressRect());
        }
        RadialProgress2 radialProgress2 = this.radialProgress;
        radialProgress2.iconScale = 1.0f;
        radialProgress2.draw(canvas);
        if (isRoundOnce) {
            canvas.save();
            drawPhotoBlurRect(canvas, getRadialProgress().getProgressRect());
            getRadialProgress().draw(canvas);
            RectF progressRect = getRadialProgress().getProgressRect();
            float centerX = progressRect.centerX() + AndroidUtilities.m107dp(18);
            float centerY = progressRect.centerY() + AndroidUtilities.m107dp(18);
            float m107dp = AndroidUtilities.m107dp(10);
            float m108dp = AndroidUtilities.m108dp(1.33f) + m107dp;
            if (this.clipPaint == null) {
                Paint paint = new Paint(1);
                this.clipPaint = paint;
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            canvas.drawCircle(centerX, centerY, m108dp, this.clipPaint);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(centerX - m107dp, centerY - m107dp, centerX + m107dp, m107dp + centerY);
            drawPhotoBlurRect(canvas, rectF2);
            if (this.oncePeriod == null) {
                CaptionContainerView.PeriodDrawable periodDrawable = new CaptionContainerView.PeriodDrawable(3);
                this.oncePeriod = periodDrawable;
                periodDrawable.updateColors(-1, 0, 0);
                CaptionContainerView.PeriodDrawable periodDrawable2 = this.oncePeriod;
                periodDrawable2.diameterDp = 14.0f;
                periodDrawable2.setTextSize(10.0f);
                this.oncePeriod.strokePaint.setStrokeWidth(AndroidUtilities.dpf2(1.5f));
                this.oncePeriod.setValue(1, false, false);
                this.oncePeriod.textOffsetX = -AndroidUtilities.dpf2(0.33f);
                this.oncePeriod.textOffsetY = AndroidUtilities.dpf2(0.33f);
            }
            CaptionContainerView.PeriodDrawable periodDrawable3 = this.oncePeriod;
            periodDrawable3.diameterDp = 14.0f;
            periodDrawable3.setTextSize(10.0f);
            this.oncePeriod.setClear(false);
            this.oncePeriod.setCenterXY(centerX, centerY);
            this.oncePeriod.draw(canvas, 1.0f);
            canvas.restore();
            canvas.restore();
        }
    }

    protected void drawPhotoBlurRect(Canvas canvas, RectF rectF) {
        this.rectPath.rewind();
        this.rectPath.addRoundRect(rectF, rectF.width() / 2.0f, rectF.height() / 2.0f, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(this.rectPath);
        float alpha = this.photoImage.getAlpha();
        this.photoImage.setAlpha((this.currentMessageObject.isRoundOnce() ? 1.0f : 0.5f) * alpha);
        this.photoImage.draw(canvas);
        this.photoImage.setAlpha(alpha);
        canvas.restore();
        Paint themedPaint = getThemedPaint("paintChatTimeBackground");
        int alpha2 = themedPaint.getAlpha();
        themedPaint.setAlpha((int) (alpha2 * this.controlsAlpha * 0.4f));
        canvas.drawRoundRect(rectF, rectF.width() / 2.0f, rectF.height() / 2.0f, themedPaint);
        themedPaint.setAlpha(alpha2);
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
            int r6 = org.telegram.messenger.AndroidUtilities.m107dp(r6)
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
            int r6 = org.telegram.messenger.AndroidUtilities.m107dp(r6)
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
            int r1 = org.telegram.messenger.AndroidUtilities.m107dp(r2)
        L62:
            if (r0 != 0) goto L68
            int r0 = org.telegram.messenger.AndroidUtilities.m107dp(r2)
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
            int r2 = org.telegram.messenger.AndroidUtilities.m107dp(r6)
            if (r0 >= r2) goto L86
            int r6 = org.telegram.messenger.AndroidUtilities.m107dp(r6)
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
            float m107dp = 1.0f - ((i * 0.05f) / AndroidUtilities.m107dp(35));
            setScaleX(m107dp);
            setScaleY(m107dp);
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
                this.checkBoxTranslation = (int) Math.ceil((z2 ? CubicBezierInterpolator.EASE_OUT : CubicBezierInterpolator.EASE_IN).getInterpolation(this.checkBoxAnimationProgress) * AndroidUtilities.m107dp(35));
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
            int i2;
            boolean z;
            boolean z2;
            int i3;
            String str;
            String formatShortNumber;
            int i4;
            String str2;
            boolean z3;
            boolean z4;
            long j;
            CharacterStyle[] characterStyleArr;
            TLRPC$ReactionCount tLRPC$ReactionCount;
            boolean z5;
            TLRPC$MessagePeerReaction tLRPC$MessagePeerReaction;
            int i5;
            String str3;
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
                long j2 = ChatMessageCell.this.currentMessageObject != null ? ChatMessageCell.this.currentMessageObject.loadedFileSize : 0L;
                ChatMessageCell chatMessageCell = ChatMessageCell.this;
                if (chatMessageCell.accessibilityText == null || chatMessageCell.accessibilityTextUnread != z6 || ChatMessageCell.this.accessibilityTextContentUnread != z7 || ChatMessageCell.this.accessibilityTextFileSize != j2) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
                    if (chatMessageCell2.isChat && chatMessageCell2.currentUser != null && !ChatMessageCell.this.currentMessageObject.isOut()) {
                        spannableStringBuilder.append((CharSequence) UserObject.getUserName(ChatMessageCell.this.currentUser));
                        spannableStringBuilder.setSpan(new ProfileSpan(ChatMessageCell.this.currentUser), 0, spannableStringBuilder.length(), 33);
                        spannableStringBuilder.append('\n');
                    }
                    if (ChatMessageCell.this.drawForwardedName) {
                        int i6 = 0;
                        while (i6 < 2) {
                            if (ChatMessageCell.this.forwardedNameLayout[i6] != null && ChatMessageCell.this.forwardedNameLayout[i6].getText() != null) {
                                spannableStringBuilder.append(ChatMessageCell.this.forwardedNameLayout[i6].getText());
                                spannableStringBuilder.append(i6 == 0 ? " " : "\n");
                            }
                            i6++;
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
                        j = j2;
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        boolean isSending = ChatMessageCell.this.currentMessageObject.isSending();
                        j = j2;
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
                            } else {
                                spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrSentDate", C3632R.string.AccDescrSentDate, LocaleController.getString("TodayAt", C3632R.string.TodayAt) + " " + ((Object) ChatMessageCell.this.currentTimeString)));
                                spannableStringBuilder.append((CharSequence) ", ");
                                if (ChatMessageCell.this.currentMessageObject.isUnread()) {
                                    i5 = C3632R.string.AccDescrMsgUnread;
                                    str3 = "AccDescrMsgUnread";
                                } else {
                                    i5 = C3632R.string.AccDescrMsgRead;
                                    str3 = "AccDescrMsgRead";
                                }
                                spannableStringBuilder.append((CharSequence) LocaleController.getString(str3, i5));
                            }
                        }
                    } else {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReceivedDate", C3632R.string.AccDescrReceivedDate, LocaleController.getString("TodayAt", C3632R.string.TodayAt) + " " + ((Object) ChatMessageCell.this.currentTimeString)));
                    }
                    if (ChatMessageCell.this.getRepliesCount() > 0 && !ChatMessageCell.this.hasCommentLayout()) {
                        spannableStringBuilder.append((CharSequence) "\n");
                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfReplies", ChatMessageCell.this.getRepliesCount(), new Object[0]));
                    }
                    if (ChatMessageCell.this.currentMessageObject.messageOwner.reactions != null && ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results != null) {
                        String str4 = "";
                        if (ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.size() == 1) {
                            TLRPC$ReactionCount tLRPC$ReactionCount2 = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.get(0);
                            TLRPC$Reaction tLRPC$Reaction = tLRPC$ReactionCount2.reaction;
                            String str5 = tLRPC$Reaction instanceof TLRPC$TL_reactionEmoji ? ((TLRPC$TL_reactionEmoji) tLRPC$Reaction).emoticon : "";
                            int i7 = tLRPC$ReactionCount2.count;
                            if (i7 == 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                if (ChatMessageCell.this.currentMessageObject.messageOwner.reactions.recent_reactions == null || ChatMessageCell.this.currentMessageObject.messageOwner.reactions.recent_reactions.size() != 1 || (tLRPC$MessagePeerReaction = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.recent_reactions.get(0)) == null) {
                                    z5 = false;
                                } else {
                                    TLRPC$User user = MessagesController.getInstance(ChatMessageCell.this.currentAccount).getUser(Long.valueOf(MessageObject.getPeerId(tLRPC$MessagePeerReaction.peer_id)));
                                    z5 = UserObject.isUserSelf(user);
                                    if (user != null) {
                                        str4 = UserObject.getFirstName(user);
                                    }
                                }
                                if (z5) {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrYouReactedWith", C3632R.string.AccDescrYouReactedWith, str5));
                                } else {
                                    spannableStringBuilder.append((CharSequence) LocaleController.formatString("AccDescrReactedWith", C3632R.string.AccDescrReactedWith, str4, str5));
                                }
                            } else if (i7 > 1) {
                                spannableStringBuilder.append((CharSequence) "\n");
                                spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("AccDescrNumberOfPeopleReactions", tLRPC$ReactionCount2.count, str5));
                            }
                        } else {
                            spannableStringBuilder.append((CharSequence) LocaleController.getString("Reactions", C3632R.string.Reactions)).append((CharSequence) ": ");
                            int size = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                TLRPC$Reaction tLRPC$Reaction2 = ChatMessageCell.this.currentMessageObject.messageOwner.reactions.results.get(i8).reaction;
                                spannableStringBuilder.append((CharSequence) (tLRPC$Reaction2 instanceof TLRPC$TL_reactionEmoji ? ((TLRPC$TL_reactionEmoji) tLRPC$Reaction2).emoticon : "")).append((CharSequence) " ").append((CharSequence) (tLRPC$ReactionCount.count + ""));
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
                    chatMessageCell4.accessibilityTextUnread = z6;
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
                if (ChatMessageCell.this.useTranscribeButton) {
                    ChatMessageCell chatMessageCell5 = ChatMessageCell.this;
                    if (chatMessageCell5.transcribeButton != null) {
                        obtain.addChild(chatMessageCell5, 493);
                    }
                }
                if (i9 < 24) {
                    ChatMessageCell chatMessageCell6 = ChatMessageCell.this;
                    if (chatMessageCell6.isChat && chatMessageCell6.currentUser != null && !ChatMessageCell.this.currentMessageObject.isOut()) {
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
                        ChatMessageCell chatMessageCell7 = ChatMessageCell.this;
                        if (chatMessageCell7.captionLayout != null) {
                            Spannable spannable2 = (Spannable) chatMessageCell7.currentMessageObject.caption;
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
                if (ChatMessageCell.this.drawContact && !ChatMessageCell.this.contactRect.isEmpty()) {
                    obtain.addChild(ChatMessageCell.this, 492);
                    if (ChatMessageCell.this.contactButtons != null && ChatMessageCell.this.contactButtons.size() > 1) {
                        Iterator it3 = ChatMessageCell.this.contactButtons.iterator();
                        while (it3.hasNext()) {
                            InstantViewButton instantViewButton = (InstantViewButton) it3.next();
                            if (ChatMessageCell.this.drawContactView && instantViewButton.type == 5 && !instantViewButton.rect.isEmpty()) {
                                obtain.addChild(ChatMessageCell.this, 491);
                            }
                            if (ChatMessageCell.this.drawContactAdd && instantViewButton.type == 31 && !instantViewButton.rect.isEmpty()) {
                                obtain.addChild(ChatMessageCell.this, 490);
                            }
                            if (ChatMessageCell.this.drawContactSendMessage && instantViewButton.type == 30 && !instantViewButton.rect.isEmpty()) {
                                obtain.addChild(ChatMessageCell.this, 489);
                            }
                        }
                    }
                }
                if (ChatMessageCell.this.commentLayout != null) {
                    obtain.addChild(ChatMessageCell.this, 496);
                }
                if (ChatMessageCell.this.drawSideButton == 1 || ChatMessageCell.this.drawSideButton == 2) {
                    obtain.addChild(ChatMessageCell.this, 498);
                }
                ChatMessageCell chatMessageCell8 = ChatMessageCell.this;
                if (chatMessageCell8.replyNameLayout != null) {
                    obtain.addChild(chatMessageCell8, 497);
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
                this.rect.set((int) ChatMessageCell.this.additionalSideButtonStartX, (int) ChatMessageCell.this.additionalSideButtonStartY, ((int) ChatMessageCell.this.additionalSideButtonStartX) + AndroidUtilities.m107dp(40), ((int) ChatMessageCell.this.additionalSideButtonStartY) + AndroidUtilities.m107dp(32));
                obtain2.setBoundsInParent(this.rect);
                if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                    ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                }
                z2 = true;
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
                    ChatMessageCell chatMessageCell9 = ChatMessageCell.this;
                    if (chatMessageCell9.captionLayout == null) {
                        return null;
                    }
                    Spannable spannable3 = (Spannable) chatMessageCell9.currentMessageObject.caption;
                    ClickableSpan linkById = getLinkById(i, false);
                    if (linkById == null) {
                        return null;
                    }
                    int[] realSpanStartAndEnd = ChatMessageCell.this.getRealSpanStartAndEnd(spannable3, linkById);
                    obtain2.setText(spannable3.subSequence(realSpanStartAndEnd[0], realSpanStartAndEnd[1]).toString());
                    Iterator<MessageObject.TextLayoutBlock> it4 = ChatMessageCell.this.captionLayout.textLayoutBlocks.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z4 = true;
                            break;
                        }
                        MessageObject.TextLayoutBlock next = it4.next();
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
                            ChatMessageCell chatMessageCell10 = ChatMessageCell.this;
                            rect2.offset(chatMessageCell10.textX, chatMessageCell10.textY);
                            obtain2.setBoundsInParent(this.rect);
                            if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                                ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                            }
                            z4 = true;
                            this.rect.offset(iArr[0], iArr[1]);
                            obtain2.setBoundsInScreen(this.rect);
                        }
                    }
                    obtain2.setClassName("android.widget.TextView");
                    obtain2.setEnabled(z4);
                    obtain2.setClickable(z4);
                    obtain2.setLongClickable(z4);
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
                    Iterator<MessageObject.TextLayoutBlock> it5 = ChatMessageCell.this.currentMessageObject.textLayoutBlocks.iterator();
                    while (true) {
                        if (!it5.hasNext()) {
                            z3 = true;
                            break;
                        }
                        MessageObject.TextLayoutBlock next2 = it5.next();
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
                            ChatMessageCell chatMessageCell11 = ChatMessageCell.this;
                            rect4.offset(chatMessageCell11.textX, chatMessageCell11.textY);
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
                    this.rect.set(botButton2.f1797x, botButton2.f1798y, botButton2.f1797x + botButton2.width, botButton2.f1798y + botButton2.height);
                    this.rect.offset(ChatMessageCell.this.currentMessageObject.isOutOwner() ? (ChatMessageCell.this.getMeasuredWidth() - ChatMessageCell.this.widthForButtons) - AndroidUtilities.m107dp(10) : ChatMessageCell.this.backgroundDrawableLeft + AndroidUtilities.m107dp(ChatMessageCell.this.mediaBackground ? 1 : 7), ChatMessageCell.this.layoutHeight);
                    obtain2.setBoundsInParent(this.rect);
                    if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                        ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                    }
                    this.rect.offset(iArr[0], iArr[1]);
                    obtain2.setBoundsInScreen(this.rect);
                } else {
                    if (i >= 500) {
                        int i17 = i - 500;
                        if (i17 >= ChatMessageCell.this.pollButtons.size()) {
                            return null;
                        }
                        PollButton pollButton2 = (PollButton) ChatMessageCell.this.pollButtons.get(i17);
                        StringBuilder sb = new StringBuilder(pollButton2.title.getText());
                        if (ChatMessageCell.this.pollVoted) {
                            obtain2.setSelected(pollButton2.chosen);
                            sb.append(", ");
                            sb.append(pollButton2.percent);
                            sb.append("%");
                            if (ChatMessageCell.this.lastPoll != null && ChatMessageCell.this.lastPoll.quiz && (pollButton2.chosen || pollButton2.correct)) {
                                sb.append(", ");
                                if (pollButton2.correct) {
                                    i4 = C3632R.string.AccDescrQuizCorrectAnswer;
                                    str2 = "AccDescrQuizCorrectAnswer";
                                } else {
                                    i4 = C3632R.string.AccDescrQuizIncorrectAnswer;
                                    str2 = "AccDescrQuizIncorrectAnswer";
                                }
                                sb.append(LocaleController.getString(str2, i4));
                            }
                        } else {
                            obtain2.setClassName("android.widget.Button");
                        }
                        obtain2.setText(sb);
                        obtain2.setEnabled(true);
                        obtain2.addAction(16);
                        int i18 = pollButton2.f1800y + ChatMessageCell.this.namesOffset;
                        int m107dp = ChatMessageCell.this.backgroundWidth - AndroidUtilities.m107dp(76);
                        Rect rect5 = this.rect;
                        int i19 = pollButton2.f1799x;
                        rect5.set(i19, i18, m107dp + i19, pollButton2.height + i18);
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    } else if (i == 495) {
                        obtain2.setClassName("android.widget.Button");
                        obtain2.setEnabled(true);
                        obtain2.setText(LocaleController.getString("AccDescrQuizExplanation", C3632R.string.AccDescrQuizExplanation));
                        obtain2.addAction(16);
                        this.rect.set(ChatMessageCell.this.pollHintX - AndroidUtilities.m107dp(8), ChatMessageCell.this.pollHintY - AndroidUtilities.m107dp(8), ChatMessageCell.this.pollHintX + AndroidUtilities.m107dp(32), ChatMessageCell.this.pollHintY + AndroidUtilities.m107dp(32));
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
                    } else if (i != 492) {
                        if (i == 491) {
                            i2 = 491;
                        } else if (i == 490 || i == 489) {
                            i2 = 491;
                        } else if (i == 498) {
                            obtain2.setClassName("android.widget.ImageButton");
                            obtain2.setEnabled(true);
                            ChatMessageCell chatMessageCell12 = ChatMessageCell.this;
                            if (chatMessageCell12.isOpenChatByShare(chatMessageCell12.currentMessageObject)) {
                                obtain2.setContentDescription(LocaleController.getString("AccDescrOpenChat", C3632R.string.AccDescrOpenChat));
                            } else {
                                obtain2.setContentDescription(LocaleController.getString("ShareFile", C3632R.string.ShareFile));
                            }
                            obtain2.addAction(16);
                            this.rect.set((int) ChatMessageCell.this.sideStartX, (int) ChatMessageCell.this.sideStartY, ((int) ChatMessageCell.this.sideStartX) + AndroidUtilities.m107dp(40), ((int) ChatMessageCell.this.sideStartY) + AndroidUtilities.m107dp(32));
                            obtain2.setBoundsInParent(this.rect);
                            if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                                ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                            }
                            z2 = true;
                            this.rect.offset(iArr[0], iArr[1]);
                            obtain2.setBoundsInScreen(this.rect);
                            obtain2.setClickable(true);
                        } else {
                            z2 = true;
                            if (i == 497) {
                                obtain2.setEnabled(true);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(LocaleController.getString("Reply", C3632R.string.Reply));
                                sb2.append(", ");
                                StaticLayout staticLayout = ChatMessageCell.this.replyNameLayout;
                                if (staticLayout != null) {
                                    sb2.append(staticLayout.getText());
                                    sb2.append(", ");
                                }
                                StaticLayout staticLayout2 = ChatMessageCell.this.replyTextLayout;
                                if (staticLayout2 != null) {
                                    sb2.append(staticLayout2.getText());
                                }
                                obtain2.setContentDescription(sb2.toString());
                                obtain2.addAction(16);
                                Rect rect6 = this.rect;
                                ChatMessageCell chatMessageCell13 = ChatMessageCell.this;
                                int i20 = chatMessageCell13.replyStartX;
                                ChatMessageCell chatMessageCell14 = ChatMessageCell.this;
                                rect6.set(i20, chatMessageCell13.replyStartY, Math.max(chatMessageCell13.replyNameWidth, ChatMessageCell.this.replyTextWidth) + i20, chatMessageCell14.replyStartY + ((int) chatMessageCell14.replyHeight));
                                obtain2.setBoundsInParent(this.rect);
                                if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                                    ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                                }
                                z2 = true;
                                this.rect.offset(iArr[0], iArr[1]);
                                obtain2.setBoundsInScreen(this.rect);
                                obtain2.setClickable(true);
                            } else if (i == 494) {
                                obtain2.setEnabled(true);
                                StringBuilder sb3 = new StringBuilder();
                                if (ChatMessageCell.this.forwardedNameLayout[0] != null && ChatMessageCell.this.forwardedNameLayout[1] != null) {
                                    int i21 = 0;
                                    while (i21 < 2) {
                                        sb3.append(ChatMessageCell.this.forwardedNameLayout[i21].getText());
                                        sb3.append(i21 == 0 ? " " : "\n");
                                        i21++;
                                    }
                                }
                                obtain2.setContentDescription(sb3.toString());
                                obtain2.addAction(16);
                                int min = (int) Math.min(ChatMessageCell.this.forwardNameX - ChatMessageCell.this.forwardNameOffsetX[0], ChatMessageCell.this.forwardNameX - ChatMessageCell.this.forwardNameOffsetX[1]);
                                this.rect.set(min, ChatMessageCell.this.forwardNameY, ChatMessageCell.this.forwardedNameWidth + min, ChatMessageCell.this.forwardNameY + ChatMessageCell.this.forwardHeight);
                                obtain2.setBoundsInParent(this.rect);
                                if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                                    ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                                }
                                z2 = true;
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
                                z2 = true;
                                this.rect.offset(iArr[0], iArr[1]);
                                obtain2.setBoundsInScreen(this.rect);
                                obtain2.setClickable(true);
                            } else if (i == 493) {
                                obtain2.setClassName("android.widget.Button");
                                obtain2.setEnabled(true);
                                if (ChatMessageCell.this.currentMessageObject.isVoiceTranscriptionOpen()) {
                                    i3 = C3632R.string.AccActionCloseTranscription;
                                    str = "AccActionCloseTranscription";
                                } else {
                                    i3 = C3632R.string.AccActionOpenTranscription;
                                    str = "AccActionOpenTranscription";
                                }
                                obtain2.setText(LocaleController.getString(str, i3));
                                obtain2.addAction(16);
                                ChatMessageCell chatMessageCell15 = ChatMessageCell.this;
                                if (chatMessageCell15.transcribeButton != null) {
                                    this.rect.set((int) chatMessageCell15.transcribeX, (int) ChatMessageCell.this.transcribeY, (int) (ChatMessageCell.this.transcribeX + ChatMessageCell.this.transcribeButton.width()), (int) (ChatMessageCell.this.transcribeY + ChatMessageCell.this.transcribeButton.height()));
                                }
                                obtain2.setBoundsInParent(this.rect);
                                z2 = true;
                                this.rect.offset(iArr[0], iArr[1]);
                                obtain2.setBoundsInScreen(this.rect);
                                obtain2.setClickable(true);
                            }
                        }
                        int i22 = i != i2 ? i == 490 ? 31 : 30 : 5;
                        for (int i23 = 0; i23 < ChatMessageCell.this.contactButtons.size(); i23++) {
                            InstantViewButton instantViewButton2 = (InstantViewButton) ChatMessageCell.this.contactButtons.get(i23);
                            if (instantViewButton2.type == i22) {
                                obtain2.setClassName("android.widget.Button");
                                obtain2.setEnabled(true);
                                if (instantViewButton2.layout != null) {
                                    obtain2.setText(instantViewButton2.layout.getText());
                                }
                                obtain2.addAction(16);
                                instantViewButton2.rect.round(this.rect);
                                obtain2.setBoundsInParent(this.rect);
                                if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                                    ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                                }
                                z = true;
                                this.rect.offset(iArr[0], iArr[1]);
                                obtain2.setBoundsInScreen(this.rect);
                                obtain2.setClickable(true);
                            }
                        }
                    } else {
                        obtain2.setClassName("android.widget.Button");
                        obtain2.setEnabled(true);
                        if (ChatMessageCell.this.titleLayout != null) {
                            obtain2.setText(ChatMessageCell.this.titleLayout.getText());
                        }
                        obtain2.addAction(16);
                        ChatMessageCell.this.contactRect.round(this.rect);
                        if (ChatMessageCell.this.contactButtons != null && ChatMessageCell.this.contactButtons.size() > 1) {
                            InstantViewButton instantViewButton3 = (InstantViewButton) ChatMessageCell.this.contactButtons.get(0);
                            if (!instantViewButton3.rect.isEmpty()) {
                                Rect rect7 = this.rect;
                                rect7.set(rect7.left, rect7.top, rect7.right, (int) (rect7.bottom - instantViewButton3.rect.height()));
                            }
                        }
                        obtain2.setBoundsInParent(this.rect);
                        if (ChatMessageCell.this.accessibilityVirtualViewBounds.get(i) == null || !((Rect) ChatMessageCell.this.accessibilityVirtualViewBounds.get(i)).equals(this.rect)) {
                            ChatMessageCell.this.accessibilityVirtualViewBounds.put(i, new Rect(this.rect));
                        }
                        z = true;
                        this.rect.offset(iArr[0], iArr[1]);
                        obtain2.setBoundsInScreen(this.rect);
                        obtain2.setClickable(true);
                    }
                    obtain2.setFocusable(z);
                    obtain2.setVisibleToUser(z);
                    return obtain2;
                }
                z = true;
                obtain2.setFocusable(z);
                obtain2.setVisibleToUser(z);
                return obtain2;
            }
            z = z2;
            obtain2.setFocusable(z);
            obtain2.setVisibleToUser(z);
            return obtain2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:101:0x021c, code lost:
            if (r7.this$0.currentMessageObject.messageOwner.reply_to.reply_from == null) goto L4;
         */
        @Override // android.view.accessibility.AccessibilityNodeProvider
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean performAction(int r8, int r9, android.os.Bundle r10) {
            /*
                Method dump skipped, instructions count: 770
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

    public void setImageCoords(RectF rectF) {
        setImageCoords(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    public void setImageCoords(float f, float f2, float f3, float f4) {
        this.photoImage.setImageCoords(f, f2, f3, f4);
        int i = this.documentAttachType;
        if (i == 4 || i == 2) {
            this.videoButtonX = (int) (this.photoImage.getImageX() + AndroidUtilities.m107dp(8));
            int imageY = (int) (this.photoImage.getImageY() + AndroidUtilities.m107dp(8));
            this.videoButtonY = imageY;
            RadialProgress2 radialProgress2 = this.videoRadialProgress;
            int i2 = this.videoButtonX;
            radialProgress2.setProgressRect(i2, imageY, AndroidUtilities.m107dp(24) + i2, this.videoButtonY + AndroidUtilities.m107dp(24));
            this.buttonX = (int) (f + ((this.photoImage.getImageWidth() - AndroidUtilities.m107dp(48)) / 2.0f));
            int imageY2 = (int) (this.photoImage.getImageY() + ((this.photoImage.getImageHeight() - AndroidUtilities.m107dp(48)) / 2.0f));
            this.buttonY = imageY2;
            RadialProgress2 radialProgress22 = this.radialProgress;
            int i3 = this.buttonX;
            radialProgress22.setProgressRect(i3, imageY2, AndroidUtilities.m107dp(48) + i3, this.buttonY + AndroidUtilities.m107dp(48));
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
                return (int) (i - (AndroidUtilities.m107dp(6) * getVideoTranscriptionProgress()));
            }
            return i - AndroidUtilities.m107dp(6);
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
                return (int) (i + (AndroidUtilities.m107dp(6) * getVideoTranscriptionProgress()));
            }
            return i + AndroidUtilities.m107dp(6);
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
        public boolean animateRecommendationsExpanded;
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
        public boolean lastDrawingRecommendationsExpanded;
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
            ChatMessageCell chatMessageCell;
            ChannelRecommendationsCell channelRecommendationsCell;
            boolean z = true;
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
            this.lastDrawingTextBlocks = ChatMessageCell.this.currentMessageObject != null ? ChatMessageCell.this.currentMessageObject.textLayoutBlocks : null;
            this.lastDrawingEdited = ChatMessageCell.this.edited;
            this.lastDrawingCaptionX = ChatMessageCell.this.captionX;
            ChatMessageCell chatMessageCell2 = ChatMessageCell.this;
            this.lastDrawingCaptionY = chatMessageCell2.captionY;
            this.lastDrawingCaptionLayout = chatMessageCell2.captionLayout;
            this.lastDrawBotButtons.clear();
            if (!ChatMessageCell.this.botButtons.isEmpty()) {
                this.lastDrawBotButtons.addAll(ChatMessageCell.this.botButtons);
            }
            this.lastDrawingSmallImage = ChatMessageCell.this.isSmallImage;
            ChatMessageCell chatMessageCell3 = ChatMessageCell.this;
            this.lastDrawingLinkPreviewHeight = chatMessageCell3.linkPreviewHeight;
            this.lastDrawingLinkAbove = chatMessageCell3.linkPreviewAbove;
            this.lastDrawingRecommendationsExpanded = chatMessageCell3.currentMessageObject != null && ChatMessageCell.this.currentMessageObject.type == 27 && (channelRecommendationsCell = ChatMessageCell.this.channelRecommendationsCell) != null && channelRecommendationsCell.isExpanded();
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
            ChatMessageCell chatMessageCell4 = ChatMessageCell.this;
            this.lastIsPinned = chatMessageCell4.isPinned;
            this.lastSignMessage = chatMessageCell4.lastPostAuthor;
            this.lastDrawBackground = ChatMessageCell.this.drawBackground;
            this.lastUseTranscribeButton = ChatMessageCell.this.useTranscribeButton;
            this.lastButtonX = ChatMessageCell.this.buttonX;
            this.lastButtonY = ChatMessageCell.this.buttonY;
            this.lastMediaOffsetY = ChatMessageCell.this.mediaOffsetY;
            this.lastDrawTime = !ChatMessageCell.this.forceNotDrawTime;
            ChatMessageCell chatMessageCell5 = ChatMessageCell.this;
            this.lastTimeX = chatMessageCell5.timeX;
            this.lastTimeLayout = chatMessageCell5.timeLayout;
            ChatMessageCell chatMessageCell6 = ChatMessageCell.this;
            this.lastTimeWidth = chatMessageCell6.timeWidth;
            this.lastShouldDrawTimeOnMedia = chatMessageCell6.shouldDrawTimeOnMedia();
            this.lastTopOffset = ChatMessageCell.this.getTopMediaOffset();
            this.lastShouldDrawMenuDrawable = ChatMessageCell.this.shouldDrawMenuDrawable();
            this.lastLocatinIsExpired = ChatMessageCell.this.locationExpired;
            this.lastIsPlayingRound = ChatMessageCell.this.isPlayingRound;
            ChatMessageCell chatMessageCell7 = ChatMessageCell.this;
            this.lastDrawingTextY = chatMessageCell7.textY;
            int i = chatMessageCell7.textX;
            this.lastDrawingLinkPreviewY = chatMessageCell7.linkPreviewY;
            this.lastDrawnForwardedNameLayout[0] = ChatMessageCell.this.forwardedNameLayout[0];
            this.lastDrawnForwardedNameLayout[1] = ChatMessageCell.this.forwardedNameLayout[1];
            if (ChatMessageCell.this.currentMessageObject == null || !ChatMessageCell.this.currentMessageObject.needDrawForwarded()) {
                z = false;
            }
            this.lastDrawnForwardedName = z;
            this.lastForwardNameX = ChatMessageCell.this.forwardNameX;
            this.lastForwardedNamesOffset = ChatMessageCell.this.namesOffset;
            this.lastForwardNameWidth = ChatMessageCell.this.forwardedNameWidth;
            this.lastBackgroundLeft = ChatMessageCell.this.getCurrentBackgroundLeft();
            Theme.MessageDrawable messageDrawable2 = ChatMessageCell.this.currentBackgroundDrawable;
            if (messageDrawable2 != null) {
                this.lastBackgroundRight = messageDrawable2.getBounds().right;
            }
            this.lastTextXOffset = ChatMessageCell.this.currentMessageObject != null ? ChatMessageCell.this.currentMessageObject.textXOffset : 0.0f;
            this.lastDrawingReplyTextHeight = ChatMessageCell.this.replyTextHeight;
            ChatMessageCell chatMessageCell8 = ChatMessageCell.this;
            this.lastDrawnReplyTextLayout = chatMessageCell8.replyTextLayout;
            this.lastReplyTextXOffset = chatMessageCell8.replyTextOffset;
            chatMessageCell8.reactionsLayoutInBubble.recordDrawingState();
            if (ChatMessageCell.this.replyNameLayout != null) {
                this.lastDrawReplyY = chatMessageCell.replyStartY;
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

        /* JADX WARN: Removed duplicated region for block: B:100:0x02a9  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x02b4  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x032e  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x037c  */
        /* JADX WARN: Removed duplicated region for block: B:152:0x0382  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x03cb  */
        /* JADX WARN: Removed duplicated region for block: B:180:0x041b  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x0428  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x042f  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x04c6  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x04db  */
        /* JADX WARN: Removed duplicated region for block: B:215:0x04e1  */
        /* JADX WARN: Removed duplicated region for block: B:224:0x052b  */
        /* JADX WARN: Removed duplicated region for block: B:227:0x0537  */
        /* JADX WARN: Removed duplicated region for block: B:230:0x0543  */
        /* JADX WARN: Removed duplicated region for block: B:233:0x0551  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x055e  */
        /* JADX WARN: Removed duplicated region for block: B:239:0x056d  */
        /* JADX WARN: Removed duplicated region for block: B:244:0x05a5  */
        /* JADX WARN: Removed duplicated region for block: B:247:0x05b2  */
        /* JADX WARN: Removed duplicated region for block: B:258:0x05e4  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x023e  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0278  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0285  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0290  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean animateChange() {
            /*
                Method dump skipped, instructions count: 1527
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
            this.animateRecommendationsExpanded = false;
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
        return (int) (f + (i > 0 ? i - AndroidUtilities.m107dp(32) : this.nameLayoutWidth) + AndroidUtilities.m107dp(2) + (AndroidUtilities.m107dp(20) / 2));
    }

    public int getNameStatusY() {
        float f = this.nameY;
        StaticLayout staticLayout = this.nameLayout;
        return (int) (f + ((staticLayout == null ? 0 : staticLayout.getHeight()) / 2));
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        ChannelRecommendationsCell channelRecommendationsCell = this.channelRecommendationsCell;
        if (channelRecommendationsCell != null) {
            channelRecommendationsCell.computeScroll();
        }
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i, int i2) {
        if (this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = new int[3];
            this.adaptiveEmojiColorFilter = new ColorFilter[3];
        }
        if (i2 != this.adaptiveEmojiColor[i] || this.adaptiveEmojiColorFilter[i] == null) {
            ColorFilter[] colorFilterArr = this.adaptiveEmojiColorFilter;
            this.adaptiveEmojiColor[i] = i2;
            colorFilterArr[i] = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter[i];
    }

    public boolean needDrawAvatar() {
        MessageObject messageObject;
        MessageObject messageObject2;
        return !(!this.isChat || this.isSavedPreviewChat || this.isThreadPost || (messageObject2 = this.currentMessageObject) == null || messageObject2.isOutOwner() || !this.currentMessageObject.needDrawAvatar()) || ((messageObject = this.currentMessageObject) != null && messageObject.forceAvatar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean drawPhotoImage(Canvas canvas) {
        return this.photoImage.draw(canvas);
    }
}
