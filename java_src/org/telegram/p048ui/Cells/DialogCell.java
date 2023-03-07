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
import org.telegram.messenger.C3158R;
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
        public int f1660id;
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1547id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
        if (this.currentDialogId != tLRPC$Dialog.f1500id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1500id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1546id;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1633id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1633id))) {
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
        this.reorderIconProgress = (getIsPinned() && this.drawReorder) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
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
        float f2 = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        this.archiveBackgroundProgress = f2;
        this.avatarDrawable.setArchivedAvatarHiddenProgress(f2);
        this.clipProgress = BitmapDescriptorFactory.HUE_RED;
        this.isSliding = false;
        if (!getIsPinned() || !this.drawReorder) {
            f = BitmapDescriptorFactory.HUE_RED;
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
            if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1500id)) {
                TLRPC$EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1500id)));
                tLRPC$User = encryptedChat != null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id)) : null;
            } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1500id)) {
                tLRPC$User = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Dialog.f1500id));
            } else {
                tLRPC$Chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1500id));
                tLRPC$User = null;
            }
            if (tLRPC$Chat != null) {
                replace = tLRPC$Chat.title.replace('\n', ' ');
            } else if (tLRPC$User == null) {
                continue;
            } else if (UserObject.isDeleted(tLRPC$User)) {
                replace = LocaleController.getString("HiddenName", C3158R.string.HiddenName);
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

    /* JADX WARN: Can't wrap try/catch for region: R(105:14|(1:1479)(1:18)|19|(1:1478)(1:25)|26|(1:1477)(1:30)|31|(1:33)|34|(2:36|(1:1466)(1:40))(2:1467|(1:1476)(1:1471))|41|(1:43)|44|(1:46)(1:1461)|47|(7:49|(1:51)|52|53|(1:55)|56|57)|58|(9:60|(2:62|(1:64)(2:722|(2:730|(1:732)(1:733))(2:726|(1:728)(1:729))))(4:734|(1:754)(1:738)|739|(1:741)(2:742|(2:750|(1:752)(1:753))(2:746|(1:748)(1:749))))|65|(3:67|(1:69)(4:709|(1:711)|712|(1:717)(1:716))|70)(3:718|(1:720)|721)|71|(1:73)(1:708)|74|(1:76)(1:(1:704)(1:(1:706)(1:707)))|77)(23:755|(1:757)(2:1449|(2:1457|(1:1459)(1:1460))(2:1453|(1:1455)(1:1456)))|758|(2:760|(2:762|(1:764)(2:765|(2:773|(1:775)(1:776))(2:769|(1:771)(1:772)))))(2:1395|(2:1397|(2:1399|(1:1401)(2:1402|(1:1404)(3:1405|(1:1411)(1:1409)|1410)))(2:1412|(7:1414|(1:1416)(2:1439|(1:1441)(3:1442|(1:1448)(1:1446)|1447))|1417|(2:1419|(3:1427|1428|(2:1430|(2:1434|(1:1436)(1:1437))(1:1433))))|1438|1428|(0)))))|777|(1:781)|782|(2:784|(1:788))(2:1391|(1:1393)(1:1394))|789|(6:1369|(2:1371|(2:1373|(2:1375|(1:1377))))|1379|(2:1381|(1:1383))|1385|(14:1387|(1:1389)|796|(7:798|(1:800)(1:983)|801|(1:803)(1:982)|804|(1:809)|810)(3:(6:985|(1:987)(1:1363)|988|(1:990)(1:1362)|(1:992)(1:1361)|993)(1:1364)|994|(3:996|(2:998|(1:1004)(1:1002))(7:1005|(1:1007)|1008|(3:1012|(1:1014)(1:1016)|1015)|1017|(1:1021)|1022)|1003)(4:1023|(1:1025)(2:1028|(4:1030|(2:1032|(1:1034)(2:1035|(1:1037)(2:1038|(1:1040)(2:1041|(2:1043|(1:1045)(1:1046))))))(2:1048|(1:1052))|1047|1027)(12:1053|(1:1055)(1:1360)|1056|(2:1070|(9:1072|(2:1074|(9:1076|(1:1078)(3:1352|(1:1354)(1:1356)|1355)|1079|(6:1090|(3:1092|(4:1094|(2:1096|(2:1098|(1:1100)(2:1103|(1:1105)(1:1106))))|1107|(1:1109)(2:1110|(1:1112)(2:1113|(1:1115)(1:1116))))(1:1117)|1101)(2:1118|(8:1123|(2:1135|(2:1151|(5:1215|(4:1237|(4:1239|(1:1250)|1245|(2:1247|(1:1249)))(2:1251|(2:1258|(2:1265|(4:1267|(1:1269)(2:1291|(1:1293)(2:1294|(1:1296)(2:1297|(1:1299)(2:1300|(1:1302)(1:1303)))))|1270|(3:1283|(3:1285|(1:1287)(1:1289)|1288)|1290)(4:1274|(2:1276|(1:1278)(1:1279))|(1:1281)|1282))(2:1304|(3:1306|(3:1308|(1:1310)(1:1313)|1311)(3:1314|(1:1316)(1:1318)|1317)|1312)(5:1319|(1:1321)(2:1328|(1:1330)(2:1331|(1:1333)(2:1334|(1:1336)(3:1337|(2:1343|(2:1345|(3:1347|(1:1349)(1:1351)|1350)))(1:1341)|1342))))|1322|1323|(2:1325|(1:1327)))))(1:1264))(1:1257))|1218|(6:1220|(3:1232|(1:1234)|1235)(1:1224)|1225|(1:1227)|1228|(1:1230))(1:1236))|1217|1218|(0)(0))(14:1162|(2:1168|(13:1170|(1:1213)(1:1174)|1175|1176|(1:1212)(5:1182|1183|1184|1185|1186)|1187|(1:1191)|1192|(4:1194|(1:1196)|1197|(1:1199)(1:1200))|1201|1083|(2:1085|(1:1087)(1:1088))|1089))|1214|1176|(2:1178|1208)|1212|1187|(2:1189|1191)|1192|(0)|1201|1083|(0)|1089))(8:1141|(1:1150)(1:1145)|1146|(1:1148)(1:1149)|1082|1083|(0)|1089))(2:1129|(1:1131)(1:1134))|1132|1133|1082|1083|(0)|1089)(1:1122))|1102|1083|(0)|1089)|1081|1082|1083|(0)|1089))(1:1358)|1357|(0)|1081|1082|1083|(0)|1089))|1359|1357|(0)|1081|1082|1083|(0)|1089))|1026|1027))|811|(1:813)(2:975|(1:977)(2:978|(1:980)(1:981)))|814|(1:816)(5:879|(5:881|(1:883)(2:939|(1:(3:942|885|886)(2:943|886))(1:944))|884|885|886)(7:945|(1:947)(6:957|(2:971|(1:973)(1:974))(2:965|(1:970)(1:969))|949|(1:951)(1:956)|952|(1:954)(1:955))|948|949|(0)(0)|952|(0)(0))|887|(2:892|(2:898|(1:900)(2:901|(1:903)(2:904|(3:906|(3:908|(1:910)(1:913)|911)(2:914|(3:916|(1:928)(1:920)|921)(3:929|(1:937)(1:935)|936))|912)))))|938)|817|(5:821|(1:823)(2:869|(5:871|(1:873)|874|(1:876)|877))|824|(1:826)(2:828|(3:830|(3:832|(1:834)|835)(2:842|(4:844|(1:846)|847|(1:849)(1:850))(1:851))|(1:840))(4:852|(3:854|(1:856)(2:857|(2:859|(1:861)(4:862|(1:864)|865|(1:867)))(1:868))|(2:838|840))|841|(0)))|827)|878|824|(0)(0)|827))|795|796|(0)(0)|811|(0)(0)|814|(0)(0)|817|(6:819|821|(0)(0)|824|(0)(0)|827)|878|824|(0)(0)|827)|(2:79|(1:81)(1:701))(1:702)|82|(3:84|(1:86)(1:699)|87)(1:700)|88|(1:90)(1:698)|91|(2:95|(1:97)(69:98|(2:(1:694)|(1:696))(2:101|(1:103))|104|(1:106)|107|(2:109|(1:111)(1:680))(2:681|(2:683|(2:685|(1:687)(1:688))(2:689|(1:691)(1:692))))|112|(2:650|(2:677|(1:679))(2:654|(2:656|(1:658))(2:659|(2:661|(1:663))(2:664|(4:666|(1:668)(1:672)|669|(1:671))))))(2:116|(1:118))|119|120|(1:122)|123|(1:125)|126|(3:128|(1:130)(1:132)|131)|133|(1:135)(1:647)|136|(1:138)|139|(1:646)(1:145)|146|(1:148)(1:645)|149|(1:644)(1:153)|154|155|(3:157|(1:159)|160)(3:600|(4:628|(1:630)(1:642)|631|(2:632|(3:634|(2:636|637)(2:639|640)|638)(1:641)))(8:604|(1:606)(1:627)|607|(1:609)(1:626)|610|(1:612)(1:625)|613|(2:614|(3:616|(2:618|619)(2:621|622)|620)(1:623)))|624)|161|(1:163)|164|(2:166|(2:168|(2:172|(1:174)(2:175|(2:177|(1:179)))))(1:180))|181|(2:183|(2:185|(2:189|(1:191)(2:192|(2:194|(1:196)))))(1:510))(1:(4:(3:522|(2:524|(2:528|(1:530)(2:531|(2:533|(1:535)))))(1:598)|536)(1:599)|(5:538|(1:540)(1:596)|541|(4:543|(1:545)(1:590)|546|(1:550))(3:591|(1:593)(1:595)|594)|551)(1:597)|552|(2:554|(6:556|(3:558|(1:560)(1:562)|561)|563|(3:565|(1:567)(1:569)|568)|570|(1:574))(5:575|(3:577|(1:579)(1:581)|580)|582|(3:584|(1:586)(1:588)|587)|589)))(3:515|(2:517|(1:519))|520))|(7:(1:199)|200|(1:202)|203|(1:214)(1:207)|208|(1:212))|215|(1:509)(1:219)|220|(4:222|(1:460)(1:226)|227|(2:228|(1:230)(1:231)))(2:461|(8:486|487|(2:489|(2:491|(1:493)))|494|495|(1:505)(1:499)|500|(2:501|(1:503)(1:504)))(2:465|(4:470|(1:480)(1:474)|475|(2:476|(1:478)(1:479)))(1:469)))|232|(1:234)|235|236|237|(1:239)(1:458)|240|241|242|243|(1:454)(1:(2:250|(1:448)(1:256)))|257|(3:259|(3:261|(2:270|271)|268)|272)|273|(13:278|(2:280|(1:282))|283|284|285|286|(3:288|(1:293)|294)|295|(8:297|(6:301|(1:303)|304|(1:330)(2:308|(1:310)(2:316|(1:318)(2:319|(3:321|(1:323)(1:325)|324))))|311|(2:313|(1:315)))|331|(4:335|(1:(1:345)(2:337|(1:339)(2:340|341)))|342|(1:344))|346|(4:350|(1:(1:360)(2:352|(1:354)(2:355|356)))|357|(1:359))|361|(2:367|(1:369)))(8:387|(6:391|(1:393)|394|(4:396|(1:398)|399|(1:401))|402|(1:412))|413|(4:417|(1:419)|420|421)|422|(4:426|(1:428)|429|430)|431|(1:435))|370|(3:(1:384)(1:379)|380|(1:382)(1:383))|385|386)|439|(1:442)|443|(1:445)(1:447)|446|284|285|286|(0)|295|(0)(0)|370|(6:372|374|(1:377)|384|380|(0)(0))|385|386))|697|104|(0)|107|(0)(0)|112|(1:114)|650|(1:652)|673|675|677|(0)|119|120|(0)|123|(0)|126|(0)|133|(0)(0)|136|(0)|139|(1:141)|646|146|(0)(0)|149|(1:151)|644|154|155|(0)(0)|161|(0)|164|(0)|181|(0)(0)|(0)|215|(1:217)|509|220|(0)(0)|232|(0)|235|236|237|(0)(0)|240|241|242|243|(1:245)|450|452|454|257|(0)|273|(14:275|278|(0)|283|284|285|286|(0)|295|(0)(0)|370|(0)|385|386)|439|(1:442)|443|(0)(0)|446|284|285|286|(0)|295|(0)(0)|370|(0)|385|386) */
    /* JADX WARN: Code restructure failed: missing block: B:1001:0x156c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1002:0x156d, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1322:0x1df2, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1323:0x1df3, code lost:
        r52.messageLayout = null;
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1334:0x1e4b, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1335:0x1e4c, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0611, code lost:
        if (r3.post_messages == false) goto L795;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x061d, code lost:
        if (r3.kicked != false) goto L795;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x062b, code lost:
        if (r52.isTopic == false) goto L795;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x0eed, code lost:
        if (r2 != null) goto L1133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:832:0x114f, code lost:
        if (r8 == null) goto L841;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1005:0x1584  */
    /* JADX WARN: Removed duplicated region for block: B:1009:0x15e2  */
    /* JADX WARN: Removed duplicated region for block: B:1049:0x17b5  */
    /* JADX WARN: Removed duplicated region for block: B:1052:0x17c4  */
    /* JADX WARN: Removed duplicated region for block: B:1069:0x1838  */
    /* JADX WARN: Removed duplicated region for block: B:1084:0x18bb  */
    /* JADX WARN: Removed duplicated region for block: B:1175:0x1aee  */
    /* JADX WARN: Removed duplicated region for block: B:1194:0x1b42  */
    /* JADX WARN: Removed duplicated region for block: B:1201:0x1b58  */
    /* JADX WARN: Removed duplicated region for block: B:1212:0x1b83  */
    /* JADX WARN: Removed duplicated region for block: B:1260:0x1c40  */
    /* JADX WARN: Removed duplicated region for block: B:1264:0x1c61 A[Catch: Exception -> 0x1cb5, TryCatch #3 {Exception -> 0x1cb5, blocks: (B:1262:0x1c59, B:1264:0x1c61, B:1265:0x1cb2), top: B:1478:0x1c59 }] */
    /* JADX WARN: Removed duplicated region for block: B:1265:0x1cb2 A[Catch: Exception -> 0x1cb5, TRY_LEAVE, TryCatch #3 {Exception -> 0x1cb5, blocks: (B:1262:0x1c59, B:1264:0x1c61, B:1265:0x1cb2), top: B:1478:0x1c59 }] */
    /* JADX WARN: Removed duplicated region for block: B:1269:0x1cc9 A[Catch: Exception -> 0x1df2, TryCatch #5 {Exception -> 0x1df2, blocks: (B:1267:0x1cc5, B:1269:0x1cc9, B:1277:0x1ce3, B:1280:0x1ce9, B:1282:0x1cef, B:1284:0x1cf3, B:1286:0x1d06, B:1288:0x1d32, B:1290:0x1d36, B:1292:0x1d4a, B:1294:0x1d50, B:1296:0x1d54, B:1299:0x1d61, B:1298:0x1d5e, B:1300:0x1d64, B:1302:0x1d68, B:1305:0x1d6d, B:1307:0x1d71, B:1309:0x1d83, B:1310:0x1d97, B:1320:0x1ddc, B:1311:0x1dac, B:1314:0x1db3, B:1315:0x1db9, B:1319:0x1dd0, B:1287:0x1d23, B:1271:0x1ccd, B:1273:0x1cd1, B:1275:0x1cd6), top: B:1482:0x1cc5 }] */
    /* JADX WARN: Removed duplicated region for block: B:1290:0x1d36 A[Catch: Exception -> 0x1df2, TryCatch #5 {Exception -> 0x1df2, blocks: (B:1267:0x1cc5, B:1269:0x1cc9, B:1277:0x1ce3, B:1280:0x1ce9, B:1282:0x1cef, B:1284:0x1cf3, B:1286:0x1d06, B:1288:0x1d32, B:1290:0x1d36, B:1292:0x1d4a, B:1294:0x1d50, B:1296:0x1d54, B:1299:0x1d61, B:1298:0x1d5e, B:1300:0x1d64, B:1302:0x1d68, B:1305:0x1d6d, B:1307:0x1d71, B:1309:0x1d83, B:1310:0x1d97, B:1320:0x1ddc, B:1311:0x1dac, B:1314:0x1db3, B:1315:0x1db9, B:1319:0x1dd0, B:1287:0x1d23, B:1271:0x1ccd, B:1273:0x1cd1, B:1275:0x1cd6), top: B:1482:0x1cc5 }] */
    /* JADX WARN: Removed duplicated region for block: B:1302:0x1d68 A[Catch: Exception -> 0x1df2, TryCatch #5 {Exception -> 0x1df2, blocks: (B:1267:0x1cc5, B:1269:0x1cc9, B:1277:0x1ce3, B:1280:0x1ce9, B:1282:0x1cef, B:1284:0x1cf3, B:1286:0x1d06, B:1288:0x1d32, B:1290:0x1d36, B:1292:0x1d4a, B:1294:0x1d50, B:1296:0x1d54, B:1299:0x1d61, B:1298:0x1d5e, B:1300:0x1d64, B:1302:0x1d68, B:1305:0x1d6d, B:1307:0x1d71, B:1309:0x1d83, B:1310:0x1d97, B:1320:0x1ddc, B:1311:0x1dac, B:1314:0x1db3, B:1315:0x1db9, B:1319:0x1dd0, B:1287:0x1d23, B:1271:0x1ccd, B:1273:0x1cd1, B:1275:0x1cd6), top: B:1482:0x1cc5 }] */
    /* JADX WARN: Removed duplicated region for block: B:1307:0x1d71 A[Catch: Exception -> 0x1df2, TryCatch #5 {Exception -> 0x1df2, blocks: (B:1267:0x1cc5, B:1269:0x1cc9, B:1277:0x1ce3, B:1280:0x1ce9, B:1282:0x1cef, B:1284:0x1cf3, B:1286:0x1d06, B:1288:0x1d32, B:1290:0x1d36, B:1292:0x1d4a, B:1294:0x1d50, B:1296:0x1d54, B:1299:0x1d61, B:1298:0x1d5e, B:1300:0x1d64, B:1302:0x1d68, B:1305:0x1d6d, B:1307:0x1d71, B:1309:0x1d83, B:1310:0x1d97, B:1320:0x1ddc, B:1311:0x1dac, B:1314:0x1db3, B:1315:0x1db9, B:1319:0x1dd0, B:1287:0x1d23, B:1271:0x1ccd, B:1273:0x1cd1, B:1275:0x1cd6), top: B:1482:0x1cc5 }] */
    /* JADX WARN: Removed duplicated region for block: B:1313:0x1db1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1317:0x1dcb  */
    /* JADX WARN: Removed duplicated region for block: B:1318:0x1dce  */
    /* JADX WARN: Removed duplicated region for block: B:1326:0x1dff A[Catch: Exception -> 0x1e4b, TryCatch #1 {Exception -> 0x1e4b, blocks: (B:1324:0x1df9, B:1326:0x1dff, B:1328:0x1e03, B:1331:0x1e08, B:1332:0x1e2d), top: B:1474:0x1df9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1338:0x1e63  */
    /* JADX WARN: Removed duplicated region for block: B:1407:0x1fda  */
    /* JADX WARN: Removed duplicated region for block: B:1456:0x20a7  */
    /* JADX WARN: Removed duplicated region for block: B:1467:0x20e4  */
    /* JADX WARN: Removed duplicated region for block: B:1468:0x20ec  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0697  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0969  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0b54  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0b65  */
    /* JADX WARN: Removed duplicated region for block: B:667:0x0e45  */
    /* JADX WARN: Removed duplicated region for block: B:684:0x0ef1  */
    /* JADX WARN: Removed duplicated region for block: B:687:0x0ef8  */
    /* JADX WARN: Removed duplicated region for block: B:694:0x0f10  */
    /* JADX WARN: Removed duplicated region for block: B:695:0x0f18  */
    /* JADX WARN: Removed duplicated region for block: B:704:0x0f36  */
    /* JADX WARN: Removed duplicated region for block: B:705:0x0f48  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x0fdb  */
    /* JADX WARN: Removed duplicated region for block: B:744:0x0fe0  */
    /* JADX WARN: Removed duplicated region for block: B:747:0x0fe7  */
    /* JADX WARN: Removed duplicated region for block: B:748:0x0fea  */
    /* JADX WARN: Removed duplicated region for block: B:805:0x10b4  */
    /* JADX WARN: Removed duplicated region for block: B:809:0x10c6  */
    /* JADX WARN: Removed duplicated region for block: B:810:0x10d0  */
    /* JADX WARN: Removed duplicated region for block: B:822:0x110c  */
    /* JADX WARN: Removed duplicated region for block: B:824:0x1124  */
    /* JADX WARN: Removed duplicated region for block: B:863:0x11cc  */
    /* JADX WARN: Removed duplicated region for block: B:867:0x11de  */
    /* JADX WARN: Removed duplicated region for block: B:871:0x1227  */
    /* JADX WARN: Removed duplicated region for block: B:874:0x123b  */
    /* JADX WARN: Removed duplicated region for block: B:879:0x126e  */
    /* JADX WARN: Removed duplicated region for block: B:882:0x1274  */
    /* JADX WARN: Removed duplicated region for block: B:883:0x1284  */
    /* JADX WARN: Removed duplicated region for block: B:890:0x12b0  */
    /* JADX WARN: Removed duplicated region for block: B:891:0x12ba  */
    /* JADX WARN: Removed duplicated region for block: B:905:0x130b  */
    /* JADX WARN: Removed duplicated region for block: B:908:0x131f  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x134e  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x13ce  */
    /* JADX WARN: Removed duplicated region for block: B:933:0x13f0  */
    /* JADX WARN: Removed duplicated region for block: B:941:0x1410  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x147b  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x1480 A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:969:0x1490 A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:976:0x14c6  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x14c8  */
    /* JADX WARN: Removed duplicated region for block: B:980:0x14cf A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:983:0x14f2 A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:991:0x150d A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:992:0x152c A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:995:0x154d A[Catch: Exception -> 0x156c, TryCatch #0 {Exception -> 0x156c, blocks: (B:961:0x1472, B:964:0x147c, B:966:0x1480, B:967:0x148c, B:969:0x1490, B:973:0x14aa, B:974:0x14b3, B:978:0x14c9, B:980:0x14cf, B:981:0x14db, B:983:0x14f2, B:985:0x14f8, B:989:0x1509, B:991:0x150d, B:993:0x1549, B:995:0x154d, B:997:0x1556, B:999:0x1560, B:992:0x152c), top: B:1472:0x1472 }] */
    /* JADX WARN: Type inference failed for: r0v203, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r7v77, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout() {
        /*
            Method dump skipped, instructions count: 8446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.DialogCell.buildLayout():void");
    }

    private void updateThumbsPosition() {
        if (this.thumbsCount > 0) {
            StaticLayout staticLayout = isForumCell() ? this.buttonLayout : this.messageLayout;
            if (staticLayout == null) {
                return;
            }
            try {
                CharSequence text = staticLayout.getText();
                if (text instanceof Spanned) {
                    FixedWidthSpan[] fixedWidthSpanArr = (FixedWidthSpan[]) ((Spanned) text).getSpans(0, text.length(), FixedWidthSpan.class);
                    if (fixedWidthSpanArr == null || fixedWidthSpanArr.length <= 0) {
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
                    for (int i = 0; i < this.thumbsCount; i++) {
                        this.thumbImage[i].setImageX(this.messageLeft + ceil + AndroidUtilities.m50dp((this.thumbSize + 2) * i));
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
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1494id);
            if (topics != null && !topics.isEmpty()) {
                ArrayList arrayList = new ArrayList(topics);
                Collections.sort(arrayList, Comparator.CC.comparingInt(DialogCell$$ExternalSyntheticLambda6.INSTANCE));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                MessageObject messageObject = this.message;
                boolean z2 = true;
                if (messageObject != null) {
                    i = MessageObject.getTopicId(messageObject.messageOwner, true);
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1494id, i);
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
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1547id != i) {
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
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1494id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1494id);
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1500id);
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

    /* JADX WARN: Removed duplicated region for block: B:107:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0591  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x070f  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x07ab  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x07bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 2168
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
        return tLRPC$TL_forumTopic.f1547id;
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
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0812, code lost:
        if (r0.type != 2) goto L992;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0bb2, code lost:
        if (r7.lastKnownTypingType >= 0) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:789:0x15f4, code lost:
        if (r1 > 0) goto L320;
     */
    /* JADX WARN: Removed duplicated region for block: B:1006:0x1b97  */
    /* JADX WARN: Removed duplicated region for block: B:1010:0x1b9f  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x1ba3  */
    /* JADX WARN: Removed duplicated region for block: B:1025:0x1c06  */
    /* JADX WARN: Removed duplicated region for block: B:1029:0x1c29  */
    /* JADX WARN: Removed duplicated region for block: B:1032:0x1c32  */
    /* JADX WARN: Removed duplicated region for block: B:1035:0x1c39  */
    /* JADX WARN: Removed duplicated region for block: B:1048:0x1c72  */
    /* JADX WARN: Removed duplicated region for block: B:1078:0x1cfd  */
    /* JADX WARN: Removed duplicated region for block: B:1084:0x1d4a  */
    /* JADX WARN: Removed duplicated region for block: B:1089:0x1d56  */
    /* JADX WARN: Removed duplicated region for block: B:1095:0x1d6a  */
    /* JADX WARN: Removed duplicated region for block: B:1103:0x1d82  */
    /* JADX WARN: Removed duplicated region for block: B:1111:0x1dab  */
    /* JADX WARN: Removed duplicated region for block: B:1122:0x1dd8  */
    /* JADX WARN: Removed duplicated region for block: B:1128:0x1df1  */
    /* JADX WARN: Removed duplicated region for block: B:1138:0x1e17  */
    /* JADX WARN: Removed duplicated region for block: B:1148:0x1e36  */
    /* JADX WARN: Removed duplicated region for block: B:1166:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0a12  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0b4b  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0ba4  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0c53  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0c5a  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0e15  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0e1c  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0e2a  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0e2c  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0e32  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0e34  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0e3a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0e47  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0e4d  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0e4f  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0e54  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0e56  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0e5a  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0e5c  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0e5f  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0ec7  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0ee3  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0ee5  */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0eeb  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0eed  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0eff  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0f0b  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0f14 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0f6f  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0f72  */
    /* JADX WARN: Removed duplicated region for block: B:531:0x0f7d  */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0fa0  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0fa9  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0fcc  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0fd7  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x102b  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x1041  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x10b1  */
    /* JADX WARN: Removed duplicated region for block: B:640:0x1189  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x11b4  */
    /* JADX WARN: Removed duplicated region for block: B:655:0x11c4  */
    /* JADX WARN: Removed duplicated region for block: B:656:0x1211  */
    /* JADX WARN: Removed duplicated region for block: B:712:0x13c8  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x13e2  */
    /* JADX WARN: Removed duplicated region for block: B:745:0x1559  */
    /* JADX WARN: Removed duplicated region for block: B:749:0x1576  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x1598  */
    /* JADX WARN: Removed duplicated region for block: B:767:0x15bb  */
    /* JADX WARN: Removed duplicated region for block: B:770:0x15c2  */
    /* JADX WARN: Removed duplicated region for block: B:793:0x1602  */
    /* JADX WARN: Removed duplicated region for block: B:796:0x1628  */
    /* JADX WARN: Removed duplicated region for block: B:797:0x1637  */
    /* JADX WARN: Removed duplicated region for block: B:800:0x1662  */
    /* JADX WARN: Removed duplicated region for block: B:803:0x166e  */
    /* JADX WARN: Removed duplicated region for block: B:814:0x16d0  */
    /* JADX WARN: Removed duplicated region for block: B:958:0x1a7c  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x1b02  */
    /* JADX WARN: Removed duplicated region for block: B:968:0x1b11  */
    /* JADX WARN: Removed duplicated region for block: B:974:0x1b2e  */
    /* JADX WARN: Removed duplicated region for block: B:977:0x1b34  */
    /* JADX WARN: Removed duplicated region for block: B:983:0x1b46  */
    /* JADX WARN: Removed duplicated region for block: B:990:0x1b5d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r42) {
        /*
            Method dump skipped, instructions count: 7770
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
            paint = (z || this.currentDialogFolderId != 0) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint;
            z3 = false;
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
            this.reorderIconProgress = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        } else {
            this.reorderIconProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
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
        if (i == C3158R.C3161id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3158R.C3161id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3158R.string.AccActionChatPreview)));
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
            sb.append(LocaleController.getString("ArchivedChats", C3158R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3158R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3158R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3158R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3158R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3158R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3158R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3158R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3158R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3158R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3158R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3158R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3158R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3158R.string.AccDescrReceivedDate, formatDateAudio));
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
        MessageObject messageObject2 = null;
        int i = 0;
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
            return LocaleController.getString("FromYou", C3158R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3158R.string.HiddenName);
                }
                return ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name).replace("\n", "");
            } else {
                return UserObject.getFirstName(tLRPC$User).replace("\n", "");
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x027b A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
            Method dump skipped, instructions count: 827
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
            if (org.telegram.messenger.MessagesController.getInstance(r17.this$0.currentAccount).getTopicsController().endIsReached(-r17.this$0.currentDialogId) != false) goto L111;
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
