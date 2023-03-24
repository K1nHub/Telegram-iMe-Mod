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
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;
import org.fork.controller.LockedSectionsController;
import org.fork.enums.LockedSection;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
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
        public int f1667id;
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1553id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m50dp(22));
                this.emojiStatus = swapAnimatedEmojiDrawable;
                swapAnimatedEmojiDrawable.center = false;
                return;
            }
        }
    }

    public void setDialog(TLRPC$Dialog tLRPC$Dialog, int i, int i2) {
        if (this.currentDialogId != tLRPC$Dialog.f1506id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1506id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1552id;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1640id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1640id))) {
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
            if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1506id)) {
                TLRPC$EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1506id)));
                tLRPC$User = encryptedChat != null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id)) : null;
            } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1506id)) {
                tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Dialog.f1506id));
            } else {
                tLRPC$Chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1506id));
                tLRPC$User = null;
            }
            if (tLRPC$Chat != null) {
                replace = tLRPC$Chat.title.replace('\n', ' ');
            } else if (tLRPC$User == null) {
                continue;
            } else if (UserObject.isDeleted(tLRPC$User)) {
                replace = LocaleController.getString("HiddenName", C3301R.string.HiddenName);
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

    /* JADX WARN: Can't wrap try/catch for region: R(105:14|(1:1492)(1:18)|19|(1:1491)(1:25)|26|(1:1490)(1:30)|31|(1:33)|34|(2:36|(1:1479)(1:40))(2:1480|(1:1489)(1:1484))|41|(1:43)|44|(1:46)(1:1474)|47|(7:49|(1:51)|52|53|(1:55)|56|57)|58|(9:60|(2:62|(1:64)(2:734|(2:742|(1:744)(1:745))(2:738|(1:740)(1:741))))(4:746|(1:766)(1:750)|751|(1:753)(2:754|(2:762|(1:764)(1:765))(2:758|(1:760)(1:761))))|65|(3:67|(1:69)(4:721|(1:723)|724|(1:729)(1:728))|70)(3:730|(1:732)|733)|71|(1:73)(1:720)|74|(1:76)(1:(1:716)(1:(1:718)(1:719)))|77)(23:767|(1:769)(2:1462|(2:1470|(1:1472)(1:1473))(2:1466|(1:1468)(1:1469)))|770|(2:772|(2:774|(1:776)(2:777|(2:785|(1:787)(1:788))(2:781|(1:783)(1:784)))))(2:1408|(2:1410|(2:1412|(1:1414)(2:1415|(1:1417)(3:1418|(1:1424)(1:1422)|1423)))(2:1425|(7:1427|(1:1429)(2:1452|(1:1454)(3:1455|(1:1461)(1:1459)|1460))|1430|(2:1432|(3:1440|1441|(2:1443|(2:1447|(1:1449)(1:1450))(1:1446))))|1451|1441|(0)))))|789|(1:793)|794|(2:796|(1:800))(2:1404|(1:1406)(1:1407))|801|(6:1382|(2:1384|(2:1386|(2:1388|(1:1390))))|1392|(2:1394|(1:1396))|1398|(14:1400|(1:1402)|808|(7:810|(1:812)(1:995)|813|(1:815)(1:994)|816|(1:821)|822)(3:(6:997|(1:999)(1:1376)|1000|(1:1002)(1:1375)|(1:1004)(1:1374)|1005)(1:1377)|1006|(3:1008|(2:1010|(2:1016|1017)(1:1014))(7:1018|(1:1020)|1021|(3:1025|(1:1027)(1:1029)|1028)|1030|(1:1034)|1035)|1015)(4:1036|(1:1038)(2:1041|(4:1043|(2:1045|(1:1047)(2:1048|(1:1050)(2:1051|(1:1053)(2:1054|(2:1056|(1:1058)(1:1059))))))(2:1061|(2:1065|1040))|1060|1017)(13:1066|(1:1068)(1:1373)|1069|(2:1083|(10:1085|(2:1087|(9:1089|(1:1091)(3:1365|(1:1367)(1:1369)|1368)|(7:1103|(3:1105|(4:1107|(2:1109|(2:1111|(1:1113)(2:1116|(1:1118)(1:1119))))|1120|(1:1122)(2:1123|(1:1125)(2:1126|(1:1128)(1:1129))))(1:1130)|1114)(2:1131|(9:1136|(2:1148|(2:1164|(5:1228|(4:1250|(4:1252|(1:1263)|1258|(2:1260|(1:1262)))(2:1264|(2:1271|(2:1278|(4:1280|(1:1282)(2:1304|(1:1306)(2:1307|(1:1309)(2:1310|(1:1312)(2:1313|(1:1315)(1:1316)))))|1283|(3:1296|(3:1298|(1:1300)(1:1302)|1301)|1303)(4:1287|(2:1289|(1:1291)(1:1292))|(1:1294)|1295))(2:1317|(3:1319|(3:1321|(1:1323)(1:1326)|1324)(3:1327|(1:1329)(1:1331)|1330)|1325)(5:1332|(1:1334)(2:1341|(1:1343)(2:1344|(1:1346)(2:1347|(1:1349)(3:1350|(2:1356|(2:1358|(3:1360|(1:1362)(1:1364)|1363)))(1:1354)|1355))))|1335|1336|(2:1338|(1:1340)))))(1:1277))(1:1270))|1231|(6:1233|(3:1245|(1:1247)|1248)(1:1237)|1238|(1:1240)|1241|(1:1243))(1:1249))|1230|1231|(0)(0))(14:1175|(2:1181|(13:1183|(1:1226)(1:1187)|1188|1189|(1:1225)(5:1195|1196|1197|1198|1199)|1200|(1:1204)|1205|(4:1207|(1:1209)|1210|(1:1212)(1:1213))|1214|1096|(2:1098|(1:1100)(1:1101))|1102))|1227|1189|(2:1191|1221)|1225|1200|(2:1202|1204)|1205|(0)|1214|1096|(0)|1102))(8:1154|(1:1163)(1:1158)|1159|(1:1161)(1:1162)|1095|1096|(0)|1102))(2:1142|(1:1144)(1:1147))|1145|1146|1094|1095|1096|(0)|1102)(1:1135))|1115|1095|1096|(0)|1102)|1093|1094|1095|1096|(0)|1102))(1:1371)|1370|(0)|1093|1094|1095|1096|(0)|1102))|1372|1370|(0)|1093|1094|1095|1096|(0)|1102))|1039|1040))|823|(1:825)(2:987|(1:989)(2:990|(1:992)(1:993)))|826|(1:828)(5:891|(5:893|(1:895)(2:951|(1:(3:954|897|898)(2:955|898))(1:956))|896|897|898)(7:957|(1:959)(6:969|(2:983|(1:985)(1:986))(2:977|(1:982)(1:981))|961|(1:963)(1:968)|964|(1:966)(1:967))|960|961|(0)(0)|964|(0)(0))|899|(2:904|(2:910|(1:912)(2:913|(1:915)(2:916|(3:918|(3:920|(1:922)(1:925)|923)(2:926|(3:928|(1:940)(1:932)|933)(3:941|(1:949)(1:947)|948))|924)))))|950)|829|(5:833|(1:835)(2:881|(5:883|(1:885)|886|(1:888)|889))|836|(1:838)(2:840|(3:842|(3:844|(1:846)|847)(2:854|(4:856|(1:858)|859|(1:861)(1:862))(1:863))|(1:852))(4:864|(3:866|(1:868)(2:869|(2:871|(1:873)(4:874|(1:876)|877|(1:879)))(1:880))|(2:850|852))|853|(0)))|839)|890|836|(0)(0)|839))|807|808|(0)(0)|823|(0)(0)|826|(0)(0)|829|(6:831|833|(0)(0)|836|(0)(0)|839)|890|836|(0)(0)|839)|(2:79|(1:81)(1:713))(1:714)|82|(3:84|(1:86)(1:711)|87)(1:712)|88|(1:90)(1:710)|91|(2:95|(1:97)(69:98|(2:(1:706)|(1:708))(2:101|(1:103))|104|(1:106)|107|(2:109|(1:111)(1:692))(2:693|(2:695|(2:697|(1:699)(1:700))(2:701|(1:703)(1:704))))|112|(2:662|(2:689|(1:691))(2:666|(2:668|(1:670))(2:671|(2:673|(1:675))(2:676|(4:678|(1:680)(1:684)|681|(1:683))))))(2:116|(1:118))|119|120|(1:122)|123|(1:125)|126|(3:128|(1:130)(1:132)|131)|133|(1:135)(1:659)|136|(1:138)|139|(1:658)(1:145)|146|(1:148)(1:657)|149|(1:656)(1:153)|154|155|(3:157|(1:159)|160)(3:612|(4:640|(1:642)(1:654)|643|(2:644|(3:646|(2:648|649)(2:651|652)|650)(1:653)))(8:616|(1:618)(1:639)|619|(1:621)(1:638)|622|(1:624)(1:637)|625|(2:626|(3:628|(2:630|631)(2:633|634)|632)(1:635)))|636)|161|(1:163)|164|(2:166|(2:168|(2:172|(1:174)(2:175|(2:177|(1:179)))))(1:180))|181|(2:183|(2:185|(2:189|(1:191)(2:192|(2:194|(1:196)))))(1:522))(1:(4:(3:534|(2:536|(2:540|(1:542)(2:543|(2:545|(1:547)))))(1:610)|548)(1:611)|(5:550|(1:552)(1:608)|553|(4:555|(1:557)(1:602)|558|(1:562))(3:603|(1:605)(1:607)|606)|563)(1:609)|564|(2:566|(6:568|(3:570|(1:572)(1:574)|573)|575|(3:577|(1:579)(1:581)|580)|582|(1:586))(5:587|(3:589|(1:591)(1:593)|592)|594|(3:596|(1:598)(1:600)|599)|601)))(3:527|(2:529|(1:531))|532))|(7:(1:199)|200|(1:202)|203|(1:214)(1:207)|208|(1:212))|215|(1:521)(1:219)|220|(4:222|(1:472)(1:226)|227|(2:228|(1:230)(1:231)))(2:473|(8:498|499|(2:501|(2:503|(1:505)))|506|507|(1:517)(1:511)|512|(2:513|(1:515)(1:516)))(2:477|(4:482|(1:492)(1:486)|487|(2:488|(1:490)(1:491)))(1:481)))|232|(1:234)|235|236|237|(1:239)(1:470)|240|241|242|243|(1:466)(1:(2:250|(1:460)(1:256)))|257|(3:259|(3:261|(2:270|271)|268)|272)|273|(13:278|(2:280|(1:284))|285|286|288|289|(3:291|(1:296)|297)|298|(8:300|(6:304|(1:306)|307|(1:334)(2:311|(1:313)(2:319|(1:321)(2:322|(3:324|(1:326)(1:328)|327)(1:329))))|314|(2:316|(1:318)))|335|(4:339|(1:(1:349)(2:341|(1:343)(2:344|345)))|346|(1:348))|350|(4:354|(1:(1:364)(2:356|(1:358)(2:359|360)))|361|(1:363))|365|(2:371|(1:373)))(10:391|(6:395|(1:397)|398|(4:400|(1:402)|403|(1:405))|406|(1:416))|417|(4:421|(1:423)|424|425)|426|(4:430|(1:432)|433|434)|435|(4:439|(1:441)|442|443)|444|(1:448))|374|(3:(1:388)(1:383)|384|(1:386)(1:387))|389|390)|451|(1:454)|455|(1:457)(1:459)|458|286|288|289|(0)|298|(0)(0)|374|(6:376|378|(1:381)|388|384|(0)(0))|389|390))|709|104|(0)|107|(0)(0)|112|(1:114)|662|(1:664)|685|687|689|(0)|119|120|(0)|123|(0)|126|(0)|133|(0)(0)|136|(0)|139|(1:141)|658|146|(0)(0)|149|(1:151)|656|154|155|(0)(0)|161|(0)|164|(0)|181|(0)(0)|(0)|215|(1:217)|521|220|(0)(0)|232|(0)|235|236|237|(0)(0)|240|241|242|243|(1:245)|462|464|466|257|(0)|273|(14:275|278|(0)|285|286|288|289|(0)|298|(0)(0)|374|(0)|389|390)|451|(1:454)|455|(0)(0)|458|286|288|289|(0)|298|(0)(0)|374|(0)|389|390) */
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
        if (r3.post_messages == false) goto L807;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x061d, code lost:
        if (r3.kicked != false) goto L807;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x062b, code lost:
        if (r52.isTopic == false) goto L807;
     */
    /* JADX WARN: Code restructure failed: missing block: B:683:0x0eeb, code lost:
        if (r2 != null) goto L1146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:833:0x114d, code lost:
        if (r8 == null) goto L853;
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
    /* JADX WARN: Removed duplicated region for block: B:1265:0x1c64 A[Catch: Exception -> 0x1cb8, TryCatch #3 {Exception -> 0x1cb8, blocks: (B:1263:0x1c5c, B:1265:0x1c64, B:1266:0x1cb5), top: B:1491:0x1c5c }] */
    /* JADX WARN: Removed duplicated region for block: B:1266:0x1cb5 A[Catch: Exception -> 0x1cb8, TRY_LEAVE, TryCatch #3 {Exception -> 0x1cb8, blocks: (B:1263:0x1c5c, B:1265:0x1c64, B:1266:0x1cb5), top: B:1491:0x1c5c }] */
    /* JADX WARN: Removed duplicated region for block: B:1270:0x1ccc A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1488:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1291:0x1d38 A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1488:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1303:0x1d6a A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1488:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1308:0x1d73 A[Catch: Exception -> 0x1df8, TryCatch #2 {Exception -> 0x1df8, blocks: (B:1268:0x1cc8, B:1270:0x1ccc, B:1278:0x1ce6, B:1281:0x1cec, B:1283:0x1cf2, B:1285:0x1cf6, B:1287:0x1d09, B:1289:0x1d34, B:1291:0x1d38, B:1293:0x1d4c, B:1295:0x1d52, B:1297:0x1d56, B:1300:0x1d63, B:1299:0x1d60, B:1301:0x1d66, B:1303:0x1d6a, B:1306:0x1d6f, B:1308:0x1d73, B:1310:0x1d84, B:1312:0x1d8a, B:1313:0x1d9d, B:1323:0x1de2, B:1314:0x1db2, B:1317:0x1db9, B:1318:0x1dbf, B:1322:0x1dd6, B:1288:0x1d25, B:1272:0x1cd0, B:1274:0x1cd4, B:1276:0x1cd9), top: B:1488:0x1cc8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1316:0x1db7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1320:0x1dd1  */
    /* JADX WARN: Removed duplicated region for block: B:1321:0x1dd4  */
    /* JADX WARN: Removed duplicated region for block: B:1329:0x1e05 A[Catch: Exception -> 0x1e51, TryCatch #6 {Exception -> 0x1e51, blocks: (B:1327:0x1dff, B:1329:0x1e05, B:1331:0x1e09, B:1334:0x1e0e, B:1335:0x1e33), top: B:1497:0x1dff }] */
    /* JADX WARN: Removed duplicated region for block: B:1341:0x1e69  */
    /* JADX WARN: Removed duplicated region for block: B:1411:0x1fe0  */
    /* JADX WARN: Removed duplicated region for block: B:1468:0x20d0  */
    /* JADX WARN: Removed duplicated region for block: B:1479:0x210d  */
    /* JADX WARN: Removed duplicated region for block: B:1480:0x2115  */
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
    /* JADX WARN: Removed duplicated region for block: B:967:0x147e A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:970:0x148e A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:977:0x14c4  */
    /* JADX WARN: Removed duplicated region for block: B:978:0x14c6  */
    /* JADX WARN: Removed duplicated region for block: B:981:0x14cd A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:984:0x14f0 A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:992:0x150b A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:993:0x152a A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Removed duplicated region for block: B:996:0x154b A[Catch: Exception -> 0x156a, TryCatch #1 {Exception -> 0x156a, blocks: (B:962:0x1470, B:965:0x147a, B:967:0x147e, B:968:0x148a, B:970:0x148e, B:974:0x14a8, B:975:0x14b1, B:979:0x14c7, B:981:0x14cd, B:982:0x14d9, B:984:0x14f0, B:986:0x14f6, B:990:0x1507, B:992:0x150b, B:994:0x1547, B:996:0x154b, B:998:0x1554, B:1000:0x155e, B:993:0x152a), top: B:1486:0x1470 }] */
    /* JADX WARN: Type inference failed for: r0v203, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v77, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout() {
        /*
            Method dump skipped, instructions count: 8487
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
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1500id);
            if (topics != null && !topics.isEmpty()) {
                ArrayList arrayList = new ArrayList(topics);
                Collections.sort(arrayList, Comparator.CC.comparingInt(DialogCell$$ExternalSyntheticLambda6.INSTANCE));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                MessageObject messageObject = this.message;
                boolean z2 = true;
                if (messageObject != null) {
                    i = MessageObject.getTopicId(messageObject.messageOwner, true);
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1500id, i);
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
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1553id != i) {
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
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1500id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1500id);
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1506id);
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
        return tLRPC$TL_forumTopic.f1553id;
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
    /* JADX WARN: Removed duplicated region for block: B:1001:0x1b4c  */
    /* JADX WARN: Removed duplicated region for block: B:1008:0x1b6e  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x1b76  */
    /* JADX WARN: Removed duplicated region for block: B:1014:0x1b7a  */
    /* JADX WARN: Removed duplicated region for block: B:1027:0x1bdd  */
    /* JADX WARN: Removed duplicated region for block: B:1031:0x1c00  */
    /* JADX WARN: Removed duplicated region for block: B:1034:0x1c09  */
    /* JADX WARN: Removed duplicated region for block: B:1037:0x1c10  */
    /* JADX WARN: Removed duplicated region for block: B:1050:0x1c49  */
    /* JADX WARN: Removed duplicated region for block: B:1080:0x1cd3  */
    /* JADX WARN: Removed duplicated region for block: B:1086:0x1d1f  */
    /* JADX WARN: Removed duplicated region for block: B:1089:0x1d28  */
    /* JADX WARN: Removed duplicated region for block: B:1096:0x1d3d  */
    /* JADX WARN: Removed duplicated region for block: B:1104:0x1d55  */
    /* JADX WARN: Removed duplicated region for block: B:1112:0x1d7e  */
    /* JADX WARN: Removed duplicated region for block: B:1123:0x1dab  */
    /* JADX WARN: Removed duplicated region for block: B:1129:0x1dc4  */
    /* JADX WARN: Removed duplicated region for block: B:1139:0x1dea  */
    /* JADX WARN: Removed duplicated region for block: B:1149:0x1e09  */
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
    /* JADX WARN: Removed duplicated region for block: B:961:0x1a55  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x1ada  */
    /* JADX WARN: Removed duplicated region for block: B:971:0x1ae9  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x1b06  */
    /* JADX WARN: Removed duplicated region for block: B:980:0x1b0c  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x1b1e  */
    /* JADX WARN: Removed duplicated region for block: B:993:0x1b35  */
    /* JADX WARN: Removed duplicated region for block: B:997:0x1b3f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r42) {
        /*
            Method dump skipped, instructions count: 7726
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
        if (i == C3301R.C3304id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3301R.C3304id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3301R.string.AccActionChatPreview)));
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
            sb.append(LocaleController.getString("ArchivedChats", C3301R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3301R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3301R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3301R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3301R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3301R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3301R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3301R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3301R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3301R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3301R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3301R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3301R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3301R.string.AccDescrReceivedDate, formatDateAudio));
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
            return LocaleController.getString("FromYou", C3301R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3301R.string.HiddenName);
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
