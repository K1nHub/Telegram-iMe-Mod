package org.telegram.p043ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
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
import org.telegram.messenger.C3634R;
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
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.DialogsAdapter;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BubbleCounterPath;
import org.telegram.p043ui.Components.CanvasButton;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.ForegroundColorSpanThemable;
import org.telegram.p043ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
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
        public int f1795id;
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
        this.avatarImage.setRoundRadius(AndroidUtilities.m104dp(28));
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                ImageReceiver[] imageReceiverArr2 = this.thumbImage;
                imageReceiverArr2[i2].ignoreNotifications = true;
                imageReceiverArr2[i2].setRoundRadius(AndroidUtilities.m104dp(2));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m104dp(22));
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1749id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1749id))) {
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
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(24), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m104dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0));
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
        return AndroidUtilities.m104dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86 : (this.useSeparator ? 1 : 0) + 91);
    }

    private int getCollapsedHeight() {
        return AndroidUtilities.m104dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0) + (this.twoLinesForName ? AndroidUtilities.m104dp(20) : 0);
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
        int m105dp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int m104dp = AndroidUtilities.m104dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                m104dp = AndroidUtilities.m104dp(8);
                m105dp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    m104dp = (i3 - i) - m104dp;
                }
                m105dp = AndroidUtilities.m105dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            if (this.isCompactMode) {
                if (this.isTopic) {
                    m105dp = calcCompactDrawingElementTop(this.checkBox.getMeasuredHeight());
                } else {
                    m104dp = AndroidUtilities.m104dp(37);
                    m105dp = AndroidUtilities.m104dp(23);
                }
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m104dp, m105dp, checkBox2.getMeasuredWidth() + m104dp, this.checkBox.getMeasuredHeight() + m105dp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize || this.updateLayout) {
            this.updateLayout = false;
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m99e(e);
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
                    replace = LocaleController.getString("HiddenName", C3634R.string.HiddenName);
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
        return Emoji.replaceEmoji((CharSequence) spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), AndroidUtilities.m104dp(17), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(116:15|(1:1581)(1:19)|20|(1:1580)(1:26)|27|(1:1579)(1:31)|32|(1:34)|35|(2:37|(1:1568)(1:41))(2:1569|(1:1578)(1:1573))|42|(1:44)|45|(1:47)(1:1563)|48|(7:50|(1:52)|53|54|(1:56)|57|58)|59|(9:61|(2:63|(1:65)(2:768|(2:776|(1:778)(1:779))(2:772|(1:774)(1:775))))(4:780|(1:800)(1:784)|785|(1:787)(2:788|(2:796|(1:798)(1:799))(2:792|(1:794)(1:795))))|66|(3:68|(1:70)(4:755|(1:757)|758|(1:763)(1:762))|71)(3:764|(1:766)|767)|72|(1:74)(1:754)|75|(1:77)(1:(1:750)(1:(1:752)(1:753)))|78)(22:801|(1:803)(2:1551|(2:1559|(1:1561)(1:1562))(2:1555|(1:1557)(1:1558)))|804|(2:806|(2:808|(1:810)(2:811|(2:819|(1:821)(1:822))(2:815|(1:817)(1:818)))))(2:1497|(2:1499|(2:1501|(1:1503)(2:1504|(1:1506)(3:1507|(1:1513)(1:1511)|1512)))(2:1514|(7:1516|(1:1518)(2:1541|(1:1543)(3:1544|(1:1550)(1:1548)|1549))|1519|(2:1521|(3:1529|1530|(2:1532|(2:1536|(1:1538)(1:1539))(1:1535))))|1540|1530|(0)))))|823|(1:827)|828|(2:830|(1:834))(2:1493|(1:1495)(1:1496))|835|(6:1471|(2:1473|(2:1475|(2:1477|(1:1479))))|1481|(2:1483|(1:1485))|1487|(13:1489|(1:1491)|844|(7:846|(1:848)(1:1040)|849|(1:851)(1:1039)|852|(2:854|(1:857))|858)(3:(6:1042|(1:1044)(1:1465)|1045|(1:1047)(1:1464)|(1:1049)(1:1463)|1050)(1:1466)|1051|(4:1053|(2:1055|(2:1062|1061)(1:1059))(7:1063|(1:1065)|1066|(3:1070|(1:1072)(1:1074)|1073)|1075|(1:1079)|1080)|1060|1061)(5:1081|(1:1083)(2:1087|(2:1089|(1:1091)(5:1092|(2:1094|(1:1096)(2:1097|(1:1099)(2:1100|(1:1102)(2:1103|(2:1105|(1:1107)(1:1108))))))(2:1110|(4:1114|(1:1120)(1:1118)|1119|1086))|1109|1085|1086))(10:1121|(1:1123)(1:1462)|1124|(2:1138|(2:1140|(7:1144|(1:1146)(3:1456|(1:1458)(1:1460)|1459)|(1:1148)(6:1162|(3:1164|(4:1166|(2:1168|(2:1170|(1:1172)(2:1175|(1:1177)(1:1178))))|1179|(1:1181)(2:1182|(1:1184)(2:1185|(1:1187)(1:1188))))(1:1189)|1173)(2:1190|(2:1201|(2:1212|(2:1227|(8:1291|(2:1293|(5:1295|(1:1307)|1301|(1:1305)|1306)(2:1308|(4:1315|(2:1317|(1:1322))|1323|(4:1325|(1:1327)(2:1349|(1:1351)(2:1352|(1:1354)(2:1355|(1:1357)(2:1358|(1:1360)(1:1361)))))|1328|(3:1341|(3:1343|(1:1345)(1:1347)|1346)|1348)(4:1332|(2:1334|(1:1336)(1:1337))|(1:1339)|1340))(2:1362|(3:1364|(3:1366|(1:1368)(1:1371)|1369)(3:1372|(1:1374)(1:1376)|1375)|1370)(4:1377|(1:1379)(2:1385|(1:1387)(2:1388|(1:1390)(2:1391|(1:1393)(2:1394|(1:1396)(2:1397|(3:1411|(4:1417|(1:1419)|1420|(2:1422|(3:1424|(1:1426)(1:1428)|1427)))(1:1415)|1416)(2:1401|(3:1403|(2:1405|(1:1407))(1:1409)|1408)(1:1410)))))))|1380|(2:1382|(1:1384)))))(1:1314)))|1429|(1:1431)|1432|(7:1434|(3:1449|(1:1451)|1452)(1:1438)|1439|(1:1441)(1:1448)|1442|(1:1446)|1447)|1453|(1:1455))(13:1238|(2:1244|(12:1246|(1:1289)(1:1250)|1251|1252|(1:1288)(5:1258|1259|1260|1261|1262)|1263|(1:1267)|1268|(4:1270|(1:1272)|1273|(1:1275)(1:1276))|1277|1151|(5:1153|(1:1155)(1:1160)|1156|(1:1158)|1159)(1:1161)))|1290|1252|(2:1254|1284)|1288|1263|(2:1265|1267)|1268|(0)|1277|1151|(0)(0)))(4:1218|(1:1222)|1223|(1:1225)(1:1226)))(3:1207|(1:1209)(1:1211)|1210))(3:1194|(1:1200)(1:1198)|1199))|1174|1150|1151|(0)(0))|1149|1150|1151|(0)(0))))|1461|(0)(0)|1149|1150|1151|(0)(0)))|1084|1085|1086))|859|(1:861)(2:1032|(1:1034)(2:1035|(1:1037)(1:1038)))|862|(1:864)(5:930|(5:932|(1:934)(2:992|(1:(3:995|936|937)(2:996|937))(1:997))|935|936|937)(8:998|(1:1000)(9:1011|(4:1013|(2:1015|(1:1020))(1:1027)|1021|(6:1026|1002|(1:1004)(1:1010)|1005|(1:1007)(1:1009)|1008)(1:1025))|1028|(1:1030)(1:1031)|1002|(0)(0)|1005|(0)(0)|1008)|1001|1002|(0)(0)|1005|(0)(0)|1008)|938|(2:943|(2:949|(1:951)(2:952|(1:954)(2:955|(4:957|(3:959|(1:961)(1:965)|962)(2:966|(3:968|(1:980)(1:972)|973)(3:981|(1:989)(1:987)|988))|963|964)(1:990)))))|991)|865|(2:869|(1:871)(2:872|(4:874|(1:876)|877|(1:879))))|880|(3:882|(1:884)(1:887)|885)(3:888|(3:890|(3:892|(1:894)|895)(2:903|(4:905|(1:907)|908|(1:910)(1:911))(1:912))|897)(3:913|(3:915|(1:917)(2:918|(2:920|(1:922)(4:923|(1:925)|926|(1:928)))(1:929))|897)|902)|(1:901))|886))|843|844|(0)(0)|859|(0)(0)|862|(0)(0)|865|(3:867|869|(0)(0))|880|(0)(0)|886)|79|(2:81|(1:83)(1:747))(1:748)|84|(3:86|(1:88)(1:745)|89)(1:746)|90|(1:92)(1:744)|93|(2:97|(1:99)(1:(83:(1:106)(1:742)|(1:108)|109|(3:111|(1:113)(1:115)|114)|116|(2:118|(1:120)(1:729))(2:730|(2:732|(2:734|(1:736)(1:737))(2:738|(1:740)(1:741))))|121|(2:699|(2:726|(1:728))(2:703|(2:705|(1:707))(2:708|(2:710|(1:712))(2:713|(4:715|(1:717)(1:721)|718|(1:720))))))(2:125|(1:127))|128|129|(1:131)|132|(1:134)|135|(3:137|(1:139)(1:141)|140)|142|(1:144)(1:696)|145|(1:147)|148|(1:695)(1:154)|155|(1:157)(1:694)|158|(1:693)(1:162)|163|164|(3:166|(1:168)|169)(2:649|(54:676|(1:678)(1:691)|679|(2:680|(3:682|(2:684|685)(2:687|688)|686)(1:689))|690|171|(1:173)|174|(2:176|(2:178|(2:182|(1:184)(2:185|(2:187|(1:189)))))(1:190))|191|(2:193|(2:195|(2:199|(1:201)(2:202|(2:204|(1:206)))))(1:559))(1:(4:(3:571|(2:573|(2:577|(1:579)(2:580|(2:582|(1:584)))))(1:647)|585)(1:648)|(5:587|(1:589)(1:645)|590|(4:592|(1:594)(1:639)|595|(1:599))(3:640|(1:642)(1:644)|643)|600)(1:646)|601|(2:603|(6:605|(3:607|(1:609)(1:611)|610)|612|(3:614|(1:616)(1:618)|617)|619|(1:623))(5:624|(3:626|(1:628)(1:630)|629)|631|(3:633|(1:635)(1:637)|636)|638)))(3:564|(2:566|(1:568))|569))|(7:(1:209)|210|(1:212)|213|(1:224)(1:217)|218|(1:222))|225|(1:558)(1:229)|230|(4:232|(1:509)(1:236)|237|(2:238|(1:240)(1:241)))(2:510|(8:535|536|(2:538|(2:540|(1:542)))|543|544|(1:554)(1:548)|549|(2:550|(1:552)(1:553)))(2:514|(4:519|(1:529)(1:523)|524|(2:525|(1:527)(1:528)))(1:518)))|242|(1:244)|245|246|247|(1:249)(1:507)|250|251|252|253|(3:255|(1:260)|261)|262|264|265|(1:501)(2:(2:272|(1:495)(1:278))|279)|280|(3:282|(3:284|(2:301|302)|299)|303)|304|(1:494)(1:308)|309|(15:314|(2:316|(1:320))|321|322|323|324|325|326|327|328|(10:330|(6:334|(1:336)|337|(1:364)(2:341|(1:343)(2:349|(1:351)(2:352|(3:354|(1:356)(1:358)|357)(1:359))))|344|(2:346|(1:348)))|365|(4:369|(1:(1:379)(2:371|(1:373)(2:374|375)))|376|(1:378))|380|(4:384|(1:(1:394)(2:386|(1:388)(2:389|390)))|391|(1:393))|395|(2:401|(1:403))|404|(4:408|(1:410)|411|412))(10:430|(5:434|(1:436)|437|(4:439|(1:441)|442|(1:444))|445)|446|(4:450|(1:452)|453|454)|455|(4:459|(1:461)|462|463)|464|(4:468|(1:470)|471|472)|473|(1:477))|413|(3:(1:427)(1:422)|423|(1:425)(1:426))|428|429)|485|(1:488)|489|(1:491)(1:493)|492|322|323|324|325|326|327|328|(0)(0)|413|(6:415|417|(1:420)|427|423|(0)(0))|428|429)(8:653|(1:655)(1:675)|656|(1:658)(1:674)|659|(1:661)(1:673)|662|(2:663|(3:665|(2:667|668)(2:670|671)|669)(1:672))))|170|171|(0)|174|(0)|191|(0)(0)|(0)|225|(1:227)|558|230|(0)(0)|242|(0)|245|246|247|(0)(0)|250|251|252|253|(0)|262|264|265|(1:267)|497|499|501|280|(0)|304|(1:306)|494|309|(16:311|314|(0)|321|322|323|324|325|326|327|328|(0)(0)|413|(0)|428|429)|485|(1:488)|489|(0)(0)|492|322|323|324|325|326|327|328|(0)(0)|413|(0)|428|429)(2:102|(1:104))))|743|109|(0)|116|(0)(0)|121|(1:123)|699|(1:701)|722|724|726|(0)|128|129|(0)|132|(0)|135|(0)|142|(0)(0)|145|(0)|148|(1:150)|695|155|(0)(0)|158|(1:160)|693|163|164|(0)(0)|170|171|(0)|174|(0)|191|(0)(0)|(0)|225|(0)|558|230|(0)(0)|242|(0)|245|246|247|(0)(0)|250|251|252|253|(0)|262|264|265|(0)|497|499|501|280|(0)|304|(0)|494|309|(0)|485|(0)|489|(0)(0)|492|322|323|324|325|326|327|328|(0)(0)|413|(0)|428|429) */
    /* JADX WARN: Code restructure failed: missing block: B:1063:0x166e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1064:0x166f, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1340:0x1e56, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1341:0x1e57, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1418:0x1fab, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1420:0x1fad, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1421:0x1fae, code lost:
        r9 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1422:0x1fb0, code lost:
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1423:0x1fb2, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1424:0x1fb3, code lost:
        r9 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1425:0x1fb5, code lost:
        r50.messageLayout = null;
        org.telegram.messenger.FileLog.m99e(r0);
        r8 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x05f4, code lost:
        if (r1.post_messages == false) goto L843;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0600, code lost:
        if (r1.kicked != false) goto L843;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x060e, code lost:
        if (r50.isTopic == false) goto L843;
     */
    /* JADX WARN: Code restructure failed: missing block: B:888:0x123b, code lost:
        if (r4 == null) goto L902;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x1514  */
    /* JADX WARN: Removed duplicated region for block: B:1025:0x157f  */
    /* JADX WARN: Removed duplicated region for block: B:1028:0x1584 A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1031:0x1592 A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1038:0x15c8  */
    /* JADX WARN: Removed duplicated region for block: B:1039:0x15ca  */
    /* JADX WARN: Removed duplicated region for block: B:1042:0x15d1 A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x15f4 A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1053:0x160f A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1054:0x162e A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1057:0x164f A[Catch: Exception -> 0x166e, TryCatch #1 {Exception -> 0x166e, blocks: (B:1023:0x1576, B:1026:0x1580, B:1028:0x1584, B:1029:0x158e, B:1031:0x1592, B:1035:0x15ac, B:1036:0x15b5, B:1040:0x15cb, B:1042:0x15d1, B:1043:0x15dd, B:1045:0x15f4, B:1047:0x15fa, B:1051:0x160b, B:1053:0x160f, B:1055:0x164b, B:1057:0x164f, B:1059:0x1658, B:1061:0x1662, B:1054:0x162e), top: B:1571:0x1576 }] */
    /* JADX WARN: Removed duplicated region for block: B:1067:0x1686  */
    /* JADX WARN: Removed duplicated region for block: B:1072:0x16eb  */
    /* JADX WARN: Removed duplicated region for block: B:1112:0x18cc  */
    /* JADX WARN: Removed duplicated region for block: B:1115:0x18db  */
    /* JADX WARN: Removed duplicated region for block: B:1132:0x194f  */
    /* JADX WARN: Removed duplicated region for block: B:1147:0x19d7  */
    /* JADX WARN: Removed duplicated region for block: B:1238:0x1c24  */
    /* JADX WARN: Removed duplicated region for block: B:1257:0x1c7a  */
    /* JADX WARN: Removed duplicated region for block: B:1264:0x1c90  */
    /* JADX WARN: Removed duplicated region for block: B:1275:0x1cbb  */
    /* JADX WARN: Removed duplicated region for block: B:1323:0x1d77  */
    /* JADX WARN: Removed duplicated region for block: B:1327:0x1d98 A[Catch: Exception -> 0x1deb, TryCatch #4 {Exception -> 0x1deb, blocks: (B:1325:0x1d90, B:1327:0x1d98, B:1328:0x1de8), top: B:1578:0x1d90 }] */
    /* JADX WARN: Removed duplicated region for block: B:1328:0x1de8 A[Catch: Exception -> 0x1deb, TRY_LEAVE, TryCatch #4 {Exception -> 0x1deb, blocks: (B:1325:0x1d90, B:1327:0x1d98, B:1328:0x1de8), top: B:1578:0x1d90 }] */
    /* JADX WARN: Removed duplicated region for block: B:1332:0x1e01 A[Catch: Exception -> 0x1e56, TryCatch #5 {Exception -> 0x1e56, blocks: (B:1330:0x1dfb, B:1332:0x1e01, B:1334:0x1e05, B:1337:0x1e0a, B:1338:0x1e31), top: B:1581:0x1dfb }] */
    /* JADX WARN: Removed duplicated region for block: B:1344:0x1e5e A[Catch: Exception -> 0x1fb2, TryCatch #7 {Exception -> 0x1fb2, blocks: (B:1342:0x1e5a, B:1344:0x1e5e, B:1352:0x1e78, B:1355:0x1e7e, B:1357:0x1e84, B:1359:0x1e88, B:1361:0x1e9b, B:1364:0x1eca, B:1366:0x1ece, B:1368:0x1ee0, B:1370:0x1ee6, B:1372:0x1eea, B:1374:0x1eee, B:1376:0x1ef2, B:1378:0x1ef6, B:1380:0x1efa, B:1383:0x1f07, B:1382:0x1f04, B:1384:0x1f0a, B:1386:0x1f0e, B:1388:0x1f12, B:1390:0x1f17, B:1392:0x1f1b, B:1395:0x1f20, B:1397:0x1f24, B:1399:0x1f35, B:1401:0x1f3b, B:1402:0x1f4e, B:1404:0x1f61, B:1407:0x1f68, B:1408:0x1f6e, B:1412:0x1f82, B:1389:0x1f15, B:1362:0x1eb8, B:1346:0x1e62, B:1348:0x1e66, B:1350:0x1e6b), top: B:1585:0x1e5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1366:0x1ece A[Catch: Exception -> 0x1fb2, TryCatch #7 {Exception -> 0x1fb2, blocks: (B:1342:0x1e5a, B:1344:0x1e5e, B:1352:0x1e78, B:1355:0x1e7e, B:1357:0x1e84, B:1359:0x1e88, B:1361:0x1e9b, B:1364:0x1eca, B:1366:0x1ece, B:1368:0x1ee0, B:1370:0x1ee6, B:1372:0x1eea, B:1374:0x1eee, B:1376:0x1ef2, B:1378:0x1ef6, B:1380:0x1efa, B:1383:0x1f07, B:1382:0x1f04, B:1384:0x1f0a, B:1386:0x1f0e, B:1388:0x1f12, B:1390:0x1f17, B:1392:0x1f1b, B:1395:0x1f20, B:1397:0x1f24, B:1399:0x1f35, B:1401:0x1f3b, B:1402:0x1f4e, B:1404:0x1f61, B:1407:0x1f68, B:1408:0x1f6e, B:1412:0x1f82, B:1389:0x1f15, B:1362:0x1eb8, B:1346:0x1e62, B:1348:0x1e66, B:1350:0x1e6b), top: B:1585:0x1e5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1386:0x1f0e A[Catch: Exception -> 0x1fb2, TryCatch #7 {Exception -> 0x1fb2, blocks: (B:1342:0x1e5a, B:1344:0x1e5e, B:1352:0x1e78, B:1355:0x1e7e, B:1357:0x1e84, B:1359:0x1e88, B:1361:0x1e9b, B:1364:0x1eca, B:1366:0x1ece, B:1368:0x1ee0, B:1370:0x1ee6, B:1372:0x1eea, B:1374:0x1eee, B:1376:0x1ef2, B:1378:0x1ef6, B:1380:0x1efa, B:1383:0x1f07, B:1382:0x1f04, B:1384:0x1f0a, B:1386:0x1f0e, B:1388:0x1f12, B:1390:0x1f17, B:1392:0x1f1b, B:1395:0x1f20, B:1397:0x1f24, B:1399:0x1f35, B:1401:0x1f3b, B:1402:0x1f4e, B:1404:0x1f61, B:1407:0x1f68, B:1408:0x1f6e, B:1412:0x1f82, B:1389:0x1f15, B:1362:0x1eb8, B:1346:0x1e62, B:1348:0x1e66, B:1350:0x1e6b), top: B:1585:0x1e5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1392:0x1f1b A[Catch: Exception -> 0x1fb2, TryCatch #7 {Exception -> 0x1fb2, blocks: (B:1342:0x1e5a, B:1344:0x1e5e, B:1352:0x1e78, B:1355:0x1e7e, B:1357:0x1e84, B:1359:0x1e88, B:1361:0x1e9b, B:1364:0x1eca, B:1366:0x1ece, B:1368:0x1ee0, B:1370:0x1ee6, B:1372:0x1eea, B:1374:0x1eee, B:1376:0x1ef2, B:1378:0x1ef6, B:1380:0x1efa, B:1383:0x1f07, B:1382:0x1f04, B:1384:0x1f0a, B:1386:0x1f0e, B:1388:0x1f12, B:1390:0x1f17, B:1392:0x1f1b, B:1395:0x1f20, B:1397:0x1f24, B:1399:0x1f35, B:1401:0x1f3b, B:1402:0x1f4e, B:1404:0x1f61, B:1407:0x1f68, B:1408:0x1f6e, B:1412:0x1f82, B:1389:0x1f15, B:1362:0x1eb8, B:1346:0x1e62, B:1348:0x1e66, B:1350:0x1e6b), top: B:1585:0x1e5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1397:0x1f24 A[Catch: Exception -> 0x1fb2, TryCatch #7 {Exception -> 0x1fb2, blocks: (B:1342:0x1e5a, B:1344:0x1e5e, B:1352:0x1e78, B:1355:0x1e7e, B:1357:0x1e84, B:1359:0x1e88, B:1361:0x1e9b, B:1364:0x1eca, B:1366:0x1ece, B:1368:0x1ee0, B:1370:0x1ee6, B:1372:0x1eea, B:1374:0x1eee, B:1376:0x1ef2, B:1378:0x1ef6, B:1380:0x1efa, B:1383:0x1f07, B:1382:0x1f04, B:1384:0x1f0a, B:1386:0x1f0e, B:1388:0x1f12, B:1390:0x1f17, B:1392:0x1f1b, B:1395:0x1f20, B:1397:0x1f24, B:1399:0x1f35, B:1401:0x1f3b, B:1402:0x1f4e, B:1404:0x1f61, B:1407:0x1f68, B:1408:0x1f6e, B:1412:0x1f82, B:1389:0x1f15, B:1362:0x1eb8, B:1346:0x1e62, B:1348:0x1e66, B:1350:0x1e6b), top: B:1585:0x1e5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1406:0x1f66 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1410:0x1f7d  */
    /* JADX WARN: Removed duplicated region for block: B:1411:0x1f80  */
    /* JADX WARN: Removed duplicated region for block: B:1428:0x1fd0  */
    /* JADX WARN: Removed duplicated region for block: B:1506:0x218c  */
    /* JADX WARN: Removed duplicated region for block: B:1553:0x2268  */
    /* JADX WARN: Removed duplicated region for block: B:1564:0x22a5  */
    /* JADX WARN: Removed duplicated region for block: B:1565:0x22ad  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0618  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x094c  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0951  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0b45  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:732:0x0fb5  */
    /* JADX WARN: Removed duplicated region for block: B:740:0x0fd9  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x0fe6  */
    /* JADX WARN: Removed duplicated region for block: B:744:0x0fee  */
    /* JADX WARN: Removed duplicated region for block: B:753:0x100c  */
    /* JADX WARN: Removed duplicated region for block: B:754:0x1020  */
    /* JADX WARN: Removed duplicated region for block: B:795:0x10c0  */
    /* JADX WARN: Removed duplicated region for block: B:796:0x10c5  */
    /* JADX WARN: Removed duplicated region for block: B:799:0x10cc  */
    /* JADX WARN: Removed duplicated region for block: B:800:0x10cf  */
    /* JADX WARN: Removed duplicated region for block: B:860:0x11a2  */
    /* JADX WARN: Removed duplicated region for block: B:864:0x11b5  */
    /* JADX WARN: Removed duplicated region for block: B:865:0x11bf  */
    /* JADX WARN: Removed duplicated region for block: B:875:0x11f9  */
    /* JADX WARN: Removed duplicated region for block: B:880:0x120e  */
    /* JADX WARN: Removed duplicated region for block: B:925:0x12d6  */
    /* JADX WARN: Removed duplicated region for block: B:929:0x1325  */
    /* JADX WARN: Removed duplicated region for block: B:932:0x1338  */
    /* JADX WARN: Removed duplicated region for block: B:937:0x136c  */
    /* JADX WARN: Removed duplicated region for block: B:940:0x1373  */
    /* JADX WARN: Removed duplicated region for block: B:941:0x1383  */
    /* JADX WARN: Removed duplicated region for block: B:948:0x13af  */
    /* JADX WARN: Removed duplicated region for block: B:949:0x13b9  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x1406  */
    /* JADX WARN: Removed duplicated region for block: B:970:0x1422  */
    /* JADX WARN: Removed duplicated region for block: B:974:0x1451  */
    /* JADX WARN: Removed duplicated region for block: B:988:0x14d2  */
    /* JADX WARN: Removed duplicated region for block: B:995:0x14f4  */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v40, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r11v8, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r1v101, types: [android.text.SpannableStringBuilder, java.lang.CharSequence, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r50v0, types: [android.view.View, org.telegram.ui.Cells.DialogCell, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r5v43, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r9v31, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout(boolean r51) {
        /*
            Method dump skipped, instructions count: 8895
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
                        ceil += AndroidUtilities.m104dp(3);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + ceil + AndroidUtilities.m104dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.insert(0, (CharSequence) " ");
            valueOf.setSpan(new FixedWidthSpan(AndroidUtilities.m104dp((((this.thumbSize + 2) * this.thumbsCount) - 2) + 5)), 0, 1, 33);
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
                        canvas.translate(AndroidUtilities.m104dp(4) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
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
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.m104dp(60)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.m104dp(60))) && f < ((float) getMeasuredWidth());
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
        if (com.iMe.fork.controller.ForkTopicsController.getInstance(r33.currentAccount).hasSelectedTopic(r33.folderId == 1) == false) goto L96;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x07ab  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x07bb  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c5  */
    /* JADX WARN: Type inference failed for: r6v131 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$EncryptedChat] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2220
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
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0568, code lost:
        if (r41.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L836;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x06f4, code lost:
        if (r41.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L826;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0c05, code lost:
        if (r7.lastKnownTypingType >= 0) goto L192;
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x05f4  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0602  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0a83  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0ba1  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0bab  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0bf7  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0ca6  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0e64  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0e72  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0e74  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0e7a  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0e7c  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0e82 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:467:0x0e8f  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0e95  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0e97  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0e9c  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0e9e  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0ea2  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0ea4  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0ea7  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0f0b  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0f24  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0f26  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0f2c  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0f2f  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0f3e  */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0f4a  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x0f54 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0fae  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0fb9  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x0fdc  */
    /* JADX WARN: Removed duplicated region for block: B:572:0x0fe5  */
    /* JADX WARN: Removed duplicated region for block: B:580:0x1008  */
    /* JADX WARN: Removed duplicated region for block: B:583:0x1013  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x1067  */
    /* JADX WARN: Removed duplicated region for block: B:594:0x107d  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x10eb  */
    /* JADX WARN: Removed duplicated region for block: B:671:0x11c8  */
    /* JADX WARN: Removed duplicated region for block: B:680:0x11f2  */
    /* JADX WARN: Removed duplicated region for block: B:686:0x1202  */
    /* JADX WARN: Removed duplicated region for block: B:687:0x124f  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x13fa  */
    /* JADX WARN: Removed duplicated region for block: B:751:0x1414  */
    /* JADX WARN: Removed duplicated region for block: B:783:0x1597  */
    /* JADX WARN: Removed duplicated region for block: B:784:0x159b  */
    /* JADX WARN: Removed duplicated region for block: B:787:0x15a8  */
    /* JADX WARN: Removed duplicated region for block: B:790:0x15c8  */
    /* JADX WARN: Removed duplicated region for block: B:808:0x15f7  */
    /* JADX WARN: Removed duplicated region for block: B:811:0x1602  */
    /* JADX WARN: Removed duplicated region for block: B:816:0x1610  */
    /* JADX WARN: Removed duplicated region for block: B:820:0x1618  */
    /* JADX WARN: Removed duplicated region for block: B:822:0x161c  */
    /* JADX WARN: Removed duplicated region for block: B:835:0x167f  */
    /* JADX WARN: Removed duplicated region for block: B:839:0x16a2  */
    /* JADX WARN: Removed duplicated region for block: B:842:0x16ab  */
    /* JADX WARN: Removed duplicated region for block: B:845:0x16b2  */
    /* JADX WARN: Removed duplicated region for block: B:860:0x16f5  */
    /* JADX WARN: Removed duplicated region for block: B:890:0x1775  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x17c6  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x17ce  */
    /* JADX WARN: Removed duplicated region for block: B:904:0x17de  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x17f3  */
    /* JADX WARN: Removed duplicated region for block: B:920:0x181b  */
    /* JADX WARN: Removed duplicated region for block: B:931:0x1848  */
    /* JADX WARN: Removed duplicated region for block: B:937:0x185e  */
    /* JADX WARN: Removed duplicated region for block: B:948:0x1885  */
    /* JADX WARN: Removed duplicated region for block: B:959:0x18a6  */
    /* JADX WARN: Removed duplicated region for block: B:978:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r42) {
        /*
            Method dump skipped, instructions count: 6346
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

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0040, code lost:
        if (r5 > 0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0534  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0121  */
    @Override // org.telegram.p043ui.Stories.StoriesListPlaceProvider.AvatarOverlaysView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawAvatarOverlays(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 1471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.drawAvatarOverlays(android.graphics.Canvas):boolean");
    }

    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        int m105dp;
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
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.m104dp(2));
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
            this.rect.set(i2 - AndroidUtilities.m105dp(5.5f), i, m105dp + this.countWidth + AndroidUtilities.m104dp(11), AndroidUtilities.m104dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m105dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m105dp(11.5f), AndroidUtilities.m105dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m105dp(11.5f), AndroidUtilities.m105dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.m104dp(4));
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
            float m105dp2 = f8 - AndroidUtilities.m105dp(5.5f);
            float f9 = i;
            this.rect.set(m105dp2, f9, (this.countWidth * f6) + m105dp2 + (this.countWidthOld * f7) + AndroidUtilities.m104dp(11), AndroidUtilities.m104dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m105dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m105dp(11.5f), AndroidUtilities.m105dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m105dp(11.5f), AndroidUtilities.m105dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.m104dp(4));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m104dp(13) : -AndroidUtilities.m104dp(13)) * f7) + f9 + AndroidUtilities.m104dp(4));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m104dp(13) : -AndroidUtilities.m104dp(13)) * f7) + f9 + AndroidUtilities.m104dp(4));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f7));
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.m104dp(13) : AndroidUtilities.m104dp(13)) * f6) + f9 + AndroidUtilities.m104dp(4));
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
                pullForegroundDrawable.outCy = AndroidUtilities.m104dp(24);
                this.archivedChatsDrawable.outCx = AndroidUtilities.m104dp(24);
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
        if (i == C3634R.C3637id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3634R.C3637id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3634R.string.AccActionChatPreview)));
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
            sb.append(i == 2 ? LocaleController.getInternalString(C3634R.string.hidden_chats_title) : LocaleController.getString("ArchivedChats", C3634R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3634R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3634R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3634R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3634R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3634R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3634R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3634R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3634R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3634R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3634R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3634R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3634R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3634R.string.AccDescrReceivedDate, formatDateAudio));
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
                this.thumbImage[i].setRoundRadius(AndroidUtilities.m104dp(messageObject.isRoundVideo() ? 18 : 2));
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
        TLRPC$Message tLRPC$Message2;
        TLRPC$User user;
        MessageObject messageObject = this.message;
        TLRPC$User tLRPC$User = null;
        if (messageObject == null) {
            return null;
        }
        long fromChatId = messageObject.getFromChatId();
        if (DialogObject.isUserDialog(fromChatId)) {
            tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(fromChatId));
            chat = null;
        } else {
            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-fromChatId));
        }
        if (this.message.isOutOwner()) {
            return LocaleController.getString("FromYou", C3634R.string.FromYou);
        }
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null && (tLRPC$Message2 = messageObject2.messageOwner) != null && (tLRPC$Message2.from_id instanceof TLRPC$TL_peerUser) && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
            return UserObject.getFirstName(user).replace("\n", "");
        }
        MessageObject messageObject3 = this.message;
        if (messageObject3 == null || (tLRPC$Message = messageObject3.messageOwner) == null || (tLRPC$MessageFwdHeader = tLRPC$Message.fwd_from) == null || (str2 = tLRPC$MessageFwdHeader.from_name) == null) {
            if (tLRPC$User == null) {
                return (chat == null || (str = chat.title) == null) ? "DELETED" : str.replace("\n", "");
            } else if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                if (UserObject.isDeleted(tLRPC$User)) {
                    return LocaleController.getString("HiddenName", C3634R.string.HiddenName);
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
                if ((this.message.topicIconDrawable[0] instanceof ForumBubbleDrawable) && (findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.message.messageOwner, true))) != null) {
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
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m104dp((this.messagePaddingStart + 23) + 24);
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
                FileLog.m99e(e);
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
                    int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.m104dp((this.messagePaddingStart + 23) + 10);
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
        if ((dialogCellDelegate == null || dialogCellDelegate.canClickButtonInside()) && this.lastTopicMessageUnread && (canvasButton = this.canvasButton) != null && this.buttonLayout != null && canvasButton.checkTouchEvent(motionEvent)) {
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

        /* JADX WARN: Code restructure failed: missing block: B:45:0x0131, code lost:
            if (org.telegram.messenger.MessagesController.getInstance(r16.this$0.currentAccount).getTopicsController().endIsReached(-r16.this$0.currentDialogId) != false) goto L116;
         */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0229  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x025a  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x025e  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x0263  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x013c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0163  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x021d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean update() {
            /*
                Method dump skipped, instructions count: 656
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
            int i3;
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
                        if (messageObject != null) {
                            i2 = MessageObject.getTopicId(messageObject.messageOwner, true);
                            TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(i).getTopicsController().findTopic(tLRPC$Chat.f1602id, i2);
                            if (findTopic != null) {
                                CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(findTopic, textPaint, false);
                                spannableStringBuilder.append(topicSpannedName);
                                i3 = findTopic.unread_count > 0 ? topicSpannedName.length() : 0;
                                this.topMessageTopicStartIndex = 0;
                                this.topMessageTopicEndIndex = topicSpannedName.length();
                                if (messageObject.isOutOwner()) {
                                    this.lastTopicMessageUnread = false;
                                } else {
                                    this.lastTopicMessageUnread = findTopic.unread_count > 0;
                                }
                            } else {
                                this.lastTopicMessageUnread = false;
                                i3 = 0;
                            }
                            if (this.lastTopicMessageUnread) {
                                spannableStringBuilder.append((CharSequence) " ");
                                spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.m104dp(3)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
                                z = true;
                            } else {
                                z = false;
                            }
                        } else {
                            z = false;
                            i2 = 0;
                            i3 = 0;
                        }
                        for (int i4 = 0; i4 < Math.min(4, arrayList.size()); i4++) {
                            if (((TLRPC$TL_forumTopic) arrayList.get(i4)).f1658id != i2) {
                                if (spannableStringBuilder.length() != 0) {
                                    if (z2 && z) {
                                        spannableStringBuilder.append((CharSequence) " ");
                                    } else {
                                        spannableStringBuilder.append((CharSequence) ", ");
                                    }
                                }
                                spannableStringBuilder.append(ForumUtilities.getTopicSpannedName((TLRPC$ForumTopic) arrayList.get(i4), textPaint, false));
                                z2 = false;
                            }
                        }
                        if (i3 > 0) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM), 0, Theme.key_chats_name, null), 0, Math.min(spannableStringBuilder.length(), i3 + 2), 0);
                        }
                        this.formattedNames = spannableStringBuilder;
                    } else if (!MessagesController.getInstance(i).getTopicsController().endIsReached(tLRPC$Chat.f1602id)) {
                        MessagesController.getInstance(i).getTopicsController().preloadTopics(tLRPC$Chat.f1602id);
                        this.formattedNames = LocaleController.getString("Loading", C3634R.string.Loading);
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
}
