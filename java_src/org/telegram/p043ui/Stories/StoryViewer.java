package org.telegram.p043ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.p016ui.AspectRatioFrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileStreamLoadOperation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatActionCell;
import org.telegram.p043ui.Components.ChatActivityEnterView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadialProgress;
import org.telegram.p043ui.Components.ReactionsContainerLayout;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ShareAlert;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.VideoPlayer;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.Stories.PeerStoriesView;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$TL_userStories;
/* renamed from: org.telegram.ui.Stories.StoryViewer */
/* loaded from: classes6.dex */
public class StoryViewer {
    public static boolean animationInProgress;
    private static boolean isInSilentMode;
    private static TLRPC$StoryItem lastStoryItem;
    private static boolean runOpenAnimationAfterLayout;
    boolean allowIntercept;
    boolean allowSelfStoriesView;
    boolean allowSwipeToDissmiss;
    boolean allowSwipeToReply;
    private boolean animateAvatar;
    StoriesListPlaceProvider.AvatarOverlaysView animateFromCell;
    AspectRatioFrameLayout aspectRatioFrameLayout;
    float clipBottom;
    float clipTop;
    HwFrameLayout containerView;
    public int currentAccount;
    Dialog currentDialog;
    PeerStoriesView.VideoPlayerSharedScope currentPlayerScope;
    public int dayStoryId;
    private Runnable delayedTapRunnable;
    Runnable doOnAnimationReady;
    private boolean flingCalled;
    BaseFragment fragment;
    float fromDismissOffset;
    float fromHeight;
    private int fromRadius;
    float fromWidth;
    float fromX;
    float fromXCell;
    float fromY;
    float fromYCell;
    private boolean fullyVisible;
    GestureDetector gestureDetector;
    private float hideEnterViewProgress;
    boolean inSwipeToDissmissMode;
    private boolean invalidateOutRect;
    private boolean isBulletinVisible;
    private boolean isCaption;
    private boolean isCaptionPartVisible;
    private boolean isClosed;
    private boolean isHintVisible;
    private boolean isInPinchToZoom;
    private boolean isInTouchMode;
    public boolean isLongpressed;
    private boolean isOverlayVisible;
    private boolean isPopupVisible;
    private boolean isRecording;
    boolean isShowing;
    boolean isSingleStory;
    private boolean isSwiping;
    private boolean isWaiting;
    boolean keyboardVisible;
    long lastDialogId;
    int lastPosition;
    Uri lastUri;
    private int messageId;
    private Runnable onCloseListener;
    ValueAnimator openCloseAnimator;
    boolean openedFromLightNavigationBar;
    TLRPC$TL_userStories overrideUserStories;
    private PlaceProvider placeProvider;
    VideoPlayerHolder playerHolder;
    Bitmap playerStubBitmap;
    public Paint playerStubPaint;
    float progressToDismiss;
    float progressToOpen;
    private int realKeyboardHeight;
    boolean reversed;
    float selfStoriesViewsOffset;
    SelfStoryViewsView selfStoryViewsView;
    TLRPC$StoryItem singleStory;
    StoriesController.StoriesList storiesList;
    public StoriesViewPager storiesViewPager;
    private SurfaceView surfaceView;
    float swipeToDismissHorizontalDirection;
    float swipeToDismissHorizontalOffset;
    float swipeToDismissOffset;
    ValueAnimator swipeToDissmissBackAnimator;
    ValueAnimator swipeToReplyBackAnimator;
    float swipeToReplyOffset;
    float swipeToReplyProgress;
    boolean swipeToReplyWaitingKeyboard;
    ValueAnimator swipeToViewsAnimator;
    private TextureView textureView;
    public boolean unreadStateChanged;
    private StoriesVolumeContorl volumeControl;
    WindowManager.LayoutParams windowLayoutParams;
    WindowManager windowManager;
    public SizeNotifierFrameLayout windowView;
    public static ArrayList<StoryViewer> globalInstances = new ArrayList<>();
    private static boolean checkSilentMode = true;
    public boolean USE_SURFACE_VIEW = SharedConfig.useSurfaceInStories;
    public boolean ATTACH_TO_FRAGMENT = true;
    public boolean foundViewToClose = false;
    public boolean allowScreenshots = true;
    Theme.ResourcesProvider resourcesProvider = new DarkThemeResourceProvider();
    RectF avatarRectTmp = new RectF();
    float[] pointPosition = new float[2];
    public final TransitionViewHolder transitionViewHolder = new TransitionViewHolder();
    private boolean allowTouchesByViewpager = false;
    AnimationNotificationsLocker locker = new AnimationNotificationsLocker();
    ArrayList<VideoPlayerHolder> preparedPlayers = new ArrayList<>();
    Runnable longPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda8
        @Override // java.lang.Runnable
        public final void run() {
            StoryViewer.this.lambda$new$0();
        }
    };
    public LongSparseIntArray savedPositions = new LongSparseIntArray();

    /* renamed from: org.telegram.ui.Stories.StoryViewer$HolderClip */
    /* loaded from: classes6.dex */
    public interface HolderClip {
        void clip(Canvas canvas, RectF rectF, float f);
    }

    /* renamed from: org.telegram.ui.Stories.StoryViewer$HolderDrawAbove */
    /* loaded from: classes6.dex */
    public interface HolderDrawAbove {
        void draw(Canvas canvas, RectF rectF, float f);
    }

    /* renamed from: org.telegram.ui.Stories.StoryViewer$PlaceProvider */
    /* loaded from: classes6.dex */
    public interface PlaceProvider {
        boolean findView(long j, int i, int i2, int i3, TransitionViewHolder transitionViewHolder);

        void preLayout(long j, int i, Runnable runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        setLongPressed(true);
    }

    public static boolean isShowingImage(MessageObject messageObject) {
        if (lastStoryItem != null) {
            return (messageObject.type == 23 || messageObject.isWebpage()) && !runOpenAnimationAfterLayout && lastStoryItem.messageId == messageObject.getId() && lastStoryItem.messageType != 3;
        }
        return false;
    }

    public static void closeGlobalInstances() {
        for (int i = 0; i < globalInstances.size(); i++) {
            globalInstances.get(i).close(false);
        }
        globalInstances.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLongPressed(boolean z) {
        PeerStoriesView currentPeerView;
        if (this.isLongpressed != z) {
            this.isLongpressed = z;
            updatePlayingMode();
            StoriesViewPager storiesViewPager = this.storiesViewPager;
            if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null) {
                return;
            }
            currentPeerView.setLongpressed(this.isLongpressed);
        }
    }

    public StoryViewer(BaseFragment baseFragment) {
        new Paint(1);
        this.fragment = baseFragment;
    }

    public void open(Context context, TLRPC$StoryItem tLRPC$StoryItem, PlaceProvider placeProvider) {
        if (tLRPC$StoryItem == null) {
            return;
        }
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(tLRPC$StoryItem.dialogId));
        open(context, tLRPC$StoryItem, arrayList, 0, null, null, placeProvider, false);
    }

    public void open(Context context, long j, PlaceProvider placeProvider) {
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(j));
        MessagesController.getInstance(this.currentAccount).getStoriesController().checkExpiredStories(j);
        open(context, null, arrayList, 0, null, null, placeProvider, false);
    }

    public void open(Context context, int i, StoriesController.StoriesList storiesList, PlaceProvider placeProvider) {
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(storiesList.userId));
        this.dayStoryId = i;
        open(context, null, arrayList, 0, storiesList, null, placeProvider, false);
    }

    public void open(Context context, TLRPC$TL_userStories tLRPC$TL_userStories, PlaceProvider placeProvider) {
        ArrayList<TLRPC$StoryItem> arrayList;
        if (tLRPC$TL_userStories == null || (arrayList = tLRPC$TL_userStories.stories) == null || arrayList.isEmpty()) {
            return;
        }
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList<Long> arrayList2 = new ArrayList<>();
        arrayList2.add(Long.valueOf(tLRPC$TL_userStories.user_id));
        open(context, tLRPC$TL_userStories.stories.get(0), arrayList2, 0, null, tLRPC$TL_userStories, placeProvider, false);
    }

    public void open(Context context, TLRPC$StoryItem tLRPC$StoryItem, int i, StoriesController.StoriesList storiesList, boolean z, PlaceProvider placeProvider) {
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(storiesList.userId));
        this.dayStoryId = i;
        open(context, tLRPC$StoryItem, arrayList, 0, storiesList, null, placeProvider, z);
    }

    public void open(Context context, TLRPC$StoryItem tLRPC$StoryItem, ArrayList<Long> arrayList, int i, StoriesController.StoriesList storiesList, TLRPC$TL_userStories tLRPC$TL_userStories, PlaceProvider placeProvider, boolean z) {
        if (context == null) {
            return;
        }
        ValueAnimator valueAnimator = this.openCloseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.openCloseAnimator = null;
        }
        if (this.isShowing) {
            return;
        }
        boolean z2 = !AndroidUtilities.isTablet();
        this.ATTACH_TO_FRAGMENT = z2;
        this.USE_SURFACE_VIEW = SharedConfig.useSurfaceInStories && z2;
        this.messageId = tLRPC$StoryItem == null ? 0 : tLRPC$StoryItem.messageId;
        this.isSingleStory = tLRPC$StoryItem != null && storiesList == null && tLRPC$TL_userStories == null;
        if (tLRPC$StoryItem != null) {
            this.singleStory = tLRPC$StoryItem;
            lastStoryItem = tLRPC$StoryItem;
        }
        this.storiesList = storiesList;
        this.overrideUserStories = tLRPC$TL_userStories;
        this.placeProvider = placeProvider;
        this.reversed = z;
        this.currentAccount = UserConfig.selectedAccount;
        this.swipeToDismissOffset = BitmapDescriptorFactory.HUE_RED;
        this.swipeToDismissHorizontalOffset = BitmapDescriptorFactory.HUE_RED;
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager != null) {
            storiesViewPager.setHorizontalProgressToDismiss(BitmapDescriptorFactory.HUE_RED);
        }
        this.swipeToReplyProgress = BitmapDescriptorFactory.HUE_RED;
        this.swipeToReplyOffset = BitmapDescriptorFactory.HUE_RED;
        this.allowSwipeToReply = false;
        this.progressToDismiss = BitmapDescriptorFactory.HUE_RED;
        this.isShowing = true;
        this.isLongpressed = false;
        this.savedPositions.clear();
        AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.type = 99;
        layoutParams.softInputMode = 16;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        if (i2 >= 21) {
            layoutParams.flags = -2147417728;
        }
        this.isClosed = false;
        this.unreadStateChanged = false;
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (this.windowView == null) {
            this.gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: org.telegram.ui.Stories.StoryViewer.1
                @Override // android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onShowPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent motionEvent) {
                    StoryViewer.this.flingCalled = false;
                    StoryViewer storyViewer = StoryViewer.this;
                    return !storyViewer.findClickableView(storyViewer.windowView, motionEvent.getX(), motionEvent.getY(), false);
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent) {
                    PeerStoriesView currentPeerView = StoryViewer.this.storiesViewPager.getCurrentPeerView();
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.selfStoriesViewsOffset == BitmapDescriptorFactory.HUE_RED && storyViewer.allowIntercept && currentPeerView != null) {
                        if (storyViewer.keyboardVisible || storyViewer.isCaption || StoryViewer.this.isCaptionPartVisible || StoryViewer.this.isHintVisible) {
                            StoryViewer.this.closeKeyboardOrEmoji();
                        } else {
                            boolean z3 = motionEvent.getX() > ((float) StoryViewer.this.containerView.getMeasuredWidth()) * 0.33f;
                            if (!currentPeerView.switchToNext(z3)) {
                                boolean switchToNext = StoryViewer.this.storiesViewPager.switchToNext(z3);
                                if (!switchToNext && z3) {
                                    StoryViewer.this.close(true);
                                } else if (switchToNext) {
                                    StoryViewer.this.storiesViewPager.lockTouchEvent(150L);
                                }
                            }
                        }
                    }
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.inSwipeToDissmissMode) {
                        if (storyViewer.allowSwipeToReply) {
                            storyViewer.swipeToReplyOffset += f2;
                            int m72dp = AndroidUtilities.m72dp(200);
                            StoryViewer storyViewer2 = StoryViewer.this;
                            float f3 = m72dp;
                            if (storyViewer2.swipeToReplyOffset > f3 && !storyViewer2.swipeToReplyWaitingKeyboard) {
                                storyViewer2.swipeToReplyWaitingKeyboard = true;
                                storyViewer2.showKeyboard();
                                StoryViewer.this.windowView.performHapticFeedback(3);
                            }
                            StoryViewer storyViewer3 = StoryViewer.this;
                            storyViewer3.swipeToReplyProgress = Utilities.clamp(storyViewer3.swipeToReplyOffset / f3, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                            StoryViewer.this.storiesViewPager.getCurrentPeerView().invalidate();
                            StoryViewer storyViewer4 = StoryViewer.this;
                            if (storyViewer4.swipeToReplyOffset >= BitmapDescriptorFactory.HUE_RED) {
                                return true;
                            }
                            storyViewer4.swipeToReplyOffset = BitmapDescriptorFactory.HUE_RED;
                            storyViewer4.allowSwipeToReply = false;
                        }
                        StoryViewer storyViewer5 = StoryViewer.this;
                        if (storyViewer5.allowSelfStoriesView) {
                            float f4 = storyViewer5.selfStoriesViewsOffset;
                            if (f4 > storyViewer5.selfStoryViewsView.maxSelfStoriesViewsOffset && f2 > BitmapDescriptorFactory.HUE_RED) {
                                storyViewer5.selfStoriesViewsOffset = f4 + (0.05f * f2);
                            } else {
                                storyViewer5.selfStoriesViewsOffset = f4 + f2;
                            }
                            storyViewer5.storiesViewPager.getCurrentPeerView().invalidate();
                            StoryViewer.this.containerView.invalidate();
                            StoryViewer storyViewer6 = StoryViewer.this;
                            if (storyViewer6.selfStoriesViewsOffset >= BitmapDescriptorFactory.HUE_RED) {
                                return true;
                            }
                            storyViewer6.selfStoriesViewsOffset = BitmapDescriptorFactory.HUE_RED;
                            storyViewer6.allowSelfStoriesView = false;
                        }
                        float f5 = 0.6f;
                        StoryViewer storyViewer7 = StoryViewer.this;
                        if (storyViewer7.progressToDismiss > 0.8f) {
                            float f6 = -f2;
                            if ((f6 > BitmapDescriptorFactory.HUE_RED && storyViewer7.swipeToDismissOffset > BitmapDescriptorFactory.HUE_RED) || (f6 < BitmapDescriptorFactory.HUE_RED && storyViewer7.swipeToDismissOffset < BitmapDescriptorFactory.HUE_RED)) {
                                f5 = 0.3f;
                            }
                        }
                        storyViewer7.swipeToDismissOffset -= f2 * f5;
                        storyViewer7.updateProgressToDismiss();
                        return true;
                    }
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.swipeToReplyOffset != BitmapDescriptorFactory.HUE_RED && f2 < -1000.0f && !storyViewer.swipeToReplyWaitingKeyboard) {
                        storyViewer.swipeToReplyWaitingKeyboard = true;
                        storyViewer.windowView.performHapticFeedback(3);
                        StoryViewer.this.showKeyboard();
                    }
                    StoryViewer storyViewer2 = StoryViewer.this;
                    if (storyViewer2.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED) {
                        if (f2 < -1000.0f) {
                            storyViewer2.cancelSwipeToViews(true);
                        } else if (f2 > 1000.0f) {
                            storyViewer2.cancelSwipeToViews(false);
                        } else {
                            storyViewer2.cancelSwipeToViews(storyViewer2.selfStoryViewsView.progressToOpen > 0.5f);
                        }
                    }
                    StoryViewer.this.flingCalled = true;
                    return false;
                }
            });
            this.windowView = new C68142(context, lastFragment);
        }
        if (this.containerView == null) {
            this.containerView = new HwFrameLayout(context) { // from class: org.telegram.ui.Stories.StoryViewer.3
                public int measureKeyboardHeight() {
                    View rootView = getRootView();
                    Rect rect = AndroidUtilities.rectTmp2;
                    getWindowVisibleDisplayFrame(rect);
                    if (rect.bottom == 0 && rect.top == 0) {
                        return 0;
                    }
                    return Math.max(0, ((rootView.getHeight() - (rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView)) - (rect.bottom - rect.top));
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i3, int i4) {
                    int size = View.MeasureSpec.getSize(i4);
                    StoryViewer storyViewer = StoryViewer.this;
                    if (!storyViewer.ATTACH_TO_FRAGMENT) {
                        storyViewer.setKeyboardHeightFromParent(measureKeyboardHeight());
                        size += StoryViewer.this.realKeyboardHeight;
                    }
                    int size2 = View.MeasureSpec.getSize(i3);
                    int i5 = (int) ((size2 * 16.0f) / 9.0f);
                    if (size > i5) {
                        StoryViewer.this.storiesViewPager.getLayoutParams().width = -1;
                        size = i5;
                    } else {
                        int i6 = (int) ((size / 16.0f) * 9.0f);
                        StoryViewer.this.storiesViewPager.getLayoutParams().width = i6;
                        size2 = i6;
                    }
                    StoryViewer.this.aspectRatioFrameLayout.getLayoutParams().height = size + 1;
                    StoryViewer.this.aspectRatioFrameLayout.getLayoutParams().width = size2;
                    ((FrameLayout.LayoutParams) StoryViewer.this.aspectRatioFrameLayout.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight;
                    super.onMeasure(i3, i4);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    float measuredHeight;
                    PeerStoriesView currentPeerView = StoryViewer.this.storiesViewPager.getCurrentPeerView();
                    StoryViewer storyViewer = StoryViewer.this;
                    SelfStoryViewsView selfStoryViewsView = storyViewer.selfStoryViewsView;
                    if (selfStoryViewsView != null && currentPeerView != null) {
                        selfStoryViewsView.setOffset(storyViewer.selfStoriesViewsOffset);
                        StoryViewer storyViewer2 = StoryViewer.this;
                        if (storyViewer2.selfStoryViewsView.progressToOpen == 1.0f) {
                            storyViewer2.storiesViewPager.setVisibility(8);
                        } else {
                            storyViewer2.storiesViewPager.setVisibility(0);
                        }
                        float top = currentPeerView.getTop() + currentPeerView.storyContainer.getTop();
                        float f = StoryViewer.this.selfStoryViewsView.progressToOpen;
                        getMeasuredHeight();
                        float f2 = StoryViewer.this.selfStoriesViewsOffset;
                        getMeasuredHeight();
                        float lerp = AndroidUtilities.lerp(1.0f, StoryViewer.this.selfStoryViewsView.toHeight / currentPeerView.storyContainer.getMeasuredHeight(), f);
                        StoryViewer.this.storiesViewPager.setPivotY(top);
                        StoryViewer.this.storiesViewPager.setPivotX(getMeasuredWidth() / 2.0f);
                        StoryViewer.this.storiesViewPager.setScaleX(lerp);
                        StoryViewer.this.storiesViewPager.setScaleY(lerp);
                        currentPeerView.forceUpdateOffsets = true;
                        StoryViewer storyViewer3 = StoryViewer.this;
                        if (storyViewer3.selfStoriesViewsOffset == BitmapDescriptorFactory.HUE_RED) {
                            currentPeerView.setViewsThumbImageReceiver(BitmapDescriptorFactory.HUE_RED, null);
                        } else {
                            currentPeerView.setViewsThumbImageReceiver(f, storyViewer3.selfStoryViewsView.getCrossfadeToImage());
                        }
                        currentPeerView.invalidate();
                        if (Build.VERSION.SDK_INT >= 21) {
                            currentPeerView.outlineProvider.radiusInDp = (int) AndroidUtilities.lerp(10.0f, 6.0f / measuredHeight, StoryViewer.this.selfStoryViewsView.progressToOpen);
                            currentPeerView.storyContainer.invalidateOutline();
                        }
                        StoryViewer storyViewer4 = StoryViewer.this;
                        storyViewer4.storiesViewPager.setTranslationY((storyViewer4.selfStoryViewsView.toY - top) * f);
                    }
                    if (currentPeerView != null) {
                        StoryViewer.this.volumeControl.setTranslationY(currentPeerView.storyContainer.getY() - AndroidUtilities.m72dp(4));
                    }
                    super.dispatchDraw(canvas);
                }
            };
            HwStoriesViewPager hwStoriesViewPager = new HwStoriesViewPager(context, this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.StoryViewer.4
                @Override // org.telegram.p043ui.Stories.StoriesViewPager
                public void onStateChanged() {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.storiesViewPager.currentState == 1) {
                        AndroidUtilities.cancelRunOnUIThread(storyViewer.longPressRunnable);
                    }
                }
            };
            this.storiesViewPager = hwStoriesViewPager;
            hwStoriesViewPager.setDelegate(new C68195(storiesList, arrayList));
            this.containerView.addView(this.storiesViewPager, LayoutHelper.createFrame(-1, -1, 1));
            this.aspectRatioFrameLayout = new AspectRatioFrameLayout(context);
            if (this.USE_SURFACE_VIEW) {
                SurfaceView surfaceView = new SurfaceView(context);
                this.surfaceView = surfaceView;
                surfaceView.setZOrderMediaOverlay(false);
                this.surfaceView.setZOrderOnTop(false);
                this.aspectRatioFrameLayout.addView(this.surfaceView);
            } else {
                HwTextureView hwTextureView = new HwTextureView(context) { // from class: org.telegram.ui.Stories.StoryViewer.6
                    @Override // org.telegram.p043ui.Stories.HwTextureView, android.view.View
                    public void invalidate() {
                        super.invalidate();
                        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = StoryViewer.this.currentPlayerScope;
                        if (videoPlayerSharedScope != null) {
                            videoPlayerSharedScope.invalidate();
                        }
                    }
                };
                this.textureView = hwTextureView;
                this.aspectRatioFrameLayout.addView(hwTextureView);
            }
            StoriesVolumeContorl storiesVolumeContorl = new StoriesVolumeContorl(context);
            this.volumeControl = storiesVolumeContorl;
            this.containerView.addView(storiesVolumeContorl, LayoutHelper.createFrame(-1, -1, 0, 4, 0, 4, 0));
        }
        AndroidUtilities.removeFromParent(this.aspectRatioFrameLayout);
        this.windowView.addView(this.aspectRatioFrameLayout);
        AndroidUtilities.removeFromParent(this.containerView);
        this.windowView.addView(this.containerView);
        this.windowView.setClipChildren(false);
        if (this.ATTACH_TO_FRAGMENT && (lastFragment.getParentActivity() instanceof LaunchActivity)) {
            ((LaunchActivity) lastFragment.getParentActivity()).requestCustomNavigationBar();
        }
        if (this.isSingleStory) {
            updateTransitionParams();
        }
        if (storiesList != null) {
            this.storiesViewPager.setDays(storiesList.userId, storiesList.getDays(), this.currentAccount);
        } else {
            this.storiesViewPager.setPeerIds(arrayList, this.currentAccount, i);
        }
        this.windowManager = (WindowManager) context.getSystemService("window");
        if (this.ATTACH_TO_FRAGMENT) {
            this.windowView.setFitsSystemWindows(true);
            lastFragment.getLayoutContainer().addView(this.windowView);
            AndroidUtilities.requestAdjustResize(lastFragment.getParentActivity(), lastFragment.getClassGuid());
        } else {
            this.windowView.setFocusable(false);
            this.containerView.setFocusable(false);
            if (i2 >= 21) {
                this.windowView.setFitsSystemWindows(true);
                this.containerView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Stories.StoryViewer.7
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) StoryViewer.this.containerView.getLayoutParams();
                        marginLayoutParams.topMargin = windowInsets.getSystemWindowInsetTop();
                        marginLayoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom();
                        marginLayoutParams.leftMargin = windowInsets.getSystemWindowInsetLeft();
                        marginLayoutParams.rightMargin = windowInsets.getSystemWindowInsetRight();
                        StoryViewer.this.windowView.requestLayout();
                        StoryViewer.this.containerView.requestLayout();
                        if (Build.VERSION.SDK_INT >= 30) {
                            return WindowInsets.CONSUMED;
                        }
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                this.containerView.setSystemUiVisibility(1792);
            }
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
        }
        this.windowView.requestLayout();
        runOpenAnimationAfterLayout = true;
        updateTransitionParams();
        this.progressToOpen = BitmapDescriptorFactory.HUE_RED;
        checkNavBarColor();
        animationInProgress = true;
        checkInSilentMode();
        if (this.ATTACH_TO_FRAGMENT) {
            lockOrientation(true);
        }
        if (!this.ATTACH_TO_FRAGMENT) {
            globalInstances.add(this);
        }
        AndroidUtilities.hideKeyboard(lastFragment.getFragmentView());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoryViewer$2 */
    /* loaded from: classes6.dex */
    public class C68142 extends SizeNotifierFrameLayout {
        SparseArray<Float> lastX;
        final RectF outFromRectAvatar;
        final RectF outFromRectContainer;
        final Path path;
        final RectF rect1;
        final RectF rect2;
        final RectF rect3;
        float startX;
        float startY;
        final /* synthetic */ BaseFragment val$fragment;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C68142(Context context, BaseFragment baseFragment) {
            super(context);
            this.val$fragment = baseFragment;
            this.path = new Path();
            this.rect1 = new RectF();
            this.rect2 = new RectF();
            this.rect3 = new RectF();
            this.outFromRectAvatar = new RectF();
            this.outFromRectContainer = new RectF();
            this.lastX = new SparseArray<>();
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == StoryViewer.this.aspectRatioFrameLayout) {
                return false;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:152:0x0710  */
        /* JADX WARN: Removed duplicated region for block: B:161:? A[RETURN, SYNTHETIC] */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void dispatchDraw(android.graphics.Canvas r17) {
            /*
                Method dump skipped, instructions count: 1818
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoryViewer.C68142.dispatchDraw(android.graphics.Canvas):void");
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) {
            super.requestDisallowInterceptTouchEvent(z);
            StoryViewer.this.allowIntercept = false;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            PeerStoriesView currentPeerView;
            float floatValue;
            int i;
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.inSwipeToDissmissMode = false;
                AndroidUtilities.cancelRunOnUIThread(storyViewer.longPressRunnable);
                StoryViewer storyViewer2 = StoryViewer.this;
                float f = storyViewer2.swipeToDismissHorizontalOffset;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    storyViewer2.swipeToDissmissBackAnimator = ValueAnimator.ofFloat(f, BitmapDescriptorFactory.HUE_RED);
                    StoryViewer.this.swipeToDissmissBackAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$2$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            StoryViewer.C68142.this.lambda$dispatchTouchEvent$0(valueAnimator);
                        }
                    });
                    StoryViewer.this.swipeToDissmissBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.2.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            StoryViewer storyViewer3 = StoryViewer.this;
                            storyViewer3.swipeToDismissHorizontalOffset = BitmapDescriptorFactory.HUE_RED;
                            storyViewer3.updateProgressToDismiss();
                        }
                    });
                    StoryViewer.this.swipeToDissmissBackAnimator.setDuration(250L);
                    StoryViewer.this.swipeToDissmissBackAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    StoryViewer.this.swipeToDissmissBackAnimator.start();
                }
                StoryViewer storyViewer3 = StoryViewer.this;
                if (storyViewer3.progressToDismiss >= 0.3f) {
                    storyViewer3.close(true);
                }
                StoryViewer.this.setInTouchMode(false);
                StoryViewer.this.setLongPressed(false);
                z = true;
            } else {
                z = false;
            }
            if (motionEvent.getAction() == 0) {
                StoryViewer storyViewer4 = StoryViewer.this;
                storyViewer4.swipeToReplyWaitingKeyboard = false;
                PeerStoriesView currentPeerView2 = storyViewer4.storiesViewPager.getCurrentPeerView();
                if (currentPeerView2 != null) {
                    currentPeerView2.onActionDown(motionEvent);
                }
                StoryViewer.this.storiesViewPager.onTouchEvent(MotionEvent.obtain(0L, 0L, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
            }
            StoryViewer storyViewer5 = StoryViewer.this;
            boolean z3 = (storyViewer5.keyboardVisible || storyViewer5.isClosed || StoryViewer.this.isRecording) ? false : true;
            StoryViewer storyViewer6 = StoryViewer.this;
            if (storyViewer6.selfStoriesViewsOffset == BitmapDescriptorFactory.HUE_RED && !storyViewer6.inSwipeToDissmissMode && storyViewer6.storiesViewPager.currentState == 1 && motionEvent.getAction() == 2 && z3 && !(((floatValue = this.lastX.get(motionEvent.getPointerId(0), Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)).floatValue() - motionEvent.getX(0)) == BitmapDescriptorFactory.HUE_RED || StoryViewer.this.storiesViewPager.canScroll(floatValue)) && StoryViewer.this.swipeToDismissHorizontalOffset == BitmapDescriptorFactory.HUE_RED)) {
                StoryViewer storyViewer7 = StoryViewer.this;
                float f2 = storyViewer7.swipeToDismissHorizontalOffset;
                if (f2 == BitmapDescriptorFactory.HUE_RED) {
                    storyViewer7.swipeToDismissHorizontalDirection = -floatValue;
                }
                if ((floatValue < BitmapDescriptorFactory.HUE_RED && storyViewer7.swipeToDismissHorizontalDirection > BitmapDescriptorFactory.HUE_RED) || (i > 0 && storyViewer7.swipeToDismissHorizontalDirection < BitmapDescriptorFactory.HUE_RED)) {
                    floatValue *= 0.2f;
                }
                storyViewer7.swipeToDismissHorizontalOffset = f2 - floatValue;
                storyViewer7.updateProgressToDismiss();
                StoryViewer storyViewer8 = StoryViewer.this;
                float f3 = storyViewer8.swipeToDismissHorizontalOffset;
                if ((f3 > BitmapDescriptorFactory.HUE_RED && storyViewer8.swipeToDismissHorizontalDirection < BitmapDescriptorFactory.HUE_RED) || (f3 < BitmapDescriptorFactory.HUE_RED && storyViewer8.swipeToDismissHorizontalDirection > BitmapDescriptorFactory.HUE_RED)) {
                    storyViewer8.swipeToDismissHorizontalOffset = BitmapDescriptorFactory.HUE_RED;
                }
                z2 = true;
            } else {
                z2 = false;
            }
            StoryViewer storyViewer9 = StoryViewer.this;
            if (storyViewer9.selfStoriesViewsOffset == BitmapDescriptorFactory.HUE_RED && !storyViewer9.inSwipeToDissmissMode && !storyViewer9.isCaption) {
                StoriesViewPager storiesViewPager = StoryViewer.this.storiesViewPager;
                if (storiesViewPager.currentState != 1 && (currentPeerView = storiesViewPager.getCurrentPeerView()) != null) {
                    AndroidUtilities.getViewPositionInParent(currentPeerView.storyContainer, this, StoryViewer.this.pointPosition);
                    float[] fArr = StoryViewer.this.pointPosition;
                    motionEvent.offsetLocation(-fArr[0], -fArr[1]);
                    StoryViewer.this.storiesViewPager.getCurrentPeerView().checkPinchToZoom(motionEvent);
                    float[] fArr2 = StoryViewer.this.pointPosition;
                    motionEvent.offsetLocation(fArr2[0], fArr2[1]);
                }
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.lastX.clear();
            } else {
                for (int i2 = 0; i2 < motionEvent.getPointerCount(); i2++) {
                    this.lastX.put(motionEvent.getPointerId(i2), Float.valueOf(motionEvent.getX(i2)));
                }
            }
            if (z2) {
                return true;
            }
            boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                StoryViewer storyViewer10 = StoryViewer.this;
                if (storyViewer10.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED && !storyViewer10.flingCalled) {
                    StoryViewer storyViewer11 = StoryViewer.this;
                    storyViewer11.cancelSwipeToViews(storyViewer11.selfStoryViewsView.progressToOpen > 0.5f);
                }
                PeerStoriesView currentPeerView3 = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView3 != null) {
                    currentPeerView3.cancelTouch();
                }
            }
            if (z) {
                StoryViewer storyViewer12 = StoryViewer.this;
                if (!storyViewer12.swipeToReplyWaitingKeyboard) {
                    storyViewer12.lambda$showKeyboard$1();
                }
            }
            return dispatchTouchEvent || (StoryViewer.animationInProgress && StoryViewer.this.isInTouchMode);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchTouchEvent$0(ValueAnimator valueAnimator) {
            StoryViewer.this.swipeToDismissHorizontalOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            StoryViewer.this.updateProgressToDismiss();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && StoryViewer.this.progressToOpen == 1.0f) {
                this.startX = motionEvent.getX();
                this.startY = motionEvent.getY();
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.allowIntercept = !storyViewer.findClickableView(storyViewer.windowView, motionEvent.getX(), motionEvent.getY(), false);
                StoryViewer storyViewer2 = StoryViewer.this;
                storyViewer2.allowSwipeToDissmiss = !storyViewer2.findClickableView(storyViewer2.windowView, motionEvent.getX(), motionEvent.getY(), true);
                StoryViewer storyViewer3 = StoryViewer.this;
                storyViewer3.setInTouchMode(storyViewer3.allowIntercept && !storyViewer3.isCaptionPartVisible);
                StoryViewer storyViewer4 = StoryViewer.this;
                if (storyViewer4.allowIntercept && storyViewer4.isCaptionPartVisible) {
                    StoryViewer.this.delayedTapRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$2$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryViewer.C68142.this.lambda$onInterceptTouchEvent$1();
                        }
                    };
                    AndroidUtilities.runOnUIThread(StoryViewer.this.delayedTapRunnable, 150L);
                }
                StoryViewer storyViewer5 = StoryViewer.this;
                if (storyViewer5.allowIntercept && !storyViewer5.keyboardVisible) {
                    AndroidUtilities.runOnUIThread(storyViewer5.longPressRunnable, 400L);
                }
            } else if (motionEvent.getAction() == 2) {
                StoryViewer storyViewer6 = StoryViewer.this;
                if (!storyViewer6.inSwipeToDissmissMode && !storyViewer6.keyboardVisible && storyViewer6.allowSwipeToDissmiss) {
                    float abs = Math.abs(this.startY - motionEvent.getY());
                    if (abs > Math.abs(this.startX - motionEvent.getX()) && abs > AndroidUtilities.touchSlop * 2.0f) {
                        StoryViewer storyViewer7 = StoryViewer.this;
                        storyViewer7.inSwipeToDissmissMode = true;
                        PeerStoriesView currentPeerView = storyViewer7.storiesViewPager.getCurrentPeerView();
                        StoryViewer storyViewer8 = StoryViewer.this;
                        boolean z = currentPeerView.isSelf;
                        storyViewer8.allowSwipeToReply = !z;
                        boolean z2 = (!z || currentPeerView.unsupported || currentPeerView.currentStory.storyItem == null) ? false : true;
                        storyViewer8.allowSelfStoriesView = z2;
                        if (z2 && StoriesUtilities.hasExpiredViews(currentPeerView.currentStory.storyItem)) {
                            StoryViewer.this.allowSelfStoriesView = false;
                        }
                        StoryViewer storyViewer9 = StoryViewer.this;
                        if (storyViewer9.allowSelfStoriesView) {
                            storyViewer9.checkSelfStoriesView();
                        }
                        StoryViewer storyViewer10 = StoryViewer.this;
                        storyViewer10.swipeToReplyOffset = BitmapDescriptorFactory.HUE_RED;
                        if (storyViewer10.delayedTapRunnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.delayedTapRunnable);
                            StoryViewer.this.delayedTapRunnable.run();
                            StoryViewer.this.delayedTapRunnable = null;
                        }
                        AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.longPressRunnable);
                    }
                    StoryViewer.this.layoutAndFindView();
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.longPressRunnable);
                if (StoryViewer.this.delayedTapRunnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.delayedTapRunnable);
                    StoryViewer.this.delayedTapRunnable = null;
                }
                StoryViewer.this.setInTouchMode(false);
            }
            StoryViewer storyViewer11 = StoryViewer.this;
            SelfStoryViewsView selfStoryViewsView = storyViewer11.selfStoryViewsView;
            boolean z3 = selfStoryViewsView != null && selfStoryViewsView.progressToOpen == 1.0f;
            if (!storyViewer11.inSwipeToDissmissMode && !z3) {
                storyViewer11.gestureDetector.onTouchEvent(motionEvent);
            }
            return StoryViewer.this.inSwipeToDissmissMode || super.onInterceptTouchEvent(motionEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onInterceptTouchEvent$1() {
            StoryViewer.this.setInTouchMode(true);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.inSwipeToDissmissMode = false;
                storyViewer.setInTouchMode(false);
                StoryViewer storyViewer2 = StoryViewer.this;
                if (storyViewer2.progressToDismiss < 1.0f) {
                    if (!storyViewer2.isClosed) {
                        StoryViewer storyViewer3 = StoryViewer.this;
                        storyViewer3.swipeToDissmissBackAnimator = ValueAnimator.ofFloat(storyViewer3.swipeToDismissOffset, BitmapDescriptorFactory.HUE_RED);
                        StoryViewer.this.swipeToDissmissBackAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$2$$ExternalSyntheticLambda1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                StoryViewer.C68142.this.lambda$onTouchEvent$2(valueAnimator);
                            }
                        });
                        StoryViewer.this.swipeToDissmissBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.2.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                StoryViewer storyViewer4 = StoryViewer.this;
                                storyViewer4.swipeToDismissOffset = BitmapDescriptorFactory.HUE_RED;
                                storyViewer4.swipeToReplyOffset = BitmapDescriptorFactory.HUE_RED;
                                storyViewer4.updateProgressToDismiss();
                            }
                        });
                        StoryViewer.this.swipeToDissmissBackAnimator.setDuration(150L);
                        StoryViewer.this.swipeToDissmissBackAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        StoryViewer.this.swipeToDissmissBackAnimator.start();
                    }
                } else {
                    storyViewer2.close(true);
                }
            }
            StoryViewer storyViewer4 = StoryViewer.this;
            if (storyViewer4.inSwipeToDissmissMode || storyViewer4.keyboardVisible || storyViewer4.swipeToReplyOffset != BitmapDescriptorFactory.HUE_RED || (storyViewer4.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED && storyViewer4.allowIntercept)) {
                storyViewer4.gestureDetector.onTouchEvent(motionEvent);
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$2(ValueAnimator valueAnimator) {
            StoryViewer.this.swipeToDismissOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            StoryViewer.this.updateProgressToDismiss();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 24 || keyEvent.getKeyCode() == 25) {
                StoryViewer.this.dispatchVolumeEvent(keyEvent);
                return true;
            } else if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                StoryViewer.this.onBackPressed();
                return true;
            } else {
                return super.dispatchKeyEventPreIme(keyEvent);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (StoryViewer.this.ATTACH_TO_FRAGMENT) {
                AndroidUtilities.requestAdjustResize(this.val$fragment.getParentActivity(), this.val$fragment.getClassGuid());
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            ((FrameLayout.LayoutParams) StoryViewer.this.volumeControl.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight - AndroidUtilities.m72dp(2);
            StoryViewer.this.volumeControl.getLayoutParams().height = AndroidUtilities.m72dp(2);
            super.onMeasure(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoryViewer$5 */
    /* loaded from: classes6.dex */
    public class C68195 implements PeerStoriesView.Delegate {
        final /* synthetic */ ArrayList val$peerIds;
        final /* synthetic */ StoriesController.StoriesList val$storiesList;

        C68195(StoriesController.StoriesList storiesList, ArrayList arrayList) {
            this.val$storiesList = storiesList;
            this.val$peerIds = arrayList;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void onPeerSelected(long j, int i) {
            StoryViewer storyViewer = StoryViewer.this;
            if (storyViewer.lastPosition == i && storyViewer.lastDialogId == j) {
                return;
            }
            storyViewer.lastDialogId = j;
            storyViewer.lastPosition = i;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void shouldSwitchToNext() {
            if (StoryViewer.this.storiesViewPager.getCurrentPeerView().switchToNext(true) || StoryViewer.this.storiesViewPager.switchToNext(true)) {
                return;
            }
            StoryViewer.this.close(true);
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void switchToNextAndRemoveCurrentPeer() {
            if (this.val$storiesList != null) {
                if (StoryViewer.this.storiesViewPager.days == null) {
                    return;
                }
                final ArrayList arrayList = new ArrayList(StoryViewer.this.storiesViewPager.days);
                int indexOf = arrayList.indexOf(StoryViewer.this.storiesViewPager.getCurrentPeerView().getCurrentDay());
                if (indexOf >= 0) {
                    arrayList.remove(indexOf);
                    if (!StoryViewer.this.storiesViewPager.switchToNext(true)) {
                        StoryViewer.this.close(false);
                        return;
                    }
                    StoriesViewPager storiesViewPager = StoryViewer.this.storiesViewPager;
                    final StoriesController.StoriesList storiesList = this.val$storiesList;
                    storiesViewPager.onNextIdle(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$5$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryViewer.C68195.this.lambda$switchToNextAndRemoveCurrentPeer$0(storiesList, arrayList);
                        }
                    });
                    return;
                }
                StoryViewer.this.close(false);
                return;
            }
            final ArrayList arrayList2 = new ArrayList(this.val$peerIds);
            final int indexOf2 = arrayList2.indexOf(Long.valueOf(StoryViewer.this.storiesViewPager.getCurrentPeerView().getCurrentPeer()));
            if (indexOf2 >= 0) {
                arrayList2.remove(indexOf2);
                if (!StoryViewer.this.storiesViewPager.switchToNext(true)) {
                    StoryViewer.this.close(false);
                    return;
                } else {
                    StoryViewer.this.storiesViewPager.onNextIdle(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$5$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryViewer.C68195.this.lambda$switchToNextAndRemoveCurrentPeer$1(arrayList2, indexOf2);
                        }
                    });
                    return;
                }
            }
            StoryViewer.this.close(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$switchToNextAndRemoveCurrentPeer$0(StoriesController.StoriesList storiesList, ArrayList arrayList) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.storiesViewPager.setDays(storiesList.userId, arrayList, storyViewer.currentAccount);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$switchToNextAndRemoveCurrentPeer$1(ArrayList arrayList, int i) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.storiesViewPager.setPeerIds(arrayList, storyViewer.currentAccount, i);
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setHideEnterViewProgress(float f) {
            if (StoryViewer.this.hideEnterViewProgress != f) {
                StoryViewer.this.hideEnterViewProgress = f;
                StoryViewer.this.containerView.invalidate();
            }
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void showDialog(Dialog dialog) {
            StoryViewer.this.showDialog(dialog);
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public boolean releasePlayer(Runnable runnable) {
            VideoPlayerHolder videoPlayerHolder = StoryViewer.this.playerHolder;
            if (videoPlayerHolder != null) {
                boolean release = videoPlayerHolder.release(runnable);
                StoryViewer.this.playerHolder = null;
                return release;
            }
            return false;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void requestAdjust(boolean z) {
            StoryViewer.this.requestAdjust(z);
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setKeyboardVisible(boolean z) {
            StoryViewer storyViewer = StoryViewer.this;
            if (storyViewer.keyboardVisible != z) {
                storyViewer.keyboardVisible = z;
                storyViewer.updatePlayingMode();
            }
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setAllowTouchesByViewPager(boolean z) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.allowTouchesByViewpager = storyViewer.allowTouchesByViewpager;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void requestPlayer(TLRPC$Document tLRPC$Document, Uri uri, long j, PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope) {
            StoryViewer storyViewer;
            VideoPlayerHolder videoPlayerHolder;
            if (!StoryViewer.this.isClosed) {
                StoryViewer storyViewer2 = StoryViewer.this;
                if (storyViewer2.progressToOpen == 1.0f) {
                    Uri uri2 = storyViewer2.lastUri;
                    boolean equals = Objects.equals(uri2 == null ? null : uri2.getAuthority(), uri == null ? null : uri.getAuthority());
                    if (!equals || (videoPlayerHolder = (storyViewer = StoryViewer.this).playerHolder) == null) {
                        StoryViewer storyViewer3 = StoryViewer.this;
                        storyViewer3.lastUri = uri;
                        VideoPlayerHolder videoPlayerHolder2 = storyViewer3.playerHolder;
                        if (videoPlayerHolder2 != null) {
                            videoPlayerHolder2.release(null);
                            StoryViewer.this.playerHolder = null;
                        }
                        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope2 = StoryViewer.this.currentPlayerScope;
                        if (videoPlayerSharedScope2 != null) {
                            videoPlayerSharedScope2.player = null;
                            videoPlayerSharedScope2.firstFrameRendered = false;
                            videoPlayerSharedScope2.renderView = null;
                            videoPlayerSharedScope2.textureView = null;
                            videoPlayerSharedScope2.surfaceView = null;
                            videoPlayerSharedScope2.invalidate();
                            StoryViewer.this.currentPlayerScope = null;
                        }
                        if (uri != null) {
                            StoryViewer.this.currentPlayerScope = videoPlayerSharedScope;
                            int i = 0;
                            while (true) {
                                if (i >= StoryViewer.this.preparedPlayers.size()) {
                                    break;
                                } else if (StoryViewer.this.preparedPlayers.get(i).uri.equals(uri)) {
                                    StoryViewer storyViewer4 = StoryViewer.this;
                                    storyViewer4.playerHolder = storyViewer4.preparedPlayers.remove(i);
                                    break;
                                } else {
                                    i++;
                                }
                            }
                            StoryViewer storyViewer5 = StoryViewer.this;
                            if (storyViewer5.playerHolder == null) {
                                storyViewer5.playerHolder = new VideoPlayerHolder();
                                StoryViewer.this.playerHolder.document = tLRPC$Document;
                            }
                            StoryViewer storyViewer6 = StoryViewer.this;
                            VideoPlayerHolder videoPlayerHolder3 = storyViewer6.playerHolder;
                            videoPlayerHolder3.uri = uri;
                            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope3 = storyViewer6.currentPlayerScope;
                            videoPlayerSharedScope3.player = videoPlayerHolder3;
                            videoPlayerSharedScope3.firstFrameRendered = false;
                            videoPlayerSharedScope3.renderView = storyViewer6.aspectRatioFrameLayout;
                            videoPlayerSharedScope3.textureView = storyViewer6.textureView;
                            StoryViewer storyViewer7 = StoryViewer.this;
                            storyViewer7.currentPlayerScope.surfaceView = storyViewer7.surfaceView;
                            FileStreamLoadOperation.setPriorityForDocument(StoryViewer.this.playerHolder.document, 3);
                            FileLoader.getInstance(StoryViewer.this.currentAccount).changePriority(3, StoryViewer.this.playerHolder.document, null, null, null, null, null);
                            StoryViewer storyViewer8 = StoryViewer.this;
                            storyViewer8.currentPlayerScope.player.start(storyViewer8.isPaused(), uri, j, StoryViewer.isInSilentMode);
                            StoryViewer.this.currentPlayerScope.invalidate();
                        }
                    } else if (equals) {
                        storyViewer.currentPlayerScope = videoPlayerSharedScope;
                        videoPlayerSharedScope.player = videoPlayerHolder;
                        videoPlayerSharedScope.firstFrameRendered = videoPlayerHolder.firstFrameRendered;
                        videoPlayerSharedScope.renderView = storyViewer.aspectRatioFrameLayout;
                        videoPlayerSharedScope.textureView = storyViewer.textureView;
                        StoryViewer storyViewer9 = StoryViewer.this;
                        storyViewer9.currentPlayerScope.surfaceView = storyViewer9.surfaceView;
                    }
                    StoryViewer storyViewer10 = StoryViewer.this;
                    if (storyViewer10.USE_SURFACE_VIEW) {
                        if (uri == null) {
                            storyViewer10.surfaceView.setVisibility(4);
                            return;
                        } else {
                            storyViewer10.surfaceView.setVisibility(0);
                            return;
                        }
                    }
                    return;
                }
            }
            videoPlayerSharedScope.firstFrameRendered = false;
            videoPlayerSharedScope.player = null;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public boolean isClosed() {
            return StoryViewer.this.isClosed;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public float getProgressToDismiss() {
            return StoryViewer.this.progressToDismiss;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsRecording(boolean z) {
            StoryViewer.this.isRecording = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsWaiting(boolean z) {
            StoryViewer.this.isWaiting = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsCaption(boolean z) {
            StoryViewer.this.isCaption = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsCaptionPartVisible(boolean z) {
            StoryViewer.this.isCaptionPartVisible = z;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setPopupIsVisible(boolean z) {
            StoryViewer.this.isPopupVisible = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setBulletinIsVisible(boolean z) {
            StoryViewer.this.isBulletinVisible = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsInPinchToZoom(boolean z) {
            StoryViewer.this.isInPinchToZoom = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsHintVisible(boolean z) {
            StoryViewer.this.isHintVisible = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void setIsSwiping(boolean z) {
            StoryViewer.this.isSwiping = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public int getKeyboardHeight() {
            return StoryViewer.this.realKeyboardHeight;
        }

        @Override // org.telegram.p043ui.Stories.PeerStoriesView.Delegate
        public void preparePlayer(ArrayList<TLRPC$Document> arrayList, ArrayList<Uri> arrayList2) {
            if (SharedConfig.deviceIsHigh() && SharedConfig.allowPreparingHevcPlayers() && !StoryViewer.this.isClosed) {
                for (int i = 0; i < StoryViewer.this.preparedPlayers.size(); i++) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        if (arrayList2.get(i2).equals(StoryViewer.this.preparedPlayers.get(i).uri)) {
                            arrayList2.remove(i2);
                        }
                    }
                }
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    Uri uri = arrayList2.get(i3);
                    VideoPlayerHolder videoPlayerHolder = new VideoPlayerHolder();
                    videoPlayerHolder.uri = uri;
                    TLRPC$Document tLRPC$Document = arrayList.get(i3);
                    videoPlayerHolder.document = tLRPC$Document;
                    FileStreamLoadOperation.setPriorityForDocument(tLRPC$Document, 0);
                    videoPlayerHolder.preparePlayer(uri, StoryViewer.isInSilentMode);
                    StoryViewer.this.preparedPlayers.add(videoPlayerHolder);
                    if (StoryViewer.this.preparedPlayers.size() > 2) {
                        StoryViewer.this.preparedPlayers.remove(0).release(null);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKeyboard() {
        this.storiesViewPager.getCurrentPeerView().showKeyboard();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                StoryViewer.this.lambda$showKeyboard$1();
            }
        }, 200L);
    }

    public void cancelSwipeToViews(final boolean z) {
        if (this.swipeToViewsAnimator != null) {
            return;
        }
        boolean z2 = this.allowSelfStoriesView;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2 || this.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED) {
            this.locker.lock();
            float[] fArr = new float[2];
            fArr[0] = this.selfStoriesViewsOffset;
            if (z) {
                f = this.selfStoryViewsView.maxSelfStoriesViewsOffset;
            }
            fArr[1] = f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.swipeToViewsAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StoryViewer.this.lambda$cancelSwipeToViews$2(valueAnimator);
                }
            });
            this.swipeToViewsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryViewer.this.locker.unlock();
                    StoryViewer storyViewer = StoryViewer.this;
                    storyViewer.selfStoriesViewsOffset = z ? storyViewer.selfStoryViewsView.maxSelfStoriesViewsOffset : BitmapDescriptorFactory.HUE_RED;
                    storyViewer.storiesViewPager.getCurrentPeerView().invalidate();
                    StoryViewer.this.containerView.invalidate();
                    StoryViewer.this.swipeToViewsAnimator = null;
                }
            });
            if (z) {
                this.swipeToViewsAnimator.setDuration(350L);
                this.swipeToViewsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                this.swipeToViewsAnimator.setDuration(350L);
                this.swipeToViewsAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            }
            this.swipeToViewsAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelSwipeToViews$2(ValueAnimator valueAnimator) {
        this.selfStoriesViewsOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.storiesViewPager.getCurrentPeerView().invalidate();
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkSelfStoriesView() {
        if (this.selfStoryViewsView == null) {
            SelfStoryViewsView selfStoryViewsView = new SelfStoryViewsView(this.containerView.getContext(), this);
            this.selfStoryViewsView = selfStoryViewsView;
            this.containerView.addView(selfStoryViewsView, 0);
        }
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        this.selfStoryViewsView.setItems(currentPeerView.getStoryItems(), currentPeerView.getSelectedPosition());
    }

    public void showDialog(Dialog dialog) {
        try {
            this.currentDialog = dialog;
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    StoryViewer.this.lambda$showDialog$3(dialogInterface);
                }
            });
            dialog.show();
            updatePlayingMode();
        } catch (Throwable th) {
            FileLog.m67e(th);
            this.currentDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$3(DialogInterface dialogInterface) {
        if (dialogInterface == this.currentDialog) {
            this.currentDialog = null;
            updatePlayingMode();
        }
    }

    /* renamed from: cancelSwipeToReply */
    public void lambda$showKeyboard$1() {
        if (this.swipeToReplyBackAnimator == null) {
            this.inSwipeToDissmissMode = false;
            this.allowSwipeToReply = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.swipeToReplyOffset, BitmapDescriptorFactory.HUE_RED);
            this.swipeToReplyBackAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StoryViewer.this.lambda$cancelSwipeToReply$4(valueAnimator);
                }
            });
            this.swipeToReplyBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    PeerStoriesView currentPeerView;
                    StoryViewer storyViewer = StoryViewer.this;
                    storyViewer.swipeToReplyBackAnimator = null;
                    storyViewer.swipeToReplyOffset = BitmapDescriptorFactory.HUE_RED;
                    storyViewer.swipeToReplyProgress = BitmapDescriptorFactory.HUE_RED;
                    StoriesViewPager storiesViewPager = storyViewer.storiesViewPager;
                    if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null) {
                        return;
                    }
                    currentPeerView.invalidate();
                }
            });
            this.swipeToReplyBackAnimator.setDuration(250L);
            this.swipeToReplyBackAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
            this.swipeToReplyBackAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelSwipeToReply$4(ValueAnimator valueAnimator) {
        PeerStoriesView currentPeerView;
        this.swipeToReplyOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.swipeToReplyProgress = Utilities.clamp(this.swipeToReplyOffset / AndroidUtilities.m72dp(200), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null) {
            return;
        }
        currentPeerView.invalidate();
    }

    public boolean getStoryRect(RectF rectF) {
        PeerStoriesView currentPeerView;
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null || currentPeerView.storyContainer == null) {
            return false;
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        float f = BitmapDescriptorFactory.HUE_RED;
        float x = sizeNotifierFrameLayout == null ? 0.0f : sizeNotifierFrameLayout.getX();
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.windowView;
        if (sizeNotifierFrameLayout2 != null) {
            f = sizeNotifierFrameLayout2.getY();
        }
        rectF.set(this.swipeToDismissHorizontalOffset + x + this.containerView.getLeft() + currentPeerView.getX() + currentPeerView.storyContainer.getX(), this.swipeToDismissOffset + f + this.containerView.getTop() + currentPeerView.getY() + currentPeerView.storyContainer.getY(), (((x + this.swipeToDismissHorizontalOffset) + this.containerView.getRight()) - (this.containerView.getWidth() - currentPeerView.getRight())) - (currentPeerView.getWidth() - currentPeerView.storyContainer.getRight()), (((f + this.swipeToDismissOffset) + this.containerView.getBottom()) - (this.containerView.getHeight() - currentPeerView.getBottom())) - (currentPeerView.getHeight() - currentPeerView.storyContainer.getBottom()));
        return true;
    }

    public PeerStoriesView getCurrentPeerView() {
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager == null) {
            return null;
        }
        return storiesViewPager.getCurrentPeerView();
    }

    private void lockOrientation(boolean z) {
        Activity findActivity = AndroidUtilities.findActivity(this.fragment.getContext());
        if (findActivity != null) {
            findActivity.setRequestedOrientation(z ? 1 : -1);
            if (z) {
                findActivity.getWindow().addFlags(128);
            } else {
                findActivity.getWindow().clearFlags(128);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchVolumeEvent(KeyEvent keyEvent) {
        if (isInSilentMode) {
            toggleSilentMode();
            return;
        }
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null && !currentPeerView.currentStory.hasSound() && currentPeerView.currentStory.isVideo()) {
            currentPeerView.showNoSoundHint();
        } else {
            this.volumeControl.onKeyDown(keyEvent.getKeyCode(), keyEvent);
        }
    }

    public void toggleSilentMode() {
        boolean z = !isInSilentMode;
        isInSilentMode = z;
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.setAudioEnabled(!z, false);
        }
        for (int i = 0; i < this.preparedPlayers.size(); i++) {
            this.preparedPlayers.get(i).setAudioEnabled(!isInSilentMode, true);
        }
        this.storiesViewPager.getCurrentPeerView().sharedResources.setIconMuted(!soundEnabled(), true);
    }

    private void checkInSilentMode() {
        if (checkSilentMode) {
            checkSilentMode = false;
            isInSilentMode = ((AudioManager) this.windowView.getContext().getSystemService("audio")).getRingerMode() != 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layoutAndFindView() {
        PeerStoriesView currentPeerView;
        int selectedPosition;
        this.foundViewToClose = true;
        ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
        if (imageReceiver != null) {
            imageReceiver.setVisible(true, true);
        }
        ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
        if (imageReceiver2 != null) {
            imageReceiver2.setAlpha(1.0f);
            this.transitionViewHolder.storyImage.setVisible(true, true);
        }
        if (this.storiesList != null && (currentPeerView = this.storiesViewPager.getCurrentPeerView()) != null && (selectedPosition = currentPeerView.getSelectedPosition()) >= 0 && selectedPosition < this.storiesList.messageObjects.size()) {
            this.messageId = this.storiesList.messageObjects.get(selectedPosition).getId();
        }
        PlaceProvider placeProvider = this.placeProvider;
        if (placeProvider != null) {
            placeProvider.preLayout(this.storiesViewPager.getCurrentDialogId(), this.messageId, new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.this.lambda$layoutAndFindView$5();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$layoutAndFindView$5() {
        updateTransitionParams();
        ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
        if (imageReceiver != null) {
            imageReceiver.setVisible(false, true);
        }
        ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
        if (imageReceiver2 != null) {
            imageReceiver2.setVisible(false, true);
        }
    }

    private void updateTransitionParams() {
        if (this.placeProvider != null) {
            ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
            }
            ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setAlpha(1.0f);
                this.transitionViewHolder.storyImage.setVisible(true, true);
            }
            PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
            int selectedPosition = currentPeerView == null ? 0 : currentPeerView.getSelectedPosition();
            int i = (currentPeerView == null || selectedPosition < 0 || selectedPosition >= currentPeerView.storyItems.size()) ? 0 : currentPeerView.storyItems.get(selectedPosition).f1553id;
            TLRPC$StoryItem tLRPC$StoryItem = (currentPeerView == null || selectedPosition < 0 || selectedPosition >= currentPeerView.storyItems.size()) ? null : currentPeerView.storyItems.get(selectedPosition);
            if (tLRPC$StoryItem == null && this.isSingleStory) {
                tLRPC$StoryItem = this.singleStory;
            }
            this.transitionViewHolder.clear();
            PlaceProvider placeProvider = this.placeProvider;
            long currentDialogId = this.storiesViewPager.getCurrentDialogId();
            int i2 = this.messageId;
            if (this.storiesList != null) {
                i = this.dayStoryId;
            }
            if (placeProvider.findView(currentDialogId, i2, i, tLRPC$StoryItem == null ? -1 : tLRPC$StoryItem.messageType, this.transitionViewHolder)) {
                View view = this.transitionViewHolder.view;
                if (view != null) {
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    this.fromXCell = iArr[0];
                    this.fromYCell = iArr[1];
                    TransitionViewHolder transitionViewHolder = this.transitionViewHolder;
                    View view2 = transitionViewHolder.view;
                    if (view2 instanceof StoriesListPlaceProvider.AvatarOverlaysView) {
                        this.animateFromCell = (StoriesListPlaceProvider.AvatarOverlaysView) view2;
                    } else {
                        this.animateFromCell = null;
                    }
                    this.animateAvatar = false;
                    ImageReceiver imageReceiver3 = transitionViewHolder.avatarImage;
                    if (imageReceiver3 != null) {
                        this.fromX = iArr[0] + imageReceiver3.getCenterX();
                        this.fromY = iArr[1] + this.transitionViewHolder.avatarImage.getCenterY();
                        this.fromWidth = this.transitionViewHolder.avatarImage.getImageWidth();
                        this.fromHeight = this.transitionViewHolder.avatarImage.getImageHeight();
                        StoriesUtilities.AvatarStoryParams avatarStoryParams = this.transitionViewHolder.params;
                        if (avatarStoryParams != null) {
                            this.fromWidth *= avatarStoryParams.getScale();
                            this.fromHeight *= this.transitionViewHolder.params.getScale();
                        }
                        if (this.transitionViewHolder.view.getParent() instanceof View) {
                            View view3 = (View) this.transitionViewHolder.view.getParent();
                            float f = this.fromX;
                            float f2 = this.fromWidth;
                            this.fromX = f - (f2 / 2.0f);
                            this.fromY -= this.fromHeight / 2.0f;
                            this.fromWidth = f2 * view3.getScaleX();
                            float scaleY = this.fromHeight * view3.getScaleY();
                            this.fromHeight = scaleY;
                            this.fromX += this.fromWidth / 2.0f;
                            this.fromY += scaleY / 2.0f;
                        }
                        this.animateAvatar = true;
                    } else {
                        ImageReceiver imageReceiver4 = transitionViewHolder.storyImage;
                        if (imageReceiver4 != null) {
                            this.fromX = iArr[0] + imageReceiver4.getCenterX();
                            this.fromY = iArr[1] + this.transitionViewHolder.storyImage.getCenterY();
                            this.fromWidth = this.transitionViewHolder.storyImage.getImageWidth();
                            this.fromHeight = this.transitionViewHolder.storyImage.getImageHeight();
                            this.fromRadius = this.transitionViewHolder.storyImage.getRoundRadius()[0];
                        }
                    }
                    this.transitionViewHolder.clipParent.getLocationOnScreen(iArr);
                    TransitionViewHolder transitionViewHolder2 = this.transitionViewHolder;
                    float f3 = transitionViewHolder2.clipTop;
                    if (f3 == BitmapDescriptorFactory.HUE_RED && transitionViewHolder2.clipBottom == BitmapDescriptorFactory.HUE_RED) {
                        this.clipTop = BitmapDescriptorFactory.HUE_RED;
                        this.clipBottom = BitmapDescriptorFactory.HUE_RED;
                        return;
                    }
                    this.clipTop = iArr[1] + f3;
                    this.clipBottom = iArr[1] + transitionViewHolder2.clipBottom;
                    return;
                }
                this.animateAvatar = false;
                this.fromY = BitmapDescriptorFactory.HUE_RED;
                this.fromX = BitmapDescriptorFactory.HUE_RED;
                return;
            }
            this.animateAvatar = false;
            this.fromY = BitmapDescriptorFactory.HUE_RED;
            this.fromX = BitmapDescriptorFactory.HUE_RED;
            return;
        }
        this.animateAvatar = false;
        this.fromY = BitmapDescriptorFactory.HUE_RED;
        this.fromX = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestAdjust(boolean z) {
        if (this.ATTACH_TO_FRAGMENT) {
            if (z) {
                AndroidUtilities.requestAdjustNothing(this.fragment.getParentActivity(), this.fragment.getClassGuid());
                return;
            } else {
                AndroidUtilities.requestAdjustResize(this.fragment.getParentActivity(), this.fragment.getClassGuid());
                return;
            }
        }
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.softInputMode = z ? 48 : 16;
        try {
            this.windowManager.updateViewLayout(this.windowView, layoutParams);
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInTouchMode(boolean z) {
        this.isInTouchMode = z;
        if (z) {
            this.volumeControl.hide();
        }
        updatePlayingMode();
    }

    public void setOverlayVisible(boolean z) {
        this.isOverlayVisible = z;
        updatePlayingMode();
    }

    public void setOnCloseListener(Runnable runnable) {
        this.onCloseListener = runnable;
    }

    public boolean isPaused() {
        return this.isPopupVisible || this.isBulletinVisible || this.isCaption || this.isWaiting || this.isInTouchMode || this.keyboardVisible || this.currentDialog != null || this.allowTouchesByViewpager || this.isClosed || this.isRecording || this.progressToOpen != 1.0f || this.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED || this.isHintVisible || (this.isSwiping && this.USE_SURFACE_VIEW) || this.isOverlayVisible;
    }

    public void updatePlayingMode() {
        if (this.storiesViewPager == null) {
            return;
        }
        boolean isPaused = isPaused();
        boolean z = true;
        if (this.ATTACH_TO_FRAGMENT && (this.fragment.isPaused() || !this.fragment.isLastFragment())) {
            isPaused = true;
        }
        this.storiesViewPager.setPaused(isPaused);
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            if (isPaused) {
                videoPlayerHolder.pause();
            } else {
                videoPlayerHolder.play();
            }
        }
        this.storiesViewPager.enableTouch((this.keyboardVisible || this.isClosed || this.isRecording || this.isLongpressed || this.isInPinchToZoom || this.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED) ? false : false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean findClickableView(FrameLayout frameLayout, float f, float f2, boolean z) {
        ChatActivityEnterView chatActivityEnterView;
        ChatActivityEnterView chatActivityEnterView2;
        if (frameLayout == null) {
            return false;
        }
        if (this.isPopupVisible) {
            return true;
        }
        if (this.selfStoryViewsView == null || this.selfStoriesViewsOffset == BitmapDescriptorFactory.HUE_RED) {
            PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
            if (currentPeerView != null) {
                if (currentPeerView.findClickableView(currentPeerView, ((f - this.containerView.getX()) - this.storiesViewPager.getX()) - currentPeerView.getX(), ((f2 - this.containerView.getY()) - this.storiesViewPager.getY()) - currentPeerView.getY(), z)) {
                    return true;
                }
                if (currentPeerView.keyboardVisible) {
                    return false;
                }
            }
            if (z) {
                return false;
            }
            if (currentPeerView == null || (chatActivityEnterView2 = currentPeerView.chatActivityEnterView) == null || chatActivityEnterView2.getVisibility() != 0 || f2 <= this.containerView.getY() + this.storiesViewPager.getY() + currentPeerView.getY() + currentPeerView.chatActivityEnterView.getY()) {
                if (currentPeerView == null || (chatActivityEnterView = currentPeerView.chatActivityEnterView) == null || !chatActivityEnterView.isRecordingAudioVideo()) {
                    return AndroidUtilities.findClickableView(frameLayout, f, f2);
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public boolean closeKeyboardOrEmoji() {
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            return currentPeerView.closeKeyboardOrEmoji();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgressToDismiss() {
        float clamp;
        float f = this.swipeToDismissHorizontalOffset;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            clamp = MathUtils.clamp(Math.abs(f / AndroidUtilities.m72dp(80)), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        } else {
            clamp = MathUtils.clamp(Math.abs(this.swipeToDismissOffset / AndroidUtilities.m72dp(80)), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        if (this.progressToDismiss != clamp) {
            this.progressToDismiss = clamp;
            checkNavBarColor();
            PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
            if (currentPeerView != null) {
                currentPeerView.progressToDismissUpdated();
            }
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOpenAnimation() {
        PeerStoriesView currentPeerView;
        RadialProgress radialProgress;
        updateTransitionParams();
        this.progressToOpen = BitmapDescriptorFactory.HUE_RED;
        setNavigationButtonsColor(true);
        this.foundViewToClose = false;
        animationInProgress = true;
        this.fromDismissOffset = this.swipeToDismissOffset;
        if (this.transitionViewHolder.radialProgressUpload != null && (currentPeerView = getCurrentPeerView()) != null && (radialProgress = currentPeerView.headerView.radialProgress) != null) {
            radialProgress.copyParams(this.transitionViewHolder.radialProgressUpload);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.openCloseAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                StoryViewer.this.lambda$startOpenAnimation$6(valueAnimator);
            }
        });
        this.locker.lock();
        this.containerView.enableHwAcceleration();
        this.openCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.progressToOpen = 1.0f;
                storyViewer.checkNavBarColor();
                StoryViewer.animationInProgress = false;
                StoryViewer.this.containerView.disableHwAcceleration();
                SizeNotifierFrameLayout sizeNotifierFrameLayout = StoryViewer.this.windowView;
                if (sizeNotifierFrameLayout != null) {
                    sizeNotifierFrameLayout.invalidate();
                }
                StoryViewer storyViewer2 = StoryViewer.this;
                ImageReceiver imageReceiver = storyViewer2.transitionViewHolder.avatarImage;
                if (imageReceiver != null && !storyViewer2.foundViewToClose) {
                    imageReceiver.setVisible(true, true);
                    StoryViewer.this.transitionViewHolder.avatarImage = null;
                }
                StoryViewer storyViewer3 = StoryViewer.this;
                ImageReceiver imageReceiver2 = storyViewer3.transitionViewHolder.storyImage;
                if (imageReceiver2 != null && !storyViewer3.foundViewToClose) {
                    imageReceiver2.setAlpha(1.0f);
                    StoryViewer.this.transitionViewHolder.storyImage.setVisible(true, true);
                }
                PeerStoriesView currentPeerView2 = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView2 != null) {
                    currentPeerView2.updatePosition();
                }
                StoryViewer.this.updatePlayingMode();
                StoryViewer.this.locker.unlock();
            }
        });
        this.openCloseAnimator.setStartDelay(40L);
        this.openCloseAnimator.setDuration(250L);
        this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.openCloseAnimator.start();
        Runnable runnable = this.doOnAnimationReady;
        if (runnable != null) {
            runnable.run();
            this.doOnAnimationReady = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOpenAnimation$6(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.progressToOpen = floatValue;
        this.containerView.checkHwAcceleration(floatValue);
        checkNavBarColor();
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.invalidate();
        }
    }

    public void instantClose() {
        if (this.isShowing) {
            AndroidUtilities.hideKeyboard(this.windowView);
            this.isClosed = true;
            updatePlayingMode();
            this.fromY = BitmapDescriptorFactory.HUE_RED;
            this.fromX = BitmapDescriptorFactory.HUE_RED;
            ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
            }
            ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setVisible(true, true);
            }
            TransitionViewHolder transitionViewHolder = this.transitionViewHolder;
            transitionViewHolder.storyImage = null;
            transitionViewHolder.avatarImage = null;
            this.containerView.disableHwAcceleration();
            checkNavBarColor();
            this.locker.unlock();
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = this.currentPlayerScope;
            if (videoPlayerSharedScope != null) {
                videoPlayerSharedScope.invalidate();
            }
            release();
            if (this.ATTACH_TO_FRAGMENT) {
                AndroidUtilities.removeFromParent(this.windowView);
            } else {
                this.windowManager.removeView(this.windowView);
            }
            this.windowView = null;
            this.isShowing = false;
            this.foundViewToClose = false;
            Runnable runnable = this.onCloseListener;
            if (runnable != null) {
                runnable.run();
                this.onCloseListener = null;
            }
        }
    }

    private void startCloseAnimation(boolean z) {
        setNavigationButtonsColor(false);
        updateTransitionParams();
        this.locker.lock();
        this.fromDismissOffset = this.swipeToDismissOffset;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progressToOpen, BitmapDescriptorFactory.HUE_RED);
        this.openCloseAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                StoryViewer.this.lambda$startCloseAnimation$7(valueAnimator);
            }
        });
        if (!z) {
            this.fromY = BitmapDescriptorFactory.HUE_RED;
            this.fromX = BitmapDescriptorFactory.HUE_RED;
            ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
            }
            ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setVisible(true, true);
            }
            TransitionViewHolder transitionViewHolder = this.transitionViewHolder;
            transitionViewHolder.storyImage = null;
            transitionViewHolder.avatarImage = null;
        } else {
            layoutAndFindView();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                StoryViewer.this.lambda$startCloseAnimation$8();
            }
        }, 16L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCloseAnimation$7(ValueAnimator valueAnimator) {
        this.progressToOpen = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkNavBarColor();
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoryViewer$11 */
    /* loaded from: classes6.dex */
    public class C681311 extends AnimatorListenerAdapter {
        C681311() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            PeerStoriesView currentPeerView;
            RadialProgress radialProgress;
            super.onAnimationEnd(animator);
            StoryViewer.this.containerView.disableHwAcceleration();
            StoryViewer.this.checkNavBarColor();
            StoryViewer.this.locker.unlock();
            ImageReceiver imageReceiver = StoryViewer.this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
                StoryViewer.this.transitionViewHolder.avatarImage = null;
            }
            ImageReceiver imageReceiver2 = StoryViewer.this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setAlpha(1.0f);
                StoryViewer.this.transitionViewHolder.storyImage.setVisible(true, true);
            }
            StoryViewer storyViewer = StoryViewer.this;
            if (storyViewer.transitionViewHolder.radialProgressUpload != null && (currentPeerView = storyViewer.getCurrentPeerView()) != null && (radialProgress = currentPeerView.headerView.radialProgress) != null) {
                StoryViewer.this.transitionViewHolder.radialProgressUpload.copyParams(radialProgress);
            }
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = StoryViewer.this.currentPlayerScope;
            if (videoPlayerSharedScope != null) {
                videoPlayerSharedScope.invalidate();
            }
            StoryViewer.this.release();
            try {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$11$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryViewer.C681311.this.lambda$onAnimationEnd$0();
                    }
                });
            } catch (Exception unused) {
            }
            StoryViewer storyViewer2 = StoryViewer.this;
            storyViewer2.isShowing = false;
            storyViewer2.foundViewToClose = false;
            if (storyViewer2.onCloseListener != null) {
                StoryViewer.this.onCloseListener.run();
                StoryViewer.this.onCloseListener = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            StoryViewer storyViewer = StoryViewer.this;
            SizeNotifierFrameLayout sizeNotifierFrameLayout = storyViewer.windowView;
            if (sizeNotifierFrameLayout == null) {
                return;
            }
            if (storyViewer.ATTACH_TO_FRAGMENT) {
                AndroidUtilities.removeFromParent(sizeNotifierFrameLayout);
            } else {
                storyViewer.windowManager.removeView(sizeNotifierFrameLayout);
            }
            StoryViewer.this.windowView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCloseAnimation$8() {
        this.containerView.enableHwAcceleration();
        this.openCloseAnimator.addListener(new C681311());
        this.openCloseAnimator.setDuration(400L);
        this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openCloseAnimator.start();
    }

    public void release() {
        this.lastUri = null;
        setInTouchMode(false);
        allowScreenshots(true);
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.release(null);
            this.playerHolder = null;
        }
        for (int i = 0; i < this.preparedPlayers.size(); i++) {
            this.preparedPlayers.get(i).release(null);
        }
        this.preparedPlayers.clear();
        MessagesController.getInstance(this.currentAccount).getStoriesController().pollViewsForSelfStories(false);
        if (this.ATTACH_TO_FRAGMENT) {
            lockOrientation(false);
        }
        globalInstances.remove(this);
        this.selfStoriesViewsOffset = BitmapDescriptorFactory.HUE_RED;
        lastStoryItem = null;
    }

    public void close(boolean z) {
        AndroidUtilities.hideKeyboard(this.windowView);
        this.isClosed = true;
        this.invalidateOutRect = true;
        updatePlayingMode();
        startCloseAnimation(z);
        if (this.unreadStateChanged) {
            this.unreadStateChanged = false;
        }
    }

    public int getNavigationBarColor(int i) {
        return ColorUtils.blendARGB(i, -16777216, getBlackoutAlpha());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getBlackoutAlpha() {
        return this.progressToOpen * (((1.0f - this.progressToDismiss) * 0.5f) + 0.5f);
    }

    public boolean onBackPressed() {
        if (this.selfStoriesViewsOffset != BitmapDescriptorFactory.HUE_RED) {
            cancelSwipeToViews(false);
            return true;
        } else if (closeKeyboardOrEmoji()) {
            return true;
        } else {
            close(true);
            return true;
        }
    }

    public boolean isShown() {
        return !this.isClosed;
    }

    public void checkNavBarColor() {
        LaunchActivity launchActivity;
        if (!this.ATTACH_TO_FRAGMENT || (launchActivity = LaunchActivity.instance) == null) {
            return;
        }
        launchActivity.checkSystemBarColors(true, false, true, false);
    }

    private void setNavigationButtonsColor(boolean z) {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (!this.ATTACH_TO_FRAGMENT || launchActivity == null) {
            return;
        }
        if (z) {
            this.openedFromLightNavigationBar = launchActivity.isLightNavigationBar();
        }
        if (this.openedFromLightNavigationBar) {
            launchActivity.setLightNavigationBar(!z);
        }
    }

    public boolean attachedToParent() {
        return this.ATTACH_TO_FRAGMENT && this.windowView != null;
    }

    public void setKeyboardHeightFromParent(int i) {
        if (this.realKeyboardHeight != i) {
            this.realKeyboardHeight = i;
            this.storiesViewPager.setKeyboardHeight(i);
            this.storiesViewPager.requestLayout();
        }
    }

    public boolean isFullyVisible() {
        return this.fullyVisible;
    }

    public void presentFragment(BaseFragment baseFragment) {
        if (this.ATTACH_TO_FRAGMENT) {
            LaunchActivity.getLastFragment().presentFragment(baseFragment);
            return;
        }
        LaunchActivity.getLastFragment().presentFragment(baseFragment);
        close(false);
    }

    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    public FrameLayout getContainerView() {
        return this.containerView;
    }

    public FrameLayout getContainerForBulletin() {
        return this.storiesViewPager.getCurrentPeerView().storyContainer;
    }

    public void startActivityForResult(Intent intent, int i) {
        if (this.fragment.getParentActivity() == null) {
            return;
        }
        this.fragment.getParentActivity().startActivityForResult(intent, i);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        this.storiesViewPager.getCurrentPeerView().onActivityResult(i, i2, intent);
    }

    public void dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 24 || keyEvent.getKeyCode() == 25) {
            dispatchVolumeEvent(keyEvent);
        }
    }

    public void dismissVisibleDialogs() {
        Dialog dialog = this.currentDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        PeerStoriesView currentPeerView = getCurrentPeerView();
        if (currentPeerView != null) {
            ReactionsContainerLayout reactionsContainerLayout = currentPeerView.reactionsContainerLayout;
            if (reactionsContainerLayout != null && reactionsContainerLayout.getReactionsWindow() != null) {
                currentPeerView.reactionsContainerLayout.getReactionsWindow().dismiss();
            }
            ShareAlert shareAlert = currentPeerView.shareAlert;
            if (shareAlert != null) {
                shareAlert.dismiss();
            }
            currentPeerView.needEnterText();
        }
    }

    public float getProgressToSelfViews() {
        SelfStoryViewsView selfStoryViewsView = this.selfStoryViewsView;
        return selfStoryViewsView == null ? BitmapDescriptorFactory.HUE_RED : selfStoryViewsView.progressToOpen;
    }

    public void setSelfStoriesViewsOffset(float f) {
        this.selfStoriesViewsOffset = f;
        this.storiesViewPager.getCurrentPeerView().invalidate();
        this.containerView.invalidate();
    }

    public void openViews() {
        checkSelfStoriesView();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                StoryViewer.this.lambda$openViews$9();
            }
        }, 30L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openViews$9() {
        this.allowSelfStoriesView = true;
        cancelSwipeToViews(true);
    }

    public boolean soundEnabled() {
        return !isInSilentMode;
    }

    public void allowScreenshots(boolean z) {
        if (BuildVars.DEBUG_PRIVATE_VERSION || this.allowScreenshots == z) {
            return;
        }
        this.allowScreenshots = z;
        SurfaceView surfaceView = this.surfaceView;
        if (surfaceView != null) {
            surfaceView.setSecure(!z);
        }
        if (this.ATTACH_TO_FRAGMENT) {
            if (this.fragment.getParentActivity() != null) {
                if (z) {
                    this.fragment.getParentActivity().getWindow().clearFlags(8192);
                    return;
                } else {
                    this.fragment.getParentActivity().getWindow().addFlags(8192);
                    return;
                }
            }
            return;
        }
        if (z) {
            this.windowLayoutParams.flags &= -8193;
        } else {
            this.windowLayoutParams.flags |= 8192;
        }
        try {
            this.windowManager.updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    public void openFor(BaseFragment baseFragment, RecyclerListView recyclerListView, ChatActionCell chatActionCell) {
        MessageObject messageObject = chatActionCell.getMessageObject();
        if (baseFragment == null || baseFragment.getContext() == null || messageObject.type != 24) {
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
        TLRPC$StoryItem tLRPC$StoryItem = tLRPC$MessageMedia.storyItem;
        tLRPC$StoryItem.dialogId = tLRPC$MessageMedia.user_id;
        tLRPC$StoryItem.messageId = messageObject.getId();
        open(baseFragment.getContext(), messageObject.messageOwner.media.storyItem, StoriesListPlaceProvider.m24of(recyclerListView));
    }

    public void doOnAnimationReady(Runnable runnable) {
        this.doOnAnimationReady = runnable;
    }

    /* renamed from: org.telegram.ui.Stories.StoryViewer$TransitionViewHolder */
    /* loaded from: classes6.dex */
    public static class TransitionViewHolder {
        public ImageReceiver avatarImage;
        public float clipBottom;
        public View clipParent;
        public float clipTop;
        public ImageReceiver crossfadeToAvatarImage;
        public HolderDrawAbove drawAbove;
        public HolderClip drawClip;
        StoriesUtilities.AvatarStoryParams params;
        public RadialProgress radialProgressUpload;
        public ImageReceiver storyImage;
        public View view;

        public void clear() {
            this.view = null;
            this.params = null;
            this.avatarImage = null;
            this.storyImage = null;
            this.drawAbove = null;
            this.drawClip = null;
            this.clipParent = null;
            this.radialProgressUpload = null;
            this.crossfadeToAvatarImage = null;
            this.clipTop = BitmapDescriptorFactory.HUE_RED;
            this.clipBottom = BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder */
    /* loaded from: classes6.dex */
    public class VideoPlayerHolder {
        boolean audioDisabled;
        public long currentPosition;
        public TLRPC$Document document;
        boolean firstFrameRendered;
        Runnable initRunnable;
        int lastState;
        boolean logBuffering;
        private Runnable onReadyListener;
        public boolean paused;
        long playerDuration;
        float progress;
        volatile boolean released;
        boolean stubAvailable;
        Uri uri;
        VideoPlayer videoPlayer;
        final DispatchQueue dispatchQueue = Utilities.getOrCreatePlayerQueue();
        Runnable progressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer.VideoPlayerHolder.1
            @Override // java.lang.Runnable
            public void run() {
                VideoPlayerHolder videoPlayerHolder = VideoPlayerHolder.this;
                VideoPlayer videoPlayer = videoPlayerHolder.videoPlayer;
                if (videoPlayer != null) {
                    if (videoPlayerHolder.lastState == 4) {
                        videoPlayerHolder.progress = 1.0f;
                    } else {
                        videoPlayerHolder.currentPosition = videoPlayer.getCurrentPosition();
                        VideoPlayerHolder videoPlayerHolder2 = VideoPlayerHolder.this;
                        videoPlayerHolder2.playerDuration = videoPlayerHolder2.videoPlayer.getDuration();
                    }
                    VideoPlayerHolder videoPlayerHolder3 = VideoPlayerHolder.this;
                    if (videoPlayerHolder3.lastState == 3) {
                        videoPlayerHolder3.dispatchQueue.cancelRunnable(videoPlayerHolder3.progressRunnable);
                        VideoPlayerHolder videoPlayerHolder4 = VideoPlayerHolder.this;
                        videoPlayerHolder4.dispatchQueue.postRunnable(videoPlayerHolder4.progressRunnable, 16L);
                    }
                }
            }
        };

        public VideoPlayerHolder() {
        }

        void preparePlayer(final Uri uri, final boolean z) {
            this.audioDisabled = z;
            this.paused = true;
            Runnable runnable = this.initRunnable;
            if (runnable != null) {
                this.dispatchQueue.cancelRunnable(runnable);
            }
            DispatchQueue dispatchQueue = this.dispatchQueue;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$preparePlayer$0(z, uri);
                }
            };
            this.initRunnable = runnable2;
            dispatchQueue.postRunnable(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preparePlayer$0(boolean z, Uri uri) {
            if (this.released) {
                return;
            }
            ensurePlayerCreated(z);
            this.videoPlayer.preparePlayer(uri, "other", 0);
            this.videoPlayer.setPlayWhenReady(false);
            this.videoPlayer.setWorkerQueue(this.dispatchQueue);
        }

        void start(final boolean z, final Uri uri, final long j, final boolean z2) {
            System.currentTimeMillis();
            this.audioDisabled = z2;
            this.paused = z;
            DispatchQueue dispatchQueue = this.dispatchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$start$2(z2, uri, z, j);
                }
            };
            this.initRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$2(boolean z, Uri uri, boolean z2, long j) {
            if (this.released) {
                return;
            }
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer == null) {
                ensurePlayerCreated(z);
                this.videoPlayer.preparePlayer(uri, "other");
                this.videoPlayer.setWorkerQueue(this.dispatchQueue);
                if (!z2) {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.USE_SURFACE_VIEW) {
                        this.videoPlayer.setSurfaceView(storyViewer.surfaceView);
                    } else {
                        this.videoPlayer.setTextureView(storyViewer.textureView);
                    }
                    this.videoPlayer.setPlayWhenReady(true);
                }
            } else if (!z2) {
                StoryViewer storyViewer2 = StoryViewer.this;
                if (storyViewer2.USE_SURFACE_VIEW) {
                    videoPlayer.setSurfaceView(storyViewer2.surfaceView);
                } else {
                    videoPlayer.setTextureView(storyViewer2.textureView);
                }
                this.videoPlayer.play();
            }
            if (j > 0) {
                this.videoPlayer.seekTo(j);
            }
            this.videoPlayer.setVolume(StoryViewer.isInSilentMode ? BitmapDescriptorFactory.HUE_RED : 1.0f);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$start$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$1() {
            this.initRunnable = null;
        }

        private void ensurePlayerCreated(boolean z) {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.releasePlayer(true);
            }
            VideoPlayer videoPlayer2 = new VideoPlayer(false, z);
            this.videoPlayer = videoPlayer2;
            videoPlayer2.setDelegate(new C68252());
            this.videoPlayer.setIsStory();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$2 */
        /* loaded from: classes6.dex */
        public class C68252 implements VideoPlayer.VideoPlayerDelegate {
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

            C68252() {
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onStateChanged(boolean z, int i) {
                VideoPlayerHolder videoPlayerHolder = VideoPlayerHolder.this;
                videoPlayerHolder.lastState = i;
                if (i != 3 && i != 2) {
                    if (i == 4) {
                        if (StoryViewer.this.isCaptionPartVisible) {
                            VideoPlayerHolder videoPlayerHolder2 = VideoPlayerHolder.this;
                            videoPlayerHolder2.progress = BitmapDescriptorFactory.HUE_RED;
                            videoPlayerHolder2.videoPlayer.seekTo(0L);
                            VideoPlayerHolder.this.videoPlayer.play();
                            return;
                        }
                        VideoPlayerHolder.this.progress = 1.0f;
                        return;
                    }
                    return;
                }
                videoPlayerHolder.dispatchQueue.cancelRunnable(videoPlayerHolder.progressRunnable);
                VideoPlayerHolder videoPlayerHolder3 = VideoPlayerHolder.this;
                videoPlayerHolder3.dispatchQueue.postRunnable(videoPlayerHolder3.progressRunnable);
                VideoPlayerHolder videoPlayerHolder4 = VideoPlayerHolder.this;
                if (videoPlayerHolder4.firstFrameRendered && i == 2) {
                    videoPlayerHolder4.logBuffering = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryViewer.VideoPlayerHolder.C68252.this.lambda$onStateChanged$0();
                        }
                    });
                }
                VideoPlayerHolder videoPlayerHolder5 = VideoPlayerHolder.this;
                if (videoPlayerHolder5.logBuffering && i == 3) {
                    videoPlayerHolder5.logBuffering = false;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryViewer.VideoPlayerHolder.C68252.this.lambda$onStateChanged$1();
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onStateChanged$0() {
                PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView == null || currentPeerView.currentStory.storyItem == null) {
                    return;
                }
                FileLog.m70d("StoryViewer displayed story buffering dialogId=" + currentPeerView.getCurrentPeer() + " storyId=" + currentPeerView.currentStory.storyItem.f1553id);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onStateChanged$1() {
                PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView == null || currentPeerView.currentStory.storyItem == null) {
                    return;
                }
                FileLog.m70d("StoryViewer displayed story playing dialogId=" + currentPeerView.getCurrentPeer() + " storyId=" + currentPeerView.currentStory.storyItem.f1553id);
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onError(VideoPlayer videoPlayer, Exception exc) {
                FileLog.m67e(exc);
            }

            @Override // org.telegram.p043ui.Components.VideoPlayer.VideoPlayerDelegate
            public void onRenderedFirstFrame() {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryViewer.VideoPlayerHolder.C68252.this.lambda$onRenderedFirstFrame$2();
                    }
                }, 16L);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onRenderedFirstFrame$2() {
                if (VideoPlayerHolder.this.released) {
                    return;
                }
                VideoPlayerHolder videoPlayerHolder = VideoPlayerHolder.this;
                PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = StoryViewer.this.currentPlayerScope;
                if (videoPlayerSharedScope == null) {
                    return;
                }
                videoPlayerSharedScope.firstFrameRendered = true;
                videoPlayerHolder.firstFrameRendered = true;
                videoPlayerSharedScope.invalidate();
                if (VideoPlayerHolder.this.onReadyListener != null) {
                    VideoPlayerHolder.this.onReadyListener.run();
                    VideoPlayerHolder.this.onReadyListener = null;
                }
            }
        }

        public void setOnReadyListener(Runnable runnable) {
            this.onReadyListener = runnable;
        }

        boolean release(final Runnable runnable) {
            final TLRPC$Document tLRPC$Document = this.document;
            if (tLRPC$Document != null && FileStreamLoadOperation.getStreamPrioriy(tLRPC$Document) != 0) {
                FileStreamLoadOperation.setPriorityForDocument(tLRPC$Document, 0);
                FileLoader.getInstance(StoryViewer.this.currentAccount).changePriority(0, tLRPC$Document, null, null, null, null, null);
            }
            this.released = true;
            this.dispatchQueue.cancelRunnable(this.initRunnable);
            this.initRunnable = null;
            this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$release$3(tLRPC$Document, runnable);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$release$3(TLRPC$Document tLRPC$Document, Runnable runnable) {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.setTextureView(null);
                this.videoPlayer.setSurfaceView(null);
                this.videoPlayer.releasePlayer(false);
            }
            if (tLRPC$Document != null) {
                FileLoader.getInstance(StoryViewer.this.currentAccount).cancelLoadFile(tLRPC$Document);
            }
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
            this.videoPlayer = null;
        }

        public void pause() {
            if (this.released || this.paused) {
                return;
            }
            this.paused = true;
            StoryViewer storyViewer = StoryViewer.this;
            if (storyViewer.USE_SURFACE_VIEW && storyViewer.surfaceView != null && this.firstFrameRendered && StoryViewer.this.surfaceView.getHolder().getSurface().isValid()) {
                this.stubAvailable = true;
                StoryViewer storyViewer2 = StoryViewer.this;
                if (storyViewer2.playerStubBitmap == null) {
                    storyViewer2.playerStubBitmap = Bitmap.createBitmap(720, 1280, Bitmap.Config.ARGB_8888);
                    StoryViewer.this.playerStubPaint = new Paint(1);
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    AndroidUtilities.getBitmapFromSurface(StoryViewer.this.surfaceView, StoryViewer.this.playerStubBitmap);
                }
            }
            this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$pause$4();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$pause$4() {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.pause();
            }
        }

        public void play() {
            if (!this.released && this.paused) {
                this.paused = false;
                this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryViewer.VideoPlayerHolder.this.lambda$play$5();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$play$5() {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                StoryViewer storyViewer = StoryViewer.this;
                if (storyViewer.USE_SURFACE_VIEW) {
                    videoPlayer.setSurfaceView(storyViewer.surfaceView);
                } else {
                    videoPlayer.setTextureView(storyViewer.textureView);
                }
                this.videoPlayer.setPlayWhenReady(true);
            }
        }

        public void setAudioEnabled(final boolean z, final boolean z2) {
            boolean z3 = !z;
            if (this.audioDisabled == z3) {
                return;
            }
            this.audioDisabled = z3;
            this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$setAudioEnabled$6(z, z2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setAudioEnabled$6(boolean z, boolean z2) {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer == null) {
                return;
            }
            boolean isPlaying = videoPlayer.isPlaying();
            if (z && !this.videoPlayer.createdWithAudioTrack()) {
                this.videoPlayer.pause();
                long currentPosition = this.videoPlayer.getCurrentPosition();
                this.videoPlayer.releasePlayer(false);
                this.videoPlayer = null;
                ensurePlayerCreated(this.audioDisabled);
                this.videoPlayer.preparePlayer(this.uri, "other");
                this.videoPlayer.setWorkerQueue(this.dispatchQueue);
                if (!z2) {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.USE_SURFACE_VIEW) {
                        this.videoPlayer.setSurfaceView(storyViewer.surfaceView);
                    } else {
                        this.videoPlayer.setTextureView(storyViewer.textureView);
                    }
                }
                this.videoPlayer.seekTo(currentPosition + 50);
                if (isPlaying && !z2) {
                    this.videoPlayer.setPlayWhenReady(true);
                    this.videoPlayer.play();
                    return;
                }
                this.videoPlayer.setPlayWhenReady(false);
                this.videoPlayer.pause();
                return;
            }
            this.videoPlayer.setVolume(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }

        public float getPlaybackProgress(long j) {
            float f;
            if (this.lastState == 4) {
                this.progress = 1.0f;
            } else {
                if (j != 0) {
                    f = ((float) this.currentPosition) / ((float) j);
                } else {
                    f = ((float) this.currentPosition) / ((float) this.playerDuration);
                }
                float f2 = this.progress;
                if (f < f2) {
                    return f2;
                }
                this.progress = f;
            }
            return this.progress;
        }

        public void loopBack() {
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.lastState = 1;
            this.dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoryViewer.VideoPlayerHolder.this.lambda$loopBack$7();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loopBack$7() {
            VideoPlayer videoPlayer = this.videoPlayer;
            if (videoPlayer != null) {
                videoPlayer.seekTo(0L);
            }
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.currentPosition = 0L;
        }

        public boolean isBuffering() {
            return !this.released && this.lastState == 2;
        }
    }
}
