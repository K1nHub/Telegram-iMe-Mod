package org.telegram.p044ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Adapters.MentionsAdapter;
import org.telegram.p044ui.Adapters.PaddedListAdapter;
import org.telegram.p044ui.ChatActivity;
import org.telegram.p044ui.ContentPreviewViewer;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_inlineBotSwitchPM;
/* renamed from: org.telegram.ui.Components.MentionsContainerView */
/* loaded from: classes6.dex */
public class MentionsContainerView extends BlurredFrameLayout {
    private MentionsAdapter adapter;
    ChatActivity chatActivity;
    private Integer color;
    private float containerBottom;
    private float containerPadding;
    private float containerTop;
    private ExtendedGridLayoutManager gridLayoutManager;
    private float hideT;
    private boolean ignoreLayout;
    private LinearLayoutManager linearLayoutManager;
    private MentionsListView listView;
    private boolean listViewHiding;
    private float listViewPadding;
    private SpringAnimation listViewTranslationAnimator;
    private PaddedListAdapter paddedAdapter;
    private Paint paint;
    private Path path;
    private Rect rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private int scrollRangeUpdateTries;
    private boolean scrollToFirst;
    private boolean shouldLiftMentions;
    private boolean shown;
    private final SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private boolean switchLayoutManagerOnEnd;
    private Runnable updateVisibilityRunnable;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateListViewTranslation$3(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
    }

    protected boolean canOpen() {
        return true;
    }

    protected void onClose() {
    }

    protected void onContextClick(TLRPC$BotInlineResult tLRPC$BotInlineResult) {
    }

    protected void onContextSearch(boolean z) {
    }

    protected void onOpen() {
    }

    public void onPanTransitionEnd() {
    }

    protected void onScrolled(boolean z, boolean z2) {
    }

    public MentionsContainerView(Context context, long j, int i, final ChatActivity chatActivity, Theme.ResourcesProvider resourcesProvider) {
        super(context, chatActivity.contentView);
        this.shouldLiftMentions = false;
        this.rect = new Rect();
        this.ignoreLayout = false;
        this.scrollToFirst = false;
        this.shown = false;
        this.updateVisibilityRunnable = new Runnable() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MentionsContainerView.this.lambda$new$0();
            }
        };
        this.listViewHiding = false;
        this.hideT = BitmapDescriptorFactory.HUE_RED;
        this.switchLayoutManagerOnEnd = false;
        this.chatActivity = chatActivity;
        this.sizeNotifierFrameLayout = chatActivity.contentView;
        this.resourcesProvider = resourcesProvider;
        this.drawBlur = false;
        this.isTopView = false;
        setVisibility(8);
        setWillNotDraw(false);
        this.listViewPadding = (int) Math.min(AndroidUtilities.m55dp(126.0f), AndroidUtilities.displaySize.y * 0.22f);
        MentionsListView mentionsListView = new MentionsListView(context, resourcesProvider);
        this.listView = mentionsListView;
        mentionsListView.setTranslationY(AndroidUtilities.m54dp(6));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: org.telegram.ui.Components.MentionsContainerView.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void setReverseLayout(boolean z) {
                super.setReverseLayout(z);
                MentionsContainerView.this.listView.setTranslationY((z ? -1 : 1) * AndroidUtilities.m54dp(6));
            }
        };
        this.linearLayoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context, 100, false, false) { // from class: org.telegram.ui.Components.MentionsContainerView.2
            private Size size = new Size();

            @Override // org.telegram.p044ui.Components.ExtendedGridLayoutManager
            protected Size getSizeForItem(int i2) {
                TLRPC$PhotoSize closestPhotoSizeWithSize;
                if (i2 != 0) {
                    int i3 = i2 - 1;
                    if (MentionsContainerView.this.adapter.getBotContextSwitch() != null || MentionsContainerView.this.adapter.getBotWebViewSwitch() != null) {
                        i3++;
                    }
                    Size size = this.size;
                    size.width = BitmapDescriptorFactory.HUE_RED;
                    size.height = BitmapDescriptorFactory.HUE_RED;
                    Object item = MentionsContainerView.this.adapter.getItem(i3);
                    if (item instanceof TLRPC$BotInlineResult) {
                        TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) item;
                        TLRPC$Document tLRPC$Document = tLRPC$BotInlineResult.document;
                        int i4 = 0;
                        if (tLRPC$Document != null) {
                            TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
                            Size size2 = this.size;
                            size2.width = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.f1464w : 100.0f;
                            size2.height = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.f1463h : 100.0f;
                            while (i4 < tLRPC$BotInlineResult.document.attributes.size()) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$BotInlineResult.document.attributes.get(i4);
                                if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size3 = this.size;
                                    size3.width = tLRPC$DocumentAttribute.f1444w;
                                    size3.height = tLRPC$DocumentAttribute.f1443h;
                                    break;
                                }
                                i4++;
                            }
                        } else if (tLRPC$BotInlineResult.content != null) {
                            while (i4 < tLRPC$BotInlineResult.content.attributes.size()) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = tLRPC$BotInlineResult.content.attributes.get(i4);
                                if ((tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size4 = this.size;
                                    size4.width = tLRPC$DocumentAttribute2.f1444w;
                                    size4.height = tLRPC$DocumentAttribute2.f1443h;
                                    break;
                                }
                                i4++;
                            }
                        } else if (tLRPC$BotInlineResult.thumb != null) {
                            while (i4 < tLRPC$BotInlineResult.thumb.attributes.size()) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute3 = tLRPC$BotInlineResult.thumb.attributes.get(i4);
                                if ((tLRPC$DocumentAttribute3 instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute3 instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size5 = this.size;
                                    size5.width = tLRPC$DocumentAttribute3.f1444w;
                                    size5.height = tLRPC$DocumentAttribute3.f1443h;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            TLRPC$Photo tLRPC$Photo = tLRPC$BotInlineResult.photo;
                            if (tLRPC$Photo != null && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.photoSize.intValue())) != null) {
                                Size size6 = this.size;
                                size6.width = closestPhotoSizeWithSize.f1464w;
                                size6.height = closestPhotoSizeWithSize.f1463h;
                            }
                        }
                    }
                    return this.size;
                }
                this.size.width = getWidth();
                this.size.height = MentionsContainerView.this.paddedAdapter.getPadding();
                return this.size;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.Components.ExtendedGridLayoutManager
            public int getFlowItemCount() {
                if (MentionsContainerView.this.adapter.getBotContextSwitch() != null || MentionsContainerView.this.adapter.getBotWebViewSwitch() != null) {
                    return getItemCount() - 2;
                }
                return super.getFlowItemCount() - 1;
            }
        };
        this.gridLayoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.MentionsContainerView.3
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                if (i2 == 0) {
                    return 100;
                }
                int i3 = i2 - 1;
                Object item = MentionsContainerView.this.adapter.getItem(i3);
                if (item instanceof TLRPC$TL_inlineBotSwitchPM) {
                    return 100;
                }
                if (item instanceof TLRPC$Document) {
                    return 20;
                }
                if (MentionsContainerView.this.adapter.getBotContextSwitch() != null || MentionsContainerView.this.adapter.getBotWebViewSwitch() != null) {
                    i3--;
                }
                return MentionsContainerView.this.gridLayoutManager.getSpanSizeForItem(i3);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setAddDuration(150L);
        defaultItemAnimator.setMoveDuration(150L);
        defaultItemAnimator.setChangeDuration(150L);
        defaultItemAnimator.setRemoveDuration(150L);
        defaultItemAnimator.setTranslationInterpolator(CubicBezierInterpolator.DEFAULT);
        defaultItemAnimator.setDelayAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setClipToPadding(false);
        this.listView.setLayoutManager(this.linearLayoutManager);
        MentionsAdapter mentionsAdapter = new MentionsAdapter(context, false, j, i, new MentionsAdapter.MentionsAdapterDelegate() { // from class: org.telegram.ui.Components.MentionsContainerView.4
            @Override // org.telegram.p044ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onItemCountUpdate(int i2, int i3) {
                if (MentionsContainerView.this.listView.getLayoutManager() == MentionsContainerView.this.gridLayoutManager || !MentionsContainerView.this.shown) {
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(MentionsContainerView.this.updateVisibilityRunnable);
                AndroidUtilities.runOnUIThread(MentionsContainerView.this.updateVisibilityRunnable, chatActivity.fragmentOpened ? 0L : 100L);
            }

            @Override // org.telegram.p044ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void needChangePanelVisibility(boolean z) {
                boolean z2 = false;
                if (MentionsContainerView.this.getNeededLayoutManager() != MentionsContainerView.this.getCurrentLayoutManager() && MentionsContainerView.this.canOpen()) {
                    if (MentionsContainerView.this.adapter.getLastItemCount() > 0) {
                        MentionsContainerView.this.switchLayoutManagerOnEnd = true;
                        MentionsContainerView.this.updateVisibility(false);
                        return;
                    }
                    MentionsContainerView.this.listView.setLayoutManager(MentionsContainerView.this.getNeededLayoutManager());
                }
                if (z && !MentionsContainerView.this.canOpen()) {
                    z = false;
                }
                if (!z || MentionsContainerView.this.adapter.getItemCountInternal() > 0) {
                    z2 = z;
                }
                MentionsContainerView.this.updateVisibility(z2);
            }

            @Override // org.telegram.p044ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onContextSearch(boolean z) {
                MentionsContainerView.this.onContextSearch(z);
            }

            @Override // org.telegram.p044ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onContextClick(TLRPC$BotInlineResult tLRPC$BotInlineResult) {
                MentionsContainerView.this.onContextClick(tLRPC$BotInlineResult);
            }
        }, resourcesProvider);
        this.adapter = mentionsAdapter;
        PaddedListAdapter paddedListAdapter = new PaddedListAdapter(mentionsAdapter);
        this.paddedAdapter = paddedListAdapter;
        this.listView.setAdapter(paddedListAdapter);
        addView(this.listView, LayoutHelper.createFrame(-1, -1));
        setReversed(false);
    }

    public void onPanTransitionStart() {
        this.shouldLiftMentions = isReversed();
    }

    public void onPanTransitionUpdate(float f) {
        if (this.shouldLiftMentions) {
            setTranslationY(f);
        }
    }

    public MentionsListView getListView() {
        return this.listView;
    }

    public MentionsAdapter getAdapter() {
        return this.adapter;
    }

    public void setReversed(boolean z) {
        this.scrollToFirst = true;
        this.linearLayoutManager.setReverseLayout(z);
        this.adapter.setIsReversed(z);
    }

    public boolean isReversed() {
        RecyclerView.LayoutManager layoutManager = this.listView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        return layoutManager == linearLayoutManager && linearLayoutManager.getReverseLayout();
    }

    public LinearLayoutManager getCurrentLayoutManager() {
        RecyclerView.LayoutManager layoutManager = this.listView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        return layoutManager == linearLayoutManager ? linearLayoutManager : this.gridLayoutManager;
    }

    public LinearLayoutManager getNeededLayoutManager() {
        return ((this.adapter.isStickers() || this.adapter.isBotContext()) && this.adapter.isMediaLayout()) ? this.gridLayoutManager : this.linearLayoutManager;
    }

    public float clipBottom() {
        return (getVisibility() == 0 && !isReversed()) ? getMeasuredHeight() - this.containerTop : BitmapDescriptorFactory.HUE_RED;
    }

    public float clipTop() {
        return (getVisibility() == 0 && isReversed()) ? this.containerBottom : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // org.telegram.p044ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        PaddedListAdapter paddedListAdapter;
        float min;
        PaddedListAdapter paddedListAdapter2;
        boolean isReversed = isReversed();
        this.containerPadding = AndroidUtilities.m54dp(((this.adapter.isStickers() || this.adapter.isBotContext()) && this.adapter.isMediaLayout() && this.adapter.getBotContextSwitch() == null && this.adapter.getBotWebViewSwitch() == null ? 2 : 0) + 2);
        float m54dp = AndroidUtilities.m54dp(4);
        if (isReversed) {
            float min2 = Math.min(Math.max((float) BitmapDescriptorFactory.HUE_RED, (this.paddedAdapter.paddingViewAttached ? paddedListAdapter2.paddingView.getTop() : getHeight()) + this.listView.getTranslationY()) + this.containerPadding, (1.0f - this.hideT) * getHeight());
            Rect rect = this.rect;
            this.containerTop = BitmapDescriptorFactory.HUE_RED;
            int i = (int) BitmapDescriptorFactory.HUE_RED;
            int measuredWidth = getMeasuredWidth();
            this.containerBottom = min2;
            rect.set(0, i, measuredWidth, (int) min2);
            min = Math.min(m54dp, Math.abs(getMeasuredHeight() - this.containerBottom));
            if (min > BitmapDescriptorFactory.HUE_RED) {
                this.rect.top -= (int) min;
            }
        } else {
            if (this.listView.getLayoutManager() == this.gridLayoutManager) {
                this.containerPadding += AndroidUtilities.m54dp(2);
                m54dp += AndroidUtilities.m54dp(2);
            }
            float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, (this.paddedAdapter.paddingViewAttached ? paddedListAdapter.paddingView.getBottom() : 0) + this.listView.getTranslationY()) - this.containerPadding;
            this.containerTop = max;
            float max2 = Math.max(max, this.hideT * getHeight());
            Rect rect2 = this.rect;
            this.containerTop = max2;
            int measuredWidth2 = getMeasuredWidth();
            float measuredHeight = getMeasuredHeight();
            this.containerBottom = measuredHeight;
            rect2.set(0, (int) max2, measuredWidth2, (int) measuredHeight);
            min = Math.min(m54dp, Math.abs(this.containerTop));
            if (min > BitmapDescriptorFactory.HUE_RED) {
                this.rect.bottom += (int) min;
            }
        }
        if (this.paint == null) {
            Paint paint = new Paint(1);
            this.paint = paint;
            paint.setShadowLayer(AndroidUtilities.m54dp(4), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 503316480);
        }
        Paint paint2 = this.paint;
        Integer num = this.color;
        paint2.setColor(num != null ? num.intValue() : getThemedColor(Theme.key_chat_messagePanelBackground));
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null) {
            int i2 = (min > BitmapDescriptorFactory.HUE_RED ? 1 : (min == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if (i2 > 0) {
                canvas.save();
                Path path = this.path;
                if (path == null) {
                    this.path = new Path();
                } else {
                    path.reset();
                }
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(this.rect);
                this.path.addRoundRect(rectF, min, min, Path.Direction.CW);
                canvas.clipPath(this.path);
            }
            this.sizeNotifierFrameLayout.drawBlurRect(canvas, getY(), this.rect, this.paint, isReversed);
            if (i2 > 0) {
                canvas.restore();
            }
        } else {
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(this.rect);
            canvas.drawRoundRect(rectF2, min, min, this.paint);
        }
        canvas.save();
        canvas.clipRect(this.rect);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public void setOverrideColor(int i) {
        this.color = Integer.valueOf(i);
        invalidate();
    }

    public void setIgnoreLayout(boolean z) {
        this.ignoreLayout = z;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        updateListViewTranslation(!this.shown, true);
    }

    public void updateVisibility(boolean z) {
        if (z) {
            boolean isReversed = isReversed();
            if (!this.shown) {
                this.scrollToFirst = true;
                RecyclerView.LayoutManager layoutManager = this.listView.getLayoutManager();
                LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
                if (layoutManager == linearLayoutManager) {
                    linearLayoutManager.scrollToPositionWithOffset(0, isReversed ? -100000 : AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND);
                }
                if (getVisibility() == 8) {
                    this.hideT = 1.0f;
                    MentionsListView mentionsListView = this.listView;
                    mentionsListView.setTranslationY(isReversed ? -(this.listViewPadding + AndroidUtilities.m54dp(12)) : mentionsListView.computeVerticalScrollOffset() + this.listViewPadding);
                }
            }
            setVisibility(0);
        } else {
            this.scrollToFirst = false;
        }
        this.shown = z;
        AndroidUtilities.cancelRunOnUIThread(this.updateVisibilityRunnable);
        SpringAnimation springAnimation = this.listViewTranslationAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        AndroidUtilities.runOnUIThread(this.updateVisibilityRunnable, this.chatActivity.fragmentOpened ? 0L : 100L);
        if (z) {
            onOpen();
        } else {
            onClose();
        }
    }

    public boolean isOpen() {
        return this.shown;
    }

    private void updateListViewTranslation(final boolean z, boolean z2) {
        float f;
        int i;
        SpringAnimation springAnimation;
        if (this.listView == null || this.paddedAdapter == null) {
            this.scrollRangeUpdateTries = 0;
        } else if (this.listViewHiding && (springAnimation = this.listViewTranslationAnimator) != null && springAnimation.isRunning() && z) {
            this.scrollRangeUpdateTries = 0;
        } else {
            boolean isReversed = isReversed();
            if (z) {
                f = (-this.containerPadding) - AndroidUtilities.m54dp(6);
            } else {
                int computeVerticalScrollRange = this.listView.computeVerticalScrollRange();
                float padding = (computeVerticalScrollRange - this.paddedAdapter.getPadding()) + this.containerPadding;
                if (computeVerticalScrollRange <= 0 && this.adapter.getItemCountInternal() > 0 && (i = this.scrollRangeUpdateTries) < 3) {
                    this.scrollRangeUpdateTries = i + 1;
                    updateVisibility(true);
                    return;
                }
                f = padding;
            }
            this.scrollRangeUpdateTries = 0;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            float f3 = this.listViewPadding;
            float max = isReversed ? -Math.max((float) BitmapDescriptorFactory.HUE_RED, f3 - f) : Math.max((float) BitmapDescriptorFactory.HUE_RED, f3 - f) + (-f3);
            if (z && !isReversed) {
                max += this.listView.computeVerticalScrollOffset();
            }
            final float f4 = max;
            SpringAnimation springAnimation2 = this.listViewTranslationAnimator;
            if (springAnimation2 != null) {
                springAnimation2.cancel();
            }
            Integer num = null;
            if (z2) {
                this.listViewHiding = z;
                final float translationY = this.listView.getTranslationY();
                final float f5 = this.hideT;
                final float f6 = z ? 1.0f : 0.0f;
                if (translationY == f4) {
                    this.listViewTranslationAnimator = null;
                    Integer valueOf = Integer.valueOf(z ? 8 : 0);
                    if (this.switchLayoutManagerOnEnd && z) {
                        this.switchLayoutManagerOnEnd = false;
                        this.listView.setLayoutManager(getNeededLayoutManager());
                        this.shown = true;
                        updateVisibility(true);
                    }
                    num = valueOf;
                } else {
                    SpringAnimation spring = new SpringAnimation(new FloatValueHolder(translationY)).setSpring(new SpringForce(f4).setDampingRatio(1.0f).setStiffness(550.0f));
                    this.listViewTranslationAnimator = spring;
                    spring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda2
                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                        public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f7, float f8) {
                            MentionsContainerView.this.lambda$updateListViewTranslation$1(f5, f6, translationY, f4, dynamicAnimation, f7, f8);
                        }
                    });
                    if (z) {
                        this.listViewTranslationAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda0
                            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f7, float f8) {
                                MentionsContainerView.this.lambda$updateListViewTranslation$2(z, dynamicAnimation, z3, f7, f8);
                            }
                        });
                    }
                    this.listViewTranslationAnimator.addEndListener(MentionsContainerView$$ExternalSyntheticLambda1.INSTANCE);
                    this.listViewTranslationAnimator.start();
                }
            } else {
                if (z) {
                    f2 = 1.0f;
                }
                this.hideT = f2;
                this.listView.setTranslationY(f4);
                if (z) {
                    num = 8;
                }
            }
            if (num == null || getVisibility() == num.intValue()) {
                return;
            }
            setVisibility(num.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateListViewTranslation$1(float f, float f2, float f3, float f4, DynamicAnimation dynamicAnimation, float f5, float f6) {
        this.listView.setTranslationY(f5);
        this.hideT = AndroidUtilities.lerp(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateListViewTranslation$2(boolean z, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (z2) {
            return;
        }
        this.listViewTranslationAnimator = null;
        setVisibility(z ? 8 : 0);
        if (this.switchLayoutManagerOnEnd && z) {
            this.switchLayoutManagerOnEnd = false;
            this.listView.setLayoutManager(getNeededLayoutManager());
            this.shown = true;
            updateVisibility(true);
        }
    }

    /* renamed from: org.telegram.ui.Components.MentionsContainerView$MentionsListView */
    /* loaded from: classes6.dex */
    public class MentionsListView extends RecyclerListView {
        private boolean isDragging;
        private boolean isScrolling;
        private int lastHeight;
        private int lastWidth;

        public MentionsListView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            setOnScrollListener(new RecyclerView.OnScrollListener(MentionsContainerView.this) { // from class: org.telegram.ui.Components.MentionsContainerView.MentionsListView.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    MentionsListView.this.isScrolling = i != 0;
                    MentionsListView.this.isDragging = i == 1;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    int findLastVisibleItemPosition = MentionsListView.this.getLayoutManager() == MentionsContainerView.this.gridLayoutManager ? MentionsContainerView.this.gridLayoutManager.findLastVisibleItemPosition() : MentionsContainerView.this.linearLayoutManager.findLastVisibleItemPosition();
                    if ((findLastVisibleItemPosition == -1 ? 0 : findLastVisibleItemPosition) > 0 && findLastVisibleItemPosition > MentionsContainerView.this.adapter.getLastItemCount() - 5) {
                        MentionsContainerView.this.adapter.searchForContextBotForNextOffset();
                    }
                    MentionsListView mentionsListView = MentionsListView.this;
                    MentionsContainerView.this.onScrolled(!mentionsListView.canScrollVertically(-1), true ^ MentionsListView.this.canScrollVertically(1));
                }
            });
            addItemDecoration(new RecyclerView.ItemDecoration(MentionsContainerView.this) { // from class: org.telegram.ui.Components.MentionsContainerView.MentionsListView.2
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                    int childAdapterPosition;
                    rect.left = 0;
                    rect.right = 0;
                    rect.top = 0;
                    rect.bottom = 0;
                    if (recyclerView.getLayoutManager() != MentionsContainerView.this.gridLayoutManager || (childAdapterPosition = recyclerView.getChildAdapterPosition(view)) == 0) {
                        return;
                    }
                    int i = childAdapterPosition - 1;
                    if (MentionsContainerView.this.adapter.isStickers()) {
                        return;
                    }
                    if (MentionsContainerView.this.adapter.getBotContextSwitch() == null && MentionsContainerView.this.adapter.getBotWebViewSwitch() == null) {
                        rect.top = AndroidUtilities.m54dp(2);
                    } else if (i == 0) {
                        return;
                    } else {
                        i--;
                        if (!MentionsContainerView.this.gridLayoutManager.isFirstRow(i)) {
                            rect.top = AndroidUtilities.m54dp(2);
                        }
                    }
                    rect.right = MentionsContainerView.this.gridLayoutManager.isLastInRow(i) ? 0 : AndroidUtilities.m54dp(2);
                }
            });
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (MentionsContainerView.this.linearLayoutManager.getReverseLayout()) {
                if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() > MentionsContainerView.this.paddedAdapter.paddingView.getTop()) {
                    return false;
                }
            } else if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() < MentionsContainerView.this.paddedAdapter.paddingView.getBottom()) {
                return false;
            }
            boolean z = !this.isScrolling && ContentPreviewViewer.getInstance().onInterceptTouchEvent(motionEvent, MentionsContainerView.this.listView, 0, null, this.resourcesProvider);
            if ((MentionsContainerView.this.adapter.isStickers() && motionEvent.getAction() == 0) || motionEvent.getAction() == 2) {
                MentionsContainerView.this.adapter.doSomeStickersAction();
            }
            return super.onInterceptTouchEvent(motionEvent) || z;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (MentionsContainerView.this.linearLayoutManager.getReverseLayout()) {
                if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() > MentionsContainerView.this.paddedAdapter.paddingView.getTop()) {
                    return false;
                }
            } else if (!this.isDragging && MentionsContainerView.this.paddedAdapter != null && MentionsContainerView.this.paddedAdapter.paddingView != null && MentionsContainerView.this.paddedAdapter.paddingViewAttached && motionEvent.getY() < MentionsContainerView.this.paddedAdapter.paddingView.getBottom()) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (MentionsContainerView.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            int i6 = i3 - i;
            int i7 = i4 - i2;
            boolean isReversed = MentionsContainerView.this.isReversed();
            LinearLayoutManager currentLayoutManager = MentionsContainerView.this.getCurrentLayoutManager();
            int findFirstVisibleItemPosition = isReversed ? currentLayoutManager.findFirstVisibleItemPosition() : currentLayoutManager.findLastVisibleItemPosition();
            View findViewByPosition = currentLayoutManager.findViewByPosition(findFirstVisibleItemPosition);
            if (findViewByPosition != null) {
                i5 = findViewByPosition.getTop() - (isReversed ? 0 : this.lastHeight - i7);
            } else {
                i5 = 0;
            }
            super.onLayout(z, i, i2, i3, i4);
            if (MentionsContainerView.this.scrollToFirst) {
                MentionsContainerView.this.ignoreLayout = true;
                currentLayoutManager.scrollToPositionWithOffset(0, AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND);
                super.onLayout(false, i, i2, i3, i4);
                MentionsContainerView.this.ignoreLayout = false;
                MentionsContainerView.this.scrollToFirst = false;
            } else if (findFirstVisibleItemPosition != -1 && i6 == this.lastWidth && i7 - this.lastHeight != 0) {
                MentionsContainerView.this.ignoreLayout = true;
                currentLayoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition, i5, false);
                super.onLayout(false, i, i2, i3, i4);
                MentionsContainerView.this.ignoreLayout = false;
            }
            this.lastHeight = i7;
            this.lastWidth = i6;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView, android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            MentionsContainerView.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p044ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            if (MentionsContainerView.this.paddedAdapter != null) {
                MentionsContainerView.this.paddedAdapter.setPadding(size);
            }
            MentionsContainerView.this.listViewPadding = (int) Math.min(AndroidUtilities.m55dp(126.0f), AndroidUtilities.displaySize.y * 0.22f);
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size + ((int) MentionsContainerView.this.listViewPadding), 1073741824));
        }

        @Override // androidx.recyclerview.widget.RecyclerView
        public void onScrolled(int i, int i2) {
            super.onScrolled(i, i2);
            MentionsContainerView.this.invalidate();
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
