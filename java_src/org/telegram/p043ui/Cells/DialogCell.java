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
import org.telegram.messenger.C3419R;
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
    public boolean drawArchive;
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
        public int f1704id;
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

    @Override // org.telegram.p043ui.Cells.BaseCell, android.view.View
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
        if (tLRPC$TL_forumTopic2 != null && tLRPC$TL_forumTopic2.f1575id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
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
        avatarStoryParams.allowLongress = true;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = dialogsActivity;
        Theme.createDialogsResources(context);
        this.avatarImage.setCurrentAccount(i);
        this.avatarImage.setRoundRadius(AndroidUtilities.m72dp(28));
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                ImageReceiver[] imageReceiverArr2 = this.thumbImage;
                imageReceiverArr2[i2].ignoreNotifications = true;
                imageReceiverArr2[i2].setRoundRadius(AndroidUtilities.m72dp(2));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                this.thumbImage[i2].setCurrentAccount(i);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.m72dp(22));
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                return;
            }
        }
    }

    public void setDialog(TLRPC$Dialog tLRPC$Dialog, int i, int i2) {
        if (this.currentDialogId != tLRPC$Dialog.f1524id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = tLRPC$Dialog.f1524id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (tLRPC$Dialog instanceof TLRPC$TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC$TL_dialogFolder) tLRPC$Dialog).folder.f1574id;
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
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.f1675id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : BitmapDescriptorFactory.HUE_RED;
    }

    private boolean isOnline() {
        TLRPC$User tLRPC$User;
        if (!isForumCell() && (tLRPC$User = this.user) != null && !tLRPC$User.self) {
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null && tLRPC$UserStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.f1675id))) {
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
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(24), 1073741824));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m72dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0));
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
        return AndroidUtilities.m72dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86 : (this.useSeparator ? 1 : 0) + 91);
    }

    private int getCollapsedHeight() {
        return AndroidUtilities.m72dp(this.compactMode ? 48 : (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + (this.useSeparator ? 1 : 0) + (this.twoLinesForName ? AndroidUtilities.m72dp(20) : 0);
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
        int m73dp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        if (this.checkBox != null) {
            int m72dp = AndroidUtilities.m72dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 29 : 27));
            if (this.inPreviewMode) {
                m72dp = AndroidUtilities.m72dp(8);
                m73dp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    m72dp = (i3 - i) - m72dp;
                }
                m73dp = AndroidUtilities.m73dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6 : 0));
            }
            if (this.compactMode) {
                if (this.isTopic) {
                    m73dp = calcCompactDrawingElementTop(this.checkBox.getMeasuredHeight());
                } else {
                    m72dp = AndroidUtilities.m72dp(37);
                    m73dp = AndroidUtilities.m72dp(23);
                }
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(m72dp, m73dp, checkBox2.getMeasuredWidth() + m72dp, this.checkBox.getMeasuredHeight() + m73dp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize) {
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m67e(e);
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
            if (!messagesController.isHiddenByUndo(tLRPC$Dialog.f1524id)) {
                TLRPC$Chat tLRPC$Chat = null;
                if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1524id)) {
                    TLRPC$EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(tLRPC$Dialog.f1524id)));
                    tLRPC$User = encryptedChat != null ? messagesController.getUser(Long.valueOf(encryptedChat.user_id)) : null;
                } else if (DialogObject.isUserDialog(tLRPC$Dialog.f1524id)) {
                    tLRPC$User = messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1524id));
                } else {
                    tLRPC$Chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1524id));
                    tLRPC$User = null;
                }
                if (tLRPC$Chat != null) {
                    replace = tLRPC$Chat.title.replace('\n', ' ');
                } else if (tLRPC$User == null) {
                    continue;
                } else if (UserObject.isDeleted(tLRPC$User)) {
                    replace = LocaleController.getString("HiddenName", C3419R.string.HiddenName);
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
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), AndroidUtilities.m72dp(17), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(111:15|(1:1535)(1:19)|20|(1:1534)(1:26)|27|(1:1533)(1:31)|32|(1:34)|35|(2:37|(1:1522)(1:41))(2:1523|(1:1532)(1:1527))|42|(1:44)|45|(1:47)(1:1517)|48|(7:50|(1:52)|53|54|(1:56)|57|58)|59|(9:61|(2:63|(1:65)(2:752|(2:760|(1:762)(1:763))(2:756|(1:758)(1:759))))(4:764|(1:784)(1:768)|769|(1:771)(2:772|(2:780|(1:782)(1:783))(2:776|(1:778)(1:779))))|66|(3:68|(1:70)(4:739|(1:741)|742|(1:747)(1:746))|71)(3:748|(1:750)|751)|72|(1:74)(1:738)|75|(1:77)(1:(1:734)(1:(1:736)(1:737)))|78)(29:785|(1:787)(2:1505|(2:1513|(1:1515)(1:1516))(2:1509|(1:1511)(1:1512)))|788|(2:790|(2:792|(1:794)(2:795|(2:803|(1:805)(1:806))(2:799|(1:801)(1:802)))))(2:1450|(2:1452|(2:1454|(1:1456)(2:1457|(1:1459)(3:1460|(1:1466)(1:1464)|1465)))(2:1467|(31:1469|(1:1471)(2:1495|(1:1497)(3:1498|(1:1504)(1:1502)|1503))|1472|(2:1474|(21:1482|1483|(2:1485|(2:1489|(1:1491)(1:1492))(1:1488))|808|(1:812)|813|(2:815|(1:819))(2:1446|(1:1448)(1:1449))|820|(6:1424|(2:1426|(2:1428|(2:1430|(1:1432))))|1434|(2:1436|(1:1438))|1440|(13:1442|(1:1444)|827|(7:829|(1:831)(1:1015)|832|(1:834)(1:1014)|835|(1:840)|841)(3:(6:1017|(1:1019)(1:1418)|1020|(1:1022)(1:1417)|(1:1024)(1:1416)|1025)(1:1419)|1026|(4:1028|(2:1030|(3:1037|1038|1036)(1:1034))(7:1039|(1:1041)|1042|(3:1046|(1:1048)(1:1050)|1049)|1051|(1:1055)|1056)|1035|1036)(4:1057|(1:1059)(2:1061|(2:1063|(1:1065)(5:1066|(2:1068|(1:1070)(2:1071|(1:1073)(2:1074|(1:1076)(2:1077|(2:1079|(1:1081)(1:1082))))))(2:1084|(1:1088))|1083|1038|1036))(11:1089|(1:1091)(1:1415)|1092|(2:1106|(8:1108|(7:1112|(1:1114)(3:1408|(1:1410)(1:1412)|1411)|(6:1126|(3:1128|(4:1130|(2:1132|(2:1134|(1:1136)(2:1139|(1:1141)(1:1142))))|1143|(1:1145)(2:1146|(1:1148)(2:1149|(1:1151)(1:1152))))(1:1153)|1137)(2:1154|(7:1159|(2:1171|(2:1187|(6:1251|(2:1253|(4:1255|(1:1266)|1261|(2:1263|(1:1265)))(2:1267|(2:1274|(2:1281|(5:1283|(1:1285)(2:1308|(1:1310)(2:1311|(1:1313)(2:1314|(1:1316)(2:1317|(1:1319)(1:1320)))))|1286|(3:1300|(3:1302|(1:1304)(1:1306)|1305)|1307)(4:1290|(2:1292|(1:1294)(1:1295))|(1:1297)|1298)|1299)(2:1321|(3:1323|(3:1325|(1:1327)(1:1330)|1328)(3:1331|(1:1333)(1:1335)|1334)|1329)(5:1336|(1:1338)(2:1345|(1:1347)(2:1348|(1:1350)(2:1351|(1:1353)(2:1354|(3:1368|(4:1374|(1:1376)|1377|(2:1379|(3:1381|(1:1383)(1:1385)|1384)))(1:1372)|1373)(2:1358|(3:1360|(2:1362|(1:1364))(1:1366)|1365)(1:1367))))))|1339|1340|(2:1342|(1:1344)))))(1:1280))(1:1273)))|1386|(1:1388)|1389|(6:1391|(3:1403|(1:1405)|1406)(1:1395)|1396|(1:1398)|1399|(1:1401))(1:1407))(13:1198|(2:1204|(12:1206|(1:1249)(1:1210)|1211|1212|(1:1248)(5:1218|1219|1220|1221|1222)|1223|(1:1227)|1228|(4:1230|(1:1232)|1233|(1:1235)(1:1236))|1237|1118|(3:1120|(1:1122)(1:1124)|1123)(1:1125)))|1250|1212|(2:1214|1244)|1248|1223|(2:1225|1227)|1228|(0)|1237|1118|(0)(0)))(4:1177|(1:1186)(1:1181)|1182|(1:1184)(4:1185|1117|1118|(0)(0))))(2:1165|(1:1167)(1:1170))|1168|1169|1117|1118|(0)(0))(1:1158))|1138|1117|1118|(0)(0))|1116|1117|1118|(0)(0))|1413|(0)|1116|1117|1118|(0)(0)))|1414|1413|(0)|1116|1117|1118|(0)(0)))|1060|1036))|842|(1:844)(2:1007|(1:1009)(2:1010|(1:1012)(1:1013)))|845|(1:847)(5:911|(5:913|(1:915)(2:971|(1:(3:974|917|918)(2:975|918))(1:976))|916|917|918)(7:977|(1:979)(6:989|(2:1003|(1:1005)(1:1006))(2:997|(1:1002)(1:1001))|981|(1:983)(1:988)|984|(1:986)(1:987))|980|981|(0)(0)|984|(0)(0))|919|(2:924|(2:930|(1:932)(2:933|(1:935)(2:936|(3:938|(3:940|(1:942)(1:945)|943)(2:946|(3:948|(1:960)(1:952)|953)(3:961|(1:969)(1:967)|968))|944)))))|970)|848|(2:852|(1:854)(2:855|(4:857|(1:859)|860|(1:862))))|863|(2:865|(1:867)(1:869))(2:870|(3:872|(3:874|(1:876)|877)(2:884|(4:886|(1:888)|889|(1:891)(1:892))(1:893))|(1:882))(4:894|(3:896|(1:898)(2:899|(2:901|(1:903)(4:904|(1:906)|907|(1:909)))(1:910))|(2:880|882))|883|(0)))|868))|826|827|(0)(0)|842|(0)(0)|845|(0)(0)|848|(3:850|852|(0)(0))|863|(0)(0)|868))(1:1494)|1493|1483|(0)|808|(2:810|812)|813|(0)(0)|820|(2:822|1420)|1424|(0)|1434|(0)|1440|(0)|826|827|(0)(0)|842|(0)(0)|845|(0)(0)|848|(0)|863|(0)(0)|868))))|807|808|(0)|813|(0)(0)|820|(0)|1424|(0)|1434|(0)|1440|(0)|826|827|(0)(0)|842|(0)(0)|845|(0)(0)|848|(0)|863|(0)(0)|868)|(2:80|(1:82)(1:731))(1:732)|83|(3:85|(1:87)(1:729)|88)(1:730)|89|(1:91)(1:728)|92|(2:96|(1:98)(1:(74:(1:105)(1:726)|(1:107)|108|(3:110|(1:112)(1:114)|113)|115|(2:117|(1:119)(1:713))(2:714|(2:716|(2:718|(1:720)(1:721))(2:722|(1:724)(1:725))))|120|(2:683|(2:710|(1:712))(2:687|(2:689|(1:691))(2:692|(2:694|(1:696))(2:697|(4:699|(1:701)(1:705)|702|(1:704))))))(2:124|(1:126))|127|128|(1:130)|131|(1:133)|134|(3:136|(1:138)(1:140)|139)|141|(1:143)(1:680)|144|(1:146)|147|(1:679)(1:153)|154|(1:156)(1:678)|157|(1:677)(1:161)|162|163|(3:165|(1:167)|168)(2:632|(5:660|(1:662)(1:675)|663|(2:664|(3:666|(2:668|669)(2:671|672)|670)(1:673))|674)(9:636|(1:638)(1:659)|639|(1:641)(1:658)|642|(1:644)(1:657)|645|(2:646|(3:648|(2:650|651)(2:653|654)|652)(1:655))|656))|169|(1:171)|172|(2:174|(2:176|(2:180|(1:182)(2:183|(2:185|(1:187)))))(1:188))|189|(2:191|(2:193|(2:197|(1:199)(2:200|(2:202|(1:204)))))(1:542))(1:(4:(3:554|(2:556|(2:560|(1:562)(2:563|(2:565|(1:567)))))(1:630)|568)(1:631)|(5:570|(1:572)(1:628)|573|(4:575|(1:577)(1:622)|578|(1:582))(3:623|(1:625)(1:627)|626)|583)(1:629)|584|(2:586|(6:588|(3:590|(1:592)(1:594)|593)|595|(3:597|(1:599)(1:601)|600)|602|(1:606))(5:607|(3:609|(1:611)(1:613)|612)|614|(3:616|(1:618)(1:620)|619)|621)))(3:547|(2:549|(1:551))|552))|(7:(1:207)|208|(1:210)|211|(1:222)(1:215)|216|(1:220))|223|(1:541)(1:227)|228|(4:230|(1:492)(1:234)|235|(2:236|(1:238)(1:239)))(2:493|(8:518|519|(2:521|(2:523|(1:525)))|526|527|(1:537)(1:531)|532|(2:533|(1:535)(1:536)))(2:497|(4:502|(1:512)(1:506)|507|(2:508|(1:510)(1:511)))(1:501)))|240|(1:242)|243|244|245|(1:247)(1:490)|248|249|250|251|(3:253|(1:258)|259)|260|262|263|(1:485)(2:(2:270|(1:479)(1:276))|277)|278|(3:280|(3:282|(2:291|292)|289)|293)|294|(1:478)(1:298)|299|(12:304|(2:306|(1:310))|311|312|313|314|315|(10:317|(6:321|(1:323)|324|(1:351)(2:328|(1:330)(2:336|(1:338)(2:339|(3:341|(1:343)(1:345)|344)(1:346))))|331|(2:333|(1:335)))|352|(4:356|(1:(1:366)(2:358|(1:360)(2:361|362)))|363|(1:365))|367|(4:371|(1:(1:381)(2:373|(1:375)(2:376|377)))|378|(1:380))|382|(2:388|(1:390))|391|(4:395|(1:397)|398|399))(10:417|(5:421|(1:423)|424|(4:426|(1:428)|429|(1:431))|432)|433|(4:437|(1:439)|440|441)|442|(4:446|(1:448)|449|450)|451|(4:455|(1:457)|458|459)|460|(1:464))|400|(3:(1:414)(1:409)|410|(1:412)(1:413))|415|416)|469|(1:472)|473|(1:475)(1:477)|476|312|313|314|315|(0)(0)|400|(6:402|404|(1:407)|414|410|(0)(0))|415|416)(2:101|(1:103))))|727|108|(0)|115|(0)(0)|120|(1:122)|683|(1:685)|706|708|710|(0)|127|128|(0)|131|(0)|134|(0)|141|(0)(0)|144|(0)|147|(1:149)|679|154|(0)(0)|157|(1:159)|677|162|163|(0)(0)|169|(0)|172|(0)|189|(0)(0)|(0)|223|(1:225)|541|228|(0)(0)|240|(0)|243|244|245|(0)(0)|248|249|250|251|(0)|260|262|263|(1:265)|481|483|485|278|(0)|294|(1:296)|478|299|(13:301|304|(0)|311|312|313|314|315|(0)(0)|400|(0)|415|416)|469|(1:472)|473|(0)(0)|476|312|313|314|315|(0)(0)|400|(0)|415|416) */
    /* JADX WARN: Code restructure failed: missing block: B:1033:0x15f2, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1034:0x15f3, code lost:
        org.telegram.messenger.FileLog.m67e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1310:0x1ddd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1311:0x1dde, code lost:
        org.telegram.messenger.FileLog.m67e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1378:0x1f2e, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1379:0x1f2f, code lost:
        r3 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1380:0x1f31, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1381:0x1f32, code lost:
        r50.messageLayout = null;
        org.telegram.messenger.FileLog.m67e(r0);
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x061a, code lost:
        if (r3.post_messages == false) goto L826;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0626, code lost:
        if (r3.kicked != false) goto L826;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0634, code lost:
        if (r50.isTopic == false) goto L826;
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x0f6b, code lost:
        if (r1 != null) goto L1169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:859:0x11d4, code lost:
        if (r4 == null) goto L883;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1001:0x1514 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1008:0x154a  */
    /* JADX WARN: Removed duplicated region for block: B:1009:0x154c  */
    /* JADX WARN: Removed duplicated region for block: B:1012:0x1553 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1015:0x1576 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1023:0x1591 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1024:0x15b2 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1027:0x15d3 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1037:0x160a  */
    /* JADX WARN: Removed duplicated region for block: B:1041:0x166e  */
    /* JADX WARN: Removed duplicated region for block: B:1082:0x1858  */
    /* JADX WARN: Removed duplicated region for block: B:1085:0x1867  */
    /* JADX WARN: Removed duplicated region for block: B:1102:0x18db  */
    /* JADX WARN: Removed duplicated region for block: B:1117:0x1963  */
    /* JADX WARN: Removed duplicated region for block: B:1208:0x1baa  */
    /* JADX WARN: Removed duplicated region for block: B:1227:0x1bfe  */
    /* JADX WARN: Removed duplicated region for block: B:1234:0x1c14  */
    /* JADX WARN: Removed duplicated region for block: B:1245:0x1c3f  */
    /* JADX WARN: Removed duplicated region for block: B:1293:0x1cfb  */
    /* JADX WARN: Removed duplicated region for block: B:1297:0x1d1c A[Catch: Exception -> 0x1d70, TryCatch #0 {Exception -> 0x1d70, blocks: (B:1295:0x1d14, B:1297:0x1d1c, B:1298:0x1d6d), top: B:1526:0x1d14 }] */
    /* JADX WARN: Removed duplicated region for block: B:1298:0x1d6d A[Catch: Exception -> 0x1d70, TRY_LEAVE, TryCatch #0 {Exception -> 0x1d70, blocks: (B:1295:0x1d14, B:1297:0x1d1c, B:1298:0x1d6d), top: B:1526:0x1d14 }] */
    /* JADX WARN: Removed duplicated region for block: B:1302:0x1d86 A[Catch: Exception -> 0x1ddd, TryCatch #2 {Exception -> 0x1ddd, blocks: (B:1300:0x1d80, B:1302:0x1d86, B:1304:0x1d8a, B:1307:0x1d8f, B:1308:0x1db8), top: B:1531:0x1d80 }] */
    /* JADX WARN: Removed duplicated region for block: B:1314:0x1de5 A[Catch: Exception -> 0x1f31, TryCatch #7 {Exception -> 0x1f31, blocks: (B:1312:0x1de1, B:1314:0x1de5, B:1322:0x1dff, B:1325:0x1e05, B:1327:0x1e0b, B:1329:0x1e0f, B:1331:0x1e22, B:1334:0x1e4e, B:1336:0x1e52, B:1338:0x1e66, B:1340:0x1e6c, B:1342:0x1e70, B:1345:0x1e7d, B:1344:0x1e7a, B:1346:0x1e80, B:1348:0x1e84, B:1350:0x1e88, B:1352:0x1e8d, B:1354:0x1e91, B:1357:0x1e96, B:1359:0x1e9a, B:1361:0x1eab, B:1363:0x1eb1, B:1364:0x1ec4, B:1366:0x1edf, B:1369:0x1ee6, B:1370:0x1eec, B:1374:0x1f01, B:1351:0x1e8b, B:1332:0x1e3e, B:1316:0x1de9, B:1318:0x1ded, B:1320:0x1df2), top: B:1541:0x1de1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1336:0x1e52 A[Catch: Exception -> 0x1f31, TryCatch #7 {Exception -> 0x1f31, blocks: (B:1312:0x1de1, B:1314:0x1de5, B:1322:0x1dff, B:1325:0x1e05, B:1327:0x1e0b, B:1329:0x1e0f, B:1331:0x1e22, B:1334:0x1e4e, B:1336:0x1e52, B:1338:0x1e66, B:1340:0x1e6c, B:1342:0x1e70, B:1345:0x1e7d, B:1344:0x1e7a, B:1346:0x1e80, B:1348:0x1e84, B:1350:0x1e88, B:1352:0x1e8d, B:1354:0x1e91, B:1357:0x1e96, B:1359:0x1e9a, B:1361:0x1eab, B:1363:0x1eb1, B:1364:0x1ec4, B:1366:0x1edf, B:1369:0x1ee6, B:1370:0x1eec, B:1374:0x1f01, B:1351:0x1e8b, B:1332:0x1e3e, B:1316:0x1de9, B:1318:0x1ded, B:1320:0x1df2), top: B:1541:0x1de1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1348:0x1e84 A[Catch: Exception -> 0x1f31, TryCatch #7 {Exception -> 0x1f31, blocks: (B:1312:0x1de1, B:1314:0x1de5, B:1322:0x1dff, B:1325:0x1e05, B:1327:0x1e0b, B:1329:0x1e0f, B:1331:0x1e22, B:1334:0x1e4e, B:1336:0x1e52, B:1338:0x1e66, B:1340:0x1e6c, B:1342:0x1e70, B:1345:0x1e7d, B:1344:0x1e7a, B:1346:0x1e80, B:1348:0x1e84, B:1350:0x1e88, B:1352:0x1e8d, B:1354:0x1e91, B:1357:0x1e96, B:1359:0x1e9a, B:1361:0x1eab, B:1363:0x1eb1, B:1364:0x1ec4, B:1366:0x1edf, B:1369:0x1ee6, B:1370:0x1eec, B:1374:0x1f01, B:1351:0x1e8b, B:1332:0x1e3e, B:1316:0x1de9, B:1318:0x1ded, B:1320:0x1df2), top: B:1541:0x1de1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1354:0x1e91 A[Catch: Exception -> 0x1f31, TryCatch #7 {Exception -> 0x1f31, blocks: (B:1312:0x1de1, B:1314:0x1de5, B:1322:0x1dff, B:1325:0x1e05, B:1327:0x1e0b, B:1329:0x1e0f, B:1331:0x1e22, B:1334:0x1e4e, B:1336:0x1e52, B:1338:0x1e66, B:1340:0x1e6c, B:1342:0x1e70, B:1345:0x1e7d, B:1344:0x1e7a, B:1346:0x1e80, B:1348:0x1e84, B:1350:0x1e88, B:1352:0x1e8d, B:1354:0x1e91, B:1357:0x1e96, B:1359:0x1e9a, B:1361:0x1eab, B:1363:0x1eb1, B:1364:0x1ec4, B:1366:0x1edf, B:1369:0x1ee6, B:1370:0x1eec, B:1374:0x1f01, B:1351:0x1e8b, B:1332:0x1e3e, B:1316:0x1de9, B:1318:0x1ded, B:1320:0x1df2), top: B:1541:0x1de1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1359:0x1e9a A[Catch: Exception -> 0x1f31, TryCatch #7 {Exception -> 0x1f31, blocks: (B:1312:0x1de1, B:1314:0x1de5, B:1322:0x1dff, B:1325:0x1e05, B:1327:0x1e0b, B:1329:0x1e0f, B:1331:0x1e22, B:1334:0x1e4e, B:1336:0x1e52, B:1338:0x1e66, B:1340:0x1e6c, B:1342:0x1e70, B:1345:0x1e7d, B:1344:0x1e7a, B:1346:0x1e80, B:1348:0x1e84, B:1350:0x1e88, B:1352:0x1e8d, B:1354:0x1e91, B:1357:0x1e96, B:1359:0x1e9a, B:1361:0x1eab, B:1363:0x1eb1, B:1364:0x1ec4, B:1366:0x1edf, B:1369:0x1ee6, B:1370:0x1eec, B:1374:0x1f01, B:1351:0x1e8b, B:1332:0x1e3e, B:1316:0x1de9, B:1318:0x1ded, B:1320:0x1df2), top: B:1541:0x1de1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1368:0x1ee4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1372:0x1efc  */
    /* JADX WARN: Removed duplicated region for block: B:1373:0x1eff  */
    /* JADX WARN: Removed duplicated region for block: B:1384:0x1f4d  */
    /* JADX WARN: Removed duplicated region for block: B:1462:0x2107  */
    /* JADX WARN: Removed duplicated region for block: B:1509:0x21e3  */
    /* JADX WARN: Removed duplicated region for block: B:1520:0x2220  */
    /* JADX WARN: Removed duplicated region for block: B:1521:0x2228  */
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
    /* JADX WARN: Removed duplicated region for block: B:427:0x097c  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0b65  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0b76  */
    /* JADX WARN: Removed duplicated region for block: B:713:0x0f76  */
    /* JADX WARN: Removed duplicated region for block: B:718:0x0f8e  */
    /* JADX WARN: Removed duplicated region for block: B:721:0x0f9b  */
    /* JADX WARN: Removed duplicated region for block: B:722:0x0fa3  */
    /* JADX WARN: Removed duplicated region for block: B:731:0x0fc1  */
    /* JADX WARN: Removed duplicated region for block: B:732:0x0fd3  */
    /* JADX WARN: Removed duplicated region for block: B:770:0x1066  */
    /* JADX WARN: Removed duplicated region for block: B:771:0x106b  */
    /* JADX WARN: Removed duplicated region for block: B:774:0x1072  */
    /* JADX WARN: Removed duplicated region for block: B:775:0x1075  */
    /* JADX WARN: Removed duplicated region for block: B:832:0x113f  */
    /* JADX WARN: Removed duplicated region for block: B:836:0x1151  */
    /* JADX WARN: Removed duplicated region for block: B:837:0x115b  */
    /* JADX WARN: Removed duplicated region for block: B:847:0x1194  */
    /* JADX WARN: Removed duplicated region for block: B:851:0x11a9  */
    /* JADX WARN: Removed duplicated region for block: B:890:0x1252  */
    /* JADX WARN: Removed duplicated region for block: B:895:0x126d  */
    /* JADX WARN: Removed duplicated region for block: B:899:0x12ac  */
    /* JADX WARN: Removed duplicated region for block: B:902:0x12b9  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x12ec  */
    /* JADX WARN: Removed duplicated region for block: B:910:0x12f2  */
    /* JADX WARN: Removed duplicated region for block: B:911:0x1302  */
    /* JADX WARN: Removed duplicated region for block: B:918:0x132e  */
    /* JADX WARN: Removed duplicated region for block: B:919:0x1338  */
    /* JADX WARN: Removed duplicated region for block: B:933:0x1388  */
    /* JADX WARN: Removed duplicated region for block: B:940:0x13a5  */
    /* JADX WARN: Removed duplicated region for block: B:944:0x13d4  */
    /* JADX WARN: Removed duplicated region for block: B:958:0x1454  */
    /* JADX WARN: Removed duplicated region for block: B:965:0x1476  */
    /* JADX WARN: Removed duplicated region for block: B:973:0x1496  */
    /* JADX WARN: Removed duplicated region for block: B:995:0x1501  */
    /* JADX WARN: Removed duplicated region for block: B:998:0x1506 A[Catch: Exception -> 0x15f2, TryCatch #6 {Exception -> 0x15f2, blocks: (B:993:0x14f8, B:996:0x1502, B:998:0x1506, B:999:0x1510, B:1001:0x1514, B:1005:0x152e, B:1006:0x1537, B:1010:0x154d, B:1012:0x1553, B:1013:0x155f, B:1015:0x1576, B:1017:0x157c, B:1021:0x158d, B:1023:0x1591, B:1025:0x15cf, B:1027:0x15d3, B:1029:0x15dc, B:1031:0x15e6, B:1024:0x15b2), top: B:1539:0x14f8 }] */
    /* JADX WARN: Type inference failed for: r0v204, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r5v38, types: [android.text.SpannableStringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildLayout(boolean r51) {
        /*
            Method dump skipped, instructions count: 8762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.buildLayout(boolean):void");
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
                        ceil += AndroidUtilities.m72dp(3);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + ceil + AndroidUtilities.m72dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m67e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount > 0) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.insert(0, (CharSequence) " ");
            valueOf.setSpan(new FixedWidthSpan(AndroidUtilities.m72dp((((this.thumbSize + 2) * this.thumbsCount) - 2) + 5)), 0, 1, 33);
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
            ArrayList<TLRPC$TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(this.chat.f1518id);
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
                    TLRPC$TL_forumTopic findTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(this.chat.f1518id, i);
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
                        spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.m72dp(3)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
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
                    if (((TLRPC$TL_forumTopic) arrayList.get(i3)).f1575id != i) {
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
            } else if (MessagesController.getInstance(this.currentAccount).getTopicsController().endIsReached(this.chat.f1518id)) {
                return "no created topics";
            } else {
                MessagesController.getInstance(this.currentAccount).getTopicsController().preloadTopics(this.chat.f1518id);
                return LocaleController.getString("Loading", C3419R.string.Loading);
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
                        canvas.translate(AndroidUtilities.m72dp(4) * (1.0f - f), BitmapDescriptorFactory.HUE_RED);
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
        return !LocaleController.isRTL ? f >= BitmapDescriptorFactory.HUE_RED && f < ((float) AndroidUtilities.m72dp(60)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.m72dp(60))) && f < ((float) getMeasuredWidth());
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
                CheckBox2 checkBox22 = new CheckBox2(getContext(), this.compactMode ? 17 : 21, this.resourcesProvider) { // from class: org.telegram.ui.Cells.DialogCell.2
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
                ArrayList<MessageObject> arrayList2 = longSparseArray.get(tLRPC$Dialog.f1524id);
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
    /* JADX WARN: Removed duplicated region for block: B:131:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0658  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x06e7  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0773  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0785  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0791  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean update(int r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2132
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.update(int, boolean):boolean");
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
        return tLRPC$TL_forumTopic.f1575id;
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
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0518, code lost:
        if (r39.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L826;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x06a6, code lost:
        if (r39.archiveBackgroundProgress == com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L816;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0bb7, code lost:
        if (r7.lastKnownTypingType >= 0) goto L187;
     */
    /* JADX WARN: Removed duplicated region for block: B:161:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0a35  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0b5d  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0ba9  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0c58  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0e16  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0e24  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0e26  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0e2c  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0e2e  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0e34 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0e41  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0e47  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0e49  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0e4e  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0e50  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0e54  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0e56  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0e59  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0ebd  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0ed6  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0ed8  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0ede  */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0ee1  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0ef0  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0efc  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0f06 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0f60  */
    /* JADX WARN: Removed duplicated region for block: B:541:0x0f6b  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0f8e  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0f97  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0fba  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x0fc5  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x1019  */
    /* JADX WARN: Removed duplicated region for block: B:574:0x102f  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x109d  */
    /* JADX WARN: Removed duplicated region for block: B:651:0x117a  */
    /* JADX WARN: Removed duplicated region for block: B:660:0x11a4  */
    /* JADX WARN: Removed duplicated region for block: B:666:0x11b4  */
    /* JADX WARN: Removed duplicated region for block: B:667:0x1201  */
    /* JADX WARN: Removed duplicated region for block: B:723:0x13ae  */
    /* JADX WARN: Removed duplicated region for block: B:731:0x13c8  */
    /* JADX WARN: Removed duplicated region for block: B:759:0x1541  */
    /* JADX WARN: Removed duplicated region for block: B:760:0x1545  */
    /* JADX WARN: Removed duplicated region for block: B:763:0x1552  */
    /* JADX WARN: Removed duplicated region for block: B:766:0x1572  */
    /* JADX WARN: Removed duplicated region for block: B:784:0x15a1  */
    /* JADX WARN: Removed duplicated region for block: B:787:0x15ac  */
    /* JADX WARN: Removed duplicated region for block: B:788:0x15b1  */
    /* JADX WARN: Removed duplicated region for block: B:791:0x15b9  */
    /* JADX WARN: Removed duplicated region for block: B:795:0x15c1  */
    /* JADX WARN: Removed duplicated region for block: B:797:0x15c5  */
    /* JADX WARN: Removed duplicated region for block: B:810:0x162a  */
    /* JADX WARN: Removed duplicated region for block: B:814:0x164c  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x1655  */
    /* JADX WARN: Removed duplicated region for block: B:820:0x165c  */
    /* JADX WARN: Removed duplicated region for block: B:835:0x169f  */
    /* JADX WARN: Removed duplicated region for block: B:865:0x171f  */
    /* JADX WARN: Removed duplicated region for block: B:871:0x176f  */
    /* JADX WARN: Removed duplicated region for block: B:874:0x1777  */
    /* JADX WARN: Removed duplicated region for block: B:879:0x1787  */
    /* JADX WARN: Removed duplicated region for block: B:887:0x179b  */
    /* JADX WARN: Removed duplicated region for block: B:895:0x17c3  */
    /* JADX WARN: Removed duplicated region for block: B:906:0x17ef  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x1804  */
    /* JADX WARN: Removed duplicated region for block: B:923:0x1829  */
    /* JADX WARN: Removed duplicated region for block: B:934:0x1849  */
    /* JADX WARN: Removed duplicated region for block: B:953:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r40) {
        /*
            Method dump skipped, instructions count: 6254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.onDraw(android.graphics.Canvas):void");
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
        if (r5 > 0) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0528  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0117  */
    @Override // org.telegram.p043ui.Stories.StoriesListPlaceProvider.AvatarOverlaysView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean drawAvatarOverlays(android.graphics.Canvas r18) {
        /*
            Method dump skipped, instructions count: 1459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.DialogCell.drawAvatarOverlays(android.graphics.Canvas):boolean");
    }

    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        int m73dp;
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
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.m72dp(2));
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
            this.rect.set(i2 - AndroidUtilities.m73dp(5.5f), i, m73dp + this.countWidth + AndroidUtilities.m72dp(11), AndroidUtilities.m72dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m73dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m73dp(11.5f), AndroidUtilities.m73dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m73dp(11.5f), AndroidUtilities.m73dp(11.5f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(i2, i + AndroidUtilities.m72dp(4));
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
            float m73dp2 = f8 - AndroidUtilities.m73dp(5.5f);
            float f9 = i;
            this.rect.set(m73dp2, f9, (this.countWidth * f6) + m73dp2 + (this.countWidthOld * f7) + AndroidUtilities.m72dp(11), AndroidUtilities.m72dp(23) + i);
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
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.m73dp(11.5f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.m73dp(11.5f), AndroidUtilities.m73dp(11.5f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m73dp(11.5f), AndroidUtilities.m73dp(11.5f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(f8, i + AndroidUtilities.m72dp(4));
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f6));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m72dp(13) : -AndroidUtilities.m72dp(13)) * f7) + f9 + AndroidUtilities.m72dp(4));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? AndroidUtilities.m72dp(13) : -AndroidUtilities.m72dp(13)) * f7) + f9 + AndroidUtilities.m72dp(4));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint.setAlpha((int) (f11 * f7));
                canvas.save();
                canvas.translate(f8, ((this.countAnimationIncrement ? -AndroidUtilities.m72dp(13) : AndroidUtilities.m72dp(13)) * f6) + f9 + AndroidUtilities.m72dp(4));
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
                pullForegroundDrawable.outCy = AndroidUtilities.m72dp(24);
                this.archivedChatsDrawable.outCx = AndroidUtilities.m72dp(24);
                PullForegroundDrawable pullForegroundDrawable2 = this.archivedChatsDrawable;
                pullForegroundDrawable2.outRadius = BitmapDescriptorFactory.HUE_RED;
                pullForegroundDrawable2.outImageSize = BitmapDescriptorFactory.HUE_RED;
            } else {
                pullForegroundDrawable.outCy = this.storyParams.originalAvatarRect.centerY();
                this.archivedChatsDrawable.outCx = this.storyParams.originalAvatarRect.centerX();
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
        if (i == C3419R.C3422id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C3419R.C3422id.acc_action_chat_preview, LocaleController.getString("AccActionChatPreview", C3419R.string.AccActionChatPreview)));
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
            sb.append(i == 2 ? LocaleController.getInternalString(C3419R.string.hidden_chats_title) : LocaleController.getString("ArchivedChats", C3419R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString("AccDescrSecretChat", C3419R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString("AccDescrTopic", C3419R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC$User tLRPC$User = this.user;
                if (tLRPC$User != null) {
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        sb.append(LocaleController.getString("RepliesTitle", C3419R.string.RepliesTitle));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString("Bot", C3419R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC$User tLRPC$User2 = this.user;
                        if (tLRPC$User2.self) {
                            sb.append(LocaleController.getString("SavedMessages", C3419R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC$Chat tLRPC$Chat = this.chat;
                    if (tLRPC$Chat != null) {
                        if (tLRPC$Chat.broadcast) {
                            sb.append(LocaleController.getString("AccDescrChannel", C3419R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString("AccDescrGroup", C3419R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString("AccDescrVerified", C3419R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString("AccDescrNotificationsMuted", C3419R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString("AccDescrUserOnline", C3419R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString("AccDescrMentionReaction", C3419R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C3419R.string.AccDescrSentDate, formatDateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C3419R.string.AccDescrReceivedDate, formatDateAudio));
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
        if (this.message.isPhoto() || this.message.isNewGif() || this.message.isVideo() || this.message.isRoundVideo() || this.message.isStoryMedia()) {
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
                this.thumbImage[i].setRoundRadius(AndroidUtilities.m72dp(messageObject.isRoundVideo() ? 18 : 2));
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
            return LocaleController.getString("FromYou", C3419R.string.FromYou);
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
                    return LocaleController.getString("HiddenName", C3419R.string.HiddenName);
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
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.m72dp((this.messagePaddingStart + 23) + 24);
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
                    FileLog.m67e(e);
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
                    int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.m72dp((this.messagePaddingStart + 23) + 10);
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
        if (this.rightFragmentOpenedProgress == BitmapDescriptorFactory.HUE_RED && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.storyParams.checkOnTouchEvent(motionEvent, this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CanvasButton canvasButton;
        if (this.rightFragmentOpenedProgress == BitmapDescriptorFactory.HUE_RED && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
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
}
