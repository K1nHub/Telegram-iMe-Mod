package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ChatBackgroundDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.ImageUpdater;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.Premium.StarParticlesView;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RadialProgress2;
import org.telegram.p043ui.Components.RadialProgressView;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Components.URLSpanNoUnderline;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_documentEmpty;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_messageActionGiftCode;
import org.telegram.tgnet.TLRPC$TL_messageActionSuggestProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$TL_premiumGiftOption;
import org.telegram.tgnet.TLRPC$TL_stickerPack;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Cells.ChatActionCell */
/* loaded from: classes5.dex */
public class ChatActionCell extends BaseCell implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate {
    private static Map<Integer, String> monthsToEmoticon;
    private int TAG;
    private SpannableStringBuilder accessibilityText;
    private int adaptiveEmojiColor;
    private ColorFilter adaptiveEmojiColorFilter;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private AvatarDrawable avatarDrawable;
    StoriesUtilities.AvatarStoryParams avatarStoryParams;
    private int backgroundButtonTop;
    private int backgroundHeight;
    private Path backgroundPath;
    private RectF backgroundRect;
    private int backgroundRectHeight;
    private ButtonBounce bounce;
    private boolean canDrawInParent;
    private int currentAccount;
    private MessageObject currentMessageObject;
    private ImageLocation currentVideoLocation;
    private int customDate;
    private CharSequence customText;
    private ChatActionCellDelegate delegate;
    private boolean forceWasUnread;
    private boolean giftButtonPressed;
    private RectF giftButtonRect;
    private TLRPC$VideoSize giftEffectAnimation;
    private int giftPremiumAdditionalHeight;
    private StaticLayout giftPremiumButtonLayout;
    private float giftPremiumButtonWidth;
    private StaticLayout giftPremiumSubtitleLayout;
    private StaticLayout giftPremiumTitleLayout;
    private int giftRectSize;
    private TLRPC$Document giftSticker;
    private ImageReceiver.ImageReceiverDelegate giftStickerDelegate;
    private TextPaint giftSubtitlePaint;
    private TextPaint giftTitlePaint;
    private boolean hasReplyMessage;
    private boolean imagePressed;
    private ImageReceiver imageReceiver;
    private boolean invalidateColors;
    private boolean invalidatePath;
    private View invalidateWithParent;
    private float lastTouchX;
    private float lastTouchY;
    private ArrayList<Integer> lineHeights;
    private ArrayList<Integer> lineWidths;
    private LoadingDrawable loadingDrawable;
    private int overrideBackground;
    private Paint overrideBackgroundPaint;
    private int overrideText;
    private TextPaint overrideTextPaint;
    private URLSpan pressedLink;
    private int previousWidth;
    float progressToProgress;
    RadialProgressView progressView;
    private RadialProgress2 radialProgress;
    private RectF rect;
    private View rippleView;
    private StaticLayout settingWallpaperLayout;
    TextPaint settingWallpaperPaint;
    private float settingWallpaperProgress;
    private StaticLayout settingWallpaperProgressTextLayout;
    public List<SpoilerEffect> spoilers;
    private Stack<SpoilerEffect> spoilersPool;
    private StarParticlesView.Drawable starParticlesDrawable;
    private Path starsPath;
    private int starsSize;
    private int stickerSize;
    private int textHeight;
    private StaticLayout textLayout;
    TextPaint textPaint;
    private int textWidth;
    private int textX;
    private int textXLeft;
    private int textY;
    private Theme.ResourcesProvider themeDelegate;
    private float viewTop;
    private boolean visiblePartSet;
    private boolean wasLayout;

    /* renamed from: org.telegram.ui.Cells.ChatActionCell$ChatActionCellDelegate */
    /* loaded from: classes5.dex */
    public interface ChatActionCellDelegate {

        /* renamed from: org.telegram.ui.Cells.ChatActionCell$ChatActionCellDelegate$-CC */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$canDrawOutboundsContent(ChatActionCellDelegate chatActionCellDelegate) {
                return true;
            }

            public static void $default$didClickImage(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }

            public static boolean $default$didLongPress(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, float f, float f2) {
                return false;
            }

            public static void $default$didOpenPremiumGift(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption, boolean z) {
            }

            public static void $default$didOpenPremiumGiftChannel(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, String str, boolean z) {
            }

            public static void $default$didPressReplyMessage(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, int i) {
            }

            public static BaseFragment $default$getBaseFragment(ChatActionCellDelegate chatActionCellDelegate) {
                return null;
            }

            public static long $default$getDialogId(ChatActionCellDelegate chatActionCellDelegate) {
                return 0L;
            }

            public static int $default$getTopicId(ChatActionCellDelegate chatActionCellDelegate) {
                return 0;
            }

            public static boolean $default$isInPreviewMode(ChatActionCellDelegate chatActionCellDelegate) {
                return false;
            }

            public static void $default$needOpenInviteLink(ChatActionCellDelegate chatActionCellDelegate, TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported) {
            }

            public static void $default$needOpenUserProfile(ChatActionCellDelegate chatActionCellDelegate, long j) {
            }

            public static void $default$needShowEffectOverlay(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC$Document tLRPC$Document, TLRPC$VideoSize tLRPC$VideoSize) {
            }
        }

        boolean canDrawOutboundsContent();

        void didClickImage(ChatActionCell chatActionCell);

        boolean didLongPress(ChatActionCell chatActionCell, float f, float f2);

        void didOpenPremiumGift(ChatActionCell chatActionCell, TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption, boolean z);

        void didOpenPremiumGiftChannel(ChatActionCell chatActionCell, String str, boolean z);

        void didPressReplyMessage(ChatActionCell chatActionCell, int i);

        BaseFragment getBaseFragment();

        long getDialogId();

        int getTopicId();

        boolean isInPreviewMode();

        void needOpenInviteLink(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported);

        void needOpenUserProfile(long j);

        void needShowEffectOverlay(ChatActionCell chatActionCell, TLRPC$Document tLRPC$Document, TLRPC$VideoSize tLRPC$VideoSize);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    public ChatActionCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, resourcesProvider, UserConfig.selectedAccount);
    }

    static {
        HashMap hashMap = new HashMap();
        monthsToEmoticon = hashMap;
        hashMap.put(1, "1⃣");
        monthsToEmoticon.put(3, "2⃣");
        monthsToEmoticon.put(6, "3⃣");
        monthsToEmoticon.put(12, "4⃣");
        monthsToEmoticon.put(24, "5⃣");
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        MessageObject messageObject;
        if (i == NotificationCenter.startSpoilers) {
            setSpoilersSuppressed(false);
        } else if (i == NotificationCenter.stopSpoilers) {
            setSpoilersSuppressed(true);
        } else if (i == NotificationCenter.didUpdatePremiumGiftStickers) {
            MessageObject messageObject2 = this.currentMessageObject;
            if (messageObject2 != null) {
                setMessageObject(messageObject2, true);
            }
        } else if (i == NotificationCenter.diceStickersDidLoad && Objects.equals(objArr[0], UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack) && (messageObject = this.currentMessageObject) != null) {
            setMessageObject(messageObject, true);
        }
    }

    public void setSpoilersSuppressed(boolean z) {
        for (SpoilerEffect spoilerEffect : this.spoilers) {
            spoilerEffect.setSuppressUpdates(z);
        }
    }

    public void setInvalidateWithParent(View view) {
        this.invalidateWithParent = view;
    }

    public boolean hasButton() {
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || !isButtonLayout(messageObject) || this.giftPremiumButtonLayout == null) ? false : true;
    }

    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        final RLottieDrawable lottieAnimation;
        ChatActionCellDelegate chatActionCellDelegate;
        if (!z || (lottieAnimation = this.imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && !messageObject.playedGiftAnimation) {
            messageObject.playedGiftAnimation = true;
            lottieAnimation.setCurrentFrame(0, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    RLottieDrawable.this.restart();
                }
            });
            if (messageObject.wasUnread || this.forceWasUnread) {
                messageObject.wasUnread = false;
                this.forceWasUnread = false;
                try {
                    performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
                if (getContext() instanceof LaunchActivity) {
                    ((LaunchActivity) getContext()).getFireworksOverlay().start();
                }
                TLRPC$VideoSize tLRPC$VideoSize = this.giftEffectAnimation;
                if (tLRPC$VideoSize == null || (chatActionCellDelegate = this.delegate) == null) {
                    return;
                }
                chatActionCellDelegate.needShowEffectOverlay(this, this.giftSticker, tLRPC$VideoSize);
                return;
            }
            return;
        }
        lottieAnimation.stop();
        lottieAnimation.setCurrentFrame(lottieAnimation.getFramesCount() - 1, false);
    }

    public ChatActionCell(Context context) {
        this(context, false, null);
    }

    public ChatActionCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider, int i) {
        super(context);
        this.bounce = new ButtonBounce(this);
        this.currentAccount = UserConfig.selectedAccount;
        this.avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false);
        this.giftButtonRect = new RectF();
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack<>();
        this.overrideBackground = -1;
        this.overrideText = -1;
        this.lineWidths = new ArrayList<>();
        this.lineHeights = new ArrayList<>();
        this.backgroundPath = new Path();
        this.rect = new RectF();
        this.invalidatePath = true;
        this.invalidateColors = false;
        this.giftTitlePaint = new TextPaint(1);
        this.giftSubtitlePaint = new TextPaint(1);
        this.radialProgress = new RadialProgress2(this);
        this.giftStickerDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z2, boolean z3, boolean z4) {
                ChatActionCell.this.lambda$new$0(imageReceiver, z2, z3, z4);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        };
        this.starsPath = new Path();
        this.currentAccount = i;
        this.avatarStoryParams.drawSegments = false;
        this.canDrawInParent = z;
        this.themeDelegate = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.roundMessageSize / 2);
        this.avatarDrawable = new AvatarDrawable();
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.giftTitlePaint.setTextSize(TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics()));
        this.giftSubtitlePaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(-1, 0.07f), 7, AndroidUtilities.m104dp(16)));
        this.rippleView.setVisibility(8);
        addView(this.rippleView);
        StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(10);
        this.starParticlesDrawable = drawable;
        drawable.type = 100;
        drawable.isCircle = false;
        drawable.roundEffect = true;
        drawable.useRotate = false;
        drawable.useBlur = true;
        drawable.checkBounds = true;
        drawable.size1 = 1;
        drawable.f1921k3 = 0.98f;
        drawable.f1920k2 = 0.98f;
        drawable.f1919k1 = 0.98f;
        drawable.paused = false;
        drawable.speedScale = BitmapDescriptorFactory.HUE_RED;
        drawable.minLifeTime = 750L;
        drawable.randLifeTime = 750;
        drawable.init();
    }

    public void setDelegate(ChatActionCellDelegate chatActionCellDelegate) {
        this.delegate = chatActionCellDelegate;
    }

    public void setCustomDate(int i, boolean z, boolean z2) {
        String formatDateChat;
        int i2 = this.customDate;
        if (i2 == i || i2 / 3600 == i / 3600) {
            return;
        }
        if (!z) {
            formatDateChat = LocaleController.formatDateChat(i);
        } else if (i == 2147483646) {
            formatDateChat = LocaleController.getString("MessageScheduledUntilOnline", C3634R.string.MessageScheduledUntilOnline);
        } else {
            formatDateChat = LocaleController.formatString("MessageScheduledOn", C3634R.string.MessageScheduledOn, LocaleController.formatDateChat(i));
        }
        this.customDate = i;
        CharSequence charSequence = this.customText;
        if (charSequence == null || !TextUtils.equals(formatDateChat, charSequence)) {
            this.customText = formatDateChat;
            this.accessibilityText = null;
            updateTextInternal(z2);
        }
    }

    private void updateTextInternal(boolean z) {
        if (getMeasuredWidth() != 0) {
            createLayout(this.customText, getMeasuredWidth());
            invalidate();
        }
        if (this.wasLayout) {
            buildLayout();
        } else if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActionCell.this.requestLayout();
                }
            });
        } else {
            requestLayout();
        }
    }

    public void setCustomText(CharSequence charSequence) {
        this.customText = charSequence;
        if (charSequence != null) {
            updateTextInternal(false);
        }
    }

    public void setOverrideColor(int i, int i2) {
        this.overrideBackground = i;
        this.overrideText = i2;
    }

    public void setMessageObject(MessageObject messageObject) {
        setMessageObject(messageObject, false);
    }

    public void setMessageObject(MessageObject messageObject, boolean z) {
        TLRPC$Document tLRPC$Document;
        int i;
        String str;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        float f;
        StaticLayout staticLayout;
        if (this.currentMessageObject != messageObject || (!((staticLayout = this.textLayout) == null || TextUtils.equals(staticLayout.getText(), messageObject.messageText)) || (!(this.hasReplyMessage || messageObject.replyMessageObject == null) || z || messageObject.type == 21))) {
            if (BuildVars.DEBUG_PRIVATE_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
                FileLog.m99e(new IllegalStateException("Wrong thread!!!"));
            }
            TLRPC$VideoSize tLRPC$VideoSize = null;
            r1 = null;
            TLRPC$PhotoSize tLRPC$PhotoSize2 = null;
            tLRPC$VideoSize = null;
            tLRPC$VideoSize = null;
            this.accessibilityText = null;
            MessageObject messageObject2 = this.currentMessageObject;
            boolean z2 = messageObject2 == null || messageObject2.stableId != messageObject.stableId;
            this.currentMessageObject = messageObject;
            this.hasReplyMessage = messageObject.replyMessageObject != null;
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            this.previousWidth = 0;
            this.imageReceiver.setAutoRepeatCount(0);
            this.imageReceiver.clearDecorators();
            if (messageObject.isStoryMention()) {
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.messageOwner.media.user_id));
                this.avatarDrawable.setInfo(user);
                TL_stories$StoryItem tL_stories$StoryItem = messageObject.messageOwner.media.storyItem;
                if (tL_stories$StoryItem != null && tL_stories$StoryItem.noforwards) {
                    this.imageReceiver.setForUserOrChat(user, this.avatarDrawable, null, true, 0, true);
                } else {
                    StoriesUtilities.setImage(this.imageReceiver, tL_stories$StoryItem);
                }
                this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
            } else {
                int i2 = messageObject.type;
                if (i2 == 22) {
                    if (messageObject.strippedThumb == null) {
                        int size = messageObject.photoThumbs.size();
                        for (int i3 = 0; i3 < size && !(messageObject.photoThumbs.get(i3) instanceof TLRPC$TL_photoStrippedSize); i3++) {
                        }
                    }
                    TLRPC$MessageAction tLRPC$MessageAction = messageObject.messageOwner.action;
                    String str2 = tLRPC$MessageAction.wallpaper.uploadingImage;
                    if (str2 != null) {
                        this.imageReceiver.setImage(ImageLocation.getForPath(str2), "150_150_wallpaper" + tLRPC$MessageAction.wallpaper.f1757id + ChatBackgroundDrawable.hash(tLRPC$MessageAction.wallpaper.settings), null, null, ChatBackgroundDrawable.createThumb(tLRPC$MessageAction.wallpaper), 0L, null, tLRPC$MessageAction.wallpaper, 1);
                    } else {
                        this.imageReceiver.setImage(ImageLocation.getForDocument((TLRPC$Document) messageObject.photoThumbsObject), "150_150_wallpaper" + tLRPC$MessageAction.wallpaper.f1757id + ChatBackgroundDrawable.hash(tLRPC$MessageAction.wallpaper.settings), null, null, ChatBackgroundDrawable.createThumb(tLRPC$MessageAction.wallpaper), 0L, null, tLRPC$MessageAction.wallpaper, 1);
                    }
                    this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
                    if (getUploadingInfoProgress(messageObject) == 1.0f) {
                        this.radialProgress.setProgress(1.0f, !z2);
                        this.radialProgress.setIcon(4, !z2, !z2);
                    } else {
                        this.radialProgress.setIcon(3, !z2, !z2);
                    }
                } else if (i2 == 21) {
                    this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
                    this.imageReceiver.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    TLRPC$TL_messageActionSuggestProfilePhoto tLRPC$TL_messageActionSuggestProfilePhoto = (TLRPC$TL_messageActionSuggestProfilePhoto) messageObject.messageOwner.action;
                    TLRPC$VideoSize closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(tLRPC$TL_messageActionSuggestProfilePhoto.photo.video_sizes, 1000);
                    ArrayList<TLRPC$VideoSize> arrayList = tLRPC$TL_messageActionSuggestProfilePhoto.photo.video_sizes;
                    ImageLocation forPhoto = (arrayList == null || arrayList.isEmpty()) ? null : ImageLocation.getForPhoto(closestVideoSizeWithSize, tLRPC$TL_messageActionSuggestProfilePhoto.photo);
                    TLRPC$Photo tLRPC$Photo = messageObject.messageOwner.action.photo;
                    if (messageObject.strippedThumb == null) {
                        int size2 = messageObject.photoThumbs.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size2) {
                                break;
                            }
                            TLRPC$PhotoSize tLRPC$PhotoSize3 = messageObject.photoThumbs.get(i4);
                            if (tLRPC$PhotoSize3 instanceof TLRPC$TL_photoStrippedSize) {
                                tLRPC$PhotoSize2 = tLRPC$PhotoSize3;
                                break;
                            }
                            i4++;
                        }
                    }
                    TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 1000);
                    if (closestPhotoSizeWithSize != null) {
                        if (closestVideoSizeWithSize != null) {
                            this.imageReceiver.setImage(forPhoto, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForPhoto(closestPhotoSizeWithSize, tLRPC$Photo), "150_150", ImageLocation.getForObject(tLRPC$PhotoSize2, messageObject.photoThumbsObject), "50_50_b", messageObject.strippedThumb, 0L, null, messageObject, 0);
                        } else {
                            this.imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize, tLRPC$Photo), "150_150", ImageLocation.getForObject(tLRPC$PhotoSize2, messageObject.photoThumbsObject), "50_50_b", messageObject.strippedThumb, 0L, null, messageObject, 0);
                        }
                    }
                    this.imageReceiver.setAllowStartLottieAnimation(false);
                    ImageUpdater imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id);
                    if (imageUpdater != null) {
                        f = 1.0f;
                        if (imageUpdater.getCurrentImageProgress() != 1.0f) {
                            this.radialProgress.setIcon(3, !z2, !z2);
                        }
                    } else {
                        f = 1.0f;
                    }
                    this.radialProgress.setProgress(f, !z2);
                    this.radialProgress.setIcon(4, !z2, !z2);
                } else if (i2 == 18 || i2 == 25) {
                    this.imageReceiver.setRoundRadius(0);
                    String str3 = UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack;
                    if (str3 == null) {
                        MediaDataController.getInstance(this.currentAccount).checkPremiumGiftStickers();
                        return;
                    }
                    TLRPC$TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(str3);
                    if (stickerSetByName == null) {
                        stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(str3);
                    }
                    if (stickerSetByName != null) {
                        TLRPC$MessageAction tLRPC$MessageAction2 = messageObject.messageOwner.action;
                        if (tLRPC$MessageAction2 instanceof TLRPC$TL_messageActionGiftCode) {
                            i = ((TLRPC$TL_messageActionGiftCode) tLRPC$MessageAction2).months;
                        } else {
                            i = tLRPC$MessageAction2.months;
                        }
                        String str4 = monthsToEmoticon.get(Integer.valueOf(i));
                        Iterator<TLRPC$TL_stickerPack> it = stickerSetByName.packs.iterator();
                        tLRPC$Document = null;
                        while (it.hasNext()) {
                            TLRPC$TL_stickerPack next = it.next();
                            if (Objects.equals(next.emoticon, str4)) {
                                Iterator<Long> it2 = next.documents.iterator();
                                while (it2.hasNext()) {
                                    long longValue = it2.next().longValue();
                                    Iterator<TLRPC$Document> it3 = stickerSetByName.documents.iterator();
                                    while (true) {
                                        if (!it3.hasNext()) {
                                            str = str4;
                                            break;
                                        }
                                        TLRPC$Document next2 = it3.next();
                                        str = str4;
                                        if (next2.f1610id == longValue) {
                                            tLRPC$Document = next2;
                                            break;
                                        }
                                        str4 = str;
                                    }
                                    if (tLRPC$Document != null) {
                                        break;
                                    }
                                    str4 = str;
                                }
                            }
                            str = str4;
                            if (tLRPC$Document != null) {
                                break;
                            }
                            str4 = str;
                        }
                        if (tLRPC$Document == null && !stickerSetByName.documents.isEmpty()) {
                            tLRPC$Document = stickerSetByName.documents.get(0);
                        }
                    } else {
                        tLRPC$Document = null;
                    }
                    this.forceWasUnread = messageObject.wasUnread;
                    this.giftSticker = tLRPC$Document;
                    if (tLRPC$Document != null) {
                        this.imageReceiver.setAllowStartLottieAnimation(true);
                        this.imageReceiver.setDelegate(this.giftStickerDelegate);
                        this.giftEffectAnimation = null;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= tLRPC$Document.video_thumbs.size()) {
                                break;
                            } else if ("f".equals(tLRPC$Document.video_thumbs.get(i5).type)) {
                                this.giftEffectAnimation = tLRPC$Document.video_thumbs.get(i5);
                                break;
                            } else {
                                i5++;
                            }
                        }
                        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$Document, Theme.key_windowBackgroundGray, 0.3f);
                        this.imageReceiver.setAutoRepeat(0);
                        this.imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), String.format(Locale.US, "%d_%d_nr_messageId=%d", 160, 160, Integer.valueOf(messageObject.stableId)), svgThumb, "tgs", stickerSetByName, 1);
                    } else {
                        MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(str3, false, stickerSetByName == null);
                    }
                } else if (i2 == 11) {
                    this.imageReceiver.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    this.imageReceiver.setRoundRadius(AndroidUtilities.roundMessageSize / 2);
                    this.imageReceiver.setAutoRepeatCount(1);
                    this.avatarDrawable.setInfo(messageObject.getDialogId(), null, null);
                    if (messageObject.messageOwner.action instanceof TLRPC$TL_messageActionUserUpdatedPhoto) {
                        this.imageReceiver.setImage(null, null, this.avatarDrawable, null, messageObject, 0);
                    } else {
                        if (messageObject.strippedThumb == null) {
                            int size3 = messageObject.photoThumbs.size();
                            for (int i6 = 0; i6 < size3; i6++) {
                                tLRPC$PhotoSize = messageObject.photoThumbs.get(i6);
                                if (tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize) {
                                    break;
                                }
                            }
                        }
                        tLRPC$PhotoSize = null;
                        TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 640);
                        if (closestPhotoSizeWithSize2 != null) {
                            TLRPC$Photo tLRPC$Photo2 = messageObject.messageOwner.action.photo;
                            if (!tLRPC$Photo2.video_sizes.isEmpty() && SharedConfig.isAutoplayGifs()) {
                                TLRPC$VideoSize closestVideoSizeWithSize2 = FileLoader.getClosestVideoSizeWithSize(tLRPC$Photo2.video_sizes, 1000);
                                if (messageObject.mediaExists || DownloadController.getInstance(this.currentAccount).canDownloadMedia(4, closestVideoSizeWithSize2.size)) {
                                    tLRPC$VideoSize = closestVideoSizeWithSize2;
                                } else {
                                    this.currentVideoLocation = ImageLocation.getForPhoto(closestVideoSizeWithSize2, tLRPC$Photo2);
                                    DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(FileLoader.getAttachFileName(closestVideoSizeWithSize2), messageObject, this);
                                }
                            }
                            if (tLRPC$VideoSize != null) {
                                this.imageReceiver.setImage(ImageLocation.getForPhoto(tLRPC$VideoSize, tLRPC$Photo2), ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForObject(tLRPC$PhotoSize, messageObject.photoThumbsObject), "50_50_b", messageObject.strippedThumb, 0L, null, messageObject, 1);
                            } else {
                                this.imageReceiver.setImage(ImageLocation.getForObject(closestPhotoSizeWithSize2, messageObject.photoThumbsObject), "150_150", ImageLocation.getForObject(tLRPC$PhotoSize, messageObject.photoThumbsObject), "50_50_b", messageObject.strippedThumb, 0L, null, messageObject, 1);
                            }
                        } else {
                            this.imageReceiver.setImageBitmap(this.avatarDrawable);
                        }
                    }
                    this.imageReceiver.setVisible(!PhotoViewer.isShowingImage(messageObject), false);
                } else {
                    this.imageReceiver.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    this.imageReceiver.setImageBitmap((Bitmap) null);
                }
            }
            this.rippleView.setVisibility(isButtonLayout(messageObject) ? 0 : 8);
            ForumUtilities.applyTopicToMessage(messageObject);
            requestLayout();
        }
    }

    private float getUploadingInfoProgress(MessageObject messageObject) {
        MessagesController messagesController;
        String str;
        if (messageObject == null || messageObject.type != 22 || (str = (messagesController = MessagesController.getInstance(this.currentAccount)).uploadingWallpaper) == null || !TextUtils.equals(messageObject.messageOwner.action.wallpaper.uploadingImage, str)) {
            return 1.0f;
        }
        return messagesController.uploadingWallpaperInfo.uploadingProgress;
    }

    public MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    public ImageReceiver getPhotoImage() {
        return this.imageReceiver;
    }

    public void setVisiblePart(float f, int i) {
        this.visiblePartSet = true;
        this.backgroundHeight = i;
        this.viewTop = f;
    }

    @Override // org.telegram.p043ui.Cells.BaseCell
    protected boolean onLongPress() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null) {
            return chatActionCellDelegate.didLongPress(this, this.lastTouchX, this.lastTouchY);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.rippleView;
        RectF rectF = this.giftButtonRect;
        view.layout((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.imageReceiver.onDetachedFromWindow();
        setStarsPaused(true);
        this.wasLayout = false;
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
        this.avatarStoryParams.onDetachFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        ChatActionCellDelegate chatActionCellDelegate;
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
        setStarsPaused(false);
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.type != 21) {
            return;
        }
        setMessageObject(messageObject, true);
    }

    private void setStarsPaused(boolean z) {
        StarParticlesView.Drawable drawable = this.starParticlesDrawable;
        if (z == drawable.paused) {
            return;
        }
        drawable.paused = z;
        if (z) {
            drawable.pausedTime = System.currentTimeMillis();
            return;
        }
        for (int i = 0; i < this.starParticlesDrawable.particles.size(); i++) {
            this.starParticlesDrawable.particles.get(i).lifeTime += System.currentTimeMillis() - this.starParticlesDrawable.pausedTime;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:249:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:279:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatActionCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private void openPremiumGiftChannel() {
        if (this.delegate != null) {
            final TLRPC$TL_messageActionGiftCode tLRPC$TL_messageActionGiftCode = (TLRPC$TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActionCell.this.lambda$openPremiumGiftChannel$1(tLRPC$TL_messageActionGiftCode);
                }
            });
        }
    }

    public /* synthetic */ void lambda$openPremiumGiftChannel$1(TLRPC$TL_messageActionGiftCode tLRPC$TL_messageActionGiftCode) {
        this.delegate.didOpenPremiumGiftChannel(this, tLRPC$TL_messageActionGiftCode.slug, false);
    }

    private void openPremiumGiftPreview() {
        final TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption = new TLRPC$TL_premiumGiftOption();
        TLRPC$MessageAction tLRPC$MessageAction = this.currentMessageObject.messageOwner.action;
        tLRPC$TL_premiumGiftOption.amount = tLRPC$MessageAction.amount;
        tLRPC$TL_premiumGiftOption.months = tLRPC$MessageAction.months;
        tLRPC$TL_premiumGiftOption.currency = tLRPC$MessageAction.currency;
        if (this.delegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActionCell.this.lambda$openPremiumGiftPreview$2(tLRPC$TL_premiumGiftOption);
                }
            });
        }
    }

    public /* synthetic */ void lambda$openPremiumGiftPreview$2(TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption) {
        this.delegate.didOpenPremiumGift(this, tLRPC$TL_premiumGiftOption, false);
    }

    public void openLink(CharacterStyle characterStyle) {
        if (this.delegate == null || !(characterStyle instanceof URLSpan)) {
            return;
        }
        String url = ((URLSpan) characterStyle).getURL();
        if (url.startsWith("topic")) {
            URLSpan uRLSpan = this.pressedLink;
            if (uRLSpan instanceof URLSpanNoUnderline) {
                TLObject object = ((URLSpanNoUnderline) uRLSpan).getObject();
                if (object instanceof TLRPC$TL_forumTopic) {
                    ForumUtilities.openTopic(this.delegate.getBaseFragment(), -this.delegate.getDialogId(), (TLRPC$TL_forumTopic) object, 0);
                    return;
                }
                return;
            }
        }
        if (url.startsWith("invite")) {
            URLSpan uRLSpan2 = this.pressedLink;
            if (uRLSpan2 instanceof URLSpanNoUnderline) {
                TLObject object2 = ((URLSpanNoUnderline) uRLSpan2).getObject();
                if (object2 instanceof TLRPC$TL_chatInviteExported) {
                    this.delegate.needOpenInviteLink((TLRPC$TL_chatInviteExported) object2);
                    return;
                }
                return;
            }
        }
        if (url.startsWith("game")) {
            this.delegate.didPressReplyMessage(this, this.currentMessageObject.getReplyMsgId());
        } else if (url.startsWith("http")) {
            Browser.openUrl(getContext(), url);
        } else {
            this.delegate.needOpenUserProfile(Long.parseLong(url));
        }
    }

    private void createLayout(CharSequence charSequence, int i) {
        TextPaint textPaint;
        ChatActionCellDelegate chatActionCellDelegate;
        int m104dp = i - AndroidUtilities.m104dp(30);
        if (m104dp < 0) {
            return;
        }
        this.invalidatePath = true;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.drawServiceWithDefaultTypeface) {
            textPaint = (TextPaint) getThemedPaint("paintChatActionText2");
        } else {
            textPaint = (TextPaint) getThemedPaint("paintChatActionText");
        }
        TextPaint textPaint2 = textPaint;
        textPaint2.linkColor = textPaint2.getColor();
        this.textLayout = new StaticLayout(charSequence, textPaint2, m104dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        this.textHeight = 0;
        this.textWidth = 0;
        try {
            int lineCount = this.textLayout.getLineCount();
            for (int i2 = 0; i2 < lineCount; i2++) {
                try {
                    float lineWidth = this.textLayout.getLineWidth(i2);
                    float f = m104dp;
                    if (lineWidth > f) {
                        lineWidth = f;
                    }
                    this.textHeight = (int) Math.max(this.textHeight, Math.ceil(this.textLayout.getLineBottom(i2)));
                    this.textWidth = (int) Math.max(this.textWidth, Math.ceil(lineWidth));
                } catch (Exception e) {
                    FileLog.m99e(e);
                    return;
                }
            }
        } catch (Exception e2) {
            FileLog.m99e(e2);
        }
        this.textX = (i - this.textWidth) / 2;
        this.textY = AndroidUtilities.m104dp(7);
        this.textXLeft = (i - this.textLayout.getWidth()) / 2;
        this.spoilersPool.addAll(this.spoilers);
        this.spoilers.clear();
        if (charSequence instanceof Spannable) {
            StaticLayout staticLayout = this.textLayout;
            int i3 = this.textX;
            SpoilerEffect.addSpoilers(this, staticLayout, i3, i3 + this.textWidth, (Spannable) charSequence, this.spoilersPool, this.spoilers, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x00d5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatActionCell.onMeasure(int, int):void");
    }

    private boolean isNewStyleButtonLayout() {
        MessageObject messageObject = this.currentMessageObject;
        int i = messageObject.type;
        return i == 21 || i == 22 || messageObject.isStoryMention();
    }

    private int getImageSize(MessageObject messageObject) {
        return (messageObject.type == 21 || isNewStyleButtonLayout()) ? AndroidUtilities.m104dp(78) : this.stickerSize;
    }

    private void buildLayout() {
        CharSequence charSequence;
        CharSequence charSequence2;
        String string;
        String formatString;
        String string2;
        ArrayList<TLRPC$VideoSize> arrayList;
        TLRPC$Photo tLRPC$Photo;
        ArrayList<TLRPC$VideoSize> arrayList2;
        TLRPC$MessageMedia tLRPC$MessageMedia;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            if (messageObject.isExpiredStory()) {
                if (messageObject.messageOwner.media.user_id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    charSequence = StoriesUtilities.createExpiredStoryString(true, "ExpiredStoryMention", C3634R.string.ExpiredStoryMention, new Object[0]);
                } else {
                    charSequence = StoriesUtilities.createExpiredStoryString(true, "ExpiredStoryMentioned", C3634R.string.ExpiredStoryMentioned, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name);
                }
            } else {
                charSequence = (this.delegate.getTopicId() == 0 && MessageObject.isTopicActionMessage(messageObject)) ? ForumUtilities.createActionTextWithTopic(MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-messageObject.getDialogId(), MessageObject.getTopicId(messageObject.messageOwner, true)), messageObject) : null;
            }
            if (charSequence == null) {
                TLRPC$Message tLRPC$Message = messageObject.messageOwner;
                if (tLRPC$Message != null && (tLRPC$MessageMedia = tLRPC$Message.media) != null && tLRPC$MessageMedia.ttl_seconds != 0) {
                    if (tLRPC$MessageMedia.photo != null) {
                        charSequence = LocaleController.getString("AttachPhotoExpired", C3634R.string.AttachPhotoExpired);
                    } else {
                        TLRPC$Document tLRPC$Document = tLRPC$MessageMedia.document;
                        if ((tLRPC$Document instanceof TLRPC$TL_documentEmpty) || ((tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument) && tLRPC$Document == null)) {
                            charSequence = LocaleController.getString("AttachVideoExpired", C3634R.string.AttachVideoExpired);
                        } else {
                            charSequence = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
                        }
                    }
                } else {
                    charSequence = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
                }
            }
        } else {
            charSequence = this.customText;
        }
        createLayout(charSequence, this.previousWidth);
        if (messageObject != null) {
            int i = messageObject.type;
            if (i == 11) {
                int i2 = AndroidUtilities.roundMessageSize;
                this.imageReceiver.setImageCoords((this.previousWidth - AndroidUtilities.roundMessageSize) / 2.0f, this.textHeight + AndroidUtilities.m104dp(19), i2, i2);
            } else if (i == 25) {
                createGiftPremiumChannelLayouts();
            } else if (i == 18) {
                createGiftPremiumLayouts(LocaleController.getString(C3634R.string.ActionGiftPremiumTitle), LocaleController.formatString(C3634R.string.ActionGiftPremiumSubtitle, LocaleController.formatPluralString("Months", messageObject.messageOwner.action.months, new Object[0])), LocaleController.getString(C3634R.string.ActionGiftPremiumView), this.giftRectSize);
            } else {
                if (i != 21) {
                    if (i == 22) {
                        if (MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId())).f1749id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                            charSequence2 = messageObject.messageText;
                            string = null;
                        } else {
                            charSequence2 = messageObject.messageText;
                            string = LocaleController.getString("ViewWallpaperAction", C3634R.string.ViewWallpaperAction);
                        }
                        createGiftPremiumLayouts(null, charSequence2, string, this.giftRectSize);
                        this.textLayout = null;
                        this.textHeight = 0;
                        this.textY = 0;
                        return;
                    } else if (messageObject.isStoryMention()) {
                        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.messageOwner.media.user_id));
                        createGiftPremiumLayouts(null, user.self ? AndroidUtilities.replaceTags(LocaleController.formatString("StoryYouMentionedTitle", C3634R.string.StoryYouMentionedTitle, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name)) : AndroidUtilities.replaceTags(LocaleController.formatString("StoryMentionedTitle", C3634R.string.StoryMentionedTitle, user.first_name)), LocaleController.getString("StoryMentionedAction", C3634R.string.StoryMentionedAction), this.giftRectSize);
                        this.textLayout = null;
                        this.textHeight = 0;
                        this.textY = 0;
                        return;
                    } else {
                        return;
                    }
                }
                TLRPC$TL_messageActionSuggestProfilePhoto tLRPC$TL_messageActionSuggestProfilePhoto = (TLRPC$TL_messageActionSuggestProfilePhoto) messageObject.messageOwner.action;
                TLRPC$User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId()));
                boolean z = tLRPC$TL_messageActionSuggestProfilePhoto.video || !((tLRPC$Photo = tLRPC$TL_messageActionSuggestProfilePhoto.photo) == null || (arrayList2 = tLRPC$Photo.video_sizes) == null || arrayList2.isEmpty());
                if (user2.f1749id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                    TLRPC$User user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId()));
                    if (z) {
                        formatString = LocaleController.formatString("ActionSuggestVideoFromYouDescription", C3634R.string.ActionSuggestVideoFromYouDescription, user3.first_name);
                    } else {
                        formatString = LocaleController.formatString("ActionSuggestPhotoFromYouDescription", C3634R.string.ActionSuggestPhotoFromYouDescription, user3.first_name);
                    }
                } else if (z) {
                    formatString = LocaleController.formatString("ActionSuggestVideoToYouDescription", C3634R.string.ActionSuggestVideoToYouDescription, user2.first_name);
                } else {
                    formatString = LocaleController.formatString("ActionSuggestPhotoToYouDescription", C3634R.string.ActionSuggestPhotoToYouDescription, user2.first_name);
                }
                if (tLRPC$TL_messageActionSuggestProfilePhoto.video || ((arrayList = tLRPC$TL_messageActionSuggestProfilePhoto.photo.video_sizes) != null && !arrayList.isEmpty())) {
                    string2 = LocaleController.getString("ViewVideoAction", C3634R.string.ViewVideoAction);
                } else {
                    string2 = LocaleController.getString("ViewPhotoAction", C3634R.string.ViewPhotoAction);
                }
                createGiftPremiumLayouts(null, formatString, string2, this.giftRectSize);
                this.textLayout = null;
                this.textHeight = 0;
                this.textY = 0;
            }
        }
    }

    private void createGiftPremiumChannelLayouts() {
        String string;
        SpannableStringBuilder spannableStringBuilder;
        int m104dp = this.giftRectSize - AndroidUtilities.m104dp(16);
        this.giftTitlePaint.setTextSize(AndroidUtilities.m104dp(14));
        this.giftSubtitlePaint.setTextSize(AndroidUtilities.m104dp(13));
        TLRPC$TL_messageActionGiftCode tLRPC$TL_messageActionGiftCode = (TLRPC$TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
        int i = tLRPC$TL_messageActionGiftCode.months;
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tLRPC$TL_messageActionGiftCode.boost_peer)));
        String str = chat == null ? null : chat.title;
        boolean z = tLRPC$TL_messageActionGiftCode.via_giveaway;
        if (tLRPC$TL_messageActionGiftCode.unclaimed) {
            string = LocaleController.getString("BoostingUnclaimedPrize", C3634R.string.BoostingUnclaimedPrize);
        } else {
            string = LocaleController.getString("BoostingCongratulations", C3634R.string.BoostingCongratulations);
        }
        String formatPluralString = i == 12 ? LocaleController.formatPluralString("BoldYears", 1, new Object[0]) : LocaleController.formatPluralString("BoldMonths", i, new Object[0]);
        if (z) {
            if (tLRPC$TL_messageActionGiftCode.unclaimed) {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingYouHaveUnclaimedPrize", C3634R.string.BoostingYouHaveUnclaimedPrize, str)));
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingUnclaimedPrizeDuration", C3634R.string.BoostingUnclaimedPrizeDuration, formatPluralString)));
            } else {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString("BoostingReceivedPrizeFrom", C3634R.string.BoostingReceivedPrizeFrom, str)));
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingReceivedPrizeDuration", C3634R.string.BoostingReceivedPrizeDuration, formatPluralString)));
            }
        } else {
            spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(str == null ? LocaleController.getString("BoostingReceivedGiftNoName", C3634R.string.BoostingReceivedGiftNoName) : LocaleController.formatString("BoostingReceivedGiftFrom", C3634R.string.BoostingReceivedGiftFrom, str)));
            spannableStringBuilder.append((CharSequence) "\n\n");
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("BoostingReceivedGiftDuration", C3634R.string.BoostingReceivedGiftDuration, formatPluralString)));
        }
        String string2 = LocaleController.getString("BoostingReceivedGiftOpenBtn", C3634R.string.BoostingReceivedGiftOpenBtn);
        SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(string);
        valueOf.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, valueOf.length(), 33);
        this.giftPremiumTitleLayout = new StaticLayout(valueOf, this.giftTitlePaint, m104dp, Layout.Alignment.ALIGN_CENTER, 1.1f, BitmapDescriptorFactory.HUE_RED, false);
        this.giftPremiumSubtitleLayout = new StaticLayout(spannableStringBuilder, this.giftSubtitlePaint, m104dp, Layout.Alignment.ALIGN_CENTER, 1.1f, BitmapDescriptorFactory.HUE_RED, false);
        SpannableStringBuilder valueOf2 = SpannableStringBuilder.valueOf(string2);
        valueOf2.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, valueOf2.length(), 33);
        StaticLayout staticLayout = new StaticLayout(valueOf2, (TextPaint) getThemedPaint("paintChatActionText"), m104dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.giftPremiumButtonLayout = staticLayout;
        this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
    }

    private void createGiftPremiumLayouts(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        int m104dp = i - AndroidUtilities.m104dp(16);
        if (charSequence != null) {
            this.giftTitlePaint.setTextSize(AndroidUtilities.m104dp(16));
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, valueOf.length(), 33);
            this.giftPremiumTitleLayout = new StaticLayout(valueOf, this.giftTitlePaint, m104dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } else {
            this.giftPremiumTitleLayout = null;
        }
        if (this.currentMessageObject != null && isNewStyleButtonLayout()) {
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.m104dp(13));
        } else {
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.m104dp(15));
        }
        this.giftPremiumSubtitleLayout = new StaticLayout(charSequence2, this.giftSubtitlePaint, m104dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        if (charSequence3 != null) {
            SpannableStringBuilder valueOf2 = SpannableStringBuilder.valueOf(charSequence3);
            valueOf2.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, valueOf2.length(), 33);
            StaticLayout staticLayout = new StaticLayout(valueOf2, (TextPaint) getThemedPaint("paintChatActionText"), m104dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.giftPremiumButtonLayout = staticLayout;
            this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
            return;
        }
        this.giftPremiumButtonLayout = null;
        this.giftPremiumButtonWidth = BitmapDescriptorFactory.HUE_RED;
    }

    private float measureLayoutWidth(Layout layout) {
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < layout.getLineCount(); i++) {
            float ceil = (int) Math.ceil(layout.getLineWidth(i));
            if (ceil > f) {
                f = ceil;
            }
        }
        return f;
    }

    public int getCustomDate() {
        return this.customDate;
    }

    /* JADX WARN: Removed duplicated region for block: B:278:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:387:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r31) {
        /*
            Method dump skipped, instructions count: 1794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ChatActionCell.onDraw(android.graphics.Canvas):void");
    }

    public void drawBackground(Canvas canvas, boolean z) {
        Paint paint;
        Paint paint2;
        int i;
        int i2;
        int i3;
        Paint paint3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        if (this.canDrawInParent) {
            if (hasGradientService() && !z) {
                return;
            }
            if (!hasGradientService() && z) {
                return;
            }
        }
        Paint themedPaint = getThemedPaint("paintChatActionBackground");
        this.textPaint = (TextPaint) getThemedPaint("paintChatActionText");
        int i14 = this.overrideBackground;
        if (i14 >= 0) {
            int themedColor = getThemedColor(i14);
            if (this.overrideBackgroundPaint == null) {
                Paint paint4 = new Paint(1);
                this.overrideBackgroundPaint = paint4;
                paint4.setColor(themedColor);
                TextPaint textPaint = new TextPaint(1);
                this.overrideTextPaint = textPaint;
                textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.overrideTextPaint.setTextSize(AndroidUtilities.m104dp(Math.max(16, SharedConfig.fontSize) - 2));
                this.overrideTextPaint.setColor(getThemedColor(this.overrideText));
            }
            themedPaint = this.overrideBackgroundPaint;
            this.textPaint = this.overrideTextPaint;
        }
        if (this.invalidatePath) {
            this.invalidatePath = false;
            this.lineWidths.clear();
            StaticLayout staticLayout = this.textLayout;
            int lineCount = staticLayout == null ? 0 : staticLayout.getLineCount();
            int m104dp = AndroidUtilities.m104dp(11);
            int m104dp2 = AndroidUtilities.m104dp(8);
            int i15 = 0;
            for (int i16 = 0; i16 < lineCount; i16++) {
                int ceil = (int) Math.ceil(this.textLayout.getLineWidth(i16));
                if (i16 == 0 || (i13 = i15 - ceil) <= 0 || i13 > m104dp + m104dp2) {
                    i15 = ceil;
                }
                this.lineWidths.add(Integer.valueOf(i15));
            }
            for (int i17 = lineCount - 2; i17 >= 0; i17--) {
                int intValue = this.lineWidths.get(i17).intValue();
                int i18 = i15 - intValue;
                if (i18 <= 0 || i18 > m104dp + m104dp2) {
                    i15 = intValue;
                }
                this.lineWidths.set(i17, Integer.valueOf(i15));
            }
            int m104dp3 = AndroidUtilities.m104dp(4);
            int measuredWidth = getMeasuredWidth() / 2;
            int m104dp4 = AndroidUtilities.m104dp(3);
            int m104dp5 = AndroidUtilities.m104dp(6);
            int i19 = m104dp - m104dp4;
            this.lineHeights.clear();
            this.backgroundPath.reset();
            float f2 = measuredWidth;
            this.backgroundPath.moveTo(f2, m104dp3);
            int i20 = 0;
            int i21 = 0;
            while (i20 < lineCount) {
                int intValue2 = this.lineWidths.get(i20).intValue();
                int lineBottom = this.textLayout.getLineBottom(i20);
                int i22 = m104dp2;
                int i23 = lineCount - 1;
                if (i20 < i23) {
                    paint3 = themedPaint;
                    i4 = this.lineWidths.get(i20 + 1).intValue();
                } else {
                    paint3 = themedPaint;
                    i4 = 0;
                }
                int i24 = lineBottom - i21;
                if (i20 == 0 || intValue2 > i15) {
                    i5 = 3;
                    i24 += AndroidUtilities.m104dp(3);
                } else {
                    i5 = 3;
                }
                if (i20 == i23 || intValue2 > i4) {
                    i24 += AndroidUtilities.m104dp(i5);
                }
                float f3 = (intValue2 / 2.0f) + f2;
                int i25 = (i20 == i23 || intValue2 >= i4 || i20 == 0 || intValue2 >= i15) ? i22 : m104dp5;
                if (i20 == 0 || intValue2 > i15) {
                    f = f2;
                    i6 = lineCount;
                    i7 = measuredWidth;
                    i8 = i15;
                    i9 = lineBottom;
                    this.rect.set((f3 - m104dp4) - m104dp, m104dp3, i19 + f3, (m104dp * 2) + m104dp3);
                    this.backgroundPath.arcTo(this.rect, -90.0f, 90.0f);
                } else {
                    f = f2;
                    if (intValue2 < i15) {
                        i9 = lineBottom;
                        float f4 = i19 + f3;
                        i7 = measuredWidth;
                        i6 = lineCount;
                        i8 = i15;
                        this.rect.set(f4, m104dp3, (i25 * 2) + f4, i12 + m104dp3);
                        this.backgroundPath.arcTo(this.rect, -90.0f, -90.0f);
                    } else {
                        i6 = lineCount;
                        i7 = measuredWidth;
                        i8 = i15;
                        i9 = lineBottom;
                    }
                }
                m104dp3 += i24;
                if (i20 == i23 || intValue2 >= i4) {
                    i10 = 3;
                } else {
                    i10 = 3;
                    m104dp3 -= AndroidUtilities.m104dp(3);
                    i24 -= AndroidUtilities.m104dp(3);
                }
                if (i20 != 0 && intValue2 < i8) {
                    m104dp3 -= AndroidUtilities.m104dp(i10);
                    i24 -= AndroidUtilities.m104dp(i10);
                }
                this.lineHeights.add(Integer.valueOf(i24));
                if (i20 == i23 || intValue2 > i4) {
                    this.rect.set((f3 - m104dp4) - m104dp, m104dp3 - (m104dp * 2), f3 + i19, m104dp3);
                    this.backgroundPath.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, 90.0f);
                } else if (intValue2 < i4) {
                    float f5 = f3 + i19;
                    this.rect.set(f5, m104dp3 - i11, (i25 * 2) + f5, m104dp3);
                    this.backgroundPath.arcTo(this.rect, 180.0f, -90.0f);
                }
                i20++;
                i15 = intValue2;
                m104dp2 = i22;
                themedPaint = paint3;
                f2 = f;
                i21 = i9;
                measuredWidth = i7;
                lineCount = i6;
            }
            paint = themedPaint;
            int i26 = m104dp2;
            int i27 = measuredWidth;
            int i28 = lineCount - 1;
            int i29 = i28;
            while (i29 >= 0) {
                int intValue3 = i29 != 0 ? this.lineWidths.get(i29 - 1).intValue() : 0;
                int intValue4 = this.lineWidths.get(i29).intValue();
                int intValue5 = i29 != i28 ? this.lineWidths.get(i29 + 1).intValue() : 0;
                this.textLayout.getLineBottom(i29);
                float f6 = i27 - (intValue4 / 2);
                int i30 = (i29 == i28 || intValue4 >= intValue5 || i29 == 0 || intValue4 >= intValue3) ? i26 : m104dp5;
                if (i29 == i28 || intValue4 > intValue5) {
                    this.rect.set(f6 - i19, m104dp3 - (m104dp * 2), m104dp4 + f6 + m104dp, m104dp3);
                    this.backgroundPath.arcTo(this.rect, 90.0f, 90.0f);
                } else if (intValue4 < intValue5) {
                    float f7 = f6 - i19;
                    this.rect.set(f7 - (i30 * 2), m104dp3 - i3, f7, m104dp3);
                    this.backgroundPath.arcTo(this.rect, 90.0f, -90.0f);
                }
                m104dp3 -= this.lineHeights.get(i29).intValue();
                if (i29 == 0 || intValue4 > intValue3) {
                    this.rect.set(f6 - i19, m104dp3, f6 + m104dp4 + m104dp, (m104dp * 2) + m104dp3);
                    this.backgroundPath.arcTo(this.rect, 180.0f, 90.0f);
                } else if (intValue4 < intValue3) {
                    float f8 = f6 - i19;
                    this.rect.set(f8 - (i30 * 2), m104dp3, f8, i2 + m104dp3);
                    this.backgroundPath.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, -90.0f);
                }
                i29--;
            }
            this.backgroundPath.close();
        } else {
            paint = themedPaint;
        }
        if (!this.visiblePartSet) {
            this.backgroundHeight = ((ViewGroup) getParent()).getMeasuredHeight();
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, BitmapDescriptorFactory.HUE_RED, this.viewTop + AndroidUtilities.m104dp(4));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, BitmapDescriptorFactory.HUE_RED, this.viewTop + AndroidUtilities.m104dp(4));
        }
        int i31 = -1;
        if (!z || getAlpha() == 1.0f) {
            paint2 = paint;
            i = -1;
        } else {
            i31 = paint.getAlpha();
            i = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
            paint2 = paint;
            paint2.setAlpha((int) (i31 * getAlpha()));
            Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (i * getAlpha()));
        }
        canvas.drawPath(this.backgroundPath, paint2);
        if (hasGradientService()) {
            canvas.drawPath(this.backgroundPath, Theme.chat_actionBackgroundGradientDarkenPaint);
        }
        if (isButtonLayout(this.currentMessageObject)) {
            float width = (getWidth() - this.giftRectSize) / 2.0f;
            float f9 = this.textY + this.textHeight;
            if (isNewStyleButtonLayout()) {
                float m104dp6 = f9 + AndroidUtilities.m104dp(4);
                AndroidUtilities.rectTmp.set(width, m104dp6, this.giftRectSize + width, this.backgroundRectHeight + m104dp6);
            } else {
                float m104dp7 = f9 + AndroidUtilities.m104dp(12);
                RectF rectF = AndroidUtilities.rectTmp;
                int i32 = this.giftRectSize;
                rectF.set(width, m104dp7, i32 + width, i32 + m104dp7 + this.giftPremiumAdditionalHeight);
            }
            if (this.backgroundRect == null) {
                this.backgroundRect = new RectF();
            }
            this.backgroundRect.set(AndroidUtilities.rectTmp);
            canvas.drawRoundRect(this.backgroundRect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), paint2);
            if (hasGradientService()) {
                canvas.drawRoundRect(this.backgroundRect, AndroidUtilities.m104dp(16), AndroidUtilities.m104dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        if (i31 >= 0) {
            paint2.setAlpha(i31);
            Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(i);
        }
    }

    public boolean hasGradientService() {
        Theme.ResourcesProvider resourcesProvider;
        return this.overrideBackgroundPaint == null && ((resourcesProvider = this.themeDelegate) == null ? Theme.hasGradientService() : resourcesProvider.hasGradientService());
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.type != 11) {
            return;
        }
        TLRPC$PhotoSize tLRPC$PhotoSize = null;
        int i = 0;
        int size = messageObject.photoThumbs.size();
        while (true) {
            if (i >= size) {
                break;
            }
            TLRPC$PhotoSize tLRPC$PhotoSize2 = messageObject.photoThumbs.get(i);
            if (tLRPC$PhotoSize2 instanceof TLRPC$TL_photoStrippedSize) {
                tLRPC$PhotoSize = tLRPC$PhotoSize2;
                break;
            }
            i++;
        }
        this.imageReceiver.setImage(this.currentVideoLocation, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForObject(tLRPC$PhotoSize, messageObject.photoThumbsObject), "50_50_b", this.avatarDrawable, 0L, null, messageObject, 1);
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        CharacterStyle[] characterStyleArr;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        MessageObject messageObject = this.currentMessageObject;
        if (TextUtils.isEmpty(this.customText) && messageObject == null) {
            return;
        }
        if (this.accessibilityText == null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(!TextUtils.isEmpty(this.customText) ? this.customText : messageObject.messageText);
            for (final CharacterStyle characterStyle : (CharacterStyle[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ClickableSpan.class)) {
                int spanStart = spannableStringBuilder.getSpanStart(characterStyle);
                int spanEnd = spannableStringBuilder.getSpanEnd(characterStyle);
                spannableStringBuilder.removeSpan(characterStyle);
                spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Cells.ChatActionCell.1
                    {
                        ChatActionCell.this = this;
                    }

                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        if (ChatActionCell.this.delegate != null) {
                            ChatActionCell.this.openLink(characterStyle);
                        }
                    }
                }, spanStart, spanEnd, 33);
            }
            this.accessibilityText = spannableStringBuilder;
        }
        if (Build.VERSION.SDK_INT < 24) {
            accessibilityNodeInfo.setContentDescription(this.accessibilityText.toString());
        } else {
            accessibilityNodeInfo.setText(this.accessibilityText);
        }
        accessibilityNodeInfo.setEnabled(true);
    }

    public void setInvalidateColors(boolean z) {
        if (this.invalidateColors == z) {
            return;
        }
        this.invalidateColors = z;
        invalidate();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.themeDelegate);
    }

    private Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public void drawOutboundsContent(Canvas canvas) {
        canvas.save();
        canvas.translate(this.textXLeft, this.textY);
        StaticLayout staticLayout = this.textLayout;
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, staticLayout != null ? getAdaptiveEmojiColorFilter(staticLayout.getPaint().getColor()) : null);
        canvas.restore();
    }

    private boolean isButtonLayout(MessageObject messageObject) {
        int i;
        return messageObject != null && ((i = messageObject.type) == 18 || i == 25 || isNewStyleButtonLayout());
    }

    private boolean isGiftChannel(MessageObject messageObject) {
        return messageObject != null && messageObject.type == 25;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        super.invalidate(rect);
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        super.invalidate(i, i2, i3, i4);
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i) {
        if (i != this.adaptiveEmojiColor || this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = i;
            this.adaptiveEmojiColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter;
    }
}
