package org.telegram.p044ui.Cells;

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
import com.google.android.gms.common.Scopes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.HiddenChatsController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.LockedSection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
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
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Adapters.DialogsAdapter;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AnimatedEmojiSpan;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BubbleCounterPath;
import org.telegram.p044ui.Components.CanvasButton;
import org.telegram.p044ui.Components.CheckBox2;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p044ui.Components.Forum.ForumUtilities;
import org.telegram.p044ui.Components.PullForegroundDrawable;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.TimerDrawable;
import org.telegram.p044ui.Components.TypefaceSpan;
import org.telegram.p044ui.Components.spoilers.SpoilerEffect;
import org.telegram.p044ui.DialogsActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$DraftMessage;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$ForumTopic;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_dialogFolder;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserStatus;
import p034j$.util.Comparator;
/* renamed from: org.telegram.ui.Cells.DialogCell */
/* loaded from: classes5.dex */
public class DialogCell extends BaseCell {
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
    private boolean compactMode;
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
    public boolean drawAvatar;
    private boolean drawCheck1;
    private boolean drawCheck2;
    private boolean drawClock;
    private boolean drawCount;
    private boolean drawCount2;
    private boolean drawError;
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
    private boolean isDialogCell;
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
    protected String overrideSwipeActionBackgroundColorKey;
    protected RLottieDrawable overrideSwipeActionDrawable;
    protected String overrideSwipeActionRevealBackgroundColorKey;
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
        public int f1595id;
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
    }

    public boolean checkCurrentDialogIndex(boolean z) {
        return false;
    }

    protected boolean drawLock2() {
        return false;
    }

    @Override // org.telegram.p044ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void buildLayout() {
        buildLayout(false);
    }

    public void setCompactMode(boolean z) {
        this.compactMode = z;
        this.avatarDrawable.setScaleSize(0.8f);
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1480id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
        this.drawAvatar = true;
        this.messagePaddingStart = 72;
        this.heightDefault = 72;
        this.heightThreeLines = 78;
        this.chekBoxPaddingTop = 42.0f;
        this.thumbPath = new Path();
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
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = dialogsActivity;
        Theme.createDialogsResources(context);
        this.avatarImage.setCurrentAccount(i);
        this.avatarImage.setRoundRadius(AndroidUtilities.m50dp(28));
        int i2 = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                this.thumbImage[i2].setRoundRadius(AndroidUtilities.m50dp(2));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m50dp(22));
                this.emojiStatus = swapAnimatedEmojiDrawable;
                swapAnimatedEmojiDrawable.center = false;
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                return;
            }
        }
    }

    public void setDialog(TLRPC$Dialog tLRPC$Dialog, int i, int i2) {
        if (this.currentDialogId != tLRPC$Dialog.f1433id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1433id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1479id;
            PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
            if (pullForegroundDrawable != null) {
                pullForegroundDrawable.setCell(this);
            }
        } else {
            this.currentDialogFolderId = 0;
        }
        this.dialogsType = i;
        this.folderId = i2;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1567id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1567id))) {
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
        boolean isHiddenChatsHidden = this.folderId == 1 ? HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden() : SharedConfig.archiveHidden;
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
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(24), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m50dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0));
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
        return AndroidUtilities.m50dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86 : (this.useSeparator ? 1 : 0) + 91);
    }

    private int getCollapsedHeight() {
        return AndroidUtilities.m50dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0) + (this.twoLinesForName ? AndroidUtilities.m50dp(20) : 0);
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
        int m51dp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int m50dp = AndroidUtilities.m50dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                m50dp = AndroidUtilities.m50dp(8);
                m51dp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    m50dp = (i3 - i) - m50dp;
                }
                m51dp = AndroidUtilities.m51dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            if (this.compactMode) {
                if (this.isTopic) {
                    m51dp = calcCompactDrawingElementTop(this.checkBox.getMeasuredHeight());
                } else {
                    m50dp = AndroidUtilities.m50dp(37);
                    m51dp = AndroidUtilities.m50dp(23);
                }
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m50dp, m51dp, checkBox2.getMeasuredWidth() + m50dp, this.checkBox.getMeasuredHeight() + m51dp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize) {
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m45e(e);
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
        ArrayList<TLRPC$Dialog> dialogs = MessagesController.getInstance(this.currentAccount).getDialogs(this.currentDialogFolderId);
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
            TLRPC$Chat tLRPC$Chat = null;
            if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1433id)) {
                TLRPC$EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1433id)));
                tLRPC$User = encryptedChat != null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id)) : null;
            } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1433id)) {
                tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Dialog.f1433id));
            } else {
                tLRPC$Chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1433id));
                tLRPC$User = null;
            }
            if (tLRPC$Chat != null) {
                replace = tLRPC$Chat.title.replace('\n', ' ');
            } else if (tLRPC$User == null) {
                continue;
            } else if (UserObject.isDeleted(tLRPC$User)) {
                replace = LocaleController.getString("HiddenName", C3242R.string.HiddenName);
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
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM), 0, Theme.getColor("chats_nameArchived", this.resourcesProvider)), length, length2, 33);
            }
            if (spannableStringBuilder.length() > 150) {
                break;
            }
        }
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), AndroidUtilities.m50dp(17), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(72:15|(1:1485)(1:19)|20|(1:1484)(1:26)|27|(1:1483)(1:31)|32|(1:34)|35|(2:37|(1:1472)(1:41))(2:1473|(1:1482)(1:1477))|42|(1:44)|45|(1:47)(1:1467)|48|(7:50|(1:52)|53|54|(1:56)|57|58)|59|(9:61|(2:63|(1:65)(2:723|(2:731|(1:733)(1:734))(2:727|(1:729)(1:730))))(4:735|(1:755)(1:739)|740|(1:742)(2:743|(2:751|(1:753)(1:754))(2:747|(1:749)(1:750))))|66|(3:68|(1:70)(4:710|(1:712)|713|(1:718)(1:717))|71)(3:719|(1:721)|722)|72|(1:74)(1:709)|75|(1:77)(1:(1:705)(1:(1:707)(1:708)))|78)(22:756|(1:758)(2:1455|(2:1463|(1:1465)(1:1466))(2:1459|(1:1461)(1:1462)))|759|(2:761|(2:763|(1:765)(2:766|(2:774|(1:776)(1:777))(2:770|(1:772)(1:773)))))(2:1401|(2:1403|(2:1405|(1:1407)(2:1408|(1:1410)(3:1411|(1:1417)(1:1415)|1416)))(2:1418|(7:1420|(1:1422)(2:1445|(1:1447)(3:1448|(1:1454)(1:1452)|1453))|1423|(2:1425|(3:1433|1434|(2:1436|(2:1440|(1:1442)(1:1443))(1:1439))))|1444|1434|(0)))))|778|(1:782)|783|(2:785|(1:789))(2:1397|(1:1399)(1:1400))|790|(6:1375|(2:1377|(2:1379|(2:1381|(1:1383))))|1385|(2:1387|(1:1389))|1391|(13:1393|(1:1395)|797|(7:799|(1:801)(1:988)|802|(1:804)(1:987)|805|(1:810)|811)(3:(6:990|(1:992)(1:1369)|993|(1:995)(1:1368)|(1:997)(1:1367)|998)(1:1370)|999|(3:1001|(2:1003|(2:1009|1010)(1:1007))(7:1011|(1:1013)|1014|(3:1018|(1:1020)(1:1022)|1021)|1023|(1:1027)|1028)|1008)(4:1029|(1:1031)(2:1034|(4:1036|(2:1038|(1:1040)(2:1041|(1:1043)(2:1044|(1:1046)(2:1047|(2:1049|(1:1051)(1:1052))))))(2:1054|(2:1058|1033))|1053|1010)(13:1059|(1:1061)(1:1366)|1062|(2:1076|(10:1078|(2:1080|(9:1082|(1:1084)(3:1358|(1:1360)(1:1362)|1361)|(7:1096|(3:1098|(4:1100|(2:1102|(2:1104|(1:1106)(2:1109|(1:1111)(1:1112))))|1113|(1:1115)(2:1116|(1:1118)(2:1119|(1:1121)(1:1122))))(1:1123)|1107)(2:1124|(9:1129|(2:1141|(2:1157|(5:1221|(4:1243|(4:1245|(1:1256)|1251|(2:1253|(1:1255)))(2:1257|(2:1264|(2:1271|(4:1273|(1:1275)(2:1297|(1:1299)(2:1300|(1:1302)(2:1303|(1:1305)(2:1306|(1:1308)(1:1309)))))|1276|(3:1289|(3:1291|(1:1293)(1:1295)|1294)|1296)(4:1280|(2:1282|(1:1284)(1:1285))|(1:1287)|1288))(2:1310|(3:1312|(3:1314|(1:1316)(1:1319)|1317)(3:1320|(1:1322)(1:1324)|1323)|1318)(5:1325|(1:1327)(2:1334|(1:1336)(2:1337|(1:1339)(2:1340|(1:1342)(3:1343|(2:1349|(2:1351|(3:1353|(1:1355)(1:1357)|1356)))(1:1347)|1348))))|1328|1329|(2:1331|(1:1333)))))(1:1270))(1:1263))|1224|(6:1226|(3:1238|(1:1240)|1241)(1:1230)|1231|(1:1233)|1234|(1:1236))(1:1242))|1223|1224|(0)(0))(14:1168|(2:1174|(13:1176|(1:1219)(1:1180)|1181|1182|(1:1218)(5:1188|1189|1190|1191|1192)|1193|(1:1197)|1198|(4:1200|(1:1202)|1203|(1:1205)(1:1206))|1207|1089|(2:1091|(1:1093)(1:1094))|1095))|1220|1182|(2:1184|1214)|1218|1193|(2:1195|1197)|1198|(0)|1207|1089|(0)|1095))(8:1147|(1:1156)(1:1151)|1152|(1:1154)(1:1155)|1088|1089|(0)|1095))(2:1135|(1:1137)(1:1140))|1138|1139|1087|1088|1089|(0)|1095)(1:1128))|1108|1088|1089|(0)|1095)|1086|1087|1088|1089|(0)|1095))(1:1364)|1363|(0)|1086|1087|1088|1089|(0)|1095))|1365|1363|(0)|1086|1087|1088|1089|(0)|1095))|1032|1033))|812|(1:814)(2:980|(1:982)(2:983|(1:985)(1:986)))|815|(1:817)(5:884|(5:886|(1:888)(2:944|(1:(3:947|890|891)(2:948|891))(1:949))|889|890|891)(7:950|(1:952)(6:962|(2:976|(1:978)(1:979))(2:970|(1:975)(1:974))|954|(1:956)(1:961)|957|(1:959)(1:960))|953|954|(0)(0)|957|(0)(0))|892|(2:897|(2:903|(1:905)(2:906|(1:908)(2:909|(3:911|(3:913|(1:915)(1:918)|916)(2:919|(3:921|(1:933)(1:925)|926)(3:934|(1:942)(1:940)|941))|917)))))|943)|818|(4:822|(1:824)(2:874|(5:876|(1:878)|879|(1:881)|882))|825|(3:827|(1:829)(1:831)|830)(2:832|(4:834|(3:836|(1:838)|839)(2:847|(4:849|(1:851)|852|(1:854)(1:855))(1:856))|(1:844)|845)(5:857|(4:859|(1:861)(2:862|(2:864|(1:866)(4:867|(1:869)|870|(1:872)))(1:873))|(2:842|844)|845)|846|(0)|845)))|883|825|(0)(0)))|796|797|(0)(0)|812|(0)(0)|815|(0)(0)|818|(5:820|822|(0)(0)|825|(0)(0))|883|825|(0)(0))|(2:80|(1:82)(1:702))(1:703)|83|(3:85|(1:87)(1:700)|88)(1:701)|89|(1:91)(1:699)|92|(2:96|(1:98)(1:(2:(1:105)|(1:107))(2:101|(1:103))))|108|(1:110)|111|(2:113|(1:115)(1:686))(2:687|(2:689|(2:691|(1:693)(1:694))(2:695|(1:697)(1:698))))|116|(2:656|(2:683|(1:685))(2:660|(2:662|(1:664))(2:665|(2:667|(1:669))(2:670|(4:672|(1:674)(1:678)|675|(1:677))))))(2:120|(1:122))|(18:123|124|(1:126)|127|(1:129)|130|(3:132|(1:134)(1:136)|135)|137|(1:139)(1:653)|140|(1:142)|143|(1:652)(1:149)|150|(1:152)(1:651)|153|(1:650)(1:157)|158)|159|(3:161|(1:163)|164)(3:606|(4:634|(1:636)(1:648)|637|(2:638|(3:640|(2:642|643)(2:645|646)|644)(1:647)))(8:610|(1:612)(1:633)|613|(1:615)(1:632)|616|(1:618)(1:631)|619|(2:620|(3:622|(2:624|625)(2:627|628)|626)(1:629)))|630)|165|(1:167)|168|(2:170|(2:172|(2:176|(1:178)(2:179|(2:181|(1:183)))))(1:184))|185|(2:187|(2:189|(2:193|(1:195)(2:196|(2:198|(1:200)))))(1:516))(1:(4:(3:528|(2:530|(2:534|(1:536)(2:537|(2:539|(1:541)))))(1:604)|542)(1:605)|(5:544|(1:546)(1:602)|547|(4:549|(1:551)(1:596)|552|(1:556))(3:597|(1:599)(1:601)|600)|557)(1:603)|558|(2:560|(6:562|(3:564|(1:566)(1:568)|567)|569|(3:571|(1:573)(1:575)|574)|576|(1:580))(5:581|(3:583|(1:585)(1:587)|586)|588|(3:590|(1:592)(1:594)|593)|595)))(3:521|(2:523|(1:525))|526))|(7:(1:203)|204|(1:206)|207|(1:218)(1:211)|212|(1:216))|219|(1:515)(1:223)|224|(4:226|(1:466)(1:230)|231|(2:232|(1:234)(1:235)))(2:467|(8:492|493|(2:495|(2:497|(1:499)))|500|501|(1:511)(1:505)|506|(2:507|(1:509)(1:510)))(2:471|(4:476|(1:486)(1:480)|481|(2:482|(1:484)(1:485)))(1:475)))|236|(1:238)|239|(4:240|241|(1:243)(1:464)|244)|245|246|247|(1:460)(1:(2:254|(1:454)(1:260)))|261|(3:263|(3:265|(2:274|275)|272)|276)|277|(13:282|(2:284|(1:288))|289|290|292|293|(3:295|(1:300)|301)|302|(8:304|(6:308|(1:310)|311|(1:338)(2:315|(1:317)(2:323|(1:325)(2:326|(3:328|(1:330)(1:332)|331)(1:333))))|318|(2:320|(1:322)))|339|(4:343|(1:(1:353)(2:345|(1:347)(2:348|349)))|350|(1:352))|354|(4:358|(1:(1:368)(2:360|(1:362)(2:363|364)))|365|(1:367))|369|(2:375|(1:377)))(10:395|(5:399|(1:401)|402|(4:404|(1:406)|407|(1:409))|410)|411|(4:415|(1:417)|418|419)|420|(4:424|(1:426)|427|428)|429|(4:433|(1:435)|436|437)|438|(1:442))|378|(3:(1:392)(1:387)|388|(1:390)(1:391))|393|394)|445|(1:448)|449|(1:451)(1:453)|452|290|292|293|(0)|302|(0)(0)|378|(6:380|382|(1:385)|392|388|(0)(0))|393|394) */
    /* JADX WARN: Code restructure failed: missing block: B:1340:0x1e59, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1341:0x1e5a, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0611, code lost:
        if (r3.post_messages == false) goto L796;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x061d, code lost:
        if (r3.kicked != false) goto L796;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x062b, code lost:
        if (r49.isTopic == false) goto L796;
     */
    /* JADX WARN: Code restructure failed: missing block: B:684:0x0ee7, code lost:
        if (r2 != null) goto L1139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:837:0x1150, code lost:
        if (r6 == null) goto L846;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1009:0x157e  */
    /* JADX WARN: Removed duplicated region for block: B:1013:0x15e0  */
    /* JADX WARN: Removed duplicated region for block: B:1053:0x17bb  */
    /* JADX WARN: Removed duplicated region for block: B:1056:0x17ca  */
    /* JADX WARN: Removed duplicated region for block: B:1073:0x183e  */
    /* JADX WARN: Removed duplicated region for block: B:1088:0x18c1  */
    /* JADX WARN: Removed duplicated region for block: B:1179:0x1af4  */
    /* JADX WARN: Removed duplicated region for block: B:1205:0x1b5e  */
    /* JADX WARN: Removed duplicated region for block: B:1216:0x1b89  */
    /* JADX WARN: Removed duplicated region for block: B:1264:0x1c46  */
    /* JADX WARN: Removed duplicated region for block: B:1268:0x1c67 A[Catch: Exception -> 0x1cb9, TryCatch #4 {Exception -> 0x1cb9, blocks: (B:1266:0x1c5f, B:1268:0x1c67, B:1269:0x1cb6), top: B:1485:0x1c5f }] */
    /* JADX WARN: Removed duplicated region for block: B:1269:0x1cb6 A[Catch: Exception -> 0x1cb9, TRY_LEAVE, TryCatch #4 {Exception -> 0x1cb9, blocks: (B:1266:0x1c5f, B:1268:0x1c67, B:1269:0x1cb6), top: B:1485:0x1c5f }] */
    /* JADX WARN: Removed duplicated region for block: B:1294:0x1d39 A[Catch: Exception -> 0x1dfd, TryCatch #2 {Exception -> 0x1dfd, blocks: (B:1271:0x1cc9, B:1273:0x1ccd, B:1281:0x1ce7, B:1284:0x1ced, B:1286:0x1cf3, B:1288:0x1cf7, B:1290:0x1d0a, B:1292:0x1d35, B:1294:0x1d39, B:1296:0x1d4d, B:1298:0x1d53, B:1300:0x1d57, B:1303:0x1d64, B:1302:0x1d61, B:1304:0x1d67, B:1306:0x1d6b, B:1309:0x1d70, B:1311:0x1d74, B:1313:0x1d85, B:1315:0x1d8b, B:1316:0x1d9e, B:1326:0x1de7, B:1317:0x1db3, B:1320:0x1dba, B:1321:0x1dc0, B:1325:0x1dd7, B:1291:0x1d26, B:1275:0x1cd1, B:1277:0x1cd5, B:1279:0x1cda), top: B:1481:0x1cc9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1311:0x1d74 A[Catch: Exception -> 0x1dfd, TryCatch #2 {Exception -> 0x1dfd, blocks: (B:1271:0x1cc9, B:1273:0x1ccd, B:1281:0x1ce7, B:1284:0x1ced, B:1286:0x1cf3, B:1288:0x1cf7, B:1290:0x1d0a, B:1292:0x1d35, B:1294:0x1d39, B:1296:0x1d4d, B:1298:0x1d53, B:1300:0x1d57, B:1303:0x1d64, B:1302:0x1d61, B:1304:0x1d67, B:1306:0x1d6b, B:1309:0x1d70, B:1311:0x1d74, B:1313:0x1d85, B:1315:0x1d8b, B:1316:0x1d9e, B:1326:0x1de7, B:1317:0x1db3, B:1320:0x1dba, B:1321:0x1dc0, B:1325:0x1dd7, B:1291:0x1d26, B:1275:0x1cd1, B:1277:0x1cd5, B:1279:0x1cda), top: B:1481:0x1cc9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1323:0x1dd2  */
    /* JADX WARN: Removed duplicated region for block: B:1324:0x1dd5  */
    /* JADX WARN: Removed duplicated region for block: B:1332:0x1e0a A[Catch: Exception -> 0x1e59, TryCatch #3 {Exception -> 0x1e59, blocks: (B:1330:0x1e04, B:1332:0x1e0a, B:1334:0x1e0e, B:1337:0x1e13, B:1338:0x1e3a), top: B:1483:0x1e04 }] */
    /* JADX WARN: Removed duplicated region for block: B:1344:0x1e71  */
    /* JADX WARN: Removed duplicated region for block: B:1414:0x1fff  */
    /* JADX WARN: Removed duplicated region for block: B:1461:0x20db  */
    /* JADX WARN: Removed duplicated region for block: B:1472:0x211a  */
    /* JADX WARN: Removed duplicated region for block: B:1473:0x2122  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0696  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0967  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0b52  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0b63  */
    /* JADX WARN: Removed duplicated region for block: B:669:0x0e41  */
    /* JADX WARN: Removed duplicated region for block: B:686:0x0eeb  */
    /* JADX WARN: Removed duplicated region for block: B:689:0x0ef2  */
    /* JADX WARN: Removed duplicated region for block: B:696:0x0f0a  */
    /* JADX WARN: Removed duplicated region for block: B:697:0x0f12  */
    /* JADX WARN: Removed duplicated region for block: B:706:0x0f30  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x0f42  */
    /* JADX WARN: Removed duplicated region for block: B:745:0x0fd5  */
    /* JADX WARN: Removed duplicated region for block: B:746:0x0fda  */
    /* JADX WARN: Removed duplicated region for block: B:749:0x0fe1  */
    /* JADX WARN: Removed duplicated region for block: B:750:0x0fe4  */
    /* JADX WARN: Removed duplicated region for block: B:807:0x10ae  */
    /* JADX WARN: Removed duplicated region for block: B:811:0x10c0  */
    /* JADX WARN: Removed duplicated region for block: B:812:0x10ca  */
    /* JADX WARN: Removed duplicated region for block: B:824:0x1106  */
    /* JADX WARN: Removed duplicated region for block: B:829:0x1125  */
    /* JADX WARN: Removed duplicated region for block: B:868:0x11ce  */
    /* JADX WARN: Removed duplicated region for block: B:873:0x11ec  */
    /* JADX WARN: Removed duplicated region for block: B:877:0x122c  */
    /* JADX WARN: Removed duplicated region for block: B:880:0x123a  */
    /* JADX WARN: Removed duplicated region for block: B:885:0x126d  */
    /* JADX WARN: Removed duplicated region for block: B:888:0x1273  */
    /* JADX WARN: Removed duplicated region for block: B:889:0x1283  */
    /* JADX WARN: Removed duplicated region for block: B:896:0x12af  */
    /* JADX WARN: Removed duplicated region for block: B:897:0x12b9  */
    /* JADX WARN: Removed duplicated region for block: B:909:0x1305  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x1319  */
    /* JADX WARN: Removed duplicated region for block: B:916:0x1348  */
    /* JADX WARN: Removed duplicated region for block: B:945:0x140a  */
    /* JADX WARN: Removed duplicated region for block: B:967:0x1475  */
    /* JADX WARN: Removed duplicated region for block: B:970:0x147a A[Catch: Exception -> 0x1566, TryCatch #5 {Exception -> 0x1566, blocks: (B:965:0x146c, B:968:0x1476, B:970:0x147a, B:971:0x1484, B:973:0x1488, B:977:0x14a2, B:978:0x14ab, B:982:0x14c1, B:984:0x14c7, B:985:0x14d3, B:987:0x14ea, B:989:0x14f0, B:993:0x1501, B:995:0x1505, B:997:0x1543, B:999:0x1547, B:1001:0x1550, B:1003:0x155a, B:996:0x1526), top: B:1487:0x146c }] */
    /* JADX WARN: Removed duplicated region for block: B:973:0x1488 A[Catch: Exception -> 0x1566, TryCatch #5 {Exception -> 0x1566, blocks: (B:965:0x146c, B:968:0x1476, B:970:0x147a, B:971:0x1484, B:973:0x1488, B:977:0x14a2, B:978:0x14ab, B:982:0x14c1, B:984:0x14c7, B:985:0x14d3, B:987:0x14ea, B:989:0x14f0, B:993:0x1501, B:995:0x1505, B:997:0x1543, B:999:0x1547, B:1001:0x1550, B:1003:0x155a, B:996:0x1526), top: B:1487:0x146c }] */
    /* JADX WARN: Removed duplicated region for block: B:980:0x14be  */
    /* JADX WARN: Removed duplicated region for block: B:981:0x14c0  */
    /* JADX WARN: Removed duplicated region for block: B:984:0x14c7 A[Catch: Exception -> 0x1566, TryCatch #5 {Exception -> 0x1566, blocks: (B:965:0x146c, B:968:0x1476, B:970:0x147a, B:971:0x1484, B:973:0x1488, B:977:0x14a2, B:978:0x14ab, B:982:0x14c1, B:984:0x14c7, B:985:0x14d3, B:987:0x14ea, B:989:0x14f0, B:993:0x1501, B:995:0x1505, B:997:0x1543, B:999:0x1547, B:1001:0x1550, B:1003:0x155a, B:996:0x1526), top: B:1487:0x146c }] */
    /* JADX WARN: Removed duplicated region for block: B:995:0x1505 A[Catch: Exception -> 0x1566, TryCatch #5 {Exception -> 0x1566, blocks: (B:965:0x146c, B:968:0x1476, B:970:0x147a, B:971:0x1484, B:973:0x1488, B:977:0x14a2, B:978:0x14ab, B:982:0x14c1, B:984:0x14c7, B:985:0x14d3, B:987:0x14ea, B:989:0x14f0, B:993:0x1501, B:995:0x1505, B:997:0x1543, B:999:0x1547, B:1001:0x1550, B:1003:0x155a, B:996:0x1526), top: B:1487:0x146c }] */
    /* JADX WARN: Removed duplicated region for block: B:996:0x1526 A[Catch: Exception -> 0x1566, TryCatch #5 {Exception -> 0x1566, blocks: (B:965:0x146c, B:968:0x1476, B:970:0x147a, B:971:0x1484, B:973:0x1488, B:977:0x14a2, B:978:0x14ab, B:982:0x14c1, B:984:0x14c7, B:985:0x14d3, B:987:0x14ea, B:989:0x14f0, B:993:0x1501, B:995:0x1505, B:997:0x1543, B:999:0x1547, B:1001:0x1550, B:1003:0x155a, B:996:0x1526), top: B:1487:0x146c }] */
    /* JADX WARN: Type inference failed for: r0v204, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v77, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout(boolean r50) {
        /*
            Method dump skipped, instructions count: 8500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.DialogCell.buildLayout(boolean):void");
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
                    if (ceil != 0) {
                        ceil += AndroidUtilities.m50dp(3);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + ceil + AndroidUtilities.m50dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.insert(0, (CharSequence) " ");
            valueOf.setSpan(new FixedWidthSpan(AndroidUtilities.m50dp((((this.thumbSize + 2) * this.thumbsCount) - 2) + 5)), 0, 1, 33);
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
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1427id);
            if (topics != null && !topics.isEmpty()) {
                ArrayList arrayList = new ArrayList(topics);
                Collections.sort(arrayList, Comparator.CC.comparingInt(DialogCell$$ExternalSyntheticLambda6.INSTANCE));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                MessageObject messageObject = this.message;
                boolean z2 = true;
                if (messageObject != null) {
                    i = MessageObject.getTopicId(messageObject.messageOwner, true);
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1427id, i);
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
                        spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.m50dp(3)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
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
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1480id != i) {
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
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM), 0, "chats_name", null), 0, Math.min(spannableStringBuilder.length(), i2 + 2), 0);
                }
                return spannableStringBuilder;
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1427id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1427id);
                return "Loading...";
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
                        canvas.translate(AndroidUtilities.m50dp(4) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
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
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.m50dp(60)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.m50dp(60))) && f < ((float) getMeasuredWidth());
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
                CheckBox2 checkBox22 = new CheckBox2(getContext(), this.compactMode ? 17 : 21, this.resourcesProvider) { // from class: org.telegram.ui.Cells.DialogCell.1
                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        DialogCell.this.invalidate();
                    }
                };
                this.checkBox = checkBox22;
                checkBox22.setColor(null, "windowBackgroundWhite", "checkboxCheck");
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1433id);
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
        if (com.iMe.fork.controller.ForkTopicsController.getInstance(r32.currentAccount).hasSelectedTopic(r32.folderId == 1) == false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x069e  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x072d  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x07cb  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x07d7  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x07d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.DialogCell.update(int, boolean):boolean");
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
        return tLRPC$TL_forumTopic.f1480id;
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
            this.archiveHidden = this.folderId == 1 ? HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden() : SharedConfig.archiveHidden;
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
            if (z != z2 && this.archiveHidden == SharedConfig.archiveHidden) {
                try {
                    performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0832, code lost:
        if (r0.type != 2) goto L996;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0bd1, code lost:
        if (r2.lastKnownTypingType >= 0) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:800:0x161a, code lost:
        if (r1 > 0) goto L325;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x1b77  */
    /* JADX WARN: Removed duplicated region for block: B:1016:0x1bb2  */
    /* JADX WARN: Removed duplicated region for block: B:1020:0x1bba  */
    /* JADX WARN: Removed duplicated region for block: B:1022:0x1bbe  */
    /* JADX WARN: Removed duplicated region for block: B:1035:0x1c21  */
    /* JADX WARN: Removed duplicated region for block: B:1039:0x1c44  */
    /* JADX WARN: Removed duplicated region for block: B:1042:0x1c4d  */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x1c54  */
    /* JADX WARN: Removed duplicated region for block: B:1058:0x1c8d  */
    /* JADX WARN: Removed duplicated region for block: B:1088:0x1d17  */
    /* JADX WARN: Removed duplicated region for block: B:1094:0x1d63  */
    /* JADX WARN: Removed duplicated region for block: B:1097:0x1d6c  */
    /* JADX WARN: Removed duplicated region for block: B:1104:0x1d81  */
    /* JADX WARN: Removed duplicated region for block: B:1112:0x1d99  */
    /* JADX WARN: Removed duplicated region for block: B:1120:0x1dc2  */
    /* JADX WARN: Removed duplicated region for block: B:1131:0x1def  */
    /* JADX WARN: Removed duplicated region for block: B:1137:0x1e08  */
    /* JADX WARN: Removed duplicated region for block: B:1147:0x1e2e  */
    /* JADX WARN: Removed duplicated region for block: B:1157:0x1e4d  */
    /* JADX WARN: Removed duplicated region for block: B:1176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0a3c  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0b6d  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0b77  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0bc3  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0c6f  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0c76  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0e31  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0e38  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0e46  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0e49  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0e4f  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0e51  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0e57 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0e64  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0e6a  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0e6c  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0e71  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0e73  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0e77  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0e79  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0e7c  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0eeb  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0f06  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0f08  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0f0e  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0f11  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0f22  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0f2e  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0f37 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0f92  */
    /* JADX WARN: Removed duplicated region for block: B:536:0x0f95  */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0fa0  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0fc3  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0fcc  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0fef  */
    /* JADX WARN: Removed duplicated region for block: B:561:0x0ffa  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x104e  */
    /* JADX WARN: Removed duplicated region for block: B:572:0x1064  */
    /* JADX WARN: Removed duplicated region for block: B:595:0x10d4  */
    /* JADX WARN: Removed duplicated region for block: B:648:0x11ac  */
    /* JADX WARN: Removed duplicated region for block: B:657:0x11d7  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x11e7  */
    /* JADX WARN: Removed duplicated region for block: B:664:0x1233  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x13e8  */
    /* JADX WARN: Removed duplicated region for block: B:728:0x1402  */
    /* JADX WARN: Removed duplicated region for block: B:756:0x157f  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x159c  */
    /* JADX WARN: Removed duplicated region for block: B:763:0x15be  */
    /* JADX WARN: Removed duplicated region for block: B:778:0x15e1  */
    /* JADX WARN: Removed duplicated region for block: B:781:0x15e8  */
    /* JADX WARN: Removed duplicated region for block: B:804:0x1628  */
    /* JADX WARN: Removed duplicated region for block: B:807:0x164e  */
    /* JADX WARN: Removed duplicated region for block: B:808:0x165d  */
    /* JADX WARN: Removed duplicated region for block: B:811:0x1688  */
    /* JADX WARN: Removed duplicated region for block: B:814:0x1694  */
    /* JADX WARN: Removed duplicated region for block: B:825:0x16f5  */
    /* JADX WARN: Removed duplicated region for block: B:969:0x1a96  */
    /* JADX WARN: Removed duplicated region for block: B:974:0x1b1b  */
    /* JADX WARN: Removed duplicated region for block: B:979:0x1b2b  */
    /* JADX WARN: Removed duplicated region for block: B:985:0x1b48  */
    /* JADX WARN: Removed duplicated region for block: B:988:0x1b4e  */
    /* JADX WARN: Removed duplicated region for block: B:994:0x1b60  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r43) {
        /*
            Method dump skipped, instructions count: 7794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.DialogCell.onDraw(android.graphics.Canvas):void");
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

    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        int m51dp;
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
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.m50dp(2));
                this.counterPaintOutline.setStrokeJoin(Paint.Join.ROUND);
                this.counterPaintOutline.setStrokeCap(Paint.Cap.ROUND);
            }
            this.counterPaintOutline.setColor(ColorUtils.blendARGB(Theme.getColor("windowBackgroundWhite"), ColorUtils.setAlphaComponent(Theme.getColor("chats_pinnedOverlay"), 255), Color.alpha(color) / 255.0f));
        }
        if (this.isTopic && this.forumTopic.read_inbox_max_id == 0) {
            if (this.topicCounterPaint == null) {
                this.topicCounterPaint = new Paint();
            }
            paint = this.topicCounterPaint;
            int color2 = Theme.getColor(z ? "topics_unreadCounterMuted" : "topics_unreadCounter", this.resourcesProvider);
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
            this.rect.set(i2 - AndroidUtilities.m51dp(5.5f), i, m51dp + this.countWidth + AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m51dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m51dp(11.5f), AndroidUtilities.m51dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m51dp(11.5f), AndroidUtilities.m51dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.m50dp(4));
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
            float m51dp2 = f8 - AndroidUtilities.m51dp(5.5f);
            float f9 = i;
            this.rect.set(m51dp2, f9, (this.countWidth * f6) + m51dp2 + (this.countWidthOld * f7) + AndroidUtilities.m50dp(11), AndroidUtilities.m50dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m51dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m51dp(11.5f), AndroidUtilities.m51dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m51dp(11.5f), AndroidUtilities.m51dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.m50dp(4));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m50dp(13) : -AndroidUtilities.m50dp(13)) * f7) + f9 + AndroidUtilities.m50dp(4));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m50dp(13) : -AndroidUtilities.m50dp(13)) * f7) + f9 + AndroidUtilities.m50dp(4));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f7));
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.m50dp(13) : AndroidUtilities.m50dp(13)) * f6) + f9 + AndroidUtilities.m50dp(4));
                this.countOldLayout.draw(canvas);
                canvas.restore();
            }
            Theme.dialogs_countTextPaint.setAlpha(alpha);
            canvas.restore();
        }
        if (z3) {
            Theme.dialogs_countTextPaint.setColor(Theme.getColor("chats_unreadCounterText"));
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
        this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.4
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
                pullForegroundDrawable.outCy = AndroidUtilities.m50dp(24);
                this.archivedChatsDrawable.outCx = AndroidUtilities.m50dp(24);
                PullForegroundDrawable pullForegroundDrawable2 = this.archivedChatsDrawable;
                pullForegroundDrawable2.outRadius = BitmapDescriptorFactory.HUE_RED;
                pullForegroundDrawable2.outImageSize = BitmapDescriptorFactory.HUE_RED;
            } else {
                pullForegroundDrawable.outCy = this.avatarImage.getCenterY();
                this.archivedChatsDrawable.outCx = this.avatarImage.getCenterX();
                this.archivedChatsDrawable.outRadius = this.avatarImage.getImageWidth() / 2.0f;
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
        if (i == C3242R.C3245id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
            dialogsActivity.showChatPreview(this);
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isFolderCell() && this.archivedChatsDrawable != null && ((SharedConfig.archiveHidden || HiddenChatsController.getInstance(this.currentAccount).isHiddenChatsHidden()) && this.archivedChatsDrawable.pullProgress == BitmapDescriptorFactory.HUE_RED)) {
            accessibilityNodeInfo.setVisibleToUser(false);
        } else {
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.addAction(32);
            if (!isFolderCell() && this.parentFragment != null && Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3242R.C3245id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3242R.string.AccActionChatPreview)));
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
        if (i == 2) {
            sb.append(LocaleController.getInternalString(C3242R.string.hidden_chats_title));
            sb.append(". ");
        } else if (i == 1) {
            sb.append(LocaleController.getString("ArchivedChats", C3242R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3242R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3242R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3242R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3242R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3242R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3242R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3242R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3242R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3242R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3242R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3242R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3242R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3242R.string.AccDescrReceivedDate, formatDateAudio));
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
            Collections.sort(this.groupMessages, DialogCell$$ExternalSyntheticLambda5.INSTANCE);
            for (int i = 0; i < Math.min(3, this.groupMessages.size()); i++) {
                MessageObject messageObject2 = this.groupMessages.get(i);
                if (messageObject2 != null && !messageObject2.needDrawBluredPreview() && (messageObject2.isPhoto() || messageObject2.isNewGif() || messageObject2.isVideo() || messageObject2.isRoundVideo())) {
                    String str = messageObject2.isWebpage() ? messageObject2.messageOwner.media.webpage.type : null;
                    if (!"app".equals(str) && !Scopes.PROFILE.equals(str) && !"article".equals(str) && (str == null || !str.startsWith("telegram_"))) {
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
        if (this.message.isPhoto() || this.message.isNewGif() || this.message.isVideo() || this.message.isRoundVideo()) {
            String str2 = this.message.isWebpage() ? this.message.messageOwner.media.webpage.type : null;
            if ("app".equals(str2) || Scopes.PROFILE.equals(str2) || "article".equals(str2)) {
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
        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 40);
        TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
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
                this.thumbImage[i].setImage(ImageLocation.getForObject(closestPhotoSizeWithSize2, messageObject.photoThumbsObject), str, ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject.photoThumbsObject), str, i3, null, messageObject, 0);
                this.thumbImage[i].setRoundRadius(AndroidUtilities.m50dp(messageObject.isRoundVideo() ? 18 : 2));
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
            return LocaleController.getString("FromYou", C3242R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3242R.string.HiddenName);
                }
                return ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name).replace("\n", "");
            } else {
                return UserObject.getFirstName(tLRPC$User).replace("\n", "");
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x027c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.telegram.ui.Cells.DialogCell, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.text.SpannableStringBuilder, java.lang.CharSequence, android.text.Spannable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.CharSequence[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.text.SpannableStringBuilder getMessageStringFormatted(java.lang.String r17, java.lang.String r18, java.lang.CharSequence r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.DialogCell.getMessageStringFormatted(java.lang.String, java.lang.String, java.lang.CharSequence, boolean):android.text.SpannableStringBuilder");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CanvasButton canvasButton;
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
            if (org.telegram.messenger.MessagesController.getInstance(r16.this$0.currentAccount).getTopicsController().endIsReached(-r16.this$0.currentDialogId) != false) goto L111;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x023c  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x023f  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0244  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x013c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0163  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01fb  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0207  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean update() {
            /*
                Method dump skipped, instructions count: 623
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.DialogCell.DialogUpdateHelper.update():boolean");
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
}
