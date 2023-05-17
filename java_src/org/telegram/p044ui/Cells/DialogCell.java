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
import org.telegram.messenger.C3290R;
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
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Adapters.DialogsAdapter;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AnimatedEmojiSpan;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BubbleCounterPath;
import org.telegram.p044ui.Components.CanvasButton;
import org.telegram.p044ui.Components.CheckBox2;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.ForegroundColorSpanThemable;
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
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$MessageMedia;
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
    private boolean isForum;
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
        public int f1602id;
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1486id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
        int i2 = 0;
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
        this.avatarImage.setRoundRadius(AndroidUtilities.m54dp(28));
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                ImageReceiver[] imageReceiverArr2 = this.thumbImage;
                imageReceiverArr2[i2].ignoreNotifications = true;
                imageReceiverArr2[i2].setRoundRadius(AndroidUtilities.m54dp(2));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m54dp(22));
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                return;
            }
        }
    }

    public void setDialog(TLRPC$Dialog tLRPC$Dialog, int i, int i2) {
        if (this.currentDialogId != tLRPC$Dialog.f1439id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1439id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1485id;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1574id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1574id))) {
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
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(24), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0));
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
        return AndroidUtilities.m54dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86 : (this.useSeparator ? 1 : 0) + 91);
    }

    private int getCollapsedHeight() {
        return AndroidUtilities.m54dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0) + (this.twoLinesForName ? AndroidUtilities.m54dp(20) : 0);
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
        int m55dp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int m54dp = AndroidUtilities.m54dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                m54dp = AndroidUtilities.m54dp(8);
                m55dp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    m54dp = (i3 - i) - m54dp;
                }
                m55dp = AndroidUtilities.m55dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            if (this.compactMode) {
                if (this.isTopic) {
                    m55dp = calcCompactDrawingElementTop(this.checkBox.getMeasuredHeight());
                } else {
                    m54dp = AndroidUtilities.m54dp(37);
                    m55dp = AndroidUtilities.m54dp(23);
                }
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m54dp, m55dp, checkBox2.getMeasuredWidth() + m54dp, this.checkBox.getMeasuredHeight() + m55dp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize) {
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m49e(e);
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
            if (!messagesController.isHiddenByUndo(tLRPC$Dialog.f1439id)) {
                TLRPC$Chat tLRPC$Chat = null;
                if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1439id)) {
                    TLRPC$EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1439id)));
                    tLRPC$User = encryptedChat != null ? messagesController.getUser(Long.valueOf(encryptedChat.user_id)) : null;
                } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1439id)) {
                    tLRPC$User = messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1439id));
                } else {
                    tLRPC$Chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1439id));
                    tLRPC$User = null;
                }
                if (tLRPC$Chat != null) {
                    replace = tLRPC$Chat.title.replace('\n', ' ');
                } else if (tLRPC$User == null) {
                    continue;
                } else if (UserObject.isDeleted(tLRPC$User)) {
                    replace = LocaleController.getString("HiddenName", C3290R.string.HiddenName);
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
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), AndroidUtilities.m54dp(17), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(110:15|(1:1513)(1:19)|20|(1:1512)(1:26)|27|(1:1511)(1:31)|32|(1:34)|35|(2:37|(1:1500)(1:41))(2:1501|(1:1510)(1:1505))|42|(1:44)|45|(1:47)(1:1495)|48|(7:50|(1:52)|53|54|(1:56)|57|58)|59|(9:61|(2:63|(1:65)(2:750|(2:758|(1:760)(1:761))(2:754|(1:756)(1:757))))(4:762|(1:782)(1:766)|767|(1:769)(2:770|(2:778|(1:780)(1:781))(2:774|(1:776)(1:777))))|66|(3:68|(1:70)(4:737|(1:739)|740|(1:745)(1:744))|71)(3:746|(1:748)|749)|72|(1:74)(1:736)|75|(1:77)(1:(1:732)(1:(1:734)(1:735)))|78)(29:783|(1:785)(2:1483|(2:1491|(1:1493)(1:1494))(2:1487|(1:1489)(1:1490)))|786|(2:788|(2:790|(1:792)(2:793|(2:801|(1:803)(1:804))(2:797|(1:799)(1:800)))))(2:1428|(2:1430|(2:1432|(1:1434)(2:1435|(1:1437)(3:1438|(1:1444)(1:1442)|1443)))(2:1445|(31:1447|(1:1449)(2:1473|(1:1475)(3:1476|(1:1482)(1:1480)|1481))|1450|(2:1452|(21:1460|1461|(2:1463|(2:1467|(1:1469)(1:1470))(1:1466))|806|(1:810)|811|(2:813|(1:817))(2:1424|(1:1426)(1:1427))|818|(6:1402|(2:1404|(2:1406|(2:1408|(1:1410))))|1412|(2:1414|(1:1416))|1418|(13:1420|(1:1422)|825|(7:827|(1:829)(1:1013)|830|(1:832)(1:1012)|833|(1:838)|839)(3:(6:1015|(1:1017)(1:1396)|1018|(1:1020)(1:1395)|(1:1022)(1:1394)|1023)(1:1397)|1024|(4:1026|(2:1028|(3:1035|1036|1034)(1:1032))(7:1037|(1:1039)|1040|(3:1044|(1:1046)(1:1048)|1047)|1049|(1:1053)|1054)|1033|1034)(4:1055|(1:1057)(2:1059|(5:1061|(2:1063|(1:1065)(2:1066|(1:1068)(2:1069|(1:1071)(2:1072|(2:1074|(1:1076)(1:1077))))))(2:1079|(1:1083))|1078|1036|1034)(11:1084|(1:1086)(1:1393)|1087|(2:1101|(8:1103|(7:1107|(1:1109)(3:1386|(1:1388)(1:1390)|1389)|(6:1121|(3:1123|(4:1125|(2:1127|(2:1129|(1:1131)(2:1134|(1:1136)(1:1137))))|1138|(1:1140)(2:1141|(1:1143)(2:1144|(1:1146)(1:1147))))(1:1148)|1132)(2:1149|(7:1154|(2:1166|(2:1182|(4:1246|(2:1248|(4:1250|(1:1261)|1256|(2:1258|(1:1260)))(2:1262|(2:1269|(2:1276|(5:1278|(1:1280)(2:1303|(1:1305)(2:1306|(1:1308)(2:1309|(1:1311)(2:1312|(1:1314)(1:1315)))))|1281|(3:1295|(3:1297|(1:1299)(1:1301)|1300)|1302)(4:1285|(2:1287|(1:1289)(1:1290))|(1:1292)|1293)|1294)(2:1316|(3:1318|(3:1320|(1:1322)(1:1325)|1323)(3:1326|(1:1328)(1:1330)|1329)|1324)(5:1331|(1:1333)(2:1340|(1:1342)(2:1343|(1:1345)(2:1346|(1:1348)(3:1349|(4:1355|(1:1357)|1358|(2:1360|(3:1362|(1:1364)(1:1366)|1365)))(1:1353)|1354))))|1334|1335|(2:1337|(1:1339)))))(1:1275))(1:1268)))|1367|(6:1369|(3:1381|(1:1383)|1384)(1:1373)|1374|(1:1376)|1377|(1:1379))(1:1385))(13:1193|(2:1199|(12:1201|(1:1244)(1:1205)|1206|1207|(1:1243)(5:1213|1214|1215|1216|1217)|1218|(1:1222)|1223|(4:1225|(1:1227)|1228|(1:1230)(1:1231))|1232|1113|(3:1115|(1:1117)(1:1119)|1118)(1:1120)))|1245|1207|(2:1209|1239)|1243|1218|(2:1220|1222)|1223|(0)|1232|1113|(0)(0)))(4:1172|(1:1181)(1:1176)|1177|(1:1179)(4:1180|1112|1113|(0)(0))))(2:1160|(1:1162)(1:1165))|1163|1164|1112|1113|(0)(0))(1:1153))|1133|1112|1113|(0)(0))|1111|1112|1113|(0)(0))|1391|(0)|1111|1112|1113|(0)(0)))|1392|1391|(0)|1111|1112|1113|(0)(0)))|1058|1034))|840|(1:842)(2:1005|(1:1007)(2:1008|(1:1010)(1:1011)))|843|(1:845)(5:909|(5:911|(1:913)(2:969|(1:(3:972|915|916)(2:973|916))(1:974))|914|915|916)(7:975|(1:977)(6:987|(2:1001|(1:1003)(1:1004))(2:995|(1:1000)(1:999))|979|(1:981)(1:986)|982|(1:984)(1:985))|978|979|(0)(0)|982|(0)(0))|917|(2:922|(2:928|(1:930)(2:931|(1:933)(2:934|(3:936|(3:938|(1:940)(1:943)|941)(2:944|(3:946|(1:958)(1:950)|951)(3:959|(1:967)(1:965)|966))|942)))))|968)|846|(2:850|(1:852)(2:853|(4:855|(1:857)|858|(1:860))))|861|(2:863|(1:865)(1:867))(2:868|(3:870|(3:872|(1:874)|875)(2:882|(4:884|(1:886)|887|(1:889)(1:890))(1:891))|(1:880))(4:892|(3:894|(1:896)(2:897|(2:899|(1:901)(4:902|(1:904)|905|(1:907)))(1:908))|(2:878|880))|881|(0)))|866))|824|825|(0)(0)|840|(0)(0)|843|(0)(0)|846|(3:848|850|(0)(0))|861|(0)(0)|866))(1:1472)|1471|1461|(0)|806|(2:808|810)|811|(0)(0)|818|(2:820|1398)|1402|(0)|1412|(0)|1418|(0)|824|825|(0)(0)|840|(0)(0)|843|(0)(0)|846|(0)|861|(0)(0)|866))))|805|806|(0)|811|(0)(0)|818|(0)|1402|(0)|1412|(0)|1418|(0)|824|825|(0)(0)|840|(0)(0)|843|(0)(0)|846|(0)|861|(0)(0)|866)|(2:80|(1:82)(1:729))(1:730)|83|(3:85|(1:87)(1:727)|88)(1:728)|89|(1:91)(1:726)|92|(2:96|(1:98)(1:(73:(1:105)(1:724)|(1:107)|108|(3:110|(1:112)(1:114)|113)|115|(2:117|(1:119)(1:711))(2:712|(2:714|(2:716|(1:718)(1:719))(2:720|(1:722)(1:723))))|120|(2:681|(2:708|(1:710))(2:685|(2:687|(1:689))(2:690|(2:692|(1:694))(2:695|(4:697|(1:699)(1:703)|700|(1:702))))))(2:124|(1:126))|127|128|(1:130)|131|(1:133)|134|(3:136|(1:138)(1:140)|139)|141|(1:143)(1:678)|144|(1:146)|147|(1:677)(1:153)|154|(1:156)(1:676)|157|(1:675)(1:161)|162|163|(3:165|(1:167)|168)(3:631|(4:659|(1:661)(1:673)|662|(2:663|(3:665|(2:667|668)(2:670|671)|669)(1:672)))(8:635|(1:637)(1:658)|638|(1:640)(1:657)|641|(1:643)(1:656)|644|(2:645|(3:647|(2:649|650)(2:652|653)|651)(1:654)))|655)|169|(1:171)|172|(2:174|(2:176|(2:180|(1:182)(2:183|(2:185|(1:187)))))(1:188))|189|(2:191|(2:193|(2:197|(1:199)(2:200|(2:202|(1:204)))))(1:541))(1:(4:(3:553|(2:555|(2:559|(1:561)(2:562|(2:564|(1:566)))))(1:629)|567)(1:630)|(5:569|(1:571)(1:627)|572|(4:574|(1:576)(1:621)|577|(1:581))(3:622|(1:624)(1:626)|625)|582)(1:628)|583|(2:585|(6:587|(3:589|(1:591)(1:593)|592)|594|(3:596|(1:598)(1:600)|599)|601|(1:605))(5:606|(3:608|(1:610)(1:612)|611)|613|(3:615|(1:617)(1:619)|618)|620)))(3:546|(2:548|(1:550))|551))|(7:(1:207)|208|(1:210)|211|(1:222)(1:215)|216|(1:220))|223|(1:540)(1:227)|228|(4:230|(1:491)(1:234)|235|(2:236|(1:238)(1:239)))(2:492|(8:517|518|(2:520|(2:522|(1:524)))|525|526|(1:536)(1:530)|531|(2:532|(1:534)(1:535)))(2:496|(4:501|(1:511)(1:505)|506|(2:507|(1:509)(1:510)))(1:500)))|240|(1:242)|243|244|245|(1:247)(1:489)|248|249|250|251|(3:253|(1:258)|259)|260|261|(1:483)(2:(2:268|(1:477)(1:274))|275)|276|(3:278|(3:280|(2:289|290)|287)|291)|292|(1:476)(1:296)|297|(12:302|(2:304|(1:308))|309|310|311|312|313|(10:315|(6:319|(1:321)|322|(1:349)(2:326|(1:328)(2:334|(1:336)(2:337|(3:339|(1:341)(1:343)|342)(1:344))))|329|(2:331|(1:333)))|350|(4:354|(1:(1:364)(2:356|(1:358)(2:359|360)))|361|(1:363))|365|(4:369|(1:(1:379)(2:371|(1:373)(2:374|375)))|376|(1:378))|380|(2:386|(1:388))|389|(4:393|(1:395)|396|397))(10:415|(5:419|(1:421)|422|(4:424|(1:426)|427|(1:429))|430)|431|(4:435|(1:437)|438|439)|440|(4:444|(1:446)|447|448)|449|(4:453|(1:455)|456|457)|458|(1:462))|398|(3:(1:412)(1:407)|408|(1:410)(1:411))|413|414)|467|(1:470)|471|(1:473)(1:475)|474|310|311|312|313|(0)(0)|398|(6:400|402|(1:405)|412|408|(0)(0))|413|414)(2:101|(1:103))))|725|108|(0)|115|(0)(0)|120|(1:122)|681|(1:683)|704|706|708|(0)|127|128|(0)|131|(0)|134|(0)|141|(0)(0)|144|(0)|147|(1:149)|677|154|(0)(0)|157|(1:159)|675|162|163|(0)(0)|169|(0)|172|(0)|189|(0)(0)|(0)|223|(1:225)|540|228|(0)(0)|240|(0)|243|244|245|(0)(0)|248|249|250|251|(0)|260|261|(1:263)|479|481|483|276|(0)|292|(1:294)|476|297|(13:299|302|(0)|309|310|311|312|313|(0)(0)|398|(0)|413|414)|467|(1:470)|471|(0)(0)|474|310|311|312|313|(0)(0)|398|(0)|413|414) */
    /* JADX WARN: Code restructure failed: missing block: B:1013:0x157a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1014:0x157b, code lost:
        org.telegram.messenger.FileLog.m49e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1289:0x1d41, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1290:0x1d42, code lost:
        org.telegram.messenger.FileLog.m49e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1357:0x1e92, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1358:0x1e93, code lost:
        r3 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1359:0x1e95, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1360:0x1e96, code lost:
        r51.messageLayout = null;
        org.telegram.messenger.FileLog.m49e(r0);
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x061a, code lost:
        if (r3.post_messages == false) goto L824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0626, code lost:
        if (r3.kicked != false) goto L824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0634, code lost:
        if (r51.isTopic == false) goto L824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:688:0x0ef5, code lost:
        if (r1 != null) goto L1164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:839:0x115e, code lost:
        if (r4 == null) goto L881;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x151b A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Removed duplicated region for block: B:1004:0x153a A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Removed duplicated region for block: B:1007:0x155b A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Removed duplicated region for block: B:1017:0x1592  */
    /* JADX WARN: Removed duplicated region for block: B:1021:0x15ee  */
    /* JADX WARN: Removed duplicated region for block: B:1061:0x17be  */
    /* JADX WARN: Removed duplicated region for block: B:1064:0x17cd  */
    /* JADX WARN: Removed duplicated region for block: B:1081:0x1841  */
    /* JADX WARN: Removed duplicated region for block: B:1096:0x18c7  */
    /* JADX WARN: Removed duplicated region for block: B:1187:0x1b0e  */
    /* JADX WARN: Removed duplicated region for block: B:1206:0x1b62  */
    /* JADX WARN: Removed duplicated region for block: B:1213:0x1b78  */
    /* JADX WARN: Removed duplicated region for block: B:1224:0x1ba3  */
    /* JADX WARN: Removed duplicated region for block: B:1272:0x1c5f  */
    /* JADX WARN: Removed duplicated region for block: B:1276:0x1c80 A[Catch: Exception -> 0x1cd4, TryCatch #5 {Exception -> 0x1cd4, blocks: (B:1274:0x1c78, B:1276:0x1c80, B:1277:0x1cd1), top: B:1514:0x1c78 }] */
    /* JADX WARN: Removed duplicated region for block: B:1277:0x1cd1 A[Catch: Exception -> 0x1cd4, TRY_LEAVE, TryCatch #5 {Exception -> 0x1cd4, blocks: (B:1274:0x1c78, B:1276:0x1c80, B:1277:0x1cd1), top: B:1514:0x1c78 }] */
    /* JADX WARN: Removed duplicated region for block: B:1281:0x1cea A[Catch: Exception -> 0x1d41, TryCatch #7 {Exception -> 0x1d41, blocks: (B:1279:0x1ce4, B:1281:0x1cea, B:1283:0x1cee, B:1286:0x1cf3, B:1287:0x1d1c), top: B:1518:0x1ce4 }] */
    /* JADX WARN: Removed duplicated region for block: B:1293:0x1d49 A[Catch: Exception -> 0x1e95, TryCatch #4 {Exception -> 0x1e95, blocks: (B:1291:0x1d45, B:1293:0x1d49, B:1301:0x1d63, B:1304:0x1d69, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d86, B:1313:0x1db2, B:1315:0x1db6, B:1317:0x1dca, B:1319:0x1dd0, B:1321:0x1dd4, B:1324:0x1de1, B:1323:0x1dde, B:1325:0x1de4, B:1327:0x1de8, B:1329:0x1dec, B:1331:0x1df1, B:1333:0x1df5, B:1336:0x1dfa, B:1338:0x1dfe, B:1340:0x1e0f, B:1342:0x1e15, B:1343:0x1e28, B:1345:0x1e43, B:1348:0x1e4a, B:1349:0x1e50, B:1353:0x1e65, B:1330:0x1def, B:1311:0x1da2, B:1295:0x1d4d, B:1297:0x1d51, B:1299:0x1d56), top: B:1512:0x1d45 }] */
    /* JADX WARN: Removed duplicated region for block: B:1315:0x1db6 A[Catch: Exception -> 0x1e95, TryCatch #4 {Exception -> 0x1e95, blocks: (B:1291:0x1d45, B:1293:0x1d49, B:1301:0x1d63, B:1304:0x1d69, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d86, B:1313:0x1db2, B:1315:0x1db6, B:1317:0x1dca, B:1319:0x1dd0, B:1321:0x1dd4, B:1324:0x1de1, B:1323:0x1dde, B:1325:0x1de4, B:1327:0x1de8, B:1329:0x1dec, B:1331:0x1df1, B:1333:0x1df5, B:1336:0x1dfa, B:1338:0x1dfe, B:1340:0x1e0f, B:1342:0x1e15, B:1343:0x1e28, B:1345:0x1e43, B:1348:0x1e4a, B:1349:0x1e50, B:1353:0x1e65, B:1330:0x1def, B:1311:0x1da2, B:1295:0x1d4d, B:1297:0x1d51, B:1299:0x1d56), top: B:1512:0x1d45 }] */
    /* JADX WARN: Removed duplicated region for block: B:1327:0x1de8 A[Catch: Exception -> 0x1e95, TryCatch #4 {Exception -> 0x1e95, blocks: (B:1291:0x1d45, B:1293:0x1d49, B:1301:0x1d63, B:1304:0x1d69, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d86, B:1313:0x1db2, B:1315:0x1db6, B:1317:0x1dca, B:1319:0x1dd0, B:1321:0x1dd4, B:1324:0x1de1, B:1323:0x1dde, B:1325:0x1de4, B:1327:0x1de8, B:1329:0x1dec, B:1331:0x1df1, B:1333:0x1df5, B:1336:0x1dfa, B:1338:0x1dfe, B:1340:0x1e0f, B:1342:0x1e15, B:1343:0x1e28, B:1345:0x1e43, B:1348:0x1e4a, B:1349:0x1e50, B:1353:0x1e65, B:1330:0x1def, B:1311:0x1da2, B:1295:0x1d4d, B:1297:0x1d51, B:1299:0x1d56), top: B:1512:0x1d45 }] */
    /* JADX WARN: Removed duplicated region for block: B:1333:0x1df5 A[Catch: Exception -> 0x1e95, TryCatch #4 {Exception -> 0x1e95, blocks: (B:1291:0x1d45, B:1293:0x1d49, B:1301:0x1d63, B:1304:0x1d69, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d86, B:1313:0x1db2, B:1315:0x1db6, B:1317:0x1dca, B:1319:0x1dd0, B:1321:0x1dd4, B:1324:0x1de1, B:1323:0x1dde, B:1325:0x1de4, B:1327:0x1de8, B:1329:0x1dec, B:1331:0x1df1, B:1333:0x1df5, B:1336:0x1dfa, B:1338:0x1dfe, B:1340:0x1e0f, B:1342:0x1e15, B:1343:0x1e28, B:1345:0x1e43, B:1348:0x1e4a, B:1349:0x1e50, B:1353:0x1e65, B:1330:0x1def, B:1311:0x1da2, B:1295:0x1d4d, B:1297:0x1d51, B:1299:0x1d56), top: B:1512:0x1d45 }] */
    /* JADX WARN: Removed duplicated region for block: B:1338:0x1dfe A[Catch: Exception -> 0x1e95, TryCatch #4 {Exception -> 0x1e95, blocks: (B:1291:0x1d45, B:1293:0x1d49, B:1301:0x1d63, B:1304:0x1d69, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d86, B:1313:0x1db2, B:1315:0x1db6, B:1317:0x1dca, B:1319:0x1dd0, B:1321:0x1dd4, B:1324:0x1de1, B:1323:0x1dde, B:1325:0x1de4, B:1327:0x1de8, B:1329:0x1dec, B:1331:0x1df1, B:1333:0x1df5, B:1336:0x1dfa, B:1338:0x1dfe, B:1340:0x1e0f, B:1342:0x1e15, B:1343:0x1e28, B:1345:0x1e43, B:1348:0x1e4a, B:1349:0x1e50, B:1353:0x1e65, B:1330:0x1def, B:1311:0x1da2, B:1295:0x1d4d, B:1297:0x1d51, B:1299:0x1d56), top: B:1512:0x1d45 }] */
    /* JADX WARN: Removed duplicated region for block: B:1347:0x1e48 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1351:0x1e60  */
    /* JADX WARN: Removed duplicated region for block: B:1352:0x1e63  */
    /* JADX WARN: Removed duplicated region for block: B:1363:0x1eb1  */
    /* JADX WARN: Removed duplicated region for block: B:1441:0x206b  */
    /* JADX WARN: Removed duplicated region for block: B:1488:0x2147  */
    /* JADX WARN: Removed duplicated region for block: B:1499:0x2184  */
    /* JADX WARN: Removed duplicated region for block: B:1500:0x218c  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x062c  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x063e  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x06a0  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0b5b  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0b6c  */
    /* JADX WARN: Removed duplicated region for block: B:693:0x0f00  */
    /* JADX WARN: Removed duplicated region for block: B:698:0x0f18  */
    /* JADX WARN: Removed duplicated region for block: B:701:0x0f25  */
    /* JADX WARN: Removed duplicated region for block: B:702:0x0f2d  */
    /* JADX WARN: Removed duplicated region for block: B:711:0x0f4b  */
    /* JADX WARN: Removed duplicated region for block: B:712:0x0f5d  */
    /* JADX WARN: Removed duplicated region for block: B:750:0x0ff0  */
    /* JADX WARN: Removed duplicated region for block: B:751:0x0ff5  */
    /* JADX WARN: Removed duplicated region for block: B:754:0x0ffc  */
    /* JADX WARN: Removed duplicated region for block: B:755:0x0fff  */
    /* JADX WARN: Removed duplicated region for block: B:812:0x10c9  */
    /* JADX WARN: Removed duplicated region for block: B:816:0x10db  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x10e5  */
    /* JADX WARN: Removed duplicated region for block: B:827:0x111e  */
    /* JADX WARN: Removed duplicated region for block: B:831:0x1133  */
    /* JADX WARN: Removed duplicated region for block: B:870:0x11dc  */
    /* JADX WARN: Removed duplicated region for block: B:875:0x11f7  */
    /* JADX WARN: Removed duplicated region for block: B:879:0x1236  */
    /* JADX WARN: Removed duplicated region for block: B:882:0x1243  */
    /* JADX WARN: Removed duplicated region for block: B:887:0x1276  */
    /* JADX WARN: Removed duplicated region for block: B:890:0x127c  */
    /* JADX WARN: Removed duplicated region for block: B:891:0x128c  */
    /* JADX WARN: Removed duplicated region for block: B:898:0x12b8  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x12c2  */
    /* JADX WARN: Removed duplicated region for block: B:913:0x1312  */
    /* JADX WARN: Removed duplicated region for block: B:920:0x132f  */
    /* JADX WARN: Removed duplicated region for block: B:924:0x135e  */
    /* JADX WARN: Removed duplicated region for block: B:938:0x13de  */
    /* JADX WARN: Removed duplicated region for block: B:945:0x1400  */
    /* JADX WARN: Removed duplicated region for block: B:953:0x1420  */
    /* JADX WARN: Removed duplicated region for block: B:975:0x148b  */
    /* JADX WARN: Removed duplicated region for block: B:978:0x1490 A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Removed duplicated region for block: B:981:0x149e A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Removed duplicated region for block: B:988:0x14d4  */
    /* JADX WARN: Removed duplicated region for block: B:989:0x14d6  */
    /* JADX WARN: Removed duplicated region for block: B:992:0x14dd A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Removed duplicated region for block: B:995:0x1500 A[Catch: Exception -> 0x157a, TryCatch #1 {Exception -> 0x157a, blocks: (B:973:0x1482, B:976:0x148c, B:978:0x1490, B:979:0x149a, B:981:0x149e, B:985:0x14b8, B:986:0x14c1, B:990:0x14d7, B:992:0x14dd, B:993:0x14e9, B:995:0x1500, B:997:0x1506, B:1001:0x1517, B:1003:0x151b, B:1005:0x1557, B:1007:0x155b, B:1009:0x1564, B:1011:0x156e, B:1004:0x153a), top: B:1506:0x1482 }] */
    /* JADX WARN: Type inference failed for: r0v205, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r5v36, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:1290:0x1d42 -> B:1512:0x1d45). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout(boolean r52) {
        /*
            Method dump skipped, instructions count: 8606
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
                        ceil += AndroidUtilities.m54dp(3);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + ceil + AndroidUtilities.m54dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m49e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.insert(0, (CharSequence) " ");
            valueOf.setSpan(new FixedWidthSpan(AndroidUtilities.m54dp((((this.thumbSize + 2) * this.thumbsCount) - 2) + 5)), 0, 1, 33);
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
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1433id);
            if (topics != null && !topics.isEmpty()) {
                ArrayList arrayList = new ArrayList(topics);
                Collections.sort(arrayList, Comparator.CC.comparingInt(DialogCell$$ExternalSyntheticLambda6.INSTANCE));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                MessageObject messageObject = this.message;
                boolean z2 = true;
                if (messageObject != null) {
                    i = MessageObject.getTopicId(messageObject.messageOwner, true);
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1433id, i);
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
                        spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.m54dp(3)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
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
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1486id != i) {
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
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1433id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1433id);
                return LocaleController.getString("Loading", C3290R.string.Loading);
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
                        canvas.translate(AndroidUtilities.m54dp(4) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
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
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.m54dp(60)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.m54dp(60))) && f < ((float) getMeasuredWidth());
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1439id);
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
    /* JADX WARN: Removed duplicated region for block: B:131:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0771  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0781  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x078f  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2130
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
        return tLRPC$TL_forumTopic.f1486id;
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
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0516, code lost:
        if (r40.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L1032;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x06cb, code lost:
        if (r40.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L1022;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0be6, code lost:
        if (r2.lastKnownTypingType >= 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:801:0x1616, code lost:
        if (r1 > 0) goto L342;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x1b5b  */
    /* JADX WARN: Removed duplicated region for block: B:1005:0x1b69  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x1b88  */
    /* JADX WARN: Removed duplicated region for block: B:1016:0x1b90  */
    /* JADX WARN: Removed duplicated region for block: B:1017:0x1b94  */
    /* JADX WARN: Removed duplicated region for block: B:1031:0x1bf7  */
    /* JADX WARN: Removed duplicated region for block: B:1035:0x1c1a  */
    /* JADX WARN: Removed duplicated region for block: B:1038:0x1c23  */
    /* JADX WARN: Removed duplicated region for block: B:1041:0x1c2a  */
    /* JADX WARN: Removed duplicated region for block: B:1054:0x1c63  */
    /* JADX WARN: Removed duplicated region for block: B:1084:0x1ced  */
    /* JADX WARN: Removed duplicated region for block: B:1090:0x1d3b  */
    /* JADX WARN: Removed duplicated region for block: B:1095:0x1d47  */
    /* JADX WARN: Removed duplicated region for block: B:1101:0x1d5c  */
    /* JADX WARN: Removed duplicated region for block: B:1110:0x1d77  */
    /* JADX WARN: Removed duplicated region for block: B:1118:0x1da0  */
    /* JADX WARN: Removed duplicated region for block: B:1129:0x1dcd  */
    /* JADX WARN: Removed duplicated region for block: B:1135:0x1de6  */
    /* JADX WARN: Removed duplicated region for block: B:1145:0x1e0c  */
    /* JADX WARN: Removed duplicated region for block: B:1155:0x1e2b  */
    /* JADX WARN: Removed duplicated region for block: B:1174:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0a5e  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0b82  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0b8c  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0bd8  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0c87  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0c8f  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0e4e  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0e5c  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0e5e  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0e64  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0e66  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0e6c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0e79  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0e7f  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0e81  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0e86  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0e88  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0e8c  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0e8e  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0e91  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0ef4  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0f0b  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0f0d  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0f13  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0f15  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0f22  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0f2e  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0f37 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:536:0x0f92  */
    /* JADX WARN: Removed duplicated region for block: B:537:0x0f95  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0fa0  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0fc3  */
    /* JADX WARN: Removed duplicated region for block: B:551:0x0fcc  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0fef  */
    /* JADX WARN: Removed duplicated region for block: B:562:0x0ffa  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x104e  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x1064  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x10d4  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x11ac  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x11d7  */
    /* JADX WARN: Removed duplicated region for block: B:664:0x11e7  */
    /* JADX WARN: Removed duplicated region for block: B:665:0x1233  */
    /* JADX WARN: Removed duplicated region for block: B:721:0x13e2  */
    /* JADX WARN: Removed duplicated region for block: B:729:0x13fc  */
    /* JADX WARN: Removed duplicated region for block: B:757:0x157c  */
    /* JADX WARN: Removed duplicated region for block: B:758:0x1580  */
    /* JADX WARN: Removed duplicated region for block: B:761:0x1596  */
    /* JADX WARN: Removed duplicated region for block: B:764:0x15b8  */
    /* JADX WARN: Removed duplicated region for block: B:779:0x15db  */
    /* JADX WARN: Removed duplicated region for block: B:782:0x15e2  */
    /* JADX WARN: Removed duplicated region for block: B:805:0x1624  */
    /* JADX WARN: Removed duplicated region for block: B:808:0x1648  */
    /* JADX WARN: Removed duplicated region for block: B:809:0x1655  */
    /* JADX WARN: Removed duplicated region for block: B:812:0x167f  */
    /* JADX WARN: Removed duplicated region for block: B:815:0x168b  */
    /* JADX WARN: Removed duplicated region for block: B:826:0x16ec  */
    /* JADX WARN: Removed duplicated region for block: B:967:0x1a76  */
    /* JADX WARN: Removed duplicated region for block: B:972:0x1afa  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x1b0a  */
    /* JADX WARN: Removed duplicated region for block: B:985:0x1b2b  */
    /* JADX WARN: Removed duplicated region for block: B:991:0x1b3d  */
    /* JADX WARN: Removed duplicated region for block: B:998:0x1b54  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r41) {
        /*
            Method dump skipped, instructions count: 7760
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
        int m55dp;
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
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.m54dp(2));
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
            this.rect.set(i2 - AndroidUtilities.m55dp(5.5f), i, m55dp + this.countWidth + AndroidUtilities.m54dp(11), AndroidUtilities.m54dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m55dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m55dp(11.5f), AndroidUtilities.m55dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m55dp(11.5f), AndroidUtilities.m55dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.m54dp(4));
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
            float m55dp2 = f8 - AndroidUtilities.m55dp(5.5f);
            float f9 = i;
            this.rect.set(m55dp2, f9, (this.countWidth * f6) + m55dp2 + (this.countWidthOld * f7) + AndroidUtilities.m54dp(11), AndroidUtilities.m54dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m55dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m55dp(11.5f), AndroidUtilities.m55dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m55dp(11.5f), AndroidUtilities.m55dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.m54dp(4));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m54dp(13) : -AndroidUtilities.m54dp(13)) * f7) + f9 + AndroidUtilities.m54dp(4));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m54dp(13) : -AndroidUtilities.m54dp(13)) * f7) + f9 + AndroidUtilities.m54dp(4));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f7));
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.m54dp(13) : AndroidUtilities.m54dp(13)) * f6) + f9 + AndroidUtilities.m54dp(4));
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
                pullForegroundDrawable.outCy = AndroidUtilities.m54dp(24);
                this.archivedChatsDrawable.outCx = AndroidUtilities.m54dp(24);
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
        if (i == C3290R.C3293id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3290R.C3293id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3290R.string.AccActionChatPreview)));
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
            sb.append(i == 2 ? LocaleController.getInternalString(C3290R.string.hidden_chats_title) : LocaleController.getString("ArchivedChats", C3290R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3290R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3290R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3290R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3290R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3290R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3290R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3290R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3290R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3290R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3290R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3290R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3290R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3290R.string.AccDescrReceivedDate, formatDateAudio));
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
                this.thumbImage[i].setRoundRadius(AndroidUtilities.m54dp(messageObject.isRoundVideo() ? 18 : 2));
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
            return LocaleController.getString("FromYou", C3290R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3290R.string.HiddenName);
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
                String str4 = captionMessage.messageTrimmedToHighlight;
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m54dp((this.messagePaddingStart + 23) + 24);
                if (this.hasNameInMessage) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(charSequence.toString()));
                    }
                    measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(": "));
                }
                if (measuredWidth > 0) {
                    str4 = AndroidUtilities.ellipsizeCenterEnd(str4, captionMessage.highlightedWords.get(0), measuredWidth, this.currentMessagePaint, TsExtractor.TS_STREAM_TYPE_HDMV_DTS).toString();
                }
                return new SpannableStringBuilder(str3).append((CharSequence) str4);
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
                    FileLog.m49e(e);
                }
            }
            return formatSpannable;
        } else {
            MessageObject messageObject4 = this.message;
            CharSequence charSequence7 = messageObject4.messageOwner.message;
            if (charSequence7 != null) {
                if (messageObject4.hasHighlightedWords()) {
                    String str5 = this.message.messageTrimmedToHighlight;
                    if (str5 != null) {
                        charSequence7 = str5;
                    }
                    int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.m54dp((this.messagePaddingStart + 23) + 10);
                    if (this.hasNameInMessage) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(charSequence.toString()));
                        }
                        measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(": "));
                    }
                    if (measuredWidth2 > 0) {
                        charSequence7 = AndroidUtilities.ellipsizeCenterEnd(charSequence7, this.message.highlightedWords.get(0), measuredWidth2, this.currentMessagePaint, TsExtractor.TS_STREAM_TYPE_HDMV_DTS).toString();
                    }
                } else {
                    if (charSequence7.length() > 150) {
                        charSequence7 = charSequence7.subSequence(0, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                    }
                    charSequence7 = AndroidUtilities.replaceNewLines(charSequence7);
                }
                ?? spannableStringBuilder2 = new SpannableStringBuilder(charSequence7);
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
