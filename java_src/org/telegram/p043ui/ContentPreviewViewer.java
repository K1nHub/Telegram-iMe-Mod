package org.telegram.p043ui;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.p024ui.view.KiklikoGifView;
import com.iMe.manager.common.MediaEditManager;
import com.iMe.p031ui.custom.nft.NftRootView;
import com.iMe.storage.data.network.model.response.kikliko.GifResponse;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ContextLinkCell;
import org.telegram.p043ui.Cells.StickerCell;
import org.telegram.p043ui.Cells.StickerEmojiCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiPacksAlert;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SuggestEmojiView;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.ContentPreviewViewer;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker;
import org.telegram.tgnet.TLRPC$TL_webDocument;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.TLRPC$WebDocument;
/* renamed from: org.telegram.ui.ContentPreviewViewer */
/* loaded from: classes5.dex */
public class ContentPreviewViewer {
    private static volatile ContentPreviewViewer Instance;
    private static TextPaint textPaint;
    private float blurProgress;
    private Bitmap blurrBitmap;
    private boolean clearsInputField;
    private boolean closeOnDismiss;
    private FrameLayoutDrawer containerView;
    private int currentAccount;
    private int currentContentType;
    private TLRPC$Document currentDocument;
    private float currentMoveY;
    private float currentMoveYProgress;
    private View currentPreviewCell;
    private String currentQuery;
    private TLRPC$InputStickerSet currentStickerSet;
    private ContentPreviewViewerDelegate delegate;
    private boolean drawEffect;
    private float finalMoveY;
    private SendMessagesHelper.ImportingSticker importingSticker;
    private TLRPC$BotInlineResult inlineResult;
    private boolean isKiklikoVideoPrepared;
    private boolean isRecentSticker;
    private GifResponse kiklikoGif;
    private AspectRatioFrameLayout kiklikoPlayerLayout;
    private File kiklikoVideoFile;
    private VideoPlayer kiklikoVideoPlayer;
    private TextureView kiklikoVideoTextureView;
    private WindowInsets lastInsets;
    private float lastTouchY;
    private long lastUpdateTime;
    private MediaEditManager mediaEditManager;
    private boolean menuVisible;
    private NftToken nftToken;
    private Runnable openPreviewRunnable;
    private Activity parentActivity;
    private Object parentObject;
    ActionBarPopupWindow popupWindow;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean showInstantly;
    private float showProgress;
    private Drawable slideUpDrawable;
    private float startMoveY;
    private int startX;
    private int startY;
    private StaticLayout stickerEmojiLayout;
    private ActionBarMenuSubItem toggleAutoPreviewItem;
    private UnlockPremiumView unlockPremiumView;
    VibrationEffect vibrationEffect;
    private WindowManager.LayoutParams windowLayoutParams;
    private FrameLayout windowView;
    private float moveY = BitmapDescriptorFactory.HUE_RED;
    private ColorDrawable backgroundDrawable = new ColorDrawable(1895825408);
    private ImageReceiver centerImage = new ImageReceiver();
    private ImageReceiver effectImage = new ImageReceiver();
    private boolean isVisible = false;
    private int keyboardHeight = AndroidUtilities.m54dp(200);
    private Paint paint = new Paint(1);
    private Runnable showSheetRunnable = new RunnableC55862();

    /* renamed from: org.telegram.ui.ContentPreviewViewer$ContentPreviewViewerDelegate */
    /* loaded from: classes5.dex */
    public interface ContentPreviewViewerDelegate {

        /* renamed from: org.telegram.ui.ContentPreviewViewer$ContentPreviewViewerDelegate$-CC */
        /* loaded from: classes5.dex */
        public final /* synthetic */ class CC {
            public static boolean $default$can(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static Boolean $default$canSetAsStatus(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document) {
                return null;
            }

            public static void $default$copyEmoji(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document) {
            }

            public static void $default$editAnimatedSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
            }

            public static void $default$editMedia(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document, boolean z) {
            }

            public static String $default$getQuery(ContentPreviewViewerDelegate contentPreviewViewerDelegate, boolean z) {
                return null;
            }

            public static void $default$gifAddedOrDeleted(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
            }

            public static boolean $default$needCopy(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static boolean $default$needMenu(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static boolean $default$needOpen(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return true;
            }

            public static boolean $default$needRemove(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
                return false;
            }

            public static boolean $default$needRemoveFromRecent(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document) {
                return false;
            }

            public static void $default$openKiklikoReport(ContentPreviewViewerDelegate contentPreviewViewerDelegate, String str) {
            }

            public static void $default$remove(ContentPreviewViewerDelegate contentPreviewViewerDelegate, SendMessagesHelper.ImportingSticker importingSticker) {
            }

            public static void $default$removeFromRecent(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document) {
            }

            public static void $default$resetTouch(ContentPreviewViewerDelegate contentPreviewViewerDelegate) {
            }

            public static void $default$sendEmoji(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document) {
            }

            public static void $default$sendGif(ContentPreviewViewerDelegate contentPreviewViewerDelegate, Object obj, Object obj2, boolean z, int i) {
            }

            public static void $default$sendKiklikoVideo(ContentPreviewViewerDelegate contentPreviewViewerDelegate, String str, String str2, boolean z, boolean z2, int i) {
            }

            public static void $default$sendSticker(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document, String str, Object obj, boolean z, int i) {
            }

            public static void $default$setAsEmojiStatus(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document, Integer num) {
            }

            public static void $default$setKiklikoAvatar(ContentPreviewViewerDelegate contentPreviewViewerDelegate, String str) {
            }
        }

        boolean can();

        boolean canSchedule();

        Boolean canSetAsStatus(TLRPC$Document tLRPC$Document);

        void copyEmoji(TLRPC$Document tLRPC$Document);

        void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z);

        void editMedia(TLRPC$Document tLRPC$Document, boolean z);

        long getDialogId();

        String getQuery(boolean z);

        void gifAddedOrDeleted();

        boolean isInScheduleMode();

        boolean needCopy();

        boolean needMenu();

        boolean needOpen();

        boolean needRemove();

        boolean needRemoveFromRecent(TLRPC$Document tLRPC$Document);

        boolean needSend(int i);

        void openKiklikoReport(String str);

        void openSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, boolean z);

        void remove(SendMessagesHelper.ImportingSticker importingSticker);

        void removeFromRecent(TLRPC$Document tLRPC$Document);

        void resetTouch();

        void sendEmoji(TLRPC$Document tLRPC$Document);

        void sendGif(Object obj, Object obj2, boolean z, int i);

        void sendKiklikoVideo(String str, String str2, boolean z, boolean z2, int i);

        void sendSticker(TLRPC$Document tLRPC$Document, String str, Object obj, boolean z, int i);

        void setAsEmojiStatus(TLRPC$Document tLRPC$Document, Integer num);

        void setKiklikoAvatar(String str);
    }

    public static ContentPreviewViewer getInstanceForNft(MediaEditManager mediaEditManager) {
        ContentPreviewViewer contentPreviewViewer = getInstance();
        contentPreviewViewer.mediaEditManager = mediaEditManager;
        return contentPreviewViewer;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent, RecyclerListView recyclerListView, int i, ContentPreviewViewerDelegate contentPreviewViewerDelegate, Theme.ResourcesProvider resourcesProvider) {
        return onInterceptTouchEvent(motionEvent, recyclerListView, i, contentPreviewViewerDelegate, resourcesProvider, null);
    }

    public void open(TLRPC$Document tLRPC$Document, SendMessagesHelper.ImportingSticker importingSticker, String str, String str2, TLRPC$BotInlineResult tLRPC$BotInlineResult, int i, boolean z, Object obj, Theme.ResourcesProvider resourcesProvider) {
        open(tLRPC$Document, importingSticker, str, str2, tLRPC$BotInlineResult, i, z, obj, resourcesProvider, false, null);
    }

    public void showInstantly(View view, int i, ContentPreviewViewerDelegate contentPreviewViewerDelegate, Theme.ResourcesProvider resourcesProvider) {
        onInterceptTouchEvent(MotionEvent.obtain(0L, 0L, 0, view.getLeft() + (view.getWidth() / 2.0f), view.getTop() + (view.getHeight() / 2.0f), 0), null, i, contentPreviewViewerDelegate, resourcesProvider, view);
    }

    public void onPause() {
        VideoPlayer videoPlayer = this.kiklikoVideoPlayer;
        if (videoPlayer != null) {
            videoPlayer.pause();
        }
    }

    public void onResume() {
        VideoPlayer videoPlayer = this.kiklikoVideoPlayer;
        if (videoPlayer != null) {
            videoPlayer.play();
        }
    }

    public void updateToggleAutoPreviewItem() {
        boolean z = this.currentContentType == 0 ? SharedConfig.isSendingStickerConfirmationEnabled : SharedConfig.isSendingGifConfirmationEnabled;
        this.toggleAutoPreviewItem.setTextAndIcon(LocaleController.getInternalString(z ? C3417R.string.content_preview_disable_preview : C3417R.string.content_preview_enable_preview), z ? C3417R.C3419drawable.fork_wallet_crypto_cipher_eye : C3417R.C3419drawable.fork_filter_icon_eye);
    }

    private void releasePlayer() {
        this.isKiklikoVideoPrepared = false;
        VideoPlayer videoPlayer = this.kiklikoVideoPlayer;
        if (videoPlayer != null) {
            videoPlayer.releasePlayer(false);
            this.kiklikoVideoPlayer = null;
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = this.kiklikoPlayerLayout;
        if (aspectRatioFrameLayout != null) {
            this.containerView.removeView(aspectRatioFrameLayout);
            this.kiklikoPlayerLayout = null;
        }
        if (this.kiklikoVideoTextureView != null) {
            this.kiklikoVideoTextureView = null;
        }
    }

    private void preparePlayer() {
        if (this.kiklikoVideoTextureView == null) {
            AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(this.parentActivity);
            this.kiklikoPlayerLayout = aspectRatioFrameLayout;
            this.containerView.addView(aspectRatioFrameLayout, LayoutHelper.createFrame(-1, -1, 17, 20, 0, 20, 0));
            TextureView textureView = new TextureView(this.parentActivity);
            this.kiklikoVideoTextureView = textureView;
            textureView.setOpaque(false);
            this.kiklikoPlayerLayout.addView(this.kiklikoVideoTextureView, LayoutHelper.createFrame(-1, -1, 17));
        }
        if (this.kiklikoVideoPlayer == null) {
            VideoPlayer videoPlayer = new VideoPlayer();
            this.kiklikoVideoPlayer = videoPlayer;
            videoPlayer.setTextureView(this.kiklikoVideoTextureView);
            this.kiklikoVideoPlayer.setLooping(true);
            this.kiklikoVideoPlayer.setDelegate(new VideoPlayer.VideoPlayerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer.1
                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onError(VideoPlayer videoPlayer2, Exception exc) {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onRenderedFirstFrame() {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onRenderedFirstFrame(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekFinished(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekFinished(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public /* synthetic */ void onSeekStarted(AnalyticsListener.EventTime eventTime) {
                    VideoPlayer.VideoPlayerDelegate.CC.$default$onSeekStarted(this, eventTime);
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public boolean onSurfaceDestroyed(SurfaceTexture surfaceTexture) {
                    return false;
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onVideoSizeChanged(int i, int i2, int i3, float f) {
                }

                {
                    ContentPreviewViewer.this = this;
                }

                @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
                public void onStateChanged(boolean z, int i) {
                    if (i != 3 || ContentPreviewViewer.this.isKiklikoVideoPrepared) {
                        return;
                    }
                    ContentPreviewViewer.this.isKiklikoVideoPrepared = true;
                    ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                    contentPreviewViewer.open(null, null, null, null, null, IdFabric$CustomType.CONTENT_TYPE_KIKLIKO, false, null, contentPreviewViewer.resourcesProvider, true, ContentPreviewViewer.this.kiklikoVideoFile.getAbsolutePath());
                }
            });
        }
        int[] iArr = new int[11];
        AnimatedFileDrawable.getVideoInfo(this.kiklikoVideoFile.getAbsolutePath(), iArr);
        this.kiklikoPlayerLayout.setAspectRatio(iArr[1] / iArr[2], 0);
        this.kiklikoVideoPlayer.preparePlayer(Uri.fromFile(this.kiklikoVideoFile), "other");
        this.kiklikoVideoPlayer.setPlayWhenReady(true);
    }

    public void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
        if (this.delegate == null) {
            return;
        }
        if (this.currentContentType == 0 && MessageObject.isAnimatedStickerDocument(tLRPC$Document, true)) {
            this.delegate.editAnimatedSticker(tLRPC$Document, this.centerImage.getLottieAnimation(), z);
        } else {
            this.delegate.editMedia(tLRPC$Document, z);
        }
    }

    public void setNftAvatar() {
        MediaEditManager mediaEditManager = this.mediaEditManager;
        if (mediaEditManager != null) {
            mediaEditManager.setNftAvatar(this.nftToken.getImage());
        }
    }

    /* renamed from: org.telegram.ui.ContentPreviewViewer$FrameLayoutDrawer */
    /* loaded from: classes5.dex */
    public class FrameLayoutDrawer extends FrameLayout {
        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            return view != ContentPreviewViewer.this.kiklikoPlayerLayout && super.drawChild(canvas, view, j);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FrameLayoutDrawer(Context context) {
            super(context);
            ContentPreviewViewer.this = r1;
            setWillNotDraw(false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            ContentPreviewViewer.this.onDraw(canvas);
        }
    }

    /* renamed from: org.telegram.ui.ContentPreviewViewer$2 */
    /* loaded from: classes5.dex */
    public class RunnableC55862 implements Runnable {
        RunnableC55862() {
            ContentPreviewViewer.this = r1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r2v37 */
        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int min;
            int i9;
            String str;
            if (ContentPreviewViewer.this.parentActivity == null) {
                return;
            }
            ?? r2 = 1;
            ContentPreviewViewer.this.closeOnDismiss = true;
            boolean z2 = ContentPreviewViewer.this.delegate != null && ToolsController.getInstance(ContentPreviewViewer.this.currentAccount).isSilentSendingEnabledForDialog(ContentPreviewViewer.this.delegate.getDialogId());
            if (ContentPreviewViewer.this.currentContentType == 0) {
                if (!MessageObject.isPremiumSticker(ContentPreviewViewer.this.currentDocument) || AccountInstance.getInstance(ContentPreviewViewer.this.currentAccount).getUserConfig().isPremium()) {
                    boolean isStickerInFavorites = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).isStickerInFavorites(ContentPreviewViewer.this.currentDocument);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ContentPreviewViewer.this.menuVisible = true;
                    ContentPreviewViewer.this.containerView.invalidate();
                    if (ContentPreviewViewer.this.delegate != null) {
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList.add(LocaleController.getString("SendStickerPreview", C3417R.string.SendStickerPreview));
                            arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_send));
                            arrayList2.add(0);
                        }
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            arrayList.add(LocaleController.getInternalString(C3417R.string.sticker_edit_and_send));
                            arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_edit));
                            arrayList2.add(Integer.valueOf(IdFabric$Menu.EDIT_AND_SEND));
                        }
                        arrayList.add(LocaleController.getInternalString(C3417R.string.custom_avatar_set));
                        arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_openprofile));
                        arrayList2.add(Integer.valueOf(IdFabric$Menu.SET_AS_AVATAR));
                        if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                            if (z2) {
                                arrayList.add(LocaleController.getInternalString(C3417R.string.send_with_sound));
                            } else {
                                arrayList.add(LocaleController.getString("SendWithoutSound", C3417R.string.SendWithoutSound));
                            }
                            if (z2) {
                                arrayList3.add(Integer.valueOf(C3417R.C3419drawable.input_notify_on));
                            } else {
                                arrayList3.add(Integer.valueOf(C3417R.C3419drawable.input_notify_off));
                            }
                            arrayList2.add(6);
                        }
                        if (ContentPreviewViewer.this.delegate.canSchedule()) {
                            arrayList.add(LocaleController.getString("Schedule", C3417R.string.Schedule));
                            arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_autodelete));
                            arrayList2.add(3);
                        }
                        if (ContentPreviewViewer.this.currentStickerSet != null && ContentPreviewViewer.this.delegate.needOpen()) {
                            arrayList.add(LocaleController.formatString("ViewPackPreview", C3417R.string.ViewPackPreview, new Object[0]));
                            arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_media));
                            arrayList2.add(1);
                        }
                        if (ContentPreviewViewer.this.delegate.needRemove()) {
                            arrayList.add(LocaleController.getString("ImportStickersRemoveMenu", C3417R.string.ImportStickersRemoveMenu));
                            arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_delete));
                            arrayList2.add(5);
                        }
                    }
                    if (!MessageObject.isMaskDocument(ContentPreviewViewer.this.currentDocument) && (isStickerInFavorites || (MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).canAddStickerToFavorites() && MessageObject.isStickerHasSet(ContentPreviewViewer.this.currentDocument)))) {
                        if (isStickerInFavorites) {
                            i9 = C3417R.string.DeleteFromFavorites;
                            str = "DeleteFromFavorites";
                        } else {
                            i9 = C3417R.string.AddToFavorites;
                            str = "AddToFavorites";
                        }
                        arrayList.add(LocaleController.getString(str, i9));
                        arrayList3.add(Integer.valueOf(isStickerInFavorites ? C3417R.C3419drawable.msg_unfave : C3417R.C3419drawable.msg_fave));
                        arrayList2.add(2);
                    }
                    if (ContentPreviewViewer.this.isRecentSticker) {
                        arrayList.add(LocaleController.getString("DeleteFromRecent", C3417R.string.DeleteFromRecent));
                        arrayList3.add(Integer.valueOf(C3417R.C3419drawable.msg_delete));
                        arrayList2.add(4);
                    }
                    arrayList.add("");
                    arrayList3.add(0);
                    arrayList2.add(Integer.valueOf(IdFabric$Menu.TOGGLE_AUTO_PREVIEW));
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    int[] iArr = new int[arrayList3.size()];
                    for (int i10 = 0; i10 < arrayList3.size(); i10++) {
                        iArr[i10] = ((Integer) arrayList3.get(i10)).intValue();
                    }
                    View$OnClickListenerC55871 view$OnClickListenerC55871 = new View$OnClickListenerC55871(arrayList2, isStickerInFavorites);
                    ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(ContentPreviewViewer.this.containerView.getContext(), C3417R.C3419drawable.popup_fixed_alert3, ContentPreviewViewer.this.resourcesProvider);
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        ActionBarMenuSubItem addItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, ((Integer) arrayList3.get(i11)).intValue(), (CharSequence) arrayList.get(i11), false, ContentPreviewViewer.this.resourcesProvider);
                        addItem.setTag(Integer.valueOf(i11));
                        addItem.setOnClickListener(view$OnClickListenerC55871);
                        if (i11 != arrayList2.size() - 1 && ((Integer) arrayList2.get(i11 + 1)).intValue() == IdFabric$Menu.TOGGLE_AUTO_PREVIEW) {
                            ActionBarMenuItem.addColoredGap(actionBarPopupWindowLayout, ContentPreviewViewer.this.resourcesProvider);
                        } else if (((Integer) arrayList2.get(i11)).intValue() == IdFabric$Menu.TOGGLE_AUTO_PREVIEW) {
                            ContentPreviewViewer.this.toggleAutoPreviewItem = addItem;
                            ContentPreviewViewer.this.updateToggleAutoPreviewItem();
                        }
                    }
                    ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2) { // from class: org.telegram.ui.ContentPreviewViewer.2.2
                        {
                            RunnableC55862.this = this;
                        }

                        @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                            contentPreviewViewer.popupWindow = null;
                            contentPreviewViewer.menuVisible = false;
                            if (ContentPreviewViewer.this.closeOnDismiss) {
                                ContentPreviewViewer.this.close();
                            }
                        }
                    };
                    ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                    ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(100);
                    ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                    ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                    ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                    ContentPreviewViewer.this.popupWindow.setAnimationStyle(C3417R.style.PopupContextAnimation);
                    ContentPreviewViewer.this.popupWindow.setFocusable(true);
                    actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE));
                    ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                    ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                    if (Build.VERSION.SDK_INT >= 21 && ContentPreviewViewer.this.lastInsets != null) {
                        i8 = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                        i7 = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                    } else {
                        i7 = AndroidUtilities.statusBarHeight;
                        i8 = 0;
                    }
                    int max = ((int) (ContentPreviewViewer.this.moveY + Math.max(i7 + min + (ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.m54dp(40) : 0), ((ContentPreviewViewer.this.containerView.getHeight() - i8) - ContentPreviewViewer.this.keyboardHeight) / 2) + ((ContentPreviewViewer.this.currentContentType == 1 ? Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i8) - AndroidUtilities.m55dp(40.0f) : (int) (ContentPreviewViewer.this.drawEffect ? Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i8) - AndroidUtilities.dpf2(40.0f) : Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i8) / 1.8f)) / 2))) + AndroidUtilities.m54dp(24);
                    if (ContentPreviewViewer.this.drawEffect) {
                        max += AndroidUtilities.m54dp(24);
                    }
                    ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                    contentPreviewViewer.popupWindow.showAtLocation(contentPreviewViewer.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout.getMeasuredWidth()) / 2.0f), max);
                    ContentPreviewViewer.this.containerView.performHapticFeedback(0);
                    return;
                }
                ContentPreviewViewer.this.showUnlockPremiumView();
                ContentPreviewViewer.this.menuVisible = true;
                ContentPreviewViewer.this.containerView.invalidate();
                ContentPreviewViewer.this.containerView.performHapticFeedback(0);
            } else if (ContentPreviewViewer.this.currentContentType != 2 || ContentPreviewViewer.this.delegate == null) {
                if (ContentPreviewViewer.this.delegate != null) {
                    ContentPreviewViewer.this.menuVisible = true;
                    ContentPreviewViewer.this.containerView.invalidate();
                    boolean z3 = ContentPreviewViewer.this.currentContentType == IdFabric$CustomType.CONTENT_TYPE_KIKLIKO;
                    boolean z4 = ContentPreviewViewer.this.currentContentType == IdFabric$CustomType.CONTENT_TYPE_NFT;
                    ArrayList arrayList4 = new ArrayList();
                    final ArrayList arrayList5 = new ArrayList();
                    ArrayList arrayList6 = new ArrayList();
                    if (z4) {
                        arrayList4.add(LocaleController.getInternalString(C3417R.string.nft_preview_copy_token_id));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_copy));
                        arrayList5.add(Integer.valueOf(IdFabric$Menu.NFT_COPY_ID));
                        arrayList4.add(LocaleController.getInternalString(C3417R.string.nft_preview_open_contract));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.fork_ic_etherscan_24));
                        arrayList5.add(Integer.valueOf(IdFabric$Menu.NFT_OPEN_CONTRACT));
                        arrayList4.add(LocaleController.getInternalString(C3417R.string.custom_avatar_set));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_openprofile));
                        arrayList5.add(Integer.valueOf(IdFabric$Menu.SET_AS_AVATAR));
                        arrayList4.add(LocaleController.getInternalString(C3417R.string.nft_preview_open_source));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_photos));
                        arrayList5.add(Integer.valueOf(IdFabric$Menu.NFT_OPEN_SOURCE));
                    }
                    if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                        if (z3) {
                            arrayList4.add(LocaleController.getString("Send", C3417R.string.Send));
                        } else {
                            arrayList4.add(LocaleController.getString("SendGifPreview", C3417R.string.SendGifPreview));
                        }
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_send));
                        arrayList5.add(0);
                        arrayList4.add(LocaleController.getInternalString(C3417R.string.custom_avatar_set));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_openprofile));
                        arrayList5.add(Integer.valueOf(IdFabric$Menu.SET_AS_AVATAR));
                        if (z3) {
                            arrayList4.add(LocaleController.getInternalString(C3417R.string.kikliko_send_as_gif));
                            arrayList6.add(Integer.valueOf(C3417R.C3419drawable.smiles_tab_gif));
                            arrayList5.add(Integer.valueOf(IdFabric$Menu.SEND_AS_GIF));
                        }
                    }
                    if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType) && !ContentPreviewViewer.this.delegate.isInScheduleMode()) {
                        if (z2) {
                            arrayList4.add(LocaleController.getInternalString(C3417R.string.send_with_sound));
                        } else {
                            arrayList4.add(LocaleController.getString("SendWithoutSound", C3417R.string.SendWithoutSound));
                        }
                        if (z2) {
                            arrayList6.add(Integer.valueOf(C3417R.C3419drawable.input_notify_on));
                        } else {
                            arrayList6.add(Integer.valueOf(C3417R.C3419drawable.input_notify_off));
                        }
                        arrayList5.add(4);
                    }
                    if (ContentPreviewViewer.this.delegate.canSchedule()) {
                        arrayList4.add(LocaleController.getString("Schedule", C3417R.string.Schedule));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_autodelete));
                        arrayList5.add(3);
                    }
                    if (ContentPreviewViewer.this.currentDocument != null) {
                        z = MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).hasRecentGif(ContentPreviewViewer.this.currentDocument);
                        if (z) {
                            arrayList4.add(LocaleController.formatString("Delete", C3417R.string.Delete, new Object[0]));
                            arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_delete));
                            arrayList5.add(1);
                        } else {
                            arrayList4.add(LocaleController.formatString("SaveToGIFs", C3417R.string.SaveToGIFs, new Object[0]));
                            arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_gif_add));
                            arrayList5.add(2);
                        }
                    } else {
                        z = false;
                    }
                    if (!z3) {
                        if (ContentPreviewViewer.this.currentContentType == 1) {
                            arrayList4.add("");
                            arrayList6.add(0);
                            arrayList5.add(Integer.valueOf(IdFabric$Menu.TOGGLE_AUTO_PREVIEW));
                        }
                    } else {
                        arrayList4.add(LocaleController.getString("ReportChat", C3417R.string.ReportChat));
                        arrayList6.add(Integer.valueOf(C3417R.C3419drawable.msg_report));
                        arrayList5.add(Integer.valueOf(IdFabric$Menu.REPORT));
                    }
                    if (arrayList4.isEmpty()) {
                        return;
                    }
                    int[] iArr2 = new int[arrayList6.size()];
                    for (int i12 = 0; i12 < arrayList6.size(); i12++) {
                        iArr2[i12] = ((Integer) arrayList6.get(i12)).intValue();
                    }
                    ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = new ActionBarPopupWindow.ActionBarPopupWindowLayout(ContentPreviewViewer.this.containerView.getContext(), C3417R.C3419drawable.popup_fixed_alert2, ContentPreviewViewer.this.resourcesProvider);
                    if (z3 || z4) {
                        actionBarPopupWindowLayout2.setFitItems(true);
                    }
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$2$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ContentPreviewViewer.RunnableC55862.this.lambda$run$4(arrayList5, view);
                        }
                    };
                    int i13 = 0;
                    while (i13 < arrayList4.size()) {
                        int intValue = ((Integer) arrayList5.get(i13)).intValue();
                        if (i13 == 0 && (z3 || z4)) {
                            LinearLayout linearLayout = new LinearLayout(actionBarPopupWindowLayout2.getContext());
                            linearLayout.setTag(C3417R.C3420id.fit_width_tag, Integer.valueOf((int) r2));
                            linearLayout.setOrientation(r2);
                            TextView textView = new TextView(actionBarPopupWindowLayout2.getContext());
                            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ContentPreviewViewer.this.resourcesProvider));
                            textView.setTextSize(r2, 16.0f);
                            textView.setLines(r2);
                            textView.setMaxLines(r2);
                            textView.setSingleLine(r2);
                            textView.setEllipsize(TextUtils.TruncateAt.END);
                            if (z3) {
                                textView.setText(ContentPreviewViewer.this.kiklikoGif.getTitle());
                            } else {
                                textView.setText(ContentPreviewViewer.this.nftToken.getTitle());
                            }
                            linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 3, 0, 0, 0, 8));
                            TextView textView2 = new TextView(actionBarPopupWindowLayout2.getContext());
                            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, ContentPreviewViewer.this.resourcesProvider));
                            textView2.setTextSize(r2, 13.0f);
                            if (!z3) {
                                textView2.setText(ContentPreviewViewer.this.nftToken.getDescription());
                            } else {
                                textView2.setText(LocaleController.getInternalString(C3417R.string.kikliko_promo));
                            }
                            linearLayout.addView(textView2, LayoutHelper.createFrame(-2, -2));
                            linearLayout.setPadding(AndroidUtilities.m54dp(18), AndroidUtilities.m54dp(8), AndroidUtilities.m54dp(18), AndroidUtilities.m54dp(8));
                            actionBarPopupWindowLayout2.addView((View) linearLayout, LayoutHelper.createLinear(-1, -2));
                            ActionBarMenuItem.addColoredGap(actionBarPopupWindowLayout2, ContentPreviewViewer.this.resourcesProvider);
                        } else if (intValue == IdFabric$Menu.TOGGLE_AUTO_PREVIEW || intValue == IdFabric$Menu.REPORT) {
                            ActionBarMenuItem.addColoredGap(actionBarPopupWindowLayout2, ContentPreviewViewer.this.resourcesProvider);
                        }
                        ActionBarMenuSubItem addItem2 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout2, ((Integer) arrayList6.get(i13)).intValue(), (CharSequence) arrayList4.get(i13), false, ContentPreviewViewer.this.resourcesProvider);
                        addItem2.setTag(Integer.valueOf(i13));
                        addItem2.setOnClickListener(onClickListener);
                        if (intValue == IdFabric$Menu.TOGGLE_AUTO_PREVIEW) {
                            ContentPreviewViewer.this.toggleAutoPreviewItem = addItem2;
                            ContentPreviewViewer.this.updateToggleAutoPreviewItem();
                        }
                        if (z) {
                            if (i13 == (arrayList4.size() - 1) - (ContentPreviewViewer.this.currentContentType == 1 ? 1 : 0)) {
                                addItem2.setColors(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold), ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedRegular));
                            }
                        }
                        i13++;
                        r2 = 1;
                    }
                    ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout2, -2, -2) { // from class: org.telegram.ui.ContentPreviewViewer.2.4
                        {
                            RunnableC55862.this = this;
                        }

                        @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                            contentPreviewViewer2.popupWindow = null;
                            contentPreviewViewer2.menuVisible = false;
                            if (ContentPreviewViewer.this.closeOnDismiss) {
                                ContentPreviewViewer.this.close();
                            }
                        }
                    };
                    ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                    ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                    ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                    ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                    ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                    ContentPreviewViewer.this.popupWindow.setAnimationStyle(C3417R.style.PopupContextAnimation);
                    ContentPreviewViewer.this.popupWindow.setFocusable(true);
                    actionBarPopupWindowLayout2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE));
                    ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                    ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                    if (Build.VERSION.SDK_INT >= 21 && ContentPreviewViewer.this.lastInsets != null) {
                        i2 = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                        i = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                    } else {
                        i = AndroidUtilities.statusBarHeight;
                        i2 = 0;
                    }
                    int min2 = Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i2) - AndroidUtilities.m55dp(40.0f);
                    float f = ContentPreviewViewer.this.moveY;
                    int i14 = i + (min2 / 2);
                    int m54dp = ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.m54dp(40) : 0;
                    ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                    contentPreviewViewer2.popupWindow.showAtLocation(contentPreviewViewer2.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout2.getMeasuredWidth()) / 2.0f), (int) (((int) (f + Math.max(i14 + m54dp, ((ContentPreviewViewer.this.containerView.getHeight() - i2) - ContentPreviewViewer.this.keyboardHeight) / 2) + i3)) + (AndroidUtilities.m54dp(24) - ContentPreviewViewer.this.moveY)));
                    ContentPreviewViewer.this.containerView.performHapticFeedback(0);
                    if (ContentPreviewViewer.this.moveY != BitmapDescriptorFactory.HUE_RED) {
                        if (ContentPreviewViewer.this.finalMoveY == BitmapDescriptorFactory.HUE_RED) {
                            ContentPreviewViewer.this.finalMoveY = BitmapDescriptorFactory.HUE_RED;
                            ContentPreviewViewer contentPreviewViewer3 = ContentPreviewViewer.this;
                            contentPreviewViewer3.startMoveY = contentPreviewViewer3.moveY;
                        }
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$2$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ContentPreviewViewer.RunnableC55862.this.lambda$run$5(valueAnimator);
                            }
                        });
                        ofFloat.setDuration(350L);
                        ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        ofFloat.start();
                    }
                }
            } else {
                ContentPreviewViewer.this.menuVisible = true;
                ContentPreviewViewer.this.containerView.invalidate();
                ArrayList arrayList7 = new ArrayList();
                final ArrayList arrayList8 = new ArrayList();
                ArrayList arrayList9 = new ArrayList();
                if (ContentPreviewViewer.this.delegate.needSend(ContentPreviewViewer.this.currentContentType)) {
                    arrayList7.add(LocaleController.getString("SendEmojiPreview", C3417R.string.SendEmojiPreview));
                    arrayList9.add(Integer.valueOf(C3417R.C3419drawable.msg_send));
                    arrayList8.add(0);
                }
                Boolean canSetAsStatus = ContentPreviewViewer.this.delegate.canSetAsStatus(ContentPreviewViewer.this.currentDocument);
                if (canSetAsStatus != null) {
                    if (canSetAsStatus.booleanValue()) {
                        arrayList7.add(LocaleController.getString("SetAsEmojiStatus", C3417R.string.SetAsEmojiStatus));
                        arrayList9.add(Integer.valueOf(C3417R.C3419drawable.msg_smile_status));
                        arrayList8.add(1);
                    } else {
                        arrayList7.add(LocaleController.getString("RemoveStatus", C3417R.string.RemoveStatus));
                        arrayList9.add(Integer.valueOf(C3417R.C3419drawable.msg_smile_status));
                        arrayList8.add(2);
                    }
                }
                if (ContentPreviewViewer.this.delegate.needCopy()) {
                    arrayList7.add(LocaleController.getString("CopyEmojiPreview", C3417R.string.CopyEmojiPreview));
                    arrayList9.add(Integer.valueOf(C3417R.C3419drawable.msg_copy));
                    arrayList8.add(3);
                }
                if (ContentPreviewViewer.this.delegate.needRemoveFromRecent(ContentPreviewViewer.this.currentDocument)) {
                    arrayList7.add(LocaleController.getString("RemoveFromRecent", C3417R.string.RemoveFromRecent));
                    arrayList9.add(Integer.valueOf(C3417R.C3419drawable.msg_delete));
                    arrayList8.add(4);
                }
                if (arrayList7.isEmpty()) {
                    return;
                }
                int[] iArr3 = new int[arrayList9.size()];
                for (int i15 = 0; i15 < arrayList9.size(); i15++) {
                    iArr3[i15] = ((Integer) arrayList9.get(i15)).intValue();
                }
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout3 = new ActionBarPopupWindow.ActionBarPopupWindowLayout(ContentPreviewViewer.this.containerView.getContext(), C3417R.C3419drawable.popup_fixed_alert2, ContentPreviewViewer.this.resourcesProvider);
                View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$2$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ContentPreviewViewer.RunnableC55862.this.lambda$run$0(arrayList8, view);
                    }
                };
                int i16 = 0;
                while (i16 < arrayList7.size()) {
                    ActionBarMenuSubItem addItem3 = ActionBarMenuItem.addItem(i16 == 0, i16 == arrayList7.size() - 1, actionBarPopupWindowLayout3, ((Integer) arrayList9.get(i16)).intValue(), (CharSequence) arrayList7.get(i16), false, ContentPreviewViewer.this.resourcesProvider);
                    if (((Integer) arrayList8.get(i16)).intValue() == 4) {
                        addItem3.setIconColor(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedRegular));
                        addItem3.setTextColor(ContentPreviewViewer.this.getThemedColor(Theme.key_text_RedBold));
                    }
                    addItem3.setTag(Integer.valueOf(i16));
                    addItem3.setOnClickListener(onClickListener2);
                    i16++;
                }
                ContentPreviewViewer.this.popupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout3, -2, -2) { // from class: org.telegram.ui.ContentPreviewViewer.2.3
                    {
                        RunnableC55862.this = this;
                    }

                    @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                    public void dismiss() {
                        super.dismiss();
                        ContentPreviewViewer contentPreviewViewer4 = ContentPreviewViewer.this;
                        contentPreviewViewer4.popupWindow = null;
                        contentPreviewViewer4.menuVisible = false;
                        if (ContentPreviewViewer.this.closeOnDismiss) {
                            ContentPreviewViewer.this.close();
                        }
                    }
                };
                ContentPreviewViewer.this.popupWindow.setPauseNotifications(true);
                ContentPreviewViewer.this.popupWindow.setDismissAnimationDuration(ImageReceiver.DEFAULT_CROSSFADE_DURATION);
                ContentPreviewViewer.this.popupWindow.setScaleOut(true);
                ContentPreviewViewer.this.popupWindow.setOutsideTouchable(true);
                ContentPreviewViewer.this.popupWindow.setClippingEnabled(true);
                ContentPreviewViewer.this.popupWindow.setAnimationStyle(C3417R.style.PopupContextAnimation);
                ContentPreviewViewer.this.popupWindow.setFocusable(true);
                actionBarPopupWindowLayout3.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(1000), Integer.MIN_VALUE));
                ContentPreviewViewer.this.popupWindow.setInputMethodMode(2);
                ContentPreviewViewer.this.popupWindow.getContentView().setFocusableInTouchMode(true);
                if (Build.VERSION.SDK_INT >= 21 && ContentPreviewViewer.this.lastInsets != null) {
                    i5 = ContentPreviewViewer.this.lastInsets.getStableInsetBottom() + ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                    i4 = ContentPreviewViewer.this.lastInsets.getStableInsetTop();
                } else {
                    i4 = AndroidUtilities.statusBarHeight;
                    i5 = 0;
                }
                int min3 = Math.min(ContentPreviewViewer.this.containerView.getWidth(), ContentPreviewViewer.this.containerView.getHeight() - i5) - AndroidUtilities.m55dp(40.0f);
                float f2 = ContentPreviewViewer.this.moveY;
                int i17 = i4 + (min3 / 2);
                int m54dp2 = ContentPreviewViewer.this.stickerEmojiLayout != null ? AndroidUtilities.m54dp(40) : 0;
                ContentPreviewViewer contentPreviewViewer4 = ContentPreviewViewer.this;
                contentPreviewViewer4.popupWindow.showAtLocation(contentPreviewViewer4.containerView, 0, (int) ((ContentPreviewViewer.this.containerView.getMeasuredWidth() - actionBarPopupWindowLayout3.getMeasuredWidth()) / 2.0f), (int) (((int) (f2 + Math.max(i17 + m54dp2, ((ContentPreviewViewer.this.containerView.getHeight() - i5) - ContentPreviewViewer.this.keyboardHeight) / 2) + i6)) + (AndroidUtilities.m54dp(24) - ContentPreviewViewer.this.moveY)));
                ActionBarPopupWindow.startAnimation(actionBarPopupWindowLayout3);
                ContentPreviewViewer.this.containerView.performHapticFeedback(0);
                if (ContentPreviewViewer.this.moveY != BitmapDescriptorFactory.HUE_RED) {
                    if (ContentPreviewViewer.this.finalMoveY == BitmapDescriptorFactory.HUE_RED) {
                        ContentPreviewViewer.this.finalMoveY = BitmapDescriptorFactory.HUE_RED;
                        ContentPreviewViewer contentPreviewViewer5 = ContentPreviewViewer.this;
                        contentPreviewViewer5.startMoveY = contentPreviewViewer5.moveY;
                    }
                    ValueAnimator ofFloat2 = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ContentPreviewViewer$2$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ContentPreviewViewer.RunnableC55862.this.lambda$run$1(valueAnimator);
                        }
                    });
                    ofFloat2.setDuration(350L);
                    ofFloat2.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    ofFloat2.start();
                }
            }
        }

        /* renamed from: org.telegram.ui.ContentPreviewViewer$2$1 */
        /* loaded from: classes5.dex */
        class View$OnClickListenerC55871 implements View.OnClickListener {
            final /* synthetic */ ArrayList val$actions;
            final /* synthetic */ boolean val$inFavs;

            View$OnClickListenerC55871(ArrayList arrayList, boolean z) {
                RunnableC55862.this = r1;
                this.val$actions = arrayList;
                this.val$inFavs = z;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActionBarPopupWindow actionBarPopupWindow;
                if (ContentPreviewViewer.this.parentActivity == null) {
                    return;
                }
                int intValue = ((Integer) view.getTag()).intValue();
                int intValue2 = ((Integer) this.val$actions.get(intValue)).intValue();
                int i = IdFabric$Menu.TOGGLE_AUTO_PREVIEW;
                if (intValue2 == i) {
                    SharedConfig.setSendingStickerConfirmationEnabled(!SharedConfig.isSendingStickerConfirmationEnabled);
                    ContentPreviewViewer.this.updateToggleAutoPreviewItem();
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == IdFabric$Menu.EDIT_AND_SEND) {
                    ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                    contentPreviewViewer.editMedia(contentPreviewViewer.currentDocument, false);
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == IdFabric$Menu.SET_AS_AVATAR) {
                    ContentPreviewViewer contentPreviewViewer2 = ContentPreviewViewer.this;
                    contentPreviewViewer2.editMedia(contentPreviewViewer2.currentDocument, true);
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == 0 || ((Integer) this.val$actions.get(intValue)).intValue() == 6) {
                    if (ContentPreviewViewer.this.delegate != null) {
                        ContentPreviewViewer.this.delegate.sendSticker(ContentPreviewViewer.this.currentDocument, ContentPreviewViewer.this.currentQuery, ContentPreviewViewer.this.parentObject, ((Integer) this.val$actions.get(intValue)).intValue() == 0, 0);
                    }
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == 1) {
                    if (ContentPreviewViewer.this.delegate != null) {
                        ContentPreviewViewer.this.delegate.openSet(ContentPreviewViewer.this.currentStickerSet, ContentPreviewViewer.this.clearsInputField);
                    }
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == 2) {
                    MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentSticker(2, ContentPreviewViewer.this.parentObject, ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), this.val$inFavs);
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == 3) {
                    final TLRPC$Document tLRPC$Document = ContentPreviewViewer.this.currentDocument;
                    final Object obj = ContentPreviewViewer.this.parentObject;
                    final String str = ContentPreviewViewer.this.currentQuery;
                    final ContentPreviewViewerDelegate contentPreviewViewerDelegate = ContentPreviewViewer.this.delegate;
                    if (contentPreviewViewerDelegate == null) {
                        return;
                    }
                    AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$2$1$$ExternalSyntheticLambda0
                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i2, String str2) {
                            ContentPreviewViewer.ContentPreviewViewerDelegate.this.sendSticker(tLRPC$Document, str, obj, z, i2);
                        }

                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public /* synthetic */ ArrayList getSelectedDialogs() {
                            return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                        }
                    }, null);
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == 4) {
                    MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentSticker(0, ContentPreviewViewer.this.parentObject, ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), true);
                } else if (((Integer) this.val$actions.get(intValue)).intValue() == 5) {
                    ContentPreviewViewer.this.delegate.remove(ContentPreviewViewer.this.importingSticker);
                }
                if (((Integer) this.val$actions.get(intValue)).intValue() == i || (actionBarPopupWindow = ContentPreviewViewer.this.popupWindow) == null) {
                    return;
                }
                actionBarPopupWindow.dismiss();
            }
        }

        public /* synthetic */ void lambda$run$0(ArrayList arrayList, View view) {
            if (ContentPreviewViewer.this.parentActivity == null || ContentPreviewViewer.this.delegate == null) {
                return;
            }
            int intValue = ((Integer) arrayList.get(((Integer) view.getTag()).intValue())).intValue();
            if (intValue == 0) {
                ContentPreviewViewer.this.delegate.sendEmoji(ContentPreviewViewer.this.currentDocument);
            } else if (intValue == 1) {
                ContentPreviewViewer.this.delegate.setAsEmojiStatus(ContentPreviewViewer.this.currentDocument, null);
            } else if (intValue == 2) {
                ContentPreviewViewer.this.delegate.setAsEmojiStatus(null, null);
            } else if (intValue == 3) {
                ContentPreviewViewer.this.delegate.copyEmoji(ContentPreviewViewer.this.currentDocument);
            } else if (intValue == 4) {
                ContentPreviewViewer.this.delegate.removeFromRecent(ContentPreviewViewer.this.currentDocument);
            }
            ActionBarPopupWindow actionBarPopupWindow = ContentPreviewViewer.this.popupWindow;
            if (actionBarPopupWindow != null) {
                actionBarPopupWindow.dismiss();
            }
        }

        public /* synthetic */ void lambda$run$1(ValueAnimator valueAnimator) {
            ContentPreviewViewer.this.currentMoveYProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            contentPreviewViewer.moveY = contentPreviewViewer.startMoveY + ((ContentPreviewViewer.this.finalMoveY - ContentPreviewViewer.this.startMoveY) * ContentPreviewViewer.this.currentMoveYProgress);
            ContentPreviewViewer.this.containerView.invalidate();
        }

        public /* synthetic */ void lambda$run$4(ArrayList arrayList, View view) {
            final String str;
            final String str2;
            ActionBarPopupWindow actionBarPopupWindow;
            if (ContentPreviewViewer.this.parentActivity == null) {
                return;
            }
            int intValue = ((Integer) view.getTag()).intValue();
            if (ContentPreviewViewer.this.delegate == null) {
                return;
            }
            if (ContentPreviewViewer.this.currentPreviewCell instanceof KiklikoGifView) {
                String absolutePath = ContentPreviewViewer.this.kiklikoVideoFile.getAbsolutePath();
                str2 = ContentPreviewViewer.this.kiklikoGif.getSlug();
                str = absolutePath;
            } else {
                str = null;
                str2 = null;
            }
            int intValue2 = ((Integer) arrayList.get(intValue)).intValue();
            int i = IdFabric$Menu.TOGGLE_AUTO_PREVIEW;
            if (intValue2 == i) {
                SharedConfig.setSendingGifConfirmationEnabled(!SharedConfig.isSendingGifConfirmationEnabled);
                ContentPreviewViewer.this.updateToggleAutoPreviewItem();
            } else if (((Integer) arrayList.get(intValue)).intValue() == IdFabric$Menu.REPORT) {
                ContentPreviewViewer.this.delegate.openKiklikoReport(ContentPreviewViewer.this.kiklikoGif.getSlug());
            } else if (((Integer) arrayList.get(intValue)).intValue() == IdFabric$Menu.SEND_AS_GIF) {
                ContentPreviewViewer.this.delegate.sendKiklikoVideo(str, str2, true, true, 0);
            } else if (((Integer) arrayList.get(intValue)).intValue() == IdFabric$Menu.NFT_COPY_ID) {
                ContextExtKt.copyToClipboard(ContentPreviewViewer.this.nftToken.getTokenId(), LocaleController.getString("TextCopied", C3417R.string.TextCopied));
            } else if (((Integer) arrayList.get(intValue)).intValue() == IdFabric$Menu.NFT_OPEN_CONTRACT) {
                Browser.openUrl(ContentPreviewViewer.this.parentActivity, NetworksHelper.getNetworkById(NetworkType.POLY).getTokenUrl(ContentPreviewViewer.this.nftToken.getCollection().getContractAddress()));
            } else if (((Integer) arrayList.get(intValue)).intValue() == IdFabric$Menu.NFT_OPEN_SOURCE) {
                Browser.openUrl(ContentPreviewViewer.this.parentActivity, ContentPreviewViewer.this.nftToken.getImage());
            } else if (((Integer) arrayList.get(intValue)).intValue() == IdFabric$Menu.SET_AS_AVATAR) {
                if (ContentPreviewViewer.this.nftToken != null) {
                    ContentPreviewViewer.this.setNftAvatar();
                } else if (ContentPreviewViewer.this.kiklikoVideoFile != null) {
                    ContentPreviewViewer.this.delegate.setKiklikoAvatar(ContentPreviewViewer.this.kiklikoVideoFile.getAbsolutePath());
                } else {
                    ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
                    contentPreviewViewer.editMedia(contentPreviewViewer.currentDocument, true);
                }
            } else if (((Integer) arrayList.get(intValue)).intValue() == 0) {
                if (ContentPreviewViewer.this.currentPreviewCell instanceof KiklikoGifView) {
                    ContentPreviewViewer.this.delegate.sendKiklikoVideo(str, str2, false, true, 0);
                } else {
                    ContentPreviewViewer.this.delegate.sendGif(ContentPreviewViewer.this.currentDocument != null ? ContentPreviewViewer.this.currentDocument : ContentPreviewViewer.this.inlineResult, ContentPreviewViewer.this.parentObject, true, 0);
                }
            } else if (((Integer) arrayList.get(intValue)).intValue() == 4) {
                if (ContentPreviewViewer.this.currentPreviewCell instanceof KiklikoGifView) {
                    ContentPreviewViewer.this.delegate.sendKiklikoVideo(str, str2, false, false, 0);
                } else {
                    ContentPreviewViewer.this.delegate.sendGif(ContentPreviewViewer.this.currentDocument != null ? ContentPreviewViewer.this.currentDocument : ContentPreviewViewer.this.inlineResult, ContentPreviewViewer.this.parentObject, false, 0);
                }
            } else if (((Integer) arrayList.get(intValue)).intValue() == 1) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).removeRecentGif(ContentPreviewViewer.this.currentDocument);
                ContentPreviewViewer.this.delegate.gifAddedOrDeleted();
            } else if (((Integer) arrayList.get(intValue)).intValue() == 2) {
                MediaDataController.getInstance(ContentPreviewViewer.this.currentAccount).addRecentGif(ContentPreviewViewer.this.currentDocument, (int) (System.currentTimeMillis() / 1000), true);
                MessagesController.getInstance(ContentPreviewViewer.this.currentAccount).saveGif("gif", ContentPreviewViewer.this.currentDocument);
                ContentPreviewViewer.this.delegate.gifAddedOrDeleted();
            } else if (((Integer) arrayList.get(intValue)).intValue() == 3) {
                final TLRPC$Document tLRPC$Document = ContentPreviewViewer.this.currentDocument;
                final TLRPC$BotInlineResult tLRPC$BotInlineResult = ContentPreviewViewer.this.inlineResult;
                final Object obj = ContentPreviewViewer.this.parentObject;
                final ContentPreviewViewerDelegate contentPreviewViewerDelegate = ContentPreviewViewer.this.delegate;
                if (ContentPreviewViewer.this.currentPreviewCell instanceof KiklikoGifView) {
                    AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$2$$ExternalSyntheticLambda4
                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i2, String str3) {
                            ContentPreviewViewer.ContentPreviewViewerDelegate.this.sendKiklikoVideo(str, str2, false, z, i2);
                        }

                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public /* synthetic */ ArrayList getSelectedDialogs() {
                            return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                        }
                    }, ContentPreviewViewer.this.resourcesProvider, (ChatActivity) null);
                } else {
                    AlertsCreator.createScheduleDatePickerDialog(ContentPreviewViewer.this.parentActivity, contentPreviewViewerDelegate.getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.ContentPreviewViewer$2$$ExternalSyntheticLambda5
                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public final void didSelectDate(boolean z, int i2, String str3) {
                            ContentPreviewViewer.RunnableC55862.lambda$run$3(ContentPreviewViewer.ContentPreviewViewerDelegate.this, tLRPC$Document, tLRPC$BotInlineResult, obj, z, i2, str3);
                        }

                        @Override // org.telegram.p043ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                        public /* synthetic */ ArrayList getSelectedDialogs() {
                            return AlertsCreator.ScheduleDatePickerDelegate.CC.$default$getSelectedDialogs(this);
                        }
                    }, ContentPreviewViewer.this.resourcesProvider, (ChatActivity) null);
                }
            }
            if (((Integer) arrayList.get(intValue)).intValue() == i || (actionBarPopupWindow = ContentPreviewViewer.this.popupWindow) == null) {
                return;
            }
            actionBarPopupWindow.dismiss();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void lambda$run$3(ContentPreviewViewerDelegate contentPreviewViewerDelegate, TLRPC$Document tLRPC$Document, TLRPC$BotInlineResult tLRPC$BotInlineResult, Object obj, boolean z, int i, String str) {
            if (tLRPC$Document == null) {
                tLRPC$Document = tLRPC$BotInlineResult;
            }
            contentPreviewViewerDelegate.sendGif(tLRPC$Document, obj, z, i);
        }

        public /* synthetic */ void lambda$run$5(ValueAnimator valueAnimator) {
            ContentPreviewViewer.this.currentMoveYProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.this;
            contentPreviewViewer.moveY = contentPreviewViewer.startMoveY + ((ContentPreviewViewer.this.finalMoveY - ContentPreviewViewer.this.startMoveY) * ContentPreviewViewer.this.currentMoveYProgress);
            ContentPreviewViewer.this.containerView.invalidate();
        }
    }

    public void showUnlockPremiumView() {
        if (this.unlockPremiumView == null) {
            UnlockPremiumView unlockPremiumView = new UnlockPremiumView(this.containerView.getContext(), 0, this.resourcesProvider);
            this.unlockPremiumView = unlockPremiumView;
            this.containerView.addView(unlockPremiumView, LayoutHelper.createFrame(-1, -1));
            this.unlockPremiumView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ContentPreviewViewer.this.lambda$showUnlockPremiumView$0(view);
                }
            });
            this.unlockPremiumView.premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ContentPreviewViewer.this.lambda$showUnlockPremiumView$1(view);
                }
            });
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false, 1.0f, false);
        AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, true);
        this.unlockPremiumView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
    }

    public /* synthetic */ void lambda$showUnlockPremiumView$0(View view) {
        this.menuVisible = false;
        this.containerView.invalidate();
        close();
    }

    public /* synthetic */ void lambda$showUnlockPremiumView$1(View view) {
        Activity activity = this.parentActivity;
        if (activity instanceof LaunchActivity) {
            LaunchActivity launchActivity = (LaunchActivity) activity;
            if (launchActivity.getActionBarLayout() != null && launchActivity.getActionBarLayout().getLastFragment() != null) {
                launchActivity.getActionBarLayout().getLastFragment().dismissCurrentDialog();
            }
            launchActivity.lambda$runLinkRequest$84(new PremiumPreviewFragment(PremiumPreviewFragment.featureTypeToServerString(5)));
        }
        this.menuVisible = false;
        this.containerView.invalidate();
        close();
    }

    public static ContentPreviewViewer getInstance() {
        ContentPreviewViewer contentPreviewViewer = Instance;
        if (contentPreviewViewer == null) {
            synchronized (PhotoViewer.class) {
                contentPreviewViewer = Instance;
                if (contentPreviewViewer == null) {
                    contentPreviewViewer = new ContentPreviewViewer();
                    Instance = contentPreviewViewer;
                }
            }
        }
        return contentPreviewViewer;
    }

    public static boolean hasInstance() {
        return Instance != null;
    }

    public void reset() {
        Runnable runnable = this.openPreviewRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.openPreviewRunnable = null;
        }
        View view = this.currentPreviewCell;
        if (view != null) {
            if (view instanceof StickerEmojiCell) {
                ((StickerEmojiCell) view).setScaled(false);
            } else if (view instanceof StickerCell) {
                ((StickerCell) view).setScaled(false);
            } else if (view instanceof ContextLinkCell) {
                ((ContextLinkCell) view).setScaled(false);
            }
            this.currentPreviewCell = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:283:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.MotionEvent r17, final org.telegram.p043ui.Components.RecyclerListView r18, int r19, final java.lang.Object r20, org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate r21, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r22) {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ContentPreviewViewer.onTouch(android.view.MotionEvent, org.telegram.ui.Components.RecyclerListView, int, java.lang.Object, org.telegram.ui.ContentPreviewViewer$ContentPreviewViewerDelegate, org.telegram.ui.ActionBar.Theme$ResourcesProvider):boolean");
    }

    public static /* synthetic */ void lambda$onTouch$2(RecyclerListView recyclerListView, Object obj) {
        if (recyclerListView instanceof RecyclerListView) {
            recyclerListView.setOnItemClickListener((RecyclerListView.OnItemClickListener) obj);
        }
    }

    protected void runSmoothHaptic() {
        Vibrator vibrator;
        if (Build.VERSION.SDK_INT < 26 || (vibrator = (Vibrator) this.containerView.getContext().getSystemService("vibrator")) == null) {
            return;
        }
        if (this.vibrationEffect == null) {
            this.vibrationEffect = VibrationEffect.createWaveform(new long[]{0, 2}, -1);
        }
        vibrator.cancel();
        vibrator.vibrate(this.vibrationEffect);
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x0103 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r10, final org.telegram.p043ui.Components.RecyclerListView r11, int r12, org.telegram.p043ui.ContentPreviewViewer.ContentPreviewViewerDelegate r13, final org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r14, final android.view.View r15) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ContentPreviewViewer.onInterceptTouchEvent(android.view.MotionEvent, org.telegram.ui.Components.RecyclerListView, int, org.telegram.ui.ContentPreviewViewer$ContentPreviewViewerDelegate, org.telegram.ui.ActionBar.Theme$ResourcesProvider, android.view.View):boolean");
    }

    public /* synthetic */ void lambda$onInterceptTouchEvent$3(boolean z, RecyclerListView recyclerListView, View view, int i, Theme.ResourcesProvider resourcesProvider) {
        TLRPC$Document tLRPC$Document;
        if (this.openPreviewRunnable == null) {
            return;
        }
        if (!z) {
            recyclerListView.setOnItemClickListener((RecyclerListView.OnItemClickListener) null);
        }
        boolean z2 = true;
        if (!z) {
            recyclerListView.requestDisallowInterceptTouchEvent(true);
        }
        this.openPreviewRunnable = null;
        setParentActivity(AndroidUtilities.findActivity(z ? view.getContext() : recyclerListView.getContext()));
        this.clearsInputField = false;
        View view2 = this.currentPreviewCell;
        if (view2 instanceof KiklikoGifView) {
            KiklikoGifView kiklikoGifView = (KiklikoGifView) view2;
            this.kiklikoVideoFile = kiklikoGifView.getFile();
            this.kiklikoGif = kiklikoGifView.getGif();
            preparePlayer();
        } else if (view2 instanceof NftRootView) {
            this.nftToken = ((NftRootView) view2).getNftToken();
            ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
            open(null, null, null, contentPreviewViewerDelegate != null ? contentPreviewViewerDelegate.getQuery(false) : null, null, i, false, null, resourcesProvider, true, this.nftToken.getImage());
        } else {
            if (view2 instanceof StickerEmojiCell) {
                StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) view2;
                TLRPC$Document sticker = stickerEmojiCell.getSticker();
                SendMessagesHelper.ImportingSticker stickerPath = stickerEmojiCell.getStickerPath();
                String findAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(stickerEmojiCell.getSticker(), null, Integer.valueOf(this.currentAccount));
                ContentPreviewViewerDelegate contentPreviewViewerDelegate2 = this.delegate;
                open(sticker, stickerPath, findAnimatedEmojiEmoticon, contentPreviewViewerDelegate2 != null ? contentPreviewViewerDelegate2.getQuery(false) : null, null, i, stickerEmojiCell.isRecent(), stickerEmojiCell.getParentObject(), resourcesProvider, z, null);
                stickerEmojiCell.setScaled(true);
            } else if (view2 instanceof StickerCell) {
                StickerCell stickerCell = (StickerCell) view2;
                TLRPC$Document sticker2 = stickerCell.getSticker();
                ContentPreviewViewerDelegate contentPreviewViewerDelegate3 = this.delegate;
                open(sticker2, null, null, contentPreviewViewerDelegate3 != null ? contentPreviewViewerDelegate3.getQuery(false) : null, null, i, false, stickerCell.getParentObject(), resourcesProvider, z, null);
                stickerCell.setScaled(true);
                this.clearsInputField = stickerCell.isClearsInputField();
            } else if (view2 instanceof ContextLinkCell) {
                ContextLinkCell contextLinkCell = (ContextLinkCell) view2;
                TLRPC$Document document = contextLinkCell.getDocument();
                ContentPreviewViewerDelegate contentPreviewViewerDelegate4 = this.delegate;
                open(document, null, null, contentPreviewViewerDelegate4 != null ? contentPreviewViewerDelegate4.getQuery(true) : null, contextLinkCell.getBotInlineResult(), i, false, contextLinkCell.getBotInlineResult() != null ? contextLinkCell.getInlineBot() : contextLinkCell.getParentObject(), resourcesProvider, z, null);
                if (i != 1) {
                    contextLinkCell.setScaled(true);
                }
            } else if (view2 instanceof EmojiPacksAlert.EmojiImageView) {
                TLRPC$Document document2 = ((EmojiPacksAlert.EmojiImageView) view2).getDocument();
                if (document2 != null) {
                    open(document2, null, MessageObject.findAnimatedEmojiEmoticon(document2, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
                }
            } else if (view2 instanceof EmojiView.ImageViewEmoji) {
                AnimatedEmojiSpan span = ((EmojiView.ImageViewEmoji) view2).getSpan();
                if (span != null) {
                    tLRPC$Document = span.document;
                    if (tLRPC$Document == null) {
                        tLRPC$Document = AnimatedEmojiDrawable.findDocument(this.currentAccount, span.getDocumentId());
                    }
                } else {
                    tLRPC$Document = null;
                }
                if (tLRPC$Document != null) {
                    open(tLRPC$Document, null, MessageObject.findAnimatedEmojiEmoticon(tLRPC$Document, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
                }
            } else if (view2 instanceof SuggestEmojiView.EmojiImageView) {
                Drawable drawable = ((SuggestEmojiView.EmojiImageView) view2).drawable;
                TLRPC$Document document3 = drawable instanceof AnimatedEmojiDrawable ? ((AnimatedEmojiDrawable) drawable).getDocument() : null;
                if (document3 != null) {
                    open(document3, null, MessageObject.findAnimatedEmojiEmoticon(document3, null, Integer.valueOf(this.currentAccount)), null, null, i, false, null, resourcesProvider);
                }
            }
            if (z && z2) {
                this.currentPreviewCell.performHapticFeedback(0, 2);
                ContentPreviewViewerDelegate contentPreviewViewerDelegate5 = this.delegate;
                if (contentPreviewViewerDelegate5 != null) {
                    contentPreviewViewerDelegate5.resetTouch();
                    return;
                }
                return;
            }
        }
        z2 = false;
        if (z) {
        }
    }

    public void setParentActivity(Activity activity) {
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.centerImage.setCurrentAccount(i);
        this.centerImage.setLayerNum(Integer.MAX_VALUE);
        this.effectImage.setCurrentAccount(this.currentAccount);
        this.effectImage.setLayerNum(Integer.MAX_VALUE);
        if (this.parentActivity == activity) {
            return;
        }
        this.parentActivity = activity;
        this.slideUpDrawable = activity.getResources().getDrawable(C3417R.C3419drawable.preview_arrow);
        FrameLayout frameLayout = new FrameLayout(activity);
        this.windowView = frameLayout;
        frameLayout.setFocusable(true);
        this.windowView.setFocusableInTouchMode(true);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            this.windowView.setFitsSystemWindows(true);
            this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    WindowInsets lambda$setParentActivity$4;
                    lambda$setParentActivity$4 = ContentPreviewViewer.this.lambda$setParentActivity$4(view, windowInsets);
                    return lambda$setParentActivity$4;
                }
            });
        }
        FrameLayoutDrawer frameLayoutDrawer = new FrameLayoutDrawer(activity) { // from class: org.telegram.ui.ContentPreviewViewer.3
            {
                ContentPreviewViewer.this = this;
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                ContentPreviewViewer.this.centerImage.onAttachedToWindow();
                ContentPreviewViewer.this.effectImage.onAttachedToWindow();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                ContentPreviewViewer.this.centerImage.onDetachedFromWindow();
                ContentPreviewViewer.this.effectImage.onDetachedFromWindow();
            }
        };
        this.containerView = frameLayoutDrawer;
        frameLayoutDrawer.setFocusable(false);
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1, 51));
        this.containerView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$setParentActivity$5;
                lambda$setParentActivity$5 = ContentPreviewViewer.this.lambda$setParentActivity$5(view, motionEvent);
                return lambda$setParentActivity$5;
            }
        });
        MessagesController.getInstance(this.currentAccount);
        this.keyboardHeight = MessagesController.getGlobalEmojiSettings().getInt("kbd_height", AndroidUtilities.m54dp(200));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 48;
        layoutParams.type = 99;
        if (i2 >= 21) {
            layoutParams.flags = -2147417848;
        } else {
            layoutParams.flags = 8;
        }
        this.centerImage.setAspectFit(true);
        this.centerImage.setInvalidateAll(true);
        this.centerImage.setParentView(this.containerView);
        this.effectImage.setAspectFit(true);
        this.effectImage.setInvalidateAll(true);
        this.effectImage.setParentView(this.containerView);
    }

    public /* synthetic */ WindowInsets lambda$setParentActivity$4(View view, WindowInsets windowInsets) {
        this.lastInsets = windowInsets;
        return windowInsets;
    }

    public /* synthetic */ boolean lambda$setParentActivity$5(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 6 || motionEvent.getAction() == 3) {
            close();
        }
        return true;
    }

    public void open(TLRPC$Document tLRPC$Document, SendMessagesHelper.ImportingSticker importingSticker, String str, String str2, TLRPC$BotInlineResult tLRPC$BotInlineResult, int i, boolean z, Object obj, Theme.ResourcesProvider resourcesProvider, boolean z2, String str3) {
        TLRPC$InputStickerSet tLRPC$InputStickerSet;
        ContentPreviewViewerDelegate contentPreviewViewerDelegate;
        int i2;
        if (this.parentActivity == null || this.windowView == null) {
            return;
        }
        this.showInstantly = z2;
        this.resourcesProvider = resourcesProvider;
        this.isRecentSticker = z;
        this.stickerEmojiLayout = null;
        this.backgroundDrawable.setColor(Theme.getActiveTheme().isDark() ? 1895825408 : 1692853990);
        this.drawEffect = false;
        this.centerImage.setColorFilter(null);
        if (i != 0 && i != 2) {
            if (i != IdFabric$CustomType.CONTENT_TYPE_KIKLIKO && i != IdFabric$CustomType.CONTENT_TYPE_NFT) {
                if (tLRPC$Document != null) {
                    TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
                    TLRPC$VideoSize documentVideoThumb = MessageObject.getDocumentVideoThumb(tLRPC$Document);
                    ImageLocation forDocument = ImageLocation.getForDocument(tLRPC$Document);
                    forDocument.imageType = 2;
                    if (documentVideoThumb != null) {
                        ImageReceiver imageReceiver = this.centerImage;
                        ImageLocation forDocument2 = ImageLocation.getForDocument(documentVideoThumb, tLRPC$Document);
                        ImageLocation forDocument3 = ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document);
                        long j = tLRPC$Document.size;
                        imageReceiver.setImage(forDocument, null, forDocument2, null, forDocument3, "90_90_b", null, j, null, "gif" + tLRPC$Document, 0);
                    } else {
                        ImageReceiver imageReceiver2 = this.centerImage;
                        ImageLocation forDocument4 = ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$Document);
                        long j2 = tLRPC$Document.size;
                        imageReceiver2.setImage(forDocument, null, forDocument4, "90_90_b", j2, null, "gif" + tLRPC$Document, 0);
                    }
                } else if (tLRPC$BotInlineResult == null || tLRPC$BotInlineResult.content == null) {
                    return;
                } else {
                    TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.thumb;
                    if ((tLRPC$WebDocument instanceof TLRPC$TL_webDocument) && MimeTypes.VIDEO_MP4.equals(tLRPC$WebDocument.mime_type)) {
                        this.centerImage.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(tLRPC$BotInlineResult.content)), null, ImageLocation.getForWebFile(WebFile.createWithWebDocument(tLRPC$BotInlineResult.thumb)), null, ImageLocation.getForWebFile(WebFile.createWithWebDocument(tLRPC$BotInlineResult.thumb)), "90_90_b", null, tLRPC$BotInlineResult.content.size, null, "gif" + tLRPC$BotInlineResult, 1);
                    } else {
                        this.centerImage.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(tLRPC$BotInlineResult.content)), null, ImageLocation.getForWebFile(WebFile.createWithWebDocument(tLRPC$BotInlineResult.thumb)), "90_90_b", tLRPC$BotInlineResult.content.size, null, "gif" + tLRPC$BotInlineResult, 1);
                    }
                }
            }
            if (i == IdFabric$CustomType.CONTENT_TYPE_NFT) {
                this.centerImage.setImage(ImageLocation.getForPath(str3), null, null, "90_90_b", null, 1);
            }
            AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
            if (z2) {
                AndroidUtilities.runOnUIThread(this.showSheetRunnable, 100L);
            } else {
                AndroidUtilities.runOnUIThread(this.showSheetRunnable, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
        } else if (tLRPC$Document == null && importingSticker == null) {
            return;
        } else {
            if (textPaint == null) {
                TextPaint textPaint2 = new TextPaint(1);
                textPaint = textPaint2;
                textPaint2.setTextSize(AndroidUtilities.m54dp(24));
            }
            this.effectImage.clearImage();
            this.drawEffect = false;
            if (tLRPC$Document != null) {
                int i3 = 0;
                while (true) {
                    if (i3 >= tLRPC$Document.attributes.size()) {
                        tLRPC$InputStickerSet = null;
                        break;
                    }
                    TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i3);
                    if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeSticker) && (tLRPC$InputStickerSet = tLRPC$DocumentAttribute.stickerset) != null) {
                        break;
                    }
                    i3++;
                }
                if (i == 2 && str != null) {
                    this.stickerEmojiLayout = new StaticLayout(Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), AndroidUtilities.m54dp(24), false), textPaint, AndroidUtilities.m54dp(500), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
                if ((tLRPC$InputStickerSet != null || i == 2) && ((contentPreviewViewerDelegate = this.delegate) == null || contentPreviewViewerDelegate.needMenu())) {
                    AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                    if (z2) {
                        AndroidUtilities.runOnUIThread(this.showSheetRunnable, 100L);
                    } else {
                        AndroidUtilities.runOnUIThread(this.showSheetRunnable, 1300L);
                    }
                }
                this.currentStickerSet = tLRPC$InputStickerSet;
                TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
                if (MessageObject.isVideoStickerDocument(tLRPC$Document)) {
                    this.centerImage.setImage(ImageLocation.getForDocument(tLRPC$Document), null, ImageLocation.getForDocument(closestPhotoSizeWithSize2, tLRPC$Document), null, null, 0L, "webp", this.currentStickerSet, 1);
                } else {
                    this.centerImage.setImage(ImageLocation.getForDocument(tLRPC$Document), (String) null, ImageLocation.getForDocument(closestPhotoSizeWithSize2, tLRPC$Document), (String) null, "webp", this.currentStickerSet, 1);
                    if (MessageObject.isPremiumSticker(tLRPC$Document)) {
                        this.drawEffect = true;
                        this.effectImage.setImage(ImageLocation.getForDocument(MessageObject.getPremiumStickerAnimation(tLRPC$Document), tLRPC$Document), (String) null, (ImageLocation) null, (String) null, "tgs", this.currentStickerSet, 1);
                    }
                }
                if (MessageObject.isTextColorEmoji(tLRPC$Document)) {
                    this.centerImage.setColorFilter(Theme.chat_animatedEmojiTextColorFilter);
                }
                if (this.stickerEmojiLayout == null) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= tLRPC$Document.attributes.size()) {
                            break;
                        }
                        TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = tLRPC$Document.attributes.get(i4);
                        if ((tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeSticker) && !TextUtils.isEmpty(tLRPC$DocumentAttribute2.alt)) {
                            this.stickerEmojiLayout = new StaticLayout(Emoji.replaceEmoji(tLRPC$DocumentAttribute2.alt, textPaint.getFontMetricsInt(), AndroidUtilities.m54dp(24), false), textPaint, AndroidUtilities.m54dp(500), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                            break;
                        }
                        i4++;
                    }
                }
            } else if (importingSticker != null) {
                this.centerImage.setImage(importingSticker.path, null, null, importingSticker.animated ? "tgs" : null, 0L);
                if (str != null) {
                    this.stickerEmojiLayout = new StaticLayout(Emoji.replaceEmoji(str, textPaint.getFontMetricsInt(), AndroidUtilities.m54dp(24), false), textPaint, AndroidUtilities.m54dp(500), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                }
                if (this.delegate.needMenu()) {
                    AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
                    if (z2) {
                        AndroidUtilities.runOnUIThread(this.showSheetRunnable, 100L);
                    } else {
                        AndroidUtilities.runOnUIThread(this.showSheetRunnable, 1300L);
                    }
                }
            }
        }
        if (this.centerImage.getLottieAnimation() != null) {
            i2 = 0;
            this.centerImage.getLottieAnimation().setCurrentFrame(0);
        } else {
            i2 = 0;
        }
        if (this.drawEffect && this.effectImage.getLottieAnimation() != null) {
            this.effectImage.getLottieAnimation().setCurrentFrame(i2);
        }
        this.currentContentType = i;
        this.currentDocument = tLRPC$Document;
        this.importingSticker = importingSticker;
        this.currentQuery = str2;
        this.inlineResult = tLRPC$BotInlineResult;
        this.parentObject = obj;
        this.resourcesProvider = resourcesProvider;
        this.containerView.invalidate();
        if (this.isVisible) {
            return;
        }
        AndroidUtilities.lockOrientation(this.parentActivity);
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
            }
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        ((WindowManager) this.parentActivity.getSystemService("window")).addView(this.windowView, this.windowLayoutParams);
        this.isVisible = true;
        this.showProgress = BitmapDescriptorFactory.HUE_RED;
        this.lastTouchY = -10000.0f;
        this.currentMoveYProgress = BitmapDescriptorFactory.HUE_RED;
        this.finalMoveY = BitmapDescriptorFactory.HUE_RED;
        this.currentMoveY = BitmapDescriptorFactory.HUE_RED;
        this.moveY = BitmapDescriptorFactory.HUE_RED;
        this.lastUpdateTime = System.currentTimeMillis();
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.stopAllHeavyOperations, 8);
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void closeWithMenu() {
        this.menuVisible = false;
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
            this.popupWindow = null;
        }
        close();
    }

    public void close() {
        if (this.parentActivity == null || this.menuVisible) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
        this.showProgress = 1.0f;
        this.lastUpdateTime = System.currentTimeMillis();
        this.containerView.invalidate();
        this.kiklikoGif = null;
        this.kiklikoVideoFile = null;
        this.nftToken = null;
        this.currentDocument = null;
        this.currentStickerSet = null;
        this.currentQuery = null;
        this.delegate = null;
        this.isVisible = false;
        UnlockPremiumView unlockPremiumView = this.unlockPremiumView;
        if (unlockPremiumView != null) {
            unlockPremiumView.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationY(AndroidUtilities.m54dp(56)).setDuration(150L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.startAllHeavyOperations, 8);
    }

    public void destroy() {
        releasePlayer();
        this.kiklikoGif = null;
        this.kiklikoVideoFile = null;
        this.nftToken = null;
        this.isVisible = false;
        this.delegate = null;
        this.currentDocument = null;
        this.currentQuery = null;
        this.currentStickerSet = null;
        if (this.parentActivity == null || this.windowView == null) {
            return;
        }
        Bitmap bitmap = this.blurrBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.blurrBitmap = null;
        }
        this.blurProgress = BitmapDescriptorFactory.HUE_RED;
        this.menuVisible = false;
        try {
            if (this.windowView.getParent() != null) {
                ((WindowManager) this.parentActivity.getSystemService("window")).removeViewImmediate(this.windowView);
            }
            this.windowView = null;
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        Instance = null;
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.startAllHeavyOperations, 8);
    }

    private float rubberYPoisition(float f, float f2) {
        return (-((1.0f - (1.0f / (((Math.abs(f) * 0.55f) / f2) + 1.0f))) * f2)) * (f >= BitmapDescriptorFactory.HUE_RED ? -1.0f : 1.0f);
    }

    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        float min;
        int i3;
        Drawable drawable;
        WindowInsets windowInsets;
        float f;
        if (this.containerView == null || this.backgroundDrawable == null) {
            return;
        }
        if (this.menuVisible && this.blurrBitmap == null) {
            prepareBlurBitmap();
        }
        if (this.blurrBitmap != null) {
            boolean z = this.menuVisible;
            if (z) {
                float f2 = this.blurProgress;
                if (f2 != 1.0f) {
                    float f3 = f2 + 0.13333334f;
                    this.blurProgress = f3;
                    if (f3 > 1.0f) {
                        this.blurProgress = 1.0f;
                    }
                    this.containerView.invalidate();
                    f = this.blurProgress;
                    if (f != BitmapDescriptorFactory.HUE_RED && this.blurrBitmap != null) {
                        this.paint.setAlpha((int) (f * 255.0f));
                        canvas.save();
                        canvas.scale(12.0f, 12.0f);
                        canvas.drawBitmap(this.blurrBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.paint);
                        canvas.restore();
                    }
                }
            }
            if (!z) {
                float f4 = this.blurProgress;
                if (f4 != BitmapDescriptorFactory.HUE_RED) {
                    float f5 = f4 - 0.13333334f;
                    this.blurProgress = f5;
                    if (f5 < BitmapDescriptorFactory.HUE_RED) {
                        this.blurProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                    this.containerView.invalidate();
                }
            }
            f = this.blurProgress;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                this.paint.setAlpha((int) (f * 255.0f));
                canvas.save();
                canvas.scale(12.0f, 12.0f);
                canvas.drawBitmap(this.blurrBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.paint);
                canvas.restore();
            }
        }
        this.backgroundDrawable.setAlpha((int) (this.showProgress * 180.0f));
        this.backgroundDrawable.setBounds(0, 0, this.containerView.getWidth(), this.containerView.getHeight());
        this.backgroundDrawable.draw(canvas);
        canvas.save();
        if (Build.VERSION.SDK_INT >= 21 && (windowInsets = this.lastInsets) != null) {
            i2 = windowInsets.getStableInsetBottom() + this.lastInsets.getStableInsetTop();
            i = this.lastInsets.getStableInsetTop();
        } else {
            i = AndroidUtilities.statusBarHeight;
            i2 = 0;
        }
        if (this.currentContentType == 1) {
            i3 = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - i2) - AndroidUtilities.m55dp(40.0f);
        } else {
            if (this.drawEffect) {
                min = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - i2) - AndroidUtilities.dpf2(40.0f);
            } else {
                min = Math.min(this.containerView.getWidth(), this.containerView.getHeight() - i2) / 1.8f;
            }
            i3 = (int) min;
        }
        float max = Math.max((i3 / 2) + i + (this.stickerEmojiLayout != null ? AndroidUtilities.m54dp(40) : 0), ((this.containerView.getHeight() - i2) - this.keyboardHeight) / 2);
        if (this.drawEffect) {
            max += AndroidUtilities.m54dp(40);
        }
        canvas.translate(this.containerView.getWidth() / 2, this.moveY + max);
        float f6 = this.showProgress;
        float f7 = (f6 * 0.8f) / 0.8f;
        int i4 = (int) (i3 * f7);
        if (this.drawEffect) {
            float f8 = i4;
            float f9 = 0.6669f * f8;
            this.centerImage.setAlpha(f6);
            float f10 = f8 - f9;
            float f11 = f8 / 2.0f;
            this.centerImage.setImageCoords((f10 - f11) - (0.0546875f * f8), (f10 / 2.0f) - f11, f9, f9);
            this.centerImage.draw(canvas);
            this.effectImage.setAlpha(this.showProgress);
            float f12 = (-i4) / 2.0f;
            this.effectImage.setImageCoords(f12, f12, f8, f8);
            this.effectImage.draw(canvas);
        } else {
            this.centerImage.setAlpha(f6);
            float f13 = (-i4) / 2.0f;
            float f14 = i4;
            this.centerImage.setImageCoords(f13, f13, f14, f14);
            this.centerImage.draw(canvas);
        }
        if (this.kiklikoPlayerLayout != null) {
            canvas.scale(f7, f7);
            canvas.translate((-this.kiklikoVideoTextureView.getMeasuredWidth()) / 2, (-this.kiklikoVideoTextureView.getMeasuredHeight()) / 2);
            this.kiklikoPlayerLayout.setAlpha(this.showProgress);
            this.kiklikoPlayerLayout.draw(canvas);
        }
        if (!this.showInstantly && this.currentContentType == 1 && (drawable = this.slideUpDrawable) != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = this.slideUpDrawable.getIntrinsicHeight();
            int m55dp = (int) (this.centerImage.getDrawRegion().top - AndroidUtilities.m55dp(((this.currentMoveY / AndroidUtilities.m54dp(60)) * 6.0f) + 17.0f));
            this.slideUpDrawable.setAlpha((int) ((1.0f - this.currentMoveYProgress) * 255.0f));
            this.slideUpDrawable.setBounds((-intrinsicWidth) / 2, (-intrinsicHeight) + m55dp, intrinsicWidth / 2, m55dp);
            this.slideUpDrawable.draw(canvas);
        }
        if (this.stickerEmojiLayout != null) {
            if (this.drawEffect) {
                canvas.translate(-AndroidUtilities.m54dp(250), ((-this.effectImage.getImageHeight()) / 2.0f) - AndroidUtilities.m54dp(30));
            } else {
                canvas.translate(-AndroidUtilities.m54dp(250), ((-this.centerImage.getImageHeight()) / 2.0f) - AndroidUtilities.m54dp(30));
            }
            textPaint.setAlpha((int) (this.showProgress * 255.0f));
            this.stickerEmojiLayout.draw(canvas);
        }
        canvas.restore();
        if (this.isVisible) {
            if (this.showProgress != 1.0f) {
                long currentTimeMillis = System.currentTimeMillis();
                this.lastUpdateTime = currentTimeMillis;
                this.showProgress += ((float) (currentTimeMillis - this.lastUpdateTime)) / 120.0f;
                this.containerView.invalidate();
                if (this.showProgress > 1.0f) {
                    this.showProgress = 1.0f;
                }
            }
        } else if (this.showProgress != BitmapDescriptorFactory.HUE_RED) {
            long currentTimeMillis2 = System.currentTimeMillis();
            this.lastUpdateTime = currentTimeMillis2;
            this.showProgress -= ((float) (currentTimeMillis2 - this.lastUpdateTime)) / 120.0f;
            this.containerView.invalidate();
            if (this.showProgress < BitmapDescriptorFactory.HUE_RED) {
                this.showProgress = BitmapDescriptorFactory.HUE_RED;
            }
            if (this.showProgress == BitmapDescriptorFactory.HUE_RED) {
                this.centerImage.setImageBitmap((Drawable) null);
                AndroidUtilities.unlockOrientation(this.parentActivity);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ContentPreviewViewer$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContentPreviewViewer.this.lambda$onDraw$6();
                    }
                });
                Bitmap bitmap = this.blurrBitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                    this.blurrBitmap = null;
                }
                AndroidUtilities.updateViewVisibilityAnimated(this.unlockPremiumView, false, 1.0f, false);
                this.blurProgress = BitmapDescriptorFactory.HUE_RED;
                try {
                    releasePlayer();
                    if (this.windowView.getParent() != null) {
                        ((WindowManager) this.parentActivity.getSystemService("window")).removeView(this.windowView);
                    }
                } catch (Exception e) {
                    FileLog.m49e(e);
                }
            }
        }
    }

    public /* synthetic */ void lambda$onDraw$6() {
        this.centerImage.setImageBitmap((Bitmap) null);
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    private void prepareBlurBitmap() {
        Activity activity = this.parentActivity;
        if (activity == null) {
            return;
        }
        View decorView = activity.getWindow().getDecorView();
        int measuredWidth = (int) (decorView.getMeasuredWidth() / 12.0f);
        int measuredHeight = (int) (decorView.getMeasuredHeight() / 12.0f);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(0.083333336f, 0.083333336f);
        canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        decorView.draw(canvas);
        Activity activity2 = this.parentActivity;
        if ((activity2 instanceof LaunchActivity) && ((LaunchActivity) activity2).getActionBarLayout().getLastFragment().getVisibleDialog() != null) {
            ((LaunchActivity) this.parentActivity).getActionBarLayout().getLastFragment().getVisibleDialog().getWindow().getDecorView().draw(canvas);
        }
        Utilities.stackBlurBitmap(createBitmap, Math.max(10, Math.max(measuredWidth, measuredHeight) / 180));
        this.blurrBitmap = createBitmap;
    }

    public boolean showMenuFor(View view) {
        if (view instanceof StickerEmojiCell) {
            Activity findActivity = AndroidUtilities.findActivity(view.getContext());
            if (findActivity == null) {
                return true;
            }
            setParentActivity(findActivity);
            StickerEmojiCell stickerEmojiCell = (StickerEmojiCell) view;
            TLRPC$Document sticker = stickerEmojiCell.getSticker();
            SendMessagesHelper.ImportingSticker stickerPath = stickerEmojiCell.getStickerPath();
            String findAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon(stickerEmojiCell.getSticker(), null, Integer.valueOf(this.currentAccount));
            ContentPreviewViewerDelegate contentPreviewViewerDelegate = this.delegate;
            open(sticker, stickerPath, findAnimatedEmojiEmoticon, contentPreviewViewerDelegate != null ? contentPreviewViewerDelegate.getQuery(false) : null, null, 0, stickerEmojiCell.isRecent(), stickerEmojiCell.getParentObject(), this.resourcesProvider);
            AndroidUtilities.cancelRunOnUIThread(this.showSheetRunnable);
            AndroidUtilities.runOnUIThread(this.showSheetRunnable, 16L);
            stickerEmojiCell.setScaled(true);
            return true;
        }
        return false;
    }
}
