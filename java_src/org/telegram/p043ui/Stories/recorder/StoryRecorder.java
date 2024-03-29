package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.WindowInsetsCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraView;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.AvatarSpan;
import org.telegram.p043ui.Cells.ShareDialogCell;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.FilterGLThread;
import org.telegram.p043ui.Components.FilterShaders;
import org.telegram.p043ui.Components.GestureDetectorFixDoubleTap;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Paint.RenderView;
import org.telegram.p043ui.Components.Paint.Views.EntitiesContainerView;
import org.telegram.p043ui.Components.Paint.Views.EntityView;
import org.telegram.p043ui.Components.Paint.Views.MessageEntityView;
import org.telegram.p043ui.Components.Paint.Views.PhotoView;
import org.telegram.p043ui.Components.Paint.Views.RoundView;
import org.telegram.p043ui.Components.PhotoFilterBlurControl;
import org.telegram.p043ui.Components.PhotoFilterCurvesControl;
import org.telegram.p043ui.Components.PhotoFilterView;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.TextStyleSpan;
import org.telegram.p043ui.Components.ThanosEffect;
import org.telegram.p043ui.Components.URLSpanUserMention;
import org.telegram.p043ui.Components.VideoEditTextureView;
import org.telegram.p043ui.Components.ZoomControlView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.Stories.DarkThemeResourceProvider;
import org.telegram.p043ui.Stories.DialogStoriesCell;
import org.telegram.p043ui.Stories.PeerStoriesView;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.p043ui.Stories.StoryWaveEffectView;
import org.telegram.p043ui.Stories.recorder.DownloadButton;
import org.telegram.p043ui.Stories.recorder.FlashViews;
import org.telegram.p043ui.Stories.recorder.PreviewButtons;
import org.telegram.p043ui.Stories.recorder.PreviewView;
import org.telegram.p043ui.Stories.recorder.RecordControl;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
import org.telegram.p043ui.WrappedResourceProvider;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_inputPeerSelf;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder */
/* loaded from: classes6.dex */
public class StoryRecorder implements NotificationCenter.NotificationCenterDelegate {
    private static StoryRecorder instance;
    private LinearLayout actionBarButtons;
    private FrameLayout actionBarContainer;
    private final Activity activity;
    private Runnable afterPlayerAwait;
    private boolean animatedRecording;
    private Runnable audioGrantedCallback;
    private FlashViews.ImageViewInvertable backButton;
    private BlurringShader.BlurManager blurManager;
    private HintView2 cameraHint;
    private DualCameraView cameraView;
    private ImageView cameraViewThumb;
    private float cameraZoom;
    private FrameLayout captionContainer;
    private CaptionStory captionEdit;
    private View captionEditOverlay;
    private View changeDayNightView;
    private ValueAnimator changeDayNightViewAnimator;
    private float changeDayNightViewProgress;
    private ClosingViewProvider closingSourceProvider;
    private ContainerView containerView;
    private ValueAnimator containerViewBackAnimator;
    private FrameLayout controlContainer;
    private final int currentAccount;
    private RoundVideoRecorder currentRoundRecorder;
    private float dismissProgress;
    private DownloadButton downloadButton;
    private DraftSavedHint draftSavedHint;
    private ToggleButton dualButton;
    private HintView2 dualHint;
    private AnimatorSet editModeAnimator;
    private ToggleButton2 flashButton;
    private int flashButtonResId;
    private FlashViews flashViews;
    private boolean forceBackgroundVisible;
    private boolean fromGallery;
    private float fromRounding;
    private SourceView fromSourceView;
    private ArrayList<String> frontfaceFlashModes;
    private Float frozenDismissProgress;
    private boolean galleryClosing;
    private Runnable galleryLayouted;
    private GalleryListView galleryListView;
    private Boolean galleryListViewOpening;
    private ValueAnimator galleryOpenCloseAnimator;
    private SpringAnimation galleryOpenCloseSpringAnimator;
    private HintTextView hintTextView;
    private int insetBottom;
    private int insetLeft;
    private int insetRight;
    private int insetTop;
    private boolean isBackgroundVisible;
    private boolean isDark;
    private boolean isShown;
    private Parcelable lastGalleryScrollPosition;
    private MediaController.AlbumEntry lastGallerySelectedAlbum;
    private PhotoVideoSwitcherView modeSwitcherView;
    private RLottieImageView muteButton;
    private RLottieDrawable muteButtonDrawable;
    private HintView2 muteHint;
    private FrameLayout navbarContainer;
    private boolean noCameraPermission;
    private Runnable onCloseListener;
    private Utilities.Callback4<Long, Runnable, Boolean, Long> onClosePrepareListener;
    private Runnable onFullyOpenListener;
    private ValueAnimator openCloseAnimator;
    private float openProgress;
    private int openType;
    private StoryEntry outputEntry;
    private File outputFile;
    private AnimatorSet pageAnimator;
    private PaintView paintView;
    private View paintViewEntitiesView;
    private View paintViewRenderInputView;
    private RenderView paintViewRenderView;
    private View paintViewSelectionContainerView;
    private View paintViewTextDim;
    private PhotoFilterView.EnhanceView photoFilterEnhanceView;
    private PhotoFilterView photoFilterView;
    private PhotoFilterBlurControl photoFilterViewBlurControl;
    private PhotoFilterCurvesControl photoFilterViewCurvesControl;
    private TextureView photoFilterViewTextureView;
    private PlayPauseButton playButton;
    private boolean prepareClosing;
    private boolean previewAlreadySet;
    private PreviewButtons previewButtons;
    private FrameLayout previewContainer;
    private int previewH;
    private PreviewHighlightView previewHighlight;
    private Touchable previewTouchable;
    private PreviewView previewView;
    private int previewW;
    private StoryPrivacyBottomSheet privacySheet;
    private RecordControl recordControl;
    private AnimatorSet recordingAnimator;
    private boolean requestedCameraPermission;
    private HintView2 savedDualHint;
    private boolean scrollingX;
    private boolean scrollingY;
    long selectedDialogId;
    private boolean showSavedDraftHint;
    private boolean shownLimitReached;
    private ThanosEffect thanosEffect;
    private ImageView themeButton;
    private RLottieDrawable themeButtonDrawable;
    private StoryThemeSheet themeSheet;
    private TimelineView timelineView;
    private SimpleTextView titleTextView;
    private TrashView trash;
    private int underControls;
    private boolean underStatusBar;
    private boolean videoError;
    private PreviewView.TextureViewHolder videoTextureHolder;
    private VideoTimeView videoTimeView;
    private FrameLayout videoTimelineContainerView;
    private VideoTimerView videoTimerView;
    private boolean wasGalleryOpen;
    private boolean wasSend;
    private StoryWaveEffectView waveEffect;
    private Runnable whenOpenDone;
    private final WindowManager.LayoutParams windowLayoutParams;
    WindowManager windowManager;
    private WindowView windowView;
    private AnimatorSet zoomControlAnimation;
    private Runnable zoomControlHideRunnable;
    private ZoomControlView zoomControlView;
    private final Theme.ResourcesProvider resourcesProvider = new DarkThemeResourceProvider();
    private long wasSendPeer = 0;
    private final RectF fromRect = new RectF();
    private boolean canChangePeer = true;
    private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    private final RectF rectF = new RectF();
    private final RectF fullRectF = new RectF();
    private final Path clipPath = new Path();
    private final Rect rect = new Rect();
    private int currentPage = 0;
    private int currentEditMode = -1;
    private boolean isVideo = false;
    private boolean takingPhoto = false;
    private boolean takingVideo = false;
    private boolean stoppingTakingVideo = false;
    private boolean awaitingPlayer = false;
    private int shiftDp = -3;
    private boolean preparingUpload = false;
    private final RecordControl.Delegate recordControlDelegate = new C745412();
    private boolean videoTimerShown = true;
    private boolean applyContainerViewTranslation2 = true;
    private int frontfaceFlashMode = -1;

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$ClosingViewProvider */
    /* loaded from: classes6.dex */
    public interface ClosingViewProvider {
        SourceView getView(long j);

        void preLayout(long j, Runnable runnable);
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$Touchable */
    /* loaded from: classes6.dex */
    public interface Touchable {
        boolean onTouch(MotionEvent motionEvent);
    }

    public static /* synthetic */ boolean lambda$toggleTheme$71(View view, MotionEvent motionEvent) {
        return true;
    }

    static /* synthetic */ float access$3516(StoryRecorder storyRecorder, float f) {
        float f2 = storyRecorder.cameraZoom + f;
        storyRecorder.cameraZoom = f2;
        return f2;
    }

    public static StoryRecorder getInstance(Activity activity, int i) {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null && (storyRecorder.activity != activity || storyRecorder.currentAccount != i)) {
            storyRecorder.close(false);
            instance = null;
        }
        if (instance == null) {
            instance = new StoryRecorder(activity, i);
        }
        return instance;
    }

    public static void destroyInstance() {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.close(false);
        }
        instance = null;
    }

    public static boolean isVisible() {
        StoryRecorder storyRecorder = instance;
        return storyRecorder != null && storyRecorder.isShown;
    }

    public StoryRecorder(Activity activity, int i) {
        this.activity = activity;
        this.currentAccount = i;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.format = -3;
        layoutParams.gravity = 51;
        layoutParams.type = 99;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.flags = 134283520;
        if (i2 >= 21) {
            layoutParams.flags = 134283520 | Integer.MIN_VALUE;
        }
        layoutParams.softInputMode = 16;
        this.windowManager = (WindowManager) activity.getSystemService("window");
        initViews();
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView */
    /* loaded from: classes6.dex */
    public static class SourceView {
        Drawable backgroundDrawable;
        ImageReceiver backgroundImageReceiver;
        Paint backgroundPaint;
        boolean hasShadow;
        Drawable iconDrawable;
        int iconSize;
        float rounding;
        View view;
        int type = 0;
        RectF screenRect = new RectF();

        protected void drawAbove(Canvas canvas, float f) {
        }

        protected void hide() {
            throw null;
        }

        protected void show() {
            throw null;
        }

        public static SourceView fromFloatingButton(FrameLayout frameLayout) {
            return fromFloatingButton(frameLayout, false);
        }

        public static SourceView fromAvatarImage(final ProfileActivity.AvatarImageView avatarImageView) {
            if (avatarImageView == null || avatarImageView.getRootView() == null) {
                return null;
            }
            float scaleX = ((View) avatarImageView.getParent()).getScaleX();
            float imageWidth = avatarImageView.getImageReceiver().getImageWidth() * scaleX;
            SourceView sourceView = new SourceView() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.SourceView.1
                @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
                protected void show() {
                    ProfileActivity.AvatarImageView avatarImageView2 = avatarImageView;
                    avatarImageView2.drawAvatar = true;
                    avatarImageView2.invalidate();
                }

                @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
                protected void hide() {
                    ProfileActivity.AvatarImageView avatarImageView2 = avatarImageView;
                    avatarImageView2.drawAvatar = false;
                    avatarImageView2.invalidate();
                }
            };
            int[] iArr = new int[2];
            float[] fArr = new float[2];
            avatarImageView.getRootView().getLocationOnScreen(iArr);
            AndroidUtilities.getViewPositionInParent(avatarImageView, (ViewGroup) avatarImageView.getRootView(), fArr);
            float imageX = iArr[0] + fArr[0] + (avatarImageView.getImageReceiver().getImageX() * scaleX);
            float imageY = iArr[1] + fArr[1] + (avatarImageView.getImageReceiver().getImageY() * scaleX);
            sourceView.screenRect.set(imageX, imageY, imageX + imageWidth, imageWidth + imageY);
            sourceView.backgroundImageReceiver = avatarImageView.getImageReceiver();
            sourceView.rounding = (imageWidth / 2.0f) * 2.0f;
            return sourceView;
        }

        public static SourceView fromStoryViewer(final StoryViewer storyViewer) {
            if (storyViewer == null) {
                return null;
            }
            SourceView sourceView = new SourceView() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.SourceView.2
                @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
                protected void show() {
                    PeerStoriesView currentPeerView = storyViewer.getCurrentPeerView();
                    if (currentPeerView != null) {
                        currentPeerView.animateOut(false);
                    }
                    View view = this.view;
                    if (view != null) {
                        view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        this.view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }
                }

                @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
                protected void hide() {
                    PeerStoriesView currentPeerView = storyViewer.getCurrentPeerView();
                    if (currentPeerView != null) {
                        currentPeerView.animateOut(true);
                    }
                }
            };
            if (storyViewer.getStoryRect(sourceView.screenRect)) {
                sourceView.type = 1;
                sourceView.rounding = AndroidUtilities.m107dp(8);
                PeerStoriesView currentPeerView = storyViewer.getCurrentPeerView();
                if (currentPeerView != null) {
                    sourceView.view = currentPeerView.storyContainer;
                }
                return sourceView;
            }
            return null;
        }

        /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$3 */
        /* loaded from: classes6.dex */
        public class C74853 extends SourceView {
            final /* synthetic */ FrameLayout val$floatingButton;

            C74853(FrameLayout frameLayout) {
                this.val$floatingButton = frameLayout;
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void show() {
                this.val$floatingButton.setVisibility(0);
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void hide() {
                final FrameLayout frameLayout = this.val$floatingButton;
                frameLayout.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        frameLayout.setVisibility(8);
                    }
                });
            }
        }

        public static SourceView fromFloatingButton(FrameLayout frameLayout, boolean z) {
            if (frameLayout == null) {
                return null;
            }
            C74853 c74853 = new C74853(frameLayout);
            int[] iArr = new int[2];
            View childAt = frameLayout.getChildAt(0);
            childAt.getLocationOnScreen(iArr);
            c74853.screenRect.set(iArr[0], iArr[1], iArr[0] + childAt.getWidth(), iArr[1] + childAt.getHeight());
            c74853.hasShadow = true;
            Paint paint = new Paint(1);
            c74853.backgroundPaint = paint;
            paint.setColor(Theme.getColor(Theme.key_chats_actionBackground));
            c74853.iconDrawable = frameLayout.getContext().getResources().getDrawable(z ? C3632R.C3634drawable.ic_ab_other : C3632R.C3634drawable.story_camera).mutate();
            c74853.iconSize = AndroidUtilities.m107dp(56);
            if (z) {
                c74853.iconSize = c74853.iconDrawable.getIntrinsicWidth();
            }
            c74853.rounding = Math.max(c74853.screenRect.width(), c74853.screenRect.height()) / 2.0f;
            return c74853;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$4 */
        /* loaded from: classes6.dex */
        public class C74864 extends SourceView {
            final /* synthetic */ BackupImageView val$imageView;

            C74864(BackupImageView backupImageView) {
                this.val$imageView = backupImageView;
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void show() {
                this.val$imageView.setVisibility(0);
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void hide() {
                final BackupImageView backupImageView = this.val$imageView;
                backupImageView.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        BackupImageView.this.setVisibility(8);
                    }
                });
            }
        }

        public static SourceView fromShareCell(ShareDialogCell shareDialogCell) {
            if (shareDialogCell == null) {
                return null;
            }
            BackupImageView imageView = shareDialogCell.getImageView();
            C74864 c74864 = new C74864(imageView);
            int[] iArr = new int[2];
            imageView.getLocationOnScreen(iArr);
            c74864.screenRect.set(iArr[0], iArr[1], iArr[0] + imageView.getWidth(), iArr[1] + imageView.getHeight());
            c74864.backgroundDrawable = new ShareDialogCell.RepostStoryDrawable(imageView.getContext(), null, false, shareDialogCell.resourcesProvider);
            c74864.rounding = Math.max(c74864.screenRect.width(), c74864.screenRect.height()) / 2.0f;
            return c74864;
        }

        public static SourceView fromStoryCell(DialogStoriesCell.StoryCell storyCell) {
            if (storyCell == null || storyCell.getRootView() == null) {
                return null;
            }
            float imageWidth = storyCell.avatarImage.getImageWidth();
            C74875 c74875 = new C74875(storyCell, imageWidth / 2.0f);
            int[] iArr = new int[2];
            float[] fArr = new float[2];
            storyCell.getRootView().getLocationOnScreen(iArr);
            AndroidUtilities.getViewPositionInParent(storyCell, (ViewGroup) storyCell.getRootView(), fArr);
            float imageX = iArr[0] + fArr[0] + storyCell.avatarImage.getImageX();
            float imageY = iArr[1] + fArr[1] + storyCell.avatarImage.getImageY();
            c74875.screenRect.set(imageX, imageY, imageX + imageWidth, imageWidth + imageY);
            c74875.backgroundImageReceiver = storyCell.avatarImage;
            c74875.rounding = Math.max(c74875.screenRect.width(), c74875.screenRect.height()) / 2.0f;
            return c74875;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$5 */
        /* loaded from: classes6.dex */
        public class C74875 extends SourceView {
            final /* synthetic */ float val$radius;
            final /* synthetic */ DialogStoriesCell.StoryCell val$storyCell;

            C74875(DialogStoriesCell.StoryCell storyCell, float f) {
                this.val$storyCell = storyCell;
                this.val$radius = f;
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void show() {
                DialogStoriesCell.StoryCell storyCell = this.val$storyCell;
                storyCell.drawAvatar = true;
                storyCell.invalidate();
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void hide() {
                final DialogStoriesCell.StoryCell storyCell = this.val$storyCell;
                storyCell.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.SourceView.C74875.lambda$hide$0(DialogStoriesCell.StoryCell.this);
                    }
                });
            }

            public static /* synthetic */ void lambda$hide$0(DialogStoriesCell.StoryCell storyCell) {
                storyCell.drawAvatar = false;
                storyCell.invalidate();
            }

            @Override // org.telegram.p043ui.Stories.recorder.StoryRecorder.SourceView
            protected void drawAbove(Canvas canvas, float f) {
                DialogStoriesCell.StoryCell storyCell = this.val$storyCell;
                float f2 = this.val$radius;
                storyCell.drawPlus(canvas, f2, f2, (float) Math.pow(f, 16.0d));
            }
        }
    }

    public StoryRecorder closeToWhenSent(ClosingViewProvider closingViewProvider) {
        this.closingSourceProvider = closingViewProvider;
        return this;
    }

    public void replaceSourceView(SourceView sourceView) {
        int i = 0;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
        } else {
            this.fromSourceView = null;
            this.openType = 0;
            this.fromRect.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(100), AndroidUtilities.displaySize.x, AndroidUtilities.m107dp(100) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m107dp(8);
        }
        FrameLayout frameLayout = this.previewContainer;
        int i2 = this.openType;
        if (i2 != 1 && i2 != 0) {
            i = -14737633;
        }
        frameLayout.setBackgroundColor(i);
    }

    public void open(SourceView sourceView) {
        open(sourceView, true);
    }

    public void open(SourceView sourceView, boolean z) {
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        int i = 0;
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        this.videoTextureHolder.active = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
        }
        this.cameraViewThumb.setImageDrawable(getCameraThumb());
        StoriesController.StoryLimit checkStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit();
        if (checkStoryLimit != null && checkStoryLimit.active(this.currentAccount)) {
            showLimitReachedSheet(checkStoryLimit, true);
        }
        navigateTo(0, false);
        switchToEditMode(-1, false);
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(100), AndroidUtilities.displaySize.x, AndroidUtilities.m107dp(100) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m107dp(8);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i2 = this.openType;
        if (i2 != 1 && i2 != 0) {
            i = -14737633;
        }
        frameLayout.setBackgroundColor(i);
        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY2(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
        AndroidUtilities.lockOrientation(this.activity, 1);
        animateOpenTo(1.0f, z, new StoryRecorder$$ExternalSyntheticLambda40(this));
        addNotificationObservers();
    }

    public void openEdit(SourceView sourceView, StoryEntry storyEntry, long j, final boolean z) {
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
        }
        this.outputEntry = storyEntry;
        this.isVideo = storyEntry != null && storyEntry.isVideo;
        this.videoTextureHolder.active = false;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(100), AndroidUtilities.displaySize.x, AndroidUtilities.m107dp(100) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m107dp(8);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i = this.openType;
        frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY2(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 != null) {
            this.captionEdit.setText(storyEntry2.caption);
        }
        navigateToPreviewWithPlayerAwait(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$openEdit$0(z);
            }
        }, j);
        navigateTo(1, false);
        switchToEditMode(-1, false);
        this.previewButtons.appear(false, false);
        addNotificationObservers();
    }

    public /* synthetic */ void lambda$openEdit$0(boolean z) {
        animateOpenTo(1.0f, z, new StoryRecorder$$ExternalSyntheticLambda40(this));
        this.previewButtons.appear(true, true);
    }

    public void openForward(SourceView sourceView, StoryEntry storyEntry, long j, final boolean z) {
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
        }
        this.outputEntry = storyEntry;
        StoryPrivacySelector.applySaved(this.currentAccount, storyEntry);
        StoryEntry storyEntry2 = this.outputEntry;
        this.isVideo = storyEntry2 != null && storyEntry2.isVideo;
        this.videoTextureHolder.active = false;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(100), AndroidUtilities.displaySize.x, AndroidUtilities.m107dp(100) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m107dp(8);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i = this.openType;
        frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY2(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry3 = this.outputEntry;
        if (storyEntry3 != null) {
            this.captionEdit.setText(storyEntry3.caption);
        }
        navigateToPreviewWithPlayerAwait(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$openForward$1(z);
            }
        }, j);
        this.previewButtons.appear(true, false);
        navigateTo(1, false);
        switchToEditMode(-1, false);
        addNotificationObservers();
    }

    public /* synthetic */ void lambda$openForward$1(boolean z) {
        animateOpenTo(1.0f, z, new StoryRecorder$$ExternalSyntheticLambda40(this));
    }

    public void openRepost(SourceView sourceView, StoryEntry storyEntry) {
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
        }
        this.outputEntry = storyEntry;
        StoryPrivacySelector.applySaved(this.currentAccount, storyEntry);
        StoryEntry storyEntry2 = this.outputEntry;
        boolean z = storyEntry2 != null && storyEntry2.isVideo;
        this.isVideo = z;
        this.videoTextureHolder.active = z;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(100), AndroidUtilities.displaySize.x, AndroidUtilities.m107dp(100) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m107dp(8);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i = this.openType;
        frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setTranslationY2(BitmapDescriptorFactory.HUE_RED);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = BitmapDescriptorFactory.HUE_RED;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry3 = this.outputEntry;
        if (storyEntry3 != null) {
            this.captionEdit.setText(storyEntry3.caption);
        }
        this.previewButtons.appear(true, false);
        navigateTo(1, false);
        switchToEditMode(-1, false);
        animateOpenTo(1.0f, true, new StoryRecorder$$ExternalSyntheticLambda40(this));
        addNotificationObservers();
    }

    public void close(final boolean z) {
        PreviewView previewView;
        if (this.isShown) {
            StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
            if (storyPrivacyBottomSheet != null) {
                storyPrivacyBottomSheet.dismiss();
                this.privacySheet = null;
            }
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry != null && !storyEntry.isEditSaved) {
                if ((this.wasSend && storyEntry.isEdit) || storyEntry.draftId != 0) {
                    storyEntry.editedMedia = false;
                }
                storyEntry.destroy(false);
            }
            this.outputEntry = null;
            Utilities.Callback4<Long, Runnable, Boolean, Long> callback4 = this.onClosePrepareListener;
            if (callback4 != null && (previewView = this.previewView) != null) {
                if (this.prepareClosing) {
                    return;
                }
                this.prepareClosing = true;
                callback4.run(Long.valueOf(previewView.release()), new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda58
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$close$2(z);
                    }
                }, Boolean.valueOf(this.wasSend), Long.valueOf(this.wasSendPeer));
                return;
            }
            PreviewView previewView2 = this.previewView;
            if (previewView2 != null && !z) {
                previewView2.set(null);
            }
            animateOpenTo(BitmapDescriptorFactory.HUE_RED, z, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.onCloseDone();
                }
            });
            int i = this.openType;
            if (i == 1 || i == 0) {
                this.windowView.setBackgroundColor(0);
                this.previewButtons.appear(false, true);
            }
            removeNotificationObservers();
        }
    }

    public /* synthetic */ void lambda$close$2(boolean z) {
        this.onClosePrepareListener = null;
        this.prepareClosing = false;
        close(z);
    }

    private void animateOpenTo(final float f, boolean z, final Runnable runnable) {
        ValueAnimator valueAnimator = this.openCloseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.openCloseAnimator = null;
        }
        if (z) {
            this.notificationsLocker.lock();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
            this.frozenDismissProgress = Float.valueOf(this.dismissProgress);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.openProgress, f);
            this.openCloseAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StoryRecorder.this.lambda$animateOpenTo$3(valueAnimator2);
                }
            });
            this.openCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.1
                {
                    StoryRecorder.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryRecorder.this.frozenDismissProgress = null;
                    StoryRecorder.this.openProgress = f;
                    StoryRecorder.this.applyOpenProgress();
                    StoryRecorder.this.containerView.invalidate();
                    StoryRecorder.this.windowView.invalidate();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                    if (StoryRecorder.this.fromSourceView != null) {
                        StoryWaveEffectView unused = StoryRecorder.this.waveEffect;
                    }
                    StoryRecorder.this.notificationsLocker.unlock();
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                    NotificationCenter.getGlobalInstance().runDelayedNotifications();
                    StoryRecorder.this.checkBackgroundVisibility();
                    if (StoryRecorder.this.onFullyOpenListener != null) {
                        StoryRecorder.this.onFullyOpenListener.run();
                        StoryRecorder.this.onFullyOpenListener = null;
                    }
                    StoryRecorder.this.containerView.invalidate();
                    StoryRecorder.this.previewContainer.invalidate();
                }
            });
            if (f < 1.0f && this.wasSend) {
                this.openCloseAnimator.setDuration(250L);
                this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else if (f > BitmapDescriptorFactory.HUE_RED || this.containerView.getTranslationY1() < AndroidUtilities.m107dp(20)) {
                this.openCloseAnimator.setDuration(300L);
                this.openCloseAnimator.setInterpolator(new FastOutSlowInInterpolator());
            } else {
                this.openCloseAnimator.setDuration(400L);
                this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.openCloseAnimator.start();
            return;
        }
        this.frozenDismissProgress = null;
        this.openProgress = f;
        applyOpenProgress();
        this.containerView.invalidate();
        this.windowView.invalidate();
        if (runnable != null) {
            runnable.run();
        }
        checkBackgroundVisibility();
    }

    public /* synthetic */ void lambda$animateOpenTo$3(ValueAnimator valueAnimator) {
        this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkBackgroundVisibility();
        this.containerView.invalidate();
        this.windowView.invalidate();
    }

    public void onOpenDone() {
        this.isShown = true;
        this.wasSend = false;
        if (this.openType == 1) {
            this.previewContainer.setAlpha(1.0f);
            this.previewContainer.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.previewContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.actionBarContainer.setAlpha(1.0f);
            this.controlContainer.setAlpha(1.0f);
            this.windowView.setBackgroundColor(-16777216);
        }
        Runnable runnable = this.whenOpenDone;
        if (runnable != null) {
            runnable.run();
            this.whenOpenDone = null;
        } else {
            onResumeInternal();
        }
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null && storyEntry.isRepost) {
            createPhotoPaintView();
            hidePhotoPaintView();
            createFilterPhotoView();
        } else if (storyEntry == null || !storyEntry.isRepostMessage) {
        } else {
            if (storyEntry.isVideo) {
                this.previewView.setupVideoPlayer(storyEntry, null, 0L);
            }
            createFilterPhotoView();
        }
    }

    public void onCloseDone() {
        this.isShown = false;
        AndroidUtilities.unlockOrientation(this.activity);
        if (this.cameraView != null) {
            if (this.takingVideo) {
                CameraController.getInstance().stopVideoRecording(this.cameraView.getCameraSession(), false);
            }
            destroyCameraView(false);
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.set(null);
        }
        destroyPhotoPaintView();
        destroyPhotoFilterView();
        File file = this.outputFile;
        if (file != null && !this.wasSend) {
            try {
                file.delete();
            } catch (Exception unused) {
            }
        }
        this.outputFile = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$onCloseDone$4();
            }
        }, 16L);
        SourceView sourceView = this.fromSourceView;
        if (sourceView != null) {
            sourceView.show();
        }
        if (this.whenOpenDone != null) {
            this.whenOpenDone = null;
        }
        this.lastGalleryScrollPosition = null;
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.close(false);
        }
        instance = null;
        Runnable runnable = this.onCloseListener;
        if (runnable != null) {
            runnable.run();
            this.onCloseListener = null;
        }
        WindowView windowView = this.windowView;
        if (windowView != null) {
            Bulletin.removeDelegate(windowView);
        }
        FrameLayout frameLayout = this.captionContainer;
        if (frameLayout != null) {
            Bulletin.removeDelegate(frameLayout);
        }
    }

    public /* synthetic */ void lambda$onCloseDone$4() {
        WindowView windowView;
        if (this.windowManager == null || (windowView = this.windowView) == null || windowView.getParent() == null) {
            return;
        }
        this.windowManager.removeView(this.windowView);
    }

    public void setOnFullyOpenListener(Runnable runnable) {
        this.onFullyOpenListener = runnable;
    }

    public void setOnPrepareCloseListener(Utilities.Callback4<Long, Runnable, Boolean, Long> callback4) {
        this.onClosePrepareListener = callback4;
    }

    public void applyOpenProgress() {
        View view;
        if (this.openType != 1) {
            return;
        }
        this.fullRectF.set(this.previewContainer.getLeft(), this.previewContainer.getTop(), this.previewContainer.getMeasuredWidth(), this.previewContainer.getMeasuredHeight());
        this.fullRectF.offset(this.containerView.getX(), this.containerView.getY());
        AndroidUtilities.lerp(this.fromRect, this.fullRectF, this.openProgress, this.rectF);
        this.previewContainer.setAlpha(this.openProgress);
        FrameLayout frameLayout = this.previewContainer;
        frameLayout.setTranslationX((this.rectF.left - frameLayout.getLeft()) - this.containerView.getX());
        FrameLayout frameLayout2 = this.previewContainer;
        frameLayout2.setTranslationY((this.rectF.top - frameLayout2.getTop()) - this.containerView.getY());
        SourceView sourceView = this.fromSourceView;
        if (sourceView != null && (view = sourceView.view) != null) {
            view.setTranslationX((this.fullRectF.left - this.fromRect.left) * this.openProgress);
            this.fromSourceView.view.setTranslationY((this.fullRectF.top - this.fromRect.top) * this.openProgress);
        }
        this.previewContainer.setScaleX(this.rectF.width() / this.previewContainer.getMeasuredWidth());
        this.previewContainer.setScaleY(this.rectF.height() / this.previewContainer.getMeasuredHeight());
        this.actionBarContainer.setAlpha(this.openProgress);
        this.controlContainer.setAlpha(this.openProgress);
        this.captionContainer.setAlpha(this.openProgress);
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$WindowView */
    /* loaded from: classes6.dex */
    public class WindowView extends SizeNotifierFrameLayout {
        private boolean allowModeScroll;
        private boolean flingDetected;
        private GestureDetectorFixDoubleTap gestureDetector;
        private boolean ignoreLayout;
        private ScaleGestureDetector scaleGestureDetector;
        private boolean scaling;
        private float stx;
        private float sty;

        /* renamed from: ty */
        private float f2034ty;

        static /* synthetic */ float access$3916(WindowView windowView, float f) {
            float f2 = windowView.sty + f;
            windowView.sty = f2;
            return f2;
        }

        static /* synthetic */ float access$4016(WindowView windowView, float f) {
            float f2 = windowView.stx + f;
            windowView.stx = f2;
            return f2;
        }

        static /* synthetic */ float access$4724(WindowView windowView, float f) {
            float f2 = windowView.f2034ty - f;
            windowView.f2034ty = f2;
            return f2;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WindowView(Context context) {
            super(context);
            StoryRecorder.this = r3;
            this.scaling = false;
            this.gestureDetector = new GestureDetectorFixDoubleTap(context, new GestureListener());
            this.scaleGestureDetector = new ScaleGestureDetector(context, new ScaleListener());
        }

        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout
        public int getBottomPadding() {
            return (getHeight() - StoryRecorder.this.containerView.getBottom()) + StoryRecorder.this.underControls;
        }

        public int getBottomPadding2() {
            return getHeight() - StoryRecorder.this.containerView.getBottom();
        }

        public int getPaddingUnderContainer() {
            return (getHeight() - StoryRecorder.this.insetBottom) - StoryRecorder.this.containerView.getBottom();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0161  */
        /* JADX WARN: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void dispatchDraw(android.graphics.Canvas r15) {
            /*
                Method dump skipped, instructions count: 868
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.WindowView.dispatchDraw(android.graphics.Canvas):void");
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            this.flingDetected = false;
            this.scaleGestureDetector.onTouchEvent(motionEvent);
            this.gestureDetector.onTouchEvent(motionEvent);
            boolean z = true;
            if (motionEvent.getAction() == 1 && !this.flingDetected) {
                if (StoryRecorder.this.containerView.getTranslationY() > BitmapDescriptorFactory.HUE_RED) {
                    if (StoryRecorder.this.dismissProgress <= 0.4f) {
                        StoryRecorder.this.animateContainerBack();
                    } else {
                        StoryRecorder.this.close(true);
                    }
                } else if (StoryRecorder.this.galleryListView != null && StoryRecorder.this.galleryListView.getTranslationY() > BitmapDescriptorFactory.HUE_RED && !StoryRecorder.this.galleryClosing) {
                    StoryRecorder storyRecorder = StoryRecorder.this;
                    if (storyRecorder.takingVideo || StoryRecorder.this.galleryListView.getTranslationY() >= StoryRecorder.this.galleryListView.getPadding()) {
                        z = false;
                    }
                    storyRecorder.lambda$animateGalleryListView$43(z);
                }
                StoryRecorder.this.galleryClosing = false;
                StoryRecorder.this.modeSwitcherView.stopScroll(BitmapDescriptorFactory.HUE_RED);
                StoryRecorder.this.scrollingY = false;
                StoryRecorder.this.scrollingX = false;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                StoryRecorder.this.onBackPressed();
                return true;
            }
            return super.dispatchKeyEventPreIme(keyEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$WindowView$ScaleListener */
        /* loaded from: classes6.dex */
        public final class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
            private ScaleListener() {
                WindowView.this = r1;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                if (!WindowView.this.scaling || StoryRecorder.this.cameraView == null || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView.isDualTouch()) {
                    return false;
                }
                StoryRecorder.access$3516(StoryRecorder.this, (scaleGestureDetector.getScaleFactor() - 1.0f) * 0.75f);
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.cameraZoom = Utilities.clamp(storyRecorder.cameraZoom, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                StoryRecorder.this.cameraView.setZoom(StoryRecorder.this.cameraZoom);
                if (StoryRecorder.this.zoomControlView != null) {
                    StoryRecorder.this.zoomControlView.setZoom(StoryRecorder.this.cameraZoom, false);
                }
                StoryRecorder.this.showZoomControls(true, true);
                return true;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                if (StoryRecorder.this.cameraView == null || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.wasGalleryOpen) {
                    return false;
                }
                WindowView.this.scaling = true;
                return super.onScaleBegin(scaleGestureDetector);
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                WindowView.this.scaling = false;
                StoryRecorder.this.lambda$animateGalleryListView$43(false);
                StoryRecorder.this.animateContainerBack();
                super.onScaleEnd(scaleGestureDetector);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$WindowView$GestureListener */
        /* loaded from: classes6.dex */
        public final class GestureListener extends GestureDetectorFixDoubleTap.OnGestureListener {
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            private GestureListener() {
                WindowView.this = r1;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                WindowView.this.sty = BitmapDescriptorFactory.HUE_RED;
                WindowView.this.stx = BitmapDescriptorFactory.HUE_RED;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                StoryRecorder.this.scrollingY = false;
                StoryRecorder.this.scrollingX = false;
                if (hasDoubleTap(motionEvent) || !onSingleTapConfirmed(motionEvent)) {
                    if (!StoryRecorder.this.isGalleryOpen() || motionEvent.getY() >= StoryRecorder.this.galleryListView.top()) {
                        return false;
                    }
                    StoryRecorder.this.lambda$animateGalleryListView$43(false);
                    return true;
                }
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:127:0x0169  */
            /* JADX WARN: Removed duplicated region for block: B:130:0x0180  */
            /* JADX WARN: Removed duplicated region for block: B:133:0x01a8  */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onScroll(android.view.MotionEvent r4, android.view.MotionEvent r5, float r6, float r7) {
                /*
                    Method dump skipped, instructions count: 541
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.WindowView.GestureListener.onScroll(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
            }

            /* JADX WARN: Removed duplicated region for block: B:131:0x0152  */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean onFling(android.view.MotionEvent r4, android.view.MotionEvent r5, float r6, float r7) {
                /*
                    Method dump skipped, instructions count: 380
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.WindowView.GestureListener.onFling(android.view.MotionEvent, android.view.MotionEvent, float, float):boolean");
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (StoryRecorder.this.cameraView != null) {
                    StoryRecorder.this.cameraView.allowToTapFocus();
                    return true;
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (StoryRecorder.this.cameraView == null || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.takingPhoto || !StoryRecorder.this.cameraView.isInited() || StoryRecorder.this.currentPage != 0) {
                    return false;
                }
                StoryRecorder.this.cameraView.switchCamera();
                StoryRecorder.this.recordControl.rotateFlip(180.0f);
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.saveCameraFace(storyRecorder.cameraView.isFrontface());
                if (StoryRecorder.this.useDisplayFlashlight()) {
                    StoryRecorder.this.flashViews.flashIn(null);
                    return true;
                }
                StoryRecorder.this.flashViews.flashOut();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                if (StoryRecorder.this.cameraView != null) {
                    StoryRecorder.this.cameraView.clearTapFocus();
                    return false;
                }
                return false;
            }

            @Override // org.telegram.p043ui.Components.GestureDetectorFixDoubleTap.OnGestureListener
            public boolean hasDoubleTap(MotionEvent motionEvent) {
                return (StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView == null || StoryRecorder.this.awaitingPlayer || !StoryRecorder.this.cameraView.isInited() || StoryRecorder.this.takingPhoto || StoryRecorder.this.recordControl.isTouch() || StoryRecorder.this.isGalleryOpen() || StoryRecorder.this.galleryListViewOpening != null) ? false : true;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            StoryRecorder storyRecorder;
            if (Build.VERSION.SDK_INT < 21) {
                StoryRecorder.this.insetTop = AndroidUtilities.statusBarHeight;
                StoryRecorder.this.insetBottom = AndroidUtilities.navigationBarHeight;
            }
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i3 = (size - StoryRecorder.this.insetLeft) - StoryRecorder.this.insetRight;
            int i4 = StoryRecorder.this.insetTop;
            int i5 = StoryRecorder.this.insetBottom;
            int ceil = (int) Math.ceil((i3 / 9.0f) * 16.0f);
            StoryRecorder.this.underControls = AndroidUtilities.m107dp(48);
            int i6 = size2 - i5;
            if (StoryRecorder.this.underControls + ceil <= i6) {
                StoryRecorder.this.previewW = i3;
                StoryRecorder.this.previewH = ceil;
                StoryRecorder storyRecorder2 = StoryRecorder.this;
                storyRecorder2.underStatusBar = storyRecorder2.previewH + StoryRecorder.this.underControls > i6 - i4;
            } else {
                StoryRecorder.this.underStatusBar = false;
                StoryRecorder storyRecorder3 = StoryRecorder.this;
                storyRecorder3.previewH = ((size2 - storyRecorder3.underControls) - i5) - i4;
                StoryRecorder.this.previewW = (int) Math.ceil((storyRecorder.previewH * 9.0f) / 16.0f);
            }
            StoryRecorder storyRecorder4 = StoryRecorder.this;
            storyRecorder4.underControls = Utilities.clamp((size2 - storyRecorder4.previewH) - (StoryRecorder.this.underStatusBar ? 0 : i4), AndroidUtilities.m107dp(68), AndroidUtilities.m107dp(48));
            int systemUiVisibility = getSystemUiVisibility();
            setSystemUiVisibility(StoryRecorder.this.underStatusBar ? systemUiVisibility | 4 : systemUiVisibility & (-5));
            StoryRecorder.this.containerView.measure(View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.previewW, 1073741824), View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.previewH + StoryRecorder.this.underControls, 1073741824));
            StoryRecorder.this.flashViews.backgroundView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            if (StoryRecorder.this.thanosEffect != null) {
                StoryRecorder.this.thanosEffect.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }
            if (StoryRecorder.this.changeDayNightView != null) {
                StoryRecorder.this.changeDayNightView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }
            StoryThemeSheet unused = StoryRecorder.this.themeSheet;
            if (StoryRecorder.this.galleryListView != null) {
                StoryRecorder.this.galleryListView.measure(View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.previewW, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }
            if (StoryRecorder.this.captionEdit != null) {
                EmojiView emojiView = StoryRecorder.this.captionEdit.editText.getEmojiView();
                if (measureKeyboardHeight() > AndroidUtilities.m107dp(20)) {
                    this.ignoreLayout = true;
                    this.ignoreLayout = false;
                }
                if (emojiView != null) {
                    emojiView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(emojiView.getLayoutParams().height, 1073741824));
                }
            }
            if (StoryRecorder.this.paintView != null) {
                if (StoryRecorder.this.paintView.emojiView != null) {
                    StoryRecorder.this.paintView.emojiView.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.paintView.emojiView.getLayoutParams().height, 1073741824));
                }
                if (StoryRecorder.this.paintView.reactionLayout != null) {
                    measureChild(StoryRecorder.this.paintView.reactionLayout, i, i2);
                    if (StoryRecorder.this.paintView.reactionLayout.getReactionsWindow() != null) {
                        measureChild(StoryRecorder.this.paintView.reactionLayout.getReactionsWindow().windowView, i, i2);
                    }
                }
            }
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                View childAt = getChildAt(i7);
                if (childAt instanceof DownloadButton.PreparingVideoToast) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
                } else if (childAt instanceof Bulletin.ParentLayout) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m107dp(340), size2 - (StoryRecorder.this.underStatusBar ? 0 : i4)), 1073741824));
                }
            }
            setMeasuredDimension(size, size2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            EmojiView emojiView;
            if (this.ignoreLayout) {
                return;
            }
            int i6 = i3 - i;
            int i7 = i4 - i2;
            int i8 = StoryRecorder.this.insetTop;
            int measuredHeight = StoryRecorder.this.navbarContainer.getMeasuredHeight();
            if (StoryRecorder.this.underStatusBar) {
                i8 = 0;
            }
            int i9 = StoryRecorder.this.insetLeft + (((i6 - StoryRecorder.this.insetRight) - StoryRecorder.this.previewW) / 2);
            int i10 = StoryRecorder.this.insetLeft + (((i6 - StoryRecorder.this.insetRight) + StoryRecorder.this.previewW) / 2);
            if (StoryRecorder.this.underStatusBar) {
                i5 = StoryRecorder.this.previewH;
            } else {
                int i11 = (((((i7 - i8) - StoryRecorder.this.insetBottom) - StoryRecorder.this.previewH) - measuredHeight) / 2) + i8;
                if (StoryRecorder.this.openType == 1 && StoryRecorder.this.fromRect.top + StoryRecorder.this.previewH + measuredHeight < i7 - StoryRecorder.this.insetBottom) {
                    i8 = (int) StoryRecorder.this.fromRect.top;
                } else if (i11 - i8 >= AndroidUtilities.m107dp(40)) {
                    i8 = i11;
                }
                i5 = StoryRecorder.this.previewH;
            }
            StoryRecorder.this.containerView.layout(i9, i8, i10, i5 + i8 + measuredHeight);
            StoryRecorder.this.flashViews.backgroundView.layout(0, 0, i6, i7);
            if (StoryRecorder.this.thanosEffect != null) {
                StoryRecorder.this.thanosEffect.layout(0, 0, i6, i7);
            }
            if (StoryRecorder.this.changeDayNightView != null) {
                StoryRecorder.this.changeDayNightView.layout(0, 0, i6, i7);
            }
            if (StoryRecorder.this.galleryListView != null) {
                StoryRecorder.this.galleryListView.layout((i6 - StoryRecorder.this.galleryListView.getMeasuredWidth()) / 2, 0, (StoryRecorder.this.galleryListView.getMeasuredWidth() + i6) / 2, i7);
            }
            StoryThemeSheet unused = StoryRecorder.this.themeSheet;
            if (StoryRecorder.this.captionEdit != null && (emojiView = StoryRecorder.this.captionEdit.editText.getEmojiView()) != null) {
                emojiView.layout(StoryRecorder.this.insetLeft, (i7 - StoryRecorder.this.insetBottom) - emojiView.getMeasuredHeight(), i6 - StoryRecorder.this.insetRight, i7 - StoryRecorder.this.insetBottom);
            }
            if (StoryRecorder.this.paintView != null) {
                if (StoryRecorder.this.paintView.emojiView != null) {
                    StoryRecorder.this.paintView.emojiView.layout(StoryRecorder.this.insetLeft, (i7 - StoryRecorder.this.insetBottom) - StoryRecorder.this.paintView.emojiView.getMeasuredHeight(), i6 - StoryRecorder.this.insetRight, i7 - StoryRecorder.this.insetBottom);
                }
                if (StoryRecorder.this.paintView.reactionLayout != null) {
                    StoryRecorder.this.paintView.reactionLayout.layout(StoryRecorder.this.insetLeft, StoryRecorder.this.insetTop, StoryRecorder.this.insetLeft + StoryRecorder.this.paintView.reactionLayout.getMeasuredWidth(), StoryRecorder.this.insetTop + StoryRecorder.this.paintView.reactionLayout.getMeasuredHeight());
                    FrameLayout frameLayout = StoryRecorder.this.paintView.reactionLayout.getReactionsWindow() != null ? StoryRecorder.this.paintView.reactionLayout.getReactionsWindow().windowView : null;
                    if (frameLayout != null) {
                        frameLayout.layout(StoryRecorder.this.insetLeft, StoryRecorder.this.insetTop, StoryRecorder.this.insetLeft + frameLayout.getMeasuredWidth(), StoryRecorder.this.insetTop + frameLayout.getMeasuredHeight());
                    }
                }
            }
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt instanceof DownloadButton.PreparingVideoToast) {
                    childAt.layout(0, 0, i6, i7);
                } else if (childAt instanceof Bulletin.ParentLayout) {
                    childAt.layout(0, i8, childAt.getMeasuredWidth(), childAt.getMeasuredHeight() + i8);
                }
            }
        }

        public void drawBlurBitmap(Bitmap bitmap, float f) {
            Canvas canvas = new Canvas(bitmap);
            canvas.drawColor(-16777216);
            float width = bitmap.getWidth() / StoryRecorder.this.windowView.getWidth();
            canvas.scale(width, width);
            TextureView textureView = StoryRecorder.this.previewView.getTextureView();
            if (textureView == null) {
                textureView = StoryRecorder.this.previewView.filterTextureView;
            }
            if (textureView != null) {
                canvas.save();
                canvas.translate(StoryRecorder.this.containerView.getX() + StoryRecorder.this.previewContainer.getX(), StoryRecorder.this.containerView.getY() + StoryRecorder.this.previewContainer.getY());
                try {
                    Bitmap bitmap2 = textureView.getBitmap((int) (textureView.getWidth() / f), (int) (textureView.getHeight() / f));
                    float f2 = 1.0f / width;
                    canvas.scale(f2, f2);
                    canvas.drawBitmap(bitmap2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, new Paint(2));
                    bitmap2.recycle();
                } catch (Exception unused) {
                }
                canvas.restore();
            }
            canvas.save();
            canvas.translate(StoryRecorder.this.containerView.getX(), StoryRecorder.this.containerView.getY());
            for (int i = 0; i < StoryRecorder.this.containerView.getChildCount(); i++) {
                View childAt = StoryRecorder.this.containerView.getChildAt(i);
                canvas.save();
                canvas.translate(childAt.getX(), childAt.getY());
                if (childAt.getVisibility() == 0) {
                    if (childAt == StoryRecorder.this.previewContainer) {
                        for (int i2 = 0; i2 < StoryRecorder.this.previewContainer.getChildCount(); i2++) {
                            View childAt2 = StoryRecorder.this.previewContainer.getChildAt(i2);
                            if (childAt2 != StoryRecorder.this.previewView && childAt2 != StoryRecorder.this.cameraView && childAt2 != StoryRecorder.this.cameraViewThumb && childAt2.getVisibility() == 0) {
                                canvas.save();
                                canvas.translate(childAt2.getX(), childAt2.getY());
                                childAt2.draw(canvas);
                                canvas.restore();
                            }
                        }
                    } else {
                        childAt.draw(canvas);
                    }
                    canvas.restore();
                }
            }
            canvas.restore();
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$ContainerView */
    /* loaded from: classes6.dex */
    public class ContainerView extends FrameLayout {
        private LinearGradient topGradient;
        private final Paint topGradientPaint;
        private float translationY1;
        private float translationY2;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContainerView(Context context) {
            super(context);
            StoryRecorder.this = r1;
            this.topGradientPaint = new Paint(1);
        }

        public void updateBackground() {
            if (StoryRecorder.this.openType == 0) {
                setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m107dp(12), -16777216));
            } else {
                setBackground(null);
            }
        }

        @Override // android.view.View
        public void invalidate() {
            if (StoryRecorder.this.openCloseAnimator == null || !StoryRecorder.this.openCloseAnimator.isRunning()) {
                super.invalidate();
            }
        }

        public void setTranslationY2(float f) {
            float f2 = this.translationY1;
            this.translationY2 = f;
            super.setTranslationY(f2 + f);
        }

        public float getTranslationY1() {
            return this.translationY1;
        }

        public float getTranslationY2() {
            return this.translationY2;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            this.translationY1 = f;
            super.setTranslationY(this.translationY2 + f);
            StoryRecorder.this.dismissProgress = Utilities.clamp((f / getMeasuredHeight()) * 4.0f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            StoryRecorder.this.checkBackgroundVisibility();
            StoryRecorder.this.windowView.invalidate();
            float clamp = 1.0f - (Utilities.clamp(getTranslationY() / AndroidUtilities.m107dp(320), 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * 0.1f);
            setScaleX(clamp);
            setScaleY(clamp);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = StoryRecorder.this.underStatusBar ? StoryRecorder.this.insetTop : 0;
            int i6 = i3 - i;
            int i7 = i4 - i2;
            StoryRecorder.this.previewContainer.layout(0, 0, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            StoryRecorder.this.previewContainer.setPivotX(StoryRecorder.this.previewW * 0.5f);
            StoryRecorder.this.actionBarContainer.layout(0, i5, StoryRecorder.this.previewW, StoryRecorder.this.actionBarContainer.getMeasuredHeight() + i5);
            StoryRecorder.this.controlContainer.layout(0, StoryRecorder.this.previewH - StoryRecorder.this.controlContainer.getMeasuredHeight(), StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            StoryRecorder.this.navbarContainer.layout(0, StoryRecorder.this.previewH, StoryRecorder.this.previewW, StoryRecorder.this.previewH + StoryRecorder.this.navbarContainer.getMeasuredHeight());
            StoryRecorder.this.captionContainer.layout(0, 0, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            if (StoryRecorder.this.captionEditOverlay != null) {
                StoryRecorder.this.captionEditOverlay.layout(0, 0, i6, i7);
            }
            StoryRecorder.this.flashViews.foregroundView.layout(0, 0, i6, i7);
            if (StoryRecorder.this.captionEdit.mentionContainer != null) {
                StoryRecorder.this.captionEdit.mentionContainer.layout(0, 0, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
                StoryRecorder.this.captionEdit.updateMentionsLayoutPosition();
            }
            if (StoryRecorder.this.photoFilterView != null) {
                StoryRecorder.this.photoFilterView.layout(0, 0, StoryRecorder.this.photoFilterView.getMeasuredWidth(), StoryRecorder.this.photoFilterView.getMeasuredHeight());
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.layout(0, 0, StoryRecorder.this.paintView.getMeasuredWidth(), StoryRecorder.this.paintView.getMeasuredHeight());
            }
            for (int i8 = 0; i8 < getChildCount(); i8++) {
                View childAt = getChildAt(i8);
                if (childAt instanceof ItemOptions.DimView) {
                    childAt.layout(0, 0, i6, i7);
                }
            }
            setPivotX(i6 / 2.0f);
            setPivotY((-i7) * 0.2f);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            measureChildExactly(StoryRecorder.this.previewContainer, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            StoryRecorder.this.applyFilterMatrix();
            measureChildExactly(StoryRecorder.this.actionBarContainer, StoryRecorder.this.previewW, AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION));
            measureChildExactly(StoryRecorder.this.controlContainer, StoryRecorder.this.previewW, AndroidUtilities.m107dp(220));
            measureChildExactly(StoryRecorder.this.navbarContainer, StoryRecorder.this.previewW, StoryRecorder.this.underControls);
            measureChildExactly(StoryRecorder.this.captionContainer, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            measureChildExactly(StoryRecorder.this.flashViews.foregroundView, size, size2);
            if (StoryRecorder.this.captionEditOverlay != null) {
                measureChildExactly(StoryRecorder.this.captionEditOverlay, size, size2);
            }
            if (StoryRecorder.this.captionEdit.mentionContainer != null) {
                measureChildExactly(StoryRecorder.this.captionEdit.mentionContainer, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            }
            if (StoryRecorder.this.photoFilterView != null) {
                measureChildExactly(StoryRecorder.this.photoFilterView, size, size2);
            }
            if (StoryRecorder.this.paintView != null) {
                measureChildExactly(StoryRecorder.this.paintView, size, size2);
            }
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt instanceof ItemOptions.DimView) {
                    measureChildExactly(childAt, size, size2);
                }
            }
            setMeasuredDimension(size, size2);
        }

        private void measureChildExactly(View view, int i, int i2) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            boolean drawChild = super.drawChild(canvas, view, j);
            if (view == StoryRecorder.this.previewContainer) {
                float f = StoryRecorder.this.underStatusBar ? AndroidUtilities.statusBarHeight : 0.0f;
                if (this.topGradient == null) {
                    LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, f, (float) BitmapDescriptorFactory.HUE_RED, f + AndroidUtilities.m107dp(72), new int[]{1073741824, 0}, new float[]{f / (AndroidUtilities.m107dp(72) + f), 1.0f}, Shader.TileMode.CLAMP);
                    this.topGradient = linearGradient;
                    this.topGradientPaint.setShader(linearGradient);
                }
                this.topGradientPaint.setAlpha(255);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), AndroidUtilities.m107dp(84) + f);
                canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), this.topGradientPaint);
            }
            return drawChild;
        }
    }

    public Context getContext() {
        return this.activity;
    }

    private void initViews() {
        Context context = getContext();
        WindowView windowView = new WindowView(context);
        this.windowView = windowView;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            windowView.setFitsSystemWindows(true);
            this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.2
                {
                    StoryRecorder.this = this;
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 30) {
                        Insets insets = windowInsets.getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
                        StoryRecorder.this.insetTop = insets.top;
                        StoryRecorder.this.insetBottom = insets.bottom;
                        StoryRecorder.this.insetLeft = insets.left;
                        StoryRecorder.this.insetRight = insets.right;
                    } else {
                        StoryRecorder.this.insetTop = windowInsets.getStableInsetTop();
                        StoryRecorder.this.insetBottom = windowInsets.getStableInsetBottom();
                        StoryRecorder.this.insetLeft = windowInsets.getStableInsetLeft();
                        StoryRecorder.this.insetRight = windowInsets.getStableInsetRight();
                    }
                    StoryRecorder.this.windowView.requestLayout();
                    if (i2 >= 30) {
                        return WindowInsets.CONSUMED;
                    }
                    return windowInsets.consumeSystemWindowInsets();
                }
            });
        }
        this.windowView.setFocusable(true);
        FlashViews flashViews = new FlashViews(context, this.windowManager, this.windowView, this.windowLayoutParams);
        this.flashViews = flashViews;
        flashViews.add(new FlashViews.Invertable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.3
            @Override // org.telegram.p043ui.Stories.recorder.FlashViews.Invertable
            public void invalidate() {
            }

            {
                StoryRecorder.this = this;
            }

            @Override // org.telegram.p043ui.Stories.recorder.FlashViews.Invertable
            public void setInvert(float f) {
                int i2 = (f > 0.5f ? 1 : (f == 0.5f ? 0 : -1));
                AndroidUtilities.setLightNavigationBar(StoryRecorder.this.windowView, i2 > 0);
                AndroidUtilities.setLightStatusBar(StoryRecorder.this.windowView, i2 > 0);
            }
        });
        this.windowView.addView(this.flashViews.backgroundView, new ViewGroup.LayoutParams(-1, -1));
        WindowView windowView2 = this.windowView;
        ContainerView containerView = new ContainerView(context);
        this.containerView = containerView;
        windowView2.addView(containerView);
        ContainerView containerView2 = this.containerView;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.4
            private final Rect leftExclRect = new Rect();
            private final Rect rightExclRect = new Rect();

            {
                StoryRecorder.this = this;
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (StoryRecorder.this.previewTouchable != null) {
                    StoryRecorder.this.previewTouchable.onTouch(motionEvent);
                    return true;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                if (StoryRecorder.this.photoFilterViewCurvesControl != null) {
                    StoryRecorder.this.photoFilterViewCurvesControl.setActualArea(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, StoryRecorder.this.photoFilterViewCurvesControl.getMeasuredWidth(), StoryRecorder.this.photoFilterViewCurvesControl.getMeasuredHeight());
                }
                if (StoryRecorder.this.photoFilterViewBlurControl != null) {
                    StoryRecorder.this.photoFilterViewBlurControl.setActualAreaSize(StoryRecorder.this.photoFilterViewBlurControl.getMeasuredWidth(), StoryRecorder.this.photoFilterViewBlurControl.getMeasuredHeight());
                }
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                if (Build.VERSION.SDK_INT >= 29) {
                    int i6 = i4 - i2;
                    int i7 = i5 - i3;
                    this.leftExclRect.set(0, i7 - AndroidUtilities.m107dp(120), AndroidUtilities.m107dp(40), i7);
                    this.rightExclRect.set(i6 - AndroidUtilities.m107dp(40), i7 - AndroidUtilities.m107dp(120), i6, i7);
                    setSystemGestureExclusionRects(Arrays.asList(this.leftExclRect, this.rightExclRect));
                }
            }

            @Override // android.view.View
            public void invalidate() {
                if (StoryRecorder.this.openCloseAnimator == null || !StoryRecorder.this.openCloseAnimator.isRunning()) {
                    super.invalidate();
                }
            }
        };
        this.previewContainer = frameLayout;
        containerView2.addView(frameLayout);
        this.containerView.addView(this.flashViews.foregroundView, new ViewGroup.LayoutParams(-1, -1));
        this.blurManager = new BlurringShader.BlurManager(this.previewContainer);
        this.videoTextureHolder = new PreviewView.TextureViewHolder();
        ContainerView containerView3 = this.containerView;
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.actionBarContainer = frameLayout2;
        containerView3.addView(frameLayout2);
        ContainerView containerView4 = this.containerView;
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.controlContainer = frameLayout3;
        containerView4.addView(frameLayout3);
        ContainerView containerView5 = this.containerView;
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.5
            {
                StoryRecorder.this = this;
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                if (getTranslationY() == f || StoryRecorder.this.captionEdit == null) {
                    return;
                }
                super.setTranslationY(f);
                StoryRecorder.this.captionEdit.updateMentionsLayoutPosition();
            }
        };
        this.captionContainer = frameLayout4;
        containerView5.addView(frameLayout4);
        this.captionContainer.setVisibility(8);
        this.captionContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        ContainerView containerView6 = this.containerView;
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.navbarContainer = frameLayout5;
        containerView6.addView(frameLayout5);
        Bulletin.addDelegate(this.windowView, new Bulletin.Delegate(this) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.6
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public boolean clipWithGradient(int i2) {
                return true;
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getTopOffset(int i2) {
                return AndroidUtilities.m107dp(56);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i2) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i2);
            }
        });
        ImageView imageView = new ImageView(context);
        this.cameraViewThumb = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.cameraViewThumb.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StoryRecorder.this.lambda$initViews$5(view);
            }
        });
        this.cameraViewThumb.setClickable(true);
        this.previewContainer.addView(this.cameraViewThumb, LayoutHelper.createFrame(-1, -1, 119));
        FrameLayout frameLayout6 = this.previewContainer;
        int i2 = this.openType;
        frameLayout6.setBackgroundColor((i2 == 1 || i2 == 0) ? 0 : -14737633);
        if (i >= 21) {
            this.previewContainer.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.7
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m107dp(12));
                }
            });
            this.previewContainer.setClipToOutline(true);
        }
        this.photoFilterEnhanceView = new PhotoFilterView.EnhanceView(context, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.createFilterPhotoView();
            }
        });
        PreviewView previewView = new PreviewView(context, this.blurManager, this.videoTextureHolder) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.8
            {
                StoryRecorder.this = this;
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            public boolean additionalTouchEvent(MotionEvent motionEvent) {
                if (StoryRecorder.this.captionEdit == null || !StoryRecorder.this.captionEdit.isRecording()) {
                    return StoryRecorder.this.photoFilterEnhanceView.onTouch(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            public void applyMatrix() {
                super.applyMatrix();
                StoryRecorder.this.applyFilterMatrix();
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            public void onEntityDraggedTop(boolean z) {
                StoryRecorder.this.previewHighlight.show(true, z, StoryRecorder.this.actionBarContainer);
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            public void onEntityDraggedBottom(boolean z) {
                StoryRecorder.this.previewHighlight.updateCaption(StoryRecorder.this.captionEdit.getText());
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            public void onRoundSelectChange(boolean z) {
                if (StoryRecorder.this.paintView == null) {
                    return;
                }
                if (z || !(StoryRecorder.this.paintView.getSelectedEntity() instanceof RoundView)) {
                    if (!z || (StoryRecorder.this.paintView.getSelectedEntity() instanceof RoundView) || StoryRecorder.this.paintView.findRoundView() == null) {
                        return;
                    }
                    StoryRecorder.this.paintView.lambda$createRound$55(StoryRecorder.this.paintView.findRoundView());
                    return;
                }
                StoryRecorder.this.paintView.lambda$createRound$55(null);
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            public void onRoundRemove() {
                if (StoryRecorder.this.previewView != null) {
                    StoryRecorder.this.previewView.setupRound(null, null, true);
                }
                if (StoryRecorder.this.paintView != null) {
                    StoryRecorder.this.paintView.deleteRound();
                }
                if (StoryRecorder.this.captionEdit != null) {
                    StoryRecorder.this.captionEdit.setHasRoundVideo(false);
                }
                if (StoryRecorder.this.outputEntry != null) {
                    if (StoryRecorder.this.outputEntry.round != null) {
                        try {
                            StoryRecorder.this.outputEntry.round.delete();
                        } catch (Exception unused) {
                        }
                        StoryRecorder.this.outputEntry.round = null;
                    }
                    if (StoryRecorder.this.outputEntry.roundThumb != null) {
                        try {
                            new File(StoryRecorder.this.outputEntry.roundThumb).delete();
                        } catch (Exception unused2) {
                        }
                        StoryRecorder.this.outputEntry.roundThumb = null;
                    }
                }
            }

            @Override // org.telegram.p043ui.Stories.recorder.PreviewView
            protected void invalidateTextureViewHolder() {
                if (StoryRecorder.this.outputEntry == null || !StoryRecorder.this.outputEntry.isRepostMessage || !StoryRecorder.this.outputEntry.isVideo || StoryRecorder.this.paintView == null || StoryRecorder.this.paintView.entitiesView == null) {
                    return;
                }
                for (int i3 = 0; i3 < StoryRecorder.this.paintView.entitiesView.getChildCount(); i3++) {
                    View childAt = StoryRecorder.this.paintView.entitiesView.getChildAt(i3);
                    if (childAt instanceof MessageEntityView) {
                        ((MessageEntityView) childAt).invalidateAll();
                    }
                }
            }
        };
        this.previewView = previewView;
        previewView.invalidateBlur = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.invalidateBlur();
            }
        };
        this.previewView.setOnTapListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$initViews$6();
            }
        });
        this.previewView.setVisibility(8);
        this.previewView.whenError(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$initViews$7();
            }
        });
        this.previewContainer.addView(this.previewView, LayoutHelper.createFrame(-1, -1, 119));
        this.previewContainer.addView(this.photoFilterEnhanceView, LayoutHelper.createFrame(-1, -1, 119));
        WindowView windowView3 = this.windowView;
        C74819 c74819 = new C74819(context, windowView3, windowView3, this.containerView, this.resourcesProvider, this.blurManager);
        this.captionEdit = c74819;
        c74819.setAccount(this.currentAccount);
        this.captionEdit.setUiBlurBitmap(new Utilities.CallbackVoidReturn() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda74
            @Override // org.telegram.messenger.Utilities.CallbackVoidReturn
            public final Object run() {
                Bitmap uiBlurBitmap;
                uiBlurBitmap = StoryRecorder.this.getUiBlurBitmap();
                return uiBlurBitmap;
            }
        });
        Bulletin.addDelegate(this.captionContainer, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.10
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i3) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i3) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i3);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            {
                StoryRecorder.this = this;
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i3) {
                return StoryRecorder.this.captionEdit.getEditTextHeight() + AndroidUtilities.m107dp(12);
            }
        });
        this.captionEdit.setOnHeightUpdate(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda68
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$8((Integer) obj);
            }
        });
        this.captionEdit.setOnPeriodUpdate(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda70
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$9((Integer) obj);
            }
        });
        this.captionEdit.setOnPremiumHint(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda67
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.showPremiumPeriodBulletin(((Integer) obj).intValue());
            }
        });
        this.captionEdit.setOnKeyboardOpen(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda62
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$10((Boolean) obj);
            }
        });
        View view = new View(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.11
            {
                StoryRecorder.this = this;
            }

            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.translate(StoryRecorder.this.captionContainer.getX() + StoryRecorder.this.captionEdit.getX(), StoryRecorder.this.captionContainer.getY() + StoryRecorder.this.captionEdit.getY());
                StoryRecorder.this.captionEdit.drawOver2(canvas, StoryRecorder.this.captionEdit.getBounds(), StoryRecorder.this.captionEdit.getOver2Alpha());
                canvas.restore();
            }
        };
        this.captionEditOverlay = view;
        this.containerView.addView(view);
        TimelineView timelineView = new TimelineView(context, this.containerView, this.previewContainer, this.resourcesProvider, this.blurManager);
        this.timelineView = timelineView;
        this.previewView.setVideoTimelineView(timelineView);
        this.timelineView.setVisibility(8);
        this.timelineView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        FrameLayout frameLayout7 = new FrameLayout(context);
        this.videoTimelineContainerView = frameLayout7;
        frameLayout7.addView(this.timelineView, LayoutHelper.createFrame(-1, TimelineView.heightDp(), 87, 0, 0, 0, 0));
        VideoTimeView videoTimeView = new VideoTimeView(context);
        this.videoTimeView = videoTimeView;
        videoTimeView.setVisibility(8);
        this.videoTimeView.show(false, false);
        this.videoTimelineContainerView.addView(this.videoTimeView, LayoutHelper.createFrame(-1, 25, 55, 0, 0, 0, 0));
        this.captionContainer.addView(this.videoTimelineContainerView, LayoutHelper.createFrame(-1, TimelineView.heightDp() + 25, 87, 0, 0, 0, 68));
        this.captionContainer.addView(this.captionEdit, LayoutHelper.createFrame(-1, -1, 87, 0, 200, 0, 0));
        FlashViews.ImageViewInvertable imageViewInvertable = new FlashViews.ImageViewInvertable(context);
        this.backButton = imageViewInvertable;
        imageViewInvertable.setContentDescription(LocaleController.getString("AccDescrGoBack", C3632R.string.AccDescrGoBack));
        this.backButton.setScaleType(ImageView.ScaleType.CENTER);
        this.backButton.setImageResource(C3632R.C3634drawable.msg_photo_back);
        this.backButton.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        this.backButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                StoryRecorder.this.lambda$initViews$11(view2);
            }
        });
        this.actionBarContainer.addView(this.backButton, LayoutHelper.createFrame(56, 56, 51));
        this.flashViews.add(this.backButton);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.titleTextView = simpleTextView;
        simpleTextView.setTextSize(20);
        this.titleTextView.setGravity(19);
        this.titleTextView.setTextColor(-1);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextView.setText(LocaleController.getString("RecorderNewStory", C3632R.string.RecorderNewStory));
        this.titleTextView.getPaint().setShadowLayer(AndroidUtilities.dpf2(1.0f), BitmapDescriptorFactory.HUE_RED, 1.0f, 1073741824);
        this.titleTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.titleTextView.setVisibility(8);
        this.titleTextView.setEllipsizeByGradient(true);
        this.titleTextView.setRightPadding(AndroidUtilities.m107dp(144));
        this.actionBarContainer.addView(this.titleTextView, LayoutHelper.createFrame(-1, 56, 55, 71, 0, 0, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        this.actionBarButtons = linearLayout;
        linearLayout.setOrientation(0);
        this.actionBarButtons.setGravity(5);
        this.actionBarContainer.addView(this.actionBarButtons, LayoutHelper.createFrame(-1, 56, 7, 0, 0, 8, 0));
        this.downloadButton = new DownloadButton(context, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda71
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$12((Runnable) obj);
            }
        }, this.currentAccount, this.windowView, this.resourcesProvider);
        HintView2 animatedTextHacks = new HintView2(this.activity, 1).setJoint(1.0f, -71.0f).setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS).setBounce(false).setAnimatedTextHacks(true, true, false);
        this.muteHint = animatedTextHacks;
        animatedTextHacks.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        this.actionBarContainer.addView(this.muteHint, LayoutHelper.createFrame(-1, -1, 48, 0, 52, 0, 0));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.muteButton = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        RLottieImageView rLottieImageView2 = this.muteButton;
        StoryEntry storyEntry = this.outputEntry;
        rLottieImageView2.setImageResource((storyEntry == null || !storyEntry.muted) ? C3632R.C3634drawable.media_mute : C3632R.C3634drawable.media_unmute);
        this.muteButton.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        this.muteButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                StoryRecorder.this.lambda$initViews$13(view2);
            }
        });
        this.muteButton.setVisibility(8);
        this.muteButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        PlayPauseButton playPauseButton = new PlayPauseButton(context);
        this.playButton = playPauseButton;
        playPauseButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.playButton.setVisibility(8);
        this.playButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.playButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                StoryRecorder.this.lambda$initViews$14(view2);
            }
        });
        this.actionBarButtons.addView(this.playButton, LayoutHelper.createLinear(46, 56, 53));
        this.actionBarButtons.addView(this.muteButton, LayoutHelper.createLinear(46, 56, 53));
        this.actionBarButtons.addView(this.downloadButton, LayoutHelper.createFrame(46, 56, 53));
        ToggleButton2 toggleButton2 = new ToggleButton2(context);
        this.flashButton = toggleButton2;
        toggleButton2.setBackground(Theme.createSelectorDrawable(553648127));
        this.flashButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                StoryRecorder.this.lambda$initViews$15(view2);
            }
        });
        this.flashButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda21
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean lambda$initViews$19;
                lambda$initViews$19 = StoryRecorder.this.lambda$initViews$19(view2);
                return lambda$initViews$19;
            }
        });
        this.flashButton.setVisibility(8);
        this.flashButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.flashViews.add(this.flashButton);
        this.actionBarContainer.addView(this.flashButton, LayoutHelper.createFrame(56, 56, 53));
        ToggleButton toggleButton = new ToggleButton(context, C3632R.C3634drawable.media_dual_camera2_shadow, C3632R.C3634drawable.media_dual_camera2);
        this.dualButton = toggleButton;
        toggleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                StoryRecorder.this.lambda$initViews$20(view2);
            }
        });
        this.dualButton.setVisibility(DualCameraView.dualAvailableStatic(context) ? 0 : 8);
        this.flashViews.add(this.dualButton);
        this.actionBarContainer.addView(this.dualButton, LayoutHelper.createFrame(56, 56, 53));
        HintView2 onHiddenListener = new HintView2(this.activity, 1).setJoint(1.0f, -20.0f).setDuration(5000L).setCloseButton(true).setText(LocaleController.getString(C3632R.string.StoryCameraDualHint)).setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.lambda$initViews$21();
            }
        });
        this.dualHint = onHiddenListener;
        onHiddenListener.setPadding(AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8), 0);
        this.actionBarContainer.addView(this.dualHint, LayoutHelper.createFrame(-1, -1, 48, 0, 52, 0, 0));
        HintView2 multilineText = new HintView2(this.activity, 2).setJoint(BitmapDescriptorFactory.HUE_RED, 28.0f).setDuration(5000L).setMultilineText(true);
        this.savedDualHint = multilineText;
        this.actionBarContainer.addView(multilineText, LayoutHelper.createFrame(-1, -1, 48, 0, 0, 52, 0));
        this.videoTimerView = new VideoTimerView(context);
        showVideoTimer(false, false);
        this.actionBarContainer.addView(this.videoTimerView, LayoutHelper.createFrame(-1, 45, 55, 56, 0, 56, 0));
        this.flashViews.add(this.videoTimerView);
        if (i >= 21) {
            MediaController.loadGalleryPhotosAlbums(0);
        }
        RecordControl recordControl = new RecordControl(context);
        this.recordControl = recordControl;
        recordControl.setDelegate(this.recordControlDelegate);
        this.recordControl.startAsVideo(this.isVideo);
        this.controlContainer.addView(this.recordControl, LayoutHelper.createFrame(-1, 100, 87));
        this.flashViews.add(this.recordControl);
        HintView2 textAlign = new HintView2(this.activity, 3).setMultilineText(true).setText(LocaleController.getString(C3632R.string.StoryCameraHint2)).setMaxWidth(320.0f).setDuration(5000L).setTextAlign(Layout.Alignment.ALIGN_CENTER);
        this.cameraHint = textAlign;
        this.controlContainer.addView(textAlign, LayoutHelper.createFrame(-1, -1, 80, 0, 0, 0, 100));
        ZoomControlView zoomControlView = new ZoomControlView(context);
        this.zoomControlView = zoomControlView;
        zoomControlView.enabledTouch = false;
        zoomControlView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.controlContainer.addView(this.zoomControlView, LayoutHelper.createFrame(-1, 50, 81, 0, 0, 0, 108));
        this.zoomControlView.setDelegate(new ZoomControlView.ZoomControlViewDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda77
            @Override // org.telegram.p043ui.Components.ZoomControlView.ZoomControlViewDelegate
            public final void didSetZoom(float f) {
                StoryRecorder.this.lambda$initViews$22(f);
            }
        });
        ZoomControlView zoomControlView2 = this.zoomControlView;
        this.cameraZoom = BitmapDescriptorFactory.HUE_RED;
        zoomControlView2.setZoom(BitmapDescriptorFactory.HUE_RED, false);
        PhotoVideoSwitcherView photoVideoSwitcherView = new PhotoVideoSwitcherView(context);
        this.modeSwitcherView = photoVideoSwitcherView;
        photoVideoSwitcherView.setOnSwitchModeListener(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda63
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$23((Boolean) obj);
            }
        });
        this.modeSwitcherView.setOnSwitchingModeListener(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda65
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$24((Float) obj);
            }
        });
        this.navbarContainer.addView(this.modeSwitcherView, LayoutHelper.createFrame(-1, -1, 87));
        this.flashViews.add(this.modeSwitcherView);
        HintTextView hintTextView = new HintTextView(context);
        this.hintTextView = hintTextView;
        this.navbarContainer.addView(hintTextView, LayoutHelper.createFrame(-1, 32, 17, 8, 0, 8, 8));
        this.flashViews.add(this.hintTextView);
        PreviewButtons previewButtons = new PreviewButtons(context);
        this.previewButtons = previewButtons;
        previewButtons.setVisibility(8);
        this.previewButtons.setOnClickListener(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda69
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$30((Integer) obj);
            }
        });
        this.navbarContainer.addView(this.previewButtons, LayoutHelper.createFrame(-1, 52, 23));
        TrashView trashView = new TrashView(context);
        this.trash = trashView;
        trashView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.trash.setVisibility(8);
        this.previewContainer.addView(this.trash, LayoutHelper.createFrame(-1, 120, 81, 0, 0, 0, 16));
        PreviewHighlightView previewHighlightView = new PreviewHighlightView(context, this.currentAccount, this.resourcesProvider);
        this.previewHighlight = previewHighlightView;
        this.previewContainer.addView(previewHighlightView, LayoutHelper.createFrame(-1, -1, 119));
    }

    public /* synthetic */ void lambda$initViews$5(View view) {
        if (this.noCameraPermission) {
            requestCameraPermission(true);
        }
    }

    public /* synthetic */ void lambda$initViews$6() {
        if (this.currentEditMode == -1 && this.currentPage == 1) {
            CaptionStory captionStory = this.captionEdit;
            if (captionStory.keyboardShown) {
                return;
            }
            if ((captionStory == null || !captionStory.isRecording()) && !this.timelineView.onBackPressed()) {
                switchToEditMode(0, true);
                PaintView paintView = this.paintView;
                if (paintView != null) {
                    paintView.openText();
                    this.paintView.enteredThroughText = true;
                }
            }
        }
    }

    public /* synthetic */ void lambda$initViews$7() {
        this.videoError = true;
        this.previewButtons.setShareEnabled(false);
        this.downloadButton.showFailedVideo();
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$9 */
    /* loaded from: classes6.dex */
    public class C74819 extends CaptionStory {
        @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
        public boolean drawOver2FromParent() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C74819(Context context, FrameLayout frameLayout, SizeNotifierFrameLayout sizeNotifierFrameLayout, FrameLayout frameLayout2, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager) {
            super(context, frameLayout, sizeNotifierFrameLayout, frameLayout2, resourcesProvider, blurManager);
            StoryRecorder.this = r8;
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
        protected boolean ignoreTouches(float f, float f2) {
            if (StoryRecorder.this.paintView != null && StoryRecorder.this.paintView.entitiesView != null && !StoryRecorder.this.captionEdit.keyboardShown) {
                float x = f + StoryRecorder.this.captionEdit.getX();
                float y = f2 + StoryRecorder.this.captionEdit.getY();
                float x2 = x + StoryRecorder.this.captionContainer.getX();
                float y2 = y + StoryRecorder.this.captionContainer.getY();
                float x3 = x2 - StoryRecorder.this.previewContainer.getX();
                float y3 = y2 - StoryRecorder.this.previewContainer.getY();
                for (int i = 0; i < StoryRecorder.this.paintView.entitiesView.getChildCount(); i++) {
                    View childAt = StoryRecorder.this.paintView.entitiesView.getChildAt(i);
                    if (childAt instanceof EntityView) {
                        org.telegram.p043ui.Components.Rect selectionBounds = ((EntityView) childAt).getSelectionBounds();
                        RectF rectF = AndroidUtilities.rectTmp;
                        float f3 = selectionBounds.f1942x;
                        float f4 = selectionBounds.f1943y;
                        rectF.set(f3, f4, selectionBounds.width + f3, selectionBounds.height + f4);
                        if (rectF.contains(x3, y3)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
        public void drawBlurBitmap(Bitmap bitmap, float f) {
            StoryRecorder.this.windowView.drawBlurBitmap(bitmap, f);
            super.drawBlurBitmap(bitmap, f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
        public boolean captionLimitToast() {
            if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
                return false;
            }
            Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
            if (visibleBulletin == null || visibleBulletin.tag != 2) {
                int i = MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitPremium;
                int round = Math.round(i / MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitDefault);
                SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString("CaptionPremiumSubtitle", round, "" + i));
                int indexOf = replaceTags.toString().indexOf("__");
                if (indexOf >= 0) {
                    replaceTags.replace(indexOf, indexOf + 2, (CharSequence) "");
                    int indexOf2 = replaceTags.toString().indexOf("__");
                    if (indexOf2 >= 0) {
                        replaceTags.replace(indexOf2, indexOf2 + 2, (CharSequence) "");
                        replaceTags.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourcesProvider)), indexOf, indexOf2, 33);
                        replaceTags.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.9.1
                            {
                                C74819.this = this;
                            }

                            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                            public void updateDrawState(TextPaint textPaint) {
                                textPaint.setUnderlineText(false);
                            }

                            @Override // android.text.style.ClickableSpan
                            public void onClick(View view) {
                                StoryRecorder.this.openPremium();
                            }
                        }, indexOf, indexOf2, 33);
                    }
                }
                Bulletin createSimpleBulletin = BulletinFactory.m66of(StoryRecorder.this.captionContainer, this.resourcesProvider).createSimpleBulletin(C3632R.raw.caption_limit, LocaleController.getString("CaptionPremiumTitle"), replaceTags);
                createSimpleBulletin.tag = 2;
                createSimpleBulletin.setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
                createSimpleBulletin.show(false);
                return true;
            }
            return false;
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
        protected void onCaptionLimitUpdate(boolean z) {
            StoryRecorder.this.previewButtons.setShareEnabled((StoryRecorder.this.videoError || z || (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStoryLimit() && (StoryRecorder.this.outputEntry == null || !StoryRecorder.this.outputEntry.isEdit))) ? false : true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionStory
        public boolean canRecord() {
            return StoryRecorder.this.requestAudioPermission();
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionStory
        public void putRecorder(final RoundVideoRecorder roundVideoRecorder) {
            if (StoryRecorder.this.currentRoundRecorder != null) {
                StoryRecorder.this.currentRoundRecorder.destroy(true);
            }
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.mute(true);
                StoryRecorder.this.previewView.seek(0L);
            }
            roundVideoRecorder.onDone(new Utilities.Callback3() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$9$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    StoryRecorder.C74819.this.lambda$putRecorder$0(roundVideoRecorder, (File) obj, (String) obj2, (Long) obj3);
                }
            });
            roundVideoRecorder.onDestroy(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C74819.this.lambda$putRecorder$1();
                }
            });
            StoryRecorder.this.previewContainer.addView(StoryRecorder.this.currentRoundRecorder = roundVideoRecorder, LayoutHelper.createFrame(-1, -1));
        }

        public /* synthetic */ void lambda$putRecorder$0(RoundVideoRecorder roundVideoRecorder, File file, String str, Long l) {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.mute(false);
                StoryRecorder.this.previewView.seek(0L);
            }
            if (StoryRecorder.this.outputEntry != null) {
                StoryRecorder.this.outputEntry.round = file;
                StoryRecorder.this.outputEntry.roundThumb = str;
                StoryRecorder.this.outputEntry.roundDuration = l.longValue();
                StoryRecorder.this.outputEntry.roundLeft = BitmapDescriptorFactory.HUE_RED;
                StoryRecorder.this.outputEntry.roundRight = 1.0f;
                StoryRecorder.this.outputEntry.roundOffset = 0L;
                StoryRecorder.this.outputEntry.roundVolume = 1.0f;
                StoryRecorder.this.createPhotoPaintView();
                if (StoryRecorder.this.previewView != null && StoryRecorder.this.paintView != null) {
                    RoundView createRound = StoryRecorder.this.paintView.createRound(StoryRecorder.this.outputEntry.roundThumb, true);
                    setHasRoundVideo(true);
                    StoryRecorder.this.previewView.setupRound(StoryRecorder.this.outputEntry, createRound, true);
                    roundVideoRecorder.hideTo(createRound);
                    return;
                }
                roundVideoRecorder.destroy(false);
            }
        }

        public /* synthetic */ void lambda$putRecorder$1() {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.mute(false);
                StoryRecorder.this.previewView.seek(0L);
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionStory
        public void removeRound() {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.setupRound(null, null, true);
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.deleteRound();
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.setHasRoundVideo(false);
            }
            if (StoryRecorder.this.outputEntry != null) {
                if (StoryRecorder.this.outputEntry.round != null) {
                    try {
                        StoryRecorder.this.outputEntry.round.delete();
                    } catch (Exception unused) {
                    }
                    StoryRecorder.this.outputEntry.round = null;
                }
                if (StoryRecorder.this.outputEntry.roundThumb != null) {
                    try {
                        new File(StoryRecorder.this.outputEntry.roundThumb).delete();
                    } catch (Exception unused2) {
                    }
                    StoryRecorder.this.outputEntry.roundThumb = null;
                }
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionContainerView
        public void invalidateDrawOver2() {
            if (StoryRecorder.this.captionEditOverlay != null) {
                StoryRecorder.this.captionEditOverlay.invalidate();
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.CaptionStory
        public int getTimelineHeight() {
            if (StoryRecorder.this.videoTimelineContainerView == null || StoryRecorder.this.timelineView == null || StoryRecorder.this.timelineView.getVisibility() != 0) {
                return 0;
            }
            return StoryRecorder.this.timelineView.getContentHeight();
        }
    }

    public /* synthetic */ void lambda$initViews$8(Integer num) {
        FrameLayout frameLayout = this.videoTimelineContainerView;
        if (frameLayout != null) {
            frameLayout.setTranslationY((-(this.captionEdit.getEditTextHeight() + AndroidUtilities.m107dp(12))) + AndroidUtilities.m107dp(64));
        }
        Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
        if (visibleBulletin == null || visibleBulletin.tag != 2) {
            return;
        }
        visibleBulletin.updatePosition();
    }

    public /* synthetic */ void lambda$initViews$9(Integer num) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null) {
            storyEntry.period = num.intValue();
            MessagesController.getGlobalMainSettings().edit().putInt("story_period", num.intValue()).apply();
        }
    }

    public /* synthetic */ void lambda$initViews$10(Boolean bool) {
        TimelineView timelineView;
        if (bool.booleanValue() && (timelineView = this.timelineView) != null) {
            timelineView.onBackPressed();
        }
        this.previewView.updatePauseReason(2, bool.booleanValue());
        this.videoTimelineContainerView.clearAnimation();
        this.videoTimelineContainerView.animate().alpha(bool.booleanValue() ? BitmapDescriptorFactory.HUE_RED : 1.0f).setDuration(120L).start();
        Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
        if (visibleBulletin == null || visibleBulletin.tag != 2) {
            return;
        }
        visibleBulletin.updatePosition();
    }

    public /* synthetic */ void lambda$initViews$11(View view) {
        if (this.awaitingPlayer) {
            return;
        }
        onBackPressed();
    }

    public /* synthetic */ void lambda$initViews$12(Runnable runnable) {
        applyPaint();
        applyPaintMessage();
        applyFilter(runnable);
    }

    public /* synthetic */ void lambda$initViews$13(View view) {
        String string;
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null || this.awaitingPlayer) {
            return;
        }
        storyEntry.muted = !storyEntry.muted;
        boolean z = !TextUtils.isEmpty(storyEntry.audioPath);
        StoryEntry storyEntry2 = this.outputEntry;
        boolean z2 = storyEntry2.round != null;
        HintView2 hintView2 = this.muteHint;
        if (storyEntry2.muted) {
            string = LocaleController.getString((z || z2) ? C3632R.string.StoryOriginalSoundMuted : C3632R.string.StorySoundMuted);
        } else {
            string = LocaleController.getString((z || z2) ? C3632R.string.StoryOriginalSoundNotMuted : C3632R.string.StorySoundNotMuted);
        }
        hintView2.setText(string, this.muteHint.shown());
        this.muteHint.show();
        setIconMuted(this.outputEntry.muted, true);
        this.previewView.checkVolumes();
    }

    public /* synthetic */ void lambda$initViews$14(View view) {
        boolean isPlaying = this.previewView.isPlaying();
        this.previewView.play(!isPlaying);
        this.playButton.drawable.setPause(!isPlaying, true);
    }

    public /* synthetic */ void lambda$initViews$15(View view) {
        if (this.cameraView == null || this.awaitingPlayer) {
            return;
        }
        String currentFlashMode = getCurrentFlashMode();
        String nextFlashMode = getNextFlashMode();
        if (currentFlashMode == null || currentFlashMode.equals(nextFlashMode)) {
            return;
        }
        setCurrentFlashMode(nextFlashMode);
        setCameraFlashModeIcon(nextFlashMode, true);
    }

    public /* synthetic */ boolean lambda$initViews$19(View view) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || !dualCameraView.isFrontface()) {
            return false;
        }
        checkFrontfaceFlashModes();
        this.flashButton.setSelected(true);
        this.flashViews.previewStart();
        ItemOptions.makeOptions(this.containerView, this.resourcesProvider, this.flashButton).addView(new SliderView(getContext(), 1).setValue(this.flashViews.warmth).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda64
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$16((Float) obj);
            }
        })).addSpaceGap().addView(new SliderView(getContext(), 2).setMinMax(0.65f, 1.0f).setValue(this.flashViews.intensity).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda66
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                StoryRecorder.this.lambda$initViews$17((Float) obj);
            }
        })).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$initViews$18();
            }
        }).setDimAlpha(0).setGravity(5).translate(AndroidUtilities.m107dp(46), -AndroidUtilities.m107dp(4)).setBackgroundColor(-1155851493).show();
        return true;
    }

    public /* synthetic */ void lambda$initViews$16(Float f) {
        this.flashViews.setWarmth(f.floatValue());
    }

    public /* synthetic */ void lambda$initViews$17(Float f) {
        this.flashViews.setIntensity(f.floatValue());
    }

    public /* synthetic */ void lambda$initViews$18() {
        saveFrontFaceFlashMode();
        this.flashViews.previewEnd();
        this.flashButton.setSelected(false);
    }

    public /* synthetic */ void lambda$initViews$20(View view) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || this.currentPage != 0) {
            return;
        }
        dualCameraView.toggleDual();
        this.dualButton.setValue(this.cameraView.isDual());
        this.dualHint.hide();
        MessagesController.getGlobalMainSettings().edit().putInt("storydualhint", 2).apply();
        if (this.savedDualHint.shown()) {
            MessagesController.getGlobalMainSettings().edit().putInt("storysvddualhint", 2).apply();
        }
        this.savedDualHint.hide();
    }

    public static /* synthetic */ void lambda$initViews$21() {
        MessagesController.getGlobalMainSettings().edit().putInt("storydualhint", MessagesController.getGlobalMainSettings().getInt("storydualhint", 0) + 1).apply();
    }

    public /* synthetic */ void lambda$initViews$22(float f) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            this.cameraZoom = f;
            dualCameraView.setZoom(f);
        }
        showZoomControls(true, true);
    }

    public /* synthetic */ void lambda$initViews$23(Boolean bool) {
        if (this.takingPhoto || this.takingVideo) {
            return;
        }
        boolean booleanValue = bool.booleanValue();
        this.isVideo = booleanValue;
        showVideoTimer(booleanValue, true);
        this.modeSwitcherView.switchMode(this.isVideo);
        this.recordControl.startAsVideo(this.isVideo);
    }

    public /* synthetic */ void lambda$initViews$24(Float f) {
        this.recordControl.startAsVideoT(f.floatValue());
    }

    public /* synthetic */ void lambda$initViews$30(Integer num) {
        StoriesController.StoryLimit checkStoryLimit;
        if (this.outputEntry == null || this.captionEdit.isRecording()) {
            return;
        }
        this.captionEdit.clearFocus();
        if (num.intValue() == 4) {
            StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
            if (storyPrivacyBottomSheet != null) {
                storyPrivacyBottomSheet.dismiss();
                this.privacySheet = null;
            }
            if (this.videoError) {
                this.downloadButton.showFailedVideo();
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                PreviewButtons.ShareButtonView shareButtonView = this.previewButtons.shareButton;
                int i = -this.shiftDp;
                this.shiftDp = i;
                AndroidUtilities.shakeViewSpring(shareButtonView, i);
                return;
            }
            CaptionStory captionStory = this.captionEdit;
            if (captionStory != null && captionStory.isCaptionOverLimit()) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                AnimatedTextView animatedTextView = this.captionEdit.limitTextView;
                int i2 = -this.shiftDp;
                this.shiftDp = i2;
                AndroidUtilities.shakeViewSpring(animatedTextView, i2);
                this.captionEdit.captionLimitToast();
            } else if (!this.outputEntry.isEdit && (checkStoryLimit = MessagesController.getInstance(this.currentAccount).storiesController.checkStoryLimit()) != null && checkStoryLimit.active(this.currentAccount)) {
                showLimitReachedSheet(checkStoryLimit, false);
            } else {
                this.outputEntry.captionEntitiesAllowed = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed();
                CaptionStory captionStory2 = this.captionEdit;
                if (captionStory2 != null && !this.outputEntry.captionEntitiesAllowed) {
                    CharSequence text = captionStory2.getText();
                    if ((text instanceof Spannable) && (((TextStyleSpan[]) ((Spannable) text).getSpans(0, text.length(), TextStyleSpan.class)).length > 0 || ((URLSpan[]) ((Spannable) text).getSpans(0, text.length(), URLSpan.class)).length > 0)) {
                        BulletinFactory.m66of(this.windowView, this.resourcesProvider).createSimpleBulletin(C3632R.raw.voip_invite, premiumText(LocaleController.getString("StoryPremiumFormatting", C3632R.string.StoryPremiumFormatting))).show(true);
                        CaptionStory captionStory3 = this.captionEdit;
                        int i3 = -this.shiftDp;
                        this.shiftDp = i3;
                        AndroidUtilities.shakeViewSpring(captionStory3, i3);
                        return;
                    }
                }
                StoryEntry storyEntry = this.outputEntry;
                if (storyEntry.isEdit) {
                    storyEntry.editedPrivacy = false;
                    applyFilter(null);
                    upload(true);
                    return;
                }
                if (this.selectedDialogId != 0) {
                    storyEntry.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.selectedDialogId);
                }
                this.previewView.updatePauseReason(3, true);
                StoryPrivacyBottomSheet whenSelectedRules = new StoryPrivacyBottomSheet(this.activity, this.outputEntry.period, this.resourcesProvider).setValue(this.outputEntry.privacy).setPeer(this.outputEntry.peer).setCanChangePeer(this.canChangePeer).whenDismiss(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda73
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        StoryRecorder.this.lambda$initViews$25((StoryPrivacyBottomSheet.StoryPrivacy) obj);
                    }
                }).isEdit(false).setWarnUsers(getUsersFrom(this.captionEdit.getText())).whenSelectedPeer(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda72
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        StoryRecorder.this.lambda$initViews$26((TLRPC$InputPeer) obj);
                    }
                }).whenSelectedRules(new StoryPrivacyBottomSheet.DoneCallback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda79
                    @Override // org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet.DoneCallback
                    public final void done(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, boolean z, boolean z2, TLRPC$InputPeer tLRPC$InputPeer, Runnable runnable) {
                        StoryRecorder.this.lambda$initViews$28(storyPrivacy, z, z2, tLRPC$InputPeer, runnable);
                    }
                }, false);
                this.privacySheet = whenSelectedRules;
                whenSelectedRules.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda10
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        StoryRecorder.this.lambda$initViews$29(dialogInterface);
                    }
                });
                this.privacySheet.show();
            }
        } else if (num.intValue() == 0) {
            switchToEditMode(0, true);
            PaintView paintView = this.paintView;
            if (paintView != null) {
                paintView.enteredThroughText = false;
                paintView.openPaint();
            }
        } else if (num.intValue() == 1) {
            switchToEditMode(0, true);
            PaintView paintView2 = this.paintView;
            if (paintView2 != null) {
                paintView2.openText();
                this.paintView.enteredThroughText = true;
            }
        } else if (num.intValue() == 2) {
            createPhotoPaintView();
            hidePhotoPaintView();
            PaintView paintView3 = this.paintView;
            if (paintView3 != null) {
                paintView3.openStickers();
            }
        } else if (num.intValue() == 3) {
            switchToEditMode(1, true);
        }
    }

    public /* synthetic */ void lambda$initViews$25(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null) {
            storyEntry.privacy = storyPrivacy;
        }
    }

    public /* synthetic */ void lambda$initViews$26(TLRPC$InputPeer tLRPC$InputPeer) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        if (tLRPC$InputPeer == null) {
            tLRPC$InputPeer = new TLRPC$TL_inputPeerSelf();
        }
        storyEntry.peer = tLRPC$InputPeer;
    }

    public /* synthetic */ void lambda$initViews$28(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, boolean z, boolean z2, TLRPC$InputPeer tLRPC$InputPeer, final Runnable runnable) {
        if (this.outputEntry == null) {
            return;
        }
        this.previewView.updatePauseReason(5, true);
        this.outputEntry.privacy = storyPrivacy;
        StoryPrivacySelector.save(this.currentAccount, storyPrivacy);
        StoryEntry storyEntry = this.outputEntry;
        storyEntry.pinned = z2;
        storyEntry.allowScreenshots = z;
        storyEntry.privacyRules.clear();
        this.outputEntry.privacyRules.addAll(storyPrivacy.rules);
        StoryEntry storyEntry2 = this.outputEntry;
        storyEntry2.editedPrivacy = true;
        storyEntry2.peer = tLRPC$InputPeer;
        applyFilter(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$initViews$27(runnable);
            }
        });
    }

    public /* synthetic */ void lambda$initViews$27(Runnable runnable) {
        runnable.run();
        upload(true);
    }

    public /* synthetic */ void lambda$initViews$29(DialogInterface dialogInterface) {
        this.previewView.updatePauseReason(3, false);
        this.privacySheet = null;
    }

    public Bitmap getUiBlurBitmap() {
        PreviewView previewView;
        PhotoFilterView photoFilterView = this.photoFilterView;
        Bitmap uiBlurBitmap = photoFilterView != null ? photoFilterView.getUiBlurBitmap() : null;
        return (uiBlurBitmap != null || (previewView = this.previewView) == null || previewView.getTextureView() == null) ? uiBlurBitmap : this.previewView.getTextureView().getUiBlurBitmap();
    }

    private ArrayList<String> getUsersFrom(CharSequence charSequence) {
        URLSpanUserMention[] uRLSpanUserMentionArr;
        ArrayList<String> arrayList = new ArrayList<>();
        if (charSequence instanceof Spanned) {
            for (URLSpanUserMention uRLSpanUserMention : (URLSpanUserMention[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), URLSpanUserMention.class)) {
                if (uRLSpanUserMention != null) {
                    try {
                        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(Long.parseLong(uRLSpanUserMention.getURL())));
                        if (user != null && !UserObject.isUserSelf(user) && UserObject.getPublicUsername(user) != null && !arrayList.contains(user)) {
                            arrayList.add(UserObject.getPublicUsername(user));
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (charSequence != null) {
            int i = -1;
            for (int i2 = 0; i2 < charSequence.length(); i2++) {
                char charAt = charSequence.charAt(i2);
                if (charAt == '@') {
                    i = i2 + 1;
                } else if (charAt == ' ') {
                    if (i != -1) {
                        String charSequence2 = charSequence.subSequence(i, i2).toString();
                        TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(charSequence2);
                        if (userOrChat instanceof TLRPC$User) {
                            TLRPC$User tLRPC$User = (TLRPC$User) userOrChat;
                            if (!tLRPC$User.bot && !UserObject.isUserSelf(tLRPC$User) && tLRPC$User.f1751id != 777000 && !UserObject.isReplyUser(tLRPC$User) && !arrayList.contains(charSequence2)) {
                                arrayList.add(charSequence2);
                            }
                        }
                    }
                    i = -1;
                }
            }
            if (i != -1) {
                String charSequence3 = charSequence.subSequence(i, charSequence.length()).toString();
                TLObject userOrChat2 = MessagesController.getInstance(this.currentAccount).getUserOrChat(charSequence3);
                if (userOrChat2 instanceof TLRPC$User) {
                    TLRPC$User tLRPC$User2 = (TLRPC$User) userOrChat2;
                    if (!tLRPC$User2.bot && !UserObject.isUserSelf(tLRPC$User2) && tLRPC$User2.f1751id != 777000 && !UserObject.isReplyUser(tLRPC$User2) && !arrayList.contains(charSequence3)) {
                        arrayList.add(charSequence3);
                    }
                }
            }
        }
        return arrayList;
    }

    private DraftSavedHint getDraftSavedHint() {
        if (this.draftSavedHint == null) {
            DraftSavedHint draftSavedHint = new DraftSavedHint(getContext());
            this.draftSavedHint = draftSavedHint;
            this.controlContainer.addView(draftSavedHint, LayoutHelper.createFrame(-1, -2, 87, 0, 0, 0, 78));
        }
        return this.draftSavedHint;
    }

    private void upload(final boolean z) {
        if (this.preparingUpload) {
            return;
        }
        this.preparingUpload = true;
        applyPaintInBackground(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$upload$31(z);
            }
        });
    }

    public /* synthetic */ void lambda$upload$31(boolean z) {
        applyPaintMessage();
        this.preparingUpload = false;
        uploadInternal(z);
    }

    private void uploadInternal(final boolean z) {
        if (this.outputEntry == null) {
            close(true);
            return;
        }
        destroyPhotoFilterView();
        prepareThumb(this.outputEntry, false);
        CharSequence text = this.captionEdit.getText();
        StoryEntry storyEntry = this.outputEntry;
        storyEntry.editedCaption = !TextUtils.equals(storyEntry.caption, text);
        this.outputEntry.caption = text;
        MessagesController.getInstance(this.currentAccount).getStoriesController().uploadStory(this.outputEntry, z);
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2.isDraft && !storyEntry2.isEdit) {
            MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().delete(this.outputEntry);
        }
        this.outputEntry.cancelCheckStickers();
        final long j = UserConfig.getInstance(this.currentAccount).clientUserId;
        TLRPC$InputPeer tLRPC$InputPeer = this.outputEntry.peer;
        if (tLRPC$InputPeer != null && !(tLRPC$InputPeer instanceof TLRPC$TL_inputPeerSelf)) {
            j = DialogObject.getPeerDialogId(tLRPC$InputPeer);
        }
        this.outputEntry = null;
        this.wasSend = true;
        this.wasSendPeer = j;
        this.forceBackgroundVisible = true;
        checkBackgroundVisibility();
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$uploadInternal$33(z, j);
            }
        };
        ClosingViewProvider closingViewProvider = this.closingSourceProvider;
        if (closingViewProvider != null) {
            closingViewProvider.preLayout(j, runnable);
        } else {
            runnable.run();
        }
        MessagesController.getGlobalMainSettings().edit().putInt("storyhint2", 2).apply();
    }

    public /* synthetic */ void lambda$uploadInternal$33(boolean z, long j) {
        if (z) {
            SourceView sourceView = this.fromSourceView;
            if (sourceView != null) {
                sourceView.show();
                this.fromSourceView = null;
            }
            ClosingViewProvider closingViewProvider = this.closingSourceProvider;
            SourceView view = closingViewProvider != null ? closingViewProvider.getView(j) : null;
            this.fromSourceView = view;
            if (view != null) {
                this.openType = view.type;
                this.containerView.updateBackground();
                FrameLayout frameLayout = this.previewContainer;
                int i = this.openType;
                frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
                this.fromRect.set(this.fromSourceView.screenRect);
                SourceView sourceView2 = this.fromSourceView;
                this.fromRounding = sourceView2.rounding;
                sourceView2.hide();
                if (SharedConfig.getDevicePerformanceClass() > 1) {
                    LiteMode.isEnabled(LiteMode.FLAGS_CHAT);
                }
            }
            this.closingSourceProvider = null;
            Activity activity = this.activity;
            if (activity instanceof LaunchActivity) {
                ((LaunchActivity) activity).drawerLayoutContainer.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda44
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$uploadInternal$32();
                    }
                });
                return;
            } else {
                close(true);
                return;
            }
        }
        close(true);
    }

    public /* synthetic */ void lambda$uploadInternal$32() {
        close(true);
    }

    private File prepareThumb(StoryEntry storyEntry, boolean z) {
        if (storyEntry == null || this.previewView.getWidth() <= 0 || this.previewView.getHeight() <= 0) {
            return null;
        }
        File file = z ? storyEntry.draftThumbFile : storyEntry.uploadThumbFile;
        if (file != null) {
            file.delete();
        }
        float f = z ? 0.33333334f : 1.0f;
        int width = (int) (this.previewView.getWidth() * f);
        Bitmap createBitmap = Bitmap.createBitmap(width, (int) (this.previewView.getHeight() * f), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        canvas.save();
        canvas.scale(f, f);
        this.previewView.draw(canvas);
        canvas.restore();
        Paint paint = new Paint(2);
        VideoEditTextureView textureView = this.previewView.getTextureView();
        if (storyEntry.isVideo && !storyEntry.isRepostMessage && textureView != null) {
            Bitmap bitmap = textureView.getBitmap();
            Matrix transform = textureView.getTransform(null);
            if (transform != null) {
                Matrix matrix = new Matrix(transform);
                matrix.postScale(f, f);
                transform = matrix;
            }
            canvas.drawBitmap(bitmap, transform, paint);
            bitmap.recycle();
        }
        File file2 = storyEntry.paintBlurFile;
        if (file2 != null) {
            try {
                Bitmap decodeFile = BitmapFactory.decodeFile(file2.getPath());
                canvas.save();
                float width2 = width / decodeFile.getWidth();
                canvas.scale(width2, width2);
                canvas.drawBitmap(decodeFile, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                canvas.restore();
                decodeFile.recycle();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        File file3 = storyEntry.paintFile;
        if (file3 != null) {
            try {
                Bitmap decodeFile2 = BitmapFactory.decodeFile(file3.getPath());
                canvas.save();
                float width3 = width / decodeFile2.getWidth();
                canvas.scale(width3, width3);
                canvas.drawBitmap(decodeFile2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                canvas.restore();
                decodeFile2.recycle();
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
        }
        PaintView paintView = this.paintView;
        if (paintView != null && paintView.entitiesView != null) {
            canvas.save();
            canvas.scale(f, f);
            PaintView paintView2 = this.paintView;
            paintView2.drawForThemeToggle = true;
            EntitiesContainerView entitiesContainerView = paintView2.entitiesView;
            entitiesContainerView.drawForThumb = true;
            entitiesContainerView.draw(canvas);
            PaintView paintView3 = this.paintView;
            paintView3.entitiesView.drawForThumb = false;
            paintView3.drawForThemeToggle = false;
            canvas.restore();
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, 40, 22, true);
        File makeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, false);
        try {
            createBitmap.compress(Bitmap.CompressFormat.JPEG, z ? 95 : 99, new FileOutputStream(makeCacheFile));
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        }
        createBitmap.recycle();
        if (z) {
            storyEntry.draftThumbFile = makeCacheFile;
        } else {
            storyEntry.uploadThumbFile = makeCacheFile;
        }
        storyEntry.thumbBitmap = createScaledBitmap;
        return makeCacheFile;
    }

    public void setCameraFlashModeIcon(String str, boolean z) {
        int i;
        this.flashButton.clearAnimation();
        DualCameraView dualCameraView = this.cameraView;
        if ((dualCameraView != null && dualCameraView.isDual()) || this.animatedRecording) {
            str = null;
        }
        if (str == null) {
            if (z) {
                this.flashButton.setVisibility(0);
                this.flashButton.animate().alpha(BitmapDescriptorFactory.HUE_RED).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda31
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$setCameraFlashModeIcon$34();
                    }
                }).start();
                return;
            }
            this.flashButton.setVisibility(8);
            this.flashButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 3551) {
            if (hashCode != 109935) {
                if (hashCode == 3005871 && str.equals(TtmlNode.TEXT_EMPHASIS_AUTO)) {
                    c = 1;
                }
            } else if (str.equals("off")) {
                c = 3;
            }
        } else if (str.equals("on")) {
            c = 0;
        }
        if (c == 0) {
            i = C3632R.C3634drawable.media_photo_flash_on2;
            this.flashButton.setContentDescription(LocaleController.getString("AccDescrCameraFlashOn", C3632R.string.AccDescrCameraFlashOn));
        } else if (c == 1) {
            i = C3632R.C3634drawable.media_photo_flash_auto2;
            this.flashButton.setContentDescription(LocaleController.getString("AccDescrCameraFlashAuto", C3632R.string.AccDescrCameraFlashAuto));
        } else {
            i = C3632R.C3634drawable.media_photo_flash_off2;
            this.flashButton.setContentDescription(LocaleController.getString("AccDescrCameraFlashOff", C3632R.string.AccDescrCameraFlashOff));
        }
        ToggleButton2 toggleButton2 = this.flashButton;
        this.flashButtonResId = i;
        toggleButton2.setIcon(i, false);
        this.flashButton.setVisibility(0);
        if (z) {
            this.flashButton.animate().alpha(1.0f).start();
        } else {
            this.flashButton.setAlpha(1.0f);
        }
    }

    public /* synthetic */ void lambda$setCameraFlashModeIcon$34() {
        this.flashButton.setVisibility(8);
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$12 */
    /* loaded from: classes6.dex */
    public class C745412 implements RecordControl.Delegate {
        C745412() {
            StoryRecorder.this = r1;
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public boolean canRecordAudio() {
            return StoryRecorder.this.requestAudioPermission();
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onPhotoShoot() {
            if (StoryRecorder.this.takingPhoto || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView == null || !StoryRecorder.this.cameraView.isInited()) {
                return;
            }
            StoryRecorder.this.cameraHint.hide();
            if (StoryRecorder.this.outputFile != null) {
                try {
                    StoryRecorder.this.outputFile.delete();
                } catch (Exception unused) {
                }
                StoryRecorder.this.outputFile = null;
            }
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.outputFile = StoryEntry.makeCacheFile(storyRecorder.currentAccount, false);
            StoryRecorder.this.takingPhoto = true;
            StoryRecorder.this.checkFrontfaceFlashModes();
            StoryRecorder.this.isDark = false;
            if (StoryRecorder.this.cameraView.isFrontface() && StoryRecorder.this.frontfaceFlashMode == 1) {
                StoryRecorder.this.checkIsDark();
            }
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flash(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        StoryRecorder.C745412.this.takePicture((Utilities.Callback) obj);
                    }
                });
            } else {
                takePicture(null);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00a3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void takePicture(final org.telegram.messenger.Utilities.Callback<java.lang.Runnable> r7) {
            /*
                r6 = this;
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                boolean r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$5300(r0)
                r1 = 1
                if (r0 != 0) goto L12
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.DualCameraView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$3300(r0)
                r0.startTakePictureAnimation(r1)
            L12:
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.DualCameraView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$3300(r0)
                boolean r0 = r0.isDual()
                r2 = 0
                if (r0 == 0) goto L7d
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.DualCameraView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$3300(r0)
                org.telegram.messenger.camera.CameraSession r0 = r0.getCameraSession()
                java.lang.String r0 = r0.getCurrentFlashMode()
                java.lang.String r3 = "off"
                boolean r0 = android.text.TextUtils.equals(r0, r3)
                if (r0 == 0) goto L7d
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.DualCameraView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$3300(r0)
                r0.pauseAsTakingPicture()
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.DualCameraView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$3300(r0)
                android.view.TextureView r0 = r0.getTextureView()
                android.graphics.Bitmap r0 = r0.getBitmap()
                java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L74
                org.telegram.ui.Stories.recorder.StoryRecorder r4 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this     // Catch: java.lang.Exception -> L74
                java.io.File r4 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9200(r4)     // Catch: java.lang.Exception -> L74
                java.io.File r4 = r4.getAbsoluteFile()     // Catch: java.lang.Exception -> L74
                r3.<init>(r4)     // Catch: java.lang.Exception -> L74
                android.graphics.Bitmap$CompressFormat r4 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.lang.Throwable -> L6a
                r5 = 100
                r0.compress(r4, r5, r3)     // Catch: java.lang.Throwable -> L6a
                r3.close()     // Catch: java.lang.Exception -> L67
                r4 = r1
                goto L79
            L67:
                r3 = move-exception
                r4 = r1
                goto L76
            L6a:
                r4 = move-exception
                r3.close()     // Catch: java.lang.Throwable -> L6f
                goto L73
            L6f:
                r3 = move-exception
                r4.addSuppressed(r3)     // Catch: java.lang.Exception -> L74
            L73:
                throw r4     // Catch: java.lang.Exception -> L74
            L74:
                r3 = move-exception
                r4 = r2
            L76:
                org.telegram.messenger.FileLog.m102e(r3)
            L79:
                r0.recycle()
                goto L7e
            L7d:
                r4 = r2
            L7e:
                if (r4 != 0) goto La3
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.DualCameraView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$3300(r0)
                org.telegram.messenger.camera.CameraSession r0 = r0.getCameraSession()
                org.telegram.ui.Stories.recorder.StoryRecorder r2 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.messenger.camera.CameraController r3 = org.telegram.messenger.camera.CameraController.getInstance()
                org.telegram.ui.Stories.recorder.StoryRecorder r4 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                java.io.File r4 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9200(r4)
                org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda7 r5 = new org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda7
                r5.<init>()
                boolean r7 = r3.takePicture(r4, r1, r0, r5)
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$4602(r2, r7)
                goto Ld9
            La3:
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$4602(r0, r2)
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                java.io.File r3 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9200(r0)
                org.telegram.ui.Stories.recorder.StoryEntry r3 = org.telegram.p043ui.Stories.recorder.StoryEntry.fromPhotoShoot(r3, r2)
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$8202(r0, r3)
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                int r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9300(r0)
                org.telegram.ui.Stories.recorder.StoryRecorder r3 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.StoryEntry r3 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$8200(r3)
                org.telegram.p043ui.Stories.recorder.StoryPrivacySelector.applySaved(r0, r3)
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9802(r0, r2)
                if (r7 == 0) goto Ld4
                org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda2 r0 = new org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda2
                r0.<init>()
                r7.run(r0)
                goto Ld9
            Ld4:
                org.telegram.ui.Stories.recorder.StoryRecorder r7 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                r7.navigateTo(r1, r1)
            Ld9:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.C745412.takePicture(org.telegram.messenger.Utilities$Callback):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0084  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$takePicture$1(org.telegram.messenger.Utilities.Callback r7, java.lang.Integer r8) {
            /*
                r6 = this;
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                boolean r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$5300(r0)
                r1 = 1
                if (r0 == 0) goto L13
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this     // Catch: java.lang.Exception -> L13
                org.telegram.ui.Stories.recorder.StoryRecorder$WindowView r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$400(r0)     // Catch: java.lang.Exception -> L13
                r2 = 3
                r0.performHapticFeedback(r2, r1)     // Catch: java.lang.Exception -> L13
            L13:
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                r2 = 0
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$4602(r0, r2)
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                java.io.File r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9200(r0)
                if (r0 != 0) goto L22
                return
            L22:
                r0 = -1
                android.graphics.BitmapFactory$Options r3 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Exception -> L3c
                r3.<init>()     // Catch: java.lang.Exception -> L3c
                r3.inJustDecodeBounds = r1     // Catch: java.lang.Exception -> L3c
                org.telegram.ui.Stories.recorder.StoryRecorder r4 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this     // Catch: java.lang.Exception -> L3c
                java.io.File r4 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9200(r4)     // Catch: java.lang.Exception -> L3c
                java.lang.String r4 = r4.getAbsolutePath()     // Catch: java.lang.Exception -> L3c
                android.graphics.BitmapFactory.decodeFile(r4, r3)     // Catch: java.lang.Exception -> L3c
                int r4 = r3.outWidth     // Catch: java.lang.Exception -> L3c
                int r3 = r3.outHeight     // Catch: java.lang.Exception -> L3d
                goto L3e
            L3c:
                r4 = r0
            L3d:
                r3 = r0
            L3e:
                int r5 = r8.intValue()
                if (r5 != r0) goto L46
                r5 = r2
                goto L48
            L46:
                r5 = 90
            L48:
                int r8 = r8.intValue()
                if (r8 != r0) goto L53
                if (r4 <= r3) goto L58
                r5 = 270(0x10e, float:3.78E-43)
                goto L58
            L53:
                if (r3 <= r4) goto L58
                if (r5 == 0) goto L58
                r5 = r2
            L58:
                org.telegram.ui.Stories.recorder.StoryRecorder r8 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                java.io.File r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9200(r8)
                org.telegram.ui.Stories.recorder.StoryEntry r0 = org.telegram.p043ui.Stories.recorder.StoryEntry.fromPhotoShoot(r0, r5)
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$8202(r8, r0)
                org.telegram.ui.Stories.recorder.StoryRecorder r8 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                int r8 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9300(r8)
                org.telegram.ui.Stories.recorder.StoryRecorder r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.ui.Stories.recorder.StoryEntry r0 = org.telegram.p043ui.Stories.recorder.StoryRecorder.access$8200(r0)
                org.telegram.p043ui.Stories.recorder.StoryPrivacySelector.applySaved(r8, r0)
                org.telegram.ui.Stories.recorder.StoryRecorder r8 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                org.telegram.p043ui.Stories.recorder.StoryRecorder.access$9802(r8, r2)
                if (r7 == 0) goto L84
                org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda3 r8 = new org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda3
                r8.<init>()
                r7.run(r8)
                goto L89
            L84:
                org.telegram.ui.Stories.recorder.StoryRecorder r7 = org.telegram.p043ui.Stories.recorder.StoryRecorder.this
                r7.navigateTo(r1, r1)
            L89:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.C745412.lambda$takePicture$1(org.telegram.messenger.Utilities$Callback, java.lang.Integer):void");
        }

        public /* synthetic */ void lambda$takePicture$0() {
            StoryRecorder.this.navigateTo(1, true);
        }

        public /* synthetic */ void lambda$takePicture$2() {
            StoryRecorder.this.navigateTo(1, true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onVideoRecordStart(final boolean z, final Runnable runnable) {
            if (StoryRecorder.this.takingVideo || StoryRecorder.this.stoppingTakingVideo || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView == null || StoryRecorder.this.cameraView.getCameraSession() == null) {
                return;
            }
            if (StoryRecorder.this.dualHint != null) {
                StoryRecorder.this.dualHint.hide();
            }
            if (StoryRecorder.this.savedDualHint != null) {
                StoryRecorder.this.savedDualHint.hide();
            }
            StoryRecorder.this.cameraHint.hide();
            StoryRecorder.this.takingVideo = true;
            if (StoryRecorder.this.outputFile != null) {
                try {
                    StoryRecorder.this.outputFile.delete();
                } catch (Exception unused) {
                }
                StoryRecorder.this.outputFile = null;
            }
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.outputFile = StoryEntry.makeCacheFile(storyRecorder.currentAccount, true);
            StoryRecorder.this.checkFrontfaceFlashModes();
            StoryRecorder.this.isDark = false;
            if (StoryRecorder.this.cameraView.isFrontface() && StoryRecorder.this.frontfaceFlashMode == 1) {
                StoryRecorder.this.checkIsDark();
            }
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flashIn(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.C745412.this.lambda$onVideoRecordStart$3(z, runnable);
                    }
                });
            } else {
                lambda$onVideoRecordStart$3(z, runnable);
            }
        }

        /* renamed from: startRecording */
        public void lambda$onVideoRecordStart$3(final boolean z, final Runnable runnable) {
            CameraController.getInstance().recordVideo(StoryRecorder.this.cameraView.getCameraSession(), StoryRecorder.this.outputFile, false, new CameraController.VideoTakeCallback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.camera.CameraController.VideoTakeCallback
                public final void onFinishVideoRecording(String str, long j) {
                    StoryRecorder.C745412.this.lambda$startRecording$5(str, j);
                }
            }, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C745412.this.lambda$startRecording$6(runnable, z);
                }
            }, StoryRecorder.this.cameraView, true);
            if (StoryRecorder.this.isVideo) {
                return;
            }
            StoryRecorder.this.isVideo = true;
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.showVideoTimer(storyRecorder.isVideo, true);
            StoryRecorder.this.modeSwitcherView.switchMode(StoryRecorder.this.isVideo);
            StoryRecorder.this.recordControl.startAsVideo(StoryRecorder.this.isVideo);
        }

        public /* synthetic */ void lambda$startRecording$5(String str, long j) {
            if (StoryRecorder.this.recordControl != null) {
                StoryRecorder.this.recordControl.stopRecordingLoading(true);
            }
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flashOut();
            }
            if (StoryRecorder.this.outputFile == null || StoryRecorder.this.cameraView == null) {
                return;
            }
            StoryRecorder.this.takingVideo = false;
            StoryRecorder.this.stoppingTakingVideo = false;
            if (j <= 800) {
                StoryRecorder.this.animateRecording(false, true);
                StoryRecorder.this.setAwakeLock(false);
                StoryRecorder.this.videoTimerView.setRecording(false, true);
                if (StoryRecorder.this.recordControl != null) {
                    StoryRecorder.this.recordControl.stopRecordingLoading(true);
                }
                try {
                    StoryRecorder.this.outputFile.delete();
                    StoryRecorder.this.outputFile = null;
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                if (str != null) {
                    try {
                        new File(str).delete();
                        return;
                    } catch (Exception e2) {
                        FileLog.m102e(e2);
                        return;
                    }
                }
                return;
            }
            StoryRecorder.this.showVideoTimer(false, true);
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.outputEntry = StoryEntry.fromVideoShoot(storyRecorder.outputFile, str, j);
            StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
            StoryRecorder.this.fromGallery = false;
            int videoWidth = StoryRecorder.this.cameraView.getVideoWidth();
            int videoHeight = StoryRecorder.this.cameraView.getVideoHeight();
            if (videoWidth > 0 && videoHeight > 0) {
                StoryRecorder.this.outputEntry.width = videoWidth;
                StoryRecorder.this.outputEntry.height = videoHeight;
                StoryRecorder.this.outputEntry.setupMatrix();
            }
            StoryRecorder.this.navigateToPreviewWithPlayerAwait(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C745412.this.lambda$startRecording$4();
                }
            }, 0L);
        }

        public /* synthetic */ void lambda$startRecording$4() {
            StoryRecorder.this.navigateTo(1, true);
        }

        public /* synthetic */ void lambda$startRecording$6(Runnable runnable, boolean z) {
            int i;
            String str;
            runnable.run();
            HintTextView hintTextView = StoryRecorder.this.hintTextView;
            if (z) {
                i = C3632R.string.StoryHintSwipeToZoom;
                str = "StoryHintSwipeToZoom";
            } else {
                i = C3632R.string.StoryHintPinchToZoom;
                str = "StoryHintPinchToZoom";
            }
            hintTextView.setText(LocaleController.getString(str, i), false);
            StoryRecorder.this.animateRecording(true, true);
            StoryRecorder.this.setAwakeLock(true);
            StoryRecorder.this.videoTimerView.setRecording(true, true);
            StoryRecorder.this.showVideoTimer(true, true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onVideoRecordLocked() {
            StoryRecorder.this.hintTextView.setText(LocaleController.getString("StoryHintPinchToZoom", C3632R.string.StoryHintPinchToZoom), true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onVideoRecordEnd(boolean z) {
            if (StoryRecorder.this.stoppingTakingVideo || !StoryRecorder.this.takingVideo) {
                return;
            }
            StoryRecorder.this.stoppingTakingVideo = true;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$12$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C745412.this.lambda$onVideoRecordEnd$7();
                }
            }, z ? 0L : 400L);
        }

        public /* synthetic */ void lambda$onVideoRecordEnd$7() {
            if (StoryRecorder.this.takingVideo && StoryRecorder.this.stoppingTakingVideo && StoryRecorder.this.cameraView != null) {
                StoryRecorder.this.showZoomControls(false, true);
                CameraController.getInstance().stopVideoRecording(StoryRecorder.this.cameraView.getCameraSessionRecording(), false, false);
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onVideoDuration(long j) {
            StoryRecorder.this.videoTimerView.setDuration(j, true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onGalleryClick() {
            if (StoryRecorder.this.currentPage != 0 || StoryRecorder.this.takingPhoto || StoryRecorder.this.takingVideo || !StoryRecorder.this.requestGalleryPermission()) {
                return;
            }
            StoryRecorder.this.lambda$animateGalleryListView$43(true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onFlipClick() {
            if (StoryRecorder.this.cameraView == null || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.takingPhoto || !StoryRecorder.this.cameraView.isInited() || StoryRecorder.this.currentPage != 0) {
                return;
            }
            if (StoryRecorder.this.savedDualHint != null) {
                StoryRecorder.this.savedDualHint.hide();
            }
            if (StoryRecorder.this.useDisplayFlashlight() && StoryRecorder.this.frontfaceFlashModes != null && !StoryRecorder.this.frontfaceFlashModes.isEmpty()) {
                ApplicationLoader.applicationContext.getSharedPreferences("camera", 0).edit().putString("flashMode", (String) StoryRecorder.this.frontfaceFlashModes.get(StoryRecorder.this.frontfaceFlashMode)).commit();
            }
            StoryRecorder.this.cameraView.switchCamera();
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.saveCameraFace(storyRecorder.cameraView.isFrontface());
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flashIn(null);
            } else {
                StoryRecorder.this.flashViews.flashOut();
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onFlipLongClick() {
            if (StoryRecorder.this.cameraView != null) {
                StoryRecorder.this.cameraView.toggleDual();
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.RecordControl.Delegate
        public void onZoom(float f) {
            StoryRecorder.this.zoomControlView.setZoom(f, true);
            StoryRecorder.this.showZoomControls(false, true);
        }
    }

    public void setAwakeLock(boolean z) {
        if (z) {
            this.windowLayoutParams.flags |= 128;
        } else {
            this.windowLayoutParams.flags &= -129;
        }
        try {
            this.windowManager.updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public void animateRecording(final boolean z, boolean z2) {
        DualCameraView dualCameraView;
        DualCameraView dualCameraView2;
        if (z) {
            HintView2 hintView2 = this.dualHint;
            if (hintView2 != null) {
                hintView2.hide();
            }
            HintView2 hintView22 = this.savedDualHint;
            if (hintView22 != null) {
                hintView22.hide();
            }
            HintView2 hintView23 = this.muteHint;
            if (hintView23 != null) {
                hintView23.hide();
            }
            HintView2 hintView24 = this.cameraHint;
            if (hintView24 != null) {
                hintView24.hide();
            }
        }
        if (this.animatedRecording == z) {
            return;
        }
        AnimatorSet animatorSet = this.recordingAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.recordingAnimator = null;
        }
        this.animatedRecording = z;
        int i = 8;
        float f = 1.0f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            this.backButton.setVisibility(0);
            this.flashButton.setVisibility(0);
            ToggleButton toggleButton = this.dualButton;
            DualCameraView dualCameraView3 = this.cameraView;
            if (dualCameraView3 != null && dualCameraView3.dualAvailable()) {
                i = 0;
            }
            toggleButton.setVisibility(i);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.recordingAnimator = animatorSet2;
            Animator[] animatorArr = new Animator[7];
            FlashViews.ImageViewInvertable imageViewInvertable = this.backButton;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 0.0f : 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(imageViewInvertable, property, fArr);
            ToggleButton2 toggleButton2 = this.flashButton;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = (z || this.currentPage != 0) ? 0.0f : 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(toggleButton2, property2, fArr2);
            ToggleButton toggleButton3 = this.dualButton;
            Property property3 = View.ALPHA;
            float[] fArr3 = new float[1];
            fArr3[0] = (z || this.currentPage != 0 || (dualCameraView2 = this.cameraView) == null || !dualCameraView2.dualAvailable()) ? 0.0f : 1.0f;
            animatorArr[2] = ObjectAnimator.ofFloat(toggleButton3, property3, fArr3);
            HintTextView hintTextView = this.hintTextView;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            fArr4[0] = (z && this.currentPage == 0) ? 1.0f : 0.0f;
            animatorArr[3] = ObjectAnimator.ofFloat(hintTextView, property4, fArr4);
            HintTextView hintTextView2 = this.hintTextView;
            Property property5 = View.TRANSLATION_Y;
            float[] fArr5 = new float[1];
            fArr5[0] = (z || this.currentPage != 0) ? 0.0f : AndroidUtilities.m107dp(16);
            animatorArr[4] = ObjectAnimator.ofFloat(hintTextView2, property5, fArr5);
            PhotoVideoSwitcherView photoVideoSwitcherView = this.modeSwitcherView;
            Property property6 = View.ALPHA;
            float[] fArr6 = new float[1];
            if (z || this.currentPage != 0) {
                f = 0.0f;
            }
            fArr6[0] = f;
            animatorArr[5] = ObjectAnimator.ofFloat(photoVideoSwitcherView, property6, fArr6);
            PhotoVideoSwitcherView photoVideoSwitcherView2 = this.modeSwitcherView;
            Property property7 = View.TRANSLATION_Y;
            float[] fArr7 = new float[1];
            if (z || this.currentPage != 0) {
                f2 = AndroidUtilities.m107dp(16);
            }
            fArr7[0] = f2;
            animatorArr[6] = ObjectAnimator.ofFloat(photoVideoSwitcherView2, property7, fArr7);
            animatorSet2.playTogether(animatorArr);
            this.recordingAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.13
                {
                    StoryRecorder.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z) {
                        StoryRecorder.this.backButton.setVisibility(8);
                    }
                    if (z || StoryRecorder.this.currentPage != 0) {
                        StoryRecorder.this.flashButton.setVisibility(8);
                    }
                }
            });
            this.recordingAnimator.setDuration(260L);
            this.recordingAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.recordingAnimator.start();
            return;
        }
        this.backButton.setAlpha(z ? 0.0f : 1.0f);
        this.backButton.setVisibility(z ? 8 : 0);
        this.flashButton.setAlpha((z || this.currentPage != 0) ? 0.0f : 1.0f);
        this.flashButton.setVisibility((z || this.currentPage != 0) ? 8 : 0);
        this.dualButton.setAlpha((z || this.currentPage != 0) ? 0.0f : 1.0f);
        ToggleButton toggleButton4 = this.dualButton;
        if (!z && this.currentPage == 0 && (dualCameraView = this.cameraView) != null && dualCameraView.dualAvailable()) {
            i = 0;
        }
        toggleButton4.setVisibility(i);
        this.hintTextView.setAlpha((z && this.currentPage == 0) ? 1.0f : 0.0f);
        this.hintTextView.setTranslationY((z || this.currentPage != 0) ? 0.0f : AndroidUtilities.m107dp(16));
        PhotoVideoSwitcherView photoVideoSwitcherView3 = this.modeSwitcherView;
        if (z || this.currentPage != 0) {
            f = 0.0f;
        }
        photoVideoSwitcherView3.setAlpha(f);
        PhotoVideoSwitcherView photoVideoSwitcherView4 = this.modeSwitcherView;
        if (z || this.currentPage != 0) {
            f2 = AndroidUtilities.m107dp(16);
        }
        photoVideoSwitcherView4.setTranslationY(f2);
    }

    public void checkIsDark() {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getTextureView() == null) {
            this.isDark = false;
            return;
        }
        Bitmap bitmap = this.cameraView.getTextureView().getBitmap();
        if (bitmap == null) {
            this.isDark = false;
            return;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        int width = bitmap.getWidth() / 12;
        int height = bitmap.getHeight() / 12;
        for (int i = 0; i < 10; i++) {
            int i2 = 0;
            while (i2 < 10) {
                i2++;
                f += AndroidUtilities.computePerceivedBrightness(bitmap.getPixel((i + 1) * width, i2 * height));
            }
        }
        bitmap.recycle();
        this.isDark = f / 100.0f < 0.22f;
    }

    public boolean useDisplayFlashlight() {
        DualCameraView dualCameraView;
        if ((this.takingPhoto || this.takingVideo) && (dualCameraView = this.cameraView) != null && dualCameraView.isFrontface()) {
            int i = this.frontfaceFlashMode;
            if (i == 2) {
                return true;
            }
            if (i == 1 && this.isDark) {
                return true;
            }
        }
        return false;
    }

    public void showVideoTimer(final boolean z, boolean z2) {
        if (this.videoTimerShown == z) {
            return;
        }
        this.videoTimerShown = z;
        if (z2) {
            this.videoTimerView.animate().alpha(z ? 1.0f : 0.0f).setDuration(350L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.lambda$showVideoTimer$35(z);
                }
            }).start();
            return;
        }
        this.videoTimerView.clearAnimation();
        this.videoTimerView.setAlpha(z ? 1.0f : 0.0f);
        if (z) {
            return;
        }
        this.videoTimerView.setRecording(false, false);
    }

    public /* synthetic */ void lambda$showVideoTimer$35(boolean z) {
        if (z) {
            return;
        }
        this.videoTimerView.setRecording(false, false);
    }

    public void showZoomControls(final boolean z, boolean z2) {
        if ((this.zoomControlView.getTag() != null && z) || (this.zoomControlView.getTag() == null && !z)) {
            if (z) {
                Runnable runnable = this.zoomControlHideRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda30
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$showZoomControls$36();
                    }
                };
                this.zoomControlHideRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.zoomControlAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.zoomControlView.setTag(z ? 1 : null);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.zoomControlAnimation = animatorSet2;
        animatorSet2.setDuration(180L);
        if (z) {
            this.zoomControlView.setVisibility(0);
        }
        AnimatorSet animatorSet3 = this.zoomControlAnimation;
        Animator[] animatorArr = new Animator[1];
        ZoomControlView zoomControlView = this.zoomControlView;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(zoomControlView, property, fArr);
        animatorSet3.playTogether(animatorArr);
        this.zoomControlAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.14
            {
                StoryRecorder.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    StoryRecorder.this.zoomControlView.setVisibility(8);
                }
                StoryRecorder.this.zoomControlAnimation = null;
            }
        });
        this.zoomControlAnimation.start();
        if (z) {
            Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.lambda$showZoomControls$37();
                }
            };
            this.zoomControlHideRunnable = runnable3;
            AndroidUtilities.runOnUIThread(runnable3, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }

    public /* synthetic */ void lambda$showZoomControls$36() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    public /* synthetic */ void lambda$showZoomControls$37() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:147:0x0082, code lost:
        if (r0.editedCaption == false) goto L87;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onBackPressed() {
        /*
            r4 = this;
            android.animation.ValueAnimator r0 = r4.openCloseAnimator
            r1 = 0
            if (r0 == 0) goto Lc
            boolean r0 = r0.isRunning()
            if (r0 == 0) goto Lc
            return r1
        Lc:
            org.telegram.ui.Stories.recorder.CaptionStory r0 = r4.captionEdit
            if (r0 == 0) goto L17
            boolean r0 = r0.stopRecording()
            if (r0 == 0) goto L17
            return r1
        L17:
            boolean r0 = r4.takingVideo
            if (r0 == 0) goto L21
            org.telegram.ui.Stories.recorder.RecordControl r0 = r4.recordControl
            r0.stopRecording()
            return r1
        L21:
            boolean r0 = r4.takingPhoto
            if (r0 == 0) goto L26
            return r1
        L26:
            org.telegram.ui.Stories.recorder.CaptionStory r0 = r4.captionEdit
            boolean r0 = r0.onBackPressed()
            if (r0 == 0) goto L2f
            return r1
        L2f:
            org.telegram.ui.Stories.recorder.GalleryListView r0 = r4.galleryListView
            if (r0 == 0) goto L41
            boolean r0 = r0.onBackPressed()
            if (r0 == 0) goto L3a
            return r1
        L3a:
            r4.lambda$animateGalleryListView$43(r1)
            r0 = 0
            r4.lastGallerySelectedAlbum = r0
            return r1
        L41:
            int r0 = r4.currentEditMode
            if (r0 != 0) goto L50
            org.telegram.ui.Stories.recorder.PaintView r0 = r4.paintView
            if (r0 == 0) goto L50
            boolean r0 = r0.onBackPressed()
            if (r0 == 0) goto L50
            return r1
        L50:
            int r0 = r4.currentEditMode
            r2 = -1
            r3 = 1
            if (r0 <= r2) goto L5a
            r4.switchToEditMode(r2, r3)
            return r1
        L5a:
            int r0 = r4.currentPage
            if (r0 != r3) goto Lc5
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r4.outputEntry
            if (r0 == 0) goto L6a
            boolean r2 = r0.isRepost
            if (r2 != 0) goto Lc5
            boolean r2 = r0.isRepostMessage
            if (r2 != 0) goto Lc5
        L6a:
            if (r0 == 0) goto L84
            boolean r0 = r0.isEdit
            if (r0 == 0) goto L84
            org.telegram.ui.Stories.recorder.PaintView r0 = r4.paintView
            if (r0 == 0) goto L7a
            boolean r0 = r0.hasChanges()
            if (r0 != 0) goto L84
        L7a:
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r4.outputEntry
            boolean r2 = r0.editedMedia
            if (r2 != 0) goto L84
            boolean r0 = r0.editedCaption
            if (r0 == 0) goto Lc5
        L84:
            org.telegram.ui.Stories.recorder.PaintView r0 = r4.paintView
            if (r0 == 0) goto L8f
            boolean r0 = r0.onBackPressed()
            if (r0 == 0) goto L8f
            return r1
        L8f:
            boolean r0 = r4.fromGallery
            if (r0 == 0) goto La5
            org.telegram.ui.Stories.recorder.PaintView r0 = r4.paintView
            if (r0 == 0) goto L9d
            boolean r0 = r0.hasChanges()
            if (r0 != 0) goto La5
        L9d:
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r4.outputEntry
            if (r0 == 0) goto Lad
            java.io.File r0 = r0.filterFile
            if (r0 == 0) goto Lad
        La5:
            org.telegram.ui.Stories.recorder.PreviewButtons r0 = r4.previewButtons
            boolean r0 = r0.isShareEnabled()
            if (r0 != 0) goto Lc1
        Lad:
            org.telegram.ui.Stories.recorder.StoryEntry r0 = r4.outputEntry
            if (r0 == 0) goto Lbd
            boolean r2 = r0.isEdit
            if (r2 == 0) goto Lbd
            boolean r2 = r0.isRepost
            if (r2 != 0) goto Lc1
            boolean r0 = r0.isRepostMessage
            if (r0 != 0) goto Lc1
        Lbd:
            r4.navigateTo(r1, r3)
            goto Lc4
        Lc1:
            r4.showDismissEntry()
        Lc4:
            return r1
        Lc5:
            r4.close(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.onBackPressed():boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setReply() {
        SpannableStringBuilder append;
        CaptionStory captionStory = this.captionEdit;
        if (captionStory == null) {
            return;
        }
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null || !storyEntry.isRepost) {
            captionStory.setReply(null, null);
            return;
        }
        TLRPC$Peer tLRPC$Peer = storyEntry.repostPeer;
        if (tLRPC$Peer instanceof TLRPC$TL_peerUser) {
            String userName = UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Peer.user_id)));
            StoryEntry storyEntry2 = this.outputEntry;
            append = new SpannableStringBuilder(MessageObject.userSpan()).append((CharSequence) " ").append((CharSequence) userName);
            storyEntry2.repostPeerName = append;
        } else {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tLRPC$Peer)));
            String str = chat == null ? "" : chat.title;
            StoryEntry storyEntry3 = this.outputEntry;
            append = new SpannableStringBuilder(MessageObject.userSpan()).append((CharSequence) " ").append((CharSequence) str);
            storyEntry3.repostPeerName = append;
        }
        String str2 = this.outputEntry.repostCaption;
        boolean isEmpty = TextUtils.isEmpty(str2);
        String str3 = str2;
        if (isEmpty) {
            SpannableString spannableString = new SpannableString(LocaleController.getString(C3632R.string.Story));
            spannableString.setSpan(new CharacterStyle(this) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.15
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setAlpha(128);
                }
            }, 0, spannableString.length(), 33);
            str3 = spannableString;
        }
        this.captionEdit.setReply(append, str3);
    }

    public void navigateToPreviewWithPlayerAwait(Runnable runnable, long j) {
        navigateToPreviewWithPlayerAwait(runnable, j, 800L);
    }

    public void navigateToPreviewWithPlayerAwait(final Runnable runnable, long j, long j2) {
        if (this.awaitingPlayer || this.outputEntry == null) {
            return;
        }
        Runnable runnable2 = this.afterPlayerAwait;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
        }
        this.previewAlreadySet = true;
        this.awaitingPlayer = true;
        this.afterPlayerAwait = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$navigateToPreviewWithPlayerAwait$38(runnable);
            }
        };
        this.previewView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.previewView.setVisibility(0);
        this.previewView.set(this.outputEntry, this.afterPlayerAwait, j);
        this.previewView.setupAudio(this.outputEntry, false);
        AndroidUtilities.runOnUIThread(this.afterPlayerAwait, j2);
    }

    public /* synthetic */ void lambda$navigateToPreviewWithPlayerAwait$38(Runnable runnable) {
        lambda$animateGalleryListView$43(false);
        AndroidUtilities.cancelRunOnUIThread(this.afterPlayerAwait);
        this.afterPlayerAwait = null;
        this.awaitingPlayer = false;
        runnable.run();
    }

    public void navigateTo(final int i, boolean z) {
        StoryEntry storyEntry;
        StoryEntry storyEntry2;
        DualCameraView dualCameraView;
        StoryEntry storyEntry3;
        StoryEntry storyEntry4;
        DualCameraView dualCameraView2;
        final int i2 = this.currentPage;
        if (i == i2) {
            return;
        }
        this.currentPage = i;
        AnimatorSet animatorSet = this.pageAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        onNavigateStart(i2, i);
        PreviewButtons previewButtons = this.previewButtons;
        if (previewButtons != null) {
            previewButtons.appear(i == 1, z);
        }
        showVideoTimer(i == 0 && this.isVideo, z);
        if (i != 1) {
            this.videoTimeView.show(false, z);
        }
        if (z) {
            this.pageAnimator = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            DualCameraView dualCameraView3 = this.cameraView;
            if (dualCameraView3 != null) {
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = i == 0 ? 1.0f : 0.0f;
                arrayList.add(ObjectAnimator.ofFloat(dualCameraView3, property, fArr));
            }
            this.cameraViewThumb.setVisibility(0);
            ImageView imageView = this.cameraViewThumb;
            Property property2 = View.ALPHA;
            float[] fArr2 = new float[1];
            fArr2[0] = i == 0 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(imageView, property2, fArr2));
            PreviewView previewView = this.previewView;
            Property property3 = View.ALPHA;
            float[] fArr3 = new float[1];
            fArr3[0] = i == 1 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(previewView, property3, fArr3));
            RecordControl recordControl = this.recordControl;
            Property property4 = View.ALPHA;
            float[] fArr4 = new float[1];
            fArr4[0] = i == 0 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(recordControl, property4, fArr4));
            ToggleButton2 toggleButton2 = this.flashButton;
            Property property5 = View.ALPHA;
            float[] fArr5 = new float[1];
            fArr5[0] = i == 0 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(toggleButton2, property5, fArr5));
            ToggleButton toggleButton = this.dualButton;
            Property property6 = View.ALPHA;
            float[] fArr6 = new float[1];
            fArr6[0] = (i == 0 && (dualCameraView2 = this.cameraView) != null && dualCameraView2.dualAvailable()) ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(toggleButton, property6, fArr6));
            RecordControl recordControl2 = this.recordControl;
            Property property7 = View.TRANSLATION_Y;
            float[] fArr7 = new float[1];
            fArr7[0] = i == 0 ? 0.0f : AndroidUtilities.m107dp(24);
            arrayList.add(ObjectAnimator.ofFloat(recordControl2, property7, fArr7));
            PhotoVideoSwitcherView photoVideoSwitcherView = this.modeSwitcherView;
            Property property8 = View.ALPHA;
            float[] fArr8 = new float[1];
            fArr8[0] = i == 0 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(photoVideoSwitcherView, property8, fArr8));
            PhotoVideoSwitcherView photoVideoSwitcherView2 = this.modeSwitcherView;
            Property property9 = View.TRANSLATION_Y;
            float[] fArr9 = new float[1];
            fArr9[0] = i == 0 ? 0.0f : AndroidUtilities.m107dp(24);
            arrayList.add(ObjectAnimator.ofFloat(photoVideoSwitcherView2, property9, fArr9));
            this.backButton.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(this.backButton, View.ALPHA, 1.0f));
            HintTextView hintTextView = this.hintTextView;
            Property property10 = View.ALPHA;
            float[] fArr10 = new float[1];
            fArr10[0] = (i == 0 && this.animatedRecording) ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(hintTextView, property10, fArr10));
            FrameLayout frameLayout = this.captionContainer;
            Property property11 = View.ALPHA;
            float[] fArr11 = new float[1];
            fArr11[0] = i == 1 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout, property11, fArr11));
            FrameLayout frameLayout2 = this.captionContainer;
            Property property12 = View.TRANSLATION_Y;
            float[] fArr12 = new float[1];
            fArr12[0] = i == 1 ? 0.0f : AndroidUtilities.m107dp(12);
            arrayList.add(ObjectAnimator.ofFloat(frameLayout2, property12, fArr12));
            SimpleTextView simpleTextView = this.titleTextView;
            Property property13 = View.ALPHA;
            float[] fArr13 = new float[1];
            fArr13[0] = i == 1 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(simpleTextView, property13, fArr13));
            TimelineView timelineView = this.timelineView;
            Property property14 = View.ALPHA;
            float[] fArr14 = new float[1];
            fArr14[0] = i == 1 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(timelineView, property14, fArr14));
            RLottieImageView rLottieImageView = this.muteButton;
            Property property15 = View.ALPHA;
            float[] fArr15 = new float[1];
            fArr15[0] = (i == 1 && this.isVideo) ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(rLottieImageView, property15, fArr15));
            PlayPauseButton playPauseButton = this.playButton;
            Property property16 = View.ALPHA;
            float[] fArr16 = new float[1];
            fArr16[0] = (i != 1 || (!this.isVideo && ((storyEntry4 = this.outputEntry) == null || TextUtils.isEmpty(storyEntry4.audioPath)))) ? 0.0f : 1.0f;
            arrayList.add(ObjectAnimator.ofFloat(playPauseButton, property16, fArr16));
            DownloadButton downloadButton = this.downloadButton;
            Property property17 = View.ALPHA;
            float[] fArr17 = new float[1];
            fArr17[0] = i == 1 ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(downloadButton, property17, fArr17));
            ImageView imageView2 = this.themeButton;
            if (imageView2 != null) {
                Property property18 = View.ALPHA;
                float[] fArr18 = new float[1];
                if (i != 1 || (storyEntry3 = this.outputEntry) == null || !storyEntry3.isRepostMessage) {
                    r4 = 0.0f;
                }
                fArr18[0] = r4;
                arrayList.add(ObjectAnimator.ofFloat(imageView2, property18, fArr18));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.zoomControlView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
            this.pageAnimator.playTogether(arrayList);
            this.pageAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.16
                {
                    StoryRecorder.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryRecorder.this.onNavigateEnd(i2, i);
                }
            });
            this.pageAnimator.setDuration(460L);
            this.pageAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.pageAnimator.start();
            return;
        }
        DualCameraView dualCameraView4 = this.cameraView;
        if (dualCameraView4 != null) {
            dualCameraView4.setAlpha(i == 0 ? 1.0f : 0.0f);
        }
        this.cameraViewThumb.setAlpha(i == 0 ? 1.0f : 0.0f);
        this.cameraViewThumb.setVisibility(i == 0 ? 0 : 8);
        this.previewView.setAlpha(i == 1 ? 1.0f : 0.0f);
        this.flashButton.setAlpha(i == 0 ? 1.0f : 0.0f);
        this.dualButton.setAlpha((i == 0 && (dualCameraView = this.cameraView) != null && dualCameraView.dualAvailable()) ? 1.0f : 0.0f);
        this.recordControl.setAlpha(i == 0 ? 1.0f : 0.0f);
        this.recordControl.setTranslationY(i == 0 ? 0.0f : AndroidUtilities.m107dp(16));
        this.modeSwitcherView.setAlpha(i == 0 ? 1.0f : 0.0f);
        this.modeSwitcherView.setTranslationY(i == 0 ? 0.0f : AndroidUtilities.m107dp(16));
        this.backButton.setVisibility(0);
        this.backButton.setAlpha(1.0f);
        this.hintTextView.setAlpha((i == 0 && this.animatedRecording) ? 1.0f : 0.0f);
        this.captionContainer.setAlpha(i == 1 ? 1.0f : 0.0f);
        this.captionContainer.setTranslationY(i == 1 ? 0.0f : AndroidUtilities.m107dp(12));
        this.muteButton.setAlpha((i == 1 && this.isVideo) ? 1.0f : 0.0f);
        this.playButton.setAlpha((i != 1 || (!this.isVideo && ((storyEntry2 = this.outputEntry) == null || TextUtils.isEmpty(storyEntry2.audioPath)))) ? 0.0f : 1.0f);
        this.downloadButton.setAlpha(i == 1 ? 1.0f : 0.0f);
        ImageView imageView3 = this.themeButton;
        if (imageView3 != null) {
            imageView3.setAlpha((i == 1 && (storyEntry = this.outputEntry) != null && storyEntry.isRepostMessage) ? 1.0f : 0.0f);
        }
        this.timelineView.setAlpha(i == 1 ? 1.0f : 0.0f);
        this.titleTextView.setAlpha(i != 1 ? 0.0f : 1.0f);
        onNavigateEnd(i2, i);
    }

    public void animateContainerBack() {
        ValueAnimator valueAnimator = this.containerViewBackAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.containerViewBackAnimator = null;
        }
        this.applyContainerViewTranslation2 = false;
        final float translationY1 = this.containerView.getTranslationY1();
        final float translationY2 = this.containerView.getTranslationY2();
        this.containerView.getAlpha();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        this.containerViewBackAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                StoryRecorder.this.lambda$animateContainerBack$39(translationY1, translationY2, valueAnimator2);
            }
        });
        this.containerViewBackAnimator.setDuration(340L);
        this.containerViewBackAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.containerViewBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.17
            {
                StoryRecorder.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryRecorder.this.containerViewBackAnimator = null;
                StoryRecorder.this.containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                StoryRecorder.this.containerView.setTranslationY2(BitmapDescriptorFactory.HUE_RED);
            }
        });
        this.containerViewBackAnimator.start();
    }

    public /* synthetic */ void lambda$animateContainerBack$39(float f, float f2, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.containerView.setTranslationY(f * floatValue);
        this.containerView.setTranslationY2(f2 * floatValue);
    }

    public void createGalleryListView() {
        createGalleryListView(false);
    }

    public void destroyGalleryListView() {
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView == null) {
            return;
        }
        this.windowView.removeView(galleryListView);
        this.galleryListView = null;
        ValueAnimator valueAnimator = this.galleryOpenCloseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.galleryOpenCloseAnimator = null;
        }
        SpringAnimation springAnimation = this.galleryOpenCloseSpringAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.galleryOpenCloseSpringAnimator = null;
        }
        this.galleryListViewOpening = null;
    }

    public void createGalleryListView(final boolean z) {
        if (this.galleryListView != null || getContext() == null) {
            return;
        }
        C746019 c746019 = new C746019(this.currentAccount, getContext(), this.resourcesProvider, this.lastGallerySelectedAlbum, z);
        this.galleryListView = c746019;
        c746019.setOnBackClickListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$createGalleryListView$41();
            }
        });
        this.galleryListView.setOnSelectListener(new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda61
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                StoryRecorder.this.lambda$createGalleryListView$42(z, obj, (Bitmap) obj2);
            }
        });
        Parcelable parcelable = this.lastGalleryScrollPosition;
        if (parcelable != null) {
            this.galleryListView.layoutManager.onRestoreInstanceState(parcelable);
        }
        this.windowView.addView(this.galleryListView, LayoutHelper.createFrame(-1, -1, 119));
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$19 */
    /* loaded from: classes6.dex */
    public class C746019 extends GalleryListView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C746019(int i, Context context, Theme.ResourcesProvider resourcesProvider, MediaController.AlbumEntry albumEntry, boolean z) {
            super(i, context, resourcesProvider, albumEntry, z);
            StoryRecorder.this = r7;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (StoryRecorder.this.applyContainerViewTranslation2) {
                float clamp = Utilities.clamp(1.0f - (f / (StoryRecorder.this.windowView.getMeasuredHeight() - StoryRecorder.this.galleryListView.top())), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                StoryRecorder.this.containerView.setTranslationY2(AndroidUtilities.m107dp(-32) * clamp);
                StoryRecorder.this.containerView.setAlpha(1.0f - (0.6f * clamp));
                StoryRecorder.this.actionBarContainer.setAlpha(1.0f - clamp);
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.GalleryListView
        public void firstLayout() {
            StoryRecorder.this.galleryListView.setTranslationY(StoryRecorder.this.windowView.getMeasuredHeight() - StoryRecorder.this.galleryListView.top());
            if (StoryRecorder.this.galleryLayouted != null) {
                StoryRecorder.this.galleryLayouted.run();
                StoryRecorder.this.galleryLayouted = null;
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.GalleryListView
        protected void onFullScreen(boolean z) {
            if (StoryRecorder.this.currentPage == 0 && z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$19$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.C746019.this.lambda$onFullScreen$0();
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onFullScreen$0() {
            StoryRecorder.this.destroyCameraView(true);
            StoryRecorder.this.cameraViewThumb.setImageDrawable(StoryRecorder.this.getCameraThumb());
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < top()) {
                StoryRecorder.this.galleryClosing = true;
                StoryRecorder.this.lambda$animateGalleryListView$43(false);
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    public /* synthetic */ void lambda$createGalleryListView$41() {
        lambda$animateGalleryListView$43(false);
        this.lastGallerySelectedAlbum = null;
    }

    public /* synthetic */ void lambda$createGalleryListView$42(boolean z, Object obj, Bitmap bitmap) {
        if (obj == null || this.galleryListViewOpening != null || this.scrollingY || !isGalleryOpen()) {
            return;
        }
        if (z) {
            if (this.outputEntry == null) {
                return;
            }
            createPhotoPaintView();
            this.outputEntry.editedMedia = true;
            if (obj instanceof MediaController.PhotoEntry) {
                PaintView paintView = this.paintView;
                paintView.appearAnimation(paintView.createPhoto(((MediaController.PhotoEntry) obj).path, false));
            } else if (obj instanceof TLObject) {
                PaintView paintView2 = this.paintView;
                paintView2.appearAnimation(paintView2.createPhoto((TLObject) obj, false));
            }
            lambda$animateGalleryListView$43(false);
        } else {
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                this.isVideo = photoEntry.isVideo;
                StoryEntry fromPhotoEntry = StoryEntry.fromPhotoEntry(photoEntry);
                this.outputEntry = fromPhotoEntry;
                StoryPrivacySelector.applySaved(this.currentAccount, fromPhotoEntry);
                this.outputEntry.blurredVideoThumb = bitmap;
                this.fromGallery = true;
            } else if (obj instanceof StoryEntry) {
                StoryEntry storyEntry = (StoryEntry) obj;
                if (storyEntry.file == null) {
                    this.downloadButton.showToast(C3632R.raw.error, "Failed to load draft");
                    MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().delete(storyEntry);
                    return;
                }
                this.isVideo = storyEntry.isVideo;
                this.outputEntry = storyEntry;
                storyEntry.blurredVideoThumb = bitmap;
                this.fromGallery = false;
            }
            showVideoTimer(false, true);
            this.modeSwitcherView.switchMode(this.isVideo);
            this.recordControl.startAsVideo(this.isVideo);
            lambda$animateGalleryListView$43(false);
            navigateTo(1, true);
        }
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView != null) {
            this.lastGalleryScrollPosition = galleryListView.layoutManager.onSaveInstanceState();
            this.lastGallerySelectedAlbum = this.galleryListView.getSelectedAlbum();
        }
    }

    public boolean isGalleryOpen() {
        GalleryListView galleryListView;
        return (this.scrollingY || (galleryListView = this.galleryListView) == null || galleryListView.getTranslationY() >= ((float) ((this.windowView.getMeasuredHeight() - ((int) (((float) AndroidUtilities.displaySize.y) * 0.35f))) - (AndroidUtilities.statusBarHeight + C3704ActionBar.getCurrentActionBarHeight())))) ? false : true;
    }

    /* renamed from: animateGalleryListView */
    public void lambda$animateGalleryListView$43(final boolean z) {
        DraftSavedHint draftSavedHint;
        this.wasGalleryOpen = z;
        Boolean bool = this.galleryListViewOpening;
        if (bool == null || bool.booleanValue() != z) {
            if (this.galleryListView == null) {
                if (z) {
                    createGalleryListView();
                }
                if (this.galleryListView == null) {
                    return;
                }
            }
            if (this.galleryListView.firstLayout) {
                this.galleryLayouted = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda55
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$animateGalleryListView$43(z);
                    }
                };
                return;
            }
            ValueAnimator valueAnimator = this.galleryOpenCloseAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.galleryOpenCloseAnimator = null;
            }
            SpringAnimation springAnimation = this.galleryOpenCloseSpringAnimator;
            if (springAnimation != null) {
                springAnimation.cancel();
                this.galleryOpenCloseSpringAnimator = null;
            }
            if (this.galleryListView == null) {
                if (z) {
                    createGalleryListView();
                }
                if (this.galleryListView == null) {
                    return;
                }
            }
            GalleryListView galleryListView = this.galleryListView;
            if (galleryListView != null) {
                galleryListView.ignoreScroll = false;
            }
            if (z && (draftSavedHint = this.draftSavedHint) != null) {
                draftSavedHint.hide(true);
            }
            this.galleryListViewOpening = Boolean.valueOf(z);
            float translationY = this.galleryListView.getTranslationY();
            final float height = z ? BitmapDescriptorFactory.HUE_RED : (this.windowView.getHeight() - this.galleryListView.top()) + (AndroidUtilities.navigationBarHeight * 2.5f);
            Math.max(1, this.windowView.getHeight());
            this.galleryListView.ignoreScroll = !z;
            this.applyContainerViewTranslation2 = this.containerViewBackAnimator == null;
            if (z) {
                SpringAnimation springAnimation2 = new SpringAnimation(this.galleryListView, DynamicAnimation.TRANSLATION_Y, height);
                this.galleryOpenCloseSpringAnimator = springAnimation2;
                springAnimation2.getSpring().setDampingRatio(0.75f);
                this.galleryOpenCloseSpringAnimator.getSpring().setStiffness(350.0f);
                this.galleryOpenCloseSpringAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda23
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                        StoryRecorder.this.lambda$animateGalleryListView$44(height, dynamicAnimation, z2, f, f2);
                    }
                });
                this.galleryOpenCloseSpringAnimator.start();
            } else {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(translationY, height);
                this.galleryOpenCloseAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        StoryRecorder.this.lambda$animateGalleryListView$45(valueAnimator2);
                    }
                });
                this.galleryOpenCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.20
                    {
                        StoryRecorder.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        StoryRecorder.this.windowView.removeView(StoryRecorder.this.galleryListView);
                        StoryRecorder.this.galleryListView = null;
                        StoryRecorder.this.galleryOpenCloseAnimator = null;
                        StoryRecorder.this.galleryListViewOpening = null;
                        StoryRecorder.this.captionEdit.keyboardNotifier.ignore(StoryRecorder.this.currentPage != 1);
                    }
                });
                this.galleryOpenCloseAnimator.setDuration(450L);
                this.galleryOpenCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.galleryOpenCloseAnimator.start();
            }
            if (!z && !this.awaitingPlayer) {
                this.lastGalleryScrollPosition = null;
            }
            if (z || this.currentPage != 0 || this.noCameraPermission) {
                return;
            }
            createCameraView();
        }
    }

    public /* synthetic */ void lambda$animateGalleryListView$44(float f, DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
        if (z) {
            return;
        }
        this.galleryListView.setTranslationY(f);
        this.galleryListView.ignoreScroll = false;
        this.galleryOpenCloseSpringAnimator = null;
        this.galleryListViewOpening = null;
    }

    public /* synthetic */ void lambda$animateGalleryListView$45(ValueAnimator valueAnimator) {
        this.galleryListView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void onNavigateStart(int i, int i2) {
        StoryEntry storyEntry;
        int i3;
        String str;
        StoryEntry storyEntry2;
        VideoEditTextureView textureView;
        if (i2 == 0) {
            requestCameraPermission(false);
            this.recordControl.setVisibility(0);
            RecordControl recordControl = this.recordControl;
            if (recordControl != null) {
                recordControl.stopRecordingLoading(false);
            }
            this.modeSwitcherView.setVisibility(0);
            this.zoomControlView.setVisibility(0);
            this.zoomControlView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.videoTimerView.setDuration(0L, true);
            StoryEntry storyEntry3 = this.outputEntry;
            if (storyEntry3 != null) {
                storyEntry3.destroy(false);
                this.outputEntry = null;
            }
        }
        if (i == 0) {
            setCameraFlashModeIcon(null, true);
            saveLastCameraBitmap(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.lambda$onNavigateStart$46();
                }
            });
            DraftSavedHint draftSavedHint = this.draftSavedHint;
            if (draftSavedHint != null) {
                draftSavedHint.setVisibility(8);
            }
            this.cameraHint.hide();
            HintView2 hintView2 = this.dualHint;
            if (hintView2 != null) {
                hintView2.hide();
            }
        }
        if (i2 == 1 || i == 1) {
            this.downloadButton.setEntry(i2 == 1 ? this.outputEntry : null);
            if (this.isVideo) {
                this.muteButton.setVisibility(0);
                StoryEntry storyEntry4 = this.outputEntry;
                setIconMuted(storyEntry4 != null && storyEntry4.muted, false);
                this.playButton.setVisibility(0);
                this.previewView.play(true);
                this.playButton.drawable.setPause(this.previewView.isPlaying(), false);
                this.titleTextView.setRightPadding(AndroidUtilities.m107dp(144));
            } else {
                StoryEntry storyEntry5 = this.outputEntry;
                if (storyEntry5 != null && !TextUtils.isEmpty(storyEntry5.audioPath)) {
                    this.muteButton.setVisibility(8);
                    this.playButton.setVisibility(0);
                    this.playButton.drawable.setPause(true, false);
                    this.titleTextView.setRightPadding(AndroidUtilities.m107dp(48));
                } else {
                    this.titleTextView.setRightPadding(AndroidUtilities.m107dp(48));
                }
            }
            this.downloadButton.setVisibility(0);
            StoryEntry storyEntry6 = this.outputEntry;
            if (storyEntry6 != null && storyEntry6.isRepostMessage) {
                getThemeButton().setVisibility(0);
                updateThemeButtonDrawable(false);
            } else {
                ImageView imageView = this.themeButton;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            }
            this.previewButtons.setVisibility(0);
            this.previewView.setVisibility(0);
            this.captionContainer.setVisibility(0);
            this.captionContainer.clearFocus();
            CaptionStory captionStory = this.captionEdit;
            StoryEntry storyEntry7 = this.outputEntry;
            captionStory.setPeriod(storyEntry7 == null ? 86400 : storyEntry7.period, false);
            this.captionEdit.setPeriodVisible(!MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() && ((storyEntry = this.outputEntry) == null || !storyEntry.isEdit));
            CaptionStory captionStory2 = this.captionEdit;
            StoryEntry storyEntry8 = this.outputEntry;
            captionStory2.setHasRoundVideo((storyEntry8 == null || storyEntry8.round == null) ? false : true);
            setReply();
        }
        if (i2 == 1) {
            this.videoError = false;
            PreviewButtons previewButtons = this.previewButtons;
            StoryEntry storyEntry9 = this.outputEntry;
            if (storyEntry9 == null || !storyEntry9.isEdit) {
                i3 = C3632R.string.Next;
                str = "Next";
            } else {
                i3 = C3632R.string.Done;
                str = "Done";
            }
            previewButtons.setShareText(LocaleController.getString(str, i3));
            if (!this.previewAlreadySet) {
                StoryEntry storyEntry10 = this.outputEntry;
                if (storyEntry10 != null && storyEntry10.isRepostMessage) {
                    this.previewView.preset(storyEntry10);
                } else {
                    this.previewView.set(storyEntry10);
                }
            }
            this.previewAlreadySet = false;
            this.captionEdit.editText.getEditText().setOnPremiumMenuLockClickListener(MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? null : new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.lambda$onNavigateStart$47();
                }
            });
            StoryEntry storyEntry11 = this.outputEntry;
            if (storyEntry11 != null && (storyEntry11.isDraft || storyEntry11.isEdit)) {
                if (storyEntry11.paintFile != null) {
                    destroyPhotoPaintView();
                    createPhotoPaintView();
                    hidePhotoPaintView();
                }
                StoryEntry storyEntry12 = this.outputEntry;
                if (storyEntry12.isVideo && storyEntry12.filterState != null && (textureView = this.previewView.getTextureView()) != null) {
                    textureView.setDelegate(new VideoEditTextureView.VideoEditTextureViewDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda76
                        @Override // org.telegram.p043ui.Components.VideoEditTextureView.VideoEditTextureViewDelegate
                        public final void onEGLThreadAvailable(FilterGLThread filterGLThread) {
                            StoryRecorder.this.lambda$onNavigateStart$48(filterGLThread);
                        }
                    });
                }
                this.captionEdit.setText(this.outputEntry.caption);
            } else {
                this.captionEdit.clear();
            }
            PreviewButtons previewButtons2 = this.previewButtons;
            StoryEntry storyEntry13 = this.outputEntry;
            previewButtons2.setFiltersVisible(storyEntry13 == null || !storyEntry13.isRepostMessage || storyEntry13.isVideo);
            this.previewButtons.setShareEnabled((this.videoError || this.captionEdit.isCaptionOverLimit() || (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStoryLimit() && ((storyEntry2 = this.outputEntry) == null || !storyEntry2.isEdit))) ? false : true);
            RLottieImageView rLottieImageView = this.muteButton;
            StoryEntry storyEntry14 = this.outputEntry;
            rLottieImageView.setImageResource((storyEntry14 == null || !storyEntry14.muted) ? C3632R.C3634drawable.media_mute : C3632R.C3634drawable.media_unmute);
            this.previewView.setVisibility(0);
            this.timelineView.setVisibility(0);
            this.titleTextView.setVisibility(0);
            this.titleTextView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            StoryEntry storyEntry15 = this.outputEntry;
            if (storyEntry15 != null && storyEntry15.isEdit) {
                this.titleTextView.setText(LocaleController.getString(C3632R.string.RecorderEditStory));
            } else if (storyEntry15 != null && storyEntry15.isRepostMessage) {
                this.titleTextView.setText(LocaleController.getString(C3632R.string.RecorderRepost));
            } else if (storyEntry15 != null && storyEntry15.isRepost) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                AvatarSpan avatarSpan = new AvatarSpan(this.titleTextView, this.currentAccount, 32);
                this.titleTextView.setTranslationX(-AndroidUtilities.m107dp(6));
                SpannableString spannableString = new SpannableString("a");
                spannableString.setSpan(avatarSpan, 0, 1, 33);
                if (this.outputEntry.repostPeer instanceof TLRPC$TL_peerUser) {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.outputEntry.repostPeer.user_id));
                    avatarSpan.setUser(user);
                    spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) "  ");
                    spannableStringBuilder.append((CharSequence) UserObject.getUserName(user));
                } else {
                    TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(this.outputEntry.repostPeer)));
                    avatarSpan.setChat(chat);
                    spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) "  ");
                    spannableStringBuilder.append((CharSequence) (chat != null ? chat.title : ""));
                }
                this.titleTextView.setText(spannableStringBuilder);
            } else {
                this.titleTextView.setText(LocaleController.getString(C3632R.string.RecorderNewStory));
            }
        }
        if (i == 1) {
            this.captionEdit.hidePeriodPopup();
            this.muteHint.hide();
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.setAllowTouch(false);
        }
        this.cameraViewThumb.setClickable(false);
        HintView2 hintView22 = this.savedDualHint;
        if (hintView22 != null) {
            hintView22.hide();
        }
        Bulletin.hideVisible();
        CaptionStory captionStory3 = this.captionEdit;
        if (captionStory3 != null) {
            captionStory3.closeKeyboard();
            this.captionEdit.ignoreTouches = true;
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(8, i2 != 1);
        }
    }

    public /* synthetic */ void lambda$onNavigateStart$46() {
        this.cameraViewThumb.setImageDrawable(getCameraThumb());
    }

    public /* synthetic */ void lambda$onNavigateStart$47() {
        BulletinFactory.m66of(this.windowView, this.resourcesProvider).createSimpleBulletin(C3632R.raw.voip_invite, premiumText(LocaleController.getString("StoryPremiumFormatting", C3632R.string.StoryPremiumFormatting))).show(true);
    }

    public /* synthetic */ void lambda$onNavigateStart$48(FilterGLThread filterGLThread) {
        StoryEntry storyEntry;
        MediaController.SavedFilterState savedFilterState;
        if (filterGLThread == null || (storyEntry = this.outputEntry) == null || (savedFilterState = storyEntry.filterState) == null) {
            return;
        }
        filterGLThread.setFilterGLThreadDelegate(FilterShaders.getFilterShadersDelegate(savedFilterState));
    }

    public void onNavigateEnd(int i, int i2) {
        int i3;
        int i4 = 8;
        if (i == 0) {
            destroyCameraView(false);
            this.recordControl.setVisibility(8);
            this.zoomControlView.setVisibility(8);
            this.modeSwitcherView.setVisibility(8);
            this.dualButton.setVisibility(8);
            animateRecording(false, false);
            setAwakeLock(false);
        }
        this.cameraViewThumb.setClickable(i2 == 0);
        if (i == 1) {
            this.previewButtons.setVisibility(8);
            this.previewView.setVisibility(8);
            this.captionContainer.setVisibility(8);
            this.muteButton.setVisibility(8);
            this.playButton.setVisibility(8);
            this.downloadButton.setVisibility(8);
            ImageView imageView = this.themeButton;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            this.previewView.setVisibility(8);
            this.timelineView.setVisibility(8);
            destroyPhotoPaintView();
            destroyPhotoFilterView();
            this.titleTextView.setVisibility(8);
            destroyGalleryListView();
            this.trash.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.trash.setVisibility(8);
            this.videoTimeView.setVisibility(8);
        }
        if (i2 == 1) {
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry == null || !storyEntry.isRepost) {
                createPhotoPaintView();
                hidePhotoPaintView();
            }
            StoryEntry storyEntry2 = this.outputEntry;
            if (storyEntry2 == null || (!storyEntry2.isRepost && !storyEntry2.isRepostMessage)) {
                createFilterPhotoView();
            }
            PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
            if (enhanceView != null) {
                enhanceView.setAllowTouch(false);
            }
            this.previewView.updatePauseReason(2, false);
            this.previewView.updatePauseReason(3, false);
            this.previewView.updatePauseReason(4, false);
            this.previewView.updatePauseReason(5, false);
            this.previewView.updatePauseReason(7, false);
            VideoTimeView videoTimeView = this.videoTimeView;
            StoryEntry storyEntry3 = this.outputEntry;
            if (storyEntry3 != null && storyEntry3.duration >= 30000) {
                i4 = 0;
            }
            videoTimeView.setVisibility(i4);
            this.captionContainer.setAlpha(1.0f);
            this.captionContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        }
        if (i2 == 0 && this.showSavedDraftHint) {
            getDraftSavedHint().setVisibility(0);
            getDraftSavedHint().show();
            this.recordControl.updateGalleryImage();
        }
        this.showSavedDraftHint = false;
        PhotoFilterView.EnhanceView enhanceView2 = this.photoFilterEnhanceView;
        if (enhanceView2 != null) {
            enhanceView2.setAllowTouch(i2 == 1 && ((i3 = this.currentEditMode) == -1 || i3 == 1));
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.ignoreTouches = i2 != 1;
        }
        if (i2 == 1) {
            MediaDataController.getInstance(this.currentAccount).checkStickers(0);
            MediaDataController.getInstance(this.currentAccount).loadRecents(0, false, true, false);
            MediaDataController.getInstance(this.currentAccount).loadRecents(2, false, true, false);
            MessagesController.getInstance(this.currentAccount).getStoriesController().loadBlocklistAtFirst();
            MessagesController.getInstance(this.currentAccount).getStoriesController().loadSendAs();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x034b A[LOOP:0: B:243:0x034b->B:245:0x0351, LOOP_START, PHI: r8 
      PHI: (r8v1 int) = (r8v0 int), (r8v2 int) binds: [B:238:0x0318, B:245:0x0351] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void switchToEditMode(final int r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.switchToEditMode(int, boolean):void");
    }

    private void hidePhotoPaintView() {
        PaintView paintView = this.paintView;
        if (paintView == null) {
            return;
        }
        this.previewTouchable = null;
        paintView.getTopLayout().setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.paintView.getTopLayout().setTranslationY(-AndroidUtilities.m107dp(16));
        this.paintView.getBottomLayout().setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.paintView.getBottomLayout().setTranslationY(AndroidUtilities.m107dp(48));
        this.paintView.getWeightChooserView().setTranslationX(-AndroidUtilities.m107dp(32));
        this.paintView.setVisibility(8);
        this.paintView.keyboardNotifier.ignore(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createPhotoPaintView() {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.createPhotoPaintView():void");
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$22 */
    /* loaded from: classes6.dex */
    public class C746422 extends PaintView {
        private boolean multitouch;

        public static /* synthetic */ void lambda$onSwitchSegmentedAnimation$3() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C746422(Context context, boolean z, File file, boolean z2, WindowView windowView, Activity activity, int i, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, int i2, ArrayList arrayList, StoryEntry storyEntry, int i3, int i4, MediaController.CropState cropState, Runnable runnable, BlurringShader.BlurManager blurManager, Theme.ResourcesProvider resourcesProvider, PreviewView.TextureViewHolder textureViewHolder) {
            super(context, z, file, z2, windowView, activity, i, bitmap, bitmap2, bitmap3, i2, arrayList, storyEntry, i3, i4, cropState, runnable, blurManager, resourcesProvider, textureViewHolder);
            StoryRecorder.this = r23;
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDraggedTop(boolean z) {
            StoryRecorder.this.previewHighlight.show(true, z, StoryRecorder.this.actionBarContainer);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        protected void onGalleryClick() {
            StoryRecorder.this.captionEdit.keyboardNotifier.ignore(true);
            StoryRecorder.this.destroyGalleryListView();
            StoryRecorder.this.createGalleryListView(true);
            StoryRecorder.this.lambda$animateGalleryListView$43(true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDraggedBottom(boolean z) {
            StoryRecorder.this.previewHighlight.updateCaption(StoryRecorder.this.captionEdit.getText());
            StoryRecorder.this.previewHighlight.show(false, z && this.multitouch, null);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragEnd(boolean z) {
            if (!isEntityDeletable()) {
                z = false;
            }
            StoryRecorder.this.captionContainer.clearAnimation();
            StoryRecorder.this.captionContainer.animate().alpha(1.0f).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
            showTrash(false, z);
            if (z) {
                removeCurrentEntity();
            }
            super.onEntityDragEnd(z);
            this.multitouch = false;
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragStart() {
            StoryRecorder.this.paintView.showReactionsLayout(false);
            StoryRecorder.this.captionContainer.clearAnimation();
            StoryRecorder.this.captionContainer.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
            showTrash(isEntityDeletable(), false);
        }

        public void showTrash(boolean z, boolean z2) {
            if (z) {
                StoryRecorder.this.trash.setVisibility(0);
                StoryRecorder.this.trash.setAlpha(BitmapDescriptorFactory.HUE_RED);
                StoryRecorder.this.trash.clearAnimation();
                StoryRecorder.this.trash.animate().alpha(1.0f).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
                return;
            }
            StoryRecorder.this.trash.onDragInfo(false, z2);
            StoryRecorder.this.trash.clearAnimation();
            StoryRecorder.this.trash.animate().alpha(BitmapDescriptorFactory.HUE_RED).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$22$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C746422.this.lambda$showTrash$0();
                }
            }).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).setStartDelay(z2 ? 500L : 0L).start();
        }

        public /* synthetic */ void lambda$showTrash$0() {
            StoryRecorder.this.trash.setVisibility(8);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragMultitouchStart() {
            this.multitouch = true;
            StoryRecorder.this.paintView.showReactionsLayout(false);
            showTrash(false, false);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragMultitouchEnd() {
            this.multitouch = false;
            showTrash(isEntityDeletable(), false);
            StoryRecorder.this.previewHighlight.show(false, false, null);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragTrash(boolean z) {
            StoryRecorder.this.trash.onDragInfo(z, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void editSelectedTextEntity() {
            StoryRecorder.this.captionEdit.editText.closeKeyboard();
            StoryRecorder.this.switchToEditMode(0, true);
            super.editSelectedTextEntity();
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void dismiss() {
            StoryRecorder.this.captionEdit.editText.closeKeyboard();
            StoryRecorder.this.switchToEditMode(-1, true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        protected void onOpenCloseStickersAlert(boolean z) {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.updatePauseReason(6, z);
                if (StoryRecorder.this.playButton != null) {
                    StoryRecorder.this.playButton.drawable.setPause(StoryRecorder.this.previewView.isPlaying(), true);
                }
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.ignoreTouches = z;
                StoryRecorder.this.captionEdit.keyboardNotifier.ignore(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onAudioSelect(MessageObject messageObject) {
            StoryRecorder.this.previewView.setupAudio(messageObject, true);
            if (StoryRecorder.this.outputEntry != null && !StoryRecorder.this.isVideo) {
                final boolean z = !TextUtils.isEmpty(StoryRecorder.this.outputEntry.audioPath);
                StoryRecorder.this.playButton.drawable.setPause(!StoryRecorder.this.previewView.isPlaying(), false);
                StoryRecorder.this.playButton.setVisibility(0);
                StoryRecorder.this.playButton.animate().alpha(z ? 1.0f : BitmapDescriptorFactory.HUE_RED).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$22$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.C746422.this.lambda$onAudioSelect$1(z);
                    }
                }).start();
            }
            StoryRecorder.this.switchToEditMode(-1, true);
        }

        public /* synthetic */ void lambda$onAudioSelect$1(boolean z) {
            if (z) {
                return;
            }
            StoryRecorder.this.playButton.setVisibility(8);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView, org.telegram.p043ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityHandleTouched() {
            StoryRecorder.this.paintView.showReactionsLayout(false);
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        protected boolean checkAudioPermission(Runnable runnable) {
            if (StoryRecorder.this.activity == null) {
                return true;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 33) {
                if (StoryRecorder.this.activity.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") != 0) {
                    StoryRecorder.this.activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_AUDIO"}, 115);
                    StoryRecorder.this.audioGrantedCallback = runnable;
                    return false;
                }
            } else if (i >= 23 && StoryRecorder.this.activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
                StoryRecorder.this.activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 115);
                StoryRecorder.this.audioGrantedCallback = runnable;
                return false;
            }
            return true;
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onCreateRound(RoundView roundView) {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.attachRoundView(roundView);
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.setHasRoundVideo(true);
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onTryDeleteRound() {
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.showRemoveRoundAlert();
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onDeleteRound() {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.setupRound(null, null, true);
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.deleteRound();
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.setHasRoundVideo(false);
            }
            if (StoryRecorder.this.outputEntry != null) {
                if (StoryRecorder.this.outputEntry.round != null) {
                    try {
                        StoryRecorder.this.outputEntry.round.delete();
                    } catch (Exception unused) {
                    }
                    StoryRecorder.this.outputEntry.round = null;
                }
                if (StoryRecorder.this.outputEntry.roundThumb != null) {
                    try {
                        new File(StoryRecorder.this.outputEntry.roundThumb).delete();
                    } catch (Exception unused2) {
                    }
                    StoryRecorder.this.outputEntry.roundThumb = null;
                }
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onSwitchSegmentedAnimation(final PhotoView photoView) {
            float f;
            if (photoView == null) {
                return;
            }
            ThanosEffect thanosEffect = StoryRecorder.this.getThanosEffect();
            if (thanosEffect == null) {
                photoView.onSwitchSegmentedAnimationStarted(false);
                return;
            }
            Bitmap segmentedOutBitmap = photoView.getSegmentedOutBitmap();
            if (segmentedOutBitmap == null) {
                photoView.onSwitchSegmentedAnimationStarted(false);
                return;
            }
            Matrix matrix = new Matrix();
            float width = photoView.getWidth();
            float height = photoView.getHeight();
            float rotation = photoView.getRotation();
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (rotation != BitmapDescriptorFactory.HUE_RED) {
                float width2 = segmentedOutBitmap.getWidth();
                float height2 = segmentedOutBitmap.getHeight();
                float f3 = width2 / 2.0f;
                float f4 = height2 / 2.0f;
                float sqrt = (float) Math.sqrt((f3 * f3) + (f4 * f4));
                float f5 = sqrt * 2.0f;
                int i = (int) f5;
                Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                canvas.save();
                canvas.rotate(photoView.getRotation(), sqrt, sqrt);
                canvas.drawBitmap(segmentedOutBitmap, (f5 - width2) / 2.0f, (f5 - height2) / 2.0f, (Paint) null);
                segmentedOutBitmap.recycle();
                float f6 = width / 2.0f;
                float f7 = height / 2.0f;
                float sqrt2 = ((float) Math.sqrt((f6 * f6) + (f7 * f7))) * 2.0f;
                f2 = (-(sqrt2 - width)) / 2.0f;
                height = sqrt2;
                f = (-(sqrt2 - height)) / 2.0f;
                width = height;
                segmentedOutBitmap = createBitmap;
            } else {
                f = 0.0f;
            }
            matrix.postScale(width, height);
            matrix.postScale(photoView.getScaleX(), photoView.getScaleY(), width / 2.0f, height / 2.0f);
            matrix.postTranslate(StoryRecorder.this.containerView.getX() + StoryRecorder.this.previewContainer.getX() + photoView.getX() + f2, StoryRecorder.this.containerView.getY() + StoryRecorder.this.previewContainer.getY() + photoView.getY() + f);
            thanosEffect.animate(matrix, segmentedOutBitmap, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$22$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoView.this.onSwitchSegmentedAnimationStarted(true);
                }
            }, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$22$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C746422.lambda$onSwitchSegmentedAnimation$3();
                }
            });
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onSelectRound(RoundView roundView) {
            if (StoryRecorder.this.timelineView != null) {
                StoryRecorder.this.timelineView.selectRound(true);
            }
        }

        @Override // org.telegram.p043ui.Stories.recorder.PaintView
        public void onDeselectRound(RoundView roundView) {
            if (StoryRecorder.this.timelineView != null) {
                StoryRecorder.this.timelineView.selectRound(false);
            }
        }
    }

    public /* synthetic */ void lambda$createPhotoPaintView$49() {
        switchToEditMode(-1, true);
    }

    public /* synthetic */ void lambda$createPhotoPaintView$50() {
        switchToEditMode(-1, true);
    }

    private void orderPreviewViews() {
        RenderView renderView = this.paintViewRenderView;
        if (renderView != null) {
            renderView.bringToFront();
        }
        View view = this.paintViewRenderInputView;
        if (view != null) {
            view.bringToFront();
        }
        View view2 = this.paintViewTextDim;
        if (view2 != null) {
            view2.bringToFront();
        }
        View view3 = this.paintViewEntitiesView;
        if (view3 != null) {
            view3.bringToFront();
        }
        View view4 = this.paintViewSelectionContainerView;
        if (view4 != null) {
            view4.bringToFront();
        }
        TrashView trashView = this.trash;
        if (trashView != null) {
            trashView.bringToFront();
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.bringToFront();
        }
        PhotoFilterBlurControl photoFilterBlurControl = this.photoFilterViewBlurControl;
        if (photoFilterBlurControl != null) {
            photoFilterBlurControl.bringToFront();
        }
        PhotoFilterCurvesControl photoFilterCurvesControl = this.photoFilterViewCurvesControl;
        if (photoFilterCurvesControl != null) {
            photoFilterCurvesControl.bringToFront();
        }
        PreviewHighlightView previewHighlightView = this.previewHighlight;
        if (previewHighlightView != null) {
            previewHighlightView.bringToFront();
        }
        RoundVideoRecorder roundVideoRecorder = this.currentRoundRecorder;
        if (roundVideoRecorder != null) {
            roundVideoRecorder.bringToFront();
        }
    }

    private void destroyPhotoPaintView() {
        PaintView paintView = this.paintView;
        if (paintView == null) {
            return;
        }
        paintView.onCleanupEntities();
        this.paintView.shutdown();
        this.containerView.removeView(this.paintView);
        this.paintView = null;
        RenderView renderView = this.paintViewRenderView;
        if (renderView != null) {
            this.previewContainer.removeView(renderView);
            this.paintViewRenderView = null;
        }
        View view = this.paintViewTextDim;
        if (view != null) {
            this.previewContainer.removeView(view);
            this.paintViewTextDim = null;
        }
        View view2 = this.paintViewRenderInputView;
        if (view2 != null) {
            this.previewContainer.removeView(view2);
            this.paintViewRenderInputView = null;
        }
        View view3 = this.paintViewEntitiesView;
        if (view3 != null) {
            this.previewContainer.removeView(view3);
            this.paintViewEntitiesView = null;
        }
        View view4 = this.paintViewSelectionContainerView;
        if (view4 != null) {
            this.previewContainer.removeView(view4);
            this.paintViewSelectionContainerView = null;
        }
    }

    private void onSwitchEditModeStart(int i, int i2) {
        PaintView paintView;
        PaintView paintView2;
        if (i2 == -1) {
            this.backButton.setVisibility(0);
            this.captionContainer.setVisibility(0);
            PaintView paintView3 = this.paintView;
            if (paintView3 != null) {
                paintView3.clearSelection();
            }
            this.downloadButton.setVisibility(0);
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry != null && storyEntry.isRepostMessage) {
                getThemeButton().setVisibility(0);
                updateThemeButtonDrawable(false);
            } else {
                ImageView imageView = this.themeButton;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            }
            this.titleTextView.setVisibility(0);
            if (this.isVideo) {
                this.muteButton.setVisibility(0);
                this.playButton.setVisibility(0);
            } else {
                StoryEntry storyEntry2 = this.outputEntry;
                if (storyEntry2 != null && !TextUtils.isEmpty(storyEntry2.audioPath)) {
                    this.muteButton.setVisibility(8);
                    this.playButton.setVisibility(0);
                }
            }
            this.timelineView.setVisibility(0);
        }
        if (i2 == 0 && (paintView2 = this.paintView) != null) {
            paintView2.setVisibility(0);
        }
        if ((i2 == 0 || i == 0) && (paintView = this.paintView) != null) {
            paintView.onAnimationStateChanged(true);
        }
        PaintView paintView4 = this.paintView;
        if (paintView4 != null) {
            paintView4.keyboardNotifier.ignore(i2 != 0);
        }
        this.captionEdit.keyboardNotifier.ignore(i2 != -1);
        Bulletin.hideVisible();
        if (this.photoFilterView != null && i == 1) {
            applyFilter(null);
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.setAllowTouch(false);
        }
        this.muteHint.hide();
    }

    public void onSwitchEditModeEnd(int i, int i2) {
        PaintView paintView;
        PaintView paintView2;
        if (i2 == 0) {
            this.backButton.setVisibility(8);
        }
        if (i == 0 && (paintView2 = this.paintView) != null) {
            paintView2.setVisibility(8);
        }
        if (i == -1) {
            this.captionContainer.setVisibility(8);
            this.muteButton.setVisibility(8);
            this.playButton.setVisibility(8);
            this.downloadButton.setVisibility(8);
            ImageView imageView = this.themeButton;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            this.timelineView.setVisibility(8);
            this.titleTextView.setVisibility(8);
        }
        boolean z = true;
        this.previewView.setAllowCropping(i2 == -1);
        if ((i2 == 0 || i == 0) && (paintView = this.paintView) != null) {
            paintView.onAnimationStateChanged(false);
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            if (i2 != 1 && i2 != -1) {
                z = false;
            }
            enhanceView.setAllowTouch(z);
        }
    }

    private void applyPaintInBackground(final Runnable runnable) {
        final PaintView paintView = this.paintView;
        final StoryEntry storyEntry = this.outputEntry;
        if (paintView == null || storyEntry == null) {
            return;
        }
        storyEntry.clearPaint();
        final boolean hasChanges = paintView.hasChanges();
        final boolean hasBlur = paintView.hasBlur();
        final int i = storyEntry.resultWidth;
        final int i2 = storyEntry.resultHeight;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.lambda$applyPaintInBackground$52(paintView, i, i2, storyEntry, hasBlur, hasChanges, runnable);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x00ef, code lost:
        if (r5.isRecycled() != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0173 A[LOOP:0: B:165:0x016c->B:167:0x0173, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0270  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$applyPaintInBackground$52(org.telegram.p043ui.Stories.recorder.PaintView r36, int r37, int r38, final org.telegram.p043ui.Stories.recorder.StoryEntry r39, boolean r40, final boolean r41, final java.lang.Runnable r42) {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.lambda$applyPaintInBackground$52(org.telegram.ui.Stories.recorder.PaintView, int, int, org.telegram.ui.Stories.recorder.StoryEntry, boolean, boolean, java.lang.Runnable):void");
    }

    public static /* synthetic */ void lambda$applyPaintInBackground$51(StoryEntry storyEntry, boolean z, ArrayList arrayList, File file, File file2, File file3, File file4, File file5, List list, Runnable runnable) {
        try {
            File file6 = storyEntry.paintFile;
            if (file6 != null) {
                file6.delete();
            }
        } catch (Exception unused) {
        }
        try {
            File file7 = storyEntry.paintEntitiesFile;
            if (file7 != null) {
                file7.delete();
            }
        } catch (Exception unused2) {
        }
        try {
            File file8 = storyEntry.paintBlurFile;
            if (file8 != null) {
                file8.delete();
            }
        } catch (Exception unused3) {
        }
        storyEntry.paintFile = null;
        storyEntry.paintEntitiesFile = null;
        storyEntry.paintBlurFile = null;
        File file9 = storyEntry.backgroundFile;
        if (file9 != null) {
            try {
                file9.delete();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            storyEntry.backgroundFile = null;
        }
        File file10 = storyEntry.messageVideoMaskFile;
        if (file10 != null) {
            try {
                file10.delete();
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
            storyEntry.messageVideoMaskFile = null;
        }
        storyEntry.editedMedia = z | storyEntry.editedMedia;
        storyEntry.mediaEntities = arrayList;
        storyEntry.paintFile = file;
        storyEntry.backgroundFile = file2;
        storyEntry.paintEntitiesFile = file3;
        storyEntry.messageVideoMaskFile = file4;
        storyEntry.paintBlurFile = file5;
        storyEntry.stickers = list;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:200:0x016b, code lost:
        if (r2.isRecycled() != false) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyPaint() {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryRecorder.applyPaint():void");
    }

    private void applyPaintMessage() {
        StoryEntry storyEntry;
        if (this.paintView == null || (storyEntry = this.outputEntry) == null || !storyEntry.isRepostMessage) {
            return;
        }
        File file = storyEntry.messageFile;
        if (file != null) {
            try {
                file.delete();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            this.outputEntry.messageFile = null;
        }
        this.outputEntry.messageFile = StoryEntry.makeCacheFile(this.currentAccount, "webp");
        PaintView paintView = this.paintView;
        StoryEntry storyEntry2 = this.outputEntry;
        Bitmap bitmap = paintView.getBitmap(storyEntry2.mediaEntities, storyEntry2.resultWidth, storyEntry2.resultHeight, false, false, true, !this.isVideo, storyEntry2);
        try {
            try {
                bitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(this.outputEntry.messageFile));
                if (bitmap.isRecycled()) {
                    return;
                }
            } catch (Exception e2) {
                FileLog.m102e(e2);
                try {
                    this.outputEntry.messageFile.delete();
                } catch (Exception e3) {
                    FileLog.m102e(e3);
                }
                this.outputEntry.messageFile = null;
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
            }
            bitmap.recycle();
        } catch (Throwable th) {
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    private void applyFilter(Runnable runnable) {
        StoryEntry storyEntry;
        PreviewView previewView;
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView == null || (storyEntry = this.outputEntry) == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        storyEntry.editedMedia = photoFilterView.hasChanges() | storyEntry.editedMedia;
        this.outputEntry.updateFilter(this.photoFilterView, runnable);
        if (runnable == null) {
            StoryEntry storyEntry2 = this.outputEntry;
            if (storyEntry2.isVideo || (previewView = this.previewView) == null) {
                return;
            }
            previewView.set(storyEntry2);
        }
    }

    public void createFilterPhotoView() {
        StoryEntry storyEntry;
        Bitmap bitmap;
        Bitmap scaledBitmap;
        if (this.photoFilterView != null || (storyEntry = this.outputEntry) == null) {
            return;
        }
        if (storyEntry.isVideo) {
            bitmap = null;
        } else {
            if (storyEntry.filterFile == null) {
                scaledBitmap = this.previewView.getPhotoBitmap();
            } else {
                StoryEntry.DecodeBitmap decodeBitmap = new StoryEntry.DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda78
                    @Override // org.telegram.p043ui.Stories.recorder.StoryEntry.DecodeBitmap
                    public final Bitmap decode(BitmapFactory.Options options) {
                        Bitmap lambda$createFilterPhotoView$53;
                        lambda$createFilterPhotoView$53 = StoryRecorder.this.lambda$createFilterPhotoView$53(options);
                        return lambda$createFilterPhotoView$53;
                    }
                };
                Point point = AndroidUtilities.displaySize;
                scaledBitmap = StoryEntry.getScaledBitmap(decodeBitmap, point.x, point.y, true);
            }
            bitmap = scaledBitmap;
        }
        if (bitmap != null || this.outputEntry.isVideo) {
            Activity activity = this.activity;
            VideoEditTextureView textureView = this.previewView.getTextureView();
            int orientation = this.previewView.getOrientation();
            StoryEntry storyEntry2 = this.outputEntry;
            PhotoFilterView photoFilterView = new PhotoFilterView(activity, textureView, bitmap, orientation, storyEntry2 != null ? storyEntry2.filterState : null, null, 0, false, false, this.blurManager, this.resourcesProvider);
            this.photoFilterView = photoFilterView;
            this.containerView.addView(photoFilterView);
            PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
            if (enhanceView != null) {
                enhanceView.setFilterView(this.photoFilterView);
            }
            TextureView myTextureView = this.photoFilterView.getMyTextureView();
            this.photoFilterViewTextureView = myTextureView;
            if (myTextureView != null) {
                myTextureView.setOpaque(false);
            }
            this.previewView.setFilterTextureView(this.photoFilterViewTextureView, this.photoFilterView);
            TextureView textureView2 = this.photoFilterViewTextureView;
            if (textureView2 != null) {
                textureView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.photoFilterViewTextureView.animate().alpha(1.0f).setDuration(220L).start();
            }
            applyFilterMatrix();
            PhotoFilterBlurControl blurControl = this.photoFilterView.getBlurControl();
            this.photoFilterViewBlurControl = blurControl;
            if (blurControl != null) {
                this.previewContainer.addView(blurControl);
            }
            PhotoFilterCurvesControl curveControl = this.photoFilterView.getCurveControl();
            this.photoFilterViewCurvesControl = curveControl;
            if (curveControl != null) {
                this.previewContainer.addView(curveControl);
            }
            orderPreviewViews();
            this.photoFilterView.getDoneTextView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StoryRecorder.this.lambda$createFilterPhotoView$54(view);
                }
            });
            this.photoFilterView.getCancelTextView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StoryRecorder.this.lambda$createFilterPhotoView$55(view);
                }
            });
            this.photoFilterView.getToolsView().setVisibility(8);
            this.photoFilterView.getToolsView().setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.photoFilterView.getToolsView().setTranslationY(AndroidUtilities.m107dp(186));
            this.photoFilterView.init();
        }
    }

    public /* synthetic */ Bitmap lambda$createFilterPhotoView$53(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.outputEntry.file.getAbsolutePath(), options);
    }

    public /* synthetic */ void lambda$createFilterPhotoView$54(View view) {
        switchToEditMode(-1, true);
    }

    public /* synthetic */ void lambda$createFilterPhotoView$55(View view) {
        switchToEditMode(-1, true);
    }

    public void invalidateBlur() {
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.invalidateBlur();
        }
    }

    public void applyFilterMatrix() {
        if (this.outputEntry == null || this.photoFilterViewTextureView == null || this.previewContainer.getMeasuredWidth() <= 0 || this.previewContainer.getMeasuredHeight() <= 0) {
            return;
        }
        Matrix matrix = new Matrix();
        matrix.reset();
        int i = this.outputEntry.orientation;
        if (i != 0) {
            matrix.postRotate(-i, this.previewContainer.getMeasuredWidth() / 2.0f, this.previewContainer.getMeasuredHeight() / 2.0f);
            if ((this.outputEntry.orientation / 90) % 2 == 1) {
                matrix.postScale(this.previewContainer.getMeasuredWidth() / this.previewContainer.getMeasuredHeight(), this.previewContainer.getMeasuredHeight() / this.previewContainer.getMeasuredWidth(), this.previewContainer.getMeasuredWidth() / 2.0f, this.previewContainer.getMeasuredHeight() / 2.0f);
            }
        }
        matrix.postScale((1.0f / this.previewContainer.getMeasuredWidth()) * this.outputEntry.width, (1.0f / this.previewContainer.getMeasuredHeight()) * this.outputEntry.height);
        matrix.postConcat(this.outputEntry.matrix);
        matrix.postScale(this.previewContainer.getMeasuredWidth() / this.outputEntry.resultWidth, this.previewContainer.getMeasuredHeight() / this.outputEntry.resultHeight);
        this.photoFilterViewTextureView.setTransform(matrix);
        this.photoFilterViewTextureView.invalidate();
    }

    private void destroyPhotoFilterView() {
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView == null) {
            return;
        }
        photoFilterView.shutdown();
        this.photoFilterEnhanceView.setFilterView(null);
        this.containerView.removeView(this.photoFilterView);
        TextureView textureView = this.photoFilterViewTextureView;
        if (textureView != null) {
            this.previewContainer.removeView(textureView);
            this.photoFilterViewTextureView = null;
        }
        this.previewView.setFilterTextureView(null, null);
        PhotoFilterBlurControl photoFilterBlurControl = this.photoFilterViewBlurControl;
        if (photoFilterBlurControl != null) {
            this.previewContainer.removeView(photoFilterBlurControl);
            this.photoFilterViewBlurControl = null;
        }
        PhotoFilterCurvesControl photoFilterCurvesControl = this.photoFilterViewCurvesControl;
        if (photoFilterCurvesControl != null) {
            this.previewContainer.removeView(photoFilterCurvesControl);
            this.photoFilterViewCurvesControl = null;
        }
        this.photoFilterView = null;
    }

    public void createCameraView() {
        if (this.cameraView != null || getContext() == null) {
            return;
        }
        this.cameraView = new C746523(getContext(), getCameraFace(), false);
        RecordControl recordControl = this.recordControl;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (recordControl != null) {
            recordControl.setAmplitude(BitmapDescriptorFactory.HUE_RED, false);
        }
        DualCameraView dualCameraView = this.cameraView;
        dualCameraView.isStory = true;
        dualCameraView.setThumbDrawable(getCameraThumb());
        this.cameraView.initTexture();
        this.cameraView.setDelegate(new CameraView.CameraViewDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda75
            @Override // org.telegram.messenger.camera.CameraView.CameraViewDelegate
            public final void onCameraInit() {
                StoryRecorder.this.lambda$createCameraView$56();
            }
        });
        this.dualButton.setVisibility((this.cameraView.dualAvailable() && this.currentPage == 0) ? 0 : 8);
        ToggleButton2 toggleButton2 = this.flashButton;
        if (this.cameraView.dualAvailable()) {
            f = -AndroidUtilities.m107dp(46);
        }
        toggleButton2.setTranslationX(f);
        this.previewContainer.addView(this.cameraView, LayoutHelper.createFrame(-1, -1, 119));
        if (MessagesController.getGlobalMainSettings().getInt("storyhint2", 0) < 1) {
            this.cameraHint.show();
            MessagesController.getGlobalMainSettings().edit().putInt("storyhint2", MessagesController.getGlobalMainSettings().getInt("storyhint2", 0) + 1).apply();
        } else if (this.cameraView.isSavedDual() || !this.cameraView.dualAvailable() || MessagesController.getGlobalMainSettings().getInt("storydualhint", 0) >= 2) {
        } else {
            this.dualHint.show();
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$23 */
    /* loaded from: classes6.dex */
    public class C746523 extends DualCameraView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C746523(Context context, boolean z, boolean z2) {
            super(context, z, z2);
            StoryRecorder.this = r1;
        }

        @Override // org.telegram.p043ui.Stories.recorder.DualCameraView
        public void onEntityDraggedTop(boolean z) {
            StoryRecorder.this.previewHighlight.show(true, z, StoryRecorder.this.actionBarContainer);
        }

        @Override // org.telegram.p043ui.Stories.recorder.DualCameraView
        public void onEntityDraggedBottom(boolean z) {
            StoryRecorder.this.previewHighlight.updateCaption(StoryRecorder.this.captionEdit.getText());
            StoryRecorder.this.previewHighlight.show(false, z, StoryRecorder.this.controlContainer);
        }

        @Override // org.telegram.p043ui.Stories.recorder.DualCameraView, org.telegram.messenger.camera.CameraView
        public void toggleDual() {
            super.toggleDual();
            StoryRecorder.this.dualButton.setValue(isDual());
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.setCameraFlashModeIcon(storyRecorder.getCurrentFlashMode(), true);
        }

        @Override // org.telegram.p043ui.Stories.recorder.DualCameraView
        protected void onSavedDualCameraSuccess() {
            if (MessagesController.getGlobalMainSettings().getInt("storysvddualhint", 0) < 2) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$23$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.C746523.this.lambda$onSavedDualCameraSuccess$0();
                    }
                }, 340L);
            }
            StoryRecorder.this.dualButton.setValue(isDual());
        }

        public /* synthetic */ void lambda$onSavedDualCameraSuccess$0() {
            if (StoryRecorder.this.takingVideo || StoryRecorder.this.takingPhoto || StoryRecorder.this.cameraView == null || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.savedDualHint == null) {
                return;
            }
            String string = LocaleController.getString(isFrontface() ? C3632R.string.StoryCameraSavedDualBackHint : C3632R.string.StoryCameraSavedDualFrontHint);
            StoryRecorder.this.savedDualHint.setMaxWidthPx(HintView2.cutInFancyHalf(string, StoryRecorder.this.savedDualHint.getTextPaint()));
            StoryRecorder.this.savedDualHint.setText(string);
            StoryRecorder.this.savedDualHint.show();
            MessagesController.getGlobalMainSettings().edit().putInt("storysvddualhint", MessagesController.getGlobalMainSettings().getInt("storysvddualhint", 0) + 1).apply();
        }

        @Override // org.telegram.messenger.camera.CameraView
        protected void receivedAmplitude(double d) {
            if (StoryRecorder.this.recordControl != null) {
                StoryRecorder.this.recordControl.setAmplitude(Utilities.clamp((float) (d / 1800.0d), 1.0f, (float) BitmapDescriptorFactory.HUE_RED), true);
            }
        }
    }

    public /* synthetic */ void lambda$createCameraView$56() {
        String currentFlashMode = getCurrentFlashMode();
        if (TextUtils.equals(currentFlashMode, getNextFlashMode())) {
            currentFlashMode = null;
        }
        setCameraFlashModeIcon(this.currentPage == 0 ? currentFlashMode : null, true);
        ZoomControlView zoomControlView = this.zoomControlView;
        if (zoomControlView != null) {
            this.cameraZoom = BitmapDescriptorFactory.HUE_RED;
            zoomControlView.setZoom(BitmapDescriptorFactory.HUE_RED, false);
        }
    }

    public void checkFrontfaceFlashModes() {
        if (this.frontfaceFlashMode < 0) {
            this.frontfaceFlashMode = MessagesController.getGlobalMainSettings().getInt("frontflash", 1);
            ArrayList<String> arrayList = new ArrayList<>();
            this.frontfaceFlashModes = arrayList;
            arrayList.add("off");
            this.frontfaceFlashModes.add(TtmlNode.TEXT_EMPHASIS_AUTO);
            this.frontfaceFlashModes.add("on");
            this.flashViews.setWarmth(MessagesController.getGlobalMainSettings().getFloat("frontflash_warmth", 0.9f));
            this.flashViews.setIntensity(MessagesController.getGlobalMainSettings().getFloat("frontflash_intensity", 1.0f));
        }
    }

    private void saveFrontFaceFlashMode() {
        if (this.frontfaceFlashMode >= 0) {
            MessagesController.getGlobalMainSettings().edit().putFloat("frontflash_warmth", this.flashViews.warmth).putFloat("frontflash_intensity", this.flashViews.intensity).apply();
        }
    }

    public String getCurrentFlashMode() {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getCameraSession() == null) {
            return null;
        }
        if (this.cameraView.isFrontface() && this.cameraView.getCameraSession().availableFlashModes.isEmpty()) {
            checkFrontfaceFlashModes();
            return this.frontfaceFlashModes.get(this.frontfaceFlashMode);
        }
        return this.cameraView.getCameraSession().getCurrentFlashMode();
    }

    private String getNextFlashMode() {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getCameraSession() == null) {
            return null;
        }
        if (this.cameraView.isFrontface() && this.cameraView.getCameraSession().availableFlashModes.isEmpty()) {
            checkFrontfaceFlashModes();
            ArrayList<String> arrayList = this.frontfaceFlashModes;
            return arrayList.get(this.frontfaceFlashMode + 1 >= arrayList.size() ? 0 : this.frontfaceFlashMode + 1);
        }
        return this.cameraView.getCameraSession().getNextFlashMode();
    }

    private void setCurrentFlashMode(String str) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getCameraSession() == null) {
            return;
        }
        if (this.cameraView.isFrontface() && this.cameraView.getCameraSession().availableFlashModes.isEmpty()) {
            int indexOf = this.frontfaceFlashModes.indexOf(str);
            if (indexOf >= 0) {
                this.frontfaceFlashMode = indexOf;
                MessagesController.getGlobalMainSettings().edit().putInt("frontflash", this.frontfaceFlashMode).apply();
                return;
            }
            return;
        }
        this.cameraView.getCameraSession().setCurrentFlashMode(str);
    }

    public Drawable getCameraThumb() {
        Bitmap bitmap;
        try {
            bitmap = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg").getAbsolutePath());
        } catch (Throwable unused) {
            bitmap = null;
        }
        if (bitmap != null) {
            return new BitmapDrawable(bitmap);
        }
        return getContext().getResources().getDrawable(C3632R.C3634drawable.icplaceholder);
    }

    private void saveLastCameraBitmap(final Runnable runnable) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null && dualCameraView.getTextureView() != null) {
            try {
                final Bitmap bitmap = this.cameraView.getTextureView().getBitmap();
                Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda49
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$saveLastCameraBitmap$57(bitmap, runnable);
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    public /* synthetic */ void lambda$saveLastCameraBitmap$57(Bitmap bitmap, Runnable runnable) {
        if (bitmap != null) {
            try {
                Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.cameraView.getMatrix(), true);
                bitmap.recycle();
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, 80, (int) (createBitmap.getHeight() / (createBitmap.getWidth() / 80.0f)), true);
                if (createScaledBitmap != null) {
                    if (createScaledBitmap != createBitmap) {
                        createBitmap.recycle();
                    }
                    Utilities.blurBitmap(createScaledBitmap, 7, 1, createScaledBitmap.getWidth(), createScaledBitmap.getHeight(), createScaledBitmap.getRowBytes());
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg"));
                    createScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                    createScaledBitmap.recycle();
                    fileOutputStream.close();
                }
            } catch (Throwable unused) {
            }
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    private void showDismissEntry() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString("DiscardChanges", C3632R.string.DiscardChanges));
        builder.setMessage(LocaleController.getString("PhotoEditorDiscardAlert", C3632R.string.PhotoEditorDiscardAlert));
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null && !storyEntry.isEdit) {
            builder.setNeutralButton(LocaleController.getString(storyEntry.isDraft ? "StoryKeepDraft" : "StorySaveDraft"), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    StoryRecorder.this.lambda$showDismissEntry$58(dialogInterface, i);
                }
            });
        }
        StoryEntry storyEntry2 = this.outputEntry;
        builder.setPositiveButton((storyEntry2 == null || !storyEntry2.isDraft || storyEntry2.isEdit) ? LocaleController.getString("Discard", C3632R.string.Discard) : LocaleController.getString("StoryDeleteDraft"), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                StoryRecorder.this.lambda$showDismissEntry$59(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        AlertDialog create = builder.create();
        create.show();
        View button = create.getButton(-1);
        if (button instanceof TextView) {
            int i = Theme.key_text_RedBold;
            ((TextView) button).setTextColor(Theme.getColor(i, this.resourcesProvider));
            button.setBackground(Theme.createRadSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor(i, this.resourcesProvider), 51), 6, 6));
        }
    }

    public /* synthetic */ void lambda$showDismissEntry$58(DialogInterface dialogInterface, int i) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        storyEntry.captionEntitiesAllowed = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed();
        this.showSavedDraftHint = !this.outputEntry.isDraft;
        applyFilter(null);
        applyPaint();
        applyPaintMessage();
        destroyPhotoFilterView();
        StoryEntry storyEntry2 = this.outputEntry;
        storyEntry2.destroy(true);
        storyEntry2.caption = this.captionEdit.getText();
        this.outputEntry = null;
        prepareThumb(storyEntry2, true);
        DraftsController draftsController = MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController();
        if (storyEntry2.isDraft) {
            draftsController.edit(storyEntry2);
        } else {
            draftsController.append(storyEntry2);
        }
        navigateTo(0, true);
    }

    public /* synthetic */ void lambda$showDismissEntry$59(DialogInterface dialogInterface, int i) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null && !storyEntry.isEdit && ((!storyEntry.isRepost || storyEntry.isRepostMessage) && storyEntry.isDraft)) {
            MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().delete(this.outputEntry);
            this.outputEntry = null;
        }
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 != null && (storyEntry2.isEdit || (storyEntry2.isRepost && !storyEntry2.isRepostMessage))) {
            close(true);
        } else {
            navigateTo(0, true);
        }
    }

    public void destroyCameraView(boolean z) {
        if (this.cameraView != null) {
            if (z) {
                saveLastCameraBitmap(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda33
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$destroyCameraView$60();
                    }
                });
                return;
            }
            saveLastCameraBitmap(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.lambda$destroyCameraView$61();
                }
            });
            this.cameraView.destroy(true, null);
            this.previewContainer.removeView(this.cameraView);
            this.cameraView = null;
        }
    }

    public /* synthetic */ void lambda$destroyCameraView$60() {
        this.cameraViewThumb.setImageDrawable(getCameraThumb());
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            dualCameraView.destroy(true, null);
            this.previewContainer.removeView(this.cameraView);
            this.cameraView = null;
        }
    }

    public /* synthetic */ void lambda$destroyCameraView$61() {
        this.cameraViewThumb.setImageDrawable(getCameraThumb());
    }

    private void requestCameraPermission(boolean z) {
        Activity activity;
        if (!this.requestedCameraPermission || z) {
            this.noCameraPermission = false;
            if (Build.VERSION.SDK_INT >= 23 && (activity = this.activity) != null) {
                boolean z2 = activity.checkSelfPermission("android.permission.CAMERA") != 0;
                this.noCameraPermission = z2;
                if (z2) {
                    Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.story_camera).mutate();
                    mutate.setColorFilter(new PorterDuffColorFilter(1040187391, PorterDuff.Mode.MULTIPLY));
                    CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(-14540254), mutate);
                    combinedDrawable.setIconSize(AndroidUtilities.m107dp(64), AndroidUtilities.m107dp(64));
                    this.cameraViewThumb.setImageDrawable(combinedDrawable);
                    if (this.activity.shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
                        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C3632R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString("PermissionNoCameraWithHint", C3632R.string.PermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3632R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda7
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i) {
                                StoryRecorder.this.lambda$requestCameraPermission$62(dialogInterface, i);
                            }
                        }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3632R.string.ContactsPermissionAlertNotNow), null).create().show();
                        return;
                    } else {
                        this.activity.requestPermissions(new String[]{"android.permission.CAMERA"}, 111);
                        this.requestedCameraPermission = true;
                    }
                }
            }
            if (this.noCameraPermission) {
                return;
            }
            if (CameraController.getInstance().isCameraInitied()) {
                createCameraView();
            } else {
                CameraController.getInstance().initCamera(new StoryRecorder$$ExternalSyntheticLambda36(this));
            }
        }
    }

    public /* synthetic */ void lambda$requestCameraPermission$62(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public boolean requestGalleryPermission() {
        Activity activity = this.activity;
        if (activity != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 33) {
                if (activity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") != 0 || this.activity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") != 0) {
                    r5 = true;
                }
                if (r5) {
                    this.activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}, 114);
                }
            } else if (i >= 23) {
                r5 = activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0;
                if (r5) {
                    this.activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 114);
                }
            }
            return !r5;
        }
        return true;
    }

    public boolean requestAudioPermission() {
        Activity activity;
        if (Build.VERSION.SDK_INT >= 23 && (activity = this.activity) != null) {
            if (!(activity.checkSelfPermission("android.permission.RECORD_AUDIO") == 0)) {
                this.activity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 112);
                return false;
            }
        }
        return true;
    }

    public static void onResume() {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.onResumeInternal();
        }
    }

    private void onResumeInternal() {
        if (this.currentPage == 0) {
            ValueAnimator valueAnimator = this.openCloseAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.whenOpenDone = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda46
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$onResumeInternal$63();
                    }
                };
            } else {
                requestCameraPermission(false);
            }
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.onResume();
        }
        RecordControl recordControl = this.recordControl;
        if (recordControl != null) {
            recordControl.updateGalleryImage();
        }
        PreviewHighlightView previewHighlightView = this.previewHighlight;
        if (previewHighlightView != null) {
            previewHighlightView.updateCount();
        }
        PaintView paintView = this.paintView;
        if (paintView != null) {
            paintView.onResume();
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(0, false);
        }
        MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().load();
    }

    public /* synthetic */ void lambda$onResumeInternal$63() {
        requestCameraPermission(false);
    }

    public static void onPause() {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.onPauseInternal();
        }
    }

    private void onPauseInternal() {
        destroyCameraView(false);
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.onPause();
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(0, true);
        }
    }

    public static void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.onRequestPermissionsResultInternal(i, strArr, iArr);
        }
    }

    private void onRequestPermissionsResultInternal(int i, String[] strArr, int[] iArr) {
        Runnable runnable;
        boolean z = iArr != null && iArr.length == 1 && iArr[0] == 0;
        if (i == 111) {
            this.noCameraPermission = !z;
            if (z && this.currentPage == 0) {
                this.cameraViewThumb.setImageDrawable(null);
                if (CameraController.getInstance().isCameraInitied()) {
                    createCameraView();
                } else {
                    CameraController.getInstance().initCamera(new StoryRecorder$$ExternalSyntheticLambda36(this));
                }
            }
        } else if (i == 114) {
            if (z) {
                MediaController.loadGalleryPhotosAlbums(0);
                lambda$animateGalleryListView$43(true);
                return;
            }
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C3632R.raw.permission_request_folder, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.PermissionStorageWithHint))).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3632R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    StoryRecorder.this.lambda$onRequestPermissionsResultInternal$64(dialogInterface, i2);
                }
            }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3632R.string.ContactsPermissionAlertNotNow), null).create().show();
        } else if (i == 112) {
            if (z) {
                return;
            }
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C3632R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString("PermissionNoCameraMicVideo", C3632R.string.PermissionNoCameraMicVideo))).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3632R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    StoryRecorder.this.lambda$onRequestPermissionsResultInternal$65(dialogInterface, i2);
                }
            }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3632R.string.ContactsPermissionAlertNotNow), null).create().show();
        } else if (i == 115) {
            if (!z) {
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C3632R.raw.permission_request_folder, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString("PermissionNoAudioStorageStory", C3632R.string.PermissionNoAudioStorageStory))).setPositiveButton(LocaleController.getString("PermissionOpenSettings", C3632R.string.PermissionOpenSettings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        StoryRecorder.this.lambda$onRequestPermissionsResultInternal$66(dialogInterface, i2);
                    }
                }).setNegativeButton(LocaleController.getString("ContactsPermissionAlertNotNow", C3632R.string.ContactsPermissionAlertNotNow), null).create().show();
            }
            if (z && (runnable = this.audioGrantedCallback) != null) {
                runnable.run();
            }
            this.audioGrantedCallback = null;
        }
    }

    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$64(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$65(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$66(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public void saveCameraFace(boolean z) {
        MessagesController.getGlobalMainSettings().edit().putBoolean("stories_camera", z).apply();
    }

    private boolean getCameraFace() {
        return MessagesController.getGlobalMainSettings().getBoolean("stories_camera", false);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        StoriesController.StoryLimit checkStoryLimit;
        StoryEntry storyEntry;
        boolean z = false;
        z = false;
        z = false;
        z = false;
        if (i == NotificationCenter.albumsDidLoad) {
            RecordControl recordControl = this.recordControl;
            if (recordControl != null) {
                recordControl.updateGalleryImage();
            }
            if (this.lastGallerySelectedAlbum == null || MediaController.allMediaAlbums == null) {
                return;
            }
            for (int i3 = 0; i3 < MediaController.allMediaAlbums.size(); i3++) {
                MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbums.get(i3);
                int i4 = albumEntry.bucketId;
                MediaController.AlbumEntry albumEntry2 = this.lastGallerySelectedAlbum;
                if (i4 == albumEntry2.bucketId && albumEntry.videoOnly == albumEntry2.videoOnly) {
                    this.lastGallerySelectedAlbum = albumEntry;
                    return;
                }
            }
        } else if (i == NotificationCenter.storiesDraftsUpdated) {
            RecordControl recordControl2 = this.recordControl;
            if (recordControl2 == null || this.showSavedDraftHint) {
                return;
            }
            recordControl2.updateGalleryImage();
        } else if (i == NotificationCenter.storiesLimitUpdate) {
            int i5 = this.currentPage;
            if (i5 == 1) {
                PreviewButtons previewButtons = this.previewButtons;
                if (!this.videoError && !this.captionEdit.isCaptionOverLimit() && (!MessagesController.getInstance(this.currentAccount).getStoriesController().hasStoryLimit() || ((storyEntry = this.outputEntry) != null && storyEntry.isEdit))) {
                    z = true;
                }
                previewButtons.setShareEnabled(z);
            } else if (i5 == 0 && (checkStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit()) != null && checkStoryLimit.active(this.currentAccount)) {
                showLimitReachedSheet(checkStoryLimit, true);
            }
        }
    }

    public void addNotificationObservers() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesDraftsUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesLimitUpdate);
    }

    public void removeNotificationObservers() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesDraftsUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesLimitUpdate);
    }

    private void showLimitReachedSheet(StoriesController.StoryLimit storyLimit, final boolean z) {
        if (this.shownLimitReached) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(new BaseFragment() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.24
            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public boolean isLightStatusBar() {
                return false;
            }

            {
                StoryRecorder.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                return StoryRecorder.this.activity;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Theme.ResourcesProvider getResourceProvider() {
                return new WrappedResourceProvider(this, StoryRecorder.this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.24.1
                    @Override // org.telegram.p043ui.WrappedResourceProvider
                    public void appendColors() {
                        this.sparseIntArray.append(Theme.key_dialogBackground, -14737633);
                        this.sparseIntArray.append(Theme.key_windowBackgroundGray, -13421773);
                    }
                };
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public boolean presentFragment(BaseFragment baseFragment) {
                StoryRecorder.this.openPremium();
                return false;
            }
        }, this.activity, storyLimit.getLimitReachedType(), this.currentAccount, null);
        limitReachedBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                StoryRecorder.this.lambda$showLimitReachedSheet$67(z, dialogInterface);
            }
        });
        this.previewView.updatePauseReason(7, true);
        this.shownLimitReached = true;
        limitReachedBottomSheet.show();
    }

    public /* synthetic */ void lambda$showLimitReachedSheet$67(boolean z, DialogInterface dialogInterface) {
        this.shownLimitReached = false;
        this.previewView.updatePauseReason(7, true);
        if (z) {
            close(true);
        }
    }

    public void checkBackgroundVisibility() {
        boolean z = this.dismissProgress != BitmapDescriptorFactory.HUE_RED || this.openProgress < 1.0f || this.forceBackgroundVisible;
        if (z == this.isBackgroundVisible) {
            return;
        }
        Activity activity = this.activity;
        if (activity instanceof LaunchActivity) {
            ((LaunchActivity) activity).drawerLayoutContainer.setAllowDrawContent(z);
        }
        this.isBackgroundVisible = z;
    }

    public void openPremium() {
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(4, true);
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.hidePeriodPopup();
        }
        PremiumFeatureBottomSheet premiumFeatureBottomSheet = new PremiumFeatureBottomSheet(new BaseFragment() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.25
            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public boolean isLightStatusBar() {
                return false;
            }

            {
                StoryRecorder.this = this;
                this.currentAccount = this.currentAccount;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Dialog showDialog(Dialog dialog) {
                dialog.show();
                return dialog;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                return StoryRecorder.this.activity;
            }

            @Override // org.telegram.p043ui.ActionBar.BaseFragment
            public Theme.ResourcesProvider getResourceProvider() {
                return new WrappedResourceProvider(this, StoryRecorder.this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.25.1
                    @Override // org.telegram.p043ui.WrappedResourceProvider
                    public void appendColors() {
                        this.sparseIntArray.append(Theme.key_dialogBackground, -14803426);
                        this.sparseIntArray.append(Theme.key_windowBackgroundGray, -16777216);
                    }
                };
            }
        }, 14, false);
        premiumFeatureBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                StoryRecorder.this.lambda$openPremium$68(dialogInterface);
            }
        });
        premiumFeatureBottomSheet.show();
    }

    public /* synthetic */ void lambda$openPremium$68(DialogInterface dialogInterface) {
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(4, false);
        }
    }

    private CharSequence premiumText(String str) {
        return AndroidUtilities.replaceSingleTag(str, Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.this.openPremium();
            }
        }, this.resourcesProvider);
    }

    public void showPremiumPeriodBulletin(int i) {
        int i2 = i / 3600;
        Bulletin.BulletinWindow.BulletinWindowLayout make = Bulletin.BulletinWindow.make(this.activity, new Bulletin.Delegate(this) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.26
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public boolean clipWithGradient(int i3) {
                return true;
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i3) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i3);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getTopOffset(int i3) {
                return 0;
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }
        });
        WindowManager.LayoutParams layout = make.getLayout();
        if (layout != null) {
            layout.height = -2;
            layout.width = this.containerView.getWidth();
            layout.y = (int) (this.containerView.getY() + AndroidUtilities.m107dp(56));
            make.updateLayout();
        }
        make.setTouchable(true);
        BulletinFactory.m66of(make, this.resourcesProvider).createSimpleBulletin(C3632R.raw.fire_on, premiumText(LocaleController.formatPluralString("StoryPeriodPremium", i2, new Object[0])), 3).show(true);
    }

    public void setIconMuted(boolean z, boolean z2) {
        if (this.muteButtonDrawable == null) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C3632R.raw.media_mute_unmute, "media_mute_unmute", AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
            this.muteButtonDrawable = rLottieDrawable;
            rLottieDrawable.multiplySpeed(1.5f);
        }
        this.muteButton.setAnimation(this.muteButtonDrawable);
        if (!z2) {
            this.muteButtonDrawable.setCurrentFrame(z ? 20 : 0, false);
        } else if (z) {
            if (this.muteButtonDrawable.getCurrentFrame() > 20) {
                this.muteButtonDrawable.setCurrentFrame(0, false);
            }
            this.muteButtonDrawable.setCustomEndFrame(20);
            this.muteButtonDrawable.start();
        } else if (this.muteButtonDrawable.getCurrentFrame() == 0 || this.muteButtonDrawable.getCurrentFrame() >= 43) {
        } else {
            this.muteButtonDrawable.setCustomEndFrame(43);
            this.muteButtonDrawable.start();
        }
    }

    public StoryRecorder selectedPeerId(long j) {
        this.selectedDialogId = j;
        return this;
    }

    public StoryRecorder canChangePeer(boolean z) {
        this.canChangePeer = z;
        return this;
    }

    public static CharSequence cameraBtnSpan(Context context) {
        SpannableString spannableString = new SpannableString("c");
        final Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.story_camera).mutate();
        int m107dp = AndroidUtilities.m107dp(35);
        int i = -m107dp;
        mutate.setBounds(i / 4, i, (m107dp / 4) * 3, 0);
        spannableString.setSpan(new ImageSpan(mutate) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.27
            @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
            public int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
                return (super.getSize(paint, charSequence, i2, i3, fontMetricsInt) / 3) * 2;
            }

            @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f, int i4, int i5, int i6, Paint paint) {
                canvas.save();
                canvas.translate(BitmapDescriptorFactory.HUE_RED, ((i6 - i4) / 2) + AndroidUtilities.m107dp(1));
                mutate.setAlpha(paint.getAlpha());
                super.draw(canvas, charSequence, i2, i3, f, i4, i5, i6, paint);
                canvas.restore();
            }
        }, 0, 1, 33);
        return spannableString;
    }

    public ThanosEffect getThanosEffect() {
        if (ThanosEffect.supports()) {
            if (this.thanosEffect == null) {
                WindowView windowView = this.windowView;
                ThanosEffect thanosEffect = new ThanosEffect(getContext(), new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda41
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.this.lambda$getThanosEffect$69();
                    }
                });
                this.thanosEffect = thanosEffect;
                windowView.addView(thanosEffect);
            }
            return this.thanosEffect;
        }
        return null;
    }

    public /* synthetic */ void lambda$getThanosEffect$69() {
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            this.thanosEffect = null;
            this.windowView.removeView(thanosEffect);
        }
    }

    public ImageView getThemeButton() {
        if (this.themeButton == null) {
            int i = C3632R.raw.sun_outline;
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m107dp(28), AndroidUtilities.m107dp(28), true, null);
            this.themeButtonDrawable = rLottieDrawable;
            rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry == null || !storyEntry.isDark) {
                this.themeButtonDrawable.setCustomEndFrame(0);
                this.themeButtonDrawable.setCurrentFrame(0);
            } else {
                this.themeButtonDrawable.setCurrentFrame(35);
                this.themeButtonDrawable.setCustomEndFrame(36);
            }
            this.themeButtonDrawable.beginApplyLayerColors();
            int color = Theme.getColor(Theme.key_chats_menuName, this.resourcesProvider);
            this.themeButtonDrawable.setLayerColor("Sunny.**", color);
            this.themeButtonDrawable.setLayerColor("Path 6.**", color);
            this.themeButtonDrawable.setLayerColor("Path.**", color);
            this.themeButtonDrawable.setLayerColor("Path 5.**", color);
            this.themeButtonDrawable.commitApplyLayerColors();
            ImageView imageView = new ImageView(getContext());
            this.themeButton = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.themeButton.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            this.themeButton.setBackground(Theme.createSelectorDrawable(553648127));
            this.themeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StoryRecorder.this.lambda$getThemeButton$70(view);
                }
            });
            this.themeButton.setVisibility(8);
            this.themeButton.setImageDrawable(this.themeButtonDrawable);
            this.themeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.actionBarButtons.addView(this.themeButton, 0, LayoutHelper.createLinear(46, 56, 53));
        }
        return this.themeButton;
    }

    public /* synthetic */ void lambda$getThemeButton$70(View view) {
        toggleTheme();
    }

    public void updateThemeButtonDrawable(boolean z) {
        RLottieDrawable rLottieDrawable = this.themeButtonDrawable;
        if (rLottieDrawable != null) {
            int i = 0;
            if (z) {
                StoryEntry storyEntry = this.outputEntry;
                if (storyEntry != null && storyEntry.isDark) {
                    i = rLottieDrawable.getFramesCount();
                }
                rLottieDrawable.setCustomEndFrame(i);
                RLottieDrawable rLottieDrawable2 = this.themeButtonDrawable;
                if (rLottieDrawable2 != null) {
                    rLottieDrawable2.start();
                    return;
                }
                return;
            }
            StoryEntry storyEntry2 = this.outputEntry;
            int framesCount = (storyEntry2 == null || !storyEntry2.isDark) ? 0 : rLottieDrawable.getFramesCount() - 1;
            this.themeButtonDrawable.setCurrentFrame(framesCount, false, true);
            this.themeButtonDrawable.setCustomEndFrame(framesCount);
            ImageView imageView = this.themeButton;
            if (imageView != null) {
                imageView.invalidate();
            }
        }
    }

    public void toggleTheme() {
        if (this.outputEntry == null || this.changeDayNightView != null || this.themeButton == null) {
            return;
        }
        ValueAnimator valueAnimator = this.changeDayNightViewAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            final boolean z = this.outputEntry.isDark;
            final Bitmap createBitmap = Bitmap.createBitmap(this.windowView.getWidth(), this.windowView.getHeight(), Bitmap.Config.ARGB_8888);
            final Canvas canvas = new Canvas(createBitmap);
            this.themeButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            PreviewView previewView = this.previewView;
            if (previewView != null) {
                previewView.drawForThemeToggle = true;
            }
            PaintView paintView = this.paintView;
            if (paintView != null) {
                paintView.drawForThemeToggle = true;
            }
            this.windowView.draw(canvas);
            PreviewView previewView2 = this.previewView;
            if (previewView2 != null) {
                previewView2.drawForThemeToggle = false;
            }
            PaintView paintView2 = this.paintView;
            if (paintView2 != null) {
                paintView2.drawForThemeToggle = false;
            }
            this.themeButton.setAlpha(1.0f);
            final Paint paint = new Paint(1);
            paint.setColor(-16777216);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            final Paint paint2 = new Paint(1);
            paint2.setFilterBitmap(true);
            int[] iArr = new int[2];
            this.themeButton.getLocationInWindow(iArr);
            final float f = iArr[0];
            final float f2 = iArr[1];
            final float measuredWidth = f + (this.themeButton.getMeasuredWidth() / 2.0f);
            final float measuredHeight = f2 + (this.themeButton.getMeasuredHeight() / 2.0f);
            final float max = Math.max(createBitmap.getHeight(), createBitmap.getWidth()) + AndroidUtilities.navigationBarHeight;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint2.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
            View view = new View(getContext()) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.28
                {
                    StoryRecorder.this = this;
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas2) {
                    super.onDraw(canvas2);
                    if (z) {
                        if (StoryRecorder.this.changeDayNightViewProgress > BitmapDescriptorFactory.HUE_RED) {
                            canvas.drawCircle(measuredWidth, measuredHeight, max * StoryRecorder.this.changeDayNightViewProgress, paint);
                        }
                        canvas2.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint2);
                    } else {
                        canvas2.drawCircle(measuredWidth, measuredHeight, max * (1.0f - StoryRecorder.this.changeDayNightViewProgress), paint2);
                    }
                    canvas2.save();
                    canvas2.translate(f, f2);
                    StoryRecorder.this.themeButton.draw(canvas2);
                    canvas2.restore();
                }
            };
            this.changeDayNightView = view;
            view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda22
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean lambda$toggleTheme$71;
                    lambda$toggleTheme$71 = StoryRecorder.lambda$toggleTheme$71(view2, motionEvent);
                    return lambda$toggleTheme$71;
                }
            });
            this.changeDayNightViewProgress = BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.changeDayNightViewAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.29
                boolean changedNavigationBarColor = false;

                {
                    StoryRecorder.this = this;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StoryRecorder.this.changeDayNightViewProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    if (StoryRecorder.this.changeDayNightView != null) {
                        StoryRecorder.this.changeDayNightView.invalidate();
                    }
                    if (this.changedNavigationBarColor || StoryRecorder.this.changeDayNightViewProgress <= 0.5f) {
                        return;
                    }
                    this.changedNavigationBarColor = true;
                }
            });
            this.changeDayNightViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.30
                {
                    StoryRecorder.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (StoryRecorder.this.changeDayNightView != null) {
                        if (StoryRecorder.this.changeDayNightView.getParent() != null) {
                            ((ViewGroup) StoryRecorder.this.changeDayNightView.getParent()).removeView(StoryRecorder.this.changeDayNightView);
                        }
                        StoryRecorder.this.changeDayNightView = null;
                    }
                    StoryRecorder.this.changeDayNightViewAnimator = null;
                    super.onAnimationEnd(animator);
                }
            });
            this.changeDayNightViewAnimator.setStartDelay(80L);
            this.changeDayNightViewAnimator.setDuration(z ? 320L : 450L);
            this.changeDayNightViewAnimator.setInterpolator(z ? CubicBezierInterpolator.EASE_IN : CubicBezierInterpolator.EASE_OUT_QUINT);
            this.changeDayNightViewAnimator.start();
            this.windowView.addView(this.changeDayNightView, new ViewGroup.LayoutParams(-1, -1));
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.this.lambda$toggleTheme$72();
                }
            });
        }
    }

    public /* synthetic */ void lambda$toggleTheme$72() {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        storyEntry.isDark = !storyEntry.isDark;
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.setupWallpaper(storyEntry, false);
        }
        PaintView paintView = this.paintView;
        if (paintView != null && paintView.entitiesView != null) {
            for (int i = 0; i < this.paintView.entitiesView.getChildCount(); i++) {
                View childAt = this.paintView.entitiesView.getChildAt(i);
                if (childAt instanceof MessageEntityView) {
                    ((MessageEntityView) childAt).setupTheme(this.outputEntry);
                }
            }
        }
        updateThemeButtonDrawable(true);
    }
}
