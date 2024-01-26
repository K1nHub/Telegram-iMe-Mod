package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.HiddenChatsController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.LockedSection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.DialogsAdapter;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BubbleCounterPath;
import org.telegram.p043ui.Components.CanvasButton;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.ForegroundColorSpanThemable;
import org.telegram.p043ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.PullForegroundDrawable;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.TimerDrawable;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DraftMessage;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$ForumTopic;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_dialogFolder;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme;
import org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate;
import org.telegram.tgnet.TLRPC$TL_messageMediaGame;
import org.telegram.tgnet.TLRPC$TL_messageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_messageMediaPoll;
import org.telegram.tgnet.TLRPC$TL_messageService;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserStatus;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import p033j$.util.Comparator;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Cells.DialogCell */
/* loaded from: classes5.dex */
public class DialogCell extends BaseCell implements StoriesListPlaceProvider.AvatarOverlaysView {
    private int[] adaptiveEmojiColor;
    private ColorFilter[] adaptiveEmojiColorFilter;
    private int animateFromStatusDrawableParams;
    private int animateToStatusDrawableParams;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack2;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack3;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStackName;
    private boolean animatingArchiveAvatar;
    private float animatingArchiveAvatarProgress;
    private boolean applyName;
    private float archiveBackgroundProgress;
    private boolean archiveHidden;
    protected PullForegroundDrawable archivedChatsDrawable;
    private boolean attachedToWindow;
    private AvatarDrawable avatarDrawable;
    public ImageReceiver avatarImage;
    private int bottomClip;
    private Paint buttonBackgroundPaint;
    private boolean buttonCreated;
    private StaticLayout buttonLayout;
    private int buttonLeft;
    private int buttonTop;
    CanvasButton canvasButton;
    private TLRPC$Chat chat;
    private float chatCallProgress;
    protected CheckBox2 checkBox;
    private int checkDrawLeft;
    private int checkDrawLeft1;
    private int checkDrawTop;
    public float chekBoxPaddingTop;
    private boolean clearingDialog;
    private float clipProgress;
    private int clockDrawLeft;
    public float collapseOffset;
    public boolean collapsed;
    private float cornerProgress;
    private StaticLayout countAnimationInLayout;
    private boolean countAnimationIncrement;
    private StaticLayout countAnimationStableLayout;
    private ValueAnimator countAnimator;
    private float countChangeProgress;
    private StaticLayout countLayout;
    private int countLeft;
    private int countLeftOld;
    private StaticLayout countOldLayout;
    private int countTop;
    private int countWidth;
    private int countWidthOld;
    private Paint counterPaintOutline;
    private Path counterPath;
    private RectF counterPathRect;
    private int currentAccount;
    private int currentDialogFolderDialogsCount;
    private int currentDialogFolderId;
    private long currentDialogId;
    private TextPaint currentMessagePaint;
    private float currentRevealBounceProgress;
    private float currentRevealProgress;
    private CustomDialog customDialog;
    DialogCellDelegate delegate;
    private boolean dialogMuted;
    private float dialogMutedProgress;
    private int dialogsType;
    private TLRPC$DraftMessage draftMessage;
    public boolean drawArchive;
    public boolean drawAvatar;
    private boolean drawCheck1;
    private boolean drawCheck2;
    private boolean drawClock;
    private boolean drawCount;
    private boolean drawCount2;
    private boolean drawError;
    private boolean drawForwardIcon;
    private boolean drawMention;
    private boolean drawNameLock;
    private boolean drawPin;
    private boolean drawPinBackground;
    private boolean drawPinForced;
    private boolean[] drawPlay;
    private boolean drawPremium;
    private boolean drawReactionMention;
    private boolean drawReorder;
    private boolean drawRevealBackground;
    private int drawScam;
    private boolean[] drawSpoiler;
    private boolean drawUnmute;
    private boolean drawVerified;
    public boolean drawingForBlur;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatus;
    private TLRPC$EncryptedChat encryptedChat;
    private int errorLeft;
    private int errorTop;
    private Paint fadePaint;
    private Paint fadePaintBack;
    private int folderId;
    protected boolean forbidDraft;
    protected boolean forbidVerified;
    public TLRPC$TL_forumTopic forumTopic;
    public boolean fullSeparator;
    public boolean fullSeparator2;
    private ArrayList<MessageObject> groupMessages;
    private int halfCheckDrawLeft;
    private boolean hasCall;
    private boolean hasNameInMessage;
    private boolean hasUnmutedTopics;
    private boolean hasVideoThumb;
    public int heightDefault;
    public int heightThreeLines;
    public boolean inPreviewMode;
    private float innerProgress;
    private BounceInterpolator interpolator;
    private boolean isCompactMode;
    private boolean isDialogCell;
    private boolean isForum;
    private boolean isForward;
    public boolean isSavedDialog;
    private boolean isSelected;
    private boolean isShowPremiumBadgeEnabled;
    private boolean isShowPremiumStatusEnabled;
    private boolean isSliding;
    private boolean isTopic;
    public boolean isTransitionSupport;
    long lastDialogChangedTime;
    private int lastDrawSwipeMessageStringId;
    private RLottieDrawable lastDrawTranslationDrawable;
    private int lastMessageDate;
    private CharSequence lastMessageString;
    private CharSequence lastPrintString;
    private int lastSendState;
    int lastSize;
    private int lastStatusDrawableParams;
    private boolean lastTopicMessageUnread;
    private boolean lastUnreadState;
    private int lock2Left;
    private Drawable lockDrawable;
    private boolean markUnread;
    private int mentionCount;
    private StaticLayout mentionLayout;
    private int mentionLeft;
    private int mentionWidth;
    private MessageObject message;
    private int messageId;
    private StaticLayout messageLayout;
    private int messageLeft;
    private StaticLayout messageNameLayout;
    private int messageNameLeft;
    private int messageNameTop;
    public int messagePaddingStart;
    private int messageTop;
    boolean moving;
    private boolean nameIsEllipsized;
    private StaticLayout nameLayout;
    private boolean nameLayoutEllipsizeByGradient;
    private boolean nameLayoutEllipsizeLeft;
    private boolean nameLayoutFits;
    private float nameLayoutTranslateX;
    private int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private int nameMuteLeft;
    private int nameWidth;
    private boolean needEmoji;
    private float onlineProgress;
    protected boolean overrideSwipeAction;
    protected int overrideSwipeActionBackgroundColorKey;
    protected RLottieDrawable overrideSwipeActionDrawable;
    protected int overrideSwipeActionRevealBackgroundColorKey;
    protected int overrideSwipeActionStringId;
    protected String overrideSwipeActionStringKey;
    private int paintIndex;
    private DialogsActivity parentFragment;
    private int pinLeft;
    private int pinTop;
    private DialogsAdapter.DialogsPreloader preloader;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private int printingStringType;
    private int progressStage;
    private boolean promoDialog;
    private int reactionMentionCount;
    private int reactionMentionLeft;
    private ValueAnimator reactionsMentionsAnimator;
    private float reactionsMentionsChangeProgress;
    private int readOutboxMaxId;
    private RectF rect;
    private float reorderIconProgress;
    private final Theme.ResourcesProvider resourcesProvider;
    public float rightFragmentOffset;
    private float rightFragmentOpenedProgress;
    private boolean showTopicIconInName;
    private boolean showTtl;
    private List<SpoilerEffect> spoilers;
    private List<SpoilerEffect> spoilers2;
    private Stack<SpoilerEffect> spoilersPool;
    private Stack<SpoilerEffect> spoilersPool2;
    private boolean statusDrawableAnimationInProgress;
    private ValueAnimator statusDrawableAnimator;
    private int statusDrawableLeft;
    private float statusDrawableProgress;
    public final StoriesUtilities.AvatarStoryParams storyParams;
    public boolean swipeCanceled;
    private int swipeMessageTextId;
    private StaticLayout swipeMessageTextLayout;
    private int swipeMessageWidth;
    private Paint thumbBackgroundPaint;
    private ImageReceiver[] thumbImage;
    private boolean[] thumbImageSeen;
    private Path thumbPath;
    int thumbSize;
    private SpoilerEffect thumbSpoiler;
    private int thumbsCount;
    private StaticLayout timeLayout;
    private int timeLeft;
    private int timeTop;
    private TimerDrawable timerDrawable;
    private Paint timerPaint;
    private Paint timerPaint2;
    private int topClip;
    int topMessageTopicEndIndex;
    int topMessageTopicStartIndex;
    private Paint topicCounterPaint;
    protected Drawable[] topicIconInName;
    private boolean topicMuted;
    protected int translateY;
    private boolean translationAnimationStarted;
    private RLottieDrawable translationDrawable;
    protected float translationX;
    private int ttlPeriod;
    private float ttlProgress;
    private boolean twoLinesForName;
    private StaticLayout typingLayout;
    private int typingLeft;
    private int unreadCount;
    private Runnable unsubscribePremiumBlocked;
    private final DialogUpdateHelper updateHelper;
    private boolean updateLayout;
    public boolean useForceThreeLines;
    public boolean useFromUserAsAvatar;
    private boolean useMeForMyMessages;
    public boolean useSeparator;
    private TLRPC$User user;
    private boolean visibleOnScreen;
    private boolean wasDrawnOnline;
    protected float xOffset;

    /* renamed from: org.telegram.ui.Cells.DialogCell$BounceInterpolator */
    /* loaded from: classes5.dex */
    public static class BounceInterpolator implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            if (f < 0.33f) {
                return (f / 0.33f) * 0.1f;
            }
            float f2 = f - 0.33f;
            return f2 < 0.33f ? 0.1f - ((f2 / 0.34f) * 0.15f) : (((f2 - 0.34f) / 0.33f) * 0.05f) - 0.05f;
        }
    }

    /* renamed from: org.telegram.ui.Cells.DialogCell$CustomDialog */
    /* loaded from: classes5.dex */
    public static class CustomDialog {
        public int date;

        /* renamed from: id */
        public int f1801id;
        public boolean isMedia;
        public String message;
        public boolean muted;
        public String name;
        public boolean pinned;
        public int sent = -1;
        public int type;
        public int unread_count;
        public boolean verified;
    }

    /* renamed from: org.telegram.ui.Cells.DialogCell$DialogCellDelegate */
    /* loaded from: classes5.dex */
    public interface DialogCellDelegate {
        boolean canClickButtonInside();

        void onButtonClicked(DialogCell dialogCell);

        void onButtonLongPress(DialogCell dialogCell);

        void openHiddenStories();

        void openStory(DialogCell dialogCell, Runnable runnable);

        void showChatPreview(DialogCell dialogCell);
    }

    /* renamed from: org.telegram.ui.Cells.DialogCell$SharedResources */
    /* loaded from: classes5.dex */
    public static class SharedResources {
    }

    public boolean checkCurrentDialogIndex(boolean z) {
        return false;
    }

    protected boolean drawLock2() {
        return false;
    }

    @Override // org.telegram.p043ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void setSharedResources(SharedResources sharedResources) {
    }

    public void buildLayout() {
        buildLayout(false);
    }

    public void setCompactMode(boolean z) {
        this.isCompactMode = z;
        this.avatarDrawable.setCompactMode(z);
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.setSize(z ? 17 : 21);
        }
    }

    public void setDialogsType(int i) {
        this.dialogsType = i;
    }

    private int calcCompactDrawingElementTop(int i) {
        return (this.bottomClip - i) / 2;
    }

    private boolean isContentHidden() {
        LockedSection lockedSection;
        if (this.currentDialogFolderId == 1) {
            lockedSection = LockedSection.ARCHIVE;
        } else {
            lockedSection = UserObject.isUserSelf(this.user) ? LockedSection.CLOUD : null;
        }
        if (lockedSection == null) {
            return false;
        }
        LockedSectionsController.SectionPasscodeData sectionsPasscodeData = LockedSectionsController.getInstance(this.currentAccount).getSectionsPasscodeData(lockedSection);
        return (sectionsPasscodeData == null || sectionsPasscodeData.getPasscodeHash().isEmpty()) ? false : true;
    }

    public void setMoving(boolean z) {
        this.moving = z;
    }

    public boolean isMoving() {
        return this.moving;
    }

    public void setForumTopic(TLRPC$TL_forumTopic tLRPC$TL_forumTopic, long j, MessageObject messageObject, boolean z, boolean z2) {
        PullForegroundDrawable pullForegroundDrawable;
        this.forumTopic = tLRPC$TL_forumTopic;
        this.isTopic = tLRPC$TL_forumTopic != null;
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        Drawable[] drawableArr = messageObject.topicIconDrawable;
        if (drawableArr[0] instanceof ForumBubbleDrawable) {
            ((ForumBubbleDrawable) drawableArr[0]).setColor(tLRPC$TL_forumTopic.icon_color);
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.isDialogCell = false;
        this.showTopicIconInName = z;
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        this.lastMessageDate = tLRPC$Message.date;
        int i = tLRPC$Message.edit_date;
        this.markUnread = false;
        this.messageId = messageObject.getId();
        this.lastUnreadState = messageObject.isUnread();
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        if (!z2) {
            this.lastStatusDrawableParams = -1;
        }
        if (tLRPC$TL_forumTopic != null) {
            this.groupMessages = tLRPC$TL_forumTopic.groupedMessages;
        }
        TLRPC$TL_forumTopic tLRPC$TL_forumTopic2 = this.forumTopic;
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1658id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
            pullForegroundDrawable.setCell(this);
        }
        update(0, z2);
    }

    public void setRightFragmentOpenedProgress(float f) {
        if (this.rightFragmentOpenedProgress != f) {
            this.rightFragmentOpenedProgress = f;
            invalidate();
        }
    }

    public void setIsTransitionSupport(boolean z) {
        this.isTransitionSupport = z;
    }

    public void checkHeight() {
        if (getMeasuredHeight() <= 0 || getMeasuredHeight() == computeHeight()) {
            return;
        }
        requestLayout();
    }

    public void setVisible(boolean z) {
        if (this.visibleOnScreen == z) {
            return;
        }
        this.visibleOnScreen = z;
        if (z) {
            invalidate();
        }
    }

    /* renamed from: org.telegram.ui.Cells.DialogCell$FixedWidthSpan */
    /* loaded from: classes5.dex */
    public static class FixedWidthSpan extends ReplacementSpan {
        private int width;

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        }

        public FixedWidthSpan(int i) {
            this.width = i;
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            if (fontMetricsInt == null) {
                fontMetricsInt = paint.getFontMetricsInt();
            }
            if (fontMetricsInt != null) {
                int i3 = 1 - (fontMetricsInt.descent - fontMetricsInt.ascent);
                fontMetricsInt.descent = i3;
                fontMetricsInt.bottom = i3;
                fontMetricsInt.ascent = -1;
                fontMetricsInt.top = -1;
            }
            return this.width;
        }
    }

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    public DialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2) {
        this(dialogsActivity, context, z, z2, UserConfig.selectedAccount, null);
    }

    public DialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.drawArchive = true;
        this.drawAvatar = true;
        this.messagePaddingStart = 72;
        this.heightDefault = 72;
        this.heightThreeLines = 78;
        this.chekBoxPaddingTop = 42.0f;
        int i2 = 0;
        StoriesUtilities.AvatarStoryParams avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false) { // from class: org.telegram.ui.Cells.DialogCell.1
            @Override // org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                DialogCell dialogCell = DialogCell.this;
                if (dialogCell.delegate == null) {
                    return;
                }
                if (dialogCell.currentDialogFolderId != 0) {
                    DialogCell.this.delegate.openHiddenStories();
                    return;
                }
                DialogCell dialogCell2 = DialogCell.this;
                DialogCellDelegate dialogCellDelegate = dialogCell2.delegate;
                if (dialogCellDelegate != null) {
                    dialogCellDelegate.openStory(dialogCell2, runnable);
                }
            }

            @Override // org.telegram.p043ui.Stories.StoriesUtilities.AvatarStoryParams
            public void onLongPress() {
                DialogCell dialogCell = DialogCell.this;
                DialogCellDelegate dialogCellDelegate = dialogCell.delegate;
                if (dialogCellDelegate == null) {
                    return;
                }
                dialogCellDelegate.showChatPreview(dialogCell);
            }
        };
        this.storyParams = avatarStoryParams;
        this.thumbSpoiler = new SpoilerEffect();
        this.visibleOnScreen = true;
        this.collapseOffset = BitmapDescriptorFactory.HUE_RED;
        this.hasUnmutedTopics = false;
        this.overrideSwipeAction = false;
        this.thumbImageSeen = new boolean[3];
        this.thumbImage = new ImageReceiver[3];
        this.drawPlay = new boolean[3];
        this.drawSpoiler = new boolean[3];
        this.avatarImage = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.interpolator = new BounceInterpolator();
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.spoilersPool = new Stack<>();
        this.spoilers = new ArrayList();
        this.spoilersPool2 = new Stack<>();
        this.spoilers2 = new ArrayList();
        this.drawCount2 = true;
        this.countChangeProgress = 1.0f;
        this.reactionsMentionsChangeProgress = 1.0f;
        this.rect = new RectF();
        this.lastStatusDrawableParams = -1;
        this.readOutboxMaxId = -1;
        this.updateHelper = new DialogUpdateHelper();
        avatarStoryParams.allowLongress = true;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = dialogsActivity;
        Theme.createDialogsResources(context);
        this.avatarImage.setCurrentAccount(i);
        this.avatarImage.setRoundRadius(AndroidUtilities.m107dp(28));
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                ImageReceiver[] imageReceiverArr2 = this.thumbImage;
                imageReceiverArr2[i2].ignoreNotifications = true;
                imageReceiverArr2[i2].setRoundRadius(AndroidUtilities.m107dp(2));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m107dp(22));
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                return;
            }
        }
    }

    public void setDialog(TLRPC$Dialog tLRPC$Dialog, int i, int i2, boolean z) {
        if (this.currentDialogId != tLRPC$Dialog.f1608id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1608id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1657id;
            PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
            if (pullForegroundDrawable != null) {
                pullForegroundDrawable.setCell(this);
            }
        } else {
            this.currentDialogFolderId = 0;
        }
        this.dialogsType = i;
        showPremiumBlocked(i == 3);
        this.folderId = i2;
        this.isForward = z;
        this.messageId = 0;
        if (update(0, false)) {
            requestLayout();
        }
        checkOnline();
        checkGroupCall();
        checkChatTheme();
        checkTtl();
    }

    public void setDialog(CustomDialog customDialog) {
        this.customDialog = customDialog;
        this.messageId = 0;
        update(0);
        checkOnline();
        checkGroupCall();
        checkChatTheme();
        checkTtl();
    }

    private void checkOnline() {
        TLRPC$User user;
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1751id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1751id))) {
                return true;
            }
            TLRPC$UserStatus tLRPC$UserStatus2 = this.user.status;
            if (tLRPC$UserStatus2 != null && tLRPC$UserStatus2.expires > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
                return true;
            }
        }
        return false;
    }

    private void checkGroupCall() {
        TLRPC$Chat tLRPC$Chat = this.chat;
        boolean z = tLRPC$Chat != null && tLRPC$Chat.call_active && tLRPC$Chat.call_not_empty;
        this.hasCall = z;
        this.chatCallProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private void checkTtl() {
        CheckBox2 checkBox2;
        boolean z = this.ttlPeriod > 0 && !this.hasCall && !isOnline() && ((checkBox2 = this.checkBox) == null || !checkBox2.isChecked());
        this.showTtl = z;
        this.ttlProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private void checkChatTheme() {
        TLRPC$Message tLRPC$Message;
        MessageObject messageObject = this.message;
        if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null) {
            return;
        }
        TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
        if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetChatTheme) && this.lastUnreadState) {
            ChatThemeController.getInstance(this.currentAccount).setDialogTheme(this.currentDialogId, ((TLRPC$TL_messageActionSetChatTheme) tLRPC$MessageAction).emoticon, false);
        }
    }

    public void setDialog(long j, MessageObject messageObject, int i, boolean z, boolean z2) {
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.useMeForMyMessages = z;
        this.isDialogCell = false;
        this.lastMessageDate = i;
        if (messageObject != null) {
            int i2 = messageObject.messageOwner.edit_date;
        }
        this.unreadCount = 0;
        this.markUnread = false;
        this.messageId = messageObject != null ? messageObject.getId() : 0;
        this.mentionCount = 0;
        this.reactionMentionCount = 0;
        this.lastUnreadState = messageObject != null && messageObject.isUnread();
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        update(0, z2);
    }

    public long getDialogId() {
        return this.currentDialogId;
    }

    public int getMessageId() {
        return this.messageId;
    }

    public void setPreloader(DialogsAdapter.DialogsPreloader dialogsPreloader) {
        this.preloader = dialogsPreloader;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isSliding = false;
        this.drawRevealBackground = false;
        this.currentRevealProgress = BitmapDescriptorFactory.HUE_RED;
        this.attachedToWindow = false;
        this.reorderIconProgress = (getIsPinned() && this.drawReorder) ? 1.0f : 0.0f;
        this.avatarImage.onDetachedFromWindow();
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i].onDetachedFromWindow();
            i++;
        }
        RLottieDrawable rLottieDrawable = this.translationDrawable;
        if (rLottieDrawable != null) {
            rLottieDrawable.stop();
            this.translationDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.translationDrawable.setCallback(null);
            this.translationDrawable = null;
            this.translationAnimationStarted = false;
        }
        DialogsAdapter.DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.remove(this.currentDialogId);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack2);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack3);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStackName);
        this.storyParams.onDetachFromWindow();
        this.canvasButton = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i].onAttachedToWindow();
            i++;
        }
        resetPinnedArchiveState();
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
    }

    public void resetPinnedArchiveState() {
        boolean isHiddenChatsHidden = this.currentDialogFolderId == 2 ? HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden() : SharedConfig.archiveHidden;
        this.archiveHidden = isHiddenChatsHidden;
        float f = 1.0f;
        float f2 = isHiddenChatsHidden ? 0.0f : 1.0f;
        this.archiveBackgroundProgress = f2;
        this.avatarDrawable.setArchivedAvatarHiddenProgress(f2);
        this.clipProgress = BitmapDescriptorFactory.HUE_RED;
        this.isSliding = false;
        if (!getIsPinned() || !this.drawReorder) {
            f = 0.0f;
        }
        this.reorderIconProgress = f;
        this.attachedToWindow = true;
        this.cornerProgress = BitmapDescriptorFactory.HUE_RED;
        setTranslationX(BitmapDescriptorFactory.HUE_RED);
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable == null || !this.attachedToWindow) {
            return;
        }
        swapAnimatedEmojiDrawable.attach();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(24), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0));
            checkTwoLinesForName();
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), computeHeight());
        this.topClip = 0;
        this.bottomClip = getMeasuredHeight();
    }

    private int computeHeight() {
        if (!isForumCell() || this.isTransitionSupport || this.collapsed) {
            return getCollapsedHeight();
        }
        return AndroidUtilities.m107dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86 : (this.useSeparator ? 1 : 0) + 91);
    }

    private int getCollapsedHeight() {
        return AndroidUtilities.m107dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0) + (this.twoLinesForName ? AndroidUtilities.m107dp(20) : 0);
    }

    private void checkTwoLinesForName() {
        this.twoLinesForName = false;
        if (this.isTopic) {
            buildLayout();
            if (this.nameIsEllipsized) {
                this.twoLinesForName = true;
                buildLayout();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int m108dp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int m107dp = AndroidUtilities.m107dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                m107dp = AndroidUtilities.m107dp(8);
                m108dp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    m107dp = (i3 - i) - m107dp;
                }
                m108dp = AndroidUtilities.m108dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            if (this.isCompactMode) {
                if (this.isTopic) {
                    m108dp = calcCompactDrawingElementTop(this.checkBox.getMeasuredHeight());
                } else {
                    m107dp = AndroidUtilities.m107dp(37);
                    m108dp = AndroidUtilities.m107dp(23);
                }
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m107dp, m108dp, checkBox2.getMeasuredWidth() + m107dp, this.checkBox.getMeasuredHeight() + m108dp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize || this.updateLayout) {
            this.updateLayout = false;
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    public boolean getHasUnread() {
        return this.unreadCount != 0 || this.markUnread;
    }

    public boolean getIsMuted() {
        return this.dialogMuted;
    }

    public boolean getIsPinned() {
        return this.drawPin || this.drawPinForced;
    }

    public void setPinForced(boolean z) {
        this.drawPinForced = z;
        if (getMeasuredWidth() > 0 && getMeasuredHeight() > 0) {
            buildLayout();
        }
        invalidate();
    }

    private CharSequence formatArchivedDialogNames() {
        TLRPC$User tLRPC$User;
        String replace;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ArrayList<TLRPC$Dialog> dialogs = messagesController.getDialogs(this.currentDialogFolderId);
        if (this.folderId == 1) {
            dialogs.clear();
        } else {
            ArrayList<TLRPC$Dialog> arrayList = new ArrayList<>(dialogs);
            arrayList.addAll(MessagesController.getInstance(this.currentAccount).dialogsAlbumsOnly);
            dialogs = arrayList;
        }
        this.currentDialogFolderDialogsCount = dialogs.size();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int size = dialogs.size();
        for (int i = 0; i < size; i++) {
            TLRPC$Dialog tLRPC$Dialog = dialogs.get(i);
            if (!messagesController.isHiddenByUndo(tLRPC$Dialog.f1608id)) {
                TLRPC$Chat tLRPC$Chat = null;
                if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1608id)) {
                    TLRPC$EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1608id)));
                    tLRPC$User = encryptedChat != null ? messagesController.getUser(Long.valueOf(encryptedChat.user_id)) : null;
                } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1608id)) {
                    tLRPC$User = messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1608id));
                } else {
                    tLRPC$Chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1608id));
                    tLRPC$User = null;
                }
                if (tLRPC$Chat != null) {
                    replace = tLRPC$Chat.title.replace('\n', ' ');
                } else if (tLRPC$User == null) {
                    continue;
                } else if (UserObject.isDeleted(tLRPC$User)) {
                    replace = LocaleController.getString("HiddenName", C3632R.string.HiddenName);
                } else {
                    replace = ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name).replace('\n', ' ');
                }
                if (spannableStringBuilder.length() > 0) {
                    spannableStringBuilder.append((CharSequence) ", ");
                }
                int length = spannableStringBuilder.length();
                int length2 = replace.length() + length;
                spannableStringBuilder.append((CharSequence) replace);
                if (tLRPC$Dialog.unread_count > 0) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM), 0, Theme.getColor(Theme.key_chats_nameArchived, this.resourcesProvider)), length, length2, 33);
                }
                if (spannableStringBuilder.length() > 150) {
                    break;
                }
            }
        }
        if (this.folderId != 1 && MessagesController.getInstance(this.currentAccount).getStoriesController().getTotalStoriesCount(true) > 0) {
            int max = Math.max(1, MessagesController.getInstance(this.currentAccount).getStoriesController().getTotalStoriesCount(true));
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Stories", max, new Object[0]));
        }
        return Emoji.replaceEmoji((CharSequence) spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), AndroidUtilities.m107dp(17), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(107:15|(1:1615)(1:19)|20|(1:1614)(1:26)|27|(1:1613)(1:31)|32|(1:34)|35|(2:37|(1:1602)(1:41))(2:1603|(1:1612)(1:1607))|42|(1:44)|45|(1:47)(1:1597)|48|(7:50|(1:52)|53|54|(1:56)|57|58)|59|(9:61|(2:63|(1:65)(2:767|(2:775|(1:777)(1:778))(2:771|(1:773)(1:774))))(4:779|(1:799)(1:783)|784|(1:786)(2:787|(2:795|(1:797)(1:798))(2:791|(1:793)(1:794))))|66|(3:68|(1:70)(4:754|(1:756)|757|(1:762)(1:761))|71)(3:763|(1:765)|766)|72|(1:74)(1:753)|75|(1:77)(1:(1:749)(1:(1:751)(1:752)))|78)(28:800|(1:802)(2:1585|(2:1593|(1:1595)(1:1596))(2:1589|(1:1591)(1:1592)))|803|(2:805|(2:807|(1:809)(2:810|(2:818|(1:820)(1:821))(2:814|(1:816)(1:817)))))(2:1528|(2:1530|(2:1532|(1:1534)(2:1535|(1:1537)(2:1538|(1:1540)(3:1541|(1:1547)(1:1545)|1546))))(2:1548|(7:1550|(1:1552)(2:1575|(1:1577)(3:1578|(1:1584)(1:1582)|1583))|1553|(2:1555|(3:1563|1564|(2:1566|(2:1570|(1:1572)(1:1573))(1:1569))))|1574|1564|(0)))))|822|(1:826)|827|(2:829|(1:833))(2:1524|(1:1526)(1:1527))|834|(4:1501|(2:1503|(2:1505|(2:1507|(1:1509))))|1511|(17:1523|844|(7:846|(1:848)(1:1057)|849|(1:851)(1:1056)|852|(1:857)|858)(12:(6:1059|(1:1061)(1:1495)|1062|(1:1064)(1:1494)|(1:1066)(1:1493)|1067)(1:1496)|1068|(4:1070|(2:1072|(2:1079|1080)(1:1076))(7:1081|(1:1083)|1084|(3:1088|(1:1090)(1:1092)|1091)|1093|(1:1099)(1:1097)|1098)|1077|1078)(5:1100|(1:1102)(3:1104|(2:1106|(1:1108)(4:1109|(2:1111|(1:1113)(2:1114|(1:1116)(2:1117|(1:1119)(2:1120|(2:1122|(1:1124)(1:1125))))))(2:1127|(3:1131|(1:1137)(1:1135)|1136))|1126|1080))(10:1138|(1:1140)(1:1492)|1141|(2:1155|(2:1157|(7:1161|(1:1163)(3:1486|(1:1488)(1:1490)|1489)|(7:1178|(3:1180|(4:1182|(2:1184|(2:1186|(1:1188)(2:1192|(1:1194)(1:1195))))|1196|(1:1198)(2:1199|(1:1201)(2:1202|(1:1204)(1:1205))))(1:1206)|1189)(2:1207|(6:1218|(4:1229|(2:1246|(8:1310|(2:1312|(5:1314|(1:1326)|1320|(1:1324)|1325)(2:1327|(4:1334|(2:1336|(2:1341|(1:1343)(2:1344|(1:1346)(1:1347))))|1348|(4:1350|(1:1352)(2:1374|(1:1376)(2:1377|(1:1379)(2:1380|(1:1382)(2:1383|(1:1385)(1:1386)))))|1353|(3:1366|(3:1368|(1:1370)(1:1372)|1371)|1373)(4:1357|(2:1359|(1:1361)(1:1362))|(1:1364)|1365))(2:1387|(3:1389|(3:1391|(1:1393)(1:1396)|1394)(3:1397|(1:1399)(1:1401)|1400)|1395)(4:1402|(1:1404)(2:1410|(1:1412)(2:1413|(1:1415)(2:1416|(1:1418)(2:1419|(1:1421)(2:1422|(1:1424)(2:1425|(3:1439|(4:1445|(1:1447)|1448|(2:1450|(3:1452|(1:1454)(1:1456)|1455)))(1:1443)|1444)(2:1429|(3:1431|(2:1433|(1:1435))(1:1437)|1436)(1:1438))))))))|1405|(2:1407|(1:1409)))))(1:1333)))|1457|(1:1459)|1460|(7:1462|(3:1477|(1:1479)|1480)(1:1466)|1467|(1:1469)(1:1476)|1470|(1:1474)|1475)|1481|(2:1483|(1:1485)))(14:1257|(2:1263|(13:1265|(1:1308)(1:1269)|1270|1271|(1:1307)(5:1277|1278|1279|1280|1281)|1282|(1:1286)|1287|(4:1289|(1:1291)|1292|(1:1294)(1:1295))|1296|1166|(5:1168|(1:1170)(1:1176)|1171|(1:1173)|1174)(1:1177)|1175))|1309|1271|(2:1273|1303)|1307|1282|(2:1284|1286)|1287|(0)|1296|1166|(0)(0)|1175))(4:1235|(1:1239)|1240|(1:1242)(2:1245|1244))|1243|1244)(3:1224|(1:1226)(1:1228)|1227)|1191|1166|(0)(0)|1175)(3:1211|(1:1217)(1:1215)|1216))|1190|1191|1166|(0)(0)|1175)|1165|1166|(0)(0)|1175)))|1491|(0)|1165|1166|(0)(0)|1175)|1078)|1103|1077|1078)|860|(1:862)(2:1049|(1:1051)(2:1052|(1:1054)(1:1055)))|863|(3:1040|(1:1048)(1:1046)|1047)(5:867|(5:869|(1:871)(2:1000|(1:(3:1003|873|874)(2:1004|874))(1:1005))|872|873|874)(8:1006|(1:1008)(9:1019|(4:1021|(2:1023|(1:1028))(1:1035)|1029|(6:1034|1010|(1:1012)(1:1018)|1013|(1:1015)(1:1017)|1016)(1:1033))|1036|(1:1038)(1:1039)|1010|(0)(0)|1013|(0)(0)|1016)|1009|1010|(0)(0)|1013|(0)(0)|1016)|875|(2:880|(2:886|(1:888)(2:960|(1:962)(2:963|(4:965|(3:967|(1:969)(1:973)|970)(2:974|(3:976|(1:988)(1:980)|981)(3:989|(1:997)(1:995)|996))|971|972)(1:998)))))|999)|889|(2:893|(1:895)(2:896|(4:898|(1:900)|901|(1:903))))|904|(3:906|(1:908)(1:911)|909)(3:912|(3:914|(3:916|(1:918)|919)(2:927|(4:929|(1:931)|932|(1:934)(1:935))(1:936))|921)(3:937|(3:939|(1:941)(2:942|(1:944)(2:945|(2:947|(1:949)(2:950|(1:952)(4:953|(1:955)|956|(1:958))))(1:959)))|921)|926)|(1:925))|910)|859|860|(0)(0)|863|(1:865)|1040|(1:1042)|1048|1047|889|(3:891|893|(0)(0))|904|(0)(0)|910))|842|843|844|(0)(0)|859|860|(0)(0)|863|(0)|1040|(0)|1048|1047|889|(0)|904|(0)(0)|910)|79|(2:81|(1:83)(1:746))(1:747)|84|(3:86|(1:88)(1:744)|89)(1:745)|90|(1:92)(1:743)|93|(2:97|(1:99)(1:(2:(1:106)|(1:108))(2:102|(1:104))))|109|(3:111|(1:113)(1:115)|114)|116|(2:118|(1:120)(1:730))(2:731|(2:733|(2:735|(1:737)(1:738))(2:739|(1:741)(1:742))))|121|(2:700|(2:727|(1:729))(2:704|(2:706|(1:708))(2:709|(2:711|(1:713))(2:714|(4:716|(1:718)(1:722)|719|(1:721))))))(2:125|(1:127))|128|129|(1:131)|132|(1:134)|135|(3:137|(1:139)(1:141)|140)|142|(1:144)(1:697)|145|(1:147)|148|(1:696)(1:154)|155|(1:157)(1:695)|158|(1:694)(1:162)|163|164|(3:166|(1:168)|169)(2:650|(54:677|(1:679)(1:692)|680|(2:681|(3:683|(2:685|686)(2:688|689)|687)(1:690))|691|171|(1:173)|174|(2:176|(2:178|(2:182|(1:184)(2:185|(2:187|(1:189)))))(1:190))|191|(2:193|(2:195|(2:199|(1:201)(2:202|(2:204|(1:206)))))(1:560))(1:(4:(3:572|(2:574|(2:578|(1:580)(2:581|(2:583|(1:585)))))(1:648)|586)(1:649)|(5:588|(1:590)(1:646)|591|(4:593|(1:595)(1:640)|596|(1:600))(3:641|(1:643)(1:645)|644)|601)(1:647)|602|(2:604|(6:606|(3:608|(1:610)(1:612)|611)|613|(3:615|(1:617)(1:619)|618)|620|(1:624))(5:625|(3:627|(1:629)(1:631)|630)|632|(3:634|(1:636)(1:638)|637)|639)))(3:565|(2:567|(1:569))|570))|(7:(1:209)|210|(1:212)|213|(1:224)(1:217)|218|(1:222))|225|(1:559)(1:229)|230|(4:232|(1:510)(1:236)|237|(2:238|(1:240)(1:241)))(2:511|(8:536|537|(1:543)|544|545|(1:555)(1:549)|550|(2:551|(1:553)(1:554)))(2:515|(4:520|(1:530)(1:524)|525|(2:526|(1:528)(1:529)))(1:519)))|242|(1:244)|245|246|247|(1:249)(1:508)|250|251|252|253|(3:255|(1:260)|261)|262|264|265|(3:267|(3:269|(2:288|289)|286)|290)|291|(1:502)(1:(2:298|(1:496)(1:304)))|305|(1:495)(1:309)|310|(15:315|(2:317|(1:321))|322|323|324|325|326|327|328|329|(10:331|(6:335|(1:337)|338|(1:365)(2:342|(1:344)(2:350|(1:352)(2:353|(3:355|(1:357)(1:359)|358)(1:360))))|345|(2:347|(1:349)))|366|(4:370|(1:(1:380)(2:372|(1:374)(2:375|376)))|377|(1:379))|381|(4:385|(1:(1:395)(2:387|(1:389)(2:390|391)))|392|(1:394))|396|(2:402|(1:404))|405|(4:409|(1:411)|412|413))(10:431|(5:435|(1:437)|438|(4:440|(1:442)|443|(1:445))|446)|447|(4:451|(1:453)|454|455)|456|(4:460|(1:462)|463|464)|465|(4:469|(1:471)|472|473)|474|(1:478))|414|(3:(1:428)(1:423)|424|(1:426)(1:427))|429|430)|486|(1:489)|490|(1:492)(1:494)|493|323|324|325|326|327|328|329|(0)(0)|414|(6:416|418|(1:421)|428|424|(0)(0))|429|430)(8:654|(1:656)(1:676)|657|(1:659)(1:675)|660|(1:662)(1:674)|663|(2:664|(3:666|(2:668|669)(2:671|672)|670)(1:673))))|170|171|(0)|174|(0)|191|(0)(0)|(0)|225|(1:227)|559|230|(0)(0)|242|(0)|245|246|247|(0)(0)|250|251|252|253|(0)|262|264|265|(0)|291|(1:293)|498|500|502|305|(1:307)|495|310|(16:312|315|(0)|322|323|324|325|326|327|328|329|(0)(0)|414|(0)|429|430)|486|(1:489)|490|(0)(0)|493|323|324|325|326|327|328|329|(0)(0)|414|(0)|429|430) */
    /* JADX WARN: Code restructure failed: missing block: B:1376:0x1f03, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1377:0x1f04, code lost:
        org.telegram.messenger.FileLog.m102e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1455:0x205a, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1457:0x205c, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1458:0x205d, code lost:
        r9 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1459:0x205f, code lost:
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1460:0x2061, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1461:0x2062, code lost:
        r9 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1462:0x2064, code lost:
        r50.messageLayout = null;
        org.telegram.messenger.FileLog.m102e(r0);
        r8 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0623, code lost:
        if (r1.post_messages == false) goto L842;
     */
    /* JADX WARN: Code restructure failed: missing block: B:920:0x12d6, code lost:
        if (r4 == null) goto L926;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1006:0x14d0  */
    /* JADX WARN: Removed duplicated region for block: B:1010:0x1500  */
    /* JADX WARN: Removed duplicated region for block: B:1039:0x15c4  */
    /* JADX WARN: Removed duplicated region for block: B:1061:0x162f  */
    /* JADX WARN: Removed duplicated region for block: B:1064:0x1634 A[Catch: Exception -> 0x171e, TryCatch #0 {Exception -> 0x171e, blocks: (B:1059:0x1626, B:1062:0x1630, B:1064:0x1634, B:1065:0x163e, B:1067:0x1642, B:1071:0x165c, B:1072:0x1665, B:1076:0x167b, B:1078:0x1681, B:1079:0x168d, B:1081:0x16a4, B:1083:0x16aa, B:1087:0x16bb, B:1089:0x16bf, B:1091:0x16fb, B:1093:0x16ff, B:1095:0x1708, B:1097:0x1712, B:1090:0x16de), top: B:1606:0x1626 }] */
    /* JADX WARN: Removed duplicated region for block: B:1067:0x1642 A[Catch: Exception -> 0x171e, TryCatch #0 {Exception -> 0x171e, blocks: (B:1059:0x1626, B:1062:0x1630, B:1064:0x1634, B:1065:0x163e, B:1067:0x1642, B:1071:0x165c, B:1072:0x1665, B:1076:0x167b, B:1078:0x1681, B:1079:0x168d, B:1081:0x16a4, B:1083:0x16aa, B:1087:0x16bb, B:1089:0x16bf, B:1091:0x16fb, B:1093:0x16ff, B:1095:0x1708, B:1097:0x1712, B:1090:0x16de), top: B:1606:0x1626 }] */
    /* JADX WARN: Removed duplicated region for block: B:1074:0x1678  */
    /* JADX WARN: Removed duplicated region for block: B:1075:0x167a  */
    /* JADX WARN: Removed duplicated region for block: B:1078:0x1681 A[Catch: Exception -> 0x171e, TryCatch #0 {Exception -> 0x171e, blocks: (B:1059:0x1626, B:1062:0x1630, B:1064:0x1634, B:1065:0x163e, B:1067:0x1642, B:1071:0x165c, B:1072:0x1665, B:1076:0x167b, B:1078:0x1681, B:1079:0x168d, B:1081:0x16a4, B:1083:0x16aa, B:1087:0x16bb, B:1089:0x16bf, B:1091:0x16fb, B:1093:0x16ff, B:1095:0x1708, B:1097:0x1712, B:1090:0x16de), top: B:1606:0x1626 }] */
    /* JADX WARN: Removed duplicated region for block: B:1089:0x16bf A[Catch: Exception -> 0x171e, TryCatch #0 {Exception -> 0x171e, blocks: (B:1059:0x1626, B:1062:0x1630, B:1064:0x1634, B:1065:0x163e, B:1067:0x1642, B:1071:0x165c, B:1072:0x1665, B:1076:0x167b, B:1078:0x1681, B:1079:0x168d, B:1081:0x16a4, B:1083:0x16aa, B:1087:0x16bb, B:1089:0x16bf, B:1091:0x16fb, B:1093:0x16ff, B:1095:0x1708, B:1097:0x1712, B:1090:0x16de), top: B:1606:0x1626 }] */
    /* JADX WARN: Removed duplicated region for block: B:1090:0x16de A[Catch: Exception -> 0x171e, TryCatch #0 {Exception -> 0x171e, blocks: (B:1059:0x1626, B:1062:0x1630, B:1064:0x1634, B:1065:0x163e, B:1067:0x1642, B:1071:0x165c, B:1072:0x1665, B:1076:0x167b, B:1078:0x1681, B:1079:0x168d, B:1081:0x16a4, B:1083:0x16aa, B:1087:0x16bb, B:1089:0x16bf, B:1091:0x16fb, B:1093:0x16ff, B:1095:0x1708, B:1097:0x1712, B:1090:0x16de), top: B:1606:0x1626 }] */
    /* JADX WARN: Removed duplicated region for block: B:1103:0x1736  */
    /* JADX WARN: Removed duplicated region for block: B:1108:0x179b  */
    /* JADX WARN: Removed duplicated region for block: B:1148:0x1971  */
    /* JADX WARN: Removed duplicated region for block: B:1151:0x1980  */
    /* JADX WARN: Removed duplicated region for block: B:1168:0x19f5  */
    /* JADX WARN: Removed duplicated region for block: B:1183:0x1a7f  */
    /* JADX WARN: Removed duplicated region for block: B:1274:0x1cd0  */
    /* JADX WARN: Removed duplicated region for block: B:1293:0x1d26  */
    /* JADX WARN: Removed duplicated region for block: B:1300:0x1d3c  */
    /* JADX WARN: Removed duplicated region for block: B:1311:0x1d67  */
    /* JADX WARN: Removed duplicated region for block: B:1359:0x1e23  */
    /* JADX WARN: Removed duplicated region for block: B:1363:0x1e44 A[Catch: Exception -> 0x1e97, TryCatch #6 {Exception -> 0x1e97, blocks: (B:1361:0x1e3c, B:1363:0x1e44, B:1364:0x1e94), top: B:1619:0x1e3c }] */
    /* JADX WARN: Removed duplicated region for block: B:1364:0x1e94 A[Catch: Exception -> 0x1e97, TRY_LEAVE, TryCatch #6 {Exception -> 0x1e97, blocks: (B:1361:0x1e3c, B:1363:0x1e44, B:1364:0x1e94), top: B:1619:0x1e3c }] */
    /* JADX WARN: Removed duplicated region for block: B:1368:0x1ead A[Catch: Exception -> 0x1f03, TryCatch #7 {Exception -> 0x1f03, blocks: (B:1366:0x1ea7, B:1368:0x1ead, B:1370:0x1eb1, B:1373:0x1eb6, B:1374:0x1ede), top: B:1622:0x1ea7 }] */
    /* JADX WARN: Removed duplicated region for block: B:1380:0x1f0b A[Catch: Exception -> 0x2061, TryCatch #8 {Exception -> 0x2061, blocks: (B:1378:0x1f07, B:1380:0x1f0b, B:1382:0x1f1d, B:1384:0x1f23, B:1386:0x1f27, B:1388:0x1f2b, B:1390:0x1f2f, B:1392:0x1f33, B:1394:0x1f37, B:1396:0x1f3b, B:1399:0x1f48, B:1398:0x1f45, B:1400:0x1f4b, B:1402:0x1f4f, B:1410:0x1f69, B:1413:0x1f6f, B:1415:0x1f75, B:1417:0x1f79, B:1419:0x1f8c, B:1421:0x1fba, B:1423:0x1fbe, B:1425:0x1fc2, B:1427:0x1fc7, B:1429:0x1fcb, B:1432:0x1fd0, B:1434:0x1fd4, B:1436:0x1fe5, B:1438:0x1feb, B:1439:0x1ffe, B:1441:0x2011, B:1444:0x2018, B:1445:0x201e, B:1449:0x2032, B:1426:0x1fc5, B:1420:0x1fa9, B:1404:0x1f53, B:1406:0x1f57, B:1408:0x1f5c), top: B:1624:0x1f07 }] */
    /* JADX WARN: Removed duplicated region for block: B:1402:0x1f4f A[Catch: Exception -> 0x2061, TryCatch #8 {Exception -> 0x2061, blocks: (B:1378:0x1f07, B:1380:0x1f0b, B:1382:0x1f1d, B:1384:0x1f23, B:1386:0x1f27, B:1388:0x1f2b, B:1390:0x1f2f, B:1392:0x1f33, B:1394:0x1f37, B:1396:0x1f3b, B:1399:0x1f48, B:1398:0x1f45, B:1400:0x1f4b, B:1402:0x1f4f, B:1410:0x1f69, B:1413:0x1f6f, B:1415:0x1f75, B:1417:0x1f79, B:1419:0x1f8c, B:1421:0x1fba, B:1423:0x1fbe, B:1425:0x1fc2, B:1427:0x1fc7, B:1429:0x1fcb, B:1432:0x1fd0, B:1434:0x1fd4, B:1436:0x1fe5, B:1438:0x1feb, B:1439:0x1ffe, B:1441:0x2011, B:1444:0x2018, B:1445:0x201e, B:1449:0x2032, B:1426:0x1fc5, B:1420:0x1fa9, B:1404:0x1f53, B:1406:0x1f57, B:1408:0x1f5c), top: B:1624:0x1f07 }] */
    /* JADX WARN: Removed duplicated region for block: B:1423:0x1fbe A[Catch: Exception -> 0x2061, TryCatch #8 {Exception -> 0x2061, blocks: (B:1378:0x1f07, B:1380:0x1f0b, B:1382:0x1f1d, B:1384:0x1f23, B:1386:0x1f27, B:1388:0x1f2b, B:1390:0x1f2f, B:1392:0x1f33, B:1394:0x1f37, B:1396:0x1f3b, B:1399:0x1f48, B:1398:0x1f45, B:1400:0x1f4b, B:1402:0x1f4f, B:1410:0x1f69, B:1413:0x1f6f, B:1415:0x1f75, B:1417:0x1f79, B:1419:0x1f8c, B:1421:0x1fba, B:1423:0x1fbe, B:1425:0x1fc2, B:1427:0x1fc7, B:1429:0x1fcb, B:1432:0x1fd0, B:1434:0x1fd4, B:1436:0x1fe5, B:1438:0x1feb, B:1439:0x1ffe, B:1441:0x2011, B:1444:0x2018, B:1445:0x201e, B:1449:0x2032, B:1426:0x1fc5, B:1420:0x1fa9, B:1404:0x1f53, B:1406:0x1f57, B:1408:0x1f5c), top: B:1624:0x1f07 }] */
    /* JADX WARN: Removed duplicated region for block: B:1429:0x1fcb A[Catch: Exception -> 0x2061, TryCatch #8 {Exception -> 0x2061, blocks: (B:1378:0x1f07, B:1380:0x1f0b, B:1382:0x1f1d, B:1384:0x1f23, B:1386:0x1f27, B:1388:0x1f2b, B:1390:0x1f2f, B:1392:0x1f33, B:1394:0x1f37, B:1396:0x1f3b, B:1399:0x1f48, B:1398:0x1f45, B:1400:0x1f4b, B:1402:0x1f4f, B:1410:0x1f69, B:1413:0x1f6f, B:1415:0x1f75, B:1417:0x1f79, B:1419:0x1f8c, B:1421:0x1fba, B:1423:0x1fbe, B:1425:0x1fc2, B:1427:0x1fc7, B:1429:0x1fcb, B:1432:0x1fd0, B:1434:0x1fd4, B:1436:0x1fe5, B:1438:0x1feb, B:1439:0x1ffe, B:1441:0x2011, B:1444:0x2018, B:1445:0x201e, B:1449:0x2032, B:1426:0x1fc5, B:1420:0x1fa9, B:1404:0x1f53, B:1406:0x1f57, B:1408:0x1f5c), top: B:1624:0x1f07 }] */
    /* JADX WARN: Removed duplicated region for block: B:1434:0x1fd4 A[Catch: Exception -> 0x2061, TryCatch #8 {Exception -> 0x2061, blocks: (B:1378:0x1f07, B:1380:0x1f0b, B:1382:0x1f1d, B:1384:0x1f23, B:1386:0x1f27, B:1388:0x1f2b, B:1390:0x1f2f, B:1392:0x1f33, B:1394:0x1f37, B:1396:0x1f3b, B:1399:0x1f48, B:1398:0x1f45, B:1400:0x1f4b, B:1402:0x1f4f, B:1410:0x1f69, B:1413:0x1f6f, B:1415:0x1f75, B:1417:0x1f79, B:1419:0x1f8c, B:1421:0x1fba, B:1423:0x1fbe, B:1425:0x1fc2, B:1427:0x1fc7, B:1429:0x1fcb, B:1432:0x1fd0, B:1434:0x1fd4, B:1436:0x1fe5, B:1438:0x1feb, B:1439:0x1ffe, B:1441:0x2011, B:1444:0x2018, B:1445:0x201e, B:1449:0x2032, B:1426:0x1fc5, B:1420:0x1fa9, B:1404:0x1f53, B:1406:0x1f57, B:1408:0x1f5c), top: B:1624:0x1f07 }] */
    /* JADX WARN: Removed duplicated region for block: B:1443:0x2016 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1447:0x202d  */
    /* JADX WARN: Removed duplicated region for block: B:1448:0x2030  */
    /* JADX WARN: Removed duplicated region for block: B:1465:0x207f  */
    /* JADX WARN: Removed duplicated region for block: B:1543:0x223b  */
    /* JADX WARN: Removed duplicated region for block: B:1590:0x2317  */
    /* JADX WARN: Removed duplicated region for block: B:1601:0x2354  */
    /* JADX WARN: Removed duplicated region for block: B:1602:0x235c  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x064a  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x06ae  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x09a2  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0b9b  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0bac  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x1036  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x1056  */
    /* JADX WARN: Removed duplicated region for block: B:764:0x105f  */
    /* JADX WARN: Removed duplicated region for block: B:765:0x1067  */
    /* JADX WARN: Removed duplicated region for block: B:774:0x1085  */
    /* JADX WARN: Removed duplicated region for block: B:818:0x112d  */
    /* JADX WARN: Removed duplicated region for block: B:819:0x1132  */
    /* JADX WARN: Removed duplicated region for block: B:822:0x1139  */
    /* JADX WARN: Removed duplicated region for block: B:823:0x113c  */
    /* JADX WARN: Removed duplicated region for block: B:883:0x120b  */
    /* JADX WARN: Removed duplicated region for block: B:892:0x123d  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x1250  */
    /* JADX WARN: Removed duplicated region for block: B:897:0x125a  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x1294  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x12a9  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x138a  */
    /* JADX WARN: Removed duplicated region for block: B:967:0x13d9  */
    /* JADX WARN: Removed duplicated region for block: B:970:0x13ec  */
    /* JADX WARN: Removed duplicated region for block: B:975:0x141e  */
    /* JADX WARN: Removed duplicated region for block: B:978:0x1423  */
    /* JADX WARN: Removed duplicated region for block: B:979:0x1434  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x1460  */
    /* JADX WARN: Removed duplicated region for block: B:987:0x146c  */
    /* JADX WARN: Removed duplicated region for block: B:999:0x14b4  */
    /* JADX WARN: Type inference failed for: r10v59 */
    /* JADX WARN: Type inference failed for: r10v60, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v61 */
    /* JADX WARN: Type inference failed for: r3v37, types: [android.text.SpannableStringBuilder, java.lang.CharSequence, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r50v0, types: [android.view.View, org.telegram.ui.Cells.DialogCell, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r5v82, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v31, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r9v49, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout(boolean r51) {
        /*
            Method dump skipped, instructions count: 9070
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.buildLayout(boolean):void");
    }

    private SpannableStringBuilder formatInternal(int i, CharSequence charSequence, CharSequence charSequence2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (i == 1) {
            spannableStringBuilder.append(charSequence2).append((CharSequence) ": \u2068").append(charSequence).append((CharSequence) "\u2069");
        } else if (i == 2) {
            spannableStringBuilder.append((CharSequence) "\u2068").append(charSequence).append((CharSequence) "\u2069");
        } else if (i == 3) {
            spannableStringBuilder.append(charSequence2).append((CharSequence) ": ").append(charSequence);
        } else if (i == 4) {
            spannableStringBuilder.append(charSequence);
        }
        return spannableStringBuilder;
    }

    private void updateThumbsPosition() {
        if (this.thumbsCount > 0) {
            StaticLayout staticLayout = isForumCell() ? this.buttonLayout : this.messageLayout;
            int i = isForumCell() ? this.buttonLeft : this.messageLeft;
            if (staticLayout == null) {
                return;
            }
            try {
                CharSequence text = staticLayout.getText();
                if (text instanceof Spanned) {
                    FixedWidthSpan[] fixedWidthSpanArr = (FixedWidthSpan[]) ((Spanned) text).getSpans(0, text.length(), FixedWidthSpan.class);
                    if (fixedWidthSpanArr == null || fixedWidthSpanArr.length <= 0) {
                        for (int i2 = 0; i2 < 3; i2++) {
                            this.thumbImageSeen[i2] = false;
                        }
                        return;
                    }
                    int spanStart = ((Spanned) text).getSpanStart(fixedWidthSpanArr[0]);
                    if (spanStart < 0) {
                        spanStart = 0;
                    }
                    int ceil = (int) Math.ceil(Math.min(staticLayout.getPrimaryHorizontal(spanStart), staticLayout.getPrimaryHorizontal(spanStart + 1)));
                    if (ceil != 0 && !this.drawForwardIcon) {
                        ceil += AndroidUtilities.m107dp(3);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + ceil + AndroidUtilities.m107dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.insert(0, (CharSequence) " ");
            valueOf.setSpan(new FixedWidthSpan(AndroidUtilities.m107dp((((this.thumbSize + 2) * this.thumbsCount) - 2) + 5)), 0, 1, 33);
            return valueOf;
        }
        return charSequence;
    }

    private CharSequence formatTopicsNames() {
        ForumFormattedNames forumFormattedNames = new ForumFormattedNames();
        forumFormattedNames.formatTopicsNames(this.currentAccount, this.message, this.chat);
        this.topMessageTopicStartIndex = forumFormattedNames.topMessageTopicStartIndex;
        this.topMessageTopicEndIndex = forumFormattedNames.topMessageTopicEndIndex;
        this.lastTopicMessageUnread = forumFormattedNames.lastTopicMessageUnread;
        return forumFormattedNames.formattedNames;
    }

    public boolean isForumCell() {
        TLRPC$Chat tLRPC$Chat;
        return (isDialogFolder() || (tLRPC$Chat = this.chat) == null || !tLRPC$Chat.forum || this.isTopic) ? false : true;
    }

    private void drawCheckStatus(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f) {
        int i = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i != 0 || z4) {
            float f2 = (f * 0.5f) + 0.5f;
            if (z) {
                BaseCell.setDrawableBounds(Theme.dialogs_clockDrawable, this.clockDrawLeft, this.checkDrawTop);
                int i2 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                if (i2 != 0) {
                    canvas.save();
                    canvas.scale(f2, f2, Theme.dialogs_clockDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                    Theme.dialogs_clockDrawable.setAlpha((int) (f * 255.0f));
                }
                Theme.dialogs_clockDrawable.draw(canvas);
                if (i2 != 0) {
                    canvas.restore();
                    Theme.dialogs_clockDrawable.setAlpha(255);
                }
                invalidate();
            } else if (z3) {
                if (z2) {
                    BaseCell.setDrawableBounds(Theme.dialogs_halfCheckDrawable, this.halfCheckDrawLeft, this.checkDrawTop);
                    if (z4) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_halfCheckDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        Theme.dialogs_halfCheckDrawable.setAlpha((int) (f * 255.0f));
                    }
                    if (!z4 && i != 0) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_halfCheckDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        int i3 = (int) (255.0f * f);
                        Theme.dialogs_halfCheckDrawable.setAlpha(i3);
                        Theme.dialogs_checkReadDrawable.setAlpha(i3);
                    }
                    Theme.dialogs_halfCheckDrawable.draw(canvas);
                    if (z4) {
                        canvas.restore();
                        canvas.save();
                        canvas.translate(AndroidUtilities.m107dp(4) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
                    }
                    BaseCell.setDrawableBounds(Theme.dialogs_checkReadDrawable, this.checkDrawLeft, this.checkDrawTop);
                    Theme.dialogs_checkReadDrawable.draw(canvas);
                    if (z4) {
                        canvas.restore();
                        Theme.dialogs_halfCheckDrawable.setAlpha(255);
                    }
                    if (z4 || i == 0) {
                        return;
                    }
                    canvas.restore();
                    Theme.dialogs_halfCheckDrawable.setAlpha(255);
                    Theme.dialogs_checkReadDrawable.setAlpha(255);
                    return;
                }
                BaseCell.setDrawableBounds(Theme.dialogs_checkDrawable, this.checkDrawLeft1, this.checkDrawTop);
                int i4 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                if (i4 != 0) {
                    canvas.save();
                    canvas.scale(f2, f2, Theme.dialogs_checkDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                    Theme.dialogs_checkDrawable.setAlpha((int) (f * 255.0f));
                }
                Theme.dialogs_checkDrawable.draw(canvas);
                if (i4 != 0) {
                    canvas.restore();
                    Theme.dialogs_checkDrawable.setAlpha(255);
                }
            }
        }
    }

    public boolean isPointInsideAvatar(float f, float f2) {
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.m107dp(60)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.m107dp(60))) && f < ((float) getMeasuredWidth());
    }

    public void setDialogSelected(boolean z) {
        if (this.isSelected != z) {
            invalidate();
        }
        this.isSelected = z;
    }

    public void animateArchiveAvatar() {
        if (this.avatarDrawable.getAvatarType() != 2) {
            return;
        }
        this.animatingArchiveAvatar = true;
        this.animatingArchiveAvatarProgress = BitmapDescriptorFactory.HUE_RED;
        Theme.dialogs_archiveAvatarDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
        Theme.dialogs_archiveAvatarDrawable.start();
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null || z) {
            if (checkBox2 == null) {
                CheckBox2 checkBox22 = new CheckBox2(getContext(), this.isCompactMode ? 17 : 21, this.resourcesProvider) { // from class: org.telegram.ui.Cells.DialogCell.2
                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        DialogCell.this.invalidate();
                    }
                };
                this.checkBox = checkBox22;
                checkBox22.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                this.checkBox.setDrawUnchecked(false);
                this.checkBox.setDrawBackgroundAsArc(3);
                addView(this.checkBox);
            }
            this.checkBox.setChecked(z, z2);
            checkTtl();
        }
    }

    private MessageObject findFolderTopMessage() {
        ArrayList<TLRPC$Dialog> dialogsArray;
        DialogsActivity dialogsActivity = this.parentFragment;
        if (dialogsActivity == null || (dialogsArray = dialogsActivity.getDialogsArray(this.currentAccount, this.dialogsType, this.currentDialogFolderId, false)) == null || dialogsArray.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(dialogsArray);
        arrayList.addAll(MessagesController.getInstance(this.currentAccount).dialogsAlbumsOnly);
        int size = arrayList.size();
        MessageObject messageObject = null;
        for (int i = 0; i < size; i++) {
            TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) arrayList.get(i);
            LongSparseArray<ArrayList<MessageObject>> longSparseArray = MessagesController.getInstance(this.currentAccount).dialogMessage;
            if (longSparseArray != null) {
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1608id);
                MessageObject messageObject2 = (arrayList2 == null || arrayList2.isEmpty()) ? null : arrayList2.get(0);
                if (messageObject2 != null && (messageObject == null || messageObject2.messageOwner.date > messageObject.messageOwner.date)) {
                    messageObject = messageObject2;
                }
                if (tLRPC$Dialog.pinnedNum == 0 && messageObject != null) {
                    break;
                }
            }
        }
        return messageObject;
    }

    public boolean isFolderCell() {
        return this.currentDialogFolderId != 0;
    }

    public boolean update(int i) {
        return update(i, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0165, code lost:
        if (com.iMe.fork.controller.ForkTopicsController.getInstance(r33.currentAccount).hasSelectedTopic(r33.folderId == 1) == false) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c5  */
    /* JADX WARN: Type inference failed for: r6v122 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$EncryptedChat] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.update(int, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$0(ValueAnimator valueAnimator) {
        this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$1(ValueAnimator valueAnimator) {
        this.reactionsMentionsChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopicId() {
        TLRPC$TL_forumTopic tLRPC$TL_forumTopic = this.forumTopic;
        if (tLRPC$TL_forumTopic == null) {
            return 0;
        }
        return tLRPC$TL_forumTopic.f1658id;
    }

    @Override // android.view.View
    public float getTranslationX() {
        return this.translationX;
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        if (f == this.translationX) {
            return;
        }
        this.translationX = f;
        RLottieDrawable rLottieDrawable = this.translationDrawable;
        if (rLottieDrawable != null && f == BitmapDescriptorFactory.HUE_RED) {
            rLottieDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.translationAnimationStarted = false;
            this.archiveHidden = this.currentDialogFolderId == 2 ? HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden() : SharedConfig.archiveHidden;
            this.currentRevealProgress = BitmapDescriptorFactory.HUE_RED;
            this.isSliding = false;
        }
        float f2 = this.translationX;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            this.isSliding = true;
        } else {
            this.currentRevealBounceProgress = BitmapDescriptorFactory.HUE_RED;
            this.currentRevealProgress = BitmapDescriptorFactory.HUE_RED;
            this.drawRevealBackground = false;
        }
        if (this.isSliding && !this.swipeCanceled) {
            boolean z = this.drawRevealBackground;
            boolean z2 = Math.abs(f2) >= ((float) getMeasuredWidth()) * 0.45f;
            this.drawRevealBackground = z2;
            if (z != z2) {
                if (this.archiveHidden == (this.currentDialogFolderId == 2 ? HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden() : SharedConfig.archiveHidden)) {
                    try {
                        performHapticFeedback(3, 2);
                    } catch (Exception unused) {
                    }
                }
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0572, code lost:
        if (r41.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L841;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0716, code lost:
        if (r41.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L831;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0c57, code lost:
        if (r2.lastKnownTypingType >= 0) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x0d3e, code lost:
        if (r0 == 8) goto L206;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0601  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0ab9  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0bf3  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0bfd  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0c49  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0cf5  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0cfc  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0ee4  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0ef2  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0ef4  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x0efa  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0efc  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0f02 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0f0f  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0f15  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0f17  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0f1c  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0f1e  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0f22  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0f24  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0f27  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0f93  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0fac  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0fae  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0fb4  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0fb7  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0fc6  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0fd2  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0fdd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:568:0x1037  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x1042  */
    /* JADX WARN: Removed duplicated region for block: B:579:0x1065  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x106e  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x1091  */
    /* JADX WARN: Removed duplicated region for block: B:593:0x109c  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x10f0  */
    /* JADX WARN: Removed duplicated region for block: B:604:0x1106  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x1172  */
    /* JADX WARN: Removed duplicated region for block: B:679:0x124c  */
    /* JADX WARN: Removed duplicated region for block: B:688:0x1276  */
    /* JADX WARN: Removed duplicated region for block: B:694:0x1286  */
    /* JADX WARN: Removed duplicated region for block: B:695:0x12d3  */
    /* JADX WARN: Removed duplicated region for block: B:751:0x1480  */
    /* JADX WARN: Removed duplicated region for block: B:759:0x149a  */
    /* JADX WARN: Removed duplicated region for block: B:791:0x161c  */
    /* JADX WARN: Removed duplicated region for block: B:792:0x1620  */
    /* JADX WARN: Removed duplicated region for block: B:795:0x162c  */
    /* JADX WARN: Removed duplicated region for block: B:798:0x164c  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x167b  */
    /* JADX WARN: Removed duplicated region for block: B:820:0x1686  */
    /* JADX WARN: Removed duplicated region for block: B:825:0x1694  */
    /* JADX WARN: Removed duplicated region for block: B:829:0x169c  */
    /* JADX WARN: Removed duplicated region for block: B:831:0x16a0  */
    /* JADX WARN: Removed duplicated region for block: B:844:0x1703  */
    /* JADX WARN: Removed duplicated region for block: B:848:0x1726  */
    /* JADX WARN: Removed duplicated region for block: B:851:0x172f  */
    /* JADX WARN: Removed duplicated region for block: B:854:0x1736  */
    /* JADX WARN: Removed duplicated region for block: B:869:0x1778  */
    /* JADX WARN: Removed duplicated region for block: B:898:0x17f5  */
    /* JADX WARN: Removed duplicated region for block: B:904:0x1846  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x184e  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x185e  */
    /* JADX WARN: Removed duplicated region for block: B:920:0x1873  */
    /* JADX WARN: Removed duplicated region for block: B:928:0x189c  */
    /* JADX WARN: Removed duplicated region for block: B:939:0x18ca  */
    /* JADX WARN: Removed duplicated region for block: B:945:0x18e0  */
    /* JADX WARN: Removed duplicated region for block: B:955:0x1904  */
    /* JADX WARN: Removed duplicated region for block: B:965:0x1925  */
    /* JADX WARN: Removed duplicated region for block: B:984:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r42) {
        /*
            Method dump skipped, instructions count: 6474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.onDraw(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$2() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonClicked(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$3() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonLongPress(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0145, code lost:
        if (r7 > 0) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:197:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0633  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0658  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x066e  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0226  */
    @Override // org.telegram.p043ui.Stories.StoriesListPlaceProvider.AvatarOverlaysView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawAvatarOverlays(android.graphics.Canvas r23) {
        /*
            Method dump skipped, instructions count: 1726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.drawAvatarOverlays(android.graphics.Canvas):boolean");
    }

    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        int m108dp;
        RectF rectF;
        float f2;
        float interpolation;
        RectF rectF2;
        int color;
        boolean z3 = true;
        boolean z4 = isForumCell() || isFolderCell();
        if (!(this.drawCount && this.drawCount2) && this.countChangeProgress == 1.0f) {
            return;
        }
        float f3 = (this.unreadCount != 0 || this.markUnread) ? this.countChangeProgress : 1.0f - this.countChangeProgress;
        int i4 = 255;
        if (z2) {
            if (this.counterPaintOutline == null) {
                Paint paint2 = new Paint();
                this.counterPaintOutline = paint2;
                paint2.setStyle(Paint.Style.STROKE);
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.m107dp(2));
                this.counterPaintOutline.setStrokeJoin(Paint.Join.ROUND);
                this.counterPaintOutline.setStrokeCap(Paint.Cap.ROUND);
            }
            this.counterPaintOutline.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhite), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chats_pinnedOverlay), 255), Color.alpha(color) / 255.0f));
        }
        if (this.isTopic && this.forumTopic.read_inbox_max_id == 0) {
            if (this.topicCounterPaint == null) {
                this.topicCounterPaint = new Paint();
            }
            paint = this.topicCounterPaint;
            int color2 = Theme.getColor(z ? Theme.key_topics_unreadCounterMuted : Theme.key_topics_unreadCounter, this.resourcesProvider);
            paint.setColor(color2);
            Theme.dialogs_countTextPaint.setColor(color2);
            i4 = z ? 30 : 40;
        } else {
            z3 = false;
            paint = (z || this.currentDialogFolderId != 0) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint;
        }
        StaticLayout staticLayout = this.countOldLayout;
        if (staticLayout == null || this.unreadCount == 0) {
            if (this.unreadCount != 0) {
                staticLayout = this.countLayout;
            }
            paint.setAlpha((int) ((1.0f - this.reorderIconProgress) * i4));
            Theme.dialogs_countTextPaint.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
            this.rect.set(i2 - AndroidUtilities.m108dp(5.5f), i, m108dp + this.countWidth + AndroidUtilities.m107dp(11), AndroidUtilities.m107dp(23) + i);
            int save = canvas.save();
            if (f != 1.0f) {
                canvas.scale(f, f, this.rect.centerX(), this.rect.centerY());
            }
            if (f3 != 1.0f) {
                if (getIsPinned()) {
                    Theme.dialogs_pinnedDrawable.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
                    BaseCell.setDrawableBounds(Theme.dialogs_pinnedDrawable, this.pinLeft, this.pinTop);
                    canvas.save();
                    float f4 = 1.0f - f3;
                    canvas.scale(f4, f4, Theme.dialogs_pinnedDrawable.getBounds().centerX(), Theme.dialogs_pinnedDrawable.getBounds().centerY());
                    Theme.dialogs_pinnedDrawable.draw(canvas);
                    canvas.restore();
                }
                canvas.scale(f3, f3, this.rect.centerX(), this.rect.centerY());
            }
            if (z4) {
                if (this.counterPath == null || (rectF = this.counterPathRect) == null || !rectF.equals(this.rect)) {
                    RectF rectF3 = this.counterPathRect;
                    if (rectF3 == null) {
                        this.counterPathRect = new RectF(this.rect);
                    } else {
                        rectF3.set(this.rect);
                    }
                    if (this.counterPath == null) {
                        this.counterPath = new Path();
                    }
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m108dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m108dp(11.5f), AndroidUtilities.m108dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m108dp(11.5f), AndroidUtilities.m108dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.m107dp(4));
                staticLayout.draw(canvas);
                canvas.restore();
            }
            canvas.restoreToCount(save);
        } else {
            paint.setAlpha((int) ((1.0f - this.reorderIconProgress) * i4));
            Theme.dialogs_countTextPaint.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
            float f5 = f3 * 2.0f;
            float f6 = f5 > 1.0f ? 1.0f : f5;
            float f7 = 1.0f - f6;
            float f8 = (i2 * f6) + (i3 * f7);
            float m108dp2 = f8 - AndroidUtilities.m108dp(5.5f);
            float f9 = i;
            this.rect.set(m108dp2, f9, (this.countWidth * f6) + m108dp2 + (this.countWidthOld * f7) + AndroidUtilities.m107dp(11), AndroidUtilities.m107dp(23) + i);
            if (f3 <= 0.5f) {
                interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f5) * 0.1f;
                f2 = 1.0f;
            } else {
                f2 = 1.0f;
                interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(1.0f - ((f3 - 0.5f) * 2.0f)) * 0.1f;
            }
            canvas.save();
            float f10 = (interpolation + f2) * f;
            canvas.scale(f10, f10, this.rect.centerX(), this.rect.centerY());
            if (z4) {
                if (this.counterPath == null || (rectF2 = this.counterPathRect) == null || !rectF2.equals(this.rect)) {
                    RectF rectF4 = this.counterPathRect;
                    if (rectF4 == null) {
                        this.counterPathRect = new RectF(this.rect);
                    } else {
                        rectF4.set(this.rect);
                    }
                    if (this.counterPath == null) {
                        this.counterPath = new Path();
                    }
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m108dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m108dp(11.5f), AndroidUtilities.m108dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m108dp(11.5f), AndroidUtilities.m108dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.m107dp(4));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m107dp(13) : -AndroidUtilities.m107dp(13)) * f7) + f9 + AndroidUtilities.m107dp(4));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m107dp(13) : -AndroidUtilities.m107dp(13)) * f7) + f9 + AndroidUtilities.m107dp(4));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f7));
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.m107dp(13) : AndroidUtilities.m107dp(13)) * f6) + f9 + AndroidUtilities.m107dp(4));
                this.countOldLayout.draw(canvas);
                canvas.restore();
            }
            Theme.dialogs_countTextPaint.setAlpha(alpha);
            canvas.restore();
        }
        if (z3) {
            Theme.dialogs_countTextPaint.setColor(Theme.getColor(Theme.key_chats_unreadCounterText));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createStatusDrawableAnimator(int i, int i2) {
        this.statusDrawableProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.statusDrawableAnimator = ofFloat;
        ofFloat.setDuration(220L);
        this.statusDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animateFromStatusDrawableParams = i;
        this.animateToStatusDrawableParams = i2;
        this.statusDrawableAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogCell.this.lambda$createStatusDrawableAnimator$4(valueAnimator);
            }
        });
        this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i3 = (DialogCell.this.drawClock ? 1 : 0) + (DialogCell.this.drawCheck1 ? 2 : 0) + (DialogCell.this.drawCheck2 ? 4 : 0);
                if (DialogCell.this.animateToStatusDrawableParams == i3) {
                    DialogCell.this.statusDrawableAnimationInProgress = false;
                    DialogCell dialogCell = DialogCell.this;
                    dialogCell.lastStatusDrawableParams = dialogCell.animateToStatusDrawableParams;
                } else {
                    DialogCell dialogCell2 = DialogCell.this;
                    dialogCell2.createStatusDrawableAnimator(dialogCell2.animateToStatusDrawableParams, i3);
                }
                DialogCell.this.invalidate();
            }
        });
        this.statusDrawableAnimationInProgress = true;
        this.statusDrawableAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStatusDrawableAnimator$4(ValueAnimator valueAnimator) {
        this.statusDrawableProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void startOutAnimation() {
        PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
        if (pullForegroundDrawable != null) {
            if (this.isTopic) {
                pullForegroundDrawable.outCy = AndroidUtilities.m107dp(24);
                this.archivedChatsDrawable.outCx = AndroidUtilities.m107dp(24);
                PullForegroundDrawable pullForegroundDrawable2 = this.archivedChatsDrawable;
                pullForegroundDrawable2.outRadius = BitmapDescriptorFactory.HUE_RED;
                pullForegroundDrawable2.outImageSize = BitmapDescriptorFactory.HUE_RED;
            } else {
                pullForegroundDrawable.outCy = this.storyParams.originalAvatarRect.centerY();
                this.archivedChatsDrawable.outCx = this.storyParams.originalAvatarRect.centerX();
                this.archivedChatsDrawable.outRadius = this.storyParams.originalAvatarRect.width() / 2.0f;
                if (MessagesController.getInstance(this.currentAccount).getStoriesController().hasHiddenStories()) {
                    this.archivedChatsDrawable.outRadius -= AndroidUtilities.dpf2(3.5f);
                }
                this.archivedChatsDrawable.outImageSize = this.avatarImage.getBitmapWidth();
            }
            this.archivedChatsDrawable.startOutAnimation();
        }
    }

    public void onReorderStateChanged(boolean z, boolean z2) {
        if ((!getIsPinned() && z) || this.drawReorder == z) {
            if (getIsPinned()) {
                return;
            }
            this.drawReorder = false;
            return;
        }
        this.drawReorder = z;
        if (z2) {
            this.reorderIconProgress = z ? 0.0f : 1.0f;
        } else {
            this.reorderIconProgress = z ? 1.0f : 0.0f;
        }
        invalidate();
    }

    public void setSliding(boolean z) {
        this.isSliding = z;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.translationDrawable || drawable == Theme.dialogs_archiveAvatarDrawable) {
            invalidate(drawable.getBounds());
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        DialogsActivity dialogsActivity;
        if (i == C3632R.C3635id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
            dialogsActivity.showChatPreview(this);
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isFolderCell() && this.archivedChatsDrawable != null && (this.currentDialogFolderId != 2 ? SharedConfig.archiveHidden : HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden()) && this.archivedChatsDrawable.pullProgress == BitmapDescriptorFactory.HUE_RED) {
            accessibilityNodeInfo.setVisibleToUser(false);
        } else {
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.addAction(32);
            if (!isFolderCell() && this.parentFragment != null && Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3632R.C3635id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3632R.string.AccActionChatPreview)));
            }
        }
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null || !checkBox2.isChecked()) {
            return;
        }
        accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(true);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        MessageObject captionMessage;
        TLRPC$User user;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        StringBuilder sb = new StringBuilder();
        int i = this.currentDialogFolderId;
        if (i == 1 || i == 2) {
            sb.append(i == 2 ? LocaleController.getInternalString(C3632R.string.hidden_chats_title) : LocaleController.getString("ArchivedChats", C3632R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3632R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3632R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3632R.string.RepliesTitle));
                    } else if (UserObject.isAnonymous(this.user)) {
                        sb.append(LocaleController.getString(C3632R.string.AnonymousForward));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3632R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3632R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3632R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3632R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3632R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3632R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3632R.string.AccDescrUserOnline));
            sb.append(". ");
        }
        int i2 = this.unreadCount;
        if (i2 > 0) {
            sb.append(LocaleController.formatPluralString("NewMessages", i2, new Object[0]));
            sb.append(". ");
        }
        int i3 = this.mentionCount;
        if (i3 > 0) {
            sb.append(LocaleController.formatPluralString("AccDescrMentionCount", i3, new Object[0]));
            sb.append(". ");
        }
        if (this.reactionMentionCount > 0) {
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3632R.string.AccDescrMentionReaction));
            sb.append(". ");
        }
        MessageObject messageObject = this.message;
        if (messageObject == null || this.currentDialogFolderId != 0) {
            accessibilityEvent.setContentDescription(sb);
            setContentDescription(sb);
            return;
        }
        int i4 = this.lastMessageDate;
        if (i4 == 0) {
            i4 = messageObject.messageOwner.date;
        }
        String formatDateAudio = LocaleController.formatDateAudio(i4, true);
        if (this.message.isOut()) {
            sb.append(LocaleController.formatString("AccDescrSentDate", C3632R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3632R.string.AccDescrReceivedDate, formatDateAudio));
        }
        sb.append(". ");
        if (this.chat != null && !this.message.isOut() && this.message.isFromUser() && this.message.messageOwner.action == null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
            sb.append(ContactsController.formatName(user.first_name, user.last_name));
            sb.append(". ");
        }
        if (this.encryptedChat == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.message.messageText);
            if (!this.message.isMediaEmpty() && (captionMessage = getCaptionMessage()) != null && !TextUtils.isEmpty(captionMessage.caption)) {
                if (sb2.length() > 0) {
                    sb2.append(". ");
                }
                sb2.append(captionMessage.caption);
            }
            StaticLayout staticLayout = this.messageLayout;
            int length = staticLayout == null ? -1 : staticLayout.getText().length();
            if (length > 0) {
                int length2 = sb2.length();
                int indexOf = sb2.indexOf("\n", length);
                if (indexOf < length2 && indexOf >= 0) {
                    length2 = indexOf;
                }
                int indexOf2 = sb2.indexOf("\t", length);
                if (indexOf2 < length2 && indexOf2 >= 0) {
                    length2 = indexOf2;
                }
                int indexOf3 = sb2.indexOf(" ", length);
                if (indexOf3 < length2 && indexOf3 >= 0) {
                    length2 = indexOf3;
                }
                sb.append(sb2.substring(0, length2));
            } else {
                sb.append((CharSequence) sb2);
            }
        }
        accessibilityEvent.setContentDescription(sb);
        setContentDescription(sb);
    }

    private MessageObject getCaptionMessage() {
        CharSequence charSequence;
        if (this.groupMessages == null) {
            MessageObject messageObject = this.message;
            if (messageObject == null || messageObject.caption == null) {
                return null;
            }
            return messageObject;
        }
        int i = 0;
        MessageObject messageObject2 = null;
        for (int i2 = 0; i2 < this.groupMessages.size(); i2++) {
            MessageObject messageObject3 = this.groupMessages.get(i2);
            if (messageObject3 != null && (charSequence = messageObject3.caption) != null) {
                if (!TextUtils.isEmpty(charSequence)) {
                    i++;
                }
                messageObject2 = messageObject3;
            }
        }
        if (i > 1) {
            return null;
        }
        return messageObject2;
    }

    public void updateMessageThumbs() {
        MessageObject messageObject = this.message;
        if (messageObject == null) {
            return;
        }
        String restrictionReason = MessagesController.getRestrictionReason(messageObject.messageOwner.restriction_reason);
        ArrayList<MessageObject> arrayList = this.groupMessages;
        if (arrayList != null && arrayList.size() > 1 && TextUtils.isEmpty(restrictionReason) && this.currentDialogFolderId == 0 && this.encryptedChat == null) {
            this.thumbsCount = 0;
            this.hasVideoThumb = false;
            Collections.sort(this.groupMessages, Comparator.CC.comparingInt(DialogCell$$ExternalSyntheticLambda5.INSTANCE));
            for (int i = 0; i < Math.min(3, this.groupMessages.size()); i++) {
                MessageObject messageObject2 = this.groupMessages.get(i);
                if (messageObject2 != null && !messageObject2.needDrawBluredPreview() && (messageObject2.isPhoto() || messageObject2.isNewGif() || messageObject2.isVideo() || messageObject2.isRoundVideo() || messageObject2.isStoryMedia())) {
                    String str = messageObject2.isWebpage() ? messageObject2.messageOwner.media.webpage.type : null;
                    if (!"app".equals(str) && !"profile".equals(str) && !"article".equals(str) && (str == null || !str.startsWith("telegram_"))) {
                        setThumb(i, messageObject2);
                    }
                }
            }
            return;
        }
        MessageObject messageObject3 = this.message;
        if (messageObject3 == null || this.currentDialogFolderId != 0) {
            return;
        }
        this.thumbsCount = 0;
        this.hasVideoThumb = false;
        if (messageObject3.needDrawBluredPreview()) {
            return;
        }
        if (this.message.isPhoto() || this.message.isNewGif() || this.message.isVideo() || this.message.isRoundVideo() || this.message.isStoryMedia()) {
            String str2 = this.message.isWebpage() ? this.message.messageOwner.media.webpage.type : null;
            if ("app".equals(str2) || "profile".equals(str2) || "article".equals(str2)) {
                return;
            }
            if (str2 == null || !str2.startsWith("telegram_")) {
                setThumb(0, this.message);
            }
        }
    }

    private void setThumb(int i, MessageObject messageObject) {
        TLRPC$MessageMedia tLRPC$MessageMedia;
        ArrayList<TLRPC$PhotoSize> arrayList = messageObject.photoThumbs;
        TLObject tLObject = messageObject.photoThumbsObject;
        if (messageObject.isStoryMedia()) {
            TL_stories$StoryItem tL_stories$StoryItem = messageObject.messageOwner.media.storyItem;
            if (tL_stories$StoryItem == null || (tLRPC$MessageMedia = tL_stories$StoryItem.media) == null) {
                return;
            }
            TLRPC$Document tLRPC$Document = tLRPC$MessageMedia.document;
            if (tLRPC$Document != null) {
                arrayList = tLRPC$Document.thumbs;
                tLObject = tLRPC$Document;
            } else {
                TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia.photo;
                if (tLRPC$Photo != null) {
                    arrayList = tLRPC$Photo.sizes;
                    tLObject = tLRPC$Photo;
                }
            }
        }
        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 40);
        TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize());
        if (closestPhotoSizeWithSize == closestPhotoSizeWithSize2) {
            closestPhotoSizeWithSize2 = null;
        }
        if (closestPhotoSizeWithSize2 == null || DownloadController.getInstance(this.currentAccount).canDownloadMedia(messageObject.messageOwner) == 0) {
            closestPhotoSizeWithSize2 = closestPhotoSizeWithSize;
        }
        if (closestPhotoSizeWithSize != null) {
            this.hasVideoThumb = this.hasVideoThumb || messageObject.isVideo() || messageObject.isRoundVideo();
            int i2 = this.thumbsCount;
            if (i2 < 3) {
                this.thumbsCount = i2 + 1;
                this.drawPlay[i] = (messageObject.isVideo() || messageObject.isRoundVideo()) && !messageObject.hasMediaSpoilers();
                this.drawSpoiler[i] = messageObject.hasMediaSpoilers();
                int i3 = (messageObject.type != 1 || closestPhotoSizeWithSize2 == null) ? 0 : closestPhotoSizeWithSize2.size;
                String str = messageObject.hasMediaSpoilers() ? "5_5_b" : "20_20";
                this.thumbImage[i].setImage(ImageLocation.getForObject(closestPhotoSizeWithSize2, tLObject), str, ImageLocation.getForObject(closestPhotoSizeWithSize, tLObject), str, i3, null, messageObject, 0);
                this.thumbImage[i].setRoundRadius(AndroidUtilities.m107dp(messageObject.isRoundVideo() ? 18 : 2));
                this.needEmoji = false;
            }
        }
    }

    public String getMessageNameString() {
        TLRPC$Chat chat;
        String str;
        TLRPC$Message tLRPC$Message;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader;
        String str2;
        MessageObject messageObject;
        TLRPC$Message tLRPC$Message2;
        TLRPC$User user;
        TLRPC$Message tLRPC$Message3;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader2;
        MessageObject messageObject2 = this.message;
        TLRPC$User tLRPC$User = null;
        if (messageObject2 == null) {
            return null;
        }
        long fromChatId = messageObject2.getFromChatId();
        if (this.isSavedDialog && (tLRPC$Message3 = this.message.messageOwner) != null && (tLRPC$MessageFwdHeader2 = tLRPC$Message3.fwd_from) != null) {
            fromChatId = DialogObject.getPeerDialogId(tLRPC$MessageFwdHeader2.saved_from_id);
            if (fromChatId == 0) {
                fromChatId = DialogObject.getPeerDialogId(this.message.messageOwner.fwd_from.from_id);
            }
        }
        if (DialogObject.isUserDialog(fromChatId)) {
            tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(fromChatId));
            chat = null;
        } else {
            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-fromChatId));
        }
        if (this.message.isOutOwner()) {
            return LocaleController.getString("FromYou", C3632R.string.FromYou);
        }
        if (!this.isSavedDialog && (messageObject = this.message) != null && (tLRPC$Message2 = messageObject.messageOwner) != null && (tLRPC$Message2.from_id instanceof TLRPC$TL_peerUser) && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
            return UserObject.getFirstName(user).replace("\n", "");
        }
        MessageObject messageObject3 = this.message;
        if (messageObject3 == null || (tLRPC$Message = messageObject3.messageOwner) == null || (tLRPC$MessageFwdHeader = tLRPC$Message.fwd_from) == null || (str2 = tLRPC$MessageFwdHeader.from_name) == null) {
            if (tLRPC$User == null) {
                return (chat == null || (str = chat.title) == null) ? "DELETED" : str.replace("\n", "");
            } else if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                if (UserObject.isDeleted(tLRPC$User)) {
                    return LocaleController.getString("HiddenName", C3632R.string.HiddenName);
                }
                return ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name).replace("\n", "");
            } else {
                return UserObject.getFirstName(tLRPC$User).replace("\n", "");
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.telegram.ui.Cells.DialogCell, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r13v5, types: [android.text.SpannableStringBuilder, java.lang.CharSequence, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.CharSequence] */
    public SpannableStringBuilder getMessageStringFormatted(int i, String str, CharSequence charSequence, boolean z) {
        TLRPC$Message tLRPC$Message;
        String charSequence2;
        String formatPluralString;
        CharSequence charSequence3;
        String str2;
        SpannableStringBuilder valueOf;
        TLRPC$TL_forumTopic findTopic;
        MessageObject captionMessage = getCaptionMessage();
        MessageObject messageObject = this.message;
        CharSequence charSequence4 = messageObject != null ? messageObject.messageText : null;
        this.applyName = true;
        if (!TextUtils.isEmpty(str)) {
            return formatInternal(i, str, charSequence);
        }
        MessageObject messageObject2 = this.message;
        TLRPC$Message tLRPC$Message2 = messageObject2.messageOwner;
        if (tLRPC$Message2 instanceof TLRPC$TL_messageService) {
            CharSequence charSequence5 = messageObject2.messageTextShort;
            if (charSequence5 == null || ((tLRPC$Message2.action instanceof TLRPC$TL_messageActionTopicCreate) && this.isTopic)) {
                charSequence5 = messageObject2.messageText;
            }
            if (MessageObject.isTopicActionMessage(messageObject2)) {
                valueOf = formatInternal(i, charSequence5, charSequence);
                if ((this.message.topicIconDrawable[0] instanceof ForumBubbleDrawable) && (findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.currentAccount, this.message.messageOwner, true))) != null) {
                    ((ForumBubbleDrawable) this.message.topicIconDrawable[0]).setColor(findTopic.icon_color);
                }
            } else {
                this.applyName = false;
                valueOf = SpannableStringBuilder.valueOf(charSequence5);
            }
            if (z) {
                applyThumbs(valueOf);
                return valueOf;
            }
            return valueOf;
        } else if (captionMessage != null && (charSequence3 = captionMessage.caption) != null) {
            CharSequence charSequence6 = charSequence3.toString();
            if (!this.needEmoji) {
                str2 = "";
            } else if (captionMessage.isVideo()) {
                str2 = "📹 ";
            } else if (captionMessage.isVoice()) {
                str2 = "🎤 ";
            } else if (captionMessage.isMusic()) {
                str2 = "🎧 ";
            } else {
                str2 = captionMessage.isPhoto() ? "🖼 " : "📎 ";
            }
            if (captionMessage.hasHighlightedWords() && !TextUtils.isEmpty(captionMessage.messageOwner.message)) {
                CharSequence charSequence7 = captionMessage.messageTrimmedToHighlight;
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m107dp((this.messagePaddingStart + 23) + 24);
                if (this.hasNameInMessage) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(charSequence.toString()));
                    }
                    measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(": "));
                }
                if (measuredWidth > 0) {
                    charSequence7 = AndroidUtilities.ellipsizeCenterEnd(charSequence7, captionMessage.highlightedWords.get(0), measuredWidth, this.currentMessagePaint, TsExtractor.TS_STREAM_TYPE_HDMV_DTS).toString();
                }
                return new SpannableStringBuilder(str2).append(charSequence7);
            }
            if (charSequence6.length() > 150) {
                charSequence6 = charSequence6.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence6);
            captionMessage.spoilLoginCode();
            MediaDataController.addTextStyleRuns(captionMessage.messageOwner.entities, charSequence6, spannableStringBuilder, 264);
            TLRPC$Message tLRPC$Message3 = captionMessage.messageOwner;
            if (tLRPC$Message3 != null) {
                ArrayList<TLRPC$MessageEntity> arrayList = tLRPC$Message3.entities;
                TextPaint textPaint = this.currentMessagePaint;
                MediaDataController.addAnimatedEmojiSpans(arrayList, spannableStringBuilder, textPaint != null ? textPaint.getFontMetricsInt() : null);
            }
            CharSequence append = new SpannableStringBuilder(str2).append(AndroidUtilities.replaceNewLines(spannableStringBuilder));
            if (z) {
                append = applyThumbs(append);
            }
            return formatInternal(i, append, charSequence);
        } else if (tLRPC$Message2.media != null && !messageObject2.isMediaEmpty()) {
            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
            int i2 = Theme.key_chats_attachMessage;
            MessageObject messageObject3 = this.message;
            TLRPC$MessageMedia tLRPC$MessageMedia = messageObject3.messageOwner.media;
            if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPoll) {
                TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll = (TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia;
                charSequence2 = Build.VERSION.SDK_INT >= 18 ? String.format("📊 \u2068%s\u2069", tLRPC$TL_messageMediaPoll.poll.question) : String.format("📊 %s", tLRPC$TL_messageMediaPoll.poll.question);
            } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGame) {
                charSequence2 = Build.VERSION.SDK_INT >= 18 ? String.format("🎮 \u2068%s\u2069", tLRPC$MessageMedia.game.title) : String.format("🎮 %s", tLRPC$MessageMedia.game.title);
            } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaInvoice) {
                charSequence2 = tLRPC$MessageMedia.title;
            } else if (messageObject3.type == 14) {
                charSequence2 = Build.VERSION.SDK_INT >= 18 ? String.format("🎧 \u2068%s - %s\u2069", messageObject3.getMusicAuthor(), this.message.getMusicTitle()) : String.format("🎧 %s - %s", messageObject3.getMusicAuthor(), this.message.getMusicTitle());
            } else if (this.thumbsCount > 1) {
                if (this.hasVideoThumb) {
                    ArrayList<MessageObject> arrayList2 = this.groupMessages;
                    formatPluralString = LocaleController.formatPluralString("Media", arrayList2 == null ? 0 : arrayList2.size(), new Object[0]);
                } else {
                    ArrayList<MessageObject> arrayList3 = this.groupMessages;
                    formatPluralString = LocaleController.formatPluralString("Photos", arrayList3 == null ? 0 : arrayList3.size(), new Object[0]);
                }
                charSequence2 = formatPluralString;
                i2 = Theme.key_chats_actionMessage;
            } else {
                charSequence2 = charSequence4.toString();
                i2 = Theme.key_chats_actionMessage;
            }
            CharSequence replace = charSequence2.replace('\n', ' ');
            if (z) {
                replace = applyThumbs(replace);
            }
            SpannableStringBuilder formatInternal = formatInternal(i, replace, charSequence);
            if (isForumCell()) {
                return formatInternal;
            }
            try {
                formatInternal.setSpan(new ForegroundColorSpanThemable(i2, this.resourcesProvider), this.hasNameInMessage ? charSequence.length() + 2 : 0, formatInternal.length(), 33);
                return formatInternal;
            } catch (Exception e) {
                FileLog.m102e(e);
                return formatInternal;
            }
        } else {
            MessageObject messageObject4 = this.message;
            CharSequence charSequence8 = messageObject4.messageOwner.message;
            if (charSequence8 != null) {
                if (messageObject4.hasHighlightedWords()) {
                    CharSequence charSequence9 = this.message.messageTrimmedToHighlight;
                    if (charSequence9 != null) {
                        charSequence8 = charSequence9;
                    }
                    int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.m107dp((this.messagePaddingStart + 23) + 10);
                    if (this.hasNameInMessage) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(charSequence.toString()));
                        }
                        measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(": "));
                    }
                    if (measuredWidth2 > 0) {
                        charSequence8 = AndroidUtilities.ellipsizeCenterEnd(charSequence8, this.message.highlightedWords.get(0), measuredWidth2, this.currentMessagePaint, TsExtractor.TS_STREAM_TYPE_HDMV_DTS).toString();
                    }
                } else {
                    if (charSequence8.length() > 150) {
                        charSequence8 = charSequence8.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                    }
                    charSequence8 = AndroidUtilities.replaceNewLines(charSequence8);
                }
                ?? spannableStringBuilder2 = new SpannableStringBuilder(charSequence8);
                MessageObject messageObject5 = this.message;
                if (messageObject5 != null) {
                    messageObject5.spoilLoginCode();
                }
                MediaDataController.addTextStyleRuns(this.message, (Spannable) spannableStringBuilder2, 264);
                MessageObject messageObject6 = this.message;
                if (messageObject6 != null && (tLRPC$Message = messageObject6.messageOwner) != null) {
                    ArrayList<TLRPC$MessageEntity> arrayList4 = tLRPC$Message.entities;
                    TextPaint textPaint2 = this.currentMessagePaint;
                    MediaDataController.addAnimatedEmojiSpans(arrayList4, spannableStringBuilder2, textPaint2 != null ? textPaint2.getFontMetricsInt() : null);
                }
                if (z) {
                    spannableStringBuilder2 = applyThumbs(spannableStringBuilder2);
                }
                return formatInternal(i, spannableStringBuilder2, charSequence);
            }
            return new SpannableStringBuilder();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.rightFragmentOpenedProgress == BitmapDescriptorFactory.HUE_RED && !this.isTopic && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if ((!this.isTopic && motionEvent.getAction() == 1) || motionEvent.getAction() == 3) {
            this.storyParams.checkOnTouchEvent(motionEvent, this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CanvasButton canvasButton;
        if (this.rightFragmentOpenedProgress == BitmapDescriptorFactory.HUE_RED && !this.isTopic && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if ((dialogCellDelegate == null || dialogCellDelegate.canClickButtonInside()) && this.lastTopicMessageUnread && (canvasButton = this.canvasButton) != null && this.buttonLayout != null && this.dialogsType == 0 && canvasButton.checkTouchEvent(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setClipProgress(float f) {
        this.clipProgress = f;
        invalidate();
    }

    public float getClipProgress() {
        return this.clipProgress;
    }

    public void setTopClip(int i) {
        this.topClip = i;
    }

    public void setBottomClip(int i) {
        this.bottomClip = i;
    }

    public void setArchivedPullAnimation(PullForegroundDrawable pullForegroundDrawable) {
        this.archivedChatsDrawable = pullForegroundDrawable;
    }

    public int getCurrentDialogFolderId() {
        return this.currentDialogFolderId;
    }

    public boolean isDialogFolder() {
        return this.currentDialogFolderId > 0;
    }

    public MessageObject getMessage() {
        return this.message;
    }

    public void setDialogCellDelegate(DialogCellDelegate dialogCellDelegate) {
        this.delegate = dialogCellDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.DialogCell$DialogUpdateHelper */
    /* loaded from: classes5.dex */
    public class DialogUpdateHelper {
        public long lastDrawnDialogId;
        public boolean lastDrawnDialogIsFolder;
        public int lastDrawnDraftHash;
        public boolean lastDrawnHasCall;
        public long lastDrawnMessageId;
        public boolean lastDrawnPinned;
        public Integer lastDrawnPrintingType;
        public long lastDrawnReadState;
        public int lastDrawnSizeHash;
        public boolean lastDrawnTranslated;
        public int lastKnownTypingType;
        public int lastTopicsCount;
        long startWaitingTime;
        public boolean typingOutToTop;
        public float typingProgres;
        boolean waitngNewMessageFroTypingAnimation;

        private DialogUpdateHelper() {
            this.waitngNewMessageFroTypingAnimation = false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x0135, code lost:
            if (org.telegram.messenger.MessagesController.getInstance(r17.this$0.currentAccount).getTopicsController().endIsReached(-r17.this$0.currentDialogId) != false) goto L116;
         */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0230  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0261  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x0265  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x026a  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0168  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0188  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x018a  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0224  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean update() {
            /*
                Method dump skipped, instructions count: 663
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.DialogUpdateHelper.update():boolean");
        }

        public void updateAnimationValues() {
            if (!this.waitngNewMessageFroTypingAnimation) {
                if (this.lastDrawnPrintingType != null && DialogCell.this.typingLayout != null) {
                    float f = this.typingProgres;
                    if (f != 1.0f) {
                        this.typingProgres = f + 0.08f;
                        DialogCell.this.invalidate();
                        this.typingProgres = Utilities.clamp(this.typingProgres, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                        return;
                    }
                }
                if (this.lastDrawnPrintingType == null) {
                    float f2 = this.typingProgres;
                    if (f2 != BitmapDescriptorFactory.HUE_RED) {
                        this.typingProgres = f2 - 0.08f;
                        DialogCell.this.invalidate();
                    }
                }
                this.typingProgres = Utilities.clamp(this.typingProgres, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                return;
            }
            if (System.currentTimeMillis() - this.startWaitingTime > 100) {
                this.waitngNewMessageFroTypingAnimation = false;
            }
            DialogCell.this.invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate() {
        if (StoryViewer.animationInProgress) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (StoryViewer.animationInProgress) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Cells.DialogCell$ForumFormattedNames */
    /* loaded from: classes5.dex */
    public static class ForumFormattedNames {
        CharSequence formattedNames;
        boolean isLoadingState;
        int lastMessageId;
        boolean lastTopicMessageUnread;
        int topMessageTopicEndIndex;
        int topMessageTopicStartIndex;

        private ForumFormattedNames() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void formatTopicsNames(int i, MessageObject messageObject, TLRPC$Chat tLRPC$Chat) {
            boolean z;
            int i2;
            int id = (messageObject == null || tLRPC$Chat == null) ? 0 : messageObject.getId();
            if (this.lastMessageId != id || this.isLoadingState) {
                this.topMessageTopicStartIndex = 0;
                this.topMessageTopicEndIndex = 0;
                this.lastTopicMessageUnread = false;
                this.isLoadingState = false;
                this.lastMessageId = id;
                TextPaint textPaint = Theme.dialogs_messagePaint[0];
                if (tLRPC$Chat != null) {
                    ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(i).getTopicsController().getTopics(tLRPC$Chat.f1602id);
                    boolean z2 = true;
                    if (topics != null && !topics.isEmpty()) {
                        ArrayList arrayList = new ArrayList(topics);
                        Collections.sort(arrayList, Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Cells.DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0
                            @Override // p033j$.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                int lambda$formatTopicsNames$0;
                                lambda$formatTopicsNames$0 = DialogCell.ForumFormattedNames.lambda$formatTopicsNames$0((TLRPC$TL_forumTopic) obj);
                                return lambda$formatTopicsNames$0;
                            }
                        }));
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        long j = 0;
                        if (messageObject != null) {
                            j = MessageObject.getTopicId(i, messageObject.messageOwner, true);
                            TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(i).getTopicsController().findTopic(tLRPC$Chat.f1602id, j);
                            if (findTopic != null) {
                                CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(findTopic, textPaint, false);
                                spannableStringBuilder.append(topicSpannedName);
                                i2 = findTopic.unread_count > 0 ? topicSpannedName.length() : 0;
                                this.topMessageTopicStartIndex = 0;
                                this.topMessageTopicEndIndex = topicSpannedName.length();
                                if (messageObject.isOutOwner()) {
                                    this.lastTopicMessageUnread = false;
                                } else {
                                    this.lastTopicMessageUnread = findTopic.unread_count > 0;
                                }
                            } else {
                                this.lastTopicMessageUnread = false;
                                i2 = 0;
                            }
                            if (this.lastTopicMessageUnread) {
                                spannableStringBuilder.append((CharSequence) " ");
                                spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.m107dp(3)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
                                z = true;
                            } else {
                                z = false;
                            }
                        } else {
                            z = false;
                            i2 = 0;
                        }
                        for (int i3 = 0; i3 < Math.min(4, arrayList.size()); i3++) {
                            if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1658id != j) {
                                if (spannableStringBuilder.length() != 0) {
                                    if (z2 && z) {
                                        spannableStringBuilder.append((CharSequence) " ");
                                    } else {
                                        spannableStringBuilder.append((CharSequence) ", ");
                                    }
                                }
                                spannableStringBuilder.append(ForumUtilities.getTopicSpannedName((TLRPC$ForumTopic) arrayList.get(i3), textPaint, false));
                                z2 = false;
                            }
                        }
                        if (i2 > 0) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM), 0, Theme.key_chats_name, null), 0, Math.min(spannableStringBuilder.length(), i2 + 2), 0);
                        }
                        this.formattedNames = spannableStringBuilder;
                    } else if (!MessagesController.getInstance(i).getTopicsController().endIsReached(tLRPC$Chat.f1602id)) {
                        MessagesController.getInstance(i).getTopicsController().preloadTopics(tLRPC$Chat.f1602id);
                        this.formattedNames = LocaleController.getString("Loading", C3632R.string.Loading);
                        this.isLoadingState = true;
                    } else {
                        this.formattedNames = "no created topics";
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$formatTopicsNames$0(TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            return -tLRPC$TL_forumTopic.top_message;
        }
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i, int i2) {
        if (this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = new int[4];
            this.adaptiveEmojiColorFilter = new ColorFilter[4];
        }
        if (i2 != this.adaptiveEmojiColor[i] || this.adaptiveEmojiColorFilter[i] == null) {
            ColorFilter[] colorFilterArr = this.adaptiveEmojiColorFilter;
            this.adaptiveEmojiColor[i] = i2;
            colorFilterArr[i] = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter[i];
    }

    public void showPremiumBlocked(boolean z) {
        Runnable runnable = this.unsubscribePremiumBlocked;
        if (z != (runnable != null)) {
            if (!z && runnable != null) {
                runnable.run();
                this.unsubscribePremiumBlocked = null;
            } else if (z) {
                this.unsubscribePremiumBlocked = NotificationCenter.getInstance(this.currentAccount).listen(this, NotificationCenter.userIsPremiumBlockedUpadted, new Utilities.Callback() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        DialogCell.this.lambda$showPremiumBlocked$5((Object[]) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumBlocked$5(Object[] objArr) {
        updatePremiumBlocked(true);
    }

    private void updatePremiumBlocked(boolean z) {
        boolean z2 = this.premiumBlocked;
        boolean z3 = (this.unsubscribePremiumBlocked == null || this.user == null || !MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.user.f1751id)) ? false : true;
        this.premiumBlocked = z3;
        if (z2 != z3) {
            if (!z) {
                this.premiumBlockedT.set(z3, true);
            }
            invalidate();
        }
    }
}
