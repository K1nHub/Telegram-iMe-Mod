package org.telegram.p043ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.net.IDN;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
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
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
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
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.AvatarsImageView;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BitmapShaderTools;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.ChatActivityEnterView;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.CustomPopupMenu;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.EmojiPacksAlert;
import org.telegram.p043ui.Components.HintView;
import org.telegram.p043ui.Components.InstantCameraView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.MediaActivity;
import org.telegram.p043ui.Components.MentionsContainerView;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RadialProgress;
import org.telegram.p043ui.Components.Reactions.AnimatedEmojiEffect;
import org.telegram.p043ui.Components.Reactions.ReactionImageHolder;
import org.telegram.p043ui.Components.Reactions.ReactionsEffectOverlay;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.Reactions.ReactionsUtils;
import org.telegram.p043ui.Components.ReactionsContainerLayout;
import org.telegram.p043ui.Components.ScaleStateListAnimator;
import org.telegram.p043ui.Components.ShareAlert;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.TranslateAlert2;
import org.telegram.p043ui.Components.URLSpanMono;
import org.telegram.p043ui.Components.URLSpanNoUnderline;
import org.telegram.p043ui.Components.URLSpanReplacement;
import org.telegram.p043ui.Components.URLSpanUserMention;
import org.telegram.p043ui.Components.voip.CellFlickerDrawable;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.EmojiAnimationsOverlay;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.MessageStatisticActivity;
import org.telegram.p043ui.PinchToZoomHelper;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.Stories.DialogStoriesCell;
import org.telegram.p043ui.Stories.PeerStoriesView;
import org.telegram.p043ui.Stories.SelfStoriesPreviewView;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoryCaptionView;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.p043ui.Stories.recorder.CaptionContainerView;
import org.telegram.p043ui.Stories.recorder.DraftsController;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
import org.telegram.p043ui.WrappedResourceProvider;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
import org.telegram.tgnet.TLRPC$TL_channels_sendAsPeers;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_messageEntityCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_textWithEntities;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.p042tl.TL_stories$MediaArea;
import org.telegram.tgnet.p042tl.TL_stories$PeerStories;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import org.telegram.tgnet.p042tl.TL_stories$StoryViews;
import org.telegram.tgnet.p042tl.TL_stories$TL_mediaAreaSuggestedReaction;
import org.telegram.tgnet.p042tl.TL_stories$TL_storiesStealthMode;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_editStory;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_exportStoryLink;
import org.telegram.tgnet.p042tl.TL_stories$TL_storyItemSkipped;
import org.telegram.tgnet.p042tl.TL_stories$TL_storyViews;
/* renamed from: org.telegram.ui.Stories.PeerStoriesView */
/* loaded from: classes6.dex */
public class PeerStoriesView extends SizeNotifierFrameLayout implements NotificationCenter.NotificationCenterDelegate {
    public static boolean DISABLE_STORY_REPOSTING = false;
    private static int activeCount;
    private boolean BIG_SCREEN;
    private boolean allowDrawSurface;
    Runnable allowDrawSurfaceRunnable;
    private boolean allowRepost;
    private boolean allowShare;
    private boolean allowShareLink;
    private float alpha;
    boolean animateKeyboardOpening;
    private float animatingKeyboardHeight;
    private boolean attachedToWindow;
    private final AvatarDrawable avatarDrawable;
    private final BitmapShaderTools bitmapShaderTools;
    private final LinearLayout bottomActionsLinearLayout;
    private Runnable cancellableViews;
    private ValueAnimator changeBoundAnimator;
    ChatActivityEnterView chatActivityEnterView;
    private ChatAttachAlert chatAttachAlert;
    boolean checkBlackoutMode;
    private int classGuid;
    int count;
    private int currentAccount;
    private long currentImageTime;
    public final StoryItemHolder currentStory;
    ArrayList<Integer> day;
    Delegate delegate;
    private boolean deletedPeer;
    private long dialogId;
    ArrayList<TLRPC$Document> documentsToPrepare;
    private boolean drawAnimatedEmojiAsMovingReaction;
    private boolean drawReactionEffect;
    public boolean editOpened;
    ActionBarMenuSubItem editStoryItem;
    private boolean editedPrivacy;
    private EmojiAnimationsOverlay emojiAnimationsOverlay;
    private AnimatedEmojiEffect emojiReactionEffect;
    private int enterViewBottomOffset;
    private StoryFailView failView;
    private ViewPropertyAnimator failViewAnimator;
    public boolean forceUpdateOffsets;
    PeerHeaderView headerView;
    private boolean imageChanged;
    private final ImageReceiver imageReceiver;
    boolean inBlackoutMode;
    Paint inputBackgroundPaint;
    private InstantCameraView instantCameraView;
    boolean isActive;
    private boolean isCaptionPartVisible;
    boolean isChannel;
    private boolean isEditing;
    private boolean isFailed;
    private boolean isLongPressed;
    boolean isPremiumBlocked;
    private boolean isRecording;
    boolean isSelf;
    private boolean isUploading;
    private boolean isVisible;
    ValueAnimator keyboardAnimator;
    public boolean keyboardVisible;
    float lastAnimatingKeyboardHeight;
    private long lastDrawTime;
    int lastKeyboardHeight;
    private boolean lastNoThumb;
    int lastOpenedKeyboardHeight;
    private final ImageReceiver leftPreloadImageReceiver;
    private final FrameLayout likeButtonContainer;
    private ReactionsContainerLayout likesReactionLayout;
    private float likesReactionShowProgress;
    private boolean likesReactionShowing;
    private AnimatedFloat linesAlpha;
    private int linesCount;
    private int linesPosition;
    private int listPosition;
    private HintView mediaBanTooltip;
    private MentionsContainerView mentionContainer;
    private boolean messageSent;
    private boolean movingReaction;
    private int movingReactionFromSize;
    private int movingReactionFromX;
    private int movingReactionFromY;
    private float movingReactionProgress;
    private final FrameLayout muteIconContainer;
    private final RLottieImageView muteIconView;
    private float muteIconViewAlpha;
    private final ImageView noSoundIconView;
    final AnimationNotificationsLocker notificationsLocker;
    private Runnable onImageReceiverThumbLoaded;
    private final ImageView optionsIconView;
    private ValueAnimator outAnimator;
    private float outT;
    RoundRectOutlineProvider outlineProvider;
    private boolean paused;
    public PinchToZoomHelper pinchToZoomHelper;
    final VideoPlayerSharedScope playerSharedScope;
    CustomPopupMenu popupMenu;
    private final ArrayList<ReactionImageHolder> preloadReactionHolders;
    private LinearLayout premiumBlockedText;
    private TextView premiumBlockedText1;
    private TextView premiumBlockedText2;
    private float prevToHideProgress;
    private final StoryPrivacyButton privacyButton;
    private HintView2 privacyHint;
    float progressToDismiss;
    private AnimatedFloat progressToHideInterface;
    float progressToKeyboard;
    AnimatedFloat progressToRecording;
    float progressToReply;
    AnimatedFloat progressToStickerExpanded;
    AnimatedFloat progressToTextA;
    private ImageReceiver reactionEffectImageReceiver;
    private AnimatedEmojiDrawable reactionMoveDrawable;
    private ImageReceiver reactionMoveImageReceiver;
    private int reactionsContainerIndex;
    ReactionsContainerLayout reactionsContainerLayout;
    private AnimatedTextView.AnimatedTextDrawable reactionsCounter;
    private AnimatedFloat reactionsCounterProgress;
    private boolean reactionsCounterVisible;
    private HintView2 reactionsLongpressTooltip;
    private Runnable reactionsTooltipRunnable;
    private int realKeyboardHeight;
    private TextView replyDisabledTextView;
    private ImageView repostButton;
    private FrameLayout repostButtonContainer;
    private AnimatedTextView.AnimatedTextDrawable repostCounter;
    private AnimatedFloat repostCounterProgress;
    private boolean repostCounterVisible;
    private final Theme.ResourcesProvider resourcesProvider;
    private final ImageReceiver rightPreloadImageReceiver;
    private int selectedPosition;
    private View selfAvatarsContainer;
    private AvatarsImageView selfAvatarsView;
    private TextView selfStatusView;
    private FrameLayout selfView;
    public ShareAlert shareAlert;
    private final ImageView shareButton;
    final SharedResources sharedResources;
    private int shiftDp;
    private final Runnable showTapToSoundHint;
    boolean showViewsProgress;
    private HintView2 soundTooltip;
    private boolean stealthModeIsActive;
    StoriesController storiesController;
    private StoriesLikeButton storiesLikeButton;
    private StoryMediaAreasView storyAreasView;
    private final StoryCaptionView storyCaptionView;
    public FrameLayout storyContainer;
    private CaptionContainerView storyEditCaptionView;
    final ArrayList<TL_stories$StoryItem> storyItems;
    private final StoryLinesDrawable storyLines;
    private StoryPositionView storyPositionView;
    private final StoryViewer storyViewer;
    private boolean switchEventSent;
    private int totalStoriesCount;
    public boolean unsupported;
    private FrameLayout unsupportedContainer;
    Runnable updateStealthModeTimer;
    final ArrayList<StoriesController.UploadingStory> uploadingStories;
    ArrayList<Uri> uriesToPrepare;
    private boolean userCanSeeViews;
    TL_stories$PeerStories userStories;
    public long videoDuration;
    private float viewsThumbAlpha;
    private SelfStoriesPreviewView.ImageHolder viewsThumbImageReceiver;
    private float viewsThumbScale;

    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {
        int getKeyboardHeight();

        float getProgressToDismiss();

        boolean isClosed();

        void onPeerSelected(long j, int i);

        void preparePlayer(ArrayList<TLRPC$Document> arrayList, ArrayList<Uri> arrayList2);

        boolean releasePlayer(Runnable runnable);

        void requestAdjust(boolean z);

        void requestPlayer(TLRPC$Document tLRPC$Document, Uri uri, long j, VideoPlayerSharedScope videoPlayerSharedScope);

        void setAllowTouchesByViewPager(boolean z);

        void setBulletinIsVisible(boolean z);

        void setHideEnterViewProgress(float f);

        void setIsCaption(boolean z);

        void setIsCaptionPartVisible(boolean z);

        void setIsHintVisible(boolean z);

        void setIsInPinchToZoom(boolean z);

        void setIsInSelectionMode(boolean z);

        void setIsLikesReaction(boolean z);

        void setIsRecording(boolean z);

        void setIsSwiping(boolean z);

        void setIsWaiting(boolean z);

        void setKeyboardVisible(boolean z);

        void setPopupIsVisible(boolean z);

        void setTranslating(boolean z);

        void shouldSwitchToNext();

        void showDialog(Dialog dialog);

        void switchToNextAndRemoveCurrentPeer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean drawLinesAsCounter() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hideCaptionWithInterface() {
        return true;
    }

    public boolean isSelectedPeer() {
        return false;
    }

    static /* synthetic */ long access$2714(PeerStoriesView peerStoriesView, long j) {
        long j2 = peerStoriesView.currentImageTime + j;
        peerStoriesView.currentImageTime = j2;
        return j2;
    }

    public StoryViewer getStoryViewer() {
        return this.storyViewer;
    }

    public PeerStoriesView(final Context context, final StoryViewer storyViewer, final SharedResources sharedResources, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.allowDrawSurface = true;
        this.preloadReactionHolders = new ArrayList<>();
        this.shiftDp = -5;
        this.alpha = 1.0f;
        StoryItemHolder storyItemHolder = new StoryItemHolder();
        this.currentStory = storyItemHolder;
        this.progressToKeyboard = -1.0f;
        this.progressToDismiss = -1.0f;
        this.lastAnimatingKeyboardHeight = -1.0f;
        this.classGuid = ConnectionsManager.generateClassGuid();
        this.progressToHideInterface = new AnimatedFloat(this);
        this.linesAlpha = new AnimatedFloat(this);
        this.pinchToZoomHelper = new PinchToZoomHelper();
        this.muteIconViewAlpha = 1.0f;
        this.updateStealthModeTimer = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$new$32();
            }
        };
        this.showTapToSoundHint = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$new$36();
            }
        };
        this.uriesToPrepare = new ArrayList<>();
        this.documentsToPrepare = new ArrayList<>();
        this.allowDrawSurfaceRunnable = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView.30
            @Override // java.lang.Runnable
            public void run() {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                if (peerStoriesView.isActive && peerStoriesView.allowDrawSurface) {
                    PeerStoriesView.this.delegate.setIsSwiping(false);
                }
            }
        };
        this.progressToRecording = new AnimatedFloat(this);
        this.progressToTextA = new AnimatedFloat(this);
        this.progressToStickerExpanded = new AnimatedFloat(this);
        this.pinchToZoomHelper.setCallback(new PinchToZoomHelper.Callback() { // from class: org.telegram.ui.Stories.PeerStoriesView.1
            @Override // org.telegram.p043ui.PinchToZoomHelper.Callback
            public /* synthetic */ TextureView getCurrentTextureView() {
                return PinchToZoomHelper.Callback.CC.$default$getCurrentTextureView(this);
            }

            @Override // org.telegram.p043ui.PinchToZoomHelper.Callback
            public void onZoomStarted(MessageObject messageObject) {
                PeerStoriesView.this.delegate.setIsInPinchToZoom(true);
            }

            @Override // org.telegram.p043ui.PinchToZoomHelper.Callback
            public void onZoomFinished(MessageObject messageObject) {
                PeerStoriesView.this.delegate.setIsInPinchToZoom(false);
            }
        });
        this.playerSharedScope = new VideoPlayerSharedScope();
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.storyItems = new ArrayList<>();
        this.uploadingStories = new ArrayList<>();
        ImageReceiver imageReceiver = new ImageReceiver() { // from class: org.telegram.ui.Stories.PeerStoriesView.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.ImageReceiver
            public boolean setImageBitmapByKey(Drawable drawable, String str, int i, boolean z, int i2) {
                boolean imageBitmapByKey = super.setImageBitmapByKey(drawable, str, i, z, i2);
                if (i == 1 && PeerStoriesView.this.onImageReceiverThumbLoaded != null) {
                    PeerStoriesView.this.onImageReceiverThumbLoaded.run();
                    PeerStoriesView.this.onImageReceiverThumbLoaded = null;
                }
                return imageBitmapByKey;
            }
        };
        this.imageReceiver = imageReceiver;
        imageReceiver.setCrossfadeWithOldImage(false);
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        imageReceiver.ignoreNotifications = true;
        imageReceiver.setFileLoadingPriority(0);
        ImageReceiver imageReceiver2 = new ImageReceiver(this);
        this.reactionEffectImageReceiver = imageReceiver2;
        imageReceiver2.setAllowLoadingOnAttachedOnly(true);
        ImageReceiver imageReceiver3 = this.reactionEffectImageReceiver;
        imageReceiver3.ignoreNotifications = true;
        imageReceiver3.setFileLoadingPriority(3);
        ImageReceiver imageReceiver4 = new ImageReceiver(this);
        this.reactionMoveImageReceiver = imageReceiver4;
        imageReceiver4.setAllowLoadingOnAttachedOnly(true);
        ImageReceiver imageReceiver5 = this.reactionMoveImageReceiver;
        imageReceiver5.ignoreNotifications = true;
        imageReceiver5.setFileLoadingPriority(3);
        ImageReceiver imageReceiver6 = new ImageReceiver();
        this.leftPreloadImageReceiver = imageReceiver6;
        imageReceiver6.setAllowLoadingOnAttachedOnly(true);
        imageReceiver6.ignoreNotifications = true;
        imageReceiver6.setFileLoadingPriority(0);
        ImageReceiver imageReceiver7 = new ImageReceiver();
        this.rightPreloadImageReceiver = imageReceiver7;
        imageReceiver7.setAllowLoadingOnAttachedOnly(true);
        imageReceiver7.ignoreNotifications = true;
        imageReceiver7.setFileLoadingPriority(0);
        imageReceiver.setPreloadingReceivers(Arrays.asList(imageReceiver6, imageReceiver7));
        this.avatarDrawable = new AvatarDrawable();
        this.storyViewer = storyViewer;
        this.sharedResources = sharedResources;
        this.bitmapShaderTools = sharedResources.bitmapShaderTools;
        this.storiesController = MessagesController.getInstance(UserConfig.selectedAccount).getStoriesController();
        sharedResources.dimPaint.setColor(-16777216);
        this.inputBackgroundPaint = new Paint(1);
        this.resourcesProvider = resourcesProvider;
        setClipChildren(false);
        this.storyAreasView = new StoryMediaAreasView(context, this.storyContainer, resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.3
            @Override // org.telegram.p043ui.Stories.StoryMediaAreasView
            protected void onHintVisible(boolean z) {
                Delegate delegate = PeerStoriesView.this.delegate;
                if (delegate != null) {
                    delegate.setIsHintVisible(z);
                }
            }

            @Override // org.telegram.p043ui.Stories.StoryMediaAreasView
            protected void presentFragment(BaseFragment baseFragment) {
                StoryViewer storyViewer2 = storyViewer;
                if (storyViewer2 != null) {
                    storyViewer2.presentFragment(baseFragment);
                }
            }

            @Override // org.telegram.p043ui.Stories.StoryMediaAreasView
            public void showEffect(StoryReactionWidgetView storyReactionWidgetView) {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                if (!peerStoriesView.isSelf && peerStoriesView.currentStory.storyItem != null) {
                    ReactionsLayoutInBubble.VisibleReaction fromTLReaction = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(storyReactionWidgetView.mediaArea.reaction);
                    if (!Objects.equals(fromTLReaction, ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(PeerStoriesView.this.currentStory.storyItem.sent_reaction))) {
                        PeerStoriesView.this.likeStory(fromTLReaction);
                    }
                }
                storyReactionWidgetView.performHapticFeedback(3);
                storyReactionWidgetView.playAnimation();
                PeerStoriesView.this.emojiAnimationsOverlay.showAnimationForWidget(storyReactionWidgetView);
            }

            @Override // org.telegram.p043ui.Stories.StoryMediaAreasView
            protected Bitmap getPlayingBitmap() {
                return PeerStoriesView.this.getPlayingBitmap();
            }
        };
        C72514 c72514 = new C72514(context, sharedResources, storyViewer);
        this.storyContainer = c72514;
        c72514.setClipChildren(false);
        this.emojiAnimationsOverlay = new EmojiAnimationsOverlay(this.storyContainer, this.currentAccount);
        this.storyContainer.addView(this.storyAreasView, LayoutHelper.createFrame(-1, -1));
        C72535 c72535 = new C72535(getContext(), storyViewer.resourcesProvider, storyViewer, resourcesProvider);
        this.storyCaptionView = c72535;
        c72535.captionTextview.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$0(view);
            }
        });
        ImageView imageView = new ImageView(context);
        this.shareButton = imageView;
        imageView.setImageDrawable(sharedResources.shareDrawable);
        int m107dp = AndroidUtilities.m107dp(8);
        imageView.setPadding(m107dp, m107dp, m107dp, m107dp);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$1(view);
            }
        });
        ScaleStateListAnimator.apply(imageView);
        if (!DISABLE_STORY_REPOSTING) {
            ImageView imageView2 = new ImageView(context);
            this.repostButton = imageView2;
            imageView2.setImageDrawable(sharedResources.repostDrawable);
            this.repostButton.setPadding(m107dp, m107dp, m107dp, m107dp);
            FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Stories.PeerStoriesView.6
                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    super.dispatchDraw(canvas);
                    PeerStoriesView peerStoriesView = PeerStoriesView.this;
                    if (!peerStoriesView.isChannel || peerStoriesView.repostCounter == null) {
                        return;
                    }
                    canvas.save();
                    float measuredWidth = (getMeasuredWidth() - PeerStoriesView.this.repostCounter.getCurrentWidth()) - AndroidUtilities.m107dp(6);
                    float f = BitmapDescriptorFactory.HUE_RED;
                    canvas.translate(measuredWidth, BitmapDescriptorFactory.HUE_RED);
                    AnimatedFloat animatedFloat = PeerStoriesView.this.repostCounterProgress;
                    if (PeerStoriesView.this.repostCounterVisible) {
                        f = 1.0f;
                    }
                    float f2 = animatedFloat.set(f);
                    canvas.scale(f2, f2, PeerStoriesView.this.repostCounter.getCurrentWidth() / 2.0f, AndroidUtilities.m107dp(20));
                    PeerStoriesView.this.repostCounter.setAlpha(255);
                    PeerStoriesView.this.repostCounter.draw(canvas);
                    canvas.restore();
                }

                @Override // android.view.View
                protected boolean verifyDrawable(Drawable drawable) {
                    return drawable == PeerStoriesView.this.repostCounter || super.verifyDrawable(drawable);
                }
            };
            this.repostButtonContainer = frameLayout;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.repostCounter;
            if (animatedTextDrawable != null) {
                animatedTextDrawable.setCallback(frameLayout);
            }
            this.repostButtonContainer.setWillNotDraw(false);
            this.repostButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PeerStoriesView.this.lambda$new$2(view);
                }
            });
        }
        FrameLayout frameLayout2 = new FrameLayout(getContext()) { // from class: org.telegram.ui.Stories.PeerStoriesView.7
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                if (!peerStoriesView.isChannel || peerStoriesView.reactionsCounter == null) {
                    return;
                }
                canvas.save();
                float measuredWidth = (getMeasuredWidth() - PeerStoriesView.this.reactionsCounter.getCurrentWidth()) - AndroidUtilities.m107dp(6);
                float f = BitmapDescriptorFactory.HUE_RED;
                canvas.translate(measuredWidth, BitmapDescriptorFactory.HUE_RED);
                AnimatedFloat animatedFloat = PeerStoriesView.this.reactionsCounterProgress;
                if (PeerStoriesView.this.reactionsCounterVisible) {
                    f = 1.0f;
                }
                float f2 = animatedFloat.set(f);
                canvas.scale(f2, f2, PeerStoriesView.this.reactionsCounter.getCurrentWidth() / 2.0f, AndroidUtilities.m107dp(20));
                PeerStoriesView.this.reactionsCounter.setAlpha(255);
                PeerStoriesView.this.reactionsCounter.draw(canvas);
                canvas.restore();
            }

            @Override // android.view.View
            protected boolean verifyDrawable(Drawable drawable) {
                return drawable == PeerStoriesView.this.reactionsCounter || super.verifyDrawable(drawable);
            }
        };
        this.likeButtonContainer = frameLayout2;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = this.reactionsCounter;
        if (animatedTextDrawable2 != null) {
            animatedTextDrawable2.setCallback(frameLayout2);
        }
        frameLayout2.setWillNotDraw(false);
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$4(view);
            }
        });
        frameLayout2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda22
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean lambda$new$5;
                lambda$new$5 = PeerStoriesView.this.lambda$new$5(storyViewer, view);
                return lambda$new$5;
            }
        });
        StoriesLikeButton storiesLikeButton = new StoriesLikeButton(context, sharedResources);
        this.storiesLikeButton = storiesLikeButton;
        storiesLikeButton.setPadding(m107dp, m107dp, m107dp, m107dp);
        frameLayout2.addView(this.storiesLikeButton, LayoutHelper.createFrame(40, 40, 3));
        FrameLayout frameLayout3 = this.repostButtonContainer;
        if (frameLayout3 != null) {
            frameLayout3.addView(this.repostButton, LayoutHelper.createFrame(40, 40, 3));
        }
        ScaleStateListAnimator.apply(frameLayout2, 0.3f, 5.0f);
        FrameLayout frameLayout4 = this.repostButtonContainer;
        if (frameLayout4 != null) {
            ScaleStateListAnimator.apply(frameLayout4, 0.3f, 5.0f);
        }
        imageReceiver.setAllowLoadingOnAttachedOnly(true);
        imageReceiver.setParentView(this.storyContainer);
        if (Build.VERSION.SDK_INT >= 21) {
            RoundRectOutlineProvider roundRectOutlineProvider = new RoundRectOutlineProvider(10);
            this.outlineProvider = roundRectOutlineProvider;
            this.storyContainer.setOutlineProvider(roundRectOutlineProvider);
            this.storyContainer.setClipToOutline(true);
        }
        addView(this.storyContainer);
        PeerHeaderView peerHeaderView = new PeerHeaderView(context, storyItemHolder);
        this.headerView = peerHeaderView;
        peerHeaderView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$6(storyViewer, view);
            }
        });
        this.storyContainer.addView(this.headerView, LayoutHelper.createFrame(-1, -2, 0, 0, 17, 0, 0));
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setDuration(150L);
        layoutTransition.disableTransitionType(2);
        layoutTransition.enableTransitionType(4);
        LinearLayout linearLayout = new LinearLayout(context);
        this.bottomActionsLinearLayout = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutTransition(layoutTransition);
        linearLayout.addView(imageView, LayoutHelper.createLinear(40, 40, 5));
        FrameLayout frameLayout5 = this.repostButtonContainer;
        if (frameLayout5 != null) {
            linearLayout.addView(frameLayout5, LayoutHelper.createLinear(40, 40, 5));
        }
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(40, 40, 5));
        addView(linearLayout, LayoutHelper.createFrame(-2, -2, 5, 0, 0, 4, 0));
        ImageView imageView3 = new ImageView(context);
        this.optionsIconView = imageView3;
        imageView3.setImageDrawable(sharedResources.optionsDrawable);
        imageView3.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
        imageView3.setBackground(Theme.createSelectorDrawable(-1));
        this.storyContainer.addView(imageView3, LayoutHelper.createFrame(40, 40, 53, 2, 15, 2, 0));
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$7(resourcesProvider, storyViewer, context, sharedResources, view);
            }
        });
        FrameLayout frameLayout6 = new FrameLayout(context);
        this.muteIconContainer = frameLayout6;
        this.storyContainer.addView(frameLayout6, LayoutHelper.createFrame(40, 40, 53, 2, 15, 42, 0));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.muteIconView = rLottieImageView;
        rLottieImageView.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6));
        frameLayout6.addView(rLottieImageView);
        ImageView imageView4 = new ImageView(context);
        this.noSoundIconView = imageView4;
        imageView4.setPadding(AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6));
        imageView4.setImageDrawable(sharedResources.noSoundDrawable);
        frameLayout6.addView(imageView4);
        imageView4.setVisibility(8);
        StoryPrivacyButton storyPrivacyButton = new StoryPrivacyButton(context);
        this.privacyButton = storyPrivacyButton;
        storyPrivacyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$9(view);
            }
        });
        this.storyContainer.addView(storyPrivacyButton, LayoutHelper.createFrame(60, 40, 53, 2, 15, 42, 0));
        frameLayout6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$new$10(storyViewer, view);
            }
        });
        this.storyLines = new StoryLinesDrawable(this, sharedResources);
        this.storyContainer.addView(c72535, LayoutHelper.createFrame(-1, -1, 0, 0, 64, 0, 0));
        frameLayout6.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(20), 0, ColorUtils.setAlphaComponent(-1, 100)));
        imageView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(20), 0, ColorUtils.setAlphaComponent(-1, 100)));
        imageView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(20), 0, ColorUtils.setAlphaComponent(-1, 100)));
        frameLayout2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(20), 0, ColorUtils.setAlphaComponent(-1, 100)));
        FrameLayout frameLayout7 = this.repostButtonContainer;
        if (frameLayout7 != null) {
            frameLayout7.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(20), 0, ColorUtils.setAlphaComponent(-1, 100)));
        }
        View overlayView = c72535.textSelectionHelper.getOverlayView(context);
        if (overlayView != null) {
            AndroidUtilities.removeFromParent(overlayView);
            addView(overlayView);
        }
        c72535.textSelectionHelper.setCallback(new TextSelectionHelper.Callback() { // from class: org.telegram.ui.Stories.PeerStoriesView.9
            @Override // org.telegram.p043ui.Cells.TextSelectionHelper.Callback
            public void onStateChanged(boolean z) {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                peerStoriesView.delegate.setIsInSelectionMode(peerStoriesView.storyCaptionView.textSelectionHelper.isInSelectionMode());
            }
        });
        c72535.textSelectionHelper.setParentView(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$4 */
    /* loaded from: classes6.dex */
    public class C72514 extends HwFrameLayout {
        boolean drawOverlayed;
        final CellFlickerDrawable loadingDrawable;
        final AnimatedFloat loadingDrawableAlpha;
        final AnimatedFloat loadingDrawableAlpha2;
        final AnimatedFloat progressToAudio;
        final AnimatedFloat progressToFullBlackoutA;
        boolean splitDrawing;
        final /* synthetic */ SharedResources val$sharedResources;
        final /* synthetic */ StoryViewer val$storyViewer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C72514(Context context, SharedResources sharedResources, StoryViewer storyViewer) {
            super(context);
            this.val$sharedResources = sharedResources;
            this.val$storyViewer = storyViewer;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            this.progressToAudio = new AnimatedFloat(this, 150L, cubicBezierInterpolator);
            this.progressToFullBlackoutA = new AnimatedFloat(this, 150L, cubicBezierInterpolator);
            this.loadingDrawable = new CellFlickerDrawable(32, 102, PsExtractor.VIDEO_STREAM_MASK);
            AnimatedFloat animatedFloat = new AnimatedFloat(this);
            this.loadingDrawableAlpha2 = animatedFloat;
            AnimatedFloat animatedFloat2 = new AnimatedFloat(this);
            this.loadingDrawableAlpha = animatedFloat2;
            animatedFloat.setDuration(500L);
            animatedFloat2.setDuration(100L);
        }

        /* JADX WARN: Removed duplicated region for block: B:173:0x058a  */
        /* JADX WARN: Removed duplicated region for block: B:176:0x0594  */
        /* JADX WARN: Removed duplicated region for block: B:193:0x05e6  */
        /* JADX WARN: Removed duplicated region for block: B:196:0x05f4  */
        /* JADX WARN: Removed duplicated region for block: B:198:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void dispatchDraw(android.graphics.Canvas r17) {
            /*
                Method dump skipped, instructions count: 1534
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.C72514.dispatchDraw(android.graphics.Canvas):void");
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == PeerStoriesView.this.storyAreasView) {
                return true;
            }
            if (this.splitDrawing) {
                if (Bulletin.getVisibleBulletin() != null && view == Bulletin.getVisibleBulletin().getLayout()) {
                    if (this.drawOverlayed) {
                        return super.drawChild(canvas, view, j);
                    }
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x0156  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void drawLines(android.graphics.Canvas r22) {
            /*
                Method dump skipped, instructions count: 563
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.C72514.drawLines(android.graphics.Canvas):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$drawLines$0() {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            if (peerStoriesView.delegate != null) {
                if (peerStoriesView.isUploading || PeerStoriesView.this.isEditing || PeerStoriesView.this.isFailed) {
                    if (!PeerStoriesView.this.currentStory.isVideo()) {
                        PeerStoriesView.this.currentImageTime = 0L;
                        return;
                    } else {
                        PeerStoriesView.this.playerSharedScope.player.loopBack();
                        return;
                    }
                }
                PeerStoriesView.this.delegate.shouldSwitchToNext();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            PeerStoriesView.this.emojiAnimationsOverlay.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.PeerStoriesView.4.1
                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public boolean clipWithGradient(int i) {
                    return i == 1 || i == 2 || i == 3;
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public int getTopOffset(int i) {
                    return AndroidUtilities.m107dp(58);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public void onShow(Bulletin bulletin) {
                    Delegate delegate;
                    if (bulletin == null || bulletin.tag != 2 || (delegate = PeerStoriesView.this.delegate) == null) {
                        return;
                    }
                    delegate.setBulletinIsVisible(true);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public void onHide(Bulletin bulletin) {
                    Delegate delegate;
                    if (bulletin == null || bulletin.tag != 2 || (delegate = PeerStoriesView.this.delegate) == null) {
                        return;
                    }
                    delegate.setBulletinIsVisible(false);
                }

                @Override // org.telegram.p043ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    if (PeerStoriesView.this.BIG_SCREEN) {
                        return 0;
                    }
                    return AndroidUtilities.m107dp(64);
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            PeerStoriesView.this.emojiAnimationsOverlay.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
            Delegate delegate = PeerStoriesView.this.delegate;
            if (delegate != null) {
                delegate.setBulletinIsVisible(false);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PeerStoriesView.this.muteIconContainer.getLayoutParams();
            if (PeerStoriesView.this.drawLinesAsCounter()) {
                layoutParams.rightMargin = AndroidUtilities.m107dp(2);
                layoutParams.topMargin = AndroidUtilities.m107dp(55);
            } else {
                layoutParams.rightMargin = AndroidUtilities.m107dp(42);
                layoutParams.topMargin = AndroidUtilities.m107dp(15);
            }
            super.onMeasure(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$5 */
    /* loaded from: classes6.dex */
    public class C72535 extends StoryCaptionView {
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;
        final /* synthetic */ StoryViewer val$storyViewer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C72535(Context context, Theme.ResourcesProvider resourcesProvider, StoryViewer storyViewer, Theme.ResourcesProvider resourcesProvider2) {
            super(context, resourcesProvider);
            this.val$storyViewer = storyViewer;
            this.val$resourcesProvider = resourcesProvider2;
        }

        @Override // org.telegram.p043ui.Stories.StoryCaptionView
        public void onLinkClick(CharacterStyle characterStyle, View view) {
            if (characterStyle instanceof URLSpanUserMention) {
                TLRPC$User user = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Utilities.parseLong(((URLSpanUserMention) characterStyle).getURL()));
                if (user != null) {
                    MessagesController.openChatOrProfileWith(user, null, this.val$storyViewer.fragment, 0, false);
                }
            } else if (characterStyle instanceof URLSpanNoUnderline) {
                String url = ((URLSpanNoUnderline) characterStyle).getURL();
                String extractUsername = Browser.extractUsername(url);
                if (extractUsername != null) {
                    String lowerCase = extractUsername.toLowerCase();
                    if (url.startsWith("@")) {
                        MessagesController.getInstance(PeerStoriesView.this.currentAccount).openByUserName(lowerCase, this.val$storyViewer.fragment, 0, null);
                        return;
                    } else {
                        processExternalUrl(0, url, characterStyle, false);
                        return;
                    }
                }
                processExternalUrl(0, url, characterStyle, false);
            } else if (characterStyle instanceof URLSpan) {
                processExternalUrl(2, ((URLSpan) characterStyle).getURL(), characterStyle, characterStyle instanceof URLSpanReplacement);
            } else if (characterStyle instanceof URLSpanMono) {
                ((URLSpanMono) characterStyle).copyToClipboard();
                BulletinFactory.m66of(PeerStoriesView.this.storyContainer, this.val$resourcesProvider).createCopyBulletin(LocaleController.getString("TextCopied", C3632R.string.TextCopied)).show();
            } else if (characterStyle instanceof ClickableSpan) {
                ((ClickableSpan) characterStyle).onClick(view);
            }
        }

        private void processExternalUrl(int i, String str, CharacterStyle characterStyle, boolean z) {
            boolean z2;
            if (!z && !AndroidUtilities.shouldShowUrlInAlert(str)) {
                if (i == 0) {
                    Browser.openUrl(getContext(), Uri.parse(str), true, true, null);
                } else if (i == 1) {
                    Browser.openUrl(getContext(), Uri.parse(str), false, false, null);
                } else if (i == 2) {
                    Browser.openUrl(getContext(), Uri.parse(str), false, true, null);
                }
            } else if (i != 0 && i != 2) {
                if (i == 1) {
                    AlertsCreator.showOpenUrlAlert(this.val$storyViewer.fragment, str, true, true, false, null, this.val$resourcesProvider);
                }
            } else {
                if (characterStyle instanceof URLSpanReplacement) {
                    URLSpanReplacement uRLSpanReplacement = (URLSpanReplacement) characterStyle;
                    if (uRLSpanReplacement.getTextStyleRun() != null && (uRLSpanReplacement.getTextStyleRun().flags & 1024) != 0) {
                        z2 = true;
                        AlertsCreator.showOpenUrlAlert(this.val$storyViewer.fragment, str, true, true, true, z2, null, this.val$resourcesProvider);
                    }
                }
                z2 = false;
                AlertsCreator.showOpenUrlAlert(this.val$storyViewer.fragment, str, true, true, true, z2, null, this.val$resourcesProvider);
            }
        }

        @Override // org.telegram.p043ui.Stories.StoryCaptionView
        public void onLinkLongPress(final URLSpan uRLSpan, final View view, final Runnable runnable) {
            final String url = uRLSpan.getURL();
            String url2 = uRLSpan.getURL();
            try {
                try {
                    Uri parse = Uri.parse(url2);
                    url2 = Browser.replaceHostname(parse, IDN.toUnicode(parse.getHost(), 1));
                } catch (Exception e) {
                    FileLog.m101e((Throwable) e, false);
                }
                url2 = URLDecoder.decode(url2.replaceAll("\\+", "%2b"), "UTF-8");
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
            try {
                performHapticFeedback(0, 1);
            } catch (Exception unused) {
            }
            BottomSheet.Builder builder = new BottomSheet.Builder(getContext(), false, this.val$resourcesProvider);
            builder.setTitle(url2);
            builder.setTitleMultipleLines(true);
            StoryItemHolder storyItemHolder = PeerStoriesView.this.currentStory;
            CharSequence[] charSequenceArr = (storyItemHolder == null || storyItemHolder.allowScreenshots()) ? new CharSequence[]{LocaleController.getString("Open", C3632R.string.Open), LocaleController.getString("Copy", C3632R.string.Copy)} : new CharSequence[]{LocaleController.getString("Open", C3632R.string.Open)};
            final Theme.ResourcesProvider resourcesProvider = this.val$resourcesProvider;
            builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$5$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PeerStoriesView.C72535.this.lambda$onLinkLongPress$0(uRLSpan, view, url, resourcesProvider, dialogInterface, i);
                }
            });
            builder.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$5$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    runnable.run();
                }
            });
            BottomSheet create = builder.create();
            create.fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, this.val$resourcesProvider));
            PeerStoriesView.this.delegate.showDialog(create);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLinkLongPress$0(URLSpan uRLSpan, View view, String str, Theme.ResourcesProvider resourcesProvider, DialogInterface dialogInterface, int i) {
            if (i == 0) {
                onLinkClick(uRLSpan, view);
            } else if (i == 1) {
                AndroidUtilities.addToClipboard(str);
                BulletinFactory.m66of(PeerStoriesView.this.storyContainer, resourcesProvider).createCopyLinkBulletin().show();
            }
        }

        @Override // org.telegram.p043ui.Stories.StoryCaptionView
        public void onReplyClick(final StoryCaptionView.Reply reply) {
            if (reply == null) {
                return;
            }
            if (reply.isRepostMessage && reply.peerId != null && reply.messageId != null) {
                Bundle bundle = new Bundle();
                if (reply.peerId.longValue() >= 0) {
                    bundle.putLong("user_id", reply.peerId.longValue());
                } else {
                    bundle.putLong("chat_id", -reply.peerId.longValue());
                }
                bundle.putInt("message_id", reply.messageId.intValue());
                this.val$storyViewer.presentFragment(new ChatActivity(bundle));
            } else if (reply.peerId != null && reply.storyId != null) {
                StoriesController storiesController = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getStoriesController();
                long longValue = reply.peerId.longValue();
                int intValue = reply.storyId.intValue();
                final StoryViewer storyViewer = this.val$storyViewer;
                final Theme.ResourcesProvider resourcesProvider = this.val$resourcesProvider;
                storiesController.resolveStoryLink(longValue, intValue, new Consumer() { // from class: org.telegram.ui.Stories.PeerStoriesView$5$$ExternalSyntheticLambda2
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        PeerStoriesView.C72535.this.lambda$onReplyClick$3(storyViewer, reply, resourcesProvider, (TL_stories$StoryItem) obj);
                    }
                });
            } else {
                BulletinFactory.m66of(PeerStoriesView.this.storyContainer, this.val$resourcesProvider).createSimpleBulletin(C3632R.raw.error, LocaleController.getString(C3632R.string.StoryHidAccount)).setTag(3).show(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReplyClick$3(final StoryViewer storyViewer, StoryCaptionView.Reply reply, Theme.ResourcesProvider resourcesProvider, TL_stories$StoryItem tL_stories$StoryItem) {
            if (tL_stories$StoryItem != null) {
                BaseFragment lastFragment = LaunchActivity.getLastFragment();
                if (lastFragment == null || lastFragment.getOrCreateOverlayStoryViewer().isShowing) {
                    return;
                }
                storyViewer.setOverlayVisible(true);
                tL_stories$StoryItem.dialogId = reply.peerId.longValue();
                lastFragment.getOrCreateOverlayStoryViewer().open(getContext(), tL_stories$StoryItem, (StoryViewer.PlaceProvider) null);
                lastFragment.getOrCreateOverlayStoryViewer().setOnCloseListener(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$5$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryViewer.this.setOverlayVisible(false);
                    }
                });
                return;
            }
            BulletinFactory.m66of(PeerStoriesView.this.storyContainer, resourcesProvider).createSimpleBulletin(C3632R.raw.story_bomb2, LocaleController.getString(C3632R.string.StoryNotFound)).setTag(3).show(true);
        }

        @Override // org.telegram.p043ui.Stories.StoryCaptionView
        public void onEmojiClick(AnimatedEmojiSpan animatedEmojiSpan) {
            if (animatedEmojiSpan != null) {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                if (peerStoriesView.delegate == null) {
                    return;
                }
                TLRPC$Document tLRPC$Document = animatedEmojiSpan.document;
                if (tLRPC$Document == null) {
                    tLRPC$Document = AnimatedEmojiDrawable.findDocument(peerStoriesView.currentAccount, animatedEmojiSpan.documentId);
                }
                if (tLRPC$Document == null) {
                    return;
                }
                BulletinFactory m66of = BulletinFactory.m66of(PeerStoriesView.this.storyContainer, this.val$resourcesProvider);
                final StoryViewer storyViewer = this.val$storyViewer;
                final Theme.ResourcesProvider resourcesProvider = this.val$resourcesProvider;
                Bulletin createContainsEmojiBulletin = m66of.createContainsEmojiBulletin(tLRPC$Document, 2, new Utilities.Callback() { // from class: org.telegram.ui.Stories.PeerStoriesView$5$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        PeerStoriesView.C72535.this.lambda$onEmojiClick$4(storyViewer, resourcesProvider, (TLRPC$InputStickerSet) obj);
                    }
                });
                if (createContainsEmojiBulletin == null) {
                    return;
                }
                createContainsEmojiBulletin.tag = 1;
                createContainsEmojiBulletin.show(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiClick$4(StoryViewer storyViewer, Theme.ResourcesProvider resourcesProvider, TLRPC$InputStickerSet tLRPC$InputStickerSet) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(tLRPC$InputStickerSet);
            EmojiPacksAlert emojiPacksAlert = new EmojiPacksAlert(storyViewer.fragment, getContext(), resourcesProvider, arrayList);
            Delegate delegate = PeerStoriesView.this.delegate;
            if (delegate != null) {
                delegate.showDialog(emojiPacksAlert);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        StoryCaptionView storyCaptionView = this.storyCaptionView;
        if (storyCaptionView.expanded) {
            if (!storyCaptionView.textSelectionHelper.isInSelectionMode()) {
                this.storyCaptionView.collapse();
                return;
            } else {
                this.storyCaptionView.checkCancelTextSelection();
                return;
            }
        }
        this.checkBlackoutMode = true;
        storyCaptionView.expand();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        shareStory(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        tryToOpenRepostStory();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        TL_stories$StoryItem tL_stories$StoryItem = this.currentStory.storyItem;
        if (tL_stories$StoryItem != null && tL_stories$StoryItem.sent_reaction == null) {
            applyMessageToChat(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.this.lambda$new$3();
                }
            });
        } else {
            likeStory(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        likeStory(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$5(StoryViewer storyViewer, View view) {
        Runnable runnable = this.reactionsTooltipRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.reactionsTooltipRunnable = null;
        }
        SharedConfig.setStoriesReactionsLongPressHintUsed(true);
        HintView2 hintView2 = this.reactionsLongpressTooltip;
        if (hintView2 != null) {
            hintView2.hide();
        }
        checkReactionsLayoutForLike();
        storyViewer.windowView.dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
        showLikesReaction(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(StoryViewer storyViewer, View view) {
        long j = UserConfig.getInstance(this.currentAccount).clientUserId;
        long j2 = this.dialogId;
        if (j == j2) {
            Bundle bundle = new Bundle();
            bundle.putInt(SessionDescription.ATTR_TYPE, 1);
            bundle.putLong("dialog_id", this.dialogId);
            storyViewer.presentFragment(new MediaActivity(bundle, null));
        } else if (j2 > 0) {
            storyViewer.presentFragment(ProfileActivity.m54of(j2));
        } else {
            storyViewer.presentFragment(ChatActivity.m68of(j2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(Theme.ResourcesProvider resourcesProvider, StoryViewer storyViewer, Context context, SharedResources sharedResources, View view) {
        this.delegate.setPopupIsVisible(true);
        this.editStoryItem = null;
        boolean[] zArr = {false};
        if (this.isSelf) {
            MessagesController.getInstance(this.currentAccount).getStoriesController().loadBlocklistAtFirst();
            MessagesController.getInstance(this.currentAccount).getStoriesController().loadSendAs();
            MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().load();
        }
        C72568 c72568 = new C72568(getContext(), resourcesProvider, this.isSelf, resourcesProvider, storyViewer, context, sharedResources, zArr);
        this.popupMenu = c72568;
        c72568.show(this.optionsIconView, 0, (-C3704ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.m107dp(6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$8 */
    /* loaded from: classes6.dex */
    public class C72568 extends CustomPopupMenu {
        private boolean edit;
        final /* synthetic */ Context val$context;
        final /* synthetic */ boolean[] val$popupStillVisible;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;
        final /* synthetic */ SharedResources val$sharedResources;
        final /* synthetic */ StoryViewer val$storyViewer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C72568(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, Theme.ResourcesProvider resourcesProvider2, StoryViewer storyViewer, Context context2, SharedResources sharedResources, boolean[] zArr) {
            super(context, resourcesProvider, z);
            this.val$resourcesProvider = resourcesProvider2;
            this.val$storyViewer = storyViewer;
            this.val$context = context2;
            this.val$sharedResources = sharedResources;
            this.val$popupStillVisible = zArr;
        }

        private void addViewStatistics(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, final TL_stories$StoryItem tL_stories$StoryItem) {
            final TLRPC$Chat chat;
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            if (!peerStoriesView.isChannel || (chat = MessagesController.getInstance(peerStoriesView.currentAccount).getChat(Long.valueOf(-PeerStoriesView.this.dialogId))) == null) {
                return;
            }
            TLRPC$ChatFull chatFull = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getChatFull(chat.f1602id);
            if (chatFull == null) {
                chatFull = MessagesStorage.getInstance(PeerStoriesView.this.currentAccount).loadChatInfo(chat.f1602id, true, new CountDownLatch(1), false, false);
            }
            if (chatFull == null || !chatFull.can_view_stats) {
                return;
            }
            ActionBarMenuSubItem addItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C3632R.C3634drawable.msg_stats, LocaleController.getString("ViewStatistics", C3632R.string.ViewStatistics), false, this.val$resourcesProvider);
            final StoryViewer storyViewer = this.val$storyViewer;
            addItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PeerStoriesView.C72568.this.lambda$addViewStatistics$0(tL_stories$StoryItem, storyViewer, chat, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$addViewStatistics$0(TL_stories$StoryItem tL_stories$StoryItem, StoryViewer storyViewer, TLRPC$Chat tLRPC$Chat, View view) {
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
            tL_stories$StoryItem.dialogId = PeerStoriesView.this.dialogId;
            tL_stories$StoryItem.messageId = tL_stories$StoryItem.f1763id;
            MessageObject messageObject = new MessageObject(PeerStoriesView.this.currentAccount, tL_stories$StoryItem);
            messageObject.generateThumbs(false);
            storyViewer.presentFragment(new MessageStatisticActivity(this, messageObject, tLRPC$Chat.f1602id, false) { // from class: org.telegram.ui.Stories.PeerStoriesView.8.1
                @Override // org.telegram.p043ui.MessageStatisticActivity, org.telegram.p043ui.ActionBar.BaseFragment
                public boolean isLightStatusBar() {
                    return false;
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public Theme.ResourcesProvider getResourceProvider() {
                    return new DarkThemeResourceProvider();
                }
            });
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x0143, code lost:
            if (r13.stories_hidden != false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0145, code lost:
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0158, code lost:
            if (r14.stories_hidden != false) goto L38;
         */
        @Override // org.telegram.p043ui.Components.CustomPopupMenu
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onCreate(org.telegram.p043ui.ActionBar.ActionBarPopupWindow.ActionBarPopupWindowLayout r26) {
            /*
                Method dump skipped, instructions count: 1481
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.C72568.onCreate(org.telegram.ui.ActionBar.ActionBarPopupWindow$ActionBarPopupWindowLayout):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$1(View view) {
            StoriesController.UploadingStory uploadingStory = PeerStoriesView.this.currentStory.uploadingStory;
            if (uploadingStory != null) {
                uploadingStory.cancel();
                PeerStoriesView.this.updateStoryItems();
            }
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$2(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, TL_stories$StoryItem tL_stories$StoryItem, View view) {
            PeerStoriesView.this.editPrivacy(storyPrivacy, tL_stories$StoryItem);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$8(Theme.ResourcesProvider resourcesProvider, Context context, final StoryViewer storyViewer, final SharedResources sharedResources, View view) {
            if (view.getAlpha() < 1.0f) {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                AndroidUtilities.shakeViewSpring(view, peerStoriesView.shiftDp = -peerStoriesView.shiftDp);
                BulletinFactory.m66of(PeerStoriesView.this.storyContainer, resourcesProvider).createErrorBulletin("Wait until current upload is complete").show();
                return;
            }
            final Activity findActivity = AndroidUtilities.findActivity(context);
            if (findActivity == null) {
                return;
            }
            this.edit = true;
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C72568.this.lambda$onCreate$7(findActivity, storyViewer, sharedResources);
                }
            };
            if (PeerStoriesView.this.delegate.releasePlayer(runnable)) {
                return;
            }
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$7(Activity activity, StoryViewer storyViewer, final SharedResources sharedResources) {
            File file;
            StoryViewer.VideoPlayerHolder videoPlayerHolder;
            StoryRecorder storyRecorder = StoryRecorder.getInstance(activity, PeerStoriesView.this.currentAccount);
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            VideoPlayerSharedScope videoPlayerSharedScope = peerStoriesView.playerSharedScope;
            long j = (videoPlayerSharedScope == null || (videoPlayerHolder = videoPlayerSharedScope.player) == null) ? 0L : videoPlayerHolder.currentPosition;
            DraftsController draftsController = MessagesController.getInstance(peerStoriesView.currentAccount).getStoriesController().getDraftsController();
            TL_stories$StoryItem tL_stories$StoryItem = PeerStoriesView.this.currentStory.storyItem;
            StoryEntry forEdit = draftsController.getForEdit(tL_stories$StoryItem.dialogId, tL_stories$StoryItem);
            if (forEdit == null || forEdit.isRepostMessage || (file = forEdit.file) == null || !file.exists()) {
                forEdit = StoryEntry.fromStoryItem(PeerStoriesView.this.currentStory.getPath(), PeerStoriesView.this.currentStory.storyItem);
                forEdit.editStoryPeerId = PeerStoriesView.this.dialogId;
            }
            storyRecorder.openEdit(StoryRecorder.SourceView.fromStoryViewer(storyViewer), forEdit.copy(), j, true);
            storyRecorder.setOnFullyOpenListener(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C72568.this.lambda$onCreate$3();
                }
            });
            storyRecorder.setOnPrepareCloseListener(new Utilities.Callback4() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda29
                @Override // org.telegram.messenger.Utilities.Callback4
                public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                    PeerStoriesView.C72568.this.lambda$onCreate$6(sharedResources, (Long) obj, (Runnable) obj2, (Boolean) obj3, (Long) obj4);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$3() {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.editOpened = true;
            peerStoriesView.setActive(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$6(SharedResources sharedResources, Long l, final Runnable runnable, Boolean bool, Long l2) {
            final long currentTimeMillis = System.currentTimeMillis();
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            VideoPlayerSharedScope videoPlayerSharedScope = peerStoriesView.playerSharedScope;
            StoryViewer.VideoPlayerHolder videoPlayerHolder = videoPlayerSharedScope.player;
            if (videoPlayerHolder == null) {
                peerStoriesView.delegate.setPopupIsVisible(false);
                PeerStoriesView.this.setActive(true);
                PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                peerStoriesView2.editOpened = false;
                peerStoriesView2.onImageReceiverThumbLoaded = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        PeerStoriesView.C72568.lambda$onCreate$4(runnable);
                    }
                };
                if (bool.booleanValue()) {
                    PeerStoriesView.this.updatePosition();
                }
                AndroidUtilities.runOnUIThread(runnable, 400L);
                return;
            }
            videoPlayerHolder.firstFrameRendered = false;
            videoPlayerSharedScope.firstFrameRendered = false;
            videoPlayerHolder.setOnReadyListener(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C72568.lambda$onCreate$5(runnable, currentTimeMillis);
                }
            });
            PeerStoriesView.this.delegate.setPopupIsVisible(false);
            if (PeerStoriesView.this.muteIconView != null) {
                PeerStoriesView.this.muteIconView.setAnimation(sharedResources.muteDrawable);
            }
            PeerStoriesView.this.setActive(((PeerStoriesView.this.videoDuration <= 0 || l.longValue() <= PeerStoriesView.this.videoDuration - 1400) ? l : 0L).longValue(), true);
            PeerStoriesView.this.editOpened = false;
            AndroidUtilities.runOnUIThread(runnable, 400L);
            if (bool.booleanValue()) {
                PeerStoriesView.this.updatePosition();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreate$4(Runnable runnable) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreate$5(Runnable runnable, long j) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 32 - (System.currentTimeMillis() - j)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$10(final TL_stories$StoryItem tL_stories$StoryItem, final boolean z, final Theme.ResourcesProvider resourcesProvider, View view) {
            ArrayList<TL_stories$StoryItem> arrayList = new ArrayList<>();
            arrayList.add(tL_stories$StoryItem);
            MessagesController.getInstance(PeerStoriesView.this.currentAccount).getStoriesController().updateStoriesPinned(PeerStoriesView.this.dialogId, arrayList, z, new Utilities.Callback() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda30
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    PeerStoriesView.C72568.this.lambda$onCreate$9(tL_stories$StoryItem, z, resourcesProvider, (Boolean) obj);
                }
            });
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$9(TL_stories$StoryItem tL_stories$StoryItem, boolean z, Theme.ResourcesProvider resourcesProvider, Boolean bool) {
            int i;
            String str;
            if (bool.booleanValue()) {
                tL_stories$StoryItem.pinned = z;
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                if (!peerStoriesView.isSelf) {
                    if (z) {
                        BulletinFactory.m66of(peerStoriesView.storyContainer, resourcesProvider).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.getString("StoryPinnedToPosts", C3632R.string.StoryPinnedToPosts), LocaleController.getString("StoryPinnedToPostsDescription", C3632R.string.StoryPinnedToPostsDescription)).show();
                        return;
                    } else {
                        BulletinFactory.m66of(peerStoriesView.storyContainer, resourcesProvider).createSimpleBulletin(C3632R.raw.chats_archived, LocaleController.getString("StoryUnpinnedFromPosts", C3632R.string.StoryUnpinnedFromPosts)).show();
                        return;
                    }
                }
                BulletinFactory m66of = BulletinFactory.m66of(peerStoriesView.storyContainer, resourcesProvider);
                int i2 = z ? C3632R.raw.contact_check : C3632R.raw.chats_archived;
                if (z) {
                    i = C3632R.string.StoryPinnedToProfile;
                    str = "StoryPinnedToProfile";
                } else {
                    i = C3632R.string.StoryArchivedFromProfile;
                    str = "StoryArchivedFromProfile";
                }
                m66of.createSimpleBulletin(i2, LocaleController.getString(str, i)).show();
                return;
            }
            BulletinFactory.m66of(PeerStoriesView.this.storyContainer, resourcesProvider).createSimpleBulletin(C3632R.raw.error, LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$11(View view) {
            PeerStoriesView.this.saveToGallery();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$12(View view) {
            AndroidUtilities.addToClipboard(PeerStoriesView.this.currentStory.createLink());
            PeerStoriesView.this.onLinkCopied();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$13(View view) {
            PeerStoriesView.this.shareStory(false);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$14(View view) {
            PeerStoriesView.this.deleteStory();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$15(String str, Theme.ResourcesProvider resourcesProvider, TLObject tLObject, String str2, View view) {
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(PeerStoriesView.this.currentAccount).edit();
            edit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + str, false).apply();
            NotificationsController.getInstance(PeerStoriesView.this.currentAccount).updateServerNotificationsSettings(PeerStoriesView.this.dialogId, 0L);
            BulletinFactory.m66of(PeerStoriesView.this.storyContainer, resourcesProvider).createUsersBulletin(Arrays.asList(tLObject), AndroidUtilities.replaceTags(LocaleController.formatString("NotificationsStoryMutedHint", C3632R.string.NotificationsStoryMutedHint, str2))).setTag(2).show();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$16(String str, Theme.ResourcesProvider resourcesProvider, TLObject tLObject, String str2, View view) {
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(PeerStoriesView.this.currentAccount).edit();
            edit.putBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + str, true).apply();
            NotificationsController.getInstance(PeerStoriesView.this.currentAccount).updateServerNotificationsSettings(PeerStoriesView.this.dialogId, 0L);
            BulletinFactory.m66of(PeerStoriesView.this.storyContainer, resourcesProvider).createUsersBulletin(Arrays.asList(tLObject), AndroidUtilities.replaceTags(LocaleController.formatString("NotificationsStoryUnmutedHint", C3632R.string.NotificationsStoryUnmutedHint, str2))).setTag(2).show();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$17(View view) {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.toggleArchiveForStory(peerStoriesView.dialogId);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$18(View view) {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.toggleArchiveForStory(peerStoriesView.dialogId);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$19(View view) {
            PeerStoriesView.this.saveToGallery();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$21(ActionBarMenuSubItem actionBarMenuSubItem, final StoryViewer storyViewer, View view) {
            actionBarMenuSubItem.performHapticFeedback(3);
            BulletinFactory global = BulletinFactory.global();
            if (global != null) {
                global.createSimpleBulletin(C3632R.raw.ic_save_to_gallery, AndroidUtilities.replaceSingleTag(LocaleController.getString("SaveStoryToGalleryPremiumHint", C3632R.string.SaveStoryToGalleryPremiumHint), new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        PeerStoriesView.C72568.this.lambda$onCreate$20(storyViewer);
                    }
                })).show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$20(StoryViewer storyViewer) {
            PeerStoriesView.this.delegate.showDialog(new PremiumFeatureBottomSheet(storyViewer.fragment, 14, false));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$22(View view) {
            AndroidUtilities.addToClipboard(PeerStoriesView.this.currentStory.createLink());
            PeerStoriesView.this.onLinkCopied();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$23(View view) {
            PeerStoriesView.this.shareStory(false);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$24(View view) {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.currentStory.storyItem.translated = false;
            StoriesStorage storiesStorage = MessagesController.getInstance(peerStoriesView.currentAccount).getStoriesController().getStoriesStorage();
            TL_stories$StoryItem tL_stories$StoryItem = PeerStoriesView.this.currentStory.storyItem;
            storiesStorage.updateStoryItem(tL_stories$StoryItem.dialogId, tL_stories$StoryItem);
            PeerStoriesView.this.cancelTextSelection();
            PeerStoriesView.this.updatePosition();
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$27(View view) {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.currentStory.storyItem.translated = true;
            peerStoriesView.cancelTextSelection();
            Delegate delegate = PeerStoriesView.this.delegate;
            if (delegate != null) {
                delegate.setTranslating(true);
            }
            StoriesStorage storiesStorage = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getStoriesController().getStoriesStorage();
            TL_stories$StoryItem tL_stories$StoryItem = PeerStoriesView.this.currentStory.storyItem;
            storiesStorage.updateStoryItem(tL_stories$StoryItem.dialogId, tL_stories$StoryItem);
            final long currentTimeMillis = System.currentTimeMillis();
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C72568.this.lambda$onCreate$25();
                }
            };
            MessagesController.getInstance(PeerStoriesView.this.currentAccount).getTranslateController().translateStory(PeerStoriesView.this.currentStory.storyItem, new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C72568.lambda$onCreate$26(runnable, currentTimeMillis);
                }
            });
            PeerStoriesView.this.updatePosition();
            PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
            peerStoriesView2.checkBlackoutMode = true;
            peerStoriesView2.storyCaptionView.expand(true);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$25() {
            Delegate delegate = PeerStoriesView.this.delegate;
            if (delegate != null) {
                delegate.setTranslating(false);
            }
            PeerStoriesView.this.updatePosition();
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.checkBlackoutMode = true;
            peerStoriesView.storyCaptionView.expand(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreate$26(Runnable runnable, long j) {
            AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 500 - (System.currentTimeMillis() - j)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$28(StoryViewer storyViewer, Theme.ResourcesProvider resourcesProvider, View view) {
            AlertsCreator.createReportAlert(PeerStoriesView.this.getContext(), PeerStoriesView.this.dialogId, 0, PeerStoriesView.this.currentStory.storyItem.f1763id, storyViewer.fragment, resourcesProvider, null);
            CustomPopupMenu customPopupMenu = PeerStoriesView.this.popupMenu;
            if (customPopupMenu != null) {
                customPopupMenu.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreate$29(StoryContainsEmojiButton storyContainsEmojiButton, View view) {
            Delegate delegate;
            EmojiPacksAlert alert = storyContainsEmojiButton.getAlert();
            if (alert == null || (delegate = PeerStoriesView.this.delegate) == null) {
                return;
            }
            delegate.showDialog(alert);
            PeerStoriesView.this.popupMenu.dismiss();
        }

        @Override // org.telegram.p043ui.Components.CustomPopupMenu
        protected void onDismissed() {
            if (!this.edit && !this.val$popupStillVisible[0]) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$8$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        PeerStoriesView.C72568.this.lambda$onDismissed$30();
                    }
                });
            }
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.popupMenu = null;
            peerStoriesView.editStoryItem = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDismissed$30() {
            PeerStoriesView.this.delegate.setPopupIsVisible(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$new$9(android.view.View r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.lambda$new$9(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8() {
        this.delegate.setIsHintVisible(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(StoryViewer storyViewer, View view) {
        if (this.currentStory.hasSound()) {
            storyViewer.toggleSilentMode();
            if (storyViewer.soundEnabled()) {
                MessagesController.getGlobalMainSettings().edit().putInt("taptostorysoundhint", 3).apply();
                return;
            }
            return;
        }
        showNoSoundHint(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createStealthModeItem(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C3632R.C3634drawable.msg_stories_stealth2, LocaleController.getString(C3632R.string.StealthModeButton), false, this.resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PeerStoriesView.this.lambda$createStealthModeItem$11(view);
                }
            });
            return;
        }
        Drawable drawable = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.msg_gallery_locked2);
        drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(-1, -16777216, 0.5f), PorterDuff.Mode.MULTIPLY));
        CombinedDrawable combinedDrawable = new CombinedDrawable(this, ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.msg_stealth_locked), drawable) { // from class: org.telegram.ui.Stories.PeerStoriesView.10
            @Override // org.telegram.p043ui.Components.CombinedDrawable, android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }
        };
        ActionBarMenuSubItem addItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, C3632R.C3634drawable.msg_stories_stealth2, LocaleController.getString(C3632R.string.StealthModeButton), false, this.resourcesProvider);
        addItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$createStealthModeItem$12(view);
            }
        });
        addItem.setIcon(combinedDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStealthModeItem$11(View view) {
        if (this.stealthModeIsActive) {
            StealthModeAlert.showStealthModeEnabledBulletin();
        } else {
            this.delegate.showDialog(new StealthModeAlert(getContext(), getY() + this.storyContainer.getY(), this.resourcesProvider));
        }
        CustomPopupMenu customPopupMenu = this.popupMenu;
        if (customPopupMenu != null) {
            customPopupMenu.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStealthModeItem$12(View view) {
        this.delegate.showDialog(new StealthModeAlert(getContext(), getY() + this.storyContainer.getY(), this.resourcesProvider));
        CustomPopupMenu customPopupMenu = this.popupMenu;
        if (customPopupMenu != null) {
            customPopupMenu.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLikesReaction(final boolean z) {
        if (this.likesReactionShowing == z || this.currentStory.storyItem == null) {
            return;
        }
        this.likesReactionShowing = z;
        if (z) {
            this.likesReactionLayout.setVisibility(0);
        }
        this.likesReactionLayout.setStoryItem(this.currentStory.storyItem);
        this.delegate.setIsLikesReaction(z);
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            float[] fArr = new float[2];
            fArr[0] = this.likesReactionShowProgress;
            if (z) {
                f = 1.0f;
            }
            fArr[1] = f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.likesReactionLayout.setTransitionProgress(this.likesReactionShowProgress);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PeerStoriesView.this.lambda$showLikesReaction$13(valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z) {
                        return;
                    }
                    PeerStoriesView.this.likesReactionLayout.setVisibility(8);
                    PeerStoriesView.this.likesReactionLayout.reset();
                }
            });
            ofFloat.setDuration(200L);
            ofFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            ofFloat.start();
            return;
        }
        if (this.likesReactionLayout.getReactionsWindow() != null) {
            this.likesReactionLayout.getReactionsWindow().dismissWithAlpha();
        }
        this.likesReactionLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PeerStoriesView.this.likesReactionShowProgress = BitmapDescriptorFactory.HUE_RED;
                PeerStoriesView.this.likesReactionLayout.setAlpha(1.0f);
                PeerStoriesView.this.likesReactionLayout.setVisibility(8);
                PeerStoriesView.this.likesReactionLayout.reset();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLikesReaction$13(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.likesReactionShowProgress = floatValue;
        this.likesReactionLayout.setTransitionProgress(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void likeStory(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        boolean z;
        TLRPC$Reaction tLRPC$Reaction;
        TL_stories$StoryItem tL_stories$StoryItem = this.currentStory.storyItem;
        if (tL_stories$StoryItem == null) {
            return;
        }
        boolean z2 = (tL_stories$StoryItem == null || tL_stories$StoryItem.sent_reaction == null) ? false : true;
        TLRPC$Reaction tLRPC$Reaction2 = tL_stories$StoryItem.sent_reaction;
        if (tLRPC$Reaction2 != null && visibleReaction == null) {
            animateLikeButton();
            this.storiesController.setStoryReaction(this.dialogId, this.currentStory.storyItem, null);
        } else if (visibleReaction == null) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction = MediaDataController.getInstance(this.currentAccount).getReactionsMap().get("❤");
            if (tLRPC$TL_availableReaction != null) {
                this.drawAnimatedEmojiAsMovingReaction = false;
                this.reactionEffectImageReceiver.setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.around_animation), ReactionsEffectOverlay.getFilterForAroundAnimation(), null, null, null, 0);
                if (this.reactionEffectImageReceiver.getLottieAnimation() != null) {
                    this.reactionEffectImageReceiver.getLottieAnimation().setCurrentFrame(0, false, true);
                }
                this.drawReactionEffect = true;
                this.storiesController.setStoryReaction(this.dialogId, this.currentStory.storyItem, ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(tLRPC$TL_availableReaction));
            }
        } else {
            animateLikeButton();
            this.storiesController.setStoryReaction(this.dialogId, this.currentStory.storyItem, visibleReaction);
        }
        TL_stories$StoryItem tL_stories$StoryItem2 = this.currentStory.storyItem;
        if (tL_stories$StoryItem2 == null || (tLRPC$Reaction = tL_stories$StoryItem2.sent_reaction) == null) {
            this.storiesLikeButton.setReaction(null);
            z = false;
        } else {
            z2 = !z2;
            this.storiesLikeButton.setReaction(ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(tLRPC$Reaction));
            performHapticFeedback(3);
            z = true;
        }
        if (this.isChannel && z2) {
            TL_stories$StoryItem tL_stories$StoryItem3 = this.currentStory.storyItem;
            if (tL_stories$StoryItem3.views == null) {
                tL_stories$StoryItem3.views = new TL_stories$TL_storyViews();
            }
            TL_stories$StoryViews tL_stories$StoryViews = this.currentStory.storyItem.views;
            int i = tL_stories$StoryViews.reactions_count + (z ? 1 : -1);
            tL_stories$StoryViews.reactions_count = i;
            if (i < 0) {
                tL_stories$StoryViews.reactions_count = 0;
            }
        }
        TL_stories$StoryItem tL_stories$StoryItem4 = this.currentStory.storyItem;
        ReactionsUtils.applyForStoryViews(tLRPC$Reaction2, tL_stories$StoryItem4.sent_reaction, tL_stories$StoryItem4.views);
        updateUserViews(true);
    }

    private void animateLikeButton() {
        final StoriesLikeButton storiesLikeButton = this.storiesLikeButton;
        storiesLikeButton.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.8f).scaleY(0.8f).setListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Stories.PeerStoriesView.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AndroidUtilities.removeFromParent(storiesLikeButton);
            }
        }).setDuration(150L).start();
        int m107dp = AndroidUtilities.m107dp(8);
        StoriesLikeButton storiesLikeButton2 = new StoriesLikeButton(getContext(), this.sharedResources);
        this.storiesLikeButton = storiesLikeButton2;
        storiesLikeButton2.setPadding(m107dp, m107dp, m107dp, m107dp);
        this.storiesLikeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.storiesLikeButton.setScaleX(0.8f);
        this.storiesLikeButton.setScaleY(0.8f);
        this.storiesLikeButton.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L);
        this.likeButtonContainer.addView(this.storiesLikeButton, LayoutHelper.createFrame(40, 40, 3));
        this.drawReactionEffect = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<TLRPC$InputStickerSet> getAnimatedEmojiSets(StoryItemHolder storyItemHolder) {
        StoryEntry storyEntry;
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        TL_stories$MediaArea tL_stories$MediaArea;
        TLRPC$InputStickerSet inputStickerSet;
        ArrayList<TLRPC$MessageEntity> arrayList;
        TLRPC$InputStickerSet inputStickerSet2;
        if (storyItemHolder != null) {
            HashSet hashSet = new HashSet();
            ArrayList<TLRPC$InputStickerSet> arrayList2 = new ArrayList<>();
            int i = 0;
            if (storyItemHolder.storyItem.media_areas != null) {
                for (int i2 = 0; i2 < storyItemHolder.storyItem.media_areas.size(); i2++) {
                    TL_stories$MediaArea tL_stories$MediaArea2 = storyItemHolder.storyItem.media_areas.get(i2);
                    if (tL_stories$MediaArea2 instanceof TL_stories$TL_mediaAreaSuggestedReaction) {
                        TLRPC$Reaction tLRPC$Reaction = tL_stories$MediaArea2.reaction;
                        if (tLRPC$Reaction instanceof TLRPC$TL_reactionCustomEmoji) {
                            TLRPC$Document findDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, ((TLRPC$TL_reactionCustomEmoji) tLRPC$Reaction).document_id);
                            if (findDocument != null && (inputStickerSet2 = MessageObject.getInputStickerSet(findDocument)) != null && !hashSet.contains(Long.valueOf(inputStickerSet2.f1625id))) {
                                hashSet.add(Long.valueOf(inputStickerSet2.f1625id));
                                arrayList2.add(inputStickerSet2);
                            }
                        }
                    }
                }
            }
            TL_stories$StoryItem tL_stories$StoryItem = storyItemHolder.storyItem;
            if (tL_stories$StoryItem != null && (arrayList = tL_stories$StoryItem.entities) != null && !arrayList.isEmpty()) {
                while (i < storyItemHolder.storyItem.entities.size()) {
                    TLRPC$MessageEntity tLRPC$MessageEntity = storyItemHolder.storyItem.entities.get(i);
                    if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityCustomEmoji) {
                        TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji = (TLRPC$TL_messageEntityCustomEmoji) tLRPC$MessageEntity;
                        TLRPC$Document tLRPC$Document = tLRPC$TL_messageEntityCustomEmoji.document;
                        if (tLRPC$Document == null) {
                            tLRPC$Document = AnimatedEmojiDrawable.findDocument(this.currentAccount, tLRPC$TL_messageEntityCustomEmoji.document_id);
                        }
                        if (tLRPC$Document != null) {
                            TLRPC$InputStickerSet inputStickerSet3 = MessageObject.getInputStickerSet(tLRPC$Document);
                            if (!hashSet.contains(Long.valueOf(inputStickerSet3.f1625id))) {
                                hashSet.add(Long.valueOf(inputStickerSet3.f1625id));
                                arrayList2.add(inputStickerSet3);
                            }
                        }
                    }
                    i++;
                }
            } else {
                StoriesController.UploadingStory uploadingStory = storyItemHolder.uploadingStory;
                if (uploadingStory != null && (storyEntry = uploadingStory.entry) != null) {
                    if (storyEntry.mediaEntities != null) {
                        for (int i3 = 0; i3 < storyItemHolder.uploadingStory.entry.mediaEntities.size(); i3++) {
                            VideoEditedInfo.MediaEntity mediaEntity = storyItemHolder.uploadingStory.entry.mediaEntities.get(i3);
                            if (mediaEntity.type == 4 && (tL_stories$MediaArea = mediaEntity.mediaArea) != null) {
                                TLRPC$Reaction tLRPC$Reaction2 = tL_stories$MediaArea.reaction;
                                if (tLRPC$Reaction2 instanceof TLRPC$TL_reactionCustomEmoji) {
                                    TLRPC$Document findDocument2 = AnimatedEmojiDrawable.findDocument(this.currentAccount, ((TLRPC$TL_reactionCustomEmoji) tLRPC$Reaction2).document_id);
                                    if (findDocument2 != null && (inputStickerSet = MessageObject.getInputStickerSet(findDocument2)) != null && !hashSet.contains(Long.valueOf(inputStickerSet.f1625id))) {
                                        hashSet.add(Long.valueOf(inputStickerSet.f1625id));
                                        arrayList2.add(inputStickerSet);
                                    }
                                }
                            }
                        }
                    }
                    CharSequence charSequence = storyItemHolder.uploadingStory.entry.caption;
                    if (!(charSequence instanceof Spanned) || (animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class)) == null) {
                        return arrayList2;
                    }
                    while (i < animatedEmojiSpanArr.length) {
                        TLRPC$Document tLRPC$Document2 = animatedEmojiSpanArr[i].document;
                        if (tLRPC$Document2 == null) {
                            tLRPC$Document2 = AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpanArr[i].documentId);
                        }
                        if (tLRPC$Document2 != null) {
                            TLRPC$InputStickerSet inputStickerSet4 = MessageObject.getInputStickerSet(tLRPC$Document2);
                            if (!hashSet.contains(Long.valueOf(inputStickerSet4.f1625id))) {
                                hashSet.add(Long.valueOf(inputStickerSet4.f1625id));
                                arrayList2.add(inputStickerSet4);
                            }
                        }
                        i++;
                    }
                }
            }
            return arrayList2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleArchiveForStory(final long j) {
        String str;
        boolean z;
        TLRPC$User tLRPC$User;
        if (j > 0) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            str = user.first_name;
            z = user.stories_hidden;
            tLRPC$User = user;
        } else {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
            str = chat.title;
            z = chat.stories_hidden;
            tLRPC$User = chat;
        }
        final boolean z2 = !z;
        final TLRPC$Chat tLRPC$Chat = tLRPC$User;
        final String str2 = str;
        final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$toggleArchiveForStory$16(messagesController, j, z2, str2, tLRPC$Chat);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleArchiveForStory$16(final MessagesController messagesController, final long j, final boolean z, String str, TLObject tLObject) {
        messagesController.getStoriesController().toggleHidden(j, z, false, true);
        BulletinFactory.UndoObject undoObject = new BulletinFactory.UndoObject();
        undoObject.onUndo = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.lambda$toggleArchiveForStory$14(MessagesController.this, j, z);
            }
        };
        undoObject.onAction = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.lambda$toggleArchiveForStory$15(MessagesController.this, j, z);
            }
        };
        BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createUsersBulletin(Arrays.asList(tLObject), !z ? AndroidUtilities.replaceTags(LocaleController.formatString("StoriesMovedToDialogs", C3632R.string.StoriesMovedToDialogs, ContactsController.formatName(str, null, 10))) : AndroidUtilities.replaceTags(LocaleController.formatString("StoriesMovedToContacts", C3632R.string.StoriesMovedToContacts, ContactsController.formatName(str, null, 10))), null, undoObject).setTag(2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toggleArchiveForStory$14(MessagesController messagesController, long j, boolean z) {
        messagesController.getStoriesController().toggleHidden(j, !z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toggleArchiveForStory$15(MessagesController messagesController, long j, boolean z) {
        messagesController.getStoriesController().toggleHidden(j, z, true, true);
    }

    private void createFailView() {
        if (this.failView != null) {
            return;
        }
        StoryFailView storyFailView = new StoryFailView(getContext(), this.resourcesProvider);
        this.failView = storyFailView;
        storyFailView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$createFailView$17(view);
            }
        });
        this.failView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.failView.setVisibility(8);
        addView(this.failView, LayoutHelper.createFrame(-1, -2, 83, 0, 0, 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFailView$17(View view) {
        StoriesController.UploadingStory uploadingStory;
        StoryItemHolder storyItemHolder = this.currentStory;
        if (storyItemHolder == null || (uploadingStory = storyItemHolder.uploadingStory) == null) {
            return;
        }
        uploadingStory.tryAgain();
        updatePosition();
    }

    private void createPremiumBlockedText() {
        if (this.premiumBlockedText != null) {
            return;
        }
        if (this.chatActivityEnterView == null) {
            createEnterView();
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.premiumBlockedText = linearLayout;
        linearLayout.setOrientation(0);
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setScaleX(1.35f);
        imageView.setScaleY(1.35f);
        imageView.setImageResource(C3632R.C3634drawable.mini_switch_lock);
        imageView.setColorFilter(new PorterDuffColorFilter(-8026747, PorterDuff.Mode.SRC_IN));
        TextView textView = new TextView(getContext());
        this.premiumBlockedText1 = textView;
        textView.setTextColor(-8026747);
        this.premiumBlockedText1.setTextSize(1, 16.0f);
        this.premiumBlockedText1.setText(LocaleController.getString(C3632R.string.StoryRepliesLocked));
        TextView textView2 = new TextView(getContext());
        this.premiumBlockedText2 = textView2;
        textView2.setTextColor(-1);
        this.premiumBlockedText2.setTextSize(1, 12.0f);
        this.premiumBlockedText2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(40), 452984831, 855638015));
        this.premiumBlockedText2.setGravity(17);
        ScaleStateListAnimator.apply(this.premiumBlockedText2);
        this.premiumBlockedText2.setText(LocaleController.getString(C3632R.string.StoryRepliesLockedButton));
        this.premiumBlockedText2.setPadding(AndroidUtilities.m107dp(7), 0, AndroidUtilities.m107dp(7), 0);
        this.premiumBlockedText.addView(imageView, LayoutHelper.createLinear(22, 22, 16, 12, 1, 4, 0));
        this.premiumBlockedText.addView(this.premiumBlockedText1, LayoutHelper.createLinear(-2, -2, 16));
        this.premiumBlockedText.addView(this.premiumBlockedText2, LayoutHelper.createLinear(-2, 19, 16, 5, 0, 0, 0));
        this.chatActivityEnterView.addView(this.premiumBlockedText, LayoutHelper.createFrame(-1, -1));
    }

    private void updatePremiumBlockedText() {
        TextView textView = this.premiumBlockedText1;
        if (textView != null) {
            textView.setText(LocaleController.getString(C3632R.string.StoryRepliesLocked));
        }
        TextView textView2 = this.premiumBlockedText2;
        if (textView2 != null) {
            textView2.setText(LocaleController.getString(C3632R.string.StoryRepliesLockedButton));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPremiumBlockedToast() {
        Bulletin createSimpleBulletin;
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        int i = -this.shiftDp;
        this.shiftDp = i;
        AndroidUtilities.shakeViewSpring(chatActivityEnterView, i);
        BotWebViewVibrationEffect.APP_ERROR.vibrate();
        String userName = this.dialogId >= 0 ? UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId))) : "";
        if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            createSimpleBulletin = BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.star_premium_2, AndroidUtilities.replaceTags(LocaleController.formatString(C3632R.string.UserBlockedRepliesNonPremium, userName)));
        } else {
            createSimpleBulletin = BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.star_premium_2, AndroidUtilities.replaceTags(LocaleController.formatString(C3632R.string.UserBlockedRepliesNonPremium, userName)), LocaleController.getString(C3632R.string.UserBlockedNonPremiumButton), new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.this.lambda$showPremiumBlockedToast$18();
                }
            });
        }
        createSimpleBulletin.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumBlockedToast$18() {
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer != null) {
            storyViewer.presentFragment(new PremiumPreviewFragment("noncontacts"));
        }
    }

    private void createEnterView() {
        C722215 c722215 = new C722215(AndroidUtilities.findActivity(getContext()), this, null, true, new WrappedResourceProvider(this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.14
            @Override // org.telegram.p043ui.WrappedResourceProvider
            public void appendColors() {
                this.sparseIntArray.put(Theme.key_chat_emojiPanelBackground, ColorUtils.setAlphaComponent(-1, 30));
            }
        });
        this.chatActivityEnterView = c722215;
        c722215.getEditField().useAnimatedTextDrawable();
        this.chatActivityEnterView.setOverrideKeyboardAnimation(true);
        this.chatActivityEnterView.setClipChildren(false);
        this.chatActivityEnterView.setDelegate(new C722416());
        setDelegate(this.chatActivityEnterView);
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        chatActivityEnterView.shouldDrawBackground = false;
        chatActivityEnterView.shouldDrawRecordedAudioPanelInParent = true;
        chatActivityEnterView.setAllowStickersAndGifs(true, true, true);
        this.chatActivityEnterView.updateColors();
        addView(this.chatActivityEnterView, LayoutHelper.createFrame(-1, -2, 83, 0, 0, 0, 0));
        this.chatActivityEnterView.recordingGuid = this.classGuid;
        this.playerSharedScope.viewsToInvalidate.add(this.storyContainer);
        this.playerSharedScope.viewsToInvalidate.add(this);
        if (this.attachedToWindow) {
            this.chatActivityEnterView.onResume();
        }
        checkStealthMode(false);
        this.reactionsContainerIndex = getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$15 */
    /* loaded from: classes6.dex */
    public class C722215 extends ChatActivityEnterView {
        private int chatActivityEnterViewAnimateFromTop;
        private Animator messageEditTextAnimator;
        int messageEditTextPredrawHeigth;
        int messageEditTextPredrawScrollY;

        C722215(Activity activity, SizeNotifierFrameLayout sizeNotifierFrameLayout, ChatActivity chatActivity, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(activity, sizeNotifierFrameLayout, chatActivity, z, resourcesProvider);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (!isEnabled()) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                boolean contains = rectF.contains(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0) {
                    if (contains && PeerStoriesView.this.premiumBlockedText2 != null) {
                        PeerStoriesView.this.premiumBlockedText2.setPressed(true);
                    }
                } else if (motionEvent.getAction() == 1) {
                    if (PeerStoriesView.this.premiumBlockedText2 != null) {
                        if (contains && PeerStoriesView.this.premiumBlockedText2.isPressed()) {
                            PeerStoriesView.this.showPremiumBlockedToast();
                        }
                        PeerStoriesView.this.premiumBlockedText2.setPressed(false);
                    }
                } else if (motionEvent.getAction() == 3 && PeerStoriesView.this.premiumBlockedText2 != null) {
                    PeerStoriesView.this.premiumBlockedText2.setPressed(false);
                }
                return PeerStoriesView.this.premiumBlockedText2 != null && PeerStoriesView.this.premiumBlockedText2.isPressed();
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        public void setHorizontalPadding(float f, float f2, boolean z) {
            float f3 = (-f) * (1.0f - f2);
            if (PeerStoriesView.this.premiumBlockedText != null) {
                PeerStoriesView.this.premiumBlockedText.setTranslationX(-f3);
            }
            super.setHorizontalPadding(f, f2, z);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        protected boolean showConfirmAlert(Runnable runnable) {
            return PeerStoriesView.this.applyMessageToChat(runnable);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        public void checkAnimation() {
            int backgroundTop = getBackgroundTop();
            int i = this.chatActivityEnterViewAnimateFromTop;
            if (i != 0 && backgroundTop != i) {
                int i2 = (this.animatedTop + i) - backgroundTop;
                this.animatedTop = i2;
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                peerStoriesView.forceUpdateOffsets = true;
                if (peerStoriesView.changeBoundAnimator != null) {
                    PeerStoriesView.this.changeBoundAnimator.removeAllListeners();
                    PeerStoriesView.this.changeBoundAnimator.cancel();
                }
                View view = this.topView;
                if (view != null && view.getVisibility() == 0) {
                    View view2 = this.topView;
                    view2.setTranslationY(this.animatedTop + ((1.0f - this.topViewEnterProgress) * view2.getLayoutParams().height));
                    View view3 = this.topLineView;
                    if (view3 != null) {
                        view3.setTranslationY(this.animatedTop);
                    }
                }
                PeerStoriesView.this.invalidate();
                PeerStoriesView.this.changeBoundAnimator = ValueAnimator.ofFloat(i2, BitmapDescriptorFactory.HUE_RED);
                PeerStoriesView.this.changeBoundAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$15$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PeerStoriesView.C722215.this.lambda$checkAnimation$0(valueAnimator);
                    }
                });
                PeerStoriesView.this.changeBoundAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.15.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PeerStoriesView.this.invalidate();
                        ((ChatActivityEnterView) C722215.this).animatedTop = 0;
                        C722215 c722215 = C722215.this;
                        PeerStoriesView.this.forceUpdateOffsets = true;
                        if (((ChatActivityEnterView) c722215).topView != null && ((ChatActivityEnterView) C722215.this).topView.getVisibility() == 0) {
                            ((ChatActivityEnterView) C722215.this).topView.setTranslationY(((ChatActivityEnterView) C722215.this).animatedTop + ((1.0f - ((ChatActivityEnterView) C722215.this).topViewEnterProgress) * ((ChatActivityEnterView) C722215.this).topView.getLayoutParams().height));
                            if (((ChatActivityEnterView) C722215.this).topLineView != null) {
                                ((ChatActivityEnterView) C722215.this).topLineView.setTranslationY(((ChatActivityEnterView) C722215.this).animatedTop);
                            }
                        }
                        PeerStoriesView.this.changeBoundAnimator = null;
                    }
                });
                PeerStoriesView.this.changeBoundAnimator.setDuration(250L);
                PeerStoriesView.this.changeBoundAnimator.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                PeerStoriesView.this.changeBoundAnimator.start();
                this.chatActivityEnterViewAnimateFromTop = 0;
            }
            if (this.shouldAnimateEditTextWithBounds) {
                EditTextCaption editTextCaption = this.messageEditText;
                editTextCaption.setOffsetY(editTextCaption.getOffsetY() - ((this.messageEditTextPredrawHeigth - this.messageEditText.getMeasuredHeight()) + (this.messageEditTextPredrawScrollY - this.messageEditText.getScrollY())));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.messageEditText.getOffsetY(), BitmapDescriptorFactory.HUE_RED);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$15$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PeerStoriesView.C722215.this.lambda$checkAnimation$1(valueAnimator);
                    }
                });
                Animator animator = this.messageEditTextAnimator;
                if (animator != null) {
                    animator.cancel();
                }
                this.messageEditTextAnimator = ofFloat;
                ofFloat.setDuration(250L);
                ofFloat.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                ofFloat.start();
                this.shouldAnimateEditTextWithBounds = false;
            }
            getMeasuredHeight();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkAnimation$0(ValueAnimator valueAnimator) {
            this.animatedTop = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.forceUpdateOffsets = true;
            peerStoriesView.invalidate();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkAnimation$1(ValueAnimator valueAnimator) {
            this.messageEditText.setOffsetY(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        protected void onLineCountChanged(int i, int i2) {
            if (PeerStoriesView.this.chatActivityEnterView != null) {
                this.shouldAnimateEditTextWithBounds = true;
                this.messageEditTextPredrawHeigth = this.messageEditText.getMeasuredHeight();
                this.messageEditTextPredrawScrollY = this.messageEditText.getScrollY();
                invalidate();
                PeerStoriesView.this.invalidate();
                this.chatActivityEnterViewAnimateFromTop = PeerStoriesView.this.chatActivityEnterView.getBackgroundTop();
            }
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        protected void updateRecordInterface(int i) {
            super.updateRecordInterface(i);
            checkRecording();
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        protected void isRecordingStateChanged() {
            super.isRecordingStateChanged();
            checkRecording();
        }

        private void checkRecording() {
            FrameLayout frameLayout;
            boolean z = PeerStoriesView.this.isRecording;
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            peerStoriesView.isRecording = peerStoriesView.chatActivityEnterView.isRecordingAudioVideo() || PeerStoriesView.this.chatActivityEnterView.seekbarVisible() || ((frameLayout = this.recordedAudioPanel) != null && frameLayout.getVisibility() == 0);
            if (z != PeerStoriesView.this.isRecording) {
                PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                if (peerStoriesView2.isActive) {
                    peerStoriesView2.delegate.setIsRecording(peerStoriesView2.isRecording);
                }
                invalidate();
                PeerStoriesView.this.storyContainer.invalidate();
            }
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView
        public void extendActionMode(Menu menu) {
            ChatActivity.fillActionModeMenu(menu, null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$16 */
    /* loaded from: classes6.dex */
    public class C722416 implements ChatActivityEnterView.ChatActivityEnterViewDelegate {
        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void bottomPanelTranslationYChanged(float f) {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$bottomPanelTranslationYChanged(this, f);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ int getContentViewHeight() {
            return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$getContentViewHeight(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ ChatActivity.ReplyQuote getReplyQuote() {
            return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$getReplyQuote(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ TLRPC$TL_channels_sendAsPeers getSendAsPeers() {
            return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$getSendAsPeers(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ boolean hasForwardingMessages() {
            return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$hasForwardingMessages(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ boolean hasScheduledMessages() {
            return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$hasScheduledMessages(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ int measureKeyboardHeight() {
            return ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$measureKeyboardHeight(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void needSendTyping() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void needStartRecordAudio(int i) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void needStartRecordVideo(int i, boolean z, int i2, int i3) {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$needStartRecordVideo(this, i, z, i2, i3);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onAttachButtonHidden() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onAttachButtonShow() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onAudioVideoInterfaceUpdated() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void onContextMenuClose() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onContextMenuClose(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void onContextMenuOpen() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onContextMenuOpen(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void onEditTextScroll() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onEditTextScroll(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void onKeyboardRequested() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onKeyboardRequested(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onMessageEditEnd(boolean z) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onPreAudioVideoRecord() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onSendLongClick() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onStickersTab(boolean z) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onSwitchRecordMode(boolean z) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onTextSelectionChanged(int i, int i2) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onTextSpansChanged(CharSequence charSequence) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void onTopViewFullyShown() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onTopViewFullyShown(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void onTrendingStickersShowed(boolean z) {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$onTrendingStickersShowed(this, z);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onUpdateSlowModeButton(View view, boolean z, CharSequence charSequence) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onWindowSizeChanged(int i) {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void openReaction() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$openReaction(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void openScheduledMessages() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$openScheduledMessages(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void prepareMessageSending() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$prepareMessageSending(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void scrollToSendingMessage() {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$scrollToSendingMessage(this);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public /* synthetic */ void sendEditedSticker(SendMessagesHelper.SendingMediaInfo sendingMediaInfo, boolean z, int i, String str) {
            ChatActivityEnterView.ChatActivityEnterViewDelegate.CC.$default$sendEditedSticker(this, sendingMediaInfo, z, i, str);
        }

        C722416() {
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void sendMedia(MediaController.PhotoEntry photoEntry, VideoEditedInfo videoEditedInfo, boolean z, int i, boolean z2, String str) {
            if (photoEntry == null) {
                return;
            }
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            TL_stories$StoryItem tL_stories$StoryItem = peerStoriesView.currentStory.storyItem;
            if (tL_stories$StoryItem == null || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped)) {
                return;
            }
            tL_stories$StoryItem.dialogId = peerStoriesView.dialogId;
            if (photoEntry.isVideo) {
                SendMessagesHelper.prepareSendingVideo(PeerStoriesView.this.getAccountInstance(), photoEntry.path, videoEditedInfo, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.ttl, null, z, i, z2, photoEntry.hasSpoiler, photoEntry.caption, str);
            } else if (photoEntry.imagePath != null) {
                SendMessagesHelper.prepareSendingPhoto(PeerStoriesView.this.getAccountInstance(), photoEntry.imagePath, photoEntry.thumbPath, null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.stickers, null, photoEntry.ttl, null, videoEditedInfo, z, i, z2, photoEntry.caption, str);
            } else if (photoEntry.path != null) {
                SendMessagesHelper.prepareSendingPhoto(PeerStoriesView.this.getAccountInstance(), photoEntry.path, photoEntry.thumbPath, null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.stickers, null, photoEntry.ttl, null, videoEditedInfo, z, i, z2, photoEntry.caption, str);
            }
            PeerStoriesView.this.afterMessageSend();
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onMessageSend(CharSequence charSequence, boolean z, int i, String str) {
            if (!PeerStoriesView.this.isRecording) {
                PeerStoriesView.this.afterMessageSend();
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$16$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PeerStoriesView.C722416.this.lambda$onMessageSend$0();
                    }
                }, 200L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMessageSend$0() {
            PeerStoriesView.this.afterMessageSend();
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onTextChanged(CharSequence charSequence, boolean z, boolean z2) {
            if (PeerStoriesView.this.mentionContainer == null) {
                PeerStoriesView.this.createMentionsContainer();
            }
            if (PeerStoriesView.this.mentionContainer.getAdapter() != null) {
                PeerStoriesView.this.mentionContainer.setDialogId(PeerStoriesView.this.dialogId);
                PeerStoriesView.this.mentionContainer.getAdapter().setUserOrChat(MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId)), null);
                PeerStoriesView.this.mentionContainer.getAdapter().lambda$searchUsernameOrHashtag$7(charSequence, PeerStoriesView.this.chatActivityEnterView.getCursorPosition(), null, false, false);
            }
            PeerStoriesView.this.invalidate();
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void didPressAttachButton() {
            PeerStoriesView.this.openAttachMenu();
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void needStartRecordVideo(int i, boolean z, int i2, int i3, boolean z2) {
            PeerStoriesView.this.checkInstantCameraView();
            if (PeerStoriesView.this.instantCameraView != null) {
                if (i == 0) {
                    PeerStoriesView.this.instantCameraView.showCamera(false, z2);
                } else if (i == 1 || i == 3 || i == 4) {
                    PeerStoriesView.this.instantCameraView.send(i, z, i2, i3);
                } else if (i == 2 || i == 5) {
                    PeerStoriesView.this.instantCameraView.cancel(i == 2);
                }
            }
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void toggleVideoRecordingPause() {
            if (PeerStoriesView.this.instantCameraView != null) {
                PeerStoriesView.this.instantCameraView.togglePause();
            }
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void needChangeVideoPreviewState(int i, float f) {
            if (PeerStoriesView.this.instantCameraView != null) {
                PeerStoriesView.this.instantCameraView.changeVideoPreviewState(i, f);
            }
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void needShowMediaBanHint() {
            if (PeerStoriesView.this.mediaBanTooltip == null) {
                PeerStoriesView.this.mediaBanTooltip = new HintView(PeerStoriesView.this.getContext(), 9, PeerStoriesView.this.resourcesProvider);
                PeerStoriesView.this.mediaBanTooltip.setVisibility(8);
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                peerStoriesView.addView(peerStoriesView.mediaBanTooltip, LayoutHelper.createFrame(-2, -2, 51, 10, 0, 10, 0));
            }
            PeerStoriesView.this.mediaBanTooltip.setText(AndroidUtilities.replaceTags(LocaleController.formatString(PeerStoriesView.this.chatActivityEnterView.isInVideoMode() ? C3632R.string.VideoMessagesRestrictedByPrivacy : C3632R.string.VoiceMessagesRestrictedByPrivacy, MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId)).first_name)));
            PeerStoriesView.this.mediaBanTooltip.showForView(PeerStoriesView.this.chatActivityEnterView.getAudioVideoButtonContainer(), true);
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public void onStickersExpandedChange() {
            PeerStoriesView.this.requestLayout();
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public TL_stories$StoryItem getReplyToStory() {
            return PeerStoriesView.this.currentStory.storyItem;
        }

        @Override // org.telegram.p043ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
        public boolean onceVoiceAvailable() {
            TLRPC$User user;
            return (PeerStoriesView.this.dialogId < 0 || (user = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId))) == null || UserObject.isUserSelf(user) || user.bot) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMentionsContainer() {
        MentionsContainerView mentionsContainerView = new MentionsContainerView(getContext(), this.dialogId, 0L, this.storyViewer.fragment, this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.17
            @Override // org.telegram.p043ui.Components.MentionsContainerView
            public void drawRoundRect(Canvas canvas, Rect rect, float f) {
                PeerStoriesView.this.bitmapShaderTools.setBounds(getX(), -getY(), getX() + getMeasuredWidth(), (-getY()) + getMeasuredHeight());
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(rect);
                rectF.offset(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                canvas.drawRoundRect(rectF, f, f, PeerStoriesView.this.bitmapShaderTools.paint);
                canvas.drawRoundRect(rectF, f, f, PeerStoriesView.this.inputBackgroundPaint);
                if (rectF.top < getMeasuredHeight() - 1) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight() - 1, PeerStoriesView.this.resourcesProvider.getPaint("paintDivider"));
                }
            }
        };
        this.mentionContainer = mentionsContainerView;
        mentionsContainerView.withDelegate(new MentionsContainerView.Delegate() { // from class: org.telegram.ui.Stories.PeerStoriesView.18
            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public void onStickerSelected(TLRPC$TL_document tLRPC$TL_document, String str, Object obj) {
                SendMessagesHelper.getInstance(PeerStoriesView.this.currentAccount).sendSticker(tLRPC$TL_document, str, PeerStoriesView.this.dialogId, null, null, PeerStoriesView.this.currentStory.storyItem, null, null, true, 0, false, obj, null);
                PeerStoriesView.this.chatActivityEnterView.addStickerToRecent(tLRPC$TL_document);
                PeerStoriesView.this.chatActivityEnterView.setFieldText("");
                PeerStoriesView.this.afterMessageSend();
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public void replaceText(int i, int i2, CharSequence charSequence, boolean z) {
                PeerStoriesView.this.chatActivityEnterView.replaceWithText(i, i2, charSequence, z);
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public Paint.FontMetricsInt getFontMetrics() {
                return PeerStoriesView.this.chatActivityEnterView.getEditField().getPaint().getFontMetricsInt();
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public void addEmojiToRecent(String str) {
                PeerStoriesView.this.chatActivityEnterView.addEmojiToRecent(str);
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public void sendBotInlineResult(TLRPC$BotInlineResult tLRPC$BotInlineResult, boolean z, int i) {
                long contextBotId = PeerStoriesView.this.mentionContainer.getAdapter().getContextBotId();
                HashMap hashMap = new HashMap();
                hashMap.put(TtmlNode.ATTR_ID, tLRPC$BotInlineResult.f1600id);
                hashMap.put("query_id", "" + tLRPC$BotInlineResult.query_id);
                hashMap.put("bot", "" + contextBotId);
                hashMap.put("bot_name", PeerStoriesView.this.mentionContainer.getAdapter().getContextBotName());
                SendMessagesHelper.prepareSendingBotContextResult(PeerStoriesView.this.storyViewer.fragment, PeerStoriesView.this.getAccountInstance(), tLRPC$BotInlineResult, hashMap, PeerStoriesView.this.dialogId, null, null, PeerStoriesView.this.currentStory.storyItem, null, z, i, null);
                PeerStoriesView.this.chatActivityEnterView.setFieldText("");
                PeerStoriesView.this.afterMessageSend();
                MediaDataController.getInstance(PeerStoriesView.this.currentAccount).increaseInlineRaiting(contextBotId);
            }
        });
        addView(this.mentionContainer, LayoutHelper.createFrame(-1, -1, 83));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean applyMessageToChat(final Runnable runnable) {
        int i = SharedConfig.stealthModeSendMessageConfirm;
        if (i > 0 && this.stealthModeIsActive) {
            int i2 = i - 1;
            SharedConfig.stealthModeSendMessageConfirm = i2;
            SharedConfig.updateStealthModeSendMessageConfirm(i2);
            AlertDialog alertDialog = new AlertDialog(getContext(), 0, this.resourcesProvider);
            alertDialog.setTitle(LocaleController.getString("StealthModeConfirmTitle", C3632R.string.StealthModeConfirmTitle));
            alertDialog.setMessage(LocaleController.getString("StealthModeConfirmMessage", C3632R.string.StealthModeConfirmMessage));
            alertDialog.setPositiveButton(LocaleController.getString("Proceed", C3632R.string.Proceed), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    runnable.run();
                }
            });
            alertDialog.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda7
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    dialogInterface.dismiss();
                }
            });
            alertDialog.show();
        } else {
            runnable.run();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveToGallery() {
        StoryItemHolder storyItemHolder = this.currentStory;
        TL_stories$StoryItem tL_stories$StoryItem = storyItemHolder.storyItem;
        if ((tL_stories$StoryItem == null && storyItemHolder.uploadingStory == null) || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped)) {
            return;
        }
        File path = storyItemHolder.getPath();
        final boolean isVideo = this.currentStory.isVideo();
        if (path != null && path.exists()) {
            MediaController.saveFile(path.toString(), getContext(), isVideo ? 1 : 0, null, null, new Utilities.Callback() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda43
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    PeerStoriesView.this.lambda$saveToGallery$21(isVideo, (Uri) obj);
                }
            });
            return;
        }
        showDownloadAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToGallery$21(boolean z, Uri uri) {
        BulletinFactory.createSaveToGalleryBulletin(this.storyContainer, z, this.resourcesProvider).show();
    }

    private void showDownloadAlert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString("AppName", C3632R.string.AppName));
        builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null);
        builder.setMessage(LocaleController.getString("PleaseDownload", C3632R.string.PleaseDownload));
        this.delegate.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAttachMenu() {
        if (this.chatActivityEnterView == null) {
            return;
        }
        createChatAttachView();
        this.chatAttachAlert.getPhotoLayout().loadGalleryPhotos();
        int i = Build.VERSION.SDK_INT;
        if (i == 21 || i == 22) {
            this.chatActivityEnterView.closeKeyboard();
        }
        this.chatAttachAlert.setMaxSelectedPhotos(-1, true);
        this.chatAttachAlert.init();
        this.chatAttachAlert.getCommentTextView().setText(this.chatActivityEnterView.getFieldText());
        this.chatAttachAlert.setDialogId(this.dialogId);
        this.delegate.showDialog(this.chatAttachAlert);
    }

    private void createChatAttachView() {
        if (this.chatAttachAlert == null) {
            ChatAttachAlert chatAttachAlert = new ChatAttachAlert(getContext(), null, false, false, true, this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.19
                @Override // org.telegram.p043ui.Components.ChatAttachAlert, org.telegram.p043ui.ActionBar.BottomSheet
                public void dismissInternal() {
                    super.dismissInternal();
                }

                @Override // org.telegram.p043ui.ActionBar.BottomSheet
                public void onDismissAnimationStart() {
                    if (PeerStoriesView.this.chatAttachAlert != null) {
                        PeerStoriesView.this.chatAttachAlert.setFocusable(false);
                    }
                    ChatActivityEnterView chatActivityEnterView = PeerStoriesView.this.chatActivityEnterView;
                    if (chatActivityEnterView == null || chatActivityEnterView.getEditField() == null) {
                        return;
                    }
                    PeerStoriesView.this.chatActivityEnterView.getEditField().requestFocus();
                }
            };
            this.chatAttachAlert = chatAttachAlert;
            chatAttachAlert.setDelegate(new ChatAttachAlert.ChatAttachViewDelegate() { // from class: org.telegram.ui.Stories.PeerStoriesView.20
                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public /* synthetic */ void didSelectBot(TLRPC$User tLRPC$User) {
                    ChatAttachAlert.ChatAttachViewDelegate.CC.$default$didSelectBot(this, tLRPC$User);
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public /* synthetic */ void onWallpaperSelected(Object obj) {
                    ChatAttachAlert.ChatAttachViewDelegate.CC.$default$onWallpaperSelected(this, obj);
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public /* synthetic */ void openAvatarsSearch() {
                    ChatAttachAlert.ChatAttachViewDelegate.CC.$default$openAvatarsSearch(this);
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public /* synthetic */ boolean selectItemOnClicking() {
                    return ChatAttachAlert.ChatAttachViewDelegate.CC.$default$selectItemOnClicking(this);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public void didPressedButton(int i, boolean z, boolean z2, int i2, boolean z3, String str, boolean z4) {
                    String str2;
                    if (PeerStoriesView.this.storyViewer.isShowing) {
                        PeerStoriesView peerStoriesView = PeerStoriesView.this;
                        TL_stories$StoryItem tL_stories$StoryItem = peerStoriesView.currentStory.storyItem;
                        if (tL_stories$StoryItem == null || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped)) {
                            return;
                        }
                        int i3 = 4;
                        if (i == 8 || i == 7 || (i == 4 && !peerStoriesView.chatAttachAlert.getPhotoLayout().getSelectedPhotos().isEmpty())) {
                            if (i != 8) {
                                PeerStoriesView.this.chatAttachAlert.dismiss(true);
                            }
                            HashMap<Object, Object> selectedPhotos = PeerStoriesView.this.chatAttachAlert.getPhotoLayout().getSelectedPhotos();
                            ArrayList<Object> selectedPhotosOrder = PeerStoriesView.this.chatAttachAlert.getPhotoLayout().getSelectedPhotosOrder();
                            if (selectedPhotos.isEmpty()) {
                                return;
                            }
                            int i4 = 0;
                            int i5 = 0;
                            while (i5 < Math.ceil(selectedPhotos.size() / 10.0f)) {
                                int i6 = i5 * 10;
                                int min = Math.min(10, selectedPhotos.size() - i6);
                                ArrayList arrayList = new ArrayList();
                                for (int i7 = i4; i7 < min; i7++) {
                                    int i8 = i6 + i7;
                                    if (i8 < selectedPhotosOrder.size()) {
                                        MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) selectedPhotos.get(selectedPhotosOrder.get(i8));
                                        SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
                                        boolean z5 = photoEntry.isVideo;
                                        if (!z5 && (str2 = photoEntry.imagePath) != null) {
                                            sendingMediaInfo.path = str2;
                                        } else {
                                            String str3 = photoEntry.path;
                                            if (str3 != null) {
                                                sendingMediaInfo.path = str3;
                                            }
                                        }
                                        sendingMediaInfo.thumbPath = photoEntry.thumbPath;
                                        sendingMediaInfo.isVideo = z5;
                                        CharSequence charSequence = photoEntry.caption;
                                        sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                                        sendingMediaInfo.entities = photoEntry.entities;
                                        sendingMediaInfo.masks = photoEntry.stickers;
                                        sendingMediaInfo.ttl = photoEntry.ttl;
                                        sendingMediaInfo.videoEditedInfo = photoEntry.editedInfo;
                                        sendingMediaInfo.canDeleteAfter = photoEntry.canDeleteAfter;
                                        sendingMediaInfo.updateStickersOrder = SendMessagesHelper.checkUpdateStickersOrder(photoEntry.caption);
                                        sendingMediaInfo.hasMediaSpoilers = photoEntry.hasSpoiler;
                                        arrayList.add(sendingMediaInfo);
                                        photoEntry.reset();
                                    }
                                }
                                SendMessagesHelper.prepareSendingMedia(PeerStoriesView.this.getAccountInstance(), arrayList, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, (i == i3 || z3) ? 1 : i4, z, null, z2, i2, i5 == 0 ? ((SendMessagesHelper.SendingMediaInfo) arrayList.get(i4)).updateStickersOrder : i4, null, null);
                                i5++;
                                i4 = i4;
                                selectedPhotosOrder = selectedPhotosOrder;
                                selectedPhotos = selectedPhotos;
                                i3 = i3;
                            }
                            PeerStoriesView.this.chatActivityEnterView.setFieldText("");
                            PeerStoriesView.this.afterMessageSend();
                        } else if (PeerStoriesView.this.chatAttachAlert != null) {
                            PeerStoriesView.this.chatAttachAlert.dismissWithButtonClick(i);
                        }
                    }
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public void onCameraOpened() {
                    PeerStoriesView.this.chatActivityEnterView.closeKeyboard();
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public void doOnIdle(Runnable runnable) {
                    NotificationCenter.getInstance(PeerStoriesView.this.currentAccount).doOnIdle(runnable);
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public void sendAudio(ArrayList<MessageObject> arrayList, CharSequence charSequence, boolean z, int i) {
                    PeerStoriesView peerStoriesView = PeerStoriesView.this;
                    TL_stories$StoryItem tL_stories$StoryItem = peerStoriesView.currentStory.storyItem;
                    if (tL_stories$StoryItem == null || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped)) {
                        return;
                    }
                    SendMessagesHelper.prepareSendingAudioDocuments(peerStoriesView.getAccountInstance(), arrayList, charSequence != null ? charSequence : null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, z, i, null, null, true);
                    PeerStoriesView.this.afterMessageSend();
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlert.ChatAttachViewDelegate
                public boolean needEnterComment() {
                    return PeerStoriesView.this.needEnterText();
                }
            });
            this.chatAttachAlert.getPhotoLayout().loadGalleryPhotos();
            this.chatAttachAlert.setAllowEnterCaption(true);
            this.chatAttachAlert.init();
            this.chatAttachAlert.setDocumentsDelegate(new ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate() { // from class: org.telegram.ui.Stories.PeerStoriesView.21
                @Override // org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public /* synthetic */ void didSelectPhotos(ArrayList arrayList, boolean z, int i, String str, boolean z2) {
                    ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate.CC.$default$didSelectPhotos(this, arrayList, z, i, str, z2);
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public /* synthetic */ void startMusicSelectActivity() {
                    ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate.CC.$default$startMusicSelectActivity(this);
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public void didSelectFiles(ArrayList<String> arrayList, String str, ArrayList<MessageObject> arrayList2, boolean z, int i, String str2, boolean z2, boolean z3) {
                    PeerStoriesView peerStoriesView = PeerStoriesView.this;
                    TL_stories$StoryItem tL_stories$StoryItem = peerStoriesView.currentStory.storyItem;
                    if (tL_stories$StoryItem == null || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped)) {
                        return;
                    }
                    SendMessagesHelper.prepareSendingDocuments(peerStoriesView.getAccountInstance(), arrayList, arrayList, null, str, null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, null, z, i, null, null, true);
                    PeerStoriesView.this.afterMessageSend();
                }

                @Override // org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public void startDocumentSelectActivity() {
                    try {
                        Intent intent = new Intent("android.intent.action.GET_CONTENT");
                        if (Build.VERSION.SDK_INT >= 18) {
                            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                        }
                        intent.setType("*/*");
                        PeerStoriesView.this.storyViewer.startActivityForResult(intent, 21);
                    } catch (Exception e) {
                        FileLog.m102e(e);
                    }
                }
            });
            this.chatAttachAlert.getCommentTextView().setText(this.chatActivityEnterView.getFieldText());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryToOpenRepostStory() {
        if (MessagesController.getInstance(this.currentAccount).storiesEnabled()) {
            File path = this.currentStory.getPath();
            if (path != null && path.exists()) {
                ShareAlert shareAlert = this.shareAlert;
                if (shareAlert != null) {
                    shareAlert.dismiss();
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda30
                    @Override // java.lang.Runnable
                    public final void run() {
                        PeerStoriesView.this.openRepostStory();
                    }
                }, 120L);
                return;
            }
            showDownloadAlert();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareStory(boolean z) {
        StoryItemHolder storyItemHolder = this.currentStory;
        if (storyItemHolder.storyItem == null || this.storyViewer.fragment == null) {
            return;
        }
        String createLink = storyItemHolder.createLink();
        if (z) {
            ShareAlert shareAlert = new ShareAlert(this.storyViewer.fragment.getContext(), null, null, createLink, null, false, createLink, null, false, false, !DISABLE_STORY_REPOSTING && MessagesController.getInstance(this.currentAccount).storiesEnabled() && (!(this.isChannel || UserObject.isService(this.dialogId)) || ChatObject.isPublic(this.isChannel ? MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId)) : null)), new WrappedResourceProvider(this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.22
                @Override // org.telegram.p043ui.WrappedResourceProvider
                public void appendColors() {
                    this.sparseIntArray.put(Theme.key_chat_emojiPanelBackground, ColorUtils.blendARGB(-16777216, -1, 0.2f));
                    this.sparseIntArray.put(Theme.key_chat_messagePanelIcons, ColorUtils.blendARGB(-16777216, -1, 0.5f));
                }
            }) { // from class: org.telegram.ui.Stories.PeerStoriesView.23
                @Override // org.telegram.p043ui.Components.ShareAlert, org.telegram.p043ui.ActionBar.BottomSheet
                public void dismissInternal() {
                    super.dismissInternal();
                    PeerStoriesView.this.shareAlert = null;
                }

                @Override // org.telegram.p043ui.Components.ShareAlert
                protected void onShareStory(View view) {
                    PeerStoriesView.this.tryToOpenRepostStory();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.ShareAlert
                public void onSend(LongSparseArray<TLRPC$Dialog> longSparseArray, int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
                    super.onSend(longSparseArray, i, tLRPC$TL_forumTopic);
                    PeerStoriesView peerStoriesView = PeerStoriesView.this;
                    BulletinFactory m66of = BulletinFactory.m66of(peerStoriesView.storyContainer, peerStoriesView.resourcesProvider);
                    if (m66of != null) {
                        if (longSparseArray.size() == 1) {
                            long keyAt = longSparseArray.keyAt(0);
                            if (keyAt == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                m66of.createSimpleBulletin(C3632R.raw.saved_messages, AndroidUtilities.replaceTags(LocaleController.formatString("StorySharedToSavedMessages", C3632R.string.StorySharedToSavedMessages, new Object[0])), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).hideAfterBottomSheet(false).show();
                            } else if (keyAt < 0) {
                                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-keyAt));
                                int i2 = C3632R.raw.forward;
                                int i3 = C3632R.string.StorySharedTo;
                                Object[] objArr = new Object[1];
                                objArr[0] = tLRPC$TL_forumTopic != null ? tLRPC$TL_forumTopic.title : chat.title;
                                m66of.createSimpleBulletin(i2, AndroidUtilities.replaceTags(LocaleController.formatString("StorySharedTo", i3, objArr)), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).hideAfterBottomSheet(false).show();
                            } else {
                                m66of.createSimpleBulletin(C3632R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatString("StorySharedTo", C3632R.string.StorySharedTo, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(keyAt)).first_name)), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).hideAfterBottomSheet(false).show();
                            }
                        } else {
                            m66of.createSimpleBulletin(C3632R.raw.forward, AndroidUtilities.replaceTags(LocaleController.formatPluralString("StorySharedToManyChats", longSparseArray.size(), Integer.valueOf(longSparseArray.size())))).hideAfterBottomSheet(false).show();
                        }
                        PeerStoriesView.this.performHapticFeedback(3);
                    }
                }
            };
            this.shareAlert = shareAlert;
            shareAlert.forceDarkThemeForHint = true;
            TL_stories$StoryItem tL_stories$StoryItem = this.currentStory.storyItem;
            tL_stories$StoryItem.dialogId = this.dialogId;
            shareAlert.setStoryToShare(tL_stories$StoryItem);
            this.shareAlert.setDelegate(new ShareAlert.ShareAlertDelegate() { // from class: org.telegram.ui.Stories.PeerStoriesView.24
                @Override // org.telegram.p043ui.Components.ShareAlert.ShareAlertDelegate
                public /* synthetic */ void didShare() {
                    ShareAlert.ShareAlertDelegate.CC.$default$didShare(this);
                }

                @Override // org.telegram.p043ui.Components.ShareAlert.ShareAlertDelegate
                public boolean didCopy() {
                    PeerStoriesView.this.onLinkCopied();
                    return true;
                }
            });
            this.delegate.showDialog(this.shareAlert);
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", createLink);
        LaunchActivity.instance.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("StickersShare", C3632R.string.StickersShare)), 500);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openRepostStory() {
        final Activity findActivity = AndroidUtilities.findActivity(getContext());
        if (findActivity == null) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$openRepostStory$27(findActivity);
            }
        };
        if (this.delegate.releasePlayer(runnable)) {
            return;
        }
        AndroidUtilities.runOnUIThread(runnable, 80L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openRepostStory$27(Activity activity) {
        StoryViewer.VideoPlayerHolder videoPlayerHolder;
        final StoryRecorder storyRecorder = StoryRecorder.getInstance(activity, this.currentAccount);
        VideoPlayerSharedScope videoPlayerSharedScope = this.playerSharedScope;
        storyRecorder.openForward(StoryRecorder.SourceView.fromStoryViewer(this.storyViewer), StoryEntry.repostStoryItem(this.currentStory.getPath(), this.currentStory.storyItem), (videoPlayerSharedScope == null || (videoPlayerHolder = videoPlayerSharedScope.player) == null) ? 0L : videoPlayerHolder.currentPosition, true);
        storyRecorder.setOnFullyOpenListener(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$openRepostStory$22();
            }
        });
        storyRecorder.setOnPrepareCloseListener(new Utilities.Callback4() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda42
            @Override // org.telegram.messenger.Utilities.Callback4
            public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                PeerStoriesView.this.lambda$openRepostStory$26(storyRecorder, (Long) obj, (Runnable) obj2, (Boolean) obj3, (Long) obj4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openRepostStory$22() {
        this.editOpened = true;
        setActive(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openRepostStory$26(final StoryRecorder storyRecorder, Long l, final Runnable runnable, Boolean bool, final Long l2) {
        DialogStoriesCell dialogStoriesCell;
        BaseFragment baseFragment;
        BaseFragment baseFragment2;
        StoryViewer storyViewer;
        StoryViewer storyViewer2;
        INavigationLayout parentLayout;
        if (bool.booleanValue()) {
            BaseFragment baseFragment3 = this.storyViewer.fragment;
            if (baseFragment3 != null && (parentLayout = baseFragment3.getParentLayout()) != null) {
                List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
                ArrayList arrayList = new ArrayList();
                for (int size = fragmentStack.size() - 1; size >= 0; size--) {
                    BaseFragment baseFragment4 = fragmentStack.get(size);
                    if (baseFragment4 instanceof DialogsActivity) {
                        DialogsActivity dialogsActivity = (DialogsActivity) baseFragment4;
                        dialogsActivity.closeSearching();
                        DialogStoriesCell dialogStoriesCell2 = dialogsActivity.dialogStoriesCell;
                        r7 = dialogStoriesCell2 != null ? dialogStoriesCell2.findStoryCell(l2.longValue()) : null;
                        for (int i = 0; i < arrayList.size(); i++) {
                            parentLayout.removeFragmentFromStack((BaseFragment) arrayList.get(i));
                        }
                        dialogStoriesCell = dialogStoriesCell2;
                        baseFragment = this.storyViewer.fragment;
                        if (baseFragment != null && (storyViewer2 = baseFragment.overlayStoryViewer) != null) {
                            storyViewer2.instantClose();
                        }
                        baseFragment2 = this.storyViewer.fragment;
                        if (baseFragment2 != null && (storyViewer = baseFragment2.storyViewer) != null) {
                            storyViewer.instantClose();
                        }
                        this.storyViewer.instantClose();
                        this.editOpened = false;
                        if (dialogStoriesCell == null && dialogStoriesCell.scrollTo(l2.longValue())) {
                            final DialogStoriesCell.StoryCell storyCell = r7;
                            final DialogStoriesCell dialogStoriesCell3 = dialogStoriesCell;
                            dialogStoriesCell.afterNextLayout(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda27
                                @Override // java.lang.Runnable
                                public final void run() {
                                    PeerStoriesView.lambda$openRepostStory$23(DialogStoriesCell.StoryCell.this, dialogStoriesCell3, l2, storyRecorder, runnable);
                                }
                            });
                            return;
                        }
                        storyRecorder.replaceSourceView(StoryRecorder.SourceView.fromStoryCell(r7));
                        AndroidUtilities.runOnUIThread(runnable, 400L);
                        return;
                    }
                    arrayList.add(baseFragment4);
                }
            }
            dialogStoriesCell = null;
            baseFragment = this.storyViewer.fragment;
            if (baseFragment != null) {
                storyViewer2.instantClose();
            }
            baseFragment2 = this.storyViewer.fragment;
            if (baseFragment2 != null) {
                storyViewer.instantClose();
            }
            this.storyViewer.instantClose();
            this.editOpened = false;
            if (dialogStoriesCell == null) {
            }
            storyRecorder.replaceSourceView(StoryRecorder.SourceView.fromStoryCell(r7));
            AndroidUtilities.runOnUIThread(runnable, 400L);
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        VideoPlayerSharedScope videoPlayerSharedScope = this.playerSharedScope;
        if (videoPlayerSharedScope != null && videoPlayerSharedScope.player == null) {
            this.delegate.setPopupIsVisible(false);
            setActive(true);
            this.editOpened = false;
            this.onImageReceiverThumbLoaded = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.lambda$openRepostStory$24(runnable);
                }
            };
            if (bool.booleanValue()) {
                updatePosition();
            }
            AndroidUtilities.runOnUIThread(runnable, 400L);
            return;
        }
        StoryViewer.VideoPlayerHolder videoPlayerHolder = videoPlayerSharedScope.player;
        videoPlayerHolder.firstFrameRendered = false;
        videoPlayerSharedScope.firstFrameRendered = false;
        videoPlayerHolder.setOnReadyListener(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.lambda$openRepostStory$25(runnable, currentTimeMillis);
            }
        });
        this.delegate.setPopupIsVisible(false);
        RLottieImageView rLottieImageView = this.muteIconView;
        if (rLottieImageView != null) {
            rLottieImageView.setAnimation(this.sharedResources.muteDrawable);
        }
        setActive(((this.videoDuration <= 0 || l.longValue() <= this.videoDuration - 1400) ? l : 0L).longValue(), true);
        this.editOpened = false;
        AndroidUtilities.runOnUIThread(runnable, 400L);
        if (bool.booleanValue()) {
            updatePosition();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRepostStory$23(DialogStoriesCell.StoryCell storyCell, DialogStoriesCell dialogStoriesCell, Long l, StoryRecorder storyRecorder, Runnable runnable) {
        if (storyCell == null) {
            storyCell = dialogStoriesCell.findStoryCell(l.longValue());
        }
        storyRecorder.replaceSourceView(StoryRecorder.SourceView.fromStoryCell(storyCell));
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRepostStory$24(Runnable runnable) {
        AndroidUtilities.cancelRunOnUIThread(runnable);
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRepostStory$25(Runnable runnable, long j) {
        AndroidUtilities.cancelRunOnUIThread(runnable);
        AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 32 - (System.currentTimeMillis() - j)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLinkCopied() {
        if (this.currentStory.storyItem == null) {
            return;
        }
        TL_stories$TL_stories_exportStoryLink tL_stories$TL_stories_exportStoryLink = new TL_stories$TL_stories_exportStoryLink();
        tL_stories$TL_stories_exportStoryLink.f1774id = this.currentStory.storyItem.f1763id;
        tL_stories$TL_stories_exportStoryLink.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_exportStoryLink, new RequestDelegate(this) { // from class: org.telegram.ui.Stories.PeerStoriesView.25
            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            }
        });
    }

    public void setDay(long j, ArrayList<Integer> arrayList, int i) {
        this.dialogId = j;
        this.day = arrayList;
        bindInternal(i);
    }

    public void setDialogId(long j, int i) {
        if (this.dialogId != j) {
            this.currentStory.clear();
        }
        this.dialogId = j;
        this.day = null;
        bindInternal(i);
        TL_stories$PeerStories tL_stories$PeerStories = this.storyViewer.overrideUserStories;
        if (tL_stories$PeerStories != null) {
            this.storiesController.loadSkippedStories(tL_stories$PeerStories, true);
        } else {
            this.storiesController.loadSkippedStories(j);
        }
    }

    private void bindInternal(int i) {
        this.deletedPeer = false;
        this.forceUpdateOffsets = true;
        this.userCanSeeViews = false;
        this.isChannel = false;
        long j = this.dialogId;
        if (j >= 0) {
            this.isSelf = j == UserConfig.getInstance(this.currentAccount).getClientUserId();
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
            this.isPremiumBlocked = !UserConfig.getInstance(this.currentAccount).isPremium() && MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.dialogId);
            this.avatarDrawable.setInfo(this.currentAccount, user);
            this.headerView.backupImageView.getImageReceiver().setForUserOrChat(user, this.avatarDrawable);
            if (this.isSelf) {
                this.headerView.titleView.setText(LocaleController.getString("SelfStoryTitle", C3632R.string.SelfStoryTitle));
                this.headerView.titleView.setRightDrawable((Drawable) null);
            } else {
                if (user != null && user.verified) {
                    Drawable mutate = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.verified_profile).mutate();
                    mutate.setAlpha(255);
                    CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, null);
                    combinedDrawable.setFullsize(true);
                    combinedDrawable.setCustomSize(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16));
                    this.headerView.titleView.setRightDrawable(combinedDrawable);
                } else {
                    this.headerView.titleView.setRightDrawable((Drawable) null);
                }
                if (user != null) {
                    this.headerView.titleView.setText(Emoji.replaceEmoji(ContactsController.formatName(user), this.headerView.titleView.getPaint().getFontMetricsInt(), false));
                } else {
                    this.headerView.titleView.setText(null);
                }
            }
        } else {
            this.isSelf = false;
            this.isChannel = true;
            this.isPremiumBlocked = false;
            if (this.storiesController.canEditStories(j) || BuildVars.DEBUG_PRIVATE_VERSION) {
                this.userCanSeeViews = true;
            }
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            this.avatarDrawable.setInfo(this.currentAccount, chat);
            this.headerView.backupImageView.getImageReceiver().setForUserOrChat(chat, this.avatarDrawable);
            this.headerView.titleView.setText(chat.title);
            if (chat.verified) {
                Drawable mutate2 = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.verified_profile).mutate();
                mutate2.setAlpha(255);
                CombinedDrawable combinedDrawable2 = new CombinedDrawable(mutate2, null);
                combinedDrawable2.setFullsize(true);
                combinedDrawable2.setCustomSize(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16));
                this.headerView.titleView.setRightDrawable(combinedDrawable2);
            } else {
                this.headerView.titleView.setRightDrawable((Drawable) null);
            }
        }
        if (this.isActive && (this.isSelf || this.isChannel)) {
            this.storiesController.pollViewsForSelfStories(this.dialogId, true);
        }
        updateStoryItems();
        this.selectedPosition = i;
        if (i < 0) {
            this.selectedPosition = 0;
        }
        this.currentImageTime = 0L;
        this.switchEventSent = false;
        if (this.isChannel) {
            createSelfPeerView();
            ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
            if (chatActivityEnterView != null) {
                chatActivityEnterView.setVisibility(8);
            }
            if (this.reactionsCounter == null) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
                this.reactionsCounter = animatedTextDrawable;
                animatedTextDrawable.setCallback(this.likeButtonContainer);
                this.reactionsCounter.setTextColor(this.resourcesProvider.getColor(Theme.key_windowBackgroundWhiteBlackText));
                this.reactionsCounter.setTextSize(AndroidUtilities.m107dp(14));
                this.reactionsCounterProgress = new AnimatedFloat(this.likeButtonContainer);
            }
            if (this.repostButtonContainer != null && this.repostCounter == null) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable();
                this.repostCounter = animatedTextDrawable2;
                animatedTextDrawable2.setCallback(this.repostButtonContainer);
                this.repostCounter.setTextColor(this.resourcesProvider.getColor(Theme.key_windowBackgroundWhiteBlackText));
                this.repostCounter.setTextSize(AndroidUtilities.m107dp(14));
                this.repostCounterProgress = new AnimatedFloat(this.repostButtonContainer);
            }
            if (i == -1) {
                updateSelectedPosition();
            }
            updatePosition();
            this.count = getStoriesCount();
            this.storyContainer.invalidate();
            invalidate();
        } else if (this.isSelf) {
            createSelfPeerView();
            this.selfView.setVisibility(0);
            ChatActivityEnterView chatActivityEnterView2 = this.chatActivityEnterView;
            if (chatActivityEnterView2 != null) {
                chatActivityEnterView2.setVisibility(8);
            }
            if (i == -1) {
                ArrayList<Integer> arrayList = this.day;
                if (arrayList != null) {
                    int indexOf = arrayList.indexOf(Integer.valueOf(this.storyViewer.dayStoryId));
                    if (indexOf < 0 && !this.day.isEmpty()) {
                        if (this.storyViewer.dayStoryId > this.day.get(0).intValue()) {
                            indexOf = 0;
                        } else {
                            int i2 = this.storyViewer.dayStoryId;
                            ArrayList<Integer> arrayList2 = this.day;
                            if (i2 < arrayList2.get(arrayList2.size() - 1).intValue()) {
                                indexOf = this.day.size() - 1;
                            }
                        }
                    }
                    this.selectedPosition = Math.max(0, indexOf);
                } else if (!this.uploadingStories.isEmpty()) {
                    this.selectedPosition = this.storyItems.size();
                } else {
                    for (int i3 = 0; i3 < this.storyItems.size(); i3++) {
                        if (this.storyItems.get(i3).justUploaded || this.storyItems.get(i3).f1763id > this.storiesController.dialogIdToMaxReadId.get(this.dialogId)) {
                            this.selectedPosition = i3;
                            break;
                        }
                    }
                }
            }
            updatePosition();
            this.storyContainer.invalidate();
            invalidate();
        } else {
            if (this.chatActivityEnterView == null) {
                createEnterView();
            }
            if (this.isPremiumBlocked && this.premiumBlockedText == null) {
                createPremiumBlockedText();
            }
            if (this.premiumBlockedText != null) {
                if (this.isPremiumBlocked) {
                    updatePremiumBlockedText();
                }
                this.premiumBlockedText.setVisibility(this.isPremiumBlocked ? 0 : 8);
            }
            StoryFailView storyFailView = this.failView;
            if (storyFailView != null) {
                storyFailView.setVisibility(8);
            }
            if (i == -1) {
                updateSelectedPosition();
            }
            updatePosition();
            ChatActivityEnterView chatActivityEnterView3 = this.chatActivityEnterView;
            if (chatActivityEnterView3 != null) {
                chatActivityEnterView3.setVisibility(UserObject.isService(this.dialogId) ? 8 : 0);
                this.chatActivityEnterView.getEditField().setText(this.storyViewer.getDraft(this.dialogId, this.currentStory.storyItem));
                this.chatActivityEnterView.setDialogId(this.dialogId, this.currentAccount);
                TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(this.dialogId);
                if (userFull != null) {
                    this.chatActivityEnterView.updateRecordButton(null, userFull);
                } else {
                    MessagesController.getInstance(this.currentAccount).loadFullUser(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId)), this.classGuid, false);
                }
            }
            this.count = getStoriesCount();
            FrameLayout frameLayout = this.selfView;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
            }
            this.storyContainer.invalidate();
            invalidate();
        }
    }

    private void createUnsupportedContainer() {
        if (this.unsupportedContainer != null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        TextView textView = new TextView(getContext());
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(1);
        textView.setTextSize(1, 16.0f);
        textView.setText(LocaleController.getString("StoryUnsupported", C3632R.string.StoryUnsupported));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        TextView textView2 = new TextView(getContext());
        ScaleStateListAnimator.apply(textView2);
        textView2.setText(LocaleController.getString("AppUpdate", C3632R.string.AppUpdate));
        int i = Theme.key_featuredStickers_buttonText;
        textView2.setTextColor(Theme.getColor(i, this.resourcesProvider));
        textView2.setPadding(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(12));
        textView2.setGravity(17);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setTextSize(1, 15.0f);
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), ColorUtils.setAlphaComponent(Theme.getColor(i, this.resourcesProvider), 30)));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PeerStoriesView.this.lambda$createUnsupportedContainer$28(view);
            }
        });
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 0, 24, 0, 0));
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 17, 72, 0, 72, 0));
        this.storyContainer.addView(frameLayout);
        this.unsupportedContainer = frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createUnsupportedContainer$28(View view) {
        if (ApplicationLoader.isStandaloneBuild()) {
            LaunchActivity launchActivity = LaunchActivity.instance;
            if (launchActivity != null) {
                launchActivity.checkAppUpdate(true);
            }
        } else if (BuildVars.isHuaweiStoreApp()) {
            Browser.openUrl(getContext(), BuildVars.HUAWEI_STORE_URL);
        } else {
            Browser.openUrl(getContext(), BuildVars.PLAYSTORE_APP_URL);
        }
    }

    public void preloadMainImage(long j) {
        if (this.dialogId == j && this.day == null) {
            return;
        }
        this.dialogId = j;
        updateStoryItems();
        updateSelectedPosition();
        updatePosition(true);
        TL_stories$PeerStories tL_stories$PeerStories = this.storyViewer.overrideUserStories;
        if (tL_stories$PeerStories != null) {
            this.storiesController.loadSkippedStories(tL_stories$PeerStories, true);
        } else {
            this.storiesController.loadSkippedStories(j);
        }
    }

    private void updateSelectedPosition() {
        TL_stories$PeerStories tL_stories$PeerStories;
        ArrayList<Integer> arrayList;
        ArrayList<Integer> arrayList2 = this.day;
        if (arrayList2 != null) {
            int indexOf = arrayList2.indexOf(Integer.valueOf(this.storyViewer.dayStoryId));
            if (indexOf < 0 && !this.day.isEmpty()) {
                if (this.storyViewer.dayStoryId > this.day.get(0).intValue()) {
                    indexOf = 0;
                } else {
                    if (this.storyViewer.dayStoryId < this.day.get(arrayList.size() - 1).intValue()) {
                        indexOf = this.day.size() - 1;
                    }
                }
            }
            this.selectedPosition = indexOf;
        } else {
            int i = this.storyViewer.savedPositions.get(this.dialogId, -1);
            this.selectedPosition = i;
            if (i == -1 && !this.storyViewer.isSingleStory && (tL_stories$PeerStories = this.userStories) != null && tL_stories$PeerStories.max_read_id > 0) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.storyItems.size()) {
                        break;
                    } else if (this.storyItems.get(i2).f1763id > this.userStories.max_read_id) {
                        this.selectedPosition = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        if (this.selectedPosition == -1) {
            this.selectedPosition = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStoryItems() {
        TL_stories$StoryItem tL_stories$StoryItem;
        this.storyItems.clear();
        StoryViewer storyViewer = this.storyViewer;
        if (storyViewer.isSingleStory) {
            this.storyItems.add(storyViewer.singleStory);
        } else {
            ArrayList<Integer> arrayList = this.day;
            if (arrayList != null && storyViewer.storiesList != null) {
                Iterator<Integer> it = arrayList.iterator();
                while (it.hasNext()) {
                    MessageObject findMessageObject = this.storyViewer.storiesList.findMessageObject(it.next().intValue());
                    if (findMessageObject != null && (tL_stories$StoryItem = findMessageObject.storyItem) != null) {
                        this.storyItems.add(tL_stories$StoryItem);
                    }
                }
            } else {
                if (storyViewer.storiesList != null) {
                    for (int i = 0; i < this.storyViewer.storiesList.messageObjects.size(); i++) {
                        this.storyItems.add(this.storyViewer.storiesList.messageObjects.get(i).storyItem);
                    }
                } else {
                    TL_stories$PeerStories tL_stories$PeerStories = storyViewer.overrideUserStories;
                    if (tL_stories$PeerStories != null && DialogObject.getPeerDialogId(tL_stories$PeerStories.peer) == this.dialogId) {
                        this.userStories = this.storyViewer.overrideUserStories;
                    } else {
                        TL_stories$PeerStories stories = this.storiesController.getStories(this.dialogId);
                        this.userStories = stories;
                        if (stories == null) {
                            this.userStories = this.storiesController.getStoriesFromFullPeer(this.dialogId);
                        }
                    }
                    this.totalStoriesCount = 0;
                    TL_stories$PeerStories tL_stories$PeerStories2 = this.userStories;
                    if (tL_stories$PeerStories2 != null) {
                        this.totalStoriesCount = tL_stories$PeerStories2.stories.size();
                        this.storyItems.addAll(this.userStories.stories);
                    }
                    this.uploadingStories.clear();
                    ArrayList<StoriesController.UploadingStory> uploadingStories = this.storiesController.getUploadingStories(this.dialogId);
                    if (uploadingStories != null) {
                        this.uploadingStories.addAll(uploadingStories);
                    }
                }
            }
        }
        this.count = getStoriesCount();
    }

    private void createSelfPeerView() {
        if (this.selfView != null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Stories.PeerStoriesView.26
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                int x;
                if (PeerStoriesView.this.selfAvatarsContainer.getVisibility() == 0 && PeerStoriesView.this.selfAvatarsContainer.getLayoutParams().width != (x = (int) (((PeerStoriesView.this.selfStatusView.getX() + PeerStoriesView.this.selfStatusView.getMeasuredWidth()) - PeerStoriesView.this.selfAvatarsContainer.getX()) + AndroidUtilities.m107dp(10)))) {
                    PeerStoriesView.this.selfAvatarsContainer.getLayoutParams().width = x;
                    PeerStoriesView.this.selfAvatarsContainer.invalidate();
                    PeerStoriesView.this.selfAvatarsContainer.requestLayout();
                }
                super.dispatchDraw(canvas);
            }
        };
        this.selfView = frameLayout;
        frameLayout.setClickable(true);
        addView(this.selfView, LayoutHelper.createFrame(-1, 48, 48, 0, 0, 136, 0));
        View view = new View(getContext()) { // from class: org.telegram.ui.Stories.PeerStoriesView.27
            LoadingDrawable loadingDrawable = new LoadingDrawable();
            AnimatedFloat animatedFloat = new AnimatedFloat(250, CubicBezierInterpolator.DEFAULT);

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                this.animatedFloat.setParent(this);
                this.animatedFloat.set(PeerStoriesView.this.showViewsProgress ? 1.0f : 0.0f, false);
                if (this.animatedFloat.get() != BitmapDescriptorFactory.HUE_RED) {
                    if (this.animatedFloat.get() != 1.0f) {
                        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getLayoutParams().width, getMeasuredHeight(), (int) (this.animatedFloat.get() * 255.0f), 31);
                    } else {
                        canvas.save();
                    }
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getLayoutParams().width, getMeasuredHeight());
                    this.loadingDrawable.setBounds(rectF);
                    this.loadingDrawable.setRadiiDp(24.0f);
                    this.loadingDrawable.setColors(ColorUtils.setAlphaComponent(-1, 20), ColorUtils.setAlphaComponent(-1, 50), ColorUtils.setAlphaComponent(-1, 50), ColorUtils.setAlphaComponent(-1, 70));
                    this.loadingDrawable.draw(canvas);
                    invalidate();
                    canvas.restore();
                }
            }
        };
        this.selfAvatarsContainer = view;
        view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PeerStoriesView.this.lambda$createSelfPeerView$29(view2);
            }
        });
        this.selfView.addView(this.selfAvatarsContainer, LayoutHelper.createFrame(-1, 32, 0, 9, 11, 0, 0));
        HwAvatarsImageView hwAvatarsImageView = new HwAvatarsImageView(getContext(), false);
        this.selfAvatarsView = hwAvatarsImageView;
        hwAvatarsImageView.setAvatarsTextSize(AndroidUtilities.m107dp(18));
        this.selfView.addView(this.selfAvatarsView, LayoutHelper.createFrame(-1, 28, 0, 13, 13, 0, 0));
        TextView textView = new TextView(getContext());
        this.selfStatusView = textView;
        textView.setTextSize(1, 14.0f);
        this.selfStatusView.setTextColor(-1);
        this.selfView.addView(this.selfStatusView, LayoutHelper.createFrame(-2, -2, 0, 0, 16, 0, 9));
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(this.sharedResources.deleteDrawable);
        this.selfAvatarsContainer.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(15), 0, ColorUtils.setAlphaComponent(-1, 120)));
        imageView.setBackground(Theme.createCircleSelectorDrawable(ColorUtils.setAlphaComponent(-1, 120), -AndroidUtilities.m107dp(2), -AndroidUtilities.m107dp(2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSelfPeerView$29(View view) {
        showUserViewsDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteStory() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString("DeleteStoryTitle", C3632R.string.DeleteStoryTitle));
        builder.setMessage(LocaleController.getString("DeleteStorySubtitle", C3632R.string.DeleteStorySubtitle));
        builder.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PeerStoriesView.this.lambda$deleteStory$30(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        AlertDialog create = builder.create();
        this.delegate.showDialog(create);
        create.redPositive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStory$30(DialogInterface dialogInterface, int i) {
        this.currentStory.cancelOrDelete();
        updateStoryItems();
        if (this.isActive && this.count == 0) {
            this.delegate.switchToNextAndRemoveCurrentPeer();
            return;
        }
        int i2 = this.selectedPosition;
        int i3 = this.count;
        if (i2 >= i3) {
            this.selectedPosition = i3 - 1;
        } else if (i2 < 0) {
            this.selectedPosition = 0;
        }
        updatePosition();
    }

    private void showUserViewsDialog() {
        this.storyViewer.openViews();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.sharedResources.topOverlayGradient.setBounds(0, 0, getMeasuredWidth(), AndroidUtilities.m107dp(72));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable;
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2;
        updateViewOffsets();
        if (this.isChannel && (animatedTextDrawable2 = this.reactionsCounter) != null) {
            animatedTextDrawable2.setBounds(0, 0, getMeasuredWidth(), AndroidUtilities.m107dp(40));
        }
        if (this.isChannel && (animatedTextDrawable = this.repostCounter) != null) {
            animatedTextDrawable.setBounds(0, 0, getMeasuredWidth(), AndroidUtilities.m107dp(40));
        }
        super.dispatchDraw(canvas);
        if (this.movingReaction) {
            float x = this.bottomActionsLinearLayout.getX() + this.likeButtonContainer.getX() + (this.likeButtonContainer.getMeasuredWidth() / 2.0f);
            float y = this.bottomActionsLinearLayout.getY() + this.likeButtonContainer.getY() + (this.likeButtonContainer.getMeasuredHeight() / 2.0f);
            int m107dp = AndroidUtilities.m107dp(24);
            float f = m107dp / 2.0f;
            float lerp = AndroidUtilities.lerp(this.movingReactionFromX, x - f, CubicBezierInterpolator.EASE_OUT.getInterpolation(this.movingReactionProgress));
            float lerp2 = AndroidUtilities.lerp(this.movingReactionFromY, y - f, this.movingReactionProgress);
            int lerp3 = AndroidUtilities.lerp(this.movingReactionFromSize, m107dp, this.movingReactionProgress);
            if (this.drawAnimatedEmojiAsMovingReaction) {
                AnimatedEmojiDrawable animatedEmojiDrawable = this.reactionMoveDrawable;
                if (animatedEmojiDrawable != null) {
                    float f2 = lerp3;
                    animatedEmojiDrawable.setBounds((int) lerp, (int) lerp2, (int) (lerp + f2), (int) (lerp2 + f2));
                    this.reactionMoveDrawable.draw(canvas);
                }
            } else {
                float f3 = lerp3;
                this.reactionMoveImageReceiver.setImageCoords(lerp, lerp2, f3, f3);
                this.reactionMoveImageReceiver.draw(canvas);
            }
        }
        if (this.drawReactionEffect) {
            float x2 = this.bottomActionsLinearLayout.getX() + this.likeButtonContainer.getX() + (this.likeButtonContainer.getMeasuredWidth() / 2.0f);
            float y2 = this.bottomActionsLinearLayout.getY() + this.likeButtonContainer.getY() + (this.likeButtonContainer.getMeasuredHeight() / 2.0f);
            int m107dp2 = AndroidUtilities.m107dp(120);
            if (!this.drawAnimatedEmojiAsMovingReaction) {
                float f4 = m107dp2;
                float f5 = f4 / 2.0f;
                this.reactionEffectImageReceiver.setImageCoords(x2 - f5, y2 - f5, f4, f4);
                this.reactionEffectImageReceiver.draw(canvas);
                if (this.reactionEffectImageReceiver.getLottieAnimation() != null && this.reactionEffectImageReceiver.getLottieAnimation().isLastFrame()) {
                    this.drawReactionEffect = false;
                }
            } else {
                AnimatedEmojiEffect animatedEmojiEffect = this.emojiReactionEffect;
                if (animatedEmojiEffect != null) {
                    float f6 = m107dp2 / 2.0f;
                    animatedEmojiEffect.setBounds((int) (x2 - f6), (int) (y2 - f6), (int) (x2 + f6), (int) (y2 + f6));
                    this.emojiReactionEffect.draw(canvas);
                    if (this.emojiReactionEffect.isDone()) {
                        this.emojiReactionEffect.removeView(this);
                        this.emojiReactionEffect = null;
                        this.drawReactionEffect = false;
                    }
                } else {
                    this.drawReactionEffect = false;
                }
            }
        }
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.drawRecordedPannel(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.imageReceiver.onAttachedToWindow();
        this.rightPreloadImageReceiver.onAttachedToWindow();
        this.leftPreloadImageReceiver.onAttachedToWindow();
        this.reactionEffectImageReceiver.onAttachedToWindow();
        this.reactionMoveImageReceiver.onAttachedToWindow();
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.onResume();
        }
        for (int i = 0; i < this.preloadReactionHolders.size(); i++) {
            this.preloadReactionHolders.get(i).onAttachedToWindow(true);
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesListUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stealthModeChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesLimitUpdate);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        this.imageReceiver.onDetachedFromWindow();
        this.rightPreloadImageReceiver.onDetachedFromWindow();
        this.leftPreloadImageReceiver.onDetachedFromWindow();
        this.reactionEffectImageReceiver.onDetachedFromWindow();
        this.reactionMoveImageReceiver.onDetachedFromWindow();
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.onPause();
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = this.reactionMoveDrawable;
        if (animatedEmojiDrawable != null) {
            animatedEmojiDrawable.removeView(this);
            this.reactionMoveDrawable = null;
        }
        AnimatedEmojiEffect animatedEmojiEffect = this.emojiReactionEffect;
        if (animatedEmojiEffect != null) {
            animatedEmojiEffect.removeView(this);
            this.emojiReactionEffect = null;
        }
        for (int i = 0; i < this.preloadReactionHolders.size(); i++) {
            this.preloadReactionHolders.get(i).onAttachedToWindow(false);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesListUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stealthModeChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesLimitUpdate);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        Activity findActivity;
        boolean z = true;
        if (i == NotificationCenter.storiesUpdated || (i == NotificationCenter.storiesListUpdated && this.storyViewer.storiesList == objArr[0])) {
            Delegate delegate = this.delegate;
            if (delegate == null || !delegate.isClosed()) {
                if (this.isActive) {
                    updateStoryItems();
                    if (this.count == 0) {
                        if (this.deletedPeer) {
                            return;
                        }
                        this.deletedPeer = true;
                        this.delegate.switchToNextAndRemoveCurrentPeer();
                        return;
                    }
                    if (this.selectedPosition >= this.storyItems.size() + this.uploadingStories.size()) {
                        this.selectedPosition = (this.storyItems.size() + this.uploadingStories.size()) - 1;
                    }
                    updatePosition();
                    if (this.isSelf || this.isChannel) {
                        updateUserViews(true);
                    }
                }
                TL_stories$PeerStories tL_stories$PeerStories = this.storyViewer.overrideUserStories;
                if (tL_stories$PeerStories != null) {
                    this.storiesController.loadSkippedStories(tL_stories$PeerStories, true);
                } else {
                    long j = this.dialogId;
                    if (j != 0) {
                        this.storiesController.loadSkippedStories(j);
                    }
                }
                ActionBarMenuSubItem actionBarMenuSubItem = this.editStoryItem;
                if (actionBarMenuSubItem != null) {
                    actionBarMenuSubItem.animate().alpha((this.storiesController.hasUploadingStories(this.dialogId) && this.currentStory.isVideo && !SharedConfig.allowPreparingHevcPlayers()) ? 0.5f : 1.0f).start();
                }
            }
        } else if (i == NotificationCenter.emojiLoaded) {
            this.storyCaptionView.captionTextview.invalidate();
        } else if (i == NotificationCenter.stealthModeChanged) {
            checkStealthMode(true);
        } else if (i == NotificationCenter.storiesLimitUpdate) {
            StoriesController.StoryLimit checkStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit();
            if (checkStoryLimit == null || this.delegate == null) {
                return;
            }
            StoryViewer storyViewer = this.storyViewer;
            if (storyViewer == null || (findActivity = storyViewer.parentActivity) == null) {
                findActivity = AndroidUtilities.findActivity(getContext());
            }
            final Activity activity = findActivity;
            if (activity == null) {
                return;
            }
            this.delegate.showDialog(new LimitReachedBottomSheet(new BaseFragment() { // from class: org.telegram.ui.Stories.PeerStoriesView.28
                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public boolean isLightStatusBar() {
                    return false;
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public Activity getParentActivity() {
                    return activity;
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public Theme.ResourcesProvider getResourceProvider() {
                    return new WrappedResourceProvider(this, PeerStoriesView.this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.28.1
                        @Override // org.telegram.p043ui.WrappedResourceProvider
                        public void appendColors() {
                            this.sparseIntArray.append(Theme.key_dialogBackground, -14737633);
                            this.sparseIntArray.append(Theme.key_windowBackgroundGray, -13421773);
                        }
                    };
                }

                @Override // org.telegram.p043ui.ActionBar.BaseFragment
                public boolean presentFragment(BaseFragment baseFragment) {
                    StoryViewer storyViewer2 = this.storyViewer;
                    if (storyViewer2 != null) {
                        storyViewer2.presentFragment(baseFragment);
                        return true;
                    }
                    return true;
                }
            }, activity, checkStoryLimit.getLimitReachedType(), this.currentAccount, null));
        } else if (i == NotificationCenter.userIsPremiumBlockedUpadted) {
            boolean z2 = this.isPremiumBlocked;
            if (this.dialogId < 0 || UserConfig.getInstance(this.currentAccount).isPremium() || !MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.dialogId)) {
                z = false;
            }
            this.isPremiumBlocked = z;
            if (z != z2) {
                updatePosition();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$32() {
        checkStealthMode(true);
    }

    private void checkStealthMode(boolean z) {
        if (this.chatActivityEnterView != null && this.isVisible && this.attachedToWindow) {
            AndroidUtilities.cancelRunOnUIThread(this.updateStealthModeTimer);
            TL_stories$TL_storiesStealthMode stealthMode = this.storiesController.getStealthMode();
            if (this.isPremiumBlocked) {
                this.stealthModeIsActive = false;
                this.chatActivityEnterView.setEnabled(false);
                this.chatActivityEnterView.setOverrideHint(" ", z);
                return;
            }
            if (stealthMode != null) {
                int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                int i = stealthMode.active_until_date;
                if (currentTime < i) {
                    this.stealthModeIsActive = true;
                    int currentTime2 = i - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    int i2 = currentTime2 / 60;
                    int i3 = currentTime2 % 60;
                    int i4 = C3632R.string.StealthModeActiveHintShort;
                    Locale locale = Locale.US;
                    String formatString = LocaleController.formatString("StealthModeActiveHint", i4, String.format(locale, "%02d:%02d", 99, 99));
                    this.chatActivityEnterView.setEnabled(true);
                    if (((int) this.chatActivityEnterView.getEditField().getPaint().measureText(formatString)) * 1.2f >= this.chatActivityEnterView.getEditField().getMeasuredWidth()) {
                        this.chatActivityEnterView.setOverrideHint(LocaleController.formatString("StealthModeActiveHintShort", i4, ""), String.format(locale, "%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3)), z);
                    } else {
                        this.chatActivityEnterView.setOverrideHint(LocaleController.formatString("StealthModeActiveHint", C3632R.string.StealthModeActiveHint, String.format(locale, "%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3))), z);
                    }
                    AndroidUtilities.runOnUIThread(this.updateStealthModeTimer, 1000L);
                    return;
                }
            }
            this.stealthModeIsActive = false;
            this.chatActivityEnterView.setEnabled(true);
            this.chatActivityEnterView.setOverrideHint(LocaleController.getString("ReplyPrivately", C3632R.string.ReplyPrivately), z);
        }
    }

    public void updatePosition() {
        updatePosition(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:277:0x075d, code lost:
        if (r1.captionTranslated != (r4 != null && r4.translated && r4.translatedText != null && android.text.TextUtils.equals(r4.translatedLng, org.telegram.p043ui.Components.TranslateAlert2.getToLanguage()))) goto L332;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0866  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0868  */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v79 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePosition(boolean r42) {
        /*
            Method dump skipped, instructions count: 2961
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.updatePosition(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePosition$33(StoryCaptionView.Reply reply, View view) {
        Integer num;
        if (reply.peerId != null) {
            Bundle bundle = new Bundle();
            if (reply.peerId.longValue() >= 0) {
                bundle.putLong("user_id", reply.peerId.longValue());
            } else {
                bundle.putLong("chat_id", -reply.peerId.longValue());
            }
            if (reply.isRepostMessage && (num = reply.messageId) != null) {
                bundle.putInt("message_id", num.intValue());
                this.storyViewer.presentFragment(new ChatActivity(bundle));
                return;
            }
            this.storyViewer.presentFragment(new ProfileActivity(bundle));
            return;
        }
        BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.error, LocaleController.getString(C3632R.string.StoryHidAccount)).setTag(3).show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePosition$34() {
        this.failView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePosition$35() {
        if (this.storyViewer.isShown()) {
            this.reactionsTooltipRunnable = null;
            if (this.reactionsLongpressTooltip == null) {
                HintView2 joint = new HintView2(getContext(), 3).setJoint(1.0f, -22.0f);
                this.reactionsLongpressTooltip = joint;
                joint.setBgColor(ColorUtils.setAlphaComponent(ColorUtils.blendARGB(-16777216, -1, 0.13f), PsExtractor.VIDEO_STREAM_MASK));
                this.reactionsLongpressTooltip.setBounce(false);
                this.reactionsLongpressTooltip.setText(LocaleController.getString("ReactionLongTapHint", C3632R.string.ReactionLongTapHint));
                this.reactionsLongpressTooltip.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(1));
                this.storyContainer.addView(this.reactionsLongpressTooltip, LayoutHelper.createFrame(-1, -2, 85, 0, 0, 0, this.BIG_SCREEN ? 0 : 56));
            }
            this.reactionsLongpressTooltip.show();
            SharedConfig.setStoriesReactionsLongPressHintUsed(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$36() {
        showNoSoundHint(false);
        MessagesController.getGlobalMainSettings().edit().putInt("taptostorysoundhint", MessagesController.getGlobalMainSettings().getInt("taptostorysoundhint", 0) + 1).apply();
    }

    private void createReplyDisabledView() {
        if (this.replyDisabledTextView != null) {
            return;
        }
        TextView textView = new TextView(this, getContext()) { // from class: org.telegram.ui.Stories.PeerStoriesView.29
            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
            }
        };
        this.replyDisabledTextView = textView;
        textView.setTextSize(1, 14.0f);
        this.replyDisabledTextView.setTextColor(ColorUtils.blendARGB(-16777216, -1, 0.5f));
        this.replyDisabledTextView.setGravity(19);
        this.replyDisabledTextView.setText(LocaleController.getString("StoryReplyDisabled", C3632R.string.StoryReplyDisabled));
        addView(this.replyDisabledTextView, LayoutHelper.createFrame(-2, 40, 3, 16, 0, 16, 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01db A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updatePreloadImages() {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.updatePreloadImages():void");
    }

    private void setStoryImage(TL_stories$StoryItem tL_stories$StoryItem, ImageReceiver imageReceiver, String str) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        StoriesController.UploadingStory findEditingStory = this.storiesController.findEditingStory(this.dialogId, tL_stories$StoryItem);
        if (findEditingStory != null) {
            setStoryImage(findEditingStory, imageReceiver, str);
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
        boolean z = tLRPC$MessageMedia != null && MessageObject.isVideoDocument(tLRPC$MessageMedia.getDocument());
        String str2 = tL_stories$StoryItem.attachPath;
        if (str2 != null) {
            if (tL_stories$StoryItem.media == null) {
                z = str2.toLowerCase().endsWith(".mp4");
            }
            if (z) {
                ImageLocation forPath = ImageLocation.getForPath(tL_stories$StoryItem.attachPath);
                imageReceiver.setImage(forPath, str + "_pframe", ImageLocation.getForPath(tL_stories$StoryItem.firstFramePath), str, null, null, null, 0L, null, null, 0);
                return;
            }
            imageReceiver.setImage(ImageLocation.getForPath(tL_stories$StoryItem.attachPath), str, null, null, null, 0L, null, null, 0);
        } else if (z) {
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_stories$StoryItem.media.getDocument().thumbs, 1000);
            ImageLocation forDocument = ImageLocation.getForDocument(tL_stories$StoryItem.media.getDocument());
            imageReceiver.setImage(forDocument, str + "_pframe", ImageLocation.getForDocument(closestPhotoSizeWithSize, tL_stories$StoryItem.media.getDocument()), str, null, null, null, 0L, null, tL_stories$StoryItem, 0);
        } else {
            TLRPC$MessageMedia tLRPC$MessageMedia2 = tL_stories$StoryItem.media;
            TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia2 != null ? tLRPC$MessageMedia2.photo : null;
            if (tLRPC$Photo != null && (arrayList = tLRPC$Photo.sizes) != null) {
                TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE);
                FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, 800);
                imageReceiver.setImage(null, null, ImageLocation.getForPhoto(closestPhotoSizeWithSize2, tLRPC$Photo), str, null, null, null, 0L, null, tL_stories$StoryItem, 0);
                return;
            }
            imageReceiver.clearImage();
        }
    }

    private void setStoryImage(StoriesController.UploadingStory uploadingStory, ImageReceiver imageReceiver, String str) {
        if (uploadingStory.isVideo) {
            imageReceiver.setImage(null, null, ImageLocation.getForPath(uploadingStory.firstFramePath), str, null, null, null, 0L, null, null, 0);
        } else {
            imageReceiver.setImage(ImageLocation.getForPath(uploadingStory.path), str, null, null, null, 0L, null, null, 0);
        }
    }

    private void cancelWaiting() {
        Runnable runnable = this.cancellableViews;
        if (runnable != null) {
            runnable.run();
            this.cancellableViews = null;
        }
        this.showViewsProgress = false;
        if (this.isActive) {
            this.delegate.setIsWaiting(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUserViews(boolean z) {
        int i;
        StoryItemHolder storyItemHolder = this.currentStory;
        TL_stories$StoryItem tL_stories$StoryItem = storyItemHolder.storyItem;
        if (tL_stories$StoryItem == null) {
            tL_stories$StoryItem = storyItemHolder.editingSourceItem;
        }
        boolean z2 = this.isChannel;
        if (z2 || this.isSelf) {
            if (tL_stories$StoryItem == null) {
                this.selfStatusView.setText("");
                this.selfAvatarsContainer.setVisibility(8);
                this.selfAvatarsView.setVisibility(8);
            } else if (z2) {
                if (tL_stories$StoryItem.views == null) {
                    tL_stories$StoryItem.views = new TL_stories$TL_storyViews();
                }
                TL_stories$StoryViews tL_stories$StoryViews = tL_stories$StoryItem.views;
                if (tL_stories$StoryViews.views_count <= 0) {
                    tL_stories$StoryViews.views_count = 1;
                }
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.repostCounter;
                if (animatedTextDrawable != null && (i = tL_stories$StoryViews.forwards_count) > 0) {
                    animatedTextDrawable.setText(Integer.toString(i), z && this.repostCounterVisible);
                    this.repostCounterVisible = true;
                } else {
                    this.repostCounterVisible = false;
                }
                int i2 = tL_stories$StoryItem.views.reactions_count;
                if (i2 > 0) {
                    this.reactionsCounter.setText(Integer.toString(i2), z && this.reactionsCounterVisible);
                    this.reactionsCounterVisible = true;
                } else {
                    this.reactionsCounterVisible = false;
                }
                float f = BitmapDescriptorFactory.HUE_RED;
                if (!z) {
                    this.reactionsCounterProgress.set(this.reactionsCounterVisible ? 1.0f : 0.0f, true);
                    AnimatedFloat animatedFloat = this.repostCounterProgress;
                    if (animatedFloat != null) {
                        animatedFloat.set(this.repostCounterVisible ? 1.0f : 0.0f, true);
                    }
                }
                if (tL_stories$StoryItem.views.views_count > 0) {
                    this.selfStatusView.setText(this.storyViewer.storiesList == null ? LocaleController.getString("NobodyViews", C3632R.string.NobodyViews) : LocaleController.getString("NobodyViewsArchived", C3632R.string.NobodyViewsArchived));
                    this.selfStatusView.setTranslationX(AndroidUtilities.m107dp(16));
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) "d  ");
                    spannableStringBuilder.setSpan(new ColoredImageSpan(C3632R.C3634drawable.filled_views), spannableStringBuilder.length() - 3, spannableStringBuilder.length() - 2, 0);
                    spannableStringBuilder.append((CharSequence) AndroidUtilities.formatWholeNumber(tL_stories$StoryItem.views.views_count, 0));
                    this.selfStatusView.setText(spannableStringBuilder);
                } else {
                    this.selfStatusView.setText("");
                }
                this.likeButtonContainer.getLayoutParams().width = (int) (AndroidUtilities.m107dp(40) + (this.reactionsCounterVisible ? this.reactionsCounter.getAnimateToWidth() + AndroidUtilities.m107dp(4) : 0.0f));
                ((ViewGroup.MarginLayoutParams) this.selfView.getLayoutParams()).rightMargin = AndroidUtilities.m107dp(40) + this.likeButtonContainer.getLayoutParams().width;
                FrameLayout frameLayout = this.repostButtonContainer;
                if (frameLayout != null) {
                    ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                    float m107dp = AndroidUtilities.m107dp(40);
                    if (this.repostCounterVisible) {
                        f = this.repostCounter.getAnimateToWidth() + AndroidUtilities.m107dp(4);
                    }
                    layoutParams.width = (int) (m107dp + f);
                    ((ViewGroup.MarginLayoutParams) this.selfView.getLayoutParams()).rightMargin += this.repostButtonContainer.getLayoutParams().width;
                    this.repostButtonContainer.requestLayout();
                }
                this.selfView.requestLayout();
                this.likeButtonContainer.requestLayout();
                this.selfAvatarsView.setVisibility(8);
                this.selfAvatarsContainer.setVisibility(8);
                this.storyAreasView.onStoryItemUpdated(this.currentStory.storyItem, z);
            } else {
                TL_stories$StoryViews tL_stories$StoryViews2 = tL_stories$StoryItem.views;
                if (tL_stories$StoryViews2 != null && tL_stories$StoryViews2.views_count > 0) {
                    int i3 = 0;
                    for (int i4 = 0; i4 < tL_stories$StoryItem.views.recent_viewers.size(); i4++) {
                        TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(tL_stories$StoryItem.views.recent_viewers.get(i4).longValue());
                        if (userOrChat != null) {
                            this.selfAvatarsView.setObject(i3, this.currentAccount, userOrChat);
                            i3++;
                        }
                        if (i3 >= 3) {
                            break;
                        }
                    }
                    for (int i5 = i3; i5 < 3; i5++) {
                        this.selfAvatarsView.setObject(i5, this.currentAccount, null);
                    }
                    this.selfAvatarsView.commitTransition(false);
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(LocaleController.formatPluralStringComma("Views", tL_stories$StoryItem.views.views_count));
                    if (tL_stories$StoryItem.views.reactions_count > 0) {
                        spannableStringBuilder2.append((CharSequence) "  d ");
                        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C3632R.C3634drawable.mini_views_likes);
                        coloredImageSpan.setOverrideColor(-53704);
                        coloredImageSpan.setTopOffset(AndroidUtilities.m108dp(0.2f));
                        spannableStringBuilder2.setSpan(coloredImageSpan, spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 0);
                        spannableStringBuilder2.append((CharSequence) String.valueOf(tL_stories$StoryItem.views.reactions_count));
                    }
                    if (tL_stories$StoryItem.views.forwards_count > 0) {
                        spannableStringBuilder2.append((CharSequence) "  d ");
                        ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C3632R.C3634drawable.mini_repost_story);
                        coloredImageSpan2.setOverrideColor(-14161823);
                        coloredImageSpan2.setTopOffset(AndroidUtilities.m108dp(0.2f));
                        spannableStringBuilder2.setSpan(coloredImageSpan2, spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 0);
                        spannableStringBuilder2.append((CharSequence) String.valueOf(tL_stories$StoryItem.views.forwards_count));
                    }
                    this.selfStatusView.setText(spannableStringBuilder2);
                    if (i3 == 0) {
                        this.selfAvatarsView.setVisibility(8);
                        this.selfStatusView.setTranslationX(AndroidUtilities.m107dp(16));
                    } else {
                        this.selfAvatarsView.setVisibility(0);
                        this.selfStatusView.setTranslationX(AndroidUtilities.m107dp(13) + AndroidUtilities.m107dp(24) + (AndroidUtilities.m107dp(20) * (i3 - 1)) + AndroidUtilities.m107dp(10));
                    }
                    this.selfAvatarsContainer.setVisibility(0);
                } else {
                    this.selfStatusView.setText(this.storyViewer.storiesList == null ? LocaleController.getString("NobodyViews", C3632R.string.NobodyViews) : LocaleController.getString("NobodyViewsArchived", C3632R.string.NobodyViewsArchived));
                    this.selfStatusView.setTranslationX(AndroidUtilities.m107dp(16));
                    this.selfAvatarsView.setVisibility(8);
                    this.selfAvatarsContainer.setVisibility(8);
                }
                this.likeButtonContainer.getLayoutParams().width = AndroidUtilities.m107dp(40);
                this.bottomActionsLinearLayout.requestLayout();
            }
        }
    }

    private void requestVideoPlayer(long j) {
        TLRPC$Document tLRPC$Document;
        Uri uri;
        TLRPC$Document tLRPC$Document2;
        if (this.isActive) {
            if (this.currentStory.isVideo()) {
                if (this.currentStory.getLocalPath() != null && new File(this.currentStory.getLocalPath()).exists()) {
                    Uri fromFile = Uri.fromFile(new File(this.currentStory.getLocalPath()));
                    this.videoDuration = 0L;
                    uri = fromFile;
                    tLRPC$Document = null;
                } else {
                    TL_stories$StoryItem tL_stories$StoryItem = this.currentStory.storyItem;
                    if (tL_stories$StoryItem != null) {
                        tL_stories$StoryItem.dialogId = this.dialogId;
                        try {
                            tLRPC$Document2 = tL_stories$StoryItem.media.getDocument();
                            try {
                                TL_stories$StoryItem tL_stories$StoryItem2 = this.currentStory.storyItem;
                                if (tL_stories$StoryItem2.fileReference == 0) {
                                    tL_stories$StoryItem2.fileReference = FileLoader.getInstance(this.currentAccount).getFileReference(this.currentStory.storyItem);
                                }
                                StringBuilder sb = new StringBuilder();
                                sb.append("?account=");
                                sb.append(this.currentAccount);
                                sb.append("&id=");
                                sb.append(tLRPC$Document2.f1610id);
                                sb.append("&hash=");
                                sb.append(tLRPC$Document2.access_hash);
                                sb.append("&dc=");
                                sb.append(tLRPC$Document2.dc_id);
                                sb.append("&size=");
                                sb.append(tLRPC$Document2.size);
                                sb.append("&mime=");
                                sb.append(URLEncoder.encode(tLRPC$Document2.mime_type, "UTF-8"));
                                sb.append("&rid=");
                                sb.append(this.currentStory.storyItem.fileReference);
                                sb.append("&name=");
                                sb.append(URLEncoder.encode(FileLoader.getDocumentFileName(tLRPC$Document2), "UTF-8"));
                                sb.append("&reference=");
                                byte[] bArr = tLRPC$Document2.file_reference;
                                if (bArr == null) {
                                    bArr = new byte[0];
                                }
                                sb.append(Utilities.bytesToHex(bArr));
                                sb.append("&sid=");
                                sb.append(this.currentStory.storyItem.f1763id);
                                sb.append("&did=");
                                sb.append(this.currentStory.storyItem.dialogId);
                                Uri parse = Uri.parse("tg://" + FileLoader.getAttachFileName(tLRPC$Document2) + sb.toString());
                                this.videoDuration = (long) (MessageObject.getDocumentDuration(tLRPC$Document2) * 1000.0d);
                                uri = parse;
                                tLRPC$Document = tLRPC$Document2;
                            } catch (Exception unused) {
                                tLRPC$Document = tLRPC$Document2;
                                uri = null;
                                this.delegate.requestPlayer(tLRPC$Document, uri, j, this.playerSharedScope);
                                this.storyContainer.invalidate();
                                return;
                            }
                        } catch (Exception unused2) {
                            tLRPC$Document2 = null;
                        }
                    } else {
                        tLRPC$Document = null;
                        uri = null;
                    }
                }
                this.delegate.requestPlayer(tLRPC$Document, uri, j, this.playerSharedScope);
                this.storyContainer.invalidate();
                return;
            }
            this.delegate.requestPlayer(null, null, 0L, this.playerSharedScope);
            VideoPlayerSharedScope videoPlayerSharedScope = this.playerSharedScope;
            videoPlayerSharedScope.renderView = null;
            videoPlayerSharedScope.firstFrameRendered = false;
            return;
        }
        this.playerSharedScope.renderView = null;
    }

    public boolean switchToNext(boolean z) {
        if (this.storyViewer.reversed) {
            z = !z;
        }
        if (z) {
            if (this.selectedPosition < getStoriesCount() - 1) {
                this.selectedPosition++;
                updatePosition();
                return true;
            }
            return false;
        }
        int i = this.selectedPosition;
        if (i > 0) {
            this.selectedPosition = i - 1;
            updatePosition();
            return true;
        }
        return false;
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public void drawPlayingBitmap(int i, int i2, Canvas canvas) {
        TextureView textureView;
        VideoPlayerSharedScope videoPlayerSharedScope = this.playerSharedScope;
        View view = videoPlayerSharedScope.renderView;
        if (view != null && videoPlayerSharedScope.surfaceView != null) {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            if (Build.VERSION.SDK_INT >= 24) {
                AndroidUtilities.getBitmapFromSurface(this.playerSharedScope.surfaceView, createBitmap);
            }
            if (createBitmap != null) {
                canvas.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            }
        } else if (view != null && (textureView = videoPlayerSharedScope.textureView) != null) {
            Bitmap bitmap = textureView.getBitmap(i, i2);
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            }
        } else {
            canvas.save();
            canvas.scale(i / this.storyContainer.getMeasuredWidth(), i2 / this.storyContainer.getMeasuredHeight());
            this.imageReceiver.draw(canvas);
            canvas.restore();
        }
    }

    public Bitmap getPlayingBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(this.storyContainer.getWidth(), this.storyContainer.getHeight(), Bitmap.Config.ARGB_8888);
        drawPlayingBitmap(createBitmap.getWidth(), createBitmap.getHeight(), new Canvas(createBitmap));
        return createBitmap;
    }

    public void createBlurredBitmap(Canvas canvas, Bitmap bitmap) {
        drawPlayingBitmap(bitmap.getWidth(), bitmap.getHeight(), canvas);
        if (AndroidUtilities.computePerceivedBrightness(AndroidUtilities.getDominantColor(bitmap)) < 0.15f) {
            canvas.drawColor(ColorUtils.setAlphaComponent(-1, 102));
        }
        Utilities.blurBitmap(bitmap, 3, 1, bitmap.getWidth(), bitmap.getHeight(), bitmap.getRowBytes());
        Utilities.blurBitmap(bitmap, 3, 1, bitmap.getWidth(), bitmap.getHeight(), bitmap.getRowBytes());
    }

    public void stopPlaying(boolean z) {
        if (z) {
            this.imageReceiver.stopAnimation();
            this.imageReceiver.setAllowStartAnimation(false);
            return;
        }
        this.imageReceiver.startAnimation();
        this.imageReceiver.setAllowStartAnimation(true);
    }

    public long getCurrentPeer() {
        return this.dialogId;
    }

    public ArrayList<Integer> getCurrentDay() {
        return this.day;
    }

    public void setPaused(boolean z) {
        if (this.paused != z) {
            this.paused = z;
            stopPlaying(z);
            this.lastDrawTime = 0L;
            this.storyContainer.invalidate();
        }
    }

    public int getSelectedPosition() {
        return this.selectedPosition;
    }

    public boolean closeKeyboardOrEmoji() {
        if (this.likesReactionShowing) {
            if (this.likesReactionLayout.getReactionsWindow() != null) {
                if (this.realKeyboardHeight > 0) {
                    AndroidUtilities.hideKeyboard(this.likesReactionLayout.getReactionsWindow().windowView);
                } else {
                    this.likesReactionLayout.getReactionsWindow().dismiss();
                }
                return true;
            }
            showLikesReaction(false);
            return true;
        }
        StoryMediaAreasView storyMediaAreasView = this.storyAreasView;
        if (storyMediaAreasView != null) {
            storyMediaAreasView.closeHint();
        }
        if (this.storyCaptionView.textSelectionHelper.isInSelectionMode()) {
            this.storyCaptionView.textSelectionHelper.clear(false);
            return true;
        }
        HintView2 hintView2 = this.privacyHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
        HintView2 hintView22 = this.soundTooltip;
        if (hintView22 != null) {
            hintView22.hide();
        }
        HintView hintView = this.mediaBanTooltip;
        if (hintView != null) {
            hintView.hide(true);
        }
        CaptionContainerView captionContainerView = this.storyEditCaptionView;
        if (captionContainerView == null || !captionContainerView.onBackPressed()) {
            CustomPopupMenu customPopupMenu = this.popupMenu;
            if (customPopupMenu != null && customPopupMenu.isShowing()) {
                this.popupMenu.dismiss();
                return true;
            } else if (checkRecordLocked(false)) {
                return true;
            } else {
                ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
                if (reactionsContainerLayout != null && reactionsContainerLayout.getReactionsWindow() != null && this.reactionsContainerLayout.getReactionsWindow().isShowing()) {
                    this.reactionsContainerLayout.getReactionsWindow().dismiss();
                    return true;
                }
                ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
                if (chatActivityEnterView != null && chatActivityEnterView.isPopupShowing()) {
                    if (this.realKeyboardHeight > 0) {
                        AndroidUtilities.hideKeyboard(this.chatActivityEnterView.getEmojiView());
                    } else {
                        this.chatActivityEnterView.hidePopup(true, false);
                    }
                    return true;
                } else if (getKeyboardHeight() >= AndroidUtilities.m107dp(20)) {
                    ChatActivityEnterView chatActivityEnterView2 = this.chatActivityEnterView;
                    if (chatActivityEnterView2 != null) {
                        this.storyViewer.saveDraft(this.dialogId, this.currentStory.storyItem, chatActivityEnterView2.getEditText());
                    }
                    AndroidUtilities.hideKeyboard(this.chatActivityEnterView);
                    return true;
                } else if (this.storyCaptionView.getVisibility() != 0 || this.storyCaptionView.getProgressToBlackout() <= BitmapDescriptorFactory.HUE_RED) {
                    return false;
                } else {
                    this.storyCaptionView.collapse();
                    this.inBlackoutMode = false;
                    this.storyContainer.invalidate();
                    return true;
                }
            }
        }
        return true;
    }

    public boolean findClickableView(ViewGroup viewGroup, float f, float f2, boolean z) {
        ChatActivityEnterView chatActivityEnterView;
        if (viewGroup == null) {
            return false;
        }
        HintView2 hintView2 = this.privacyHint;
        if (hintView2 == null || !hintView2.shown()) {
            HintView2 hintView22 = this.soundTooltip;
            if (hintView22 == null || !hintView22.shown()) {
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt.getVisibility() == 0) {
                        if (childAt == this.storyCaptionView) {
                            Rect rect = AndroidUtilities.rectTmp2;
                            childAt.getHitRect(rect);
                            if (rect.contains((int) f, (int) f2) && this.storyCaptionView.allowInterceptTouchEvent(f, f2 - childAt.getTop())) {
                                return true;
                            }
                        }
                        Rect rect2 = AndroidUtilities.rectTmp2;
                        childAt.getHitRect(rect2);
                        StoryMediaAreasView storyMediaAreasView = this.storyAreasView;
                        if (childAt == storyMediaAreasView && !storyMediaAreasView.hasSelected() && (f < AndroidUtilities.m107dp(60) || f > viewGroup.getMeasuredWidth() - AndroidUtilities.m107dp(60))) {
                            if (this.storyAreasView.hasClickableViews(f, f2)) {
                                return true;
                            }
                        } else if (this.keyboardVisible && childAt == this.chatActivityEnterView && f2 > rect2.top) {
                            return true;
                        } else {
                            if (!z && rect2.contains((int) f, (int) f2) && (((childAt.isClickable() || childAt == this.reactionsContainerLayout) && childAt.isEnabled()) || ((chatActivityEnterView = this.chatActivityEnterView) != null && childAt == chatActivityEnterView.getRecordCircle()))) {
                                return true;
                            }
                            if (childAt.isEnabled() && (childAt instanceof ViewGroup) && findClickableView((ViewGroup) childAt, f - childAt.getX(), f2 - childAt.getY(), z)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public void setAccount(int i) {
        this.currentAccount = i;
        this.storiesController = MessagesController.getInstance(i).getStoriesController();
        this.emojiAnimationsOverlay.setAccount(i);
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout != null) {
            reactionsContainerLayout.setCurrentAccount(i);
            this.reactionsContainerLayout.setMessage(null, null);
        }
        ReactionsContainerLayout reactionsContainerLayout2 = this.likesReactionLayout;
        if (reactionsContainerLayout2 != null) {
            reactionsContainerLayout2.setCurrentAccount(i);
        }
    }

    public void setActive(boolean z) {
        setActive(0L, z);
    }

    public void setActive(long j, boolean z) {
        if (this.isActive != z) {
            activeCount += z ? 1 : -1;
            this.isActive = z;
            if (z) {
                if (useSurfaceInViewPagerWorkAround()) {
                    this.delegate.setIsSwiping(true);
                    AndroidUtilities.cancelRunOnUIThread(this.allowDrawSurfaceRunnable);
                    AndroidUtilities.runOnUIThread(this.allowDrawSurfaceRunnable, 100L);
                }
                requestVideoPlayer(j);
                updatePreloadImages();
                this.muteIconView.setAnimation(this.sharedResources.muteDrawable);
                this.isActive = true;
                this.headerView.backupImageView.getImageReceiver().setVisible(true, true);
                if (this.currentStory.storyItem != null) {
                    FileLog.m105d("StoryViewer displayed story dialogId=" + this.dialogId + " storyId=" + this.currentStory.storyItem.f1763id);
                }
            } else {
                cancelTextSelection();
                this.muteIconView.clearAnimationDrawable();
                this.viewsThumbImageReceiver = null;
                this.isLongPressed = false;
                this.progressToHideInterface.set(BitmapDescriptorFactory.HUE_RED, true);
                this.storyContainer.invalidate();
                invalidate();
                cancelWaiting();
                this.delegate.setIsRecording(false);
            }
            this.imageReceiver.setFileLoadingPriority(this.isActive ? 3 : 2);
            this.leftPreloadImageReceiver.setFileLoadingPriority(this.isActive ? 2 : 0);
            this.rightPreloadImageReceiver.setFileLoadingPriority(this.isActive ? 2 : 0);
            if (this.isSelf || this.isChannel) {
                this.storiesController.pollViewsForSelfStories(this.dialogId, this.isActive);
            }
        }
    }

    public void progressToDismissUpdated() {
        if (this.BIG_SCREEN) {
            invalidate();
        }
    }

    public void reset() {
        this.headerView.backupImageView.getImageReceiver().setVisible(true, true);
        if (this.changeBoundAnimator != null) {
            this.chatActivityEnterView.reset();
            this.chatActivityEnterView.setAlpha(1.0f - this.outT);
        }
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout != null) {
            reactionsContainerLayout.reset();
        }
        ReactionsContainerLayout reactionsContainerLayout2 = this.likesReactionLayout;
        if (reactionsContainerLayout2 != null) {
            reactionsContainerLayout2.reset();
        }
        InstantCameraView instantCameraView = this.instantCameraView;
        if (instantCameraView != null) {
            AndroidUtilities.removeFromParent(instantCameraView);
            this.instantCameraView.hideCamera(true);
            this.instantCameraView = null;
        }
        setActive(false);
        setIsVisible(false);
        this.isLongPressed = false;
        this.progressToHideInterface.set(BitmapDescriptorFactory.HUE_RED, false);
        this.viewsThumbImageReceiver = null;
        this.messageSent = false;
        cancelTextSelection();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            if (i == 0 || i == 2) {
                createChatAttachView();
                ChatAttachAlert chatAttachAlert = this.chatAttachAlert;
                if (chatAttachAlert != null) {
                    chatAttachAlert.getPhotoLayout().onActivityResultFragment(i, intent, null);
                }
            } else if (i == 21) {
                if (intent == null) {
                    showAttachmentError();
                    return;
                }
                if (intent.getData() != null) {
                    sendUriAsDocument(intent.getData());
                } else if (intent.getClipData() != null) {
                    ClipData clipData = intent.getClipData();
                    for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                        sendUriAsDocument(clipData.getItemAt(i3).getUri());
                    }
                } else {
                    showAttachmentError();
                }
                ChatAttachAlert chatAttachAlert2 = this.chatAttachAlert;
                if (chatAttachAlert2 != null) {
                    chatAttachAlert2.dismiss();
                }
                afterMessageSend();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void sendUriAsDocument(android.net.Uri r20) {
        /*
            r19 = this;
            r1 = r19
            if (r20 != 0) goto L5
            return
        L5:
            org.telegram.ui.Stories.PeerStoriesView$StoryItemHolder r0 = r1.currentStory
            org.telegram.tgnet.tl.TL_stories$StoryItem r12 = r0.storyItem
            if (r12 == 0) goto L9d
            boolean r0 = r12 instanceof org.telegram.tgnet.p042tl.TL_stories$TL_storyItemSkipped
            if (r0 == 0) goto L11
            goto L9d
        L11:
            java.lang.String r0 = r20.toString()
            java.lang.String r2 = "com.google.android.apps.photos.contentprovider"
            boolean r2 = r0.contains(r2)
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L47
            java.lang.String r2 = "/1/"
            java.lang.String[] r0 = r0.split(r2)     // Catch: java.lang.Exception -> L43
            r0 = r0[r3]     // Catch: java.lang.Exception -> L43
            java.lang.String r2 = "/ACTUAL"
            int r2 = r0.indexOf(r2)     // Catch: java.lang.Exception -> L43
            r5 = -1
            if (r2 == r5) goto L3f
            java.lang.String r0 = r0.substring(r4, r2)     // Catch: java.lang.Exception -> L43
            java.lang.String r2 = "UTF-8"
            java.lang.String r0 = java.net.URLDecoder.decode(r0, r2)     // Catch: java.lang.Exception -> L43
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Exception -> L43
            goto L41
        L3f:
            r0 = r20
        L41:
            r5 = r0
            goto L49
        L43:
            r0 = move-exception
            org.telegram.messenger.FileLog.m102e(r0)
        L47:
            r5 = r20
        L49:
            java.lang.String r0 = org.telegram.messenger.AndroidUtilities.getPath(r5)
            boolean r2 = org.telegram.messenger.BuildVars.NO_SCOPED_STORAGE
            if (r2 != 0) goto L52
            goto L69
        L52:
            if (r0 != 0) goto L68
            java.lang.String r0 = r5.toString()
            java.lang.String r2 = "file"
            java.lang.String r2 = org.telegram.messenger.MediaController.copyFileToCache(r5, r2)
            if (r2 != 0) goto L64
            r19.showAttachmentError()
            return
        L64:
            r3 = r4
            r4 = r0
            r0 = r2
            goto L6a
        L68:
            r3 = r4
        L69:
            r4 = r0
        L6a:
            if (r3 == 0) goto L85
            org.telegram.messenger.AccountInstance r2 = r19.getAccountInstance()
            r3 = 0
            r4 = 0
            r6 = 0
            r7 = 0
            long r8 = r1.dialogId
            r10 = 0
            r11 = 0
            r13 = 0
            r14 = 0
            r15 = 1
            r16 = 0
            r17 = 0
            r18 = 0
            org.telegram.messenger.SendMessagesHelper.prepareSendingDocument(r2, r3, r4, r5, r6, r7, r8, r10, r11, r12, r13, r14, r15, r16, r17, r18)
            goto L9d
        L85:
            org.telegram.messenger.AccountInstance r2 = r19.getAccountInstance()
            r5 = 0
            r6 = 0
            r7 = 0
            long r8 = r1.dialogId
            r10 = 0
            r11 = 0
            r13 = 0
            r14 = 0
            r15 = 1
            r16 = 0
            r17 = 0
            r18 = 0
            r3 = r0
            org.telegram.messenger.SendMessagesHelper.prepareSendingDocument(r2, r3, r4, r5, r6, r7, r8, r10, r11, r12, r13, r14, r15, r16, r17, r18)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.sendUriAsDocument(android.net.Uri):void");
    }

    private void showAttachmentError() {
        BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createErrorBulletin(LocaleController.getString("UnsupportedAttachment", C3632R.string.UnsupportedAttachment), this.resourcesProvider).show();
    }

    public void setLongpressed(boolean z) {
        if (this.isActive) {
            this.isLongPressed = z;
            invalidate();
        }
    }

    public boolean showKeyboard() {
        TextView textView;
        EditTextCaption editField;
        if (this.chatActivityEnterView == null || (((textView = this.replyDisabledTextView) != null && textView.getVisibility() == 0) || (editField = this.chatActivityEnterView.getEditField()) == null)) {
            return false;
        }
        editField.requestFocus();
        AndroidUtilities.showKeyboard(editField);
        return true;
    }

    public void checkPinchToZoom(MotionEvent motionEvent) {
        this.pinchToZoomHelper.checkPinchToZoom(motionEvent, this.storyContainer, null, null, null, null);
    }

    public void setIsVisible(boolean z) {
        if (this.isVisible == z) {
            return;
        }
        this.isVisible = z;
        if (z) {
            this.imageReceiver.setCurrentAlpha(1.0f);
            checkStealthMode(false);
        }
    }

    public ArrayList<TL_stories$StoryItem> getStoryItems() {
        return this.storyItems;
    }

    public void selectPosition(int i) {
        if (this.selectedPosition != i) {
            this.selectedPosition = i;
            updatePosition();
        }
    }

    public void cancelTouch() {
        this.storyCaptionView.cancelTouch();
    }

    public void onActionDown(MotionEvent motionEvent) {
        HintView2 hintView2 = this.privacyHint;
        if (hintView2 != null && hintView2.shown() && this.privacyButton != null && !this.privacyHint.containsTouch(motionEvent, getX() + this.storyContainer.getX() + this.privacyHint.getX(), getY() + this.storyContainer.getY() + this.privacyHint.getY()) && !hitButton(this.privacyButton, motionEvent)) {
            this.privacyHint.hide();
        }
        HintView2 hintView22 = this.soundTooltip;
        if (hintView22 == null || !hintView22.shown() || this.muteIconContainer == null || this.soundTooltip.containsTouch(motionEvent, getX() + this.storyContainer.getX() + this.soundTooltip.getX(), getY() + this.storyContainer.getY() + this.soundTooltip.getY()) || hitButton(this.muteIconContainer, motionEvent)) {
            return;
        }
        this.soundTooltip.hide();
    }

    private boolean hitButton(View view, MotionEvent motionEvent) {
        float x = getX() + this.storyContainer.getX() + view.getX();
        float y = getY() + this.storyContainer.getY() + view.getY();
        return motionEvent.getX() >= x && motionEvent.getX() <= x + ((float) view.getWidth()) && motionEvent.getY() >= y && motionEvent.getY() <= y + ((float) view.getHeight());
    }

    public void setOffset(float f) {
        boolean z = f == BitmapDescriptorFactory.HUE_RED;
        if (this.allowDrawSurface != z) {
            this.allowDrawSurface = z;
            this.storyContainer.invalidate();
            if (this.isActive && useSurfaceInViewPagerWorkAround()) {
                if (z) {
                    AndroidUtilities.cancelRunOnUIThread(this.allowDrawSurfaceRunnable);
                    AndroidUtilities.runOnUIThread(this.allowDrawSurfaceRunnable, 250L);
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(this.allowDrawSurfaceRunnable);
                this.delegate.setIsSwiping(true);
            }
        }
    }

    public boolean useSurfaceInViewPagerWorkAround() {
        return this.storyViewer.USE_SURFACE_VIEW && Build.VERSION.SDK_INT < 33;
    }

    public void showNoSoundHint(boolean z) {
        if (this.soundTooltip == null) {
            HintView2 joint = new HintView2(getContext(), 1).setJoint(1.0f, -56.0f);
            this.soundTooltip = joint;
            joint.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
            this.storyContainer.addView(this.soundTooltip, LayoutHelper.createFrame(-1, -2, 55, 0, 52, 0, 0));
        }
        this.soundTooltip.setText(LocaleController.getString(z ? C3632R.string.StoryNoSound : C3632R.string.StoryTapToSound));
        this.soundTooltip.show();
    }

    public boolean checkTextSelectionEvent(MotionEvent motionEvent) {
        if (this.storyCaptionView.textSelectionHelper.isInSelectionMode()) {
            float x = getX();
            float y = getY() + ((View) getParent()).getY();
            motionEvent.offsetLocation(-x, -y);
            if (this.storyCaptionView.textSelectionHelper.getOverlayView(getContext()).onTouchEvent(motionEvent)) {
                return true;
            }
            motionEvent.offsetLocation(x, y);
            return false;
        }
        return false;
    }

    public void cancelTextSelection() {
        if (this.storyCaptionView.textSelectionHelper.isInSelectionMode()) {
            this.storyCaptionView.textSelectionHelper.clear();
        }
    }

    public boolean checkReactionEvent(MotionEvent motionEvent) {
        ReactionsContainerLayout reactionsContainerLayout = this.likesReactionLayout;
        if (reactionsContainerLayout != null) {
            float x = getX();
            float y = getY() + ((View) getParent()).getY();
            if (this.likesReactionLayout.getReactionsWindow() != null && this.likesReactionLayout.getReactionsWindow().windowView != null) {
                motionEvent.offsetLocation(-x, (-y) - this.likesReactionLayout.getReactionsWindow().windowView.getTranslationY());
                this.likesReactionLayout.getReactionsWindow().windowView.dispatchTouchEvent(motionEvent);
                return true;
            }
            Rect rect = AndroidUtilities.rectTmp2;
            reactionsContainerLayout.getHitRect(rect);
            rect.offset((int) x, (int) y);
            if (motionEvent.getAction() == 0 && !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                showLikesReaction(false);
                return true;
            }
            motionEvent.offsetLocation(-rect.left, -rect.top);
            reactionsContainerLayout.dispatchTouchEvent(motionEvent);
            return true;
        }
        return false;
    }

    public boolean viewsAllowed() {
        return this.isSelf || (this.isChannel && this.userCanSeeViews);
    }

    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$PeerHeaderView */
    /* loaded from: classes6.dex */
    public static class PeerHeaderView extends FrameLayout {
        public BackupImageView backupImageView;
        private float progressToUploading;
        RadialProgress radialProgress;
        Paint radialProgressPaint;
        StoryItemHolder storyItemHolder;
        private ValueAnimator subtitleAnimator;
        private TextView[] subtitleView;
        public SimpleTextView titleView;
        private boolean uploadedTooFast;
        private boolean uploading;

        public PeerHeaderView(Context context, StoryItemHolder storyItemHolder) {
            super(context);
            this.subtitleView = new TextView[2];
            this.storyItemHolder = storyItemHolder;
            BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Stories.PeerStoriesView.PeerHeaderView.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
                public void onDraw(Canvas canvas) {
                    if (this.imageReceiver.getVisible()) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                        PeerHeaderView.this.drawUploadingProgress(canvas, rectF, true, 1.0f);
                    }
                    super.onDraw(canvas);
                }
            };
            this.backupImageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m107dp(16));
            addView(this.backupImageView, LayoutHelper.createFrame(32, 32, 0, 12, 2, 0, 0));
            setClipChildren(false);
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.titleView = simpleTextView;
            simpleTextView.setTextSize(14);
            this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.titleView.setMaxLines(1);
            this.titleView.setEllipsizeByGradient(AndroidUtilities.m107dp(4));
            NotificationCenter.listenEmojiLoading(this.titleView);
            addView(this.titleView, LayoutHelper.createFrame(-2, -2, 0, 54, 0, 86, 0));
            for (int i = 0; i < 2; i++) {
                this.subtitleView[i] = new TextView(context);
                this.subtitleView[i].setTextSize(1, 12.0f);
                this.subtitleView[i].setMaxLines(1);
                this.subtitleView[i].setSingleLine(true);
                this.subtitleView[i].setEllipsize(TextUtils.TruncateAt.MIDDLE);
                this.subtitleView[i].setTextColor(-1);
                this.subtitleView[i].setPadding(AndroidUtilities.m107dp(3), 0, AndroidUtilities.m107dp(3), AndroidUtilities.m107dp(1));
                addView(this.subtitleView[i], LayoutHelper.createFrame(-2, -2, 0, 51, 18, 83, 0));
            }
            this.titleView.setTextColor(-1);
        }

        public void setSubtitle(CharSequence charSequence) {
            setSubtitle(charSequence, false);
        }

        public void setOnSubtitleClick(View.OnClickListener onClickListener) {
            this.subtitleView[0].setOnClickListener(onClickListener);
            this.subtitleView[0].setClickable(onClickListener != null);
            this.subtitleView[0].setBackground(onClickListener == null ? null : Theme.createSelectorDrawable(822083583, 7));
        }

        public void setSubtitle(CharSequence charSequence, boolean z) {
            ValueAnimator valueAnimator = this.subtitleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.subtitleAnimator = null;
            }
            if (z) {
                this.subtitleView[1].setOnClickListener(null);
                TextView[] textViewArr = this.subtitleView;
                textViewArr[1].setText(textViewArr[0].getText());
                this.subtitleView[1].setVisibility(0);
                this.subtitleView[1].setAlpha(1.0f);
                this.subtitleView[1].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.subtitleView[0].setText(charSequence);
                this.subtitleView[0].setVisibility(0);
                this.subtitleView[0].setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.subtitleView[0].setTranslationY(-AndroidUtilities.m107dp(4));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.subtitleAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$PeerHeaderView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        PeerStoriesView.PeerHeaderView.this.lambda$setSubtitle$0(valueAnimator2);
                    }
                });
                this.subtitleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.PeerHeaderView.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PeerHeaderView.this.subtitleView[1].setVisibility(8);
                        PeerHeaderView.this.subtitleView[0].setAlpha(1.0f);
                        PeerHeaderView.this.subtitleView[0].setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                });
                this.subtitleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.subtitleAnimator.setDuration(340L);
                this.subtitleAnimator.start();
                return;
            }
            this.subtitleView[0].setVisibility(0);
            this.subtitleView[0].setAlpha(1.0f);
            this.subtitleView[0].setText(charSequence);
            this.subtitleView[1].setVisibility(8);
            this.subtitleView[1].setAlpha(BitmapDescriptorFactory.HUE_RED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSubtitle$0(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.subtitleView[0].setAlpha(floatValue);
            float f = 1.0f - floatValue;
            this.subtitleView[0].setTranslationY((-AndroidUtilities.m107dp(4)) * f);
            this.subtitleView[1].setAlpha(f);
            this.subtitleView[1].setTranslationY(floatValue * AndroidUtilities.m107dp(4));
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (isEnabled()) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return false;
        }

        public void drawUploadingProgress(Canvas canvas, RectF rectF, boolean z, float f) {
            boolean z2;
            float f2;
            StoriesController.UploadingStory uploadingStory;
            StoryItemHolder storyItemHolder = this.storyItemHolder;
            if ((storyItemHolder == null || storyItemHolder.uploadingStory == null) && this.progressToUploading == BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            if (storyItemHolder != null && (uploadingStory = storyItemHolder.uploadingStory) != null && !uploadingStory.failed) {
                this.progressToUploading = 1.0f;
                f2 = uploadingStory.progress;
                if (!this.uploading) {
                    this.uploading = true;
                }
                z2 = false;
            } else {
                if (this.uploading) {
                    this.uploading = false;
                    this.uploadedTooFast = this.radialProgress.getAnimatedProgress() < 0.2f;
                }
                if (!this.uploadedTooFast) {
                    this.progressToUploading = Utilities.clamp(this.progressToUploading - ((1000.0f / AndroidUtilities.screenRefreshRate) / 300.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                }
                z2 = true;
                f2 = 1.0f;
            }
            if (this.radialProgress == null) {
                RadialProgress radialProgress = new RadialProgress(this.backupImageView);
                this.radialProgress = radialProgress;
                radialProgress.setBackground(null, true, false);
            }
            this.radialProgress.setDiff(0);
            ImageReceiver imageReceiver = this.backupImageView.getImageReceiver();
            float m107dp = AndroidUtilities.m107dp(3) - (AndroidUtilities.m107dp(6) * (1.0f - this.progressToUploading));
            this.radialProgress.setProgressRect((int) (rectF.left - m107dp), (int) (rectF.top - m107dp), (int) (rectF.right + m107dp), (int) (rectF.bottom + m107dp));
            this.radialProgress.setProgress(z2 ? 1.0f : Utilities.clamp(f2, 1.0f, (float) BitmapDescriptorFactory.HUE_RED), true);
            if (this.uploadedTooFast && z2 && this.radialProgress.getAnimatedProgress() >= 0.9f) {
                this.progressToUploading = Utilities.clamp(this.progressToUploading - ((1000.0f / AndroidUtilities.screenRefreshRate) / 300.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            }
            if (z) {
                if (f != 1.0f) {
                    Paint unreadCirclePaint = StoriesUtilities.getUnreadCirclePaint(imageReceiver, false);
                    unreadCirclePaint.setAlpha((int) (this.progressToUploading * 255.0f));
                    this.radialProgress.setPaint(unreadCirclePaint);
                    this.radialProgress.draw(canvas);
                }
                if (this.radialProgressPaint == null) {
                    Paint paint = new Paint(1);
                    this.radialProgressPaint = paint;
                    paint.setColor(-1);
                    this.radialProgressPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
                    this.radialProgressPaint.setStyle(Paint.Style.STROKE);
                    this.radialProgressPaint.setStrokeCap(Paint.Cap.ROUND);
                }
                this.radialProgressPaint.setAlpha((int) (255.0f * f * this.progressToUploading));
                this.radialProgress.setPaint(this.radialProgressPaint);
                this.radialProgress.draw(canvas);
            }
        }
    }

    public int getStoriesCount() {
        return this.uploadingStories.size() + Math.max(this.totalStoriesCount, this.storyItems.size());
    }

    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$StoryItemHolder */
    /* loaded from: classes6.dex */
    public class StoryItemHolder {
        public CharSequence caption;
        public boolean captionTranslated;
        public TL_stories$StoryItem editingSourceItem;
        private boolean isVideo;
        private StoryCaptionView.Reply reply;
        boolean skipped;
        public TL_stories$StoryItem storyItem = null;
        public StoriesController.UploadingStory uploadingStory = null;

        public StoryItemHolder() {
        }

        public StoryCaptionView.Reply getReply() {
            if (this.reply == null) {
                if (this.storyItem != null) {
                    this.reply = StoryCaptionView.Reply.from(PeerStoriesView.this.currentAccount, this.storyItem);
                } else {
                    StoriesController.UploadingStory uploadingStory = this.uploadingStory;
                    if (uploadingStory != null) {
                        this.reply = StoryCaptionView.Reply.from(uploadingStory);
                    }
                }
            }
            return this.reply;
        }

        public void updateCaption() {
            this.captionTranslated = false;
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            StoryItemHolder storyItemHolder = peerStoriesView.currentStory;
            StoriesController.UploadingStory uploadingStory = storyItemHolder.uploadingStory;
            if (uploadingStory != null) {
                CharSequence charSequence = uploadingStory.entry.caption;
                this.caption = charSequence;
                CharSequence replaceEmoji = Emoji.replaceEmoji(charSequence, peerStoriesView.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false);
                this.caption = replaceEmoji;
                SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(replaceEmoji);
                TLRPC$User user = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId));
                if (PeerStoriesView.this.dialogId < 0 || MessagesController.getInstance(PeerStoriesView.this.currentAccount).storyEntitiesAllowed(user)) {
                    MessageObject.addLinks(true, valueOf);
                    return;
                }
                return;
            }
            TL_stories$StoryItem tL_stories$StoryItem = storyItemHolder.storyItem;
            if (tL_stories$StoryItem != null) {
                if (tL_stories$StoryItem.translated && tL_stories$StoryItem.translatedText != null && TextUtils.equals(tL_stories$StoryItem.translatedLng, TranslateAlert2.getToLanguage())) {
                    this.captionTranslated = true;
                    PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                    TLRPC$TL_textWithEntities tLRPC$TL_textWithEntities = peerStoriesView2.currentStory.storyItem.translatedText;
                    String str = tLRPC$TL_textWithEntities.text;
                    this.caption = str;
                    CharSequence replaceEmoji2 = Emoji.replaceEmoji((CharSequence) str, peerStoriesView2.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false);
                    this.caption = replaceEmoji2;
                    if (replaceEmoji2 == null || tLRPC$TL_textWithEntities.entities == null) {
                        return;
                    }
                    SpannableStringBuilder valueOf2 = SpannableStringBuilder.valueOf(MessageObject.replaceAnimatedEmoji(new SpannableStringBuilder(tLRPC$TL_textWithEntities.text), tLRPC$TL_textWithEntities.entities, PeerStoriesView.this.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), false));
                    SpannableStringBuilder.valueOf(Emoji.replaceEmoji(valueOf2, PeerStoriesView.this.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), false));
                    TLRPC$User user2 = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId));
                    if (PeerStoriesView.this.dialogId < 0 || MessagesController.getInstance(PeerStoriesView.this.currentAccount).storyEntitiesAllowed(user2)) {
                        MessageObject.addLinks(true, valueOf2);
                        MessageObject.addEntitiesToText(valueOf2, tLRPC$TL_textWithEntities.entities, false, true, true, false);
                    }
                    this.caption = valueOf2;
                    return;
                }
                PeerStoriesView peerStoriesView3 = PeerStoriesView.this;
                String str2 = peerStoriesView3.currentStory.storyItem.caption;
                this.caption = str2;
                CharSequence replaceEmoji3 = Emoji.replaceEmoji((CharSequence) str2, peerStoriesView3.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false);
                this.caption = replaceEmoji3;
                if (replaceEmoji3 == null || PeerStoriesView.this.currentStory.storyItem.entities == null) {
                    return;
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(PeerStoriesView.this.currentStory.storyItem.caption);
                PeerStoriesView peerStoriesView4 = PeerStoriesView.this;
                SpannableStringBuilder valueOf3 = SpannableStringBuilder.valueOf(MessageObject.replaceAnimatedEmoji(spannableStringBuilder, peerStoriesView4.currentStory.storyItem.entities, peerStoriesView4.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), false));
                SpannableStringBuilder.valueOf(Emoji.replaceEmoji(valueOf3, PeerStoriesView.this.storyCaptionView.captionTextview.getPaint().getFontMetricsInt(), false));
                TLRPC$User user3 = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId));
                if (PeerStoriesView.this.dialogId < 0 || MessagesController.getInstance(PeerStoriesView.this.currentAccount).storyEntitiesAllowed(user3)) {
                    MessageObject.addLinks(true, valueOf3);
                    MessageObject.addEntitiesToText(valueOf3, PeerStoriesView.this.currentStory.storyItem.entities, false, true, true, false);
                }
                this.caption = valueOf3;
            }
        }

        void set(TL_stories$StoryItem tL_stories$StoryItem) {
            this.storyItem = tL_stories$StoryItem;
            this.reply = null;
            this.uploadingStory = null;
            this.skipped = tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped;
            this.isVideo = isVideoInternal();
        }

        private boolean isVideoInternal() {
            String str;
            TLRPC$MessageMedia tLRPC$MessageMedia;
            StoriesController.UploadingStory uploadingStory = this.uploadingStory;
            if (uploadingStory != null) {
                return uploadingStory.isVideo;
            }
            TL_stories$StoryItem tL_stories$StoryItem = this.storyItem;
            if (tL_stories$StoryItem != null && (tLRPC$MessageMedia = tL_stories$StoryItem.media) != null && tLRPC$MessageMedia.getDocument() != null) {
                return MessageObject.isVideoDocument(this.storyItem.media.getDocument());
            }
            TL_stories$StoryItem tL_stories$StoryItem2 = this.storyItem;
            if (tL_stories$StoryItem2 == null || tL_stories$StoryItem2.media != null || (str = tL_stories$StoryItem2.attachPath) == null) {
                return false;
            }
            return str.toLowerCase().endsWith(".mp4");
        }

        void set(StoriesController.UploadingStory uploadingStory) {
            this.uploadingStory = uploadingStory;
            this.reply = null;
            this.storyItem = null;
            this.skipped = false;
            this.isVideo = isVideoInternal();
        }

        public void clear() {
            this.uploadingStory = null;
            this.storyItem = null;
        }

        void cancelOrDelete() {
            if (this.storyItem != null) {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                peerStoriesView.storiesController.deleteStory(peerStoriesView.dialogId, this.storyItem);
                return;
            }
            StoriesController.UploadingStory uploadingStory = this.uploadingStory;
            if (uploadingStory != null) {
                uploadingStory.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
            if (r0 <= r1.storiesController.dialogIdToMaxReadId.get(r1.dialogId, 0)) goto L32;
         */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0081  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void checkSendView() {
            /*
                r5 = this;
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.tgnet.tl.TL_stories$PeerStories r1 = r0.userStories
                if (r1 != 0) goto L2a
                org.telegram.ui.Stories.StoriesController r1 = r0.storiesController
                long r2 = org.telegram.p043ui.Stories.PeerStoriesView.access$6400(r0)
                org.telegram.tgnet.tl.TL_stories$PeerStories r1 = r1.getStories(r2)
                if (r1 != 0) goto L2a
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                int r0 = org.telegram.p043ui.Stories.PeerStoriesView.access$4000(r0)
                org.telegram.messenger.MessagesController r0 = org.telegram.messenger.MessagesController.getInstance(r0)
                org.telegram.ui.Stories.PeerStoriesView r2 = org.telegram.p043ui.Stories.PeerStoriesView.this
                long r2 = org.telegram.p043ui.Stories.PeerStoriesView.access$6400(r2)
                org.telegram.tgnet.TLRPC$UserFull r0 = r0.getUserFull(r2)
                if (r0 == 0) goto L2a
                org.telegram.tgnet.tl.TL_stories$PeerStories r1 = r0.stories
            L2a:
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                boolean r0 = r0.isActive
                if (r0 == 0) goto L99
                org.telegram.tgnet.tl.TL_stories$StoryItem r0 = r5.storyItem
                if (r0 == 0) goto L99
                if (r1 == 0) goto L99
                boolean r0 = org.telegram.p043ui.Stories.StoriesUtilities.hasExpiredViews(r0)
                if (r0 != 0) goto L55
                org.telegram.tgnet.tl.TL_stories$StoryItem r0 = r5.storyItem
                int r0 = r0.f1763id
                int r1 = r1.max_read_id
                if (r0 > r1) goto L5b
                org.telegram.ui.Stories.PeerStoriesView r1 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.ui.Stories.StoriesController r2 = r1.storiesController
                org.telegram.messenger.support.LongSparseIntArray r2 = r2.dialogIdToMaxReadId
                long r3 = org.telegram.p043ui.Stories.PeerStoriesView.access$6400(r1)
                r1 = 0
                int r1 = r2.get(r3, r1)
                if (r0 > r1) goto L5b
            L55:
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                boolean r0 = r0.isSelf
                if (r0 == 0) goto L99
            L5b:
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.ui.Stories.StoryViewer r0 = org.telegram.p043ui.Stories.PeerStoriesView.access$7500(r0)
                org.telegram.tgnet.tl.TL_stories$PeerStories r0 = r0.overrideUserStories
                r1 = 1
                if (r0 == 0) goto L81
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.ui.Stories.StoriesController r2 = r0.storiesController
                org.telegram.ui.Stories.StoryViewer r0 = org.telegram.p043ui.Stories.PeerStoriesView.access$7500(r0)
                org.telegram.tgnet.tl.TL_stories$PeerStories r0 = r0.overrideUserStories
                org.telegram.tgnet.tl.TL_stories$StoryItem r3 = r5.storyItem
                boolean r0 = r2.markStoryAsRead(r0, r3, r1)
                if (r0 == 0) goto L99
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.ui.Stories.StoryViewer r0 = org.telegram.p043ui.Stories.PeerStoriesView.access$7500(r0)
                r0.unreadStateChanged = r1
                goto L99
            L81:
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.ui.Stories.StoriesController r2 = r0.storiesController
                long r3 = org.telegram.p043ui.Stories.PeerStoriesView.access$6400(r0)
                org.telegram.tgnet.tl.TL_stories$StoryItem r0 = r5.storyItem
                boolean r0 = r2.markStoryAsRead(r3, r0)
                if (r0 == 0) goto L99
                org.telegram.ui.Stories.PeerStoriesView r0 = org.telegram.p043ui.Stories.PeerStoriesView.this
                org.telegram.ui.Stories.StoryViewer r0 = org.telegram.p043ui.Stories.PeerStoriesView.access$7500(r0)
                r0.unreadStateChanged = r1
            L99:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.PeerStoriesView.StoryItemHolder.checkSendView():void");
        }

        public String getLocalPath() {
            TL_stories$StoryItem tL_stories$StoryItem = this.storyItem;
            if (tL_stories$StoryItem != null) {
                return tL_stories$StoryItem.attachPath;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isVideo() {
            return this.isVideo;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasSound() {
            StoriesController.UploadingStory uploadingStory;
            TLRPC$MessageMedia tLRPC$MessageMedia;
            TLRPC$Document document;
            if (this.isVideo) {
                TL_stories$StoryItem tL_stories$StoryItem = this.storyItem;
                if (tL_stories$StoryItem != null && (tLRPC$MessageMedia = tL_stories$StoryItem.media) != null && (document = tLRPC$MessageMedia.getDocument()) != null) {
                    for (int i = 0; i < document.attributes.size(); i++) {
                        TLRPC$DocumentAttribute tLRPC$DocumentAttribute = document.attributes.get(i);
                        if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo) && tLRPC$DocumentAttribute.nosound) {
                            return false;
                        }
                    }
                    return true;
                }
                if (this.uploadingStory != null) {
                    return !uploadingStory.entry.muted;
                }
                return true;
            }
            return false;
        }

        public String createLink() {
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            if (peerStoriesView.currentStory.storyItem == null) {
                return null;
            }
            if (peerStoriesView.dialogId > 0) {
                TLRPC$User user = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getUser(Long.valueOf(PeerStoriesView.this.dialogId));
                if (UserObject.getPublicUsername(user) == null) {
                    return null;
                }
                return String.format(Locale.US, "https://t.me/%1$s/s/%2$s", UserObject.getPublicUsername(user), Integer.valueOf(PeerStoriesView.this.currentStory.storyItem.f1763id));
            }
            TLRPC$Chat chat = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getChat(Long.valueOf(-PeerStoriesView.this.dialogId));
            if (ChatObject.getPublicUsername(chat) == null) {
                return null;
            }
            return String.format(Locale.US, "https://t.me/%1$s/s/%2$s", ChatObject.getPublicUsername(chat), Integer.valueOf(PeerStoriesView.this.currentStory.storyItem.f1763id));
        }

        public File getPath() {
            TLRPC$Photo tLRPC$Photo;
            if (getLocalPath() != null) {
                return new File(getLocalPath());
            }
            TL_stories$StoryItem tL_stories$StoryItem = this.storyItem;
            if (tL_stories$StoryItem != null) {
                TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
                if (tLRPC$MessageMedia != null && tLRPC$MessageMedia.getDocument() != null) {
                    return FileLoader.getInstance(PeerStoriesView.this.currentAccount).getPathToAttach(this.storyItem.media.getDocument());
                }
                TLRPC$MessageMedia tLRPC$MessageMedia2 = this.storyItem.media;
                if (tLRPC$MessageMedia2 == null || (tLRPC$Photo = tLRPC$MessageMedia2.photo) == null) {
                    return null;
                }
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, Integer.MAX_VALUE);
                File pathToAttach = FileLoader.getInstance(PeerStoriesView.this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true);
                return !pathToAttach.exists() ? FileLoader.getInstance(PeerStoriesView.this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, false) : pathToAttach;
            }
            return null;
        }

        public boolean allowScreenshots() {
            StoriesController.UploadingStory uploadingStory = this.uploadingStory;
            if (uploadingStory != null) {
                return uploadingStory.entry.allowScreenshots;
            }
            TL_stories$StoryItem tL_stories$StoryItem = this.storyItem;
            if (tL_stories$StoryItem != null) {
                if (tL_stories$StoryItem.noforwards) {
                    return false;
                }
                if (tL_stories$StoryItem.pinned) {
                    TLRPC$Chat chat = MessagesController.getInstance(PeerStoriesView.this.currentAccount).getChat(Long.valueOf(-tL_stories$StoryItem.dialogId));
                    return chat == null || !chat.noforwards;
                }
                return true;
            }
            return true;
        }
    }

    public static int getStoryId(TL_stories$StoryItem tL_stories$StoryItem, StoriesController.UploadingStory uploadingStory) {
        StoryEntry storyEntry;
        if (tL_stories$StoryItem != null) {
            return tL_stories$StoryItem.f1763id;
        }
        if (uploadingStory == null || (storyEntry = uploadingStory.entry) == null) {
            return 0;
        }
        return storyEntry.editStoryId;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size;
        ReactionsContainerLayout reactionsContainerLayout;
        MentionsContainerView mentionsContainerView;
        if (this.storyViewer.ATTACH_TO_FRAGMENT) {
            ((FrameLayout.LayoutParams) getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight;
        }
        if (this.isActive && this.shareAlert == null) {
            this.realKeyboardHeight = this.delegate.getKeyboardHeight();
        } else {
            this.realKeyboardHeight = 0;
        }
        if (this.storyViewer.ATTACH_TO_FRAGMENT) {
            size = View.MeasureSpec.getSize(i2);
        } else {
            size = View.MeasureSpec.getSize(i2) + this.realKeyboardHeight;
        }
        int size2 = (int) ((View.MeasureSpec.getSize(i) * 16.0f) / 9.0f);
        if (size <= size2 || size2 > size) {
            size2 = size;
        }
        if (this.realKeyboardHeight < AndroidUtilities.m107dp(20)) {
            this.realKeyboardHeight = 0;
        }
        int i3 = this.realKeyboardHeight;
        ReactionsContainerLayout reactionsContainerLayout2 = this.likesReactionLayout;
        if (reactionsContainerLayout2 != null && reactionsContainerLayout2.getReactionsWindow() != null && this.likesReactionLayout.getReactionsWindow().isShowing()) {
            this.likesReactionLayout.getReactionsWindow().windowView.animate().translationY(-this.realKeyboardHeight).setDuration(250L).setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator).start();
            i3 = 0;
        } else {
            ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
            if (chatActivityEnterView != null && (chatActivityEnterView.isPopupShowing() || this.chatActivityEnterView.isWaitingForKeyboard())) {
                if (this.chatActivityEnterView.getEmojiView().getMeasuredHeight() == 0) {
                    i3 = this.chatActivityEnterView.getEmojiPadding();
                } else if (this.chatActivityEnterView.isStickersExpanded()) {
                    this.chatActivityEnterView.checkStickresExpandHeight();
                    i3 = this.chatActivityEnterView.getStickersExpandedHeight();
                } else {
                    i3 = this.chatActivityEnterView.getVisibleEmojiPadding();
                }
            }
        }
        boolean z = this.keyboardVisible;
        if (this.lastKeyboardHeight != i3) {
            this.keyboardVisible = false;
            if (i3 > 0 && this.isActive) {
                this.keyboardVisible = true;
                this.messageSent = false;
                this.lastOpenedKeyboardHeight = i3;
                checkReactionsLayout();
                ReactionsEffectOverlay.dismissAll();
            } else {
                ChatActivityEnterView chatActivityEnterView2 = this.chatActivityEnterView;
                if (chatActivityEnterView2 != null) {
                    this.storyViewer.saveDraft(this.dialogId, this.currentStory.storyItem, chatActivityEnterView2.getEditText());
                }
            }
            if (this.keyboardVisible && (mentionsContainerView = this.mentionContainer) != null) {
                mentionsContainerView.setVisibility(0);
            }
            if (!this.keyboardVisible && (reactionsContainerLayout = this.reactionsContainerLayout) != null) {
                reactionsContainerLayout.reset();
            }
            this.headerView.setEnabled(!this.keyboardVisible);
            this.optionsIconView.setEnabled(!this.keyboardVisible);
            ChatActivityEnterView chatActivityEnterView3 = this.chatActivityEnterView;
            if (chatActivityEnterView3 != null) {
                chatActivityEnterView3.checkReactionsButton(!this.keyboardVisible);
            }
            if (this.isActive && this.keyboardVisible) {
                this.delegate.setKeyboardVisible(true);
            }
            this.lastKeyboardHeight = i3;
            ValueAnimator valueAnimator = this.keyboardAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.notificationsLocker.lock();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.animatingKeyboardHeight, i3);
            this.keyboardAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    PeerStoriesView.this.lambda$onMeasure$37(valueAnimator2);
                }
            });
            this.keyboardAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.31
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    PeerStoriesView.this.notificationsLocker.unlock();
                    PeerStoriesView peerStoriesView = PeerStoriesView.this;
                    peerStoriesView.animatingKeyboardHeight = peerStoriesView.lastKeyboardHeight;
                    ChatActivityEnterView chatActivityEnterView4 = PeerStoriesView.this.chatActivityEnterView;
                    if (chatActivityEnterView4 != null) {
                        chatActivityEnterView4.onOverrideAnimationEnd();
                    }
                    PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                    if (peerStoriesView2.isActive && !peerStoriesView2.keyboardVisible) {
                        peerStoriesView2.delegate.setKeyboardVisible(false);
                    }
                    PeerStoriesView peerStoriesView3 = PeerStoriesView.this;
                    if (!peerStoriesView3.keyboardVisible && peerStoriesView3.mentionContainer != null) {
                        PeerStoriesView.this.mentionContainer.setVisibility(8);
                    }
                    PeerStoriesView peerStoriesView4 = PeerStoriesView.this;
                    peerStoriesView4.forceUpdateOffsets = true;
                    peerStoriesView4.invalidate();
                }
            });
            if (this.keyboardVisible) {
                this.keyboardAnimator.setDuration(250L);
                this.keyboardAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                this.storyViewer.cancelSwipeToReply();
            } else {
                this.keyboardAnimator.setDuration(500L);
                this.keyboardAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.keyboardAnimator.start();
            boolean z2 = this.keyboardVisible;
            if (z2 != z) {
                if (z2) {
                    createBlurredBitmap(this.bitmapShaderTools.getCanvas(), this.bitmapShaderTools.getBitmap());
                } else {
                    ChatActivityEnterView chatActivityEnterView4 = this.chatActivityEnterView;
                    if (chatActivityEnterView4 != null) {
                        chatActivityEnterView4.getEditField().clearFocus();
                    }
                }
                this.animateKeyboardOpening = true;
            } else {
                this.animateKeyboardOpening = false;
            }
        }
        ChatActivityEnterView chatActivityEnterView5 = this.chatActivityEnterView;
        if (chatActivityEnterView5 != null && chatActivityEnterView5.getEmojiView() != null) {
            ((FrameLayout.LayoutParams) this.chatActivityEnterView.getEmojiView().getLayoutParams()).gravity = 80;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.storyContainer.getLayoutParams();
        layoutParams.height = size2;
        boolean z3 = size - size2 > AndroidUtilities.m107dp(64);
        this.BIG_SCREEN = z3;
        int m107dp = (size - ((z3 ? AndroidUtilities.m107dp(64) : 0) + size2)) >> 1;
        layoutParams.topMargin = m107dp;
        if (this.BIG_SCREEN) {
            this.enterViewBottomOffset = (((-m107dp) + size) - size2) - AndroidUtilities.m107dp(64);
        } else {
            this.enterViewBottomOffset = ((-m107dp) + size) - size2;
        }
        FrameLayout frameLayout = this.selfView;
        if (frameLayout != null) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            if (this.BIG_SCREEN) {
                layoutParams2.topMargin = m107dp + size2 + AndroidUtilities.m107dp(8);
            } else {
                layoutParams2.topMargin = (m107dp + size2) - AndroidUtilities.m107dp(48);
            }
        }
        TextView textView = this.replyDisabledTextView;
        if (textView != null) {
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) textView.getLayoutParams();
            if (!this.BIG_SCREEN) {
                this.replyDisabledTextView.setTextColor(ColorUtils.setAlphaComponent(-1, 191));
                layoutParams3.topMargin = ((m107dp + size2) - AndroidUtilities.m107dp(12)) - AndroidUtilities.m107dp(40);
            } else {
                this.replyDisabledTextView.setTextColor(ColorUtils.blendARGB(-16777216, -1, 0.5f));
                layoutParams3.topMargin = m107dp + size2 + AndroidUtilities.m107dp(12);
            }
        }
        InstantCameraView instantCameraView = this.instantCameraView;
        if (instantCameraView != null) {
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) instantCameraView.getLayoutParams();
            if (i3 == 0) {
                layoutParams4.bottomMargin = size - ((m107dp + size2) - AndroidUtilities.m107dp(64));
            } else {
                layoutParams4.bottomMargin = i3 + AndroidUtilities.m107dp(64);
            }
        }
        if (!this.BIG_SCREEN) {
            ((FrameLayout.LayoutParams) this.bottomActionsLinearLayout.getLayoutParams()).topMargin = ((m107dp + size2) - AndroidUtilities.m107dp(12)) - AndroidUtilities.m107dp(40);
            int m107dp2 = this.isSelf ? AndroidUtilities.m107dp(40) : AndroidUtilities.m107dp(56);
            ((FrameLayout.LayoutParams) this.storyCaptionView.getLayoutParams()).bottomMargin = m107dp2;
            this.storyCaptionView.blackoutBottomOffset = m107dp2;
        } else {
            ((FrameLayout.LayoutParams) this.bottomActionsLinearLayout.getLayoutParams()).topMargin = m107dp + size2 + AndroidUtilities.m107dp(12);
            ((FrameLayout.LayoutParams) this.storyCaptionView.getLayoutParams()).bottomMargin = AndroidUtilities.m107dp(8);
            this.storyCaptionView.blackoutBottomOffset = AndroidUtilities.m107dp(8);
        }
        this.forceUpdateOffsets = true;
        float m107dp3 = AndroidUtilities.m107dp(8) + AndroidUtilities.m107dp(40);
        if (this.privacyButton.getVisibility() == 0) {
            m107dp3 += AndroidUtilities.m107dp(60);
        }
        if (this.muteIconContainer.getVisibility() == 0) {
            m107dp3 += AndroidUtilities.m107dp(40);
        }
        FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) this.headerView.titleView.getLayoutParams();
        if (layoutParams5.rightMargin != m107dp3) {
            int i4 = (int) m107dp3;
            layoutParams5.rightMargin = i4;
            ((FrameLayout.LayoutParams) this.headerView.subtitleView[0].getLayoutParams()).rightMargin = i4;
            ((FrameLayout.LayoutParams) this.headerView.subtitleView[1].getLayoutParams()).rightMargin = i4;
            this.headerView.forceLayout();
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMeasure$37(ValueAnimator valueAnimator) {
        this.animatingKeyboardHeight = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.progressToKeyboard = -1.0f;
        this.forceUpdateOffsets = true;
        invalidate();
    }

    private void updateViewOffsets() {
        float f;
        ReactionsContainerLayout reactionsContainerLayout;
        Paint paint;
        float progressToDismiss = this.delegate.getProgressToDismiss();
        this.progressToHideInterface.set(this.isLongPressed ? 1.0f : 0.0f);
        int i = this.lastOpenedKeyboardHeight;
        if (i != 0 && this.animateKeyboardOpening) {
            f = MathUtils.clamp(this.animatingKeyboardHeight / i, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        } else {
            f = this.keyboardVisible ? 1.0f : 0.0f;
        }
        float f2 = this.progressToRecording.get();
        float f3 = this.progressToTextA.get();
        float f4 = this.progressToStickerExpanded.get();
        this.progressToRecording.set(this.isRecording ? 1.0f : 0.0f);
        if (!this.messageSent) {
            AnimatedFloat animatedFloat = this.progressToTextA;
            ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
            animatedFloat.set((chatActivityEnterView == null || TextUtils.isEmpty(chatActivityEnterView.getFieldText())) ? 0.0f : 1.0f);
        }
        AnimatedFloat animatedFloat2 = this.progressToStickerExpanded;
        ChatActivityEnterView chatActivityEnterView2 = this.chatActivityEnterView;
        animatedFloat2.set((chatActivityEnterView2 == null || !chatActivityEnterView2.isStickersExpanded()) ? 0.0f : 1.0f);
        ChatActivityEnterView chatActivityEnterView3 = this.chatActivityEnterView;
        if (chatActivityEnterView3 != null) {
            chatActivityEnterView3.checkAnimation();
        }
        ChatActivityEnterView chatActivityEnterView4 = this.chatActivityEnterView;
        boolean z = chatActivityEnterView4 != null && chatActivityEnterView4.isPopupShowing();
        float hideInterfaceAlpha = getHideInterfaceAlpha();
        if (this.BIG_SCREEN) {
            this.inputBackgroundPaint.setColor(ColorUtils.blendARGB(ColorUtils.blendARGB(-16777216, -1, 0.13f), ColorUtils.setAlphaComponent(-16777216, 170), this.progressToKeyboard));
            this.inputBackgroundPaint.setAlpha((int) (paint.getAlpha() * (1.0f - this.progressToDismiss) * hideInterfaceAlpha * (1.0f - this.outT)));
        } else {
            this.inputBackgroundPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (140.0f * hideInterfaceAlpha * (1.0f - this.outT))));
        }
        if (!this.forceUpdateOffsets && this.progressToReply == this.storyViewer.swipeToReplyProgress && this.progressToHideInterface.get() == this.prevToHideProgress && this.lastAnimatingKeyboardHeight == this.animatingKeyboardHeight && f == this.progressToKeyboard && progressToDismiss == this.progressToDismiss && f2 == this.progressToRecording.get() && !z && f4 == this.progressToStickerExpanded.get() && f3 == this.progressToTextA.get()) {
            return;
        }
        this.forceUpdateOffsets = false;
        this.lastAnimatingKeyboardHeight = this.animatingKeyboardHeight;
        if (this.progressToHideInterface.get() != this.prevToHideProgress) {
            this.storyContainer.invalidate();
        }
        if (progressToDismiss != BitmapDescriptorFactory.HUE_RED) {
            this.storyContainer.setLayerType(2, null);
        } else {
            this.storyContainer.setLayerType(0, null);
        }
        this.prevToHideProgress = this.progressToHideInterface.get();
        this.progressToDismiss = progressToDismiss;
        this.progressToKeyboard = f;
        this.progressToReply = this.storyViewer.swipeToReplyProgress;
        ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
        if (reactionsContainerLayout2 != null) {
            reactionsContainerLayout2.setVisibility(f > BitmapDescriptorFactory.HUE_RED ? 0 : 8);
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 0 || childAt == this.selfView || childAt.getTag(C3632R.C3635id.parent_tag) != null || childAt == this.storyCaptionView.textSelectionHelper.getOverlayView(getContext())) {
                if (childAt == this.selfView) {
                    if (this.BIG_SCREEN) {
                        childAt.setAlpha((1.0f - this.progressToDismiss) * hideInterfaceAlpha * (1.0f - this.outT));
                    } else {
                        childAt.setAlpha((1.0f - this.outT) * hideInterfaceAlpha);
                    }
                }
            } else {
                ChatActivityEnterView chatActivityEnterView5 = this.chatActivityEnterView;
                if (chatActivityEnterView5 != null && childAt == chatActivityEnterView5.getEmojiView()) {
                    childAt.setTranslationY(this.chatActivityEnterView.getEmojiView().getMeasuredHeight() - this.animatingKeyboardHeight);
                } else if (childAt instanceof HintView) {
                    ((HintView) childAt).updatePosition();
                } else if (childAt != this.instantCameraView && childAt != this.storyContainer && childAt != this.shareButton && childAt != this.bottomActionsLinearLayout && childAt != this.repostButtonContainer && childAt != this.mediaBanTooltip && childAt != this.likeButtonContainer && ((reactionsContainerLayout = this.likesReactionLayout) == null || reactionsContainerLayout.getReactionsWindow() == null || childAt != this.likesReactionLayout.getReactionsWindow().windowView)) {
                    float m107dp = ((((-this.enterViewBottomOffset) * (1.0f - this.progressToKeyboard)) - this.animatingKeyboardHeight) - (AndroidUtilities.m107dp(8) * (1.0f - this.progressToKeyboard))) - (AndroidUtilities.m107dp(20) * this.storyViewer.swipeToReplyProgress);
                    float f5 = this.BIG_SCREEN ? (1.0f - this.progressToDismiss) * hideInterfaceAlpha : hideInterfaceAlpha * 1.0f;
                    if (childAt == this.replyDisabledTextView) {
                        m107dp = (-AndroidUtilities.m107dp(20)) * this.storyViewer.swipeToReplyProgress;
                    }
                    if (childAt == this.mentionContainer) {
                        m107dp -= this.chatActivityEnterView.getMeasuredHeight() - this.chatActivityEnterView.getAnimatedTop();
                        f5 = this.progressToKeyboard;
                        childAt.invalidate();
                    }
                    if (childAt == this.reactionsContainerLayout) {
                        float f6 = this.progressToKeyboard * (1.0f - this.progressToRecording.get()) * (1.0f - f4) * (1.0f - this.progressToTextA.get());
                        float f7 = f5 * f6 * 1.0f;
                        if (childAt.getAlpha() != BitmapDescriptorFactory.HUE_RED && f7 == BitmapDescriptorFactory.HUE_RED) {
                            this.reactionsContainerLayout.reset();
                        }
                        childAt.setAlpha(f7);
                        float f8 = (f6 * 0.2f) + 0.8f;
                        childAt.setScaleX(f8);
                        childAt.setScaleY(f8);
                    } else {
                        childAt.setTranslationY(m107dp);
                        ChatActivityEnterView chatActivityEnterView6 = this.chatActivityEnterView;
                        if (chatActivityEnterView6 == null || childAt != chatActivityEnterView6.controlsView) {
                            childAt.setAlpha(f5);
                        }
                    }
                }
            }
        }
        float f9 = (1.0f - progressToDismiss) * hideInterfaceAlpha;
        this.shareButton.setAlpha((1.0f - this.outT) * f9);
        this.likeButtonContainer.setAlpha((1.0f - this.outT) * f9);
        FrameLayout frameLayout = this.repostButtonContainer;
        if (frameLayout != null) {
            frameLayout.setAlpha(f9 * (1.0f - this.outT));
        }
        for (int i3 = 0; i3 < this.storyContainer.getChildCount(); i3++) {
            View childAt2 = this.storyContainer.getChildAt(i3);
            if (childAt2 != null) {
                if (childAt2 == this.headerView || childAt2 == this.optionsIconView || childAt2 == this.muteIconContainer || childAt2 == this.selfView || childAt2 == this.storyCaptionView || childAt2 == this.privacyButton) {
                    float f10 = childAt2 == this.muteIconContainer ? this.muteIconViewAlpha : 1.0f;
                    if (childAt2 == this.storyCaptionView) {
                        childAt2.setAlpha(f10 * (hideCaptionWithInterface() ? hideInterfaceAlpha : 1.0f) * (1.0f - this.outT));
                    } else {
                        childAt2.setAlpha(f10 * hideInterfaceAlpha * (1.0f - this.outT));
                    }
                } else {
                    childAt2.setAlpha(hideInterfaceAlpha);
                }
            }
        }
        ChatActivityEnterView chatActivityEnterView7 = this.chatActivityEnterView;
        if (chatActivityEnterView7 != null) {
            chatActivityEnterView7.setHorizontalPadding(AndroidUtilities.m107dp(10), this.progressToKeyboard, this.allowShare);
            if (this.chatActivityEnterView.getEmojiView() != null) {
                this.chatActivityEnterView.getEmojiView().setAlpha(this.progressToKeyboard);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getHideInterfaceAlpha() {
        return (1.0f - this.progressToHideInterface.get()) * (1.0f - this.storyViewer.getProgressToSelfViews());
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.mentionContainer) {
            canvas.save();
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, this.mentionContainer.getY(), getMeasuredWidth(), this.mentionContainer.getY() + this.mentionContainer.getMeasuredHeight());
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild;
        }
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (view == chatActivityEnterView) {
            this.sharedResources.rect1.set(BitmapDescriptorFactory.HUE_RED, this.chatActivityEnterView.getY() + this.chatActivityEnterView.getAnimatedTop(), getMeasuredWidth() + AndroidUtilities.m107dp(20), getMeasuredHeight());
            this.sharedResources.rect2.set(AndroidUtilities.m107dp(10), (this.chatActivityEnterView.getBottom() - AndroidUtilities.m107dp(48)) + this.chatActivityEnterView.getTranslationY() + AndroidUtilities.m107dp(2), (getMeasuredWidth() - AndroidUtilities.m107dp(10)) - ((this.allowShare ? AndroidUtilities.m108dp(46.0f) : 0) + AndroidUtilities.m107dp(40)), (this.chatActivityEnterView.getY() + this.chatActivityEnterView.getMeasuredHeight()) - AndroidUtilities.m107dp(2));
            if (this.chatActivityEnterView.getMeasuredHeight() > AndroidUtilities.m107dp(50)) {
                this.chatActivityEnterView.getEditField().setTranslationY((1.0f - this.progressToKeyboard) * (this.chatActivityEnterView.getMeasuredHeight() - AndroidUtilities.m107dp(50)));
            } else {
                this.chatActivityEnterView.getEditField().setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            float m107dp = (AndroidUtilities.m107dp(50) / 2.0f) * (1.0f - this.progressToKeyboard);
            this.bitmapShaderTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            AndroidUtilities.lerp(this.sharedResources.rect2, this.sharedResources.rect1, this.progressToKeyboard, this.sharedResources.finalRect);
            float f = this.progressToKeyboard;
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.bitmapShaderTools.paint.setAlpha((int) (f * 255.0f));
                canvas.drawRoundRect(this.sharedResources.finalRect, m107dp, m107dp, this.bitmapShaderTools.paint);
            }
            canvas.drawRoundRect(this.sharedResources.finalRect, m107dp, m107dp, this.inputBackgroundPaint);
            if (this.progressToKeyboard < 0.5f) {
                canvas.save();
                canvas.clipRect(this.sharedResources.finalRect);
                boolean drawChild2 = super.drawChild(canvas, view, j);
                canvas.restore();
                return drawChild2;
            }
        } else if (chatActivityEnterView != null && chatActivityEnterView.isPopupView(view)) {
            canvas.save();
            canvas.clipRect(this.sharedResources.finalRect);
            boolean drawChild3 = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild3;
        } else {
            ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
            if (view == reactionsContainerLayout && this.chatActivityEnterView != null) {
                view.setTranslationY(((-reactionsContainerLayout.getMeasuredHeight()) + (this.chatActivityEnterView.getY() + this.chatActivityEnterView.getAnimatedTop())) - AndroidUtilities.m107dp(18));
                if (this.progressToKeyboard > BitmapDescriptorFactory.HUE_RED) {
                    this.sharedResources.dimPaint.setAlpha((int) (this.progressToKeyboard * 125.0f));
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), this.chatActivityEnterView.getY() + this.chatActivityEnterView.getAnimatedTop(), this.sharedResources.dimPaint);
                }
            } else {
                ReactionsContainerLayout reactionsContainerLayout2 = this.likesReactionLayout;
                if (view == reactionsContainerLayout2) {
                    view.setTranslationY((((-(reactionsContainerLayout2.getMeasuredHeight() - this.likesReactionLayout.getPaddingBottom())) + this.likeButtonContainer.getY()) + this.bottomActionsLinearLayout.getY()) - AndroidUtilities.m107dp(18));
                }
            }
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInstantCameraView() {
        if (this.instantCameraView != null) {
            return;
        }
        InstantCameraView instantCameraView = new InstantCameraView(getContext(), new InstantCameraView.Delegate() { // from class: org.telegram.ui.Stories.PeerStoriesView.32
            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public /* synthetic */ ChatActivity getChatActivity() {
                return InstantCameraView.Delegate.CC.$default$getChatActivity(this);
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public /* synthetic */ boolean isInScheduleMode() {
                return InstantCameraView.Delegate.CC.$default$isInScheduleMode(this);
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public /* synthetic */ boolean isSecretChat() {
                return InstantCameraView.Delegate.CC.$default$isSecretChat(this);
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public /* synthetic */ boolean isTemplatesChannel(boolean z, boolean z2) {
                return InstantCameraView.Delegate.CC.$default$isTemplatesChannel(this, z, z2);
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public View getFragmentView() {
                return PeerStoriesView.this;
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public void sendMedia(MediaController.PhotoEntry photoEntry, VideoEditedInfo videoEditedInfo, boolean z, int i, boolean z2, String str) {
                if (photoEntry == null) {
                    return;
                }
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                TL_stories$StoryItem tL_stories$StoryItem = peerStoriesView.currentStory.storyItem;
                if (tL_stories$StoryItem == null || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemSkipped)) {
                    return;
                }
                tL_stories$StoryItem.dialogId = peerStoriesView.dialogId;
                if (photoEntry.isVideo) {
                    if (videoEditedInfo != null) {
                        SendMessagesHelper.prepareSendingVideo(PeerStoriesView.this.getAccountInstance(), photoEntry.path, videoEditedInfo, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.ttl, null, z, i, z2, photoEntry.hasSpoiler, photoEntry.caption, str);
                    } else {
                        SendMessagesHelper.prepareSendingVideo(PeerStoriesView.this.getAccountInstance(), photoEntry.path, null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.ttl, null, z, i, z2, photoEntry.hasSpoiler, photoEntry.caption, str);
                    }
                } else if (photoEntry.imagePath != null) {
                    SendMessagesHelper.prepareSendingPhoto(PeerStoriesView.this.getAccountInstance(), photoEntry.imagePath, photoEntry.thumbPath, null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.stickers, null, photoEntry.ttl, null, videoEditedInfo, z, i, z2, photoEntry.caption, str);
                } else if (photoEntry.path != null) {
                    SendMessagesHelper.prepareSendingPhoto(PeerStoriesView.this.getAccountInstance(), photoEntry.path, photoEntry.thumbPath, null, PeerStoriesView.this.dialogId, null, null, tL_stories$StoryItem, null, photoEntry.entities, photoEntry.stickers, null, photoEntry.ttl, null, videoEditedInfo, z, i, z2, photoEntry.caption, str);
                }
                PeerStoriesView.this.afterMessageSend();
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public Activity getParentActivity() {
                return AndroidUtilities.findActivity(PeerStoriesView.this.getContext());
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public int getClassGuid() {
                return PeerStoriesView.this.classGuid;
            }

            @Override // org.telegram.p043ui.Components.InstantCameraView.Delegate
            public long getDialogId() {
                return PeerStoriesView.this.dialogId;
            }
        }, this.resourcesProvider);
        this.instantCameraView = instantCameraView;
        instantCameraView.drawBlur = false;
        addView(this.instantCameraView, Math.min(indexOfChild(this.chatActivityEnterView.getRecordCircle()), indexOfChild(this.chatActivityEnterView.controlsView)), LayoutHelper.createFrame(-1, -1, 51));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void afterMessageSend() {
        InstantCameraView instantCameraView = this.instantCameraView;
        if (instantCameraView != null) {
            instantCameraView.resetCameraFile();
            this.instantCameraView.cancel(false);
        }
        this.storyViewer.clearDraft(this.dialogId, this.currentStory.storyItem);
        this.messageSent = true;
        this.storyViewer.closeKeyboardOrEmoji();
        BulletinFactory m66of = BulletinFactory.m66of(this.storyContainer, this.resourcesProvider);
        if (m66of != null) {
            m66of.createSimpleBulletin(C3632R.raw.forward, LocaleController.getString("MessageSent", C3632R.string.MessageSent), LocaleController.getString("ViewInChat", C3632R.string.ViewInChat), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.this.openChat();
                }
            }).hideAfterBottomSheet(false).show(false);
        }
        MessagesController.getInstance(this.currentAccount).ensureMessagesLoaded(this.dialogId, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openChat() {
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", this.dialogId);
        TLRPC$Dialog dialog = MessagesController.getInstance(this.currentAccount).getDialog(this.dialogId);
        if (dialog != null) {
            bundle.putInt("message_id", dialog.top_message);
        }
        this.storyViewer.presentFragment(new ChatActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccountInstance getAccountInstance() {
        return AccountInstance.getInstance(this.currentAccount);
    }

    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$VideoPlayerSharedScope */
    /* loaded from: classes6.dex */
    public static class VideoPlayerSharedScope {
        boolean firstFrameRendered;
        StoryViewer.VideoPlayerHolder player;
        View renderView;
        SurfaceView surfaceView;
        TextureView textureView;
        ArrayList<View> viewsToInvalidate = new ArrayList<>();

        public void invalidate() {
            for (int i = 0; i < this.viewsToInvalidate.size(); i++) {
                this.viewsToInvalidate.get(i).invalidate();
            }
        }

        public boolean isBuffering() {
            StoryViewer.VideoPlayerHolder videoPlayerHolder = this.player;
            return videoPlayerHolder != null && videoPlayerHolder.isBuffering();
        }
    }

    void checkReactionsLayout() {
        if (this.reactionsContainerLayout == null) {
            ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout(1, LaunchActivity.getLastFragment(), getContext(), this.currentAccount, new WrappedResourceProvider(this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.33
                @Override // org.telegram.p043ui.WrappedResourceProvider
                public void appendColors() {
                    this.sparseIntArray.put(Theme.key_chat_emojiPanelBackground, ColorUtils.setAlphaComponent(-1, 30));
                }
            });
            this.reactionsContainerLayout = reactionsContainerLayout;
            reactionsContainerLayout.setHint(LocaleController.getString("StoryReactionsHint", C3632R.string.StoryReactionsHint));
            ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
            reactionsContainerLayout2.skipEnterAnimation = true;
            addView(reactionsContainerLayout2, this.reactionsContainerIndex, LayoutHelper.createFrame(-2, 72, 49, 0, 0, 0, 64));
            this.reactionsContainerLayout.setDelegate(new C724534());
            this.reactionsContainerLayout.setMessage(null, null);
        }
        this.reactionsContainerLayout.setFragment(LaunchActivity.getLastFragment());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$34 */
    /* loaded from: classes6.dex */
    public class C724534 implements ReactionsContainerLayout.ReactionsContainerDelegate {
        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ boolean drawBackground() {
            return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawBackground(this);
        }

        C724534() {
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            onReactionClickedInternal(view, visibleReaction, z, z2, !z);
        }

        void onReactionClickedInternal(final View view, final ReactionsLayoutInBubble.VisibleReaction visibleReaction, final boolean z, final boolean z2, boolean z3) {
            ReactionsLayoutInBubble.VisibleReaction visibleReaction2;
            ReactionsEffectOverlay reactionsEffectOverlay;
            TLRPC$Document tLRPC$Document;
            if (z3 && PeerStoriesView.this.applyMessageToChat(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$34$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C724534.this.lambda$onReactionClickedInternal$0(view, visibleReaction, z, z2);
                }
            })) {
                return;
            }
            if (z && visibleReaction.emojicon != null) {
                PeerStoriesView.this.performHapticFeedback(0);
                Context context = view.getContext();
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                visibleReaction2 = visibleReaction;
                reactionsEffectOverlay = new ReactionsEffectOverlay(context, null, peerStoriesView.reactionsContainerLayout, null, view, peerStoriesView.getMeasuredWidth() / 2.0f, PeerStoriesView.this.getMeasuredHeight() / 2.0f, visibleReaction, PeerStoriesView.this.currentAccount, 0, true);
            } else {
                visibleReaction2 = visibleReaction;
                Context context2 = view.getContext();
                PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                reactionsEffectOverlay = new ReactionsEffectOverlay(context2, null, peerStoriesView2.reactionsContainerLayout, null, view, peerStoriesView2.getMeasuredWidth() / 2.0f, PeerStoriesView.this.getMeasuredHeight() / 2.0f, visibleReaction, PeerStoriesView.this.currentAccount, 2, true);
            }
            ReactionsEffectOverlay.currentOverlay = reactionsEffectOverlay;
            reactionsEffectOverlay.windowView.setTag(C3632R.C3635id.parent_tag, 1);
            PeerStoriesView.this.addView(reactionsEffectOverlay.windowView);
            reactionsEffectOverlay.started = true;
            reactionsEffectOverlay.startTime = System.currentTimeMillis();
            if (visibleReaction2.emojicon != null) {
                tLRPC$Document = MediaDataController.getInstance(PeerStoriesView.this.currentAccount).getEmojiAnimatedSticker(visibleReaction2.emojicon);
                SendMessagesHelper.SendMessageParams m95of = SendMessagesHelper.SendMessageParams.m95of(visibleReaction2.emojicon, PeerStoriesView.this.dialogId, null);
                PeerStoriesView peerStoriesView3 = PeerStoriesView.this;
                m95of.replyToStoryItem = peerStoriesView3.currentStory.storyItem;
                SendMessagesHelper.getInstance(peerStoriesView3.currentAccount).sendMessage(m95of);
            } else {
                TLRPC$Document findDocument = AnimatedEmojiDrawable.findDocument(PeerStoriesView.this.currentAccount, visibleReaction2.documentId);
                String findAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(findDocument, null);
                SendMessagesHelper.SendMessageParams m95of2 = SendMessagesHelper.SendMessageParams.m95of(findAnimatedEmojiEmoticon, PeerStoriesView.this.dialogId, null);
                m95of2.entities = new ArrayList<>();
                TLRPC$TL_messageEntityCustomEmoji tLRPC$TL_messageEntityCustomEmoji = new TLRPC$TL_messageEntityCustomEmoji();
                tLRPC$TL_messageEntityCustomEmoji.document_id = visibleReaction2.documentId;
                tLRPC$TL_messageEntityCustomEmoji.offset = 0;
                tLRPC$TL_messageEntityCustomEmoji.length = findAnimatedEmojiEmoticon.length();
                m95of2.entities.add(tLRPC$TL_messageEntityCustomEmoji);
                PeerStoriesView peerStoriesView4 = PeerStoriesView.this;
                m95of2.replyToStoryItem = peerStoriesView4.currentStory.storyItem;
                SendMessagesHelper.getInstance(peerStoriesView4.currentAccount).sendMessage(m95of2);
                tLRPC$Document = findDocument;
            }
            PeerStoriesView peerStoriesView5 = PeerStoriesView.this;
            BulletinFactory.m66of(peerStoriesView5.storyContainer, peerStoriesView5.resourcesProvider).createEmojiBulletin(tLRPC$Document, LocaleController.getString("ReactionSent", C3632R.string.ReactionSent), LocaleController.getString("ViewInChat", C3632R.string.ViewInChat), new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$34$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C724534.this.lambda$onReactionClickedInternal$1();
                }
            }).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show();
            if (PeerStoriesView.this.reactionsContainerLayout.getReactionsWindow() != null) {
                PeerStoriesView.this.reactionsContainerLayout.getReactionsWindow().dismissWithAlpha();
            }
            PeerStoriesView.this.closeKeyboardOrEmoji();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClickedInternal$0(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            onReactionClickedInternal(view, visibleReaction, z, z2, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClickedInternal$1() {
            PeerStoriesView.this.openChat();
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void drawRoundRect(Canvas canvas, RectF rectF, float f, float f2, float f3, int i, boolean z) {
            float f4 = -f2;
            float f5 = -f3;
            PeerStoriesView.this.bitmapShaderTools.setBounds(f4, f5, PeerStoriesView.this.getMeasuredWidth() + f4, PeerStoriesView.this.getMeasuredHeight() + f5);
            if (f > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawRoundRect(rectF, f, f, PeerStoriesView.this.bitmapShaderTools.paint);
                canvas.drawRoundRect(rectF, f, f, PeerStoriesView.this.inputBackgroundPaint);
                return;
            }
            canvas.drawRect(rectF, PeerStoriesView.this.bitmapShaderTools.paint);
            canvas.drawRect(rectF, PeerStoriesView.this.inputBackgroundPaint);
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public boolean needEnterText() {
            return PeerStoriesView.this.needEnterText();
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void onEmojiWindowDismissed() {
            PeerStoriesView.this.delegate.requestAdjust(false);
        }
    }

    void checkReactionsLayoutForLike() {
        ReactionsContainerLayout reactionsContainerLayout = this.likesReactionLayout;
        if (reactionsContainerLayout == null) {
            ReactionsContainerLayout reactionsContainerLayout2 = new ReactionsContainerLayout(2, LaunchActivity.getLastFragment(), getContext(), this.currentAccount, new WrappedResourceProvider(this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.PeerStoriesView.35
                @Override // org.telegram.p043ui.WrappedResourceProvider
                public void appendColors() {
                    this.sparseIntArray.put(Theme.key_chat_emojiPanelBackground, ColorUtils.setAlphaComponent(-1, 30));
                }
            });
            this.likesReactionLayout = reactionsContainerLayout2;
            reactionsContainerLayout2.setPadding(0, 0, 0, AndroidUtilities.m107dp(22));
            addView(this.likesReactionLayout, getChildCount() - 1, LayoutHelper.createFrame(-2, 74, 53, 0, 0, 12, 64));
            this.likesReactionLayout.setVisibility(8);
            this.likesReactionLayout.setDelegate(new C724736());
            this.likesReactionLayout.setMessage(null, null);
        } else {
            bringChildToFront(reactionsContainerLayout);
            this.likesReactionLayout.reset();
        }
        this.likesReactionLayout.setFragment(LaunchActivity.getLastFragment());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$36 */
    /* loaded from: classes6.dex */
    public class C724736 implements ReactionsContainerLayout.ReactionsContainerDelegate {
        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ boolean drawBackground() {
            return ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawBackground(this);
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ void drawRoundRect(Canvas canvas, RectF rectF, float f, float f2, float f3, int i, boolean z) {
            ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$drawRoundRect(this, canvas, rectF, f, f2, f3, i, z);
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public /* synthetic */ void onEmojiWindowDismissed() {
            ReactionsContainerLayout.ReactionsContainerDelegate.CC.$default$onEmojiWindowDismissed(this);
        }

        C724736() {
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void onReactionClicked(final View view, final ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$36$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PeerStoriesView.C724736.this.lambda$onReactionClicked$1(visibleReaction, view);
                }
            };
            if (!z) {
                PeerStoriesView.this.applyMessageToChat(runnable);
            } else {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClicked$1(ReactionsLayoutInBubble.VisibleReaction visibleReaction, View view) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction;
            PeerStoriesView.this.movingReaction = true;
            final boolean[] zArr = {false};
            final StoriesLikeButton storiesLikeButton = PeerStoriesView.this.storiesLikeButton;
            storiesLikeButton.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.8f).scaleY(0.8f).setListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Stories.PeerStoriesView.36.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AndroidUtilities.removeFromParent(storiesLikeButton);
                }
            }).setDuration(150L).start();
            int m107dp = AndroidUtilities.m107dp(8);
            PeerStoriesView.this.storiesLikeButton = new StoriesLikeButton(PeerStoriesView.this.getContext(), PeerStoriesView.this.sharedResources);
            PeerStoriesView.this.storiesLikeButton.setPadding(m107dp, m107dp, m107dp, m107dp);
            PeerStoriesView.this.likeButtonContainer.addView(PeerStoriesView.this.storiesLikeButton, LayoutHelper.createFrame(40, 40, 3));
            if (PeerStoriesView.this.reactionMoveDrawable != null) {
                PeerStoriesView.this.reactionMoveDrawable.removeView(PeerStoriesView.this);
                PeerStoriesView.this.reactionMoveDrawable = null;
            }
            if (PeerStoriesView.this.emojiReactionEffect != null) {
                PeerStoriesView.this.emojiReactionEffect.removeView(PeerStoriesView.this);
                PeerStoriesView.this.emojiReactionEffect = null;
            }
            PeerStoriesView.this.drawAnimatedEmojiAsMovingReaction = false;
            if (visibleReaction.documentId != 0) {
                PeerStoriesView.this.drawAnimatedEmojiAsMovingReaction = true;
                PeerStoriesView.this.reactionMoveDrawable = new AnimatedEmojiDrawable(2, PeerStoriesView.this.currentAccount, visibleReaction.documentId);
                PeerStoriesView.this.reactionMoveDrawable.addView(PeerStoriesView.this);
            } else if (visibleReaction.emojicon != null && (tLRPC$TL_availableReaction = MediaDataController.getInstance(PeerStoriesView.this.currentAccount).getReactionsMap().get(visibleReaction.emojicon)) != null) {
                PeerStoriesView.this.reactionMoveImageReceiver.setImage(null, null, ImageLocation.getForDocument(tLRPC$TL_availableReaction.select_animation), "60_60", null, null, null, 0L, null, null, 0);
                PeerStoriesView.this.reactionEffectImageReceiver.setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.around_animation), ReactionsEffectOverlay.getFilterForAroundAnimation(), null, null, null, 0);
                if (PeerStoriesView.this.reactionEffectImageReceiver.getLottieAnimation() != null) {
                    PeerStoriesView.this.reactionEffectImageReceiver.getLottieAnimation().setCurrentFrame(0, false, true);
                }
            }
            PeerStoriesView.this.storiesLikeButton.setReaction(visibleReaction);
            PeerStoriesView peerStoriesView = PeerStoriesView.this;
            if (peerStoriesView.isChannel) {
                TL_stories$StoryItem tL_stories$StoryItem = peerStoriesView.currentStory.storyItem;
                if (tL_stories$StoryItem.sent_reaction == null) {
                    if (tL_stories$StoryItem.views == null) {
                        tL_stories$StoryItem.views = new TL_stories$TL_storyViews();
                    }
                    TL_stories$StoryItem tL_stories$StoryItem2 = PeerStoriesView.this.currentStory.storyItem;
                    TL_stories$StoryViews tL_stories$StoryViews = tL_stories$StoryItem2.views;
                    tL_stories$StoryViews.reactions_count++;
                    ReactionsUtils.applyForStoryViews(null, tL_stories$StoryItem2.sent_reaction, tL_stories$StoryViews);
                    PeerStoriesView.this.updateUserViews(true);
                }
            }
            if (visibleReaction.documentId != 0 && PeerStoriesView.this.storiesLikeButton.emojiDrawable != null) {
                PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                peerStoriesView2.emojiReactionEffect = AnimatedEmojiEffect.createFrom(peerStoriesView2.storiesLikeButton.emojiDrawable, false, true);
                PeerStoriesView.this.emojiReactionEffect.setView(PeerStoriesView.this);
            }
            PeerStoriesView peerStoriesView3 = PeerStoriesView.this;
            peerStoriesView3.storiesController.setStoryReaction(peerStoriesView3.dialogId, PeerStoriesView.this.currentStory.storyItem, visibleReaction);
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int[] iArr2 = new int[2];
            PeerStoriesView.this.getLocationInWindow(iArr2);
            PeerStoriesView.this.movingReactionFromX = iArr[0] - iArr2[0];
            PeerStoriesView.this.movingReactionFromY = iArr[1] - iArr2[1];
            PeerStoriesView.this.movingReactionFromSize = view.getMeasuredHeight();
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            PeerStoriesView.this.movingReactionProgress = BitmapDescriptorFactory.HUE_RED;
            PeerStoriesView.this.invalidate();
            final StoriesLikeButton storiesLikeButton2 = PeerStoriesView.this.storiesLikeButton;
            storiesLikeButton2.setAllowDrawReaction(false);
            storiesLikeButton2.prepareAnimateReaction(visibleReaction);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$36$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PeerStoriesView.C724736.this.lambda$onReactionClicked$0(ofFloat, zArr, valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.36.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PeerStoriesView.this.movingReaction = false;
                    PeerStoriesView.this.movingReactionProgress = 1.0f;
                    PeerStoriesView.this.invalidate();
                    boolean[] zArr2 = zArr;
                    if (!zArr2[0]) {
                        zArr2[0] = true;
                        PeerStoriesView.this.drawReactionEffect = true;
                        PeerStoriesView.this.performHapticFeedback(3);
                    }
                    storiesLikeButton2.setAllowDrawReaction(true);
                    storiesLikeButton2.animateVisibleReaction();
                    if (PeerStoriesView.this.reactionMoveDrawable != null) {
                        PeerStoriesView.this.reactionMoveDrawable.removeView(PeerStoriesView.this);
                        PeerStoriesView.this.reactionMoveDrawable = null;
                    }
                }
            });
            ofFloat.setDuration(220L);
            ofFloat.start();
            PeerStoriesView.this.showLikesReaction(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClicked$0(ValueAnimator valueAnimator, boolean[] zArr, ValueAnimator valueAnimator2) {
            PeerStoriesView.this.movingReactionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            PeerStoriesView.this.invalidate();
            if (PeerStoriesView.this.movingReactionProgress <= 0.8f || zArr[0]) {
                return;
            }
            zArr[0] = true;
            PeerStoriesView.this.drawReactionEffect = true;
            PeerStoriesView.this.performHapticFeedback(3);
        }

        @Override // org.telegram.p043ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public boolean needEnterText() {
            PeerStoriesView.this.delegate.requestAdjust(false);
            return false;
        }
    }

    public boolean needEnterText() {
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView == null) {
            return false;
        }
        boolean isKeyboardVisible = chatActivityEnterView.isKeyboardVisible();
        if (isKeyboardVisible) {
            this.chatActivityEnterView.showEmojiView();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$needEnterText$38();
            }
        }, 300L);
        return isKeyboardVisible;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$needEnterText$38() {
        this.delegate.requestAdjust(true);
    }

    public void setViewsThumbImageReceiver(float f, float f2, float f3, SelfStoriesPreviewView.ImageHolder imageHolder) {
        this.viewsThumbAlpha = f;
        this.viewsThumbScale = 1.0f / f2;
        if (this.viewsThumbImageReceiver == imageHolder) {
            return;
        }
        this.viewsThumbImageReceiver = imageHolder;
        if (imageHolder == null || imageHolder.receiver.getBitmap() == null) {
            return;
        }
        this.imageReceiver.updateStaticDrawableThump(imageHolder.receiver.getBitmap().copy(Bitmap.Config.ARGB_8888, false));
    }

    /* renamed from: org.telegram.ui.Stories.PeerStoriesView$SharedResources */
    /* loaded from: classes6.dex */
    public static class SharedResources {
        public final Paint barPaint;
        private final Drawable bottomOverlayGradient;
        public Drawable deleteDrawable;
        private final Paint gradientBackgroundPaint;
        public final Drawable imageBackgroundDrawable;
        public Drawable likeDrawable;
        public Drawable likeDrawableFilled;
        public RLottieDrawable muteDrawable;
        public RLottieDrawable noSoundDrawable;
        public Drawable optionsDrawable;
        public Drawable repostDrawable;
        public final Paint selectedBarPaint;
        public Drawable shareDrawable;
        private final Drawable topOverlayGradient;
        public final BitmapShaderTools bitmapShaderTools = new BitmapShaderTools();
        private final RectF rect1 = new RectF();
        private final RectF rect2 = new RectF();
        private final RectF finalRect = new RectF();
        private final Paint dimPaint = new Paint();

        /* JADX INFO: Access modifiers changed from: package-private */
        public SharedResources(Context context) {
            this.shareDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.media_share);
            this.likeDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.media_like);
            this.repostDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.media_repost);
            Drawable drawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.media_like_active);
            this.likeDrawableFilled = drawable;
            drawable.setColorFilter(new PorterDuffColorFilter(-53704, PorterDuff.Mode.MULTIPLY));
            this.optionsDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.media_more);
            this.deleteDrawable = ContextCompat.getDrawable(context, C3632R.C3634drawable.msg_delete);
            int i = C3632R.raw.media_mute_unmute;
            this.muteDrawable = new RLottieDrawable(i, "media_mute_unmute", AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "media_mute_unmute", AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
            this.noSoundDrawable = rLottieDrawable;
            rLottieDrawable.setCurrentFrame(20, false, true);
            this.noSoundDrawable.stop();
            Paint paint = new Paint(1);
            this.barPaint = paint;
            paint.setColor(1442840575);
            Paint paint2 = new Paint(1);
            this.selectedBarPaint = paint2;
            paint2.setColor(-1);
            int alphaComponent = ColorUtils.setAlphaComponent(-16777216, 102);
            this.topOverlayGradient = ContextCompat.getDrawable(context, C3632R.C3634drawable.shadow_story_top);
            this.bottomOverlayGradient = ContextCompat.getDrawable(context, C3632R.C3634drawable.shadow_story_bottom);
            Paint paint3 = new Paint();
            this.gradientBackgroundPaint = paint3;
            paint3.setColor(alphaComponent);
            this.imageBackgroundDrawable = new ColorDrawable(ColorUtils.blendARGB(-16777216, -1, 0.1f));
        }

        public void setIconMuted(boolean z, boolean z2) {
            if (!z2) {
                this.muteDrawable.setCurrentFrame(z ? 20 : 0, false);
                this.muteDrawable.setCustomEndFrame(z ? 20 : 0);
            } else if (z) {
                if (this.muteDrawable.getCurrentFrame() > 20) {
                    this.muteDrawable.setCurrentFrame(0, false);
                }
                this.muteDrawable.setCustomEndFrame(20);
                this.muteDrawable.start();
            } else if (this.muteDrawable.getCurrentFrame() == 0 || this.muteDrawable.getCurrentFrame() >= 43) {
            } else {
                this.muteDrawable.setCustomEndFrame(43);
                this.muteDrawable.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editPrivacy(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, final TL_stories$StoryItem tL_stories$StoryItem) {
        this.delegate.showDialog(new StoryPrivacyBottomSheet(getContext(), tL_stories$StoryItem.pinned ? Integer.MAX_VALUE : tL_stories$StoryItem.expire_date - tL_stories$StoryItem.date, this.resourcesProvider).setValue(storyPrivacy).enableSharing(false).isEdit(true).whenSelectedRules(new StoryPrivacyBottomSheet.DoneCallback() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda45
            @Override // org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet.DoneCallback
            public final void done(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy2, boolean z, boolean z2, TLRPC$InputPeer tLRPC$InputPeer, Runnable runnable) {
                PeerStoriesView.this.lambda$editPrivacy$41(tL_stories$StoryItem, storyPrivacy2, z, z2, tLRPC$InputPeer, runnable);
            }
        }, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editPrivacy$41(final TL_stories$StoryItem tL_stories$StoryItem, final StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, boolean z, boolean z2, TLRPC$InputPeer tLRPC$InputPeer, final Runnable runnable) {
        TL_stories$TL_stories_editStory tL_stories$TL_stories_editStory = new TL_stories$TL_stories_editStory();
        tL_stories$TL_stories_editStory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(tL_stories$StoryItem.dialogId);
        tL_stories$TL_stories_editStory.f1773id = tL_stories$StoryItem.f1763id;
        tL_stories$TL_stories_editStory.flags |= 4;
        tL_stories$TL_stories_editStory.privacy_rules = storyPrivacy.rules;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_editStory, new RequestDelegate() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda44
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PeerStoriesView.this.lambda$editPrivacy$40(runnable, tL_stories$StoryItem, storyPrivacy, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editPrivacy$40(final Runnable runnable, final TL_stories$StoryItem tL_stories$StoryItem, final StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                PeerStoriesView.this.lambda$editPrivacy$39(runnable, tLRPC$TL_error, tL_stories$StoryItem, storyPrivacy);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editPrivacy$39(Runnable runnable, TLRPC$TL_error tLRPC$TL_error, TL_stories$StoryItem tL_stories$StoryItem, StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy) {
        if (runnable != null) {
            runnable.run();
        }
        if (tLRPC$TL_error == null || "STORY_NOT_MODIFIED".equals(tLRPC$TL_error.text)) {
            tL_stories$StoryItem.parsedPrivacy = storyPrivacy;
            tL_stories$StoryItem.privacy = storyPrivacy.toValue();
            int i = storyPrivacy.type;
            tL_stories$StoryItem.close_friends = i == 1;
            tL_stories$StoryItem.contacts = i == 2;
            tL_stories$StoryItem.selected_contacts = i == 3;
            MessagesController.getInstance(this.currentAccount).getStoriesController().updateStoryItem(tL_stories$StoryItem.dialogId, tL_stories$StoryItem);
            this.editedPrivacy = true;
            int i2 = storyPrivacy.type;
            if (i2 == 4) {
                BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.getString("StorySharedToEveryone")).show();
            } else if (i2 == 1) {
                BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.getString("StorySharedToCloseFriends")).show();
            } else if (i2 == 2) {
                if (storyPrivacy.selectedUserIds.isEmpty()) {
                    BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.getString("StorySharedToAllContacts")).show();
                } else {
                    BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.formatPluralString("StorySharedToAllContactsExcluded", storyPrivacy.selectedUserIds.size(), new Object[0])).show();
                }
            } else if (i2 == 3) {
                HashSet hashSet = new HashSet();
                hashSet.addAll(storyPrivacy.selectedUserIds);
                for (ArrayList<Long> arrayList : storyPrivacy.selectedUserIdsByGroup.values()) {
                    hashSet.addAll(arrayList);
                }
                BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.contact_check, LocaleController.formatPluralString("StorySharedToContacts", hashSet.size(), new Object[0])).show();
            }
        } else {
            BulletinFactory.m66of(this.storyContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.error, LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
        }
        updatePosition();
    }

    public boolean checkRecordLocked(final boolean z) {
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView == null || !chatActivityEnterView.isRecordLocked()) {
            return false;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        if (this.chatActivityEnterView.isInVideoMode()) {
            builder.setTitle(LocaleController.getString("DiscardVideoMessageTitle", C3632R.string.DiscardVideoMessageTitle));
            builder.setMessage(LocaleController.getString("DiscardVideoMessageDescription", C3632R.string.DiscardVideoMessageDescription));
        } else {
            builder.setTitle(LocaleController.getString("DiscardVoiceMessageTitle", C3632R.string.DiscardVoiceMessageTitle));
            builder.setMessage(LocaleController.getString("DiscardVoiceMessageDescription", C3632R.string.DiscardVoiceMessageDescription));
        }
        builder.setPositiveButton(LocaleController.getString("DiscardVoiceMessageAction", C3632R.string.DiscardVoiceMessageAction), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PeerStoriesView.this.lambda$checkRecordLocked$42(z, dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Continue", C3632R.string.Continue), null);
        this.delegate.showDialog(builder.create());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRecordLocked$42(boolean z, DialogInterface dialogInterface, int i) {
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView != null) {
            if (z) {
                this.storyViewer.close(true);
            } else {
                chatActivityEnterView.cancelRecordingAudioVideo();
            }
        }
    }

    public void animateOut(final boolean z) {
        ValueAnimator valueAnimator = this.outAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float[] fArr = new float[2];
        fArr[0] = this.outT;
        fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        this.outAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.PeerStoriesView$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                PeerStoriesView.this.lambda$animateOut$43(valueAnimator2);
            }
        });
        this.outAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.PeerStoriesView.37
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PeerStoriesView peerStoriesView = PeerStoriesView.this;
                boolean z2 = z;
                float f = BitmapDescriptorFactory.HUE_RED;
                peerStoriesView.outT = z2 ? 1.0f : 0.0f;
                PeerStoriesView.this.headerView.setTranslationY((-AndroidUtilities.m107dp(8)) * PeerStoriesView.this.outT);
                PeerStoriesView peerStoriesView2 = PeerStoriesView.this;
                peerStoriesView2.headerView.setAlpha(1.0f - peerStoriesView2.outT);
                PeerStoriesView.this.optionsIconView.setTranslationY((-AndroidUtilities.m107dp(8)) * PeerStoriesView.this.outT);
                PeerStoriesView.this.optionsIconView.setAlpha(1.0f - PeerStoriesView.this.outT);
                PeerStoriesView.this.muteIconContainer.setTranslationY((-AndroidUtilities.m107dp(8)) * PeerStoriesView.this.outT);
                PeerStoriesView.this.muteIconContainer.setAlpha(PeerStoriesView.this.muteIconViewAlpha * (1.0f - PeerStoriesView.this.outT));
                if (PeerStoriesView.this.selfView != null) {
                    PeerStoriesView.this.selfView.setTranslationY(AndroidUtilities.m107dp(8) * PeerStoriesView.this.outT);
                    PeerStoriesView.this.selfView.setAlpha(1.0f - PeerStoriesView.this.outT);
                }
                if (PeerStoriesView.this.privacyButton != null) {
                    PeerStoriesView.this.privacyButton.setTranslationY((-AndroidUtilities.m107dp(8)) * PeerStoriesView.this.outT);
                    PeerStoriesView.this.privacyButton.setAlpha(1.0f - PeerStoriesView.this.outT);
                }
                PeerStoriesView.this.storyCaptionView.setAlpha(1.0f - PeerStoriesView.this.outT);
                Delegate delegate = PeerStoriesView.this.delegate;
                if (delegate != null) {
                    f = delegate.getProgressToDismiss();
                }
                float hideInterfaceAlpha = PeerStoriesView.this.getHideInterfaceAlpha();
                if (PeerStoriesView.this.likeButtonContainer != null) {
                    PeerStoriesView.this.likeButtonContainer.setAlpha((1.0f - f) * hideInterfaceAlpha * (1.0f - PeerStoriesView.this.outT));
                }
                if (PeerStoriesView.this.shareButton != null) {
                    PeerStoriesView.this.shareButton.setAlpha((1.0f - f) * hideInterfaceAlpha * (1.0f - PeerStoriesView.this.outT));
                }
                if (PeerStoriesView.this.repostButtonContainer != null) {
                    PeerStoriesView.this.repostButtonContainer.setAlpha(hideInterfaceAlpha * (1.0f - f) * (1.0f - PeerStoriesView.this.outT));
                }
                PeerStoriesView peerStoriesView3 = PeerStoriesView.this;
                ChatActivityEnterView chatActivityEnterView = peerStoriesView3.chatActivityEnterView;
                if (chatActivityEnterView != null) {
                    chatActivityEnterView.setAlpha(1.0f - peerStoriesView3.outT);
                    PeerStoriesView.this.invalidate();
                }
                PeerStoriesView.this.storyContainer.invalidate();
            }
        });
        this.outAnimator.setDuration(420L);
        this.outAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.outAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOut$43(ValueAnimator valueAnimator) {
        this.outT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.headerView.setTranslationY((-AndroidUtilities.m107dp(8)) * this.outT);
        this.headerView.setAlpha(1.0f - this.outT);
        this.optionsIconView.setTranslationY((-AndroidUtilities.m107dp(8)) * this.outT);
        this.optionsIconView.setAlpha(1.0f - this.outT);
        this.muteIconContainer.setTranslationY((-AndroidUtilities.m107dp(8)) * this.outT);
        this.muteIconContainer.setAlpha(this.muteIconViewAlpha * (1.0f - this.outT));
        FrameLayout frameLayout = this.selfView;
        if (frameLayout != null) {
            frameLayout.setTranslationY(AndroidUtilities.m107dp(8) * this.outT);
            this.selfView.setAlpha(1.0f - this.outT);
        }
        StoryPrivacyButton storyPrivacyButton = this.privacyButton;
        if (storyPrivacyButton != null) {
            storyPrivacyButton.setTranslationY((-AndroidUtilities.m107dp(8)) * this.outT);
            this.privacyButton.setAlpha(1.0f - this.outT);
        }
        this.storyCaptionView.setAlpha(1.0f - this.outT);
        Delegate delegate = this.delegate;
        float progressToDismiss = delegate == null ? BitmapDescriptorFactory.HUE_RED : delegate.getProgressToDismiss();
        float hideInterfaceAlpha = getHideInterfaceAlpha();
        FrameLayout frameLayout2 = this.likeButtonContainer;
        if (frameLayout2 != null) {
            frameLayout2.setAlpha((1.0f - progressToDismiss) * hideInterfaceAlpha * (1.0f - this.outT));
        }
        ImageView imageView = this.shareButton;
        if (imageView != null) {
            imageView.setAlpha((1.0f - progressToDismiss) * hideInterfaceAlpha * (1.0f - this.outT));
        }
        FrameLayout frameLayout3 = this.repostButtonContainer;
        if (frameLayout3 != null) {
            frameLayout3.setAlpha(hideInterfaceAlpha * (1.0f - progressToDismiss) * (1.0f - this.outT));
        }
        ChatActivityEnterView chatActivityEnterView = this.chatActivityEnterView;
        if (chatActivityEnterView != null) {
            chatActivityEnterView.setAlpha(1.0f - this.outT);
            invalidate();
        }
        this.storyContainer.invalidate();
    }

    public int getListPosition() {
        return this.listPosition;
    }
}
