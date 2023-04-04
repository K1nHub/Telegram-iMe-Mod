package org.telegram.p048ui.Cells;

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
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.LockedSection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
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
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Adapters.DialogsAdapter;
import org.telegram.p048ui.Components.AnimatedEmojiDrawable;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BubbleCounterPath;
import org.telegram.p048ui.Components.CanvasButton;
import org.telegram.p048ui.Components.CheckBox2;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p048ui.Components.Forum.ForumUtilities;
import org.telegram.p048ui.Components.PullForegroundDrawable;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.TimerDrawable;
import org.telegram.p048ui.Components.TypefaceSpan;
import org.telegram.p048ui.Components.spoilers.SpoilerEffect;
import org.telegram.p048ui.DialogsActivity;
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
import p035j$.util.Comparator;
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
        public int f1670id;
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

    @Override // org.telegram.p048ui.Cells.BaseCell, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
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

    private boolean isArchiveContentHidden() {
        LockedSectionsController.SectionPasscodeData sectionsPasscodeData = LockedSectionsController.getInstance(this.currentAccount).getSectionsPasscodeData(LockedSection.ARCHIVE);
        return (sectionsPasscodeData == null || sectionsPasscodeData.getPasscodeHash().isEmpty()) ? false : true;
    }

    private boolean isCloudContentHidden() {
        LockedSectionsController.SectionPasscodeData sectionsPasscodeData = LockedSectionsController.getInstance(this.currentAccount).getSectionsPasscodeData(LockedSection.CLOUD);
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1555id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
        if (this.currentDialogId != tLRPC$Dialog.f1508id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1508id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1554id;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1642id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1642id))) {
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
        boolean z = SharedConfig.archiveHidden;
        this.archiveHidden = z;
        float f = 1.0f;
        float f2 = z ? 0.0f : 1.0f;
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
        ArrayList arrayList = new ArrayList(MessagesController.getInstance(this.currentAccount).getDialogs(this.currentDialogFolderId));
        arrayList.addAll(MessagesController.getInstance(this.currentAccount).dialogsAlbumsOnly);
        this.currentDialogFolderDialogsCount = arrayList.size();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) arrayList.get(i);
            TLRPC$Chat tLRPC$Chat = null;
            if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1508id)) {
                TLRPC$EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1508id)));
                tLRPC$User = encryptedChat != null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id)) : null;
            } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1508id)) {
                tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Dialog.f1508id));
            } else {
                tLRPC$Chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1508id));
                tLRPC$User = null;
            }
            if (tLRPC$Chat != null) {
                replace = tLRPC$Chat.title.replace('\n', ' ');
            } else if (tLRPC$User == null) {
                continue;
            } else if (UserObject.isDeleted(tLRPC$User)) {
                replace = LocaleController.getString("HiddenName", C3316R.string.HiddenName);
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

    /* JADX WARN: Can't wrap try/catch for region: R(105:14|(1:1482)(1:18)|19|(1:1481)(1:25)|26|(1:1480)(1:30)|31|(1:33)|34|(2:36|(1:1469)(1:40))(2:1470|(1:1479)(1:1474))|41|(1:43)|44|(1:46)(1:1464)|47|(7:49|(1:51)|52|53|(1:55)|56|57)|58|(9:60|(2:62|(1:64)(2:724|(2:732|(1:734)(1:735))(2:728|(1:730)(1:731))))(4:736|(1:756)(1:740)|741|(1:743)(2:744|(2:752|(1:754)(1:755))(2:748|(1:750)(1:751))))|65|(3:67|(1:69)(4:711|(1:713)|714|(1:719)(1:718))|70)(3:720|(1:722)|723)|71|(1:73)(1:710)|74|(1:76)(1:(1:706)(1:(1:708)(1:709)))|77)(23:757|(1:759)(2:1452|(2:1460|(1:1462)(1:1463))(2:1456|(1:1458)(1:1459)))|760|(2:762|(2:764|(1:766)(2:767|(2:775|(1:777)(1:778))(2:771|(1:773)(1:774)))))(2:1398|(2:1400|(2:1402|(1:1404)(2:1405|(1:1407)(3:1408|(1:1414)(1:1412)|1413)))(2:1415|(7:1417|(1:1419)(2:1442|(1:1444)(3:1445|(1:1451)(1:1449)|1450))|1420|(2:1422|(3:1430|1431|(2:1433|(2:1437|(1:1439)(1:1440))(1:1436))))|1441|1431|(0)))))|779|(1:783)|784|(2:786|(1:790))(2:1394|(1:1396)(1:1397))|791|(6:1372|(2:1374|(2:1376|(2:1378|(1:1380))))|1382|(2:1384|(1:1386))|1388|(14:1390|(1:1392)|798|(7:800|(1:802)(1:985)|803|(1:805)(1:984)|806|(1:811)|812)(3:(6:987|(1:989)(1:1366)|990|(1:992)(1:1365)|(1:994)(1:1364)|995)(1:1367)|996|(3:998|(2:1000|(2:1006|1007)(1:1004))(7:1008|(1:1010)|1011|(3:1015|(1:1017)(1:1019)|1018)|1020|(1:1024)|1025)|1005)(4:1026|(1:1028)(2:1031|(4:1033|(2:1035|(1:1037)(2:1038|(1:1040)(2:1041|(1:1043)(2:1044|(2:1046|(1:1048)(1:1049))))))(2:1051|(2:1055|1030))|1050|1007)(13:1056|(1:1058)(1:1363)|1059|(2:1073|(10:1075|(2:1077|(9:1079|(1:1081)(3:1355|(1:1357)(1:1359)|1358)|(7:1093|(3:1095|(4:1097|(2:1099|(2:1101|(1:1103)(2:1106|(1:1108)(1:1109))))|1110|(1:1112)(2:1113|(1:1115)(2:1116|(1:1118)(1:1119))))(1:1120)|1104)(2:1121|(9:1126|(2:1138|(2:1154|(5:1218|(4:1240|(4:1242|(1:1253)|1248|(2:1250|(1:1252)))(2:1254|(2:1261|(2:1268|(4:1270|(1:1272)(2:1294|(1:1296)(2:1297|(1:1299)(2:1300|(1:1302)(2:1303|(1:1305)(1:1306)))))|1273|(3:1286|(3:1288|(1:1290)(1:1292)|1291)|1293)(4:1277|(2:1279|(1:1281)(1:1282))|(1:1284)|1285))(2:1307|(3:1309|(3:1311|(1:1313)(1:1316)|1314)(3:1317|(1:1319)(1:1321)|1320)|1315)(5:1322|(1:1324)(2:1331|(1:1333)(2:1334|(1:1336)(2:1337|(1:1339)(3:1340|(2:1346|(2:1348|(3:1350|(1:1352)(1:1354)|1353)))(1:1344)|1345))))|1325|1326|(2:1328|(1:1330)))))(1:1267))(1:1260))|1221|(6:1223|(3:1235|(1:1237)|1238)(1:1227)|1228|(1:1230)|1231|(1:1233))(1:1239))|1220|1221|(0)(0))(14:1165|(2:1171|(13:1173|(1:1216)(1:1177)|1178|1179|(1:1215)(5:1185|1186|1187|1188|1189)|1190|(1:1194)|1195|(4:1197|(1:1199)|1200|(1:1202)(1:1203))|1204|1086|(2:1088|(1:1090)(1:1091))|1092))|1217|1179|(2:1181|1211)|1215|1190|(2:1192|1194)|1195|(0)|1204|1086|(0)|1092))(8:1144|(1:1153)(1:1148)|1149|(1:1151)(1:1152)|1085|1086|(0)|1092))(2:1132|(1:1134)(1:1137))|1135|1136|1084|1085|1086|(0)|1092)(1:1125))|1105|1085|1086|(0)|1092)|1083|1084|1085|1086|(0)|1092))(1:1361)|1360|(0)|1083|1084|1085|1086|(0)|1092))|1362|1360|(0)|1083|1084|1085|1086|(0)|1092))|1029|1030))|813|(1:815)(2:977|(1:979)(2:980|(1:982)(1:983)))|816|(1:818)(5:881|(5:883|(1:885)(2:941|(1:(3:944|887|888)(2:945|888))(1:946))|886|887|888)(7:947|(1:949)(6:959|(2:973|(1:975)(1:976))(2:967|(1:972)(1:971))|951|(1:953)(1:958)|954|(1:956)(1:957))|950|951|(0)(0)|954|(0)(0))|889|(2:894|(2:900|(1:902)(2:903|(1:905)(2:906|(3:908|(3:910|(1:912)(1:915)|913)(2:916|(3:918|(1:930)(1:922)|923)(3:931|(1:939)(1:937)|938))|914)))))|940)|819|(5:823|(1:825)(2:871|(5:873|(1:875)|876|(1:878)|879))|826|(1:828)(2:830|(3:832|(3:834|(1:836)|837)(2:844|(4:846|(1:848)|849|(1:851)(1:852))(1:853))|(1:842))(4:854|(3:856|(1:858)(2:859|(2:861|(1:863)(4:864|(1:866)|867|(1:869)))(1:870))|(2:840|842))|843|(0)))|829)|880|826|(0)(0)|829))|797|798|(0)(0)|813|(0)(0)|816|(0)(0)|819|(6:821|823|(0)(0)|826|(0)(0)|829)|880|826|(0)(0)|829)|(2:79|(1:81)(1:703))(1:704)|82|(3:84|(1:86)(1:701)|87)(1:702)|88|(1:90)(1:700)|91|(2:95|(1:97)(69:98|(2:(1:696)|(1:698))(2:101|(1:103))|104|(1:106)|107|(2:109|(1:111)(1:682))(2:683|(2:685|(2:687|(1:689)(1:690))(2:691|(1:693)(1:694))))|112|(2:652|(2:679|(1:681))(2:656|(2:658|(1:660))(2:661|(2:663|(1:665))(2:666|(4:668|(1:670)(1:674)|671|(1:673))))))(2:116|(1:118))|119|120|(1:122)|123|(1:125)|126|(3:128|(1:130)(1:132)|131)|133|(1:135)(1:649)|136|(1:138)|139|(1:648)(1:145)|146|(1:148)(1:647)|149|(1:646)(1:153)|154|155|(3:157|(1:159)|160)(3:602|(4:630|(1:632)(1:644)|633|(2:634|(3:636|(2:638|639)(2:641|642)|640)(1:643)))(8:606|(1:608)(1:629)|609|(1:611)(1:628)|612|(1:614)(1:627)|615|(2:616|(3:618|(2:620|621)(2:623|624)|622)(1:625)))|626)|161|(1:163)|164|(2:166|(2:168|(2:172|(1:174)(2:175|(2:177|(1:179)))))(1:180))|181|(2:183|(2:185|(2:189|(1:191)(2:192|(2:194|(1:196)))))(1:512))(1:(4:(3:524|(2:526|(2:530|(1:532)(2:533|(2:535|(1:537)))))(1:600)|538)(1:601)|(5:540|(1:542)(1:598)|543|(4:545|(1:547)(1:592)|548|(1:552))(3:593|(1:595)(1:597)|596)|553)(1:599)|554|(2:556|(6:558|(3:560|(1:562)(1:564)|563)|565|(3:567|(1:569)(1:571)|570)|572|(1:576))(5:577|(3:579|(1:581)(1:583)|582)|584|(3:586|(1:588)(1:590)|589)|591)))(3:517|(2:519|(1:521))|522))|(7:(1:199)|200|(1:202)|203|(1:214)(1:207)|208|(1:212))|215|(1:511)(1:219)|220|(4:222|(1:462)(1:226)|227|(2:228|(1:230)(1:231)))(2:463|(8:488|489|(2:491|(2:493|(1:495)))|496|497|(1:507)(1:501)|502|(2:503|(1:505)(1:506)))(2:467|(4:472|(1:482)(1:476)|477|(2:478|(1:480)(1:481)))(1:471)))|232|(1:234)|235|236|237|(1:239)(1:460)|240|241|242|243|(1:456)(1:(2:250|(1:450)(1:256)))|257|(3:259|(3:261|(2:270|271)|268)|272)|273|(13:278|(2:280|(1:284))|285|286|288|289|(3:291|(1:296)|297)|298|(8:300|(6:304|(1:306)|307|(1:334)(2:311|(1:313)(2:319|(1:321)(2:322|(3:324|(1:326)(1:328)|327)(1:329))))|314|(2:316|(1:318)))|335|(4:339|(1:(1:349)(2:341|(1:343)(2:344|345)))|346|(1:348))|350|(4:354|(1:(1:364)(2:356|(1:358)(2:359|360)))|361|(1:363))|365|(2:371|(1:373)))(10:391|(5:395|(1:397)|398|(4:400|(1:402)|403|(1:405))|406)|407|(4:411|(1:413)|414|415)|416|(4:420|(1:422)|423|424)|425|(4:429|(1:431)|432|433)|434|(1:438))|374|(3:(1:388)(1:383)|384|(1:386)(1:387))|389|390)|441|(1:444)|445|(1:447)(1:449)|448|286|288|289|(0)|298|(0)(0)|374|(6:376|378|(1:381)|388|384|(0)(0))|389|390))|699|104|(0)|107|(0)(0)|112|(1:114)|652|(1:654)|675|677|679|(0)|119|120|(0)|123|(0)|126|(0)|133|(0)(0)|136|(0)|139|(1:141)|648|146|(0)(0)|149|(1:151)|646|154|155|(0)(0)|161|(0)|164|(0)|181|(0)(0)|(0)|215|(1:217)|511|220|(0)(0)|232|(0)|235|236|237|(0)(0)|240|241|242|243|(1:245)|452|454|456|257|(0)|273|(14:275|278|(0)|285|286|288|289|(0)|298|(0)(0)|374|(0)|389|390)|441|(1:444)|445|(0)(0)|448|286|288|289|(0)|298|(0)(0)|374|(0)|389|390) */
    /* JADX WARN: Code restructure failed: missing block: B:1002:0x156a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1003:0x156b, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1325:0x1df8, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1326:0x1df9, code lost:
        r52.messageLayout = null;
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1337:0x1e51, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1338:0x1e52, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0611, code lost:
        if (r3.post_messages == false) goto L797;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x061d, code lost:
        if (r3.kicked != false) goto L797;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x062b, code lost:
        if (r52.isTopic == false) goto L797;
     */
    /* JADX WARN: Code restructure failed: missing block: B:683:0x0eeb, code lost:
        if (r2 != null) goto L1136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:833:0x114d, code lost:
        if (r8 == null) goto L843;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1006:0x1582  */
    /* JADX WARN: Removed duplicated region for block: B:1010:0x15e0  */
    /* JADX WARN: Removed duplicated region for block: B:1050:0x17b8  */
    /* JADX WARN: Removed duplicated region for block: B:1053:0x17c7  */
    /* JADX WARN: Removed duplicated region for block: B:1070:0x183b  */
    /* JADX WARN: Removed duplicated region for block: B:1085:0x18be  */
    /* JADX WARN: Removed duplicated region for block: B:1176:0x1af1  */
    /* JADX WARN: Removed duplicated region for block: B:1195:0x1b45  */
    /* JADX WARN: Removed duplicated region for block: B:1202:0x1b5b  */
    /* JADX WARN: Removed duplicated region for block: B:1213:0x1b86  */
    /* JADX WARN: Removed duplicated region for block: B:1261:0x1c43  */
    /* JADX WARN: Removed duplicated region for block: B:1265:0x1c64 A[Catch: Exception -> 0x1cb8, TryCatch #3 {Exception -> 0x1cb8, blocks: (B:1263:0x1c5c, B:1265:0x1c64, B:1266:0x1cb5), top: B:1481:0x1c5c }] */
    /* JADX WARN: Removed duplicated region for block: B:1266:0x1cb5 A[Catch: Exception -> 0x1cb8, TRY_LEAVE, TryCatch #3 {Exception -> 0x1cb8, blocks: (B:1263:0x1c5c, B:1265:0x1c64, B:1266:0x1cb5), top: B:1481:0x1c5c }] */
    /* JADX WARN: Removed duplicated region for block: B:1270:0x1ccc A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1478:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1291:0x1d38 A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1478:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1303:0x1d6a A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1478:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1308:0x1d73 A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1478:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1316:0x1db7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1320:0x1dd1  */
    /* JADX WARN: Removed duplicated region for block: B:1321:0x1dd4  */
    /* JADX WARN: Removed duplicated region for block: B:1329:0x1e05 A[Catch: Exception -> 0x1e51, TryCatch #6 {Exception -> 0x1e51, blocks: (B:1327:0x1dff, B:1329:0x1e05, B:1331:0x1e09, B:1334:0x1e0e, B:1335:0x1e33), top: B:1487:0x1dff }] */
    /* JADX WARN: Removed duplicated region for block: B:1341:0x1e69  */
    /* JADX WARN: Removed duplicated region for block: B:1411:0x1ff7  */
    /* JADX WARN: Removed duplicated region for block: B:1458:0x20d3  */
    /* JADX WARN: Removed duplicated region for block: B:1469:0x2110  */
    /* JADX WARN: Removed duplicated region for block: B:1470:0x2118  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0697  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x096b  */
    /* JADX WARN: Removed duplicated region for block: B:534:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0b67  */
    /* JADX WARN: Removed duplicated region for block: B:668:0x0e45  */
    /* JADX WARN: Removed duplicated region for block: B:685:0x0eef  */
    /* JADX WARN: Removed duplicated region for block: B:688:0x0ef6  */
    /* JADX WARN: Removed duplicated region for block: B:695:0x0f0e  */
    /* JADX WARN: Removed duplicated region for block: B:696:0x0f16  */
    /* JADX WARN: Removed duplicated region for block: B:705:0x0f34  */
    /* JADX WARN: Removed duplicated region for block: B:706:0x0f46  */
    /* JADX WARN: Removed duplicated region for block: B:744:0x0fd9  */
    /* JADX WARN: Removed duplicated region for block: B:745:0x0fde  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x0fe5  */
    /* JADX WARN: Removed duplicated region for block: B:749:0x0fe8  */
    /* JADX WARN: Removed duplicated region for block: B:806:0x10b2  */
    /* JADX WARN: Removed duplicated region for block: B:810:0x10c4  */
    /* JADX WARN: Removed duplicated region for block: B:811:0x10ce  */
    /* JADX WARN: Removed duplicated region for block: B:823:0x110a  */
    /* JADX WARN: Removed duplicated region for block: B:825:0x1122  */
    /* JADX WARN: Removed duplicated region for block: B:864:0x11ca  */
    /* JADX WARN: Removed duplicated region for block: B:868:0x11dc  */
    /* JADX WARN: Removed duplicated region for block: B:872:0x1225  */
    /* JADX WARN: Removed duplicated region for block: B:875:0x1239  */
    /* JADX WARN: Removed duplicated region for block: B:880:0x126c  */
    /* JADX WARN: Removed duplicated region for block: B:883:0x1272  */
    /* JADX WARN: Removed duplicated region for block: B:884:0x1282  */
    /* JADX WARN: Removed duplicated region for block: B:891:0x12ae  */
    /* JADX WARN: Removed duplicated region for block: B:892:0x12b8  */
    /* JADX WARN: Removed duplicated region for block: B:906:0x1309  */
    /* JADX WARN: Removed duplicated region for block: B:909:0x131d  */
    /* JADX WARN: Removed duplicated region for block: B:913:0x134c  */
    /* JADX WARN: Removed duplicated region for block: B:927:0x13cc  */
    /* JADX WARN: Removed duplicated region for block: B:934:0x13ee  */
    /* JADX WARN: Removed duplicated region for block: B:942:0x140e  */
    /* JADX WARN: Removed duplicated region for block: B:964:0x1479  */
    /* JADX WARN: Removed duplicated region for block: B:967:0x147e A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:970:0x148e A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:977:0x14c4  */
    /* JADX WARN: Removed duplicated region for block: B:978:0x14c6  */
    /* JADX WARN: Removed duplicated region for block: B:981:0x14cd A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:984:0x14f0 A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:992:0x150b A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:993:0x152a A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:996:0x154b A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1476:0x1470 }] */
    /* JADX WARN: Type inference failed for: r0v203, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v77, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout() {
        /*
            Method dump skipped, instructions count: 8490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.DialogCell.buildLayout():void");
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
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1502id);
            if (topics != null && !topics.isEmpty()) {
                ArrayList arrayList = new ArrayList(topics);
                Collections.sort(arrayList, Comparator.CC.comparingInt(DialogCell$$ExternalSyntheticLambda6.INSTANCE));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                MessageObject messageObject = this.message;
                boolean z2 = true;
                if (messageObject != null) {
                    i = MessageObject.getTopicId(messageObject.messageOwner, true);
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1502id, i);
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
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1555id != i) {
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
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1502id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1502id);
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1508id);
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

    /* JADX WARN: Removed duplicated region for block: B:107:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x079c  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x07ac  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x07ae  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x07ba  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x07bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.DialogCell.update(int, boolean):boolean");
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
        return tLRPC$TL_forumTopic.f1555id;
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
            this.archiveHidden = SharedConfig.archiveHidden;
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
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0804, code lost:
        if (r0.type != 2) goto L994;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0b9b, code lost:
        if (r7.lastKnownTypingType >= 0) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:792:0x15da, code lost:
        if (r1 > 0) goto L323;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x1b4e  */
    /* JADX WARN: Removed duplicated region for block: B:1008:0x1b70  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x1b78  */
    /* JADX WARN: Removed duplicated region for block: B:1014:0x1b7c  */
    /* JADX WARN: Removed duplicated region for block: B:1027:0x1bdf  */
    /* JADX WARN: Removed duplicated region for block: B:1031:0x1c02  */
    /* JADX WARN: Removed duplicated region for block: B:1034:0x1c0b  */
    /* JADX WARN: Removed duplicated region for block: B:1037:0x1c12  */
    /* JADX WARN: Removed duplicated region for block: B:1050:0x1c4b  */
    /* JADX WARN: Removed duplicated region for block: B:1080:0x1cd5  */
    /* JADX WARN: Removed duplicated region for block: B:1086:0x1d21  */
    /* JADX WARN: Removed duplicated region for block: B:1089:0x1d2a  */
    /* JADX WARN: Removed duplicated region for block: B:1096:0x1d3f  */
    /* JADX WARN: Removed duplicated region for block: B:1104:0x1d57  */
    /* JADX WARN: Removed duplicated region for block: B:1112:0x1d80  */
    /* JADX WARN: Removed duplicated region for block: B:1123:0x1dad  */
    /* JADX WARN: Removed duplicated region for block: B:1129:0x1dc6  */
    /* JADX WARN: Removed duplicated region for block: B:1139:0x1dec  */
    /* JADX WARN: Removed duplicated region for block: B:1149:0x1e0b  */
    /* JADX WARN: Removed duplicated region for block: B:1168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0a06  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0b37  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0b41  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0b8d  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0c39  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0c40  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0dfb  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0e02  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0e10  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0e13  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0e19  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0e1b  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0e21 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0e2e  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0e34  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0e36  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0e3b  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0e3d  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0e41  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0e43  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0e46  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0eac  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0ec7  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0ec9  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0ecf  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0ed2  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0ee3  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0eef  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0ef8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0f53  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0f56  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0f61  */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0f84  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0f8d  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0fb0  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0fbb  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x100f  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x1025  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x1095  */
    /* JADX WARN: Removed duplicated region for block: B:640:0x116d  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x1198  */
    /* JADX WARN: Removed duplicated region for block: B:655:0x11a8  */
    /* JADX WARN: Removed duplicated region for block: B:656:0x11f4  */
    /* JADX WARN: Removed duplicated region for block: B:712:0x13a9  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x13c3  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x1540  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x155c  */
    /* JADX WARN: Removed duplicated region for block: B:755:0x157e  */
    /* JADX WARN: Removed duplicated region for block: B:770:0x15a1  */
    /* JADX WARN: Removed duplicated region for block: B:773:0x15a8  */
    /* JADX WARN: Removed duplicated region for block: B:796:0x15e8  */
    /* JADX WARN: Removed duplicated region for block: B:799:0x160e  */
    /* JADX WARN: Removed duplicated region for block: B:800:0x161d  */
    /* JADX WARN: Removed duplicated region for block: B:803:0x1648  */
    /* JADX WARN: Removed duplicated region for block: B:806:0x1654  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x16b5  */
    /* JADX WARN: Removed duplicated region for block: B:961:0x1a56  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x1adb  */
    /* JADX WARN: Removed duplicated region for block: B:971:0x1aeb  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x1b08  */
    /* JADX WARN: Removed duplicated region for block: B:980:0x1b0e  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x1b20  */
    /* JADX WARN: Removed duplicated region for block: B:993:0x1b37  */
    /* JADX WARN: Removed duplicated region for block: B:997:0x1b41  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r42) {
        /*
            Method dump skipped, instructions count: 7728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.DialogCell.onDraw(android.graphics.Canvas):void");
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
        if (i == C3316R.C3319id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
            dialogsActivity.showChatPreview(this);
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        PullForegroundDrawable pullForegroundDrawable;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isFolderCell() && (pullForegroundDrawable = this.archivedChatsDrawable) != null && SharedConfig.archiveHidden && pullForegroundDrawable.pullProgress == BitmapDescriptorFactory.HUE_RED) {
            accessibilityNodeInfo.setVisibleToUser(false);
        } else {
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.addAction(32);
            if (!isFolderCell() && this.parentFragment != null && Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3316R.C3319id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3316R.string.AccActionChatPreview)));
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
        if (this.currentDialogFolderId == 1) {
            sb.append(LocaleController.getString("ArchivedChats", C3316R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3316R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3316R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3316R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3316R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3316R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3316R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3316R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3316R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3316R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3316R.string.AccDescrUserOnline));
            sb.append(". ");
        }
        int i = this.unreadCount;
        if (i > 0) {
            sb.append(LocaleController.formatPluralString("NewMessages", i, new Object[0]));
            sb.append(". ");
        }
        int i2 = this.mentionCount;
        if (i2 > 0) {
            sb.append(LocaleController.formatPluralString("AccDescrMentionCount", i2, new Object[0]));
            sb.append(". ");
        }
        if (this.reactionMentionCount > 0) {
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3316R.string.AccDescrMentionReaction));
            sb.append(". ");
        }
        MessageObject messageObject = this.message;
        if (messageObject == null || this.currentDialogFolderId != 0) {
            accessibilityEvent.setContentDescription(sb);
            setContentDescription(sb);
            return;
        }
        int i3 = this.lastMessageDate;
        if (i3 == 0) {
            i3 = messageObject.messageOwner.date;
        }
        String formatDateAudio = LocaleController.formatDateAudio(i3, true);
        if (this.message.isOut()) {
            sb.append(LocaleController.formatString("AccDescrSentDate", C3316R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3316R.string.AccDescrReceivedDate, formatDateAudio));
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
            return LocaleController.getString("FromYou", C3316R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3316R.string.HiddenName);
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
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.DialogCell.getMessageStringFormatted(java.lang.String, java.lang.String, java.lang.CharSequence, boolean):android.text.SpannableStringBuilder");
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

        /* JADX WARN: Code restructure failed: missing block: B:45:0x0126, code lost:
            if (org.telegram.messenger.MessagesController.getInstance(r16.this$0.currentAccount).getTopicsController().endIsReached(-r16.this$0.currentDialogId) != false) goto L111;
         */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0231  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0239  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0131  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0178  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01f0  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01fc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean update() {
            /*
                Method dump skipped, instructions count: 612
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.DialogCell.DialogUpdateHelper.update():boolean");
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
