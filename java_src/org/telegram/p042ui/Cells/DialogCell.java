package org.telegram.p042ui.Cells;

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
import org.telegram.messenger.C3630R;
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
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Adapters.DialogsAdapter;
import org.telegram.p042ui.Components.AnimatedEmojiDrawable;
import org.telegram.p042ui.Components.AnimatedEmojiSpan;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.p042ui.Components.BubbleCounterPath;
import org.telegram.p042ui.Components.CanvasButton;
import org.telegram.p042ui.Components.CheckBox2;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.ForegroundColorSpanThemable;
import org.telegram.p042ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p042ui.Components.Forum.ForumUtilities;
import org.telegram.p042ui.Components.PullForegroundDrawable;
import org.telegram.p042ui.Components.RLottieDrawable;
import org.telegram.p042ui.Components.TimerDrawable;
import org.telegram.p042ui.Components.TypefaceSpan;
import org.telegram.p042ui.Components.spoilers.SpoilerEffect;
import org.telegram.p042ui.DialogsActivity;
import org.telegram.p042ui.Stories.StoriesListPlaceProvider;
import org.telegram.p042ui.Stories.StoriesUtilities;
import org.telegram.p042ui.Stories.StoryViewer;
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
import org.telegram.tgnet.TLRPC$StoryItem;
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
    public boolean useForceThreeLines;
    public boolean useFromUserAsAvatar;
    private boolean useMeForMyMessages;
    public boolean useSeparator;
    private TLRPC$User user;
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
        public int f1791id;
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

    public boolean checkCurrentDialogIndex(boolean z) {
        return false;
    }

    protected boolean drawLock2() {
        return false;
    }

    @Override // org.telegram.p042ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1657id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
            @Override // org.telegram.p042ui.Stories.StoriesUtilities.AvatarStoryParams
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

            @Override // org.telegram.p042ui.Stories.StoriesUtilities.AvatarStoryParams
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
        this.avatarImage.setRoundRadius(AndroidUtilities.m102dp(28));
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                ImageReceiver[] imageReceiverArr2 = this.thumbImage;
                imageReceiverArr2[i2].ignoreNotifications = true;
                imageReceiverArr2[i2].setRoundRadius(AndroidUtilities.m102dp(2));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m102dp(22));
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                return;
            }
        }
    }

    public void setDialog(TLRPC$Dialog tLRPC$Dialog, int i, int i2, boolean z) {
        if (this.currentDialogId != tLRPC$Dialog.f1606id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1606id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1656id;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1762id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1762id))) {
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
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(24), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m102dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0));
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
        return AndroidUtilities.m102dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86 : (this.useSeparator ? 1 : 0) + 91);
    }

    private int getCollapsedHeight() {
        return AndroidUtilities.m102dp(this.isCompactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0) + (this.twoLinesForName ? AndroidUtilities.m102dp(20) : 0);
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
        int m103dp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int m102dp = AndroidUtilities.m102dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                m102dp = AndroidUtilities.m102dp(8);
                m103dp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    m102dp = (i3 - i) - m102dp;
                }
                m103dp = AndroidUtilities.m103dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            if (this.isCompactMode) {
                if (this.isTopic) {
                    m103dp = calcCompactDrawingElementTop(this.checkBox.getMeasuredHeight());
                } else {
                    m102dp = AndroidUtilities.m102dp(37);
                    m103dp = AndroidUtilities.m102dp(23);
                }
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m102dp, m103dp, checkBox2.getMeasuredWidth() + m102dp, this.checkBox.getMeasuredHeight() + m103dp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize) {
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m97e(e);
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
            if (!messagesController.isHiddenByUndo(tLRPC$Dialog.f1606id)) {
                TLRPC$Chat tLRPC$Chat = null;
                if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1606id)) {
                    TLRPC$EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1606id)));
                    tLRPC$User = encryptedChat != null ? messagesController.getUser(Long.valueOf(encryptedChat.user_id)) : null;
                } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1606id)) {
                    tLRPC$User = messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1606id));
                } else {
                    tLRPC$Chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1606id));
                    tLRPC$User = null;
                }
                if (tLRPC$Chat != null) {
                    replace = tLRPC$Chat.title.replace('\n', ' ');
                } else if (tLRPC$User == null) {
                    continue;
                } else if (UserObject.isDeleted(tLRPC$User)) {
                    replace = LocaleController.getString("HiddenName", C3630R.string.HiddenName);
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
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), AndroidUtilities.m102dp(17), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(110:15|(1:1543)(1:19)|20|(1:1542)(1:26)|27|(1:1541)(1:31)|32|(1:34)|35|(2:37|(1:1530)(1:41))(2:1531|(1:1540)(1:1535))|42|(1:44)|45|(1:47)(1:1525)|48|(7:50|(1:52)|53|54|(1:56)|57|58)|59|(9:61|(2:63|(1:65)(2:751|(2:759|(1:761)(1:762))(2:755|(1:757)(1:758))))(4:763|(1:783)(1:767)|768|(1:770)(2:771|(2:779|(1:781)(1:782))(2:775|(1:777)(1:778))))|66|(3:68|(1:70)(4:738|(1:740)|741|(1:746)(1:745))|71)(3:747|(1:749)|750)|72|(1:74)(1:737)|75|(1:77)(1:(1:733)(1:(1:735)(1:736)))|78)(29:784|(1:786)(2:1513|(2:1521|(1:1523)(1:1524))(2:1517|(1:1519)(1:1520)))|787|(2:789|(2:791|(1:793)(2:794|(2:802|(1:804)(1:805))(2:798|(1:800)(1:801)))))(2:1458|(2:1460|(2:1462|(1:1464)(2:1465|(1:1467)(3:1468|(1:1474)(1:1472)|1473)))(2:1475|(31:1477|(1:1479)(2:1503|(1:1505)(3:1506|(1:1512)(1:1510)|1511))|1480|(2:1482|(21:1490|1491|(2:1493|(2:1497|(1:1499)(1:1500))(1:1496))|807|(1:811)|812|(2:814|(1:818))(2:1454|(1:1456)(1:1457))|819|(6:1432|(2:1434|(2:1436|(2:1438|(1:1440))))|1442|(2:1444|(1:1446))|1448|(13:1450|(1:1452)|826|(7:828|(1:830)(1:1014)|831|(1:833)(1:1013)|834|(1:839)|840)(3:(6:1016|(1:1018)(1:1426)|1019|(1:1021)(1:1425)|(1:1023)(1:1424)|1024)(1:1427)|1025|(4:1027|(2:1029|(3:1036|1037|1035)(1:1033))(7:1038|(1:1040)|1041|(3:1045|(1:1047)(1:1049)|1048)|1050|(1:1054)|1055)|1034|1035)(4:1056|(1:1058)(2:1060|(2:1062|(1:1064)(5:1065|(2:1067|(1:1069)(2:1070|(1:1072)(2:1073|(1:1075)(2:1076|(2:1078|(1:1080)(1:1081))))))(2:1083|(1:1087))|1082|1037|1035))(11:1088|(1:1090)(1:1423)|1091|(2:1105|(8:1107|(7:1111|(1:1113)(3:1416|(1:1418)(1:1420)|1419)|(6:1128|(3:1130|(4:1132|(2:1134|(2:1136|(1:1138)(2:1141|(1:1143)(1:1144))))|1145|(1:1147)(2:1148|(1:1150)(2:1151|(1:1153)(1:1154))))(1:1155)|1139)(2:1156|(5:1161|(2:1172|(2:1188|(8:1252|(2:1254|(4:1256|(1:1267)|1262|(2:1264|(1:1266)))(2:1268|(4:1275|(2:1277|(1:1282))|1283|(5:1285|(1:1287)(2:1310|(1:1312)(2:1313|(1:1315)(2:1316|(1:1318)(2:1319|(1:1321)(1:1322)))))|1288|(3:1302|(3:1304|(1:1306)(1:1308)|1307)|1309)(4:1292|(2:1294|(1:1296)(1:1297))|(1:1299)|1300)|1301)(2:1323|(3:1325|(3:1327|(1:1329)(1:1332)|1330)(3:1333|(1:1335)(1:1337)|1336)|1331)(5:1338|(1:1340)(2:1347|(1:1349)(2:1350|(1:1352)(2:1353|(1:1355)(2:1356|(3:1370|(4:1376|(1:1378)|1379|(2:1381|(3:1383|(1:1385)(1:1387)|1386)))(1:1374)|1375)(2:1360|(3:1362|(2:1364|(1:1366))(1:1368)|1367)(1:1369))))))|1341|1342|(2:1344|(1:1346)))))(1:1274)))|1388|(1:1390)|1391|(7:1393|(3:1408|(1:1410)|1411)(1:1397)|1398|(1:1400)(1:1407)|1401|(1:1405)|1406)|1412|(1:1414)(1:1415))(13:1199|(2:1205|(12:1207|(1:1250)(1:1211)|1212|1213|(1:1249)(5:1219|1220|1221|1222|1223)|1224|(1:1228)|1229|(4:1231|(1:1233)|1234|(1:1236)(1:1237))|1238|1117|(5:1119|(1:1121)(1:1126)|1122|(1:1124)|1125)(1:1127)))|1251|1213|(2:1215|1245)|1249|1224|(2:1226|1228)|1229|(0)|1238|1117|(0)(0)))(4:1178|(1:1187)(1:1182)|1183|(1:1185)(1:1186)))(3:1167|(1:1169)(1:1171)|1170)|1116|1117|(0)(0))(1:1160))|1140|1116|1117|(0)(0))|1115|1116|1117|(0)(0))|1421|(0)|1115|1116|1117|(0)(0)))|1422|1421|(0)|1115|1116|1117|(0)(0)))|1059|1035))|841|(1:843)(2:1006|(1:1008)(2:1009|(1:1011)(1:1012)))|844|(1:846)(5:910|(5:912|(1:914)(2:970|(1:(3:973|916|917)(2:974|917))(1:975))|915|916|917)(7:976|(1:978)(6:988|(2:1002|(1:1004)(1:1005))(2:996|(1:1001)(1:1000))|980|(1:982)(1:987)|983|(1:985)(1:986))|979|980|(0)(0)|983|(0)(0))|918|(2:923|(2:929|(1:931)(2:932|(1:934)(2:935|(3:937|(3:939|(1:941)(1:944)|942)(2:945|(3:947|(1:959)(1:951)|952)(3:960|(1:968)(1:966)|967))|943)))))|969)|847|(2:851|(1:853)(2:854|(4:856|(1:858)|859|(1:861))))|862|(2:864|(1:866)(1:868))(2:869|(3:871|(3:873|(1:875)|876)(2:883|(4:885|(1:887)|888|(1:890)(1:891))(1:892))|(1:881))(4:893|(3:895|(1:897)(2:898|(2:900|(1:902)(4:903|(1:905)|906|(1:908)))(1:909))|(2:879|881))|882|(0)))|867))|825|826|(0)(0)|841|(0)(0)|844|(0)(0)|847|(3:849|851|(0)(0))|862|(0)(0)|867))(1:1502)|1501|1491|(0)|807|(2:809|811)|812|(0)(0)|819|(2:821|1428)|1432|(0)|1442|(0)|1448|(0)|825|826|(0)(0)|841|(0)(0)|844|(0)(0)|847|(0)|862|(0)(0)|867))))|806|807|(0)|812|(0)(0)|819|(0)|1432|(0)|1442|(0)|1448|(0)|825|826|(0)(0)|841|(0)(0)|844|(0)(0)|847|(0)|862|(0)(0)|867)|(2:80|(1:82)(1:730))(1:731)|83|(3:85|(1:87)(1:728)|88)(1:729)|89|(1:91)(1:727)|92|(2:96|(1:98)(1:(73:(1:105)(1:725)|(1:107)|108|(3:110|(1:112)(1:114)|113)|115|(2:117|(1:119)(1:712))(2:713|(2:715|(2:717|(1:719)(1:720))(2:721|(1:723)(1:724))))|120|(2:682|(2:709|(1:711))(2:686|(2:688|(1:690))(2:691|(2:693|(1:695))(2:696|(4:698|(1:700)(1:704)|701|(1:703))))))(2:124|(1:126))|127|128|(1:130)|131|(1:133)|134|(3:136|(1:138)(1:140)|139)|141|(1:143)(1:679)|144|(1:146)|147|(1:678)(1:153)|154|(1:156)(1:677)|157|(1:676)(1:161)|162|163|(3:165|(1:167)|168)(2:631|(5:659|(1:661)(1:674)|662|(2:663|(3:665|(2:667|668)(2:670|671)|669)(1:672))|673)(9:635|(1:637)(1:658)|638|(1:640)(1:657)|641|(1:643)(1:656)|644|(2:645|(3:647|(2:649|650)(2:652|653)|651)(1:654))|655))|169|(1:171)|172|(2:174|(2:176|(2:180|(1:182)(2:183|(2:185|(1:187)))))(1:188))|189|(2:191|(2:193|(2:197|(1:199)(2:200|(2:202|(1:204)))))(1:541))(1:(4:(3:553|(2:555|(2:559|(1:561)(2:562|(2:564|(1:566)))))(1:629)|567)(1:630)|(5:569|(1:571)(1:627)|572|(4:574|(1:576)(1:621)|577|(1:581))(3:622|(1:624)(1:626)|625)|582)(1:628)|583|(2:585|(6:587|(3:589|(1:591)(1:593)|592)|594|(3:596|(1:598)(1:600)|599)|601|(1:605))(5:606|(3:608|(1:610)(1:612)|611)|613|(3:615|(1:617)(1:619)|618)|620)))(3:546|(2:548|(1:550))|551))|(7:(1:207)|208|(1:210)|211|(1:222)(1:215)|216|(1:220))|223|(1:540)(1:227)|228|(4:230|(1:491)(1:234)|235|(2:236|(1:238)(1:239)))(2:492|(8:517|518|(2:520|(2:522|(1:524)))|525|526|(1:536)(1:530)|531|(2:532|(1:534)(1:535)))(2:496|(4:501|(1:511)(1:505)|506|(2:507|(1:509)(1:510)))(1:500)))|240|(1:242)|243|244|245|(1:247)(1:489)|248|249|250|251|(3:253|(1:258)|259)|260|261|(1:483)(2:(2:268|(1:477)(1:274))|275)|276|(3:278|(3:280|(2:289|290)|287)|291)|292|(1:476)(1:296)|297|(12:302|(2:304|(1:308))|309|310|311|312|313|(10:315|(6:319|(1:321)|322|(1:349)(2:326|(1:328)(2:334|(1:336)(2:337|(3:339|(1:341)(1:343)|342)(1:344))))|329|(2:331|(1:333)))|350|(4:354|(1:(1:364)(2:356|(1:358)(2:359|360)))|361|(1:363))|365|(4:369|(1:(1:379)(2:371|(1:373)(2:374|375)))|376|(1:378))|380|(2:386|(1:388))|389|(4:393|(1:395)|396|397))(10:415|(5:419|(1:421)|422|(4:424|(1:426)|427|(1:429))|430)|431|(4:435|(1:437)|438|439)|440|(4:444|(1:446)|447|448)|449|(4:453|(1:455)|456|457)|458|(1:462))|398|(3:(1:412)(1:407)|408|(1:410)(1:411))|413|414)|467|(1:470)|471|(1:473)(1:475)|474|310|311|312|313|(0)(0)|398|(6:400|402|(1:405)|412|408|(0)(0))|413|414)(2:101|(1:103))))|726|108|(0)|115|(0)(0)|120|(1:122)|682|(1:684)|705|707|709|(0)|127|128|(0)|131|(0)|134|(0)|141|(0)(0)|144|(0)|147|(1:149)|678|154|(0)(0)|157|(1:159)|676|162|163|(0)(0)|169|(0)|172|(0)|189|(0)(0)|(0)|223|(1:225)|540|228|(0)(0)|240|(0)|243|244|245|(0)(0)|248|249|250|251|(0)|260|261|(1:263)|479|481|483|276|(0)|292|(1:294)|476|297|(13:299|302|(0)|309|310|311|312|313|(0)(0)|398|(0)|413|414)|467|(1:470)|471|(0)(0)|474|310|311|312|313|(0)(0)|398|(0)|413|414) */
    /* JADX WARN: Code restructure failed: missing block: B:1041:0x1638, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1042:0x1639, code lost:
        org.telegram.messenger.FileLog.m97e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1318:0x1e23, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1319:0x1e24, code lost:
        org.telegram.messenger.FileLog.m97e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1386:0x1f74, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1387:0x1f75, code lost:
        r3 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1388:0x1f77, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1389:0x1f78, code lost:
        r50.messageLayout = null;
        org.telegram.messenger.FileLog.m97e(r0);
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x061c, code lost:
        if (r3.post_messages == false) goto L825;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0628, code lost:
        if (r3.kicked != false) goto L825;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0636, code lost:
        if (r50.isTopic == false) goto L825;
     */
    /* JADX WARN: Code restructure failed: missing block: B:867:0x121a, code lost:
        if (r4 == null) goto L882;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x1547  */
    /* JADX WARN: Removed duplicated region for block: B:1006:0x154c A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1009:0x155a A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1016:0x1590  */
    /* JADX WARN: Removed duplicated region for block: B:1017:0x1592  */
    /* JADX WARN: Removed duplicated region for block: B:1020:0x1599 A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1023:0x15bc A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1031:0x15d7 A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1032:0x15f8 A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1035:0x1619 A[Catch: Exception -> 0x1638, TryCatch #1 {Exception -> 0x1638, blocks: (B:1001:0x153e, B:1004:0x1548, B:1006:0x154c, B:1007:0x1556, B:1009:0x155a, B:1013:0x1574, B:1014:0x157d, B:1018:0x1593, B:1020:0x1599, B:1021:0x15a5, B:1023:0x15bc, B:1025:0x15c2, B:1029:0x15d3, B:1031:0x15d7, B:1033:0x1615, B:1035:0x1619, B:1037:0x1622, B:1039:0x162c, B:1032:0x15f8), top: B:1535:0x153e }] */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x1650  */
    /* JADX WARN: Removed duplicated region for block: B:1049:0x16b4  */
    /* JADX WARN: Removed duplicated region for block: B:1090:0x189e  */
    /* JADX WARN: Removed duplicated region for block: B:1093:0x18ad  */
    /* JADX WARN: Removed duplicated region for block: B:1110:0x1921  */
    /* JADX WARN: Removed duplicated region for block: B:1125:0x19a9  */
    /* JADX WARN: Removed duplicated region for block: B:1216:0x1bf0  */
    /* JADX WARN: Removed duplicated region for block: B:1235:0x1c44  */
    /* JADX WARN: Removed duplicated region for block: B:1242:0x1c5a  */
    /* JADX WARN: Removed duplicated region for block: B:1253:0x1c85  */
    /* JADX WARN: Removed duplicated region for block: B:1301:0x1d41  */
    /* JADX WARN: Removed duplicated region for block: B:1305:0x1d62 A[Catch: Exception -> 0x1db6, TryCatch #4 {Exception -> 0x1db6, blocks: (B:1303:0x1d5a, B:1305:0x1d62, B:1306:0x1db3), top: B:1541:0x1d5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1306:0x1db3 A[Catch: Exception -> 0x1db6, TRY_LEAVE, TryCatch #4 {Exception -> 0x1db6, blocks: (B:1303:0x1d5a, B:1305:0x1d62, B:1306:0x1db3), top: B:1541:0x1d5a }] */
    /* JADX WARN: Removed duplicated region for block: B:1310:0x1dcc A[Catch: Exception -> 0x1e23, TryCatch #7 {Exception -> 0x1e23, blocks: (B:1308:0x1dc6, B:1310:0x1dcc, B:1312:0x1dd0, B:1315:0x1dd5, B:1316:0x1dfe), top: B:1547:0x1dc6 }] */
    /* JADX WARN: Removed duplicated region for block: B:1322:0x1e2b A[Catch: Exception -> 0x1f77, TryCatch #2 {Exception -> 0x1f77, blocks: (B:1320:0x1e27, B:1322:0x1e2b, B:1330:0x1e45, B:1333:0x1e4b, B:1335:0x1e51, B:1337:0x1e55, B:1339:0x1e68, B:1342:0x1e94, B:1344:0x1e98, B:1346:0x1eac, B:1348:0x1eb2, B:1350:0x1eb6, B:1353:0x1ec3, B:1352:0x1ec0, B:1354:0x1ec6, B:1356:0x1eca, B:1358:0x1ece, B:1360:0x1ed3, B:1362:0x1ed7, B:1365:0x1edc, B:1367:0x1ee0, B:1369:0x1ef1, B:1371:0x1ef7, B:1372:0x1f0a, B:1374:0x1f25, B:1377:0x1f2c, B:1378:0x1f32, B:1382:0x1f47, B:1359:0x1ed1, B:1340:0x1e84, B:1324:0x1e2f, B:1326:0x1e33, B:1328:0x1e38), top: B:1537:0x1e27 }] */
    /* JADX WARN: Removed duplicated region for block: B:1344:0x1e98 A[Catch: Exception -> 0x1f77, TryCatch #2 {Exception -> 0x1f77, blocks: (B:1320:0x1e27, B:1322:0x1e2b, B:1330:0x1e45, B:1333:0x1e4b, B:1335:0x1e51, B:1337:0x1e55, B:1339:0x1e68, B:1342:0x1e94, B:1344:0x1e98, B:1346:0x1eac, B:1348:0x1eb2, B:1350:0x1eb6, B:1353:0x1ec3, B:1352:0x1ec0, B:1354:0x1ec6, B:1356:0x1eca, B:1358:0x1ece, B:1360:0x1ed3, B:1362:0x1ed7, B:1365:0x1edc, B:1367:0x1ee0, B:1369:0x1ef1, B:1371:0x1ef7, B:1372:0x1f0a, B:1374:0x1f25, B:1377:0x1f2c, B:1378:0x1f32, B:1382:0x1f47, B:1359:0x1ed1, B:1340:0x1e84, B:1324:0x1e2f, B:1326:0x1e33, B:1328:0x1e38), top: B:1537:0x1e27 }] */
    /* JADX WARN: Removed duplicated region for block: B:1356:0x1eca A[Catch: Exception -> 0x1f77, TryCatch #2 {Exception -> 0x1f77, blocks: (B:1320:0x1e27, B:1322:0x1e2b, B:1330:0x1e45, B:1333:0x1e4b, B:1335:0x1e51, B:1337:0x1e55, B:1339:0x1e68, B:1342:0x1e94, B:1344:0x1e98, B:1346:0x1eac, B:1348:0x1eb2, B:1350:0x1eb6, B:1353:0x1ec3, B:1352:0x1ec0, B:1354:0x1ec6, B:1356:0x1eca, B:1358:0x1ece, B:1360:0x1ed3, B:1362:0x1ed7, B:1365:0x1edc, B:1367:0x1ee0, B:1369:0x1ef1, B:1371:0x1ef7, B:1372:0x1f0a, B:1374:0x1f25, B:1377:0x1f2c, B:1378:0x1f32, B:1382:0x1f47, B:1359:0x1ed1, B:1340:0x1e84, B:1324:0x1e2f, B:1326:0x1e33, B:1328:0x1e38), top: B:1537:0x1e27 }] */
    /* JADX WARN: Removed duplicated region for block: B:1362:0x1ed7 A[Catch: Exception -> 0x1f77, TryCatch #2 {Exception -> 0x1f77, blocks: (B:1320:0x1e27, B:1322:0x1e2b, B:1330:0x1e45, B:1333:0x1e4b, B:1335:0x1e51, B:1337:0x1e55, B:1339:0x1e68, B:1342:0x1e94, B:1344:0x1e98, B:1346:0x1eac, B:1348:0x1eb2, B:1350:0x1eb6, B:1353:0x1ec3, B:1352:0x1ec0, B:1354:0x1ec6, B:1356:0x1eca, B:1358:0x1ece, B:1360:0x1ed3, B:1362:0x1ed7, B:1365:0x1edc, B:1367:0x1ee0, B:1369:0x1ef1, B:1371:0x1ef7, B:1372:0x1f0a, B:1374:0x1f25, B:1377:0x1f2c, B:1378:0x1f32, B:1382:0x1f47, B:1359:0x1ed1, B:1340:0x1e84, B:1324:0x1e2f, B:1326:0x1e33, B:1328:0x1e38), top: B:1537:0x1e27 }] */
    /* JADX WARN: Removed duplicated region for block: B:1367:0x1ee0 A[Catch: Exception -> 0x1f77, TryCatch #2 {Exception -> 0x1f77, blocks: (B:1320:0x1e27, B:1322:0x1e2b, B:1330:0x1e45, B:1333:0x1e4b, B:1335:0x1e51, B:1337:0x1e55, B:1339:0x1e68, B:1342:0x1e94, B:1344:0x1e98, B:1346:0x1eac, B:1348:0x1eb2, B:1350:0x1eb6, B:1353:0x1ec3, B:1352:0x1ec0, B:1354:0x1ec6, B:1356:0x1eca, B:1358:0x1ece, B:1360:0x1ed3, B:1362:0x1ed7, B:1365:0x1edc, B:1367:0x1ee0, B:1369:0x1ef1, B:1371:0x1ef7, B:1372:0x1f0a, B:1374:0x1f25, B:1377:0x1f2c, B:1378:0x1f32, B:1382:0x1f47, B:1359:0x1ed1, B:1340:0x1e84, B:1324:0x1e2f, B:1326:0x1e33, B:1328:0x1e38), top: B:1537:0x1e27 }] */
    /* JADX WARN: Removed duplicated region for block: B:1376:0x1f2a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1380:0x1f42  */
    /* JADX WARN: Removed duplicated region for block: B:1381:0x1f45  */
    /* JADX WARN: Removed duplicated region for block: B:1392:0x1f93  */
    /* JADX WARN: Removed duplicated region for block: B:1470:0x214d  */
    /* JADX WARN: Removed duplicated region for block: B:1517:0x2229  */
    /* JADX WARN: Removed duplicated region for block: B:1528:0x2266  */
    /* JADX WARN: Removed duplicated region for block: B:1529:0x226e  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0570  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x060c  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0622  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x06a2  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x097e  */
    /* JADX WARN: Removed duplicated region for block: B:537:0x0b67  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0b78  */
    /* JADX WARN: Removed duplicated region for block: B:718:0x0fb0  */
    /* JADX WARN: Removed duplicated region for block: B:726:0x0fd4  */
    /* JADX WARN: Removed duplicated region for block: B:729:0x0fe1  */
    /* JADX WARN: Removed duplicated region for block: B:730:0x0fe9  */
    /* JADX WARN: Removed duplicated region for block: B:739:0x1007  */
    /* JADX WARN: Removed duplicated region for block: B:740:0x1019  */
    /* JADX WARN: Removed duplicated region for block: B:778:0x10ac  */
    /* JADX WARN: Removed duplicated region for block: B:779:0x10b1  */
    /* JADX WARN: Removed duplicated region for block: B:782:0x10b8  */
    /* JADX WARN: Removed duplicated region for block: B:783:0x10bb  */
    /* JADX WARN: Removed duplicated region for block: B:840:0x1185  */
    /* JADX WARN: Removed duplicated region for block: B:844:0x1197  */
    /* JADX WARN: Removed duplicated region for block: B:845:0x11a1  */
    /* JADX WARN: Removed duplicated region for block: B:855:0x11da  */
    /* JADX WARN: Removed duplicated region for block: B:859:0x11ef  */
    /* JADX WARN: Removed duplicated region for block: B:898:0x1298  */
    /* JADX WARN: Removed duplicated region for block: B:903:0x12b3  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x12f2  */
    /* JADX WARN: Removed duplicated region for block: B:910:0x12ff  */
    /* JADX WARN: Removed duplicated region for block: B:915:0x1332  */
    /* JADX WARN: Removed duplicated region for block: B:918:0x1338  */
    /* JADX WARN: Removed duplicated region for block: B:919:0x1348  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x1374  */
    /* JADX WARN: Removed duplicated region for block: B:927:0x137e  */
    /* JADX WARN: Removed duplicated region for block: B:941:0x13ce  */
    /* JADX WARN: Removed duplicated region for block: B:948:0x13eb  */
    /* JADX WARN: Removed duplicated region for block: B:952:0x141a  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x149a  */
    /* JADX WARN: Removed duplicated region for block: B:973:0x14bc  */
    /* JADX WARN: Removed duplicated region for block: B:981:0x14dc  */
    /* JADX WARN: Type inference failed for: r0v208, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v148, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v15, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r1v196 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v205 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v30, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r1v360 */
    /* JADX WARN: Type inference failed for: r1v40, types: [android.text.SpannableStringBuilder, java.lang.CharSequence, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r1v96 */
    /* JADX WARN: Type inference failed for: r2v82, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v83, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v84 */
    /* JADX WARN: Type inference failed for: r5v39, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:1319:0x1e24 -> B:1537:0x1e27). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout(boolean r51) {
        /*
            Method dump skipped, instructions count: 8832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.DialogCell.buildLayout(boolean):void");
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
                        ceil += AndroidUtilities.m102dp(3);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + ceil + AndroidUtilities.m102dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.insert(0, (CharSequence) " ");
            valueOf.setSpan(new FixedWidthSpan(AndroidUtilities.m102dp((((this.thumbSize + 2) * this.thumbsCount) - 2) + 5)), 0, 1, 33);
            return valueOf;
        }
        return charSequence;
    }

    private CharSequence formatTopicsNames() {
        int i;
        boolean z;
        int i2;
        this.topMessageTopicStartIndex = 0;
        this.topMessageTopicEndIndex = 0;
        if (this.chat != null) {
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1600id);
            if (topics != null && !topics.isEmpty()) {
                ArrayList arrayList = new ArrayList(topics);
                Collections.sort(arrayList, Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda6
                    @Override // p033j$.util.function.ToIntFunction
                    public final int applyAsInt(Object obj) {
                        int lambda$formatTopicsNames$0;
                        lambda$formatTopicsNames$0 = DialogCell.lambda$formatTopicsNames$0((TLRPC$TL_forumTopic) obj);
                        return lambda$formatTopicsNames$0;
                    }
                }));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                MessageObject messageObject = this.message;
                boolean z2 = true;
                if (messageObject != null) {
                    i = MessageObject.getTopicId(messageObject.messageOwner, true);
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1600id, i);
                    if (findTopic != null) {
                        CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(findTopic, this.currentMessagePaint);
                        spannableStringBuilder.append(topicSpannedName);
                        i2 = findTopic.unread_count > 0 ? topicSpannedName.length() : 0;
                        this.topMessageTopicStartIndex = 0;
                        this.topMessageTopicEndIndex = topicSpannedName.length();
                        if (this.message.isOutOwner()) {
                            this.lastTopicMessageUnread = findTopic.read_inbox_max_id < this.message.getId();
                        } else {
                            this.lastTopicMessageUnread = findTopic.unread_count > 0;
                        }
                    } else {
                        this.lastTopicMessageUnread = false;
                        i2 = 0;
                    }
                    if (this.lastTopicMessageUnread) {
                        spannableStringBuilder.append((CharSequence) " ");
                        spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.m102dp(3)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    i = 0;
                    z = false;
                    i2 = 0;
                }
                for (int i3 = 0; i3 < Math.min(5, arrayList.size()); i3++) {
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1657id != i) {
                        if (spannableStringBuilder.length() != 0) {
                            if (z2 && z) {
                                spannableStringBuilder.append((CharSequence) " ");
                            } else {
                                spannableStringBuilder.append((CharSequence) ", ");
                            }
                        }
                        spannableStringBuilder.append(ForumUtilities.getTopicSpannedName((TLRPC$ForumTopic) arrayList.get(i3), this.currentMessagePaint));
                        z2 = false;
                    }
                }
                if (i2 > 0) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM), 0, Theme.key_chats_name, null), 0, Math.min(spannableStringBuilder.length(), i2 + 2), 0);
                }
                return spannableStringBuilder;
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1600id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1600id);
                return LocaleController.getString("Loading", C3630R.string.Loading);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$formatTopicsNames$0(TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
        return -tLRPC$TL_forumTopic.top_message;
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
                        canvas.translate(AndroidUtilities.m102dp(4) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
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
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.m102dp(60)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.m102dp(60))) && f < ((float) getMeasuredWidth());
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1606id);
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

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0164, code lost:
        if (com.iMe.fork.controller.ForkTopicsController.getInstance(r33.currentAccount).hasSelectedTopic(r33.folderId == 1) == false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0663  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x06f2  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x077e  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x079c  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.DialogCell.update(int, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$1(ValueAnimator valueAnimator) {
        this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$2(ValueAnimator valueAnimator) {
        this.reactionsMentionsChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopicId() {
        TLRPC$TL_forumTopic tLRPC$TL_forumTopic = this.forumTopic;
        if (tLRPC$TL_forumTopic == null) {
            return 0;
        }
        return tLRPC$TL_forumTopic.f1657id;
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
    /* JADX WARN: Code restructure failed: missing block: B:167:0x055f, code lost:
        if (r41.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L831;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x06eb, code lost:
        if (r41.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L821;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0bfc, code lost:
        if (r7.lastKnownTypingType >= 0) goto L187;
     */
    /* JADX WARN: Removed duplicated region for block: B:176:0x05eb  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0a7a  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0b98  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0ba2  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0bee  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0c9d  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0e5b  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0e69  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0e6b  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0e71  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0e73  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0e79 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0e86  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0e8c  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0e8e  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0e93  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0e95  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0e99  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0e9b  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0e9e  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0f02  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0f1b  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0f1d  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0f23  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0f26  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0f35  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0f41  */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0f4b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0fa5  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0fb0  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0fd3  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0fdc  */
    /* JADX WARN: Removed duplicated region for block: B:575:0x0fff  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x100a  */
    /* JADX WARN: Removed duplicated region for block: B:583:0x105e  */
    /* JADX WARN: Removed duplicated region for block: B:589:0x1074  */
    /* JADX WARN: Removed duplicated region for block: B:611:0x10e2  */
    /* JADX WARN: Removed duplicated region for block: B:666:0x11bf  */
    /* JADX WARN: Removed duplicated region for block: B:675:0x11e9  */
    /* JADX WARN: Removed duplicated region for block: B:681:0x11f9  */
    /* JADX WARN: Removed duplicated region for block: B:682:0x1246  */
    /* JADX WARN: Removed duplicated region for block: B:738:0x13f1  */
    /* JADX WARN: Removed duplicated region for block: B:746:0x140b  */
    /* JADX WARN: Removed duplicated region for block: B:778:0x158e  */
    /* JADX WARN: Removed duplicated region for block: B:779:0x1592  */
    /* JADX WARN: Removed duplicated region for block: B:782:0x159f  */
    /* JADX WARN: Removed duplicated region for block: B:785:0x15bf  */
    /* JADX WARN: Removed duplicated region for block: B:803:0x15ee  */
    /* JADX WARN: Removed duplicated region for block: B:806:0x15f9  */
    /* JADX WARN: Removed duplicated region for block: B:811:0x1607  */
    /* JADX WARN: Removed duplicated region for block: B:815:0x160f  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x1613  */
    /* JADX WARN: Removed duplicated region for block: B:830:0x1676  */
    /* JADX WARN: Removed duplicated region for block: B:834:0x1699  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x16a2  */
    /* JADX WARN: Removed duplicated region for block: B:840:0x16a9  */
    /* JADX WARN: Removed duplicated region for block: B:855:0x16ec  */
    /* JADX WARN: Removed duplicated region for block: B:885:0x176c  */
    /* JADX WARN: Removed duplicated region for block: B:891:0x17bd  */
    /* JADX WARN: Removed duplicated region for block: B:894:0x17c5  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x17d5  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x17ea  */
    /* JADX WARN: Removed duplicated region for block: B:915:0x1812  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x183f  */
    /* JADX WARN: Removed duplicated region for block: B:932:0x1855  */
    /* JADX WARN: Removed duplicated region for block: B:943:0x187c  */
    /* JADX WARN: Removed duplicated region for block: B:954:0x189d  */
    /* JADX WARN: Removed duplicated region for block: B:973:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r42) {
        /*
            Method dump skipped, instructions count: 6338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.DialogCell.onDraw(android.graphics.Canvas):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$3() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonClicked(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$4() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonLongPress(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0040, code lost:
        if (r5 > 0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:189:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0551  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0121  */
    @Override // org.telegram.p042ui.Stories.StoriesListPlaceProvider.AvatarOverlaysView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawAvatarOverlays(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 1469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.DialogCell.drawAvatarOverlays(android.graphics.Canvas):boolean");
    }

    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        int m103dp;
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
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.m102dp(2));
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
            this.rect.set(i2 - AndroidUtilities.m103dp(5.5f), i, m103dp + this.countWidth + AndroidUtilities.m102dp(11), AndroidUtilities.m102dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m103dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m103dp(11.5f), AndroidUtilities.m103dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m103dp(11.5f), AndroidUtilities.m103dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.m102dp(4));
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
            float m103dp2 = f8 - AndroidUtilities.m103dp(5.5f);
            float f9 = i;
            this.rect.set(m103dp2, f9, (this.countWidth * f6) + m103dp2 + (this.countWidthOld * f7) + AndroidUtilities.m102dp(11), AndroidUtilities.m102dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m103dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m103dp(11.5f), AndroidUtilities.m103dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m103dp(11.5f), AndroidUtilities.m103dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.m102dp(4));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m102dp(13) : -AndroidUtilities.m102dp(13)) * f7) + f9 + AndroidUtilities.m102dp(4));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m102dp(13) : -AndroidUtilities.m102dp(13)) * f7) + f9 + AndroidUtilities.m102dp(4));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f7));
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.m102dp(13) : AndroidUtilities.m102dp(13)) * f6) + f9 + AndroidUtilities.m102dp(4));
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
        this.statusDrawableAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DialogCell.this.lambda$createStatusDrawableAnimator$5(valueAnimator);
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
    public /* synthetic */ void lambda$createStatusDrawableAnimator$5(ValueAnimator valueAnimator) {
        this.statusDrawableProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void startOutAnimation() {
        PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
        if (pullForegroundDrawable != null) {
            if (this.isTopic) {
                pullForegroundDrawable.outCy = AndroidUtilities.m102dp(24);
                this.archivedChatsDrawable.outCx = AndroidUtilities.m102dp(24);
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
        if (i == C3630R.C3633id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3630R.C3633id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3630R.string.AccActionChatPreview)));
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
            sb.append(i == 2 ? LocaleController.getInternalString(C3630R.string.hidden_chats_title) : LocaleController.getString("ArchivedChats", C3630R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3630R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3630R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3630R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3630R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3630R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3630R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3630R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3630R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3630R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3630R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3630R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3630R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3630R.string.AccDescrReceivedDate, formatDateAudio));
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
            Collections.sort(this.groupMessages, new java.util.Comparator() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda5
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$updateMessageThumbs$6;
                    lambda$updateMessageThumbs$6 = DialogCell.lambda$updateMessageThumbs$6((MessageObject) obj, (MessageObject) obj2);
                    return lambda$updateMessageThumbs$6;
                }
            });
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateMessageThumbs$6(MessageObject messageObject, MessageObject messageObject2) {
        return messageObject.getId() - messageObject2.getId();
    }

    private void setThumb(int i, MessageObject messageObject) {
        TLRPC$MessageMedia tLRPC$MessageMedia;
        ArrayList<TLRPC$PhotoSize> arrayList = messageObject.photoThumbs;
        TLObject tLObject = messageObject.photoThumbsObject;
        if (messageObject.isStoryMedia()) {
            TLRPC$StoryItem tLRPC$StoryItem = messageObject.messageOwner.media.storyItem;
            if (tLRPC$StoryItem == null || (tLRPC$MessageMedia = tLRPC$StoryItem.media) == null) {
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
                this.thumbImage[i].setRoundRadius(AndroidUtilities.m102dp(messageObject.isRoundVideo() ? 18 : 2));
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
            return LocaleController.getString("FromYou", C3630R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3630R.string.HiddenName);
                }
                return ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name).replace("\n", "");
            } else {
                return UserObject.getFirstName(tLRPC$User).replace("\n", "");
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.telegram.ui.Cells.DialogCell, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.text.SpannableStringBuilder, java.lang.CharSequence, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.CharSequence[]] */
    public SpannableStringBuilder getMessageStringFormatted(String str, String str2, CharSequence charSequence, boolean z) {
        TLRPC$Message tLRPC$Message;
        String charSequence2;
        String formatPluralString;
        CharSequence charSequence3;
        SpannableStringBuilder valueOf;
        TLRPC$TL_forumTopic findTopic;
        MessageObject captionMessage = getCaptionMessage();
        MessageObject messageObject = this.message;
        CharSequence charSequence4 = messageObject != null ? messageObject.messageText : null;
        this.applyName = true;
        if (!TextUtils.isEmpty(str2)) {
            return SpannableStringBuilder.valueOf(AndroidUtilities.formatSpannable(str, str2, charSequence));
        }
        MessageObject messageObject2 = this.message;
        TLRPC$Message tLRPC$Message2 = messageObject2.messageOwner;
        if (tLRPC$Message2 instanceof TLRPC$TL_messageService) {
            CharSequence charSequence5 = messageObject2.messageTextShort;
            if (charSequence5 == null || ((tLRPC$Message2.action instanceof TLRPC$TL_messageActionTopicCreate) && this.isTopic)) {
                charSequence5 = messageObject2.messageText;
            }
            if (MessageObject.isTopicActionMessage(messageObject2)) {
                valueOf = AndroidUtilities.formatSpannable(str, charSequence5, charSequence);
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
        }
        String str3 = "";
        if (captionMessage != null && (charSequence3 = captionMessage.caption) != null) {
            CharSequence charSequence6 = charSequence3.toString();
            if (this.needEmoji) {
                if (captionMessage.isVideo()) {
                    str3 = "📹 ";
                } else if (captionMessage.isVoice()) {
                    str3 = "🎤 ";
                } else if (captionMessage.isMusic()) {
                    str3 = "🎧 ";
                } else {
                    str3 = captionMessage.isPhoto() ? "🖼 " : "📎 ";
                }
            }
            if (captionMessage.hasHighlightedWords() && !TextUtils.isEmpty(captionMessage.messageOwner.message)) {
                CharSequence charSequence7 = captionMessage.messageTrimmedToHighlight;
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m102dp((this.messagePaddingStart + 23) + 24);
                if (this.hasNameInMessage) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(charSequence.toString()));
                    }
                    measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(": "));
                }
                if (measuredWidth > 0) {
                    charSequence7 = AndroidUtilities.ellipsizeCenterEnd(charSequence7, captionMessage.highlightedWords.get(0), measuredWidth, this.currentMessagePaint, TsExtractor.TS_STREAM_TYPE_HDMV_DTS).toString();
                }
                return new SpannableStringBuilder(str3).append(charSequence7);
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
            CharSequence append = new SpannableStringBuilder(str3).append(AndroidUtilities.replaceNewLines(spannableStringBuilder));
            if (z) {
                append = applyThumbs(append);
            }
            return AndroidUtilities.formatSpannable(str, append, charSequence);
        } else if (tLRPC$Message2.media != null && !messageObject2.isMediaEmpty()) {
            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
            int i = Theme.key_chats_attachMessage;
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
                i = Theme.key_chats_actionMessage;
            } else {
                charSequence2 = charSequence4.toString();
                i = Theme.key_chats_actionMessage;
            }
            CharSequence replace = charSequence2.replace('\n', ' ');
            if (z) {
                replace = applyThumbs(replace);
            }
            SpannableStringBuilder formatSpannable = AndroidUtilities.formatSpannable(str, replace, charSequence);
            if (!isForumCell()) {
                try {
                    formatSpannable.setSpan(new ForegroundColorSpanThemable(i, this.resourcesProvider), this.hasNameInMessage ? charSequence.length() + 2 : 0, formatSpannable.length(), 33);
                } catch (Exception e) {
                    FileLog.m97e(e);
                }
            }
            return formatSpannable;
        } else {
            MessageObject messageObject4 = this.message;
            CharSequence charSequence8 = messageObject4.messageOwner.message;
            if (charSequence8 != null) {
                if (messageObject4.hasHighlightedWords()) {
                    CharSequence charSequence9 = this.message.messageTrimmedToHighlight;
                    if (charSequence9 != null) {
                        charSequence8 = charSequence9;
                    }
                    int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.m102dp((this.messagePaddingStart + 23) + 10);
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
                return AndroidUtilities.formatSpannable(str, new CharSequence[]{spannableStringBuilder2, charSequence});
            }
            return SpannableStringBuilder.valueOf("");
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
            if (org.telegram.messenger.MessagesController.getInstance(r16.this$0.currentAccount).getTopicsController().endIsReached(-r16.this$0.currentDialogId) != false) goto L112;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0254  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x025d  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x013c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0163  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x0217  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0223  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean update() {
            /*
                Method dump skipped, instructions count: 650
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Cells.DialogCell.DialogUpdateHelper.update():boolean");
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
}
