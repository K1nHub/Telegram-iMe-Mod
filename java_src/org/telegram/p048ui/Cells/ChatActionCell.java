package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
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
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3158R;
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
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.Forum.ForumUtilities;
import org.telegram.p048ui.Components.ImageUpdater;
import org.telegram.p048ui.Components.Premium.StarParticlesView;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.RadialProgress2;
import org.telegram.p048ui.Components.RadialProgressView;
import org.telegram.p048ui.Components.TypefaceSpan;
import org.telegram.p048ui.Components.URLSpanNoUnderline;
import org.telegram.p048ui.Components.spoilers.SpoilerEffect;
import org.telegram.p048ui.LaunchActivity;
import org.telegram.p048ui.PhotoViewer;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_documentEmpty;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_messageActionSuggestProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_photoEmpty;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$TL_premiumGiftOption;
import org.telegram.tgnet.TLRPC$TL_stickerPack;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.Cells.ChatActionCell */
/* loaded from: classes5.dex */
public class ChatActionCell extends BaseCell implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate {
    private static Map<Integer, String> monthsToEmoticon;
    private int TAG;
    private SpannableStringBuilder accessibilityText;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private AvatarDrawable avatarDrawable;
    private int backgroundHeight;
    private Path backgroundPath;
    private RectF backroundRect;
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
    private String overrideBackground;
    private Paint overrideBackgroundPaint;
    private String overrideText;
    private TextPaint overrideTextPaint;
    private URLSpan pressedLink;
    private int previousWidth;
    float progressToProgress;
    RadialProgressView progressView;
    private RadialProgress2 radialProgress;
    private RectF rect;
    private View rippleView;
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
    private ThemeDelegate themeDelegate;
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

        void didPressReplyMessage(ChatActionCell chatActionCell, int i);

        BaseFragment getBaseFragment();

        long getDialogId();

        int getTopicId();

        boolean isInPreviewMode();

        void needOpenInviteLink(TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported);

        void needOpenUserProfile(long j);

        void needShowEffectOverlay(ChatActionCell chatActionCell, TLRPC$Document tLRPC$Document, TLRPC$VideoSize tLRPC$VideoSize);
    }

    /* renamed from: org.telegram.ui.Cells.ChatActionCell$ThemeDelegate */
    /* loaded from: classes5.dex */
    public interface ThemeDelegate extends Theme.ResourcesProvider {
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

    static {
        HashMap hashMap = new HashMap();
        monthsToEmoticon = hashMap;
        hashMap.put(1, "1⃣");
        monthsToEmoticon.put(3, "2⃣");
        monthsToEmoticon.put(6, "3⃣");
        monthsToEmoticon.put(12, "4⃣");
        monthsToEmoticon.put(24, "5⃣");
    }

    public ChatActionCell(Context context, boolean z, ThemeDelegate themeDelegate) {
        this(context, z, themeDelegate, UserConfig.selectedAccount);
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

    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        RLottieDrawable lottieAnimation;
        ChatActionCellDelegate chatActionCellDelegate;
        if (!z || (lottieAnimation = this.imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && !messageObject.playedGiftAnimation) {
            messageObject.playedGiftAnimation = true;
            lottieAnimation.setCurrentFrame(0, false);
            AndroidUtilities.runOnUIThread(new ChatActionCell$$ExternalSyntheticLambda2(lottieAnimation));
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

    public ChatActionCell(Context context, boolean z, ThemeDelegate themeDelegate, int i) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.giftButtonRect = new RectF();
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack<>();
        this.lineWidths = new ArrayList<>();
        this.lineHeights = new ArrayList<>();
        this.backgroundPath = new Path();
        this.rect = new RectF();
        this.invalidatePath = true;
        this.invalidateColors = false;
        this.giftTitlePaint = new TextPaint(1);
        this.giftSubtitlePaint = new TextPaint(1);
        this.radialProgress = new RadialProgress2(this);
        this.giftStickerDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda3
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
        this.canDrawInParent = z;
        this.themeDelegate = themeDelegate;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setRoundRadius(AndroidUtilities.roundMessageSize / 2);
        this.avatarDrawable = new AvatarDrawable();
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.giftTitlePaint.setTextSize(TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics()));
        this.giftSubtitlePaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 7, AndroidUtilities.m50dp(16)));
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
        drawable.f1775k3 = 0.98f;
        drawable.f1774k2 = 0.98f;
        drawable.f1773k1 = 0.98f;
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
            formatDateChat = LocaleController.getString("MessageScheduledUntilOnline", C3158R.string.MessageScheduledUntilOnline);
        } else {
            formatDateChat = LocaleController.formatString("MessageScheduledOn", C3158R.string.MessageScheduledOn, LocaleController.formatDateChat(i));
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

    public void setOverrideColor(String str, String str2) {
        this.overrideBackground = str;
        this.overrideText = str2;
    }

    public void setMessageObject(MessageObject messageObject) {
        setMessageObject(messageObject, false);
    }

    public void setMessageObject(MessageObject messageObject, boolean z) {
        TLRPC$PhotoSize tLRPC$PhotoSize;
        TLRPC$Document tLRPC$Document;
        StaticLayout staticLayout;
        if (this.currentMessageObject != messageObject || (!((staticLayout = this.textLayout) == null || TextUtils.equals(staticLayout.getText(), messageObject.messageText)) || (!(this.hasReplyMessage || messageObject.replyMessageObject == null) || z || messageObject.type == 21))) {
            if (BuildVars.DEBUG_PRIVATE_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
                FileLog.m45e(new IllegalStateException("Wrong thread!!!"));
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
            int i = messageObject.type;
            if (i == 21) {
                this.imageReceiver.setRoundRadius((int) (this.stickerSize / 2.0f));
                this.imageReceiver.setAllowStartLottieAnimation(true);
                this.imageReceiver.setDelegate(null);
                TLRPC$TL_messageActionSuggestProfilePhoto tLRPC$TL_messageActionSuggestProfilePhoto = (TLRPC$TL_messageActionSuggestProfilePhoto) messageObject.messageOwner.action;
                TLRPC$VideoSize closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(tLRPC$TL_messageActionSuggestProfilePhoto.photo.video_sizes, 1000);
                ArrayList<TLRPC$VideoSize> arrayList = tLRPC$TL_messageActionSuggestProfilePhoto.photo.video_sizes;
                ImageLocation forPhoto = (arrayList == null || arrayList.isEmpty()) ? null : ImageLocation.getForPhoto(closestVideoSizeWithSize, tLRPC$TL_messageActionSuggestProfilePhoto.photo);
                TLRPC$Photo tLRPC$Photo = messageObject.messageOwner.action.photo;
                if (messageObject.strippedThumb == null) {
                    int size = messageObject.photoThumbs.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        TLRPC$PhotoSize tLRPC$PhotoSize3 = messageObject.photoThumbs.get(i2);
                        if (tLRPC$PhotoSize3 instanceof TLRPC$TL_photoStrippedSize) {
                            tLRPC$PhotoSize2 = tLRPC$PhotoSize3;
                            break;
                        }
                        i2++;
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
                if (imageUpdater == null || imageUpdater.getCurrentImageProgress() == 1.0f) {
                    this.radialProgress.setProgress(1.0f, !z2);
                    this.radialProgress.setIcon(4, !z2, !z2);
                } else {
                    this.radialProgress.setIcon(3, !z2, !z2);
                }
            } else if (i == 18) {
                this.imageReceiver.setRoundRadius(0);
                String str = UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack;
                if (str == null) {
                    MediaDataController.getInstance(this.currentAccount).checkPremiumGiftStickers();
                    return;
                }
                TLRPC$TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(str);
                if (stickerSetByName == null) {
                    stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(str);
                }
                TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = stickerSetByName;
                if (tLRPC$TL_messages_stickerSet != null) {
                    String str2 = monthsToEmoticon.get(Integer.valueOf(messageObject.messageOwner.action.months));
                    Iterator<TLRPC$TL_stickerPack> it = tLRPC$TL_messages_stickerSet.packs.iterator();
                    tLRPC$Document = null;
                    while (it.hasNext()) {
                        TLRPC$TL_stickerPack next = it.next();
                        if (Objects.equals(next.emoticon, str2)) {
                            Iterator<Long> it2 = next.documents.iterator();
                            while (it2.hasNext()) {
                                long longValue = it2.next().longValue();
                                Iterator<TLRPC$Document> it3 = tLRPC$TL_messages_stickerSet.documents.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        break;
                                    }
                                    TLRPC$Document next2 = it3.next();
                                    if (next2.f1502id == longValue) {
                                        tLRPC$Document = next2;
                                        break;
                                    }
                                }
                                if (tLRPC$Document != null) {
                                    break;
                                }
                            }
                        }
                        if (tLRPC$Document != null) {
                            break;
                        }
                    }
                    if (tLRPC$Document == null && !tLRPC$TL_messages_stickerSet.documents.isEmpty()) {
                        tLRPC$Document = tLRPC$TL_messages_stickerSet.documents.get(0);
                    }
                } else {
                    tLRPC$Document = null;
                }
                this.forceWasUnread = messageObject.wasUnread;
                this.giftSticker = tLRPC$Document;
                if (tLRPC$Document != null) {
                    this.imageReceiver.setAllowStartLottieAnimation(false);
                    this.imageReceiver.setDelegate(this.giftStickerDelegate);
                    this.giftEffectAnimation = null;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= tLRPC$Document.video_thumbs.size()) {
                            break;
                        } else if ("f".equals(tLRPC$Document.video_thumbs.get(i3).type)) {
                            this.giftEffectAnimation = tLRPC$Document.video_thumbs.get(i3);
                            break;
                        } else {
                            i3++;
                        }
                    }
                    SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$Document.thumbs, "emptyListPlaceholder", 0.2f);
                    if (svgThumb != null) {
                        svgThumb.overrideWidthAndHeight(512, 512);
                    }
                    this.imageReceiver.setAutoRepeat(0);
                    this.imageReceiver.setImage(ImageLocation.getForDocument(tLRPC$Document), messageObject.getId() + "_130_130", svgThumb, "tgs", tLRPC$TL_messages_stickerSet, 1);
                } else {
                    MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(str, false, tLRPC$TL_messages_stickerSet == null);
                }
            } else if (i == 11) {
                this.imageReceiver.setAllowStartLottieAnimation(true);
                this.imageReceiver.setDelegate(null);
                this.imageReceiver.setRoundRadius(AndroidUtilities.roundMessageSize / 2);
                this.imageReceiver.setAutoRepeatCount(1);
                this.avatarDrawable.setInfo(messageObject.getDialogId(), null, null);
                if (messageObject.messageOwner.action instanceof TLRPC$TL_messageActionUserUpdatedPhoto) {
                    this.imageReceiver.setImage(null, null, this.avatarDrawable, null, messageObject, 0);
                } else {
                    if (messageObject.strippedThumb == null) {
                        int size2 = messageObject.photoThumbs.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            tLRPC$PhotoSize = messageObject.photoThumbs.get(i4);
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
            this.rippleView.setVisibility(isButtonLayout(messageObject) ? 0 : 8);
            ForumUtilities.applyTopicToMessage(messageObject);
            requestLayout();
        }
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

    @Override // org.telegram.p048ui.Cells.BaseCell
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

    /* JADX WARN: Removed duplicated region for block: B:215:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:245:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatActionCell.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private void openPremiumGiftPreview() {
        final TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption = new TLRPC$TL_premiumGiftOption();
        TLRPC$MessageAction tLRPC$MessageAction = this.currentMessageObject.messageOwner.action;
        tLRPC$TL_premiumGiftOption.amount = tLRPC$MessageAction.amount;
        tLRPC$TL_premiumGiftOption.months = tLRPC$MessageAction.months;
        tLRPC$TL_premiumGiftOption.currency = tLRPC$MessageAction.currency;
        if (this.delegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ChatActionCell.this.lambda$openPremiumGiftPreview$1(tLRPC$TL_premiumGiftOption);
                }
            });
        }
    }

    public /* synthetic */ void lambda$openPremiumGiftPreview$1(TLRPC$TL_premiumGiftOption tLRPC$TL_premiumGiftOption) {
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
        int m50dp = i - AndroidUtilities.m50dp(30);
        if (m50dp < 0) {
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
        this.textLayout = new StaticLayout(charSequence, textPaint2, m50dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.spoilersPool.addAll(this.spoilers);
        this.spoilers.clear();
        if (charSequence instanceof Spannable) {
            SpoilerEffect.addSpoilers(this, this.textLayout, (Spannable) charSequence, this.spoilersPool, this.spoilers);
        }
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        this.textHeight = 0;
        this.textWidth = 0;
        try {
            int lineCount = this.textLayout.getLineCount();
            for (int i2 = 0; i2 < lineCount; i2++) {
                try {
                    float lineWidth = this.textLayout.getLineWidth(i2);
                    float f = m50dp;
                    if (lineWidth > f) {
                        lineWidth = f;
                    }
                    this.textHeight = (int) Math.max(this.textHeight, Math.ceil(this.textLayout.getLineBottom(i2)));
                    this.textWidth = (int) Math.max(this.textWidth, Math.ceil(lineWidth));
                } catch (Exception e) {
                    FileLog.m45e(e);
                    return;
                }
            }
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
        this.textX = (i - this.textWidth) / 2;
        this.textY = AndroidUtilities.m50dp(7);
        this.textXLeft = (i - this.textLayout.getWidth()) / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x00ad  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r12, int r13) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatActionCell.onMeasure(int, int):void");
    }

    private void buildLayout() {
        CharSequence charSequence;
        String formatString;
        String string;
        ArrayList<TLRPC$VideoSize> arrayList;
        TLRPC$Photo tLRPC$Photo;
        ArrayList<TLRPC$VideoSize> arrayList2;
        TLRPC$MessageMedia tLRPC$MessageMedia;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            charSequence = (this.delegate.getTopicId() == 0 && MessageObject.isTopicActionMessage(messageObject)) ? ForumUtilities.createActionTextWithTopic(MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-messageObject.getDialogId(), MessageObject.getTopicId(messageObject.messageOwner, true)), messageObject) : null;
            if (charSequence == null) {
                TLRPC$Message tLRPC$Message = messageObject.messageOwner;
                if (tLRPC$Message != null && (tLRPC$MessageMedia = tLRPC$Message.media) != null && tLRPC$MessageMedia.ttl_seconds != 0) {
                    if (tLRPC$MessageMedia.photo instanceof TLRPC$TL_photoEmpty) {
                        charSequence = LocaleController.getString("AttachPhotoExpired", C3158R.string.AttachPhotoExpired);
                    } else if (tLRPC$MessageMedia.document instanceof TLRPC$TL_documentEmpty) {
                        charSequence = LocaleController.getString("AttachVideoExpired", C3158R.string.AttachVideoExpired);
                    } else {
                        charSequence = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
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
                this.imageReceiver.setImageCoords((this.previousWidth - AndroidUtilities.roundMessageSize) / 2.0f, this.textHeight + AndroidUtilities.m50dp(19), i2, i2);
            } else if (i == 18) {
                createGiftPremiumLayouts(LocaleController.getString(C3158R.string.ActionGiftPremiumTitle), LocaleController.formatString(C3158R.string.ActionGiftPremiumSubtitle, LocaleController.formatPluralString("Months", messageObject.messageOwner.action.months, new Object[0])), LocaleController.getString(C3158R.string.ActionGiftPremiumView), this.giftRectSize);
            } else if (i == 21) {
                TLRPC$TL_messageActionSuggestProfilePhoto tLRPC$TL_messageActionSuggestProfilePhoto = (TLRPC$TL_messageActionSuggestProfilePhoto) messageObject.messageOwner.action;
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId()));
                boolean z = tLRPC$TL_messageActionSuggestProfilePhoto.video || !((tLRPC$Photo = tLRPC$TL_messageActionSuggestProfilePhoto.photo) == null || (arrayList2 = tLRPC$Photo.video_sizes) == null || arrayList2.isEmpty());
                if (user.f1633id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                    TLRPC$User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId()));
                    if (z) {
                        formatString = LocaleController.formatString("ActionSuggestVideoFromYouDescription", C3158R.string.ActionSuggestVideoFromYouDescription, user2.first_name);
                    } else {
                        formatString = LocaleController.formatString("ActionSuggestPhotoFromYouDescription", C3158R.string.ActionSuggestPhotoFromYouDescription, user2.first_name);
                    }
                } else if (z) {
                    formatString = LocaleController.formatString("ActionSuggestVideoToYouDescription", C3158R.string.ActionSuggestVideoToYouDescription, user.first_name);
                } else {
                    formatString = LocaleController.formatString("ActionSuggestPhotoToYouDescription", C3158R.string.ActionSuggestPhotoToYouDescription, user.first_name);
                }
                if (tLRPC$TL_messageActionSuggestProfilePhoto.video || ((arrayList = tLRPC$TL_messageActionSuggestProfilePhoto.photo.video_sizes) != null && !arrayList.isEmpty())) {
                    string = LocaleController.getString("ViewVideoAction", C3158R.string.ViewVideoAction);
                } else {
                    string = LocaleController.getString("ViewPhotoAction", C3158R.string.ViewPhotoAction);
                }
                createGiftPremiumLayouts(null, formatString, string, this.giftRectSize);
                this.textLayout = null;
                this.textHeight = 0;
                this.textY = 0;
            }
        }
    }

    private void createGiftPremiumLayouts(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        int m50dp = i - AndroidUtilities.m50dp(16);
        if (charSequence != null) {
            SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(charSequence);
            valueOf.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, valueOf.length(), 33);
            this.giftPremiumTitleLayout = new StaticLayout(valueOf, this.giftTitlePaint, m50dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        } else {
            this.giftPremiumTitleLayout = null;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 21) {
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.m50dp(13));
        } else {
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.m50dp(15));
        }
        this.giftPremiumSubtitleLayout = new StaticLayout(charSequence2, this.giftSubtitlePaint, m50dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        SpannableStringBuilder valueOf2 = SpannableStringBuilder.valueOf(charSequence3);
        valueOf2.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, valueOf2.length(), 33);
        StaticLayout staticLayout = new StaticLayout(valueOf2, (TextPaint) getThemedPaint("paintChatActionText"), m50dp, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.giftPremiumButtonLayout = staticLayout;
        this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
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

    /* JADX WARN: Removed duplicated region for block: B:193:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:203:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Cells.ChatActionCell.onDraw(android.graphics.Canvas):void");
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
        String str = this.overrideBackground;
        if (str != null) {
            int themedColor = getThemedColor(str);
            if (this.overrideBackgroundPaint == null) {
                Paint paint4 = new Paint(1);
                this.overrideBackgroundPaint = paint4;
                paint4.setColor(themedColor);
                TextPaint textPaint = new TextPaint(1);
                this.overrideTextPaint = textPaint;
                textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.overrideTextPaint.setTextSize(AndroidUtilities.m50dp(Math.max(16, SharedConfig.fontSize) - 2));
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
            int m50dp = AndroidUtilities.m50dp(11);
            int m50dp2 = AndroidUtilities.m50dp(8);
            int i14 = 0;
            for (int i15 = 0; i15 < lineCount; i15++) {
                int ceil = (int) Math.ceil(this.textLayout.getLineWidth(i15));
                if (i15 == 0 || (i13 = i14 - ceil) <= 0 || i13 > m50dp + m50dp2) {
                    i14 = ceil;
                }
                this.lineWidths.add(Integer.valueOf(i14));
            }
            for (int i16 = lineCount - 2; i16 >= 0; i16--) {
                int intValue = this.lineWidths.get(i16).intValue();
                int i17 = i14 - intValue;
                if (i17 <= 0 || i17 > m50dp + m50dp2) {
                    i14 = intValue;
                }
                this.lineWidths.set(i16, Integer.valueOf(i14));
            }
            int m50dp3 = AndroidUtilities.m50dp(4);
            int measuredWidth = getMeasuredWidth() / 2;
            int m50dp4 = AndroidUtilities.m50dp(3);
            int m50dp5 = AndroidUtilities.m50dp(6);
            int i18 = m50dp - m50dp4;
            this.lineHeights.clear();
            this.backgroundPath.reset();
            float f2 = measuredWidth;
            this.backgroundPath.moveTo(f2, m50dp3);
            int i19 = 0;
            int i20 = 0;
            while (i19 < lineCount) {
                int intValue2 = this.lineWidths.get(i19).intValue();
                int lineBottom = this.textLayout.getLineBottom(i19);
                int i21 = m50dp2;
                int i22 = lineCount - 1;
                if (i19 < i22) {
                    paint3 = themedPaint;
                    i4 = this.lineWidths.get(i19 + 1).intValue();
                } else {
                    paint3 = themedPaint;
                    i4 = 0;
                }
                int i23 = lineBottom - i20;
                if (i19 == 0 || intValue2 > i14) {
                    i5 = 3;
                    i23 += AndroidUtilities.m50dp(3);
                } else {
                    i5 = 3;
                }
                if (i19 == i22 || intValue2 > i4) {
                    i23 += AndroidUtilities.m50dp(i5);
                }
                float f3 = (intValue2 / 2.0f) + f2;
                int i24 = (i19 == i22 || intValue2 >= i4 || i19 == 0 || intValue2 >= i14) ? i21 : m50dp5;
                if (i19 == 0 || intValue2 > i14) {
                    f = f2;
                    i6 = lineCount;
                    i7 = measuredWidth;
                    i8 = i14;
                    i9 = lineBottom;
                    this.rect.set((f3 - m50dp4) - m50dp, m50dp3, i18 + f3, (m50dp * 2) + m50dp3);
                    this.backgroundPath.arcTo(this.rect, -90.0f, 90.0f);
                } else {
                    f = f2;
                    if (intValue2 < i14) {
                        i9 = lineBottom;
                        float f4 = i18 + f3;
                        i7 = measuredWidth;
                        i6 = lineCount;
                        i8 = i14;
                        this.rect.set(f4, m50dp3, (i24 * 2) + f4, i12 + m50dp3);
                        this.backgroundPath.arcTo(this.rect, -90.0f, -90.0f);
                    } else {
                        i6 = lineCount;
                        i7 = measuredWidth;
                        i8 = i14;
                        i9 = lineBottom;
                    }
                }
                m50dp3 += i23;
                if (i19 == i22 || intValue2 >= i4) {
                    i10 = 3;
                } else {
                    i10 = 3;
                    m50dp3 -= AndroidUtilities.m50dp(3);
                    i23 -= AndroidUtilities.m50dp(3);
                }
                if (i19 != 0 && intValue2 < i8) {
                    m50dp3 -= AndroidUtilities.m50dp(i10);
                    i23 -= AndroidUtilities.m50dp(i10);
                }
                this.lineHeights.add(Integer.valueOf(i23));
                if (i19 == i22 || intValue2 > i4) {
                    this.rect.set((f3 - m50dp4) - m50dp, m50dp3 - (m50dp * 2), f3 + i18, m50dp3);
                    this.backgroundPath.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, 90.0f);
                } else if (intValue2 < i4) {
                    float f5 = f3 + i18;
                    this.rect.set(f5, m50dp3 - i11, (i24 * 2) + f5, m50dp3);
                    this.backgroundPath.arcTo(this.rect, 180.0f, -90.0f);
                }
                i19++;
                i14 = intValue2;
                m50dp2 = i21;
                themedPaint = paint3;
                f2 = f;
                i20 = i9;
                measuredWidth = i7;
                lineCount = i6;
            }
            paint = themedPaint;
            int i25 = m50dp2;
            int i26 = measuredWidth;
            int i27 = lineCount - 1;
            int i28 = i27;
            while (i28 >= 0) {
                int intValue3 = i28 != 0 ? this.lineWidths.get(i28 - 1).intValue() : 0;
                int intValue4 = this.lineWidths.get(i28).intValue();
                int intValue5 = i28 != i27 ? this.lineWidths.get(i28 + 1).intValue() : 0;
                this.textLayout.getLineBottom(i28);
                float f6 = i26 - (intValue4 / 2);
                int i29 = (i28 == i27 || intValue4 >= intValue5 || i28 == 0 || intValue4 >= intValue3) ? i25 : m50dp5;
                if (i28 == i27 || intValue4 > intValue5) {
                    this.rect.set(f6 - i18, m50dp3 - (m50dp * 2), m50dp4 + f6 + m50dp, m50dp3);
                    this.backgroundPath.arcTo(this.rect, 90.0f, 90.0f);
                } else if (intValue4 < intValue5) {
                    float f7 = f6 - i18;
                    this.rect.set(f7 - (i29 * 2), m50dp3 - i3, f7, m50dp3);
                    this.backgroundPath.arcTo(this.rect, 90.0f, -90.0f);
                }
                m50dp3 -= this.lineHeights.get(i28).intValue();
                if (i28 == 0 || intValue4 > intValue3) {
                    this.rect.set(f6 - i18, m50dp3, f6 + m50dp4 + m50dp, (m50dp * 2) + m50dp3);
                    this.backgroundPath.arcTo(this.rect, 180.0f, 90.0f);
                } else if (intValue4 < intValue3) {
                    float f8 = f6 - i18;
                    this.rect.set(f8 - (i29 * 2), m50dp3, f8, i2 + m50dp3);
                    this.backgroundPath.arcTo(this.rect, BitmapDescriptorFactory.HUE_RED, -90.0f);
                }
                i28--;
            }
            this.backgroundPath.close();
        } else {
            paint = themedPaint;
        }
        if (!this.visiblePartSet) {
            this.backgroundHeight = ((ViewGroup) getParent()).getMeasuredHeight();
        }
        ThemeDelegate themeDelegate = this.themeDelegate;
        if (themeDelegate != null) {
            themeDelegate.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, BitmapDescriptorFactory.HUE_RED, this.viewTop + AndroidUtilities.m50dp(4));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, BitmapDescriptorFactory.HUE_RED, this.viewTop + AndroidUtilities.m50dp(4));
        }
        int i30 = -1;
        if (!z || getAlpha() == 1.0f) {
            paint2 = paint;
            i = -1;
        } else {
            i30 = paint.getAlpha();
            i = Theme.chat_actionBackgroundGradientDarkenPaint.getAlpha();
            paint2 = paint;
            paint2.setAlpha((int) (i30 * getAlpha()));
            Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha((int) (i * getAlpha()));
        }
        canvas.drawPath(this.backgroundPath, paint2);
        if (hasGradientService()) {
            canvas.drawPath(this.backgroundPath, Theme.chat_actionBackgroundGradientDarkenPaint);
        }
        if (isButtonLayout(this.currentMessageObject)) {
            float width = (getWidth() - this.giftRectSize) / 2.0f;
            float m50dp6 = this.textY + this.textHeight + AndroidUtilities.m50dp(12);
            RectF rectF = AndroidUtilities.rectTmp;
            int i31 = this.giftRectSize;
            rectF.set(width, m50dp6, i31 + width, i31 + m50dp6 + this.giftPremiumAdditionalHeight);
            if (this.backroundRect == null) {
                this.backroundRect = new RectF();
            }
            this.backroundRect.set(rectF);
            canvas.drawRoundRect(this.backroundRect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), paint2);
            if (hasGradientService()) {
                canvas.drawRoundRect(this.backroundRect, AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), Theme.chat_actionBackgroundGradientDarkenPaint);
            }
        }
        if (i30 >= 0) {
            paint2.setAlpha(i30);
            Theme.chat_actionBackgroundGradientDarkenPaint.setAlpha(i);
        }
    }

    public boolean hasGradientService() {
        ThemeDelegate themeDelegate;
        return this.overrideBackgroundPaint == null && ((themeDelegate = this.themeDelegate) == null ? Theme.hasGradientService() : themeDelegate.hasGradientService());
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

    private int getThemedColor(String str) {
        ThemeDelegate themeDelegate = this.themeDelegate;
        Integer color = themeDelegate != null ? themeDelegate.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }

    private Paint getThemedPaint(String str) {
        ThemeDelegate themeDelegate = this.themeDelegate;
        Paint paint = themeDelegate != null ? themeDelegate.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public void drawOutboundsContent(Canvas canvas) {
        canvas.save();
        canvas.translate(this.textXLeft, this.textY);
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, this.textLayout, this.animatedEmojiStack, BitmapDescriptorFactory.HUE_RED, this.spoilers, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        canvas.restore();
    }

    private boolean isButtonLayout(MessageObject messageObject) {
        int i;
        return messageObject != null && ((i = messageObject.type) == 18 || i == 21);
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
}
