package org.telegram.p043ui.Stories;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Stories.SelfStoriesPreviewView;
import org.telegram.p043ui.Stories.SelfStoryViewsPage;
import org.telegram.p043ui.Stories.SelfStoryViewsView;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoryViewer;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Stories.SelfStoryViewsView */
/* loaded from: classes6.dex */
public class SelfStoryViewsView extends FrameLayout {
    public float bottomPadding;
    private int currentState;
    private long dialogId;
    ArrayList<SelfStoryViewsPage> itemViews;
    int keyboardHeight;
    boolean listenPager;
    public float maxSelfStoriesViewsOffset;
    private final PagerAdapter pagerAdapter;
    float progressToKeyboard;
    float progressToOpen;
    Theme.ResourcesProvider resourcesProvider;
    SelfStoriesPreviewView selfStoriesPreviewView;
    float selfStoriesViewsOffset;
    private Drawable shadowDrawable;
    SelfStoryViewsPage.FiltersState sharedFilterState;
    ArrayList<StoryItemInternal> storyItems;
    StoryViewer storyViewer;
    float toHeight;
    public float toY;
    ViewPagerInner viewPager;
    ContainerView viewPagerContainer;

    public SelfStoryViewsView(Context context, final StoryViewer storyViewer) {
        super(context);
        this.storyItems = new ArrayList<>();
        this.itemViews = new ArrayList<>();
        this.sharedFilterState = new SelfStoryViewsPage.FiltersState();
        this.resourcesProvider = storyViewer.resourcesProvider;
        this.storyViewer = storyViewer;
        this.selfStoriesPreviewView = new SelfStoriesPreviewView(getContext()) { // from class: org.telegram.ui.Stories.SelfStoryViewsView.1
            @Override // org.telegram.p043ui.Stories.SelfStoriesPreviewView
            void onDragging() {
                SelfStoryViewsView.this.listenPager = false;
            }

            @Override // org.telegram.p043ui.Stories.SelfStoriesPreviewView
            public void onClosestPositionChanged(int i) {
                StoryViewer.PlaceProvider placeProvider;
                super.onClosestPositionChanged(i);
                SelfStoryViewsView selfStoryViewsView = SelfStoryViewsView.this;
                if (selfStoryViewsView.listenPager) {
                    return;
                }
                if (selfStoryViewsView.viewPager.getCurrentItem() != i) {
                    try {
                        SelfStoryViewsView.this.viewPager.setCurrentItem(i, false);
                    } catch (Throwable th) {
                        FileLog.m102e(th);
                        SelfStoryViewsView.this.viewPager.getAdapter().notifyDataSetChanged();
                        SelfStoryViewsView.this.viewPager.setCurrentItem(i, false);
                    }
                }
                StoryViewer storyViewer2 = storyViewer;
                if (storyViewer2.storiesList == null || (placeProvider = storyViewer2.placeProvider) == null) {
                    return;
                }
                if (i < 10) {
                    placeProvider.loadNext(false);
                } else if (i >= this.storyItems.size() - 10) {
                    storyViewer.placeProvider.loadNext(true);
                }
            }

            @Override // org.telegram.p043ui.Stories.SelfStoriesPreviewView
            public void onCenteredImageTap() {
                storyViewer.cancelSwipeToViews(false);
            }
        };
        Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
        this.viewPagerContainer = new ContainerView(context);
        ViewPagerInner viewPagerInner = new ViewPagerInner(context) { // from class: org.telegram.ui.Stories.SelfStoryViewsView.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (checkTopOffset(motionEvent) && motionEvent.getAction() == 0) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // org.telegram.p043ui.Stories.SelfStoryViewsView.ViewPagerInner, androidx.viewpager.widget.ViewPager, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (!checkTopOffset(motionEvent) && Math.abs(SelfStoryViewsView.this.getCurrentTopOffset() - SelfStoryViewsView.this.bottomPadding) <= AndroidUtilities.m107dp(1)) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.p043ui.Stories.SelfStoryViewsView.ViewPagerInner, androidx.viewpager.widget.ViewPager, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (!checkTopOffset(motionEvent) && Math.abs(SelfStoryViewsView.this.getCurrentTopOffset() - SelfStoryViewsView.this.bottomPadding) <= AndroidUtilities.m107dp(1)) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }

            private boolean checkTopOffset(MotionEvent motionEvent) {
                return motionEvent.getY() < SelfStoryViewsView.this.getCurrentTopOffset();
            }
        };
        this.viewPager = viewPagerInner;
        viewPagerInner.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsView.3
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
                SelfStoryViewsView selfStoryViewsView = SelfStoryViewsView.this;
                if (selfStoryViewsView.listenPager) {
                    selfStoryViewsView.selfStoriesPreviewView.scrollToPositionWithOffset(i, f);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
                SelfStoryViewsView.this.currentState = i;
                if (SelfStoryViewsView.this.currentState == 1) {
                    SelfStoryViewsView.this.listenPager = true;
                }
            }
        });
        ViewPagerInner viewPagerInner2 = this.viewPager;
        C72844 c72844 = new C72844(storyViewer, context);
        this.pagerAdapter = c72844;
        viewPagerInner2.setAdapter(c72844);
        this.viewPagerContainer.addView(this.viewPager, LayoutHelper.createFrame(-1, -1, 0, 0, 0, 0, 0));
        addView(this.selfStoriesPreviewView, LayoutHelper.createFrame(-1, -1));
        addView(this.viewPagerContainer);
        setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsView$4 */
    /* loaded from: classes6.dex */
    public class C72844 extends PagerAdapter {
        final /* synthetic */ Context val$context;
        final /* synthetic */ StoryViewer val$storyViewer;

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        C72844(StoryViewer storyViewer, Context context) {
            this.val$storyViewer = storyViewer;
            this.val$context = context;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return SelfStoryViewsView.this.storyItems.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            SelfStoryViewsPage selfStoryViewsPage = new SelfStoryViewsPage(this.val$storyViewer, this.val$context, SelfStoryViewsView.this.sharedFilterState, new Consumer() { // from class: org.telegram.ui.Stories.SelfStoryViewsView$4$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    SelfStoryViewsView.C72844.this.lambda$instantiateItem$0((SelfStoryViewsPage) obj);
                }
            }) { // from class: org.telegram.ui.Stories.SelfStoryViewsView.4.1
                @Override // org.telegram.p043ui.Stories.SelfStoryViewsPage
                public void onTopOffsetChanged(int i2) {
                    super.onTopOffsetChanged(i2);
                    if (((Integer) getTag()).intValue() == SelfStoryViewsView.this.viewPager.getCurrentItem()) {
                        float f = i2;
                        SelfStoryViewsView.this.selfStoriesPreviewView.setAlpha(Utilities.clamp(f / SelfStoryViewsView.this.bottomPadding, 1.0f, (float) BitmapDescriptorFactory.HUE_RED));
                        SelfStoryViewsView selfStoryViewsView = SelfStoryViewsView.this;
                        selfStoryViewsView.selfStoriesPreviewView.setTranslationY((-(selfStoryViewsView.bottomPadding - f)) / 2.0f);
                    }
                }
            };
            selfStoryViewsPage.setTag(Integer.valueOf(i));
            selfStoryViewsPage.setShadowDrawable(SelfStoryViewsView.this.shadowDrawable);
            selfStoryViewsPage.setPadding(0, AndroidUtilities.m107dp(16), 0, 0);
            selfStoryViewsPage.setStoryItem(SelfStoryViewsView.this.dialogId, SelfStoryViewsView.this.storyItems.get(i));
            selfStoryViewsPage.setListBottomPadding(SelfStoryViewsView.this.bottomPadding);
            viewGroup.addView(selfStoryViewsPage);
            SelfStoryViewsView.this.itemViews.add(selfStoryViewsPage);
            return selfStoryViewsPage;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$instantiateItem$0(SelfStoryViewsPage selfStoryViewsPage) {
            for (int i = 0; i < SelfStoryViewsView.this.itemViews.size(); i++) {
                if (selfStoryViewsPage != SelfStoryViewsView.this.itemViews.get(i)) {
                    SelfStoryViewsView.this.itemViews.get(i).updateSharedState();
                }
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
            SelfStoryViewsView.this.itemViews.remove(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCurrentTopOffset() {
        float f = this.bottomPadding;
        SelfStoryViewsPage currentPage = getCurrentPage();
        return currentPage != null ? currentPage.getTopOffset() : f;
    }

    public void setKeyboardHeight(int i) {
        SelfStoryViewsPage currentPage;
        boolean z = this.keyboardHeight >= AndroidUtilities.m107dp(20);
        boolean z2 = i >= AndroidUtilities.m107dp(20);
        if (z2 != z) {
            float[] fArr = new float[2];
            fArr[0] = this.progressToKeyboard;
            fArr[1] = z2 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SelfStoryViewsView.this.lambda$setKeyboardHeight$0(valueAnimator);
                }
            });
            ofFloat.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
            ofFloat.setDuration(250L);
            ofFloat.start();
        }
        this.keyboardHeight = i;
        if (i <= 0 || (currentPage = getCurrentPage()) == null) {
            return;
        }
        currentPage.onKeyboardShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setKeyboardHeight$0(ValueAnimator valueAnimator) {
        this.progressToKeyboard = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateTranslation();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = this.storyViewer.ATTACH_TO_FRAGMENT ? AndroidUtilities.statusBarHeight + 0 : 0;
        int size = View.MeasureSpec.getSize(i2);
        ((FrameLayout.LayoutParams) this.selfStoriesPreviewView.getLayoutParams()).topMargin = i3;
        this.toHeight = this.selfStoriesPreviewView.getFinalHeight();
        this.toY = AndroidUtilities.m107dp(20) + i3;
        ((FrameLayout.LayoutParams) this.viewPagerContainer.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight;
        float m107dp = (((i3 + AndroidUtilities.m107dp(20)) + this.toHeight) + AndroidUtilities.m107dp(24)) - AndroidUtilities.statusBarHeight;
        this.bottomPadding = m107dp;
        this.maxSelfStoriesViewsOffset = size - m107dp;
        for (int i4 = 0; i4 < this.itemViews.size(); i4++) {
            this.itemViews.get(i4).setListBottomPadding(this.bottomPadding);
        }
        super.onMeasure(i, i2);
    }

    public void setOffset(float f) {
        if (this.selfStoriesViewsOffset == f) {
            return;
        }
        this.selfStoriesViewsOffset = f;
        updateTranslation();
        float f2 = this.progressToOpen;
        float clamp = Utilities.clamp(f / this.maxSelfStoriesViewsOffset, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        this.progressToOpen = clamp;
        Utilities.clamp(clamp / 0.5f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        PeerStoriesView currentPeerView = this.storyViewer.getCurrentPeerView();
        if (f2 == 1.0f && this.progressToOpen != 1.0f) {
            if (this.storyViewer.storiesList != null) {
                MessageObject messageObject = this.storyViewer.storiesList.messageObjects.get(Utilities.clamp(this.selfStoriesPreviewView.getClosestPosition(), this.storyViewer.storiesList.messageObjects.size() - 1, 0));
                long day = StoriesController.StoriesList.day(messageObject);
                ImageReceiver imageReceiver = this.storyViewer.transitionViewHolder.storyImage;
                if (imageReceiver != null) {
                    imageReceiver.setVisible(true, true);
                    this.storyViewer.transitionViewHolder.storyImage = null;
                }
                this.storyViewer.storiesViewPager.setCurrentDate(day, messageObject.storyItem.f1763id);
            } else if (currentPeerView != null) {
                currentPeerView.selectPosition(this.selfStoriesPreviewView.getClosestPosition());
            }
            this.selfStoriesPreviewView.abortScroll();
        }
        if (currentPeerView != null) {
            this.selfStoriesPreviewView.imagesFromY = currentPeerView.storyContainer.getTop();
            this.selfStoriesPreviewView.imagesFromW = currentPeerView.storyContainer.getMeasuredWidth();
            this.selfStoriesPreviewView.imagesFromH = currentPeerView.storyContainer.getMeasuredHeight();
        }
        this.selfStoriesPreviewView.setProgressToOpen(this.progressToOpen);
        ViewPagerInner viewPagerInner = this.viewPager;
        if (viewPagerInner.gesturesEnabled && this.progressToOpen != 1.0f) {
            viewPagerInner.onTouchEvent(AndroidUtilities.emptyMotionEvent());
        }
        setVisibility(this.progressToOpen == BitmapDescriptorFactory.HUE_RED ? 4 : 0);
        if (this.progressToOpen != 1.0f) {
            this.viewPager.gesturesEnabled = false;
        }
    }

    private void updateTranslation() {
        this.viewPagerContainer.setTranslationY(((-this.bottomPadding) + getMeasuredHeight()) - this.selfStoriesViewsOffset);
    }

    public void setItems(long j, ArrayList<TL_stories$StoryItem> arrayList, int i) {
        this.storyItems.clear();
        this.dialogId = j;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.storyItems.add(new StoryItemInternal(this, arrayList.get(i2)));
        }
        ArrayList<StoriesController.UploadingStory> uploadingStories = MessagesController.getInstance(this.storyViewer.currentAccount).getStoriesController().getUploadingStories(UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId());
        if (uploadingStories != null) {
            for (int i3 = 0; i3 < uploadingStories.size(); i3++) {
                this.storyItems.add(new StoryItemInternal(this, uploadingStories.get(i3)));
            }
        }
        this.selfStoriesPreviewView.setItems(this.storyItems, i);
        this.viewPager.setAdapter(null);
        this.viewPager.setAdapter(this.pagerAdapter);
        this.pagerAdapter.notifyDataSetChanged();
        this.viewPager.setCurrentItem(i);
    }

    public SelfStoriesPreviewView.ImageHolder getCrossfadeToImage() {
        return this.selfStoriesPreviewView.getCenteredImageReciever();
    }

    public boolean onBackPressed() {
        if (this.keyboardHeight > 0) {
            AndroidUtilities.hideKeyboard(this);
            return true;
        }
        SelfStoryViewsPage currentPage = getCurrentPage();
        if (currentPage != null) {
            return currentPage.onBackPressed();
        }
        return false;
    }

    public TL_stories$StoryItem getSelectedStory() {
        int closestPosition = this.selfStoriesPreviewView.getClosestPosition();
        if (closestPosition < 0 || closestPosition >= this.storyItems.size()) {
            return null;
        }
        return this.storyItems.get(closestPosition).storyItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsView$ContainerView */
    /* loaded from: classes6.dex */
    public class ContainerView extends FrameLayout implements NestedScrollingParent3 {
        private final NestedScrollingParentHelper nestedScrollingParentHelper;

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        }

        public ContainerView(Context context) {
            super(context);
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
            return SelfStoryViewsView.this.keyboardHeight <= 0 && i == 2;
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onStopNestedScroll(View view, int i) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
        }

        @Override // androidx.core.view.NestedScrollingParent3
        public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            SelfStoryViewsView selfStoryViewsView = SelfStoryViewsView.this;
            if (selfStoryViewsView.keyboardHeight <= 0 && i4 != 0 && i2 == 0) {
                float f = selfStoryViewsView.storyViewer.selfStoriesViewsOffset;
                float f2 = i4 + f;
                if (f2 <= f) {
                    f = f2;
                }
                selfStoryViewsView.setOffset(f);
                SelfStoryViewsView.this.storyViewer.setSelfStoriesViewsOffset(f);
            }
        }

        @Override // androidx.core.view.NestedScrollingParent2
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
            SelfStoryViewsView selfStoryViewsView = SelfStoryViewsView.this;
            if (selfStoryViewsView.keyboardHeight > 0) {
                return;
            }
            float f = selfStoryViewsView.storyViewer.selfStoriesViewsOffset;
            float f2 = selfStoryViewsView.maxSelfStoriesViewsOffset;
            if (f >= f2 || i2 <= 0) {
                return;
            }
            float f3 = f + i2;
            iArr[1] = i2;
            if (f3 <= f2) {
                f2 = f3;
            }
            selfStoryViewsView.setOffset(f2);
            SelfStoryViewsView.this.storyViewer.setSelfStoriesViewsOffset(f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsView$ViewPagerInner */
    /* loaded from: classes6.dex */
    public class ViewPagerInner extends ViewPager {
        boolean gesturesEnabled;

        public ViewPagerInner(Context context) {
            super(context);
        }

        @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.gesturesEnabled = true;
            }
            if (this.gesturesEnabled && SelfStoryViewsView.this.keyboardHeight <= 0) {
                try {
                    return super.onInterceptTouchEvent(motionEvent);
                } catch (Exception unused) {
                }
            }
            return false;
        }

        @Override // androidx.viewpager.widget.ViewPager, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.gesturesEnabled = true;
            }
            if (!this.gesturesEnabled || SelfStoryViewsView.this.keyboardHeight > 0) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsView$StoryItemInternal */
    /* loaded from: classes6.dex */
    public class StoryItemInternal {
        public TL_stories$StoryItem storyItem;
        public StoriesController.UploadingStory uploadingStory;

        public StoryItemInternal(SelfStoryViewsView selfStoryViewsView, TL_stories$StoryItem tL_stories$StoryItem) {
            this.storyItem = tL_stories$StoryItem;
        }

        public StoryItemInternal(SelfStoryViewsView selfStoryViewsView, StoriesController.UploadingStory uploadingStory) {
            this.uploadingStory = uploadingStory;
        }
    }

    public SelfStoryViewsPage getCurrentPage() {
        for (int i = 0; i < this.itemViews.size(); i++) {
            if (((Integer) this.itemViews.get(i).getTag()).intValue() == this.viewPager.getCurrentItem()) {
                return this.itemViews.get(i);
            }
        }
        return null;
    }
}
