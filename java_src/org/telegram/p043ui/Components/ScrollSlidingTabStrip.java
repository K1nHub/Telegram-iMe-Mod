package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.transition.AutoTransition;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionValues;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.graphics.ColorUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SvgHelper;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.ScrollSlidingTabStrip;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
/* renamed from: org.telegram.ui.Components.ScrollSlidingTabStrip */
/* loaded from: classes6.dex */
public class ScrollSlidingTabStrip extends HorizontalScrollView {
    public static float EXPANDED_WIDTH = 64.0f;
    boolean animateToExpanded;
    int currentDragPosition;
    SparseArray<StickerTabView> currentPlayingImages;
    SparseArray<StickerTabView> currentPlayingImagesTmp;
    private int currentPosition;
    private AnimatedFloat currentPositionAnimated;
    private LinearLayout.LayoutParams defaultExpandLayoutParams;
    private LinearLayout.LayoutParams defaultTabLayoutParams;
    private ScrollSlidingTabStripDelegate delegate;
    float dragDx;
    private boolean dragEnabled;
    float draggindViewDxOnScreen;
    float draggindViewXOnScreen;
    View draggingView;
    float draggingViewOutProgress;
    private float expandOffset;
    float expandProgress;
    ValueAnimator expandStickerAnimator;
    boolean expanded;
    private SparseArray<View> futureTabsPositions;
    private int imageReceiversPlayingNum;
    private GradientDrawable indicatorDrawable;
    private int indicatorHeight;
    private int lastScrollX;
    Runnable longClickRunnable;
    boolean longClickRunning;
    float pressedX;
    float pressedY;
    private HashMap<String, View> prevTypes;
    private Paint rectPaint;
    private final Theme.ResourcesProvider resourcesProvider;
    private int scrollByOnNextMeasure;
    private int scrollOffset;
    boolean scrollRight;
    Runnable scrollRunnable;
    long scrollStartTime;
    private Paint selectorPaint;
    private boolean shouldExpand;
    private boolean showSelected;
    private AnimatedFloat showSelectedAlpha;
    int startDragFromPosition;
    float startDragFromX;
    private float stickerTabExpandedWidth;
    private float stickerTabWidth;
    private RectF tabBounds;
    private int tabCount;
    private HashMap<String, View> tabTypes;
    private LinearLayout tabsContainer;
    private float touchSlop;
    private Type type;
    private int underlineColor;
    private int underlineHeight;

    /* renamed from: org.telegram.ui.Components.ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate */
    /* loaded from: classes6.dex */
    public interface ScrollSlidingTabStripDelegate {
        void onPageSelected(int i);
    }

    /* renamed from: org.telegram.ui.Components.ScrollSlidingTabStrip$Type */
    /* loaded from: classes6.dex */
    public enum Type {
        LINE,
        TAB
    }

    protected void invalidateOverlays() {
    }

    protected void stickerSetPositionChanged(int i, int i2) {
    }

    protected void updatePosition() {
    }

    public void addKiklikoTrendsTab(Drawable drawable) {
        int i = this.tabCount;
        this.tabCount = i + 1;
        StickerTabView stickerTabView = (StickerTabView) this.prevTypes.get("kiklikoTrendsTab");
        if (stickerTabView != null) {
            checkViewIndex("kiklikoTrendsTab", stickerTabView, i);
        } else {
            stickerTabView = new StickerTabView(getContext(), 1);
            stickerTabView.iconView.setImageDrawable(drawable);
            stickerTabView.setFocusable(true);
            stickerTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addKiklikoTrendsTab$0(view);
                }
            });
            stickerTabView.setExpanded(this.expanded);
            stickerTabView.updateExpandProgress(this.expandProgress);
            stickerTabView.textView.setText(LocaleController.getString("FeaturedStickersShort", C3634R.string.FeaturedStickersShort));
            this.tabsContainer.addView(stickerTabView, i);
        }
        stickerTabView.isChatSticker = false;
        stickerTabView.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i));
        stickerTabView.setSelected(i == this.currentPosition);
        this.tabTypes.put("kiklikoTrendsTab", stickerTabView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addKiklikoTrendsTab$0(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public void addKiklikoTab(TagResponse tagResponse) {
        String str = "kiklikoTab" + tagResponse.getMeme().getSlug();
        int i = this.tabCount;
        this.tabCount = i + 1;
        StickerTabView stickerTabView = (StickerTabView) this.prevTypes.get(str);
        if (stickerTabView != null) {
            checkViewIndex(str, stickerTabView, i);
        } else {
            stickerTabView = new StickerTabView(getContext(), 100);
            stickerTabView.setFocusable(true);
            stickerTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addKiklikoTab$1(view);
                }
            });
            stickerTabView.setExpanded(this.expanded);
            stickerTabView.updateExpandProgress(this.expandProgress);
            stickerTabView.textView.setText("#" + tagResponse.getTag());
            this.tabsContainer.addView(stickerTabView, i);
        }
        stickerTabView.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i));
        stickerTabView.setTag(C3634R.C3637id.object_tag, tagResponse.getMeme().getFile().getWebp());
        stickerTabView.setSelected(i == this.currentPosition);
        this.tabTypes.put(str, stickerTabView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addKiklikoTab$1(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public ScrollSlidingTabStripDelegate getDelegate() {
        return this.delegate;
    }

    public ScrollSlidingTabStrip(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.imageReceiversPlayingNum = 1;
        this.type = Type.LINE;
        this.tabTypes = new HashMap<>();
        this.prevTypes = new HashMap<>();
        this.futureTabsPositions = new SparseArray<>();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.currentPositionAnimated = new AnimatedFloat(this, 350L, cubicBezierInterpolator);
        new RectF();
        new RectF();
        this.tabBounds = new RectF();
        this.underlineColor = 436207616;
        this.indicatorDrawable = new GradientDrawable();
        this.scrollOffset = AndroidUtilities.m104dp(33);
        this.underlineHeight = AndroidUtilities.m104dp(2);
        AndroidUtilities.m104dp(12);
        AndroidUtilities.m104dp(24);
        this.lastScrollX = 0;
        this.currentPlayingImages = new SparseArray<>();
        this.currentPlayingImagesTmp = new SparseArray<>();
        this.longClickRunnable = new Runnable() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip.1
            @Override // java.lang.Runnable
            public void run() {
                ScrollSlidingTabStrip scrollSlidingTabStrip = ScrollSlidingTabStrip.this;
                scrollSlidingTabStrip.longClickRunning = false;
                ScrollSlidingTabStrip scrollSlidingTabStrip2 = ScrollSlidingTabStrip.this;
                scrollSlidingTabStrip.startDragFromX = scrollSlidingTabStrip.getScrollX() + scrollSlidingTabStrip2.pressedX;
                scrollSlidingTabStrip2.dragDx = BitmapDescriptorFactory.HUE_RED;
                int ceil = ((int) Math.ceil(scrollSlidingTabStrip2.startDragFromX / scrollSlidingTabStrip2.getTabSize())) - 1;
                ScrollSlidingTabStrip scrollSlidingTabStrip3 = ScrollSlidingTabStrip.this;
                scrollSlidingTabStrip3.currentDragPosition = ceil;
                scrollSlidingTabStrip3.startDragFromPosition = ceil;
                if (scrollSlidingTabStrip3.canSwap(ceil) && ceil >= 0 && ceil < ScrollSlidingTabStrip.this.tabsContainer.getChildCount()) {
                    ScrollSlidingTabStrip.this.performHapticFeedback(0);
                    ScrollSlidingTabStrip scrollSlidingTabStrip4 = ScrollSlidingTabStrip.this;
                    scrollSlidingTabStrip4.draggindViewDxOnScreen = BitmapDescriptorFactory.HUE_RED;
                    scrollSlidingTabStrip4.draggingViewOutProgress = BitmapDescriptorFactory.HUE_RED;
                    scrollSlidingTabStrip4.draggingView = scrollSlidingTabStrip4.tabsContainer.getChildAt(ceil);
                    ScrollSlidingTabStrip scrollSlidingTabStrip5 = ScrollSlidingTabStrip.this;
                    scrollSlidingTabStrip5.draggindViewXOnScreen = scrollSlidingTabStrip5.draggingView.getX() - ScrollSlidingTabStrip.this.getScrollX();
                    ScrollSlidingTabStrip.this.draggingView.invalidate();
                    ScrollSlidingTabStrip.this.tabsContainer.invalidate();
                    ScrollSlidingTabStrip.this.invalidateOverlays();
                    ScrollSlidingTabStrip.this.invalidate();
                }
            }
        };
        this.expanded = false;
        this.stickerTabExpandedWidth = AndroidUtilities.m105dp(EXPANDED_WIDTH);
        this.stickerTabWidth = AndroidUtilities.m104dp(33);
        this.scrollByOnNextMeasure = -1;
        this.selectorPaint = new Paint();
        this.showSelected = true;
        this.showSelectedAlpha = new AnimatedFloat(this, 350L, cubicBezierInterpolator);
        this.scrollRunnable = new Runnable() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip.6
            /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
                if (r7.this$0.scrollRight != false) goto L5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
                if (r7.this$0.scrollRight != false) goto L5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
                if (r7.this$0.scrollRight != false) goto L5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
                r3 = 1;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r7 = this;
                    long r0 = java.lang.System.currentTimeMillis()
                    org.telegram.ui.Components.ScrollSlidingTabStrip r2 = org.telegram.p043ui.Components.ScrollSlidingTabStrip.this
                    long r2 = r2.scrollStartTime
                    long r0 = r0 - r2
                    r2 = 3000(0xbb8, double:1.482E-320)
                    int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                    r3 = -1
                    r4 = 1
                    if (r2 >= 0) goto L22
                    int r0 = org.telegram.messenger.AndroidUtilities.m104dp(r4)
                    int r0 = java.lang.Math.max(r4, r0)
                    org.telegram.ui.Components.ScrollSlidingTabStrip r1 = org.telegram.p043ui.Components.ScrollSlidingTabStrip.this
                    boolean r1 = r1.scrollRight
                    if (r1 == 0) goto L20
                L1f:
                    r3 = r4
                L20:
                    int r0 = r0 * r3
                    goto L48
                L22:
                    r5 = 5000(0x1388, double:2.4703E-320)
                    int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
                    if (r0 >= 0) goto L38
                    r0 = 2
                    int r0 = org.telegram.messenger.AndroidUtilities.m104dp(r0)
                    int r0 = java.lang.Math.max(r4, r0)
                    org.telegram.ui.Components.ScrollSlidingTabStrip r1 = org.telegram.p043ui.Components.ScrollSlidingTabStrip.this
                    boolean r1 = r1.scrollRight
                    if (r1 == 0) goto L20
                    goto L1f
                L38:
                    r0 = 4
                    int r0 = org.telegram.messenger.AndroidUtilities.m104dp(r0)
                    int r0 = java.lang.Math.max(r4, r0)
                    org.telegram.ui.Components.ScrollSlidingTabStrip r1 = org.telegram.p043ui.Components.ScrollSlidingTabStrip.this
                    boolean r1 = r1.scrollRight
                    if (r1 == 0) goto L20
                    goto L1f
                L48:
                    org.telegram.ui.Components.ScrollSlidingTabStrip r1 = org.telegram.p043ui.Components.ScrollSlidingTabStrip.this
                    r2 = 0
                    r1.scrollBy(r0, r2)
                    org.telegram.ui.Components.ScrollSlidingTabStrip r0 = org.telegram.p043ui.Components.ScrollSlidingTabStrip.this
                    java.lang.Runnable r0 = r0.scrollRunnable
                    org.telegram.messenger.AndroidUtilities.runOnUIThread(r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ScrollSlidingTabStrip.RunnableC55416.run():void");
            }
        };
        this.resourcesProvider = resourcesProvider;
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setFillViewport(true);
        setWillNotDraw(false);
        setHorizontalScrollBarEnabled(false);
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip.2
            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view instanceof StickerTabView) {
                    ((StickerTabView) view).updateExpandProgress(ScrollSlidingTabStrip.this.expandProgress);
                }
                if (view == ScrollSlidingTabStrip.this.draggingView) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.tabsContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.tabsContainer.setPadding(AndroidUtilities.m105dp(9.5f), 0, AndroidUtilities.m105dp(9.5f), 0);
        addView(this.tabsContainer, new FrameLayout.LayoutParams(-1, -1, 16));
        Paint paint = new Paint();
        this.rectPaint = paint;
        paint.setAntiAlias(true);
        this.rectPaint.setStyle(Paint.Style.FILL);
        this.defaultTabLayoutParams = new LinearLayout.LayoutParams(AndroidUtilities.m104dp(33), -1);
        this.defaultExpandLayoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
    }

    public void setDelegate(ScrollSlidingTabStripDelegate scrollSlidingTabStripDelegate) {
        this.delegate = scrollSlidingTabStripDelegate;
    }

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        if (type == null || this.type == type) {
            return;
        }
        this.type = type;
        int i = C55427.$SwitchMap$org$telegram$ui$Components$ScrollSlidingTabStrip$Type[type.ordinal()];
        if (i == 1) {
            this.indicatorDrawable.setCornerRadius(BitmapDescriptorFactory.HUE_RED);
        } else if (i != 2) {
        } else {
            float dpf2 = AndroidUtilities.dpf2(3.0f);
            this.indicatorDrawable.setCornerRadii(new float[]{dpf2, dpf2, dpf2, dpf2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ScrollSlidingTabStrip$7 */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C55427 {
        static final /* synthetic */ int[] $SwitchMap$org$telegram$ui$Components$ScrollSlidingTabStrip$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$org$telegram$ui$Components$ScrollSlidingTabStrip$Type = iArr;
            try {
                iArr[Type.LINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$telegram$ui$Components$ScrollSlidingTabStrip$Type[Type.TAB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void beginUpdate(boolean z) {
        this.prevTypes = this.tabTypes;
        this.tabTypes = new HashMap<>();
        this.futureTabsPositions.clear();
        this.tabCount = 0;
        if (!z || Build.VERSION.SDK_INT < 19) {
            return;
        }
        AutoTransition autoTransition = new AutoTransition();
        autoTransition.setDuration(250L);
        autoTransition.setOrdering(0);
        autoTransition.addTransition(new C55383());
        TransitionManager.beginDelayedTransition(this.tabsContainer, autoTransition);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ScrollSlidingTabStrip$3 */
    /* loaded from: classes6.dex */
    public class C55383 extends Transition {
        @Override // android.transition.Transition
        public void captureEndValues(TransitionValues transitionValues) {
        }

        @Override // android.transition.Transition
        public void captureStartValues(TransitionValues transitionValues) {
        }

        C55383() {
        }

        @Override // android.transition.Transition
        public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$3$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ScrollSlidingTabStrip.C55383.this.lambda$createAnimator$0(valueAnimator);
                }
            });
            return ofFloat;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createAnimator$0(ValueAnimator valueAnimator) {
            ScrollSlidingTabStrip.this.invalidate();
        }
    }

    public void commitUpdate() {
        HashMap<String, View> hashMap = this.prevTypes;
        if (hashMap != null) {
            for (Map.Entry<String, View> entry : hashMap.entrySet()) {
                this.tabsContainer.removeView(entry.getValue());
            }
            this.prevTypes.clear();
        }
        int size = this.futureTabsPositions.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.futureTabsPositions.keyAt(i);
            View valueAt = this.futureTabsPositions.valueAt(i);
            if (this.tabsContainer.indexOfChild(valueAt) != keyAt) {
                this.tabsContainer.removeView(valueAt);
                this.tabsContainer.addView(valueAt, keyAt);
            }
        }
        this.futureTabsPositions.clear();
    }

    public void selectTab(int i) {
        if (i < 0 || i >= this.tabCount) {
            return;
        }
        this.tabsContainer.getChildAt(i).performClick();
    }

    private void checkViewIndex(String str, View view, int i) {
        HashMap<String, View> hashMap = this.prevTypes;
        if (hashMap != null) {
            hashMap.remove(str);
        }
        this.futureTabsPositions.put(i, view);
    }

    public FrameLayout addIconTab(int i, Drawable drawable) {
        String str = "tab" + i;
        int i2 = this.tabCount;
        this.tabCount = i2 + 1;
        FrameLayout frameLayout = (FrameLayout) this.prevTypes.get(str);
        if (frameLayout != null) {
            checkViewIndex(str, frameLayout, i2);
        } else {
            frameLayout = new FrameLayout(getContext());
            ImageView imageView = new ImageView(getContext());
            imageView.setImageDrawable(drawable);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
            frameLayout.setFocusable(true);
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addIconTab$2(view);
                }
            });
            this.tabsContainer.addView(frameLayout, i2);
        }
        frameLayout.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i2));
        frameLayout.setSelected(i2 == this.currentPosition);
        this.tabTypes.put(str, frameLayout);
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addIconTab$2(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public StickerTabView addStickerIconTab(int i, Drawable drawable) {
        String str = "tab" + i;
        int i2 = this.tabCount;
        this.tabCount = i2 + 1;
        StickerTabView stickerTabView = (StickerTabView) this.prevTypes.get(str);
        if (stickerTabView != null) {
            checkViewIndex(str, stickerTabView, i2);
        } else {
            stickerTabView = new StickerTabView(getContext(), 1);
            stickerTabView.iconView.setImageDrawable(drawable);
            stickerTabView.setFocusable(true);
            stickerTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addStickerIconTab$3(view);
                }
            });
            stickerTabView.setExpanded(this.expanded);
            stickerTabView.updateExpandProgress(this.expandProgress);
            this.tabsContainer.addView(stickerTabView, i2);
        }
        stickerTabView.isChatSticker = false;
        stickerTabView.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i2));
        stickerTabView.setSelected(i2 == this.currentPosition);
        this.tabTypes.put(str, stickerTabView);
        return stickerTabView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addStickerIconTab$3(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public void addStickerTab(TLRPC$Chat tLRPC$Chat) {
        String str = "chat" + tLRPC$Chat.f1602id;
        int i = this.tabCount;
        this.tabCount = i + 1;
        StickerTabView stickerTabView = (StickerTabView) this.prevTypes.get(str);
        if (stickerTabView != null) {
            checkViewIndex(str, stickerTabView, i);
        } else {
            stickerTabView = new StickerTabView(getContext(), 0);
            stickerTabView.setFocusable(true);
            stickerTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addStickerTab$4(view);
                }
            });
            this.tabsContainer.addView(stickerTabView, i);
            stickerTabView.setRoundImage();
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setTextSize(AndroidUtilities.m104dp(14));
            avatarDrawable.setInfo(tLRPC$Chat);
            BackupImageView backupImageView = stickerTabView.imageView;
            backupImageView.setLayerNum(this.imageReceiversPlayingNum);
            backupImageView.setForUserOrChat(tLRPC$Chat, avatarDrawable);
            backupImageView.setAspectFit(true);
            stickerTabView.setExpanded(this.expanded);
            stickerTabView.updateExpandProgress(this.expandProgress);
            stickerTabView.textView.setText(tLRPC$Chat.title);
        }
        stickerTabView.isChatSticker = true;
        stickerTabView.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i));
        stickerTabView.setSelected(i == this.currentPosition);
        this.tabTypes.put(str, stickerTabView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addStickerTab$4(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public View addEmojiTab(int i, Emoji.EmojiDrawable emojiDrawable, TLRPC$Document tLRPC$Document) {
        String str = "tab" + i;
        int i2 = this.tabCount;
        this.tabCount = i2 + 1;
        StickerTabView stickerTabView = (StickerTabView) this.prevTypes.get(str);
        if (stickerTabView != null) {
            checkViewIndex(str, stickerTabView, i2);
        } else {
            stickerTabView = new StickerTabView(getContext(), 2);
            stickerTabView.setFocusable(true);
            stickerTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addEmojiTab$5(view);
                }
            });
            stickerTabView.setExpanded(this.expanded);
            stickerTabView.updateExpandProgress(this.expandProgress);
            this.tabsContainer.addView(stickerTabView, i2);
        }
        stickerTabView.isChatSticker = false;
        stickerTabView.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i2));
        stickerTabView.setTag(C3634R.C3637id.parent_tag, emojiDrawable);
        stickerTabView.setTag(C3634R.C3637id.object_tag, tLRPC$Document);
        stickerTabView.setSelected(i2 == this.currentPosition);
        this.tabTypes.put(str, stickerTabView);
        return stickerTabView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addEmojiTab$5(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public View addStickerTab(TLObject tLObject, TLRPC$Document tLRPC$Document, TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet) {
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        sb.append(tLRPC$TL_messages_stickerSet == null ? tLRPC$Document.f1610id : tLRPC$TL_messages_stickerSet.set.f1636id);
        String sb2 = sb.toString();
        int i = this.tabCount;
        this.tabCount = i + 1;
        StickerTabView stickerTabView = (StickerTabView) this.prevTypes.get(sb2);
        if (stickerTabView != null) {
            checkViewIndex(sb2, stickerTabView, i);
        } else {
            stickerTabView = new StickerTabView(getContext(), 0);
            stickerTabView.setFocusable(true);
            stickerTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScrollSlidingTabStrip.this.lambda$addStickerTab$6(view);
                }
            });
            stickerTabView.setExpanded(this.expanded);
            stickerTabView.updateExpandProgress(this.expandProgress);
            this.tabsContainer.addView(stickerTabView, i);
        }
        stickerTabView.imageView.setLayerNum(this.imageReceiversPlayingNum);
        stickerTabView.isChatSticker = false;
        stickerTabView.setTag(tLObject);
        stickerTabView.setTag(C3634R.C3637id.index_tag, Integer.valueOf(i));
        stickerTabView.setTag(C3634R.C3637id.parent_tag, tLRPC$TL_messages_stickerSet);
        stickerTabView.setTag(C3634R.C3637id.object_tag, tLRPC$Document);
        stickerTabView.setSelected(i == this.currentPosition);
        this.tabTypes.put(sb2, stickerTabView);
        return stickerTabView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addStickerTab$6(View view) {
        this.delegate.onPageSelected(((Integer) view.getTag(C3634R.C3637id.index_tag)).intValue());
    }

    public void expandStickers(final float f, final boolean z) {
        if (this.expanded != z) {
            this.expanded = z;
            if (!z) {
                fling(0);
            }
            ValueAnimator valueAnimator = this.expandStickerAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.expandStickerAnimator.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = this.expandProgress;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.expandStickerAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ScrollSlidingTabStrip.this.lambda$expandStickers$7(z, f, valueAnimator2);
                }
            });
            this.expandStickerAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ScrollSlidingTabStrip scrollSlidingTabStrip;
                    ScrollSlidingTabStrip scrollSlidingTabStrip2 = ScrollSlidingTabStrip.this;
                    scrollSlidingTabStrip2.expandStickerAnimator = null;
                    scrollSlidingTabStrip2.expandProgress = z ? 1.0f : 0.0f;
                    for (int i = 0; i < ScrollSlidingTabStrip.this.tabsContainer.getChildCount(); i++) {
                        ScrollSlidingTabStrip.this.tabsContainer.getChildAt(i).invalidate();
                    }
                    ScrollSlidingTabStrip.this.tabsContainer.invalidate();
                    ScrollSlidingTabStrip.this.updatePosition();
                    if (z) {
                        return;
                    }
                    float childCount = ScrollSlidingTabStrip.this.stickerTabWidth * ScrollSlidingTabStrip.this.tabsContainer.getChildCount();
                    float scrollX = (ScrollSlidingTabStrip.this.getScrollX() + f) / (ScrollSlidingTabStrip.this.stickerTabExpandedWidth * ScrollSlidingTabStrip.this.tabsContainer.getChildCount());
                    float measuredWidth = (childCount - ScrollSlidingTabStrip.this.getMeasuredWidth()) / childCount;
                    float f2 = f;
                    if (scrollX > measuredWidth) {
                        f2 = 0.0f;
                        scrollX = measuredWidth;
                    }
                    float f3 = childCount * scrollX;
                    if (f3 - f2 < BitmapDescriptorFactory.HUE_RED) {
                        f3 = f2;
                    }
                    ScrollSlidingTabStrip.this.expandOffset = (scrollSlidingTabStrip.getScrollX() + f2) - f3;
                    ScrollSlidingTabStrip.this.scrollByOnNextMeasure = (int) (f3 - f2);
                    if (ScrollSlidingTabStrip.this.scrollByOnNextMeasure < 0) {
                        ScrollSlidingTabStrip.this.scrollByOnNextMeasure = 0;
                    }
                    for (int i2 = 0; i2 < ScrollSlidingTabStrip.this.tabsContainer.getChildCount(); i2++) {
                        View childAt = ScrollSlidingTabStrip.this.tabsContainer.getChildAt(i2);
                        if (childAt instanceof StickerTabView) {
                            ((StickerTabView) childAt).setExpanded(false);
                        }
                        childAt.getLayoutParams().width = AndroidUtilities.m104dp(33);
                    }
                    ScrollSlidingTabStrip scrollSlidingTabStrip3 = ScrollSlidingTabStrip.this;
                    scrollSlidingTabStrip3.animateToExpanded = false;
                    scrollSlidingTabStrip3.getLayoutParams().height = AndroidUtilities.m104dp(36);
                    ScrollSlidingTabStrip.this.tabsContainer.requestLayout();
                }
            });
            this.expandStickerAnimator.start();
            if (z) {
                this.animateToExpanded = true;
                for (int i = 0; i < this.tabsContainer.getChildCount(); i++) {
                    View childAt = this.tabsContainer.getChildAt(i);
                    if (childAt instanceof StickerTabView) {
                        ((StickerTabView) childAt).setExpanded(true);
                    }
                    childAt.getLayoutParams().width = AndroidUtilities.m105dp(EXPANDED_WIDTH);
                }
                this.tabsContainer.requestLayout();
                getLayoutParams().height = AndroidUtilities.m104dp(86);
            }
            if (z) {
                float childCount = this.stickerTabExpandedWidth * this.tabsContainer.getChildCount() * ((getScrollX() + f) / (this.stickerTabWidth * this.tabsContainer.getChildCount()));
                this.expandOffset = childCount - (getScrollX() + f);
                this.scrollByOnNextMeasure = (int) (childCount - f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expandStickers$7(boolean z, float f, ValueAnimator valueAnimator) {
        if (!z) {
            float childCount = this.stickerTabWidth * this.tabsContainer.getChildCount();
            float scrollX = (getScrollX() + f) / (this.stickerTabExpandedWidth * this.tabsContainer.getChildCount());
            float measuredWidth = (childCount - getMeasuredWidth()) / childCount;
            if (scrollX > measuredWidth) {
                scrollX = measuredWidth;
                f = 0.0f;
            }
            float f2 = childCount * scrollX;
            if (f2 - f < BitmapDescriptorFactory.HUE_RED) {
                f2 = f;
            }
            this.expandOffset = (getScrollX() + f) - f2;
        }
        this.expandProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < this.tabsContainer.getChildCount(); i++) {
            this.tabsContainer.getChildAt(i).invalidate();
        }
        this.tabsContainer.invalidate();
        updatePosition();
    }

    public float getExpandedOffset() {
        return this.animateToExpanded ? AndroidUtilities.m104dp(50) * this.expandProgress : BitmapDescriptorFactory.HUE_RED;
    }

    public void updateTabStyles() {
        for (int i = 0; i < this.tabCount; i++) {
            View childAt = this.tabsContainer.getChildAt(i);
            if (this.shouldExpand) {
                childAt.setLayoutParams(this.defaultExpandLayoutParams);
            } else {
                childAt.setLayoutParams(this.defaultTabLayoutParams);
            }
        }
    }

    private void scrollToChild(int i) {
        if (this.tabCount == 0 || this.tabsContainer.getChildAt(i) == null) {
            return;
        }
        int left = this.tabsContainer.getChildAt(i).getLeft();
        if (i > 0) {
            left -= this.scrollOffset;
        }
        int scrollX = getScrollX();
        if (left != this.lastScrollX) {
            if (left < scrollX) {
                this.lastScrollX = left;
                smoothScrollTo(left, 0);
            } else if (this.scrollOffset + left > (scrollX + getWidth()) - (this.scrollOffset * 2)) {
                int width = (left - getWidth()) + (this.scrollOffset * 3);
                this.lastScrollX = width;
                smoothScrollTo(width, 0);
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setImages();
        int i5 = this.scrollByOnNextMeasure;
        if (i5 >= 0) {
            scrollTo(i5, 0);
            this.scrollByOnNextMeasure = -1;
        }
    }

    public void setImages() {
        float m104dp;
        ImageLocation forSticker;
        ArrayList<TLRPC$PhotoSize> arrayList;
        float f = this.expandProgress;
        int scrollX = (int) (((getScrollX() - (this.animateToExpanded ? this.expandOffset * (1.0f - f) : BitmapDescriptorFactory.HUE_RED)) - this.tabsContainer.getPaddingLeft()) / (AndroidUtilities.m104dp(33) + (AndroidUtilities.m105dp(EXPANDED_WIDTH - 33.0f) * f)));
        int min = Math.min(this.tabsContainer.getChildCount(), ((int) Math.ceil(getMeasuredWidth() / m104dp)) + scrollX + 1);
        if (this.animateToExpanded) {
            scrollX -= 2;
            min += 2;
            if (scrollX < 0) {
                scrollX = 0;
            }
            if (min > this.tabsContainer.getChildCount()) {
                min = this.tabsContainer.getChildCount();
            }
        }
        this.currentPlayingImagesTmp.clear();
        for (int i = 0; i < this.currentPlayingImages.size(); i++) {
            this.currentPlayingImagesTmp.put(this.currentPlayingImages.valueAt(i).index, this.currentPlayingImages.valueAt(i));
        }
        this.currentPlayingImages.clear();
        while (true) {
            if (scrollX >= min) {
                break;
            }
            View childAt = this.tabsContainer.getChildAt(scrollX);
            if (childAt instanceof StickerTabView) {
                StickerTabView stickerTabView = (StickerTabView) childAt;
                int i2 = stickerTabView.type;
                if (i2 == 100) {
                    Glide.with(getContext()).load((String) stickerTabView.getTag(C3634R.C3637id.object_tag)).diskCacheStrategy(DiskCacheStrategy.ALL).optionalTransform(WebpDrawable.class, new WebpDrawableTransformation(new CenterCrop())).into(stickerTabView.iconView);
                } else {
                    if (i2 == 2) {
                        Object tag = stickerTabView.getTag(C3634R.C3637id.parent_tag);
                        Object tag2 = stickerTabView.getTag(C3634R.C3637id.object_tag);
                        Drawable drawable = tag instanceof Drawable ? (Drawable) tag : null;
                        if (tag2 instanceof TLRPC$Document) {
                            stickerTabView.imageView.setImage(ImageLocation.getForDocument((TLRPC$Document) tag2), !LiteMode.isEnabled(1) ? "36_36_firstframe" : "36_36_nolimit", (Drawable) null, (Object) null);
                        } else {
                            stickerTabView.imageView.setImageDrawable(drawable);
                        }
                    } else {
                        Object tag3 = childAt.getTag();
                        Object tag4 = childAt.getTag(C3634R.C3637id.parent_tag);
                        TLRPC$Document tLRPC$Document = (TLRPC$Document) childAt.getTag(C3634R.C3637id.object_tag);
                        if (tag3 instanceof TLRPC$Document) {
                            if (!stickerTabView.inited) {
                                stickerTabView.svgThumb = DocumentObject.getSvgThumb((TLRPC$Document) tag3, Theme.key_emptyListPlaceholder, 0.2f);
                            }
                            forSticker = ImageLocation.getForDocument(tLRPC$Document);
                        } else if (tag3 instanceof TLRPC$PhotoSize) {
                            forSticker = ImageLocation.getForSticker((TLRPC$PhotoSize) tag3, tLRPC$Document, tag4 instanceof TLRPC$TL_messages_stickerSet ? ((TLRPC$TL_messages_stickerSet) tag4).set.thumb_version : 0);
                        }
                        if (!stickerTabView.inited && stickerTabView.svgThumb == null && tLRPC$Document != null) {
                            stickerTabView.svgThumb = DocumentObject.getSvgThumb(tLRPC$Document, Theme.key_emptyListPlaceholder, 0.2f);
                        }
                        if (forSticker != null) {
                            stickerTabView.inited = true;
                            SvgHelper.SvgDrawable svgDrawable = stickerTabView.svgThumb;
                            BackupImageView backupImageView = stickerTabView.imageView;
                            boolean z = !LiteMode.isEnabled(1);
                            String str = z ? "40_40_firstframe" : "40_40";
                            if (!MessageObject.isVideoSticker(tLRPC$Document) || (arrayList = tLRPC$Document.thumbs) == null || arrayList.size() <= 0) {
                                if (MessageObject.isAnimatedStickerDocument(tLRPC$Document, true)) {
                                    if (svgDrawable != null) {
                                        backupImageView.setImage(forSticker, str, svgDrawable, 0, tag4);
                                    } else {
                                        backupImageView.setImage(forSticker, str, forSticker, (String) null, 0, tag4);
                                    }
                                } else if (forSticker.imageType == 1) {
                                    backupImageView.setImage(forSticker, str, "tgs", svgDrawable, tag4);
                                } else {
                                    backupImageView.setImage(forSticker, str, "webp", svgDrawable, tag4);
                                }
                            } else if (z) {
                                backupImageView.setImage(ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90), tLRPC$Document), "40_40", svgDrawable, 0, tag4);
                            } else if (svgDrawable != null) {
                                backupImageView.setImage(ImageLocation.getForDocument(tLRPC$Document), str, svgDrawable, 0, tag4);
                            } else {
                                backupImageView.setImage(ImageLocation.getForDocument(tLRPC$Document), str, forSticker, (String) null, 0, tag4);
                            }
                            stickerTabView.textView.setText(tag4 instanceof TLRPC$TL_messages_stickerSet ? ((TLRPC$TL_messages_stickerSet) tag4).set.title : null);
                        }
                    }
                    this.currentPlayingImages.put(stickerTabView.index, stickerTabView);
                    this.currentPlayingImagesTmp.remove(stickerTabView.index);
                }
            }
            scrollX++;
        }
        for (int i3 = 0; i3 < this.currentPlayingImagesTmp.size(); i3++) {
            if (this.currentPlayingImagesTmp.valueAt(i3) != this.draggingView) {
                this.currentPlayingImagesTmp.valueAt(i3).imageView.setImageDrawable(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTabSize() {
        return AndroidUtilities.m105dp(this.animateToExpanded ? EXPANDED_WIDTH : 33.0f);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        setImages();
    }

    public void showSelected(boolean z) {
        this.showSelected = z;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f;
        float textWidth;
        Paint paint;
        float f2 = this.stickerTabWidth - this.stickerTabExpandedWidth;
        float f3 = this.expandOffset * (1.0f - this.expandProgress);
        for (int i = 0; i < this.tabsContainer.getChildCount(); i++) {
            if (this.tabsContainer.getChildAt(i) instanceof StickerTabView) {
                StickerTabView stickerTabView = (StickerTabView) this.tabsContainer.getChildAt(i);
                stickerTabView.animateIfPositionChanged(this);
                if (this.animateToExpanded) {
                    stickerTabView.setTranslationX((i * f2 * (1.0f - this.expandProgress)) + f3 + stickerTabView.dragOffset);
                } else {
                    stickerTabView.setTranslationX(stickerTabView.dragOffset);
                }
            }
        }
        float height = getHeight();
        if (this.animateToExpanded) {
            height = getHeight() - (AndroidUtilities.m104dp(50) * (1.0f - this.expandProgress));
        }
        float f4 = height;
        float f5 = this.showSelectedAlpha.set(this.showSelected ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        if (!isInEditMode() && this.tabCount != 0 && this.indicatorHeight >= 0) {
            float f6 = this.currentPositionAnimated.set(this.currentPosition);
            double d = f6;
            int floor = (int) Math.floor(d);
            int ceil = (int) Math.ceil(d);
            View view = null;
            View childAt = (floor < 0 || floor >= this.tabsContainer.getChildCount()) ? null : this.tabsContainer.getChildAt(floor);
            if (ceil >= 0 && ceil < this.tabsContainer.getChildCount()) {
                view = this.tabsContainer.getChildAt(ceil);
            }
            float f7 = f4 / 2.0f;
            if (childAt != null && view != null) {
                float f8 = f6 - floor;
                float lerp = AndroidUtilities.lerp(childAt.getLeft() + childAt.getTranslationX() + (AndroidUtilities.lerp(AndroidUtilities.m104dp(33), AndroidUtilities.m105dp(EXPANDED_WIDTH), this.expandProgress) / 2.0f), view.getLeft() + view.getTranslationX() + (AndroidUtilities.lerp(AndroidUtilities.m104dp(33), AndroidUtilities.m105dp(EXPANDED_WIDTH), this.expandProgress) / 2.0f), f8);
                textWidth = AndroidUtilities.lerp(childAt instanceof StickerTabView ? ((StickerTabView) childAt).getTextWidth() : BitmapDescriptorFactory.HUE_RED, view instanceof StickerTabView ? ((StickerTabView) view).getTextWidth() : BitmapDescriptorFactory.HUE_RED, f8);
                f = lerp;
            } else if (childAt != null) {
                f = childAt.getLeft() + childAt.getTranslationX() + (AndroidUtilities.lerp(AndroidUtilities.m104dp(33), AndroidUtilities.m105dp(EXPANDED_WIDTH), this.expandProgress) / 2.0f);
                if (childAt instanceof StickerTabView) {
                    textWidth = ((StickerTabView) childAt).getTextWidth();
                }
                textWidth = BitmapDescriptorFactory.HUE_RED;
            } else {
                if (view != null) {
                    f = view.getLeft() + view.getTranslationX() + (AndroidUtilities.lerp(AndroidUtilities.m104dp(33), AndroidUtilities.m105dp(EXPANDED_WIDTH), this.expandProgress) / 2.0f);
                    if (view instanceof StickerTabView) {
                        textWidth = ((StickerTabView) view).getTextWidth();
                    }
                } else {
                    f = BitmapDescriptorFactory.HUE_RED;
                }
                textWidth = BitmapDescriptorFactory.HUE_RED;
            }
            float m104dp = AndroidUtilities.m104dp(30);
            float abs = (1.25f - ((Math.abs(0.5f - this.currentPositionAnimated.getTransitionProgressInterpolated()) * 0.25f) * 2.0f)) * m104dp;
            float interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(this.expandProgress);
            float lerp2 = f7 + AndroidUtilities.lerp(0, AndroidUtilities.m104dp(26), interpolation);
            float lerp3 = AndroidUtilities.lerp(abs, textWidth + AndroidUtilities.m104dp(10), interpolation) / 2.0f;
            float abs2 = ((m104dp * (((Math.abs(0.5f - this.currentPositionAnimated.getTransitionProgressInterpolated()) * 0.1f) * 2.0f) + 0.9f)) * AndroidUtilities.lerp(1.0f, 0.55f, interpolation)) / 2.0f;
            this.tabBounds.set(f - lerp3, lerp2 - abs2, f + lerp3, lerp2 + abs2);
            this.selectorPaint.setColor(ColorUtils.setAlphaComponent(getThemedColor(Theme.key_chat_emojiPanelIcon), 46));
            this.selectorPaint.setAlpha((int) (paint.getAlpha() * f5));
            canvas.drawRoundRect(this.tabBounds, AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(8), this.selectorPaint);
        }
        super.dispatchDraw(canvas);
        if (isInEditMode() || this.tabCount == 0 || this.underlineHeight <= 0) {
            return;
        }
        this.rectPaint.setColor(this.underlineColor);
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f4 - this.underlineHeight, this.tabsContainer.getWidth(), f4, this.rectPaint);
    }

    public void drawOverlays(Canvas canvas) {
        if (this.draggingView != null) {
            canvas.save();
            float f = this.draggindViewXOnScreen - this.draggindViewDxOnScreen;
            float f2 = this.draggingViewOutProgress;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                f = (f * (1.0f - f2)) + ((this.draggingView.getX() - getScrollX()) * this.draggingViewOutProgress);
            }
            canvas.translate(f, BitmapDescriptorFactory.HUE_RED);
            this.draggingView.draw(canvas);
            canvas.restore();
        }
    }

    public void setShouldExpand(boolean z) {
        this.shouldExpand = z;
        requestLayout();
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public void onPageScrolled(int i, int i2) {
        int i3 = this.currentPosition;
        if (i3 == i) {
            return;
        }
        View childAt = this.tabsContainer.getChildAt(i3);
        if (childAt != null) {
            childAt.getLeft();
            SystemClock.elapsedRealtime();
        }
        this.currentPosition = i;
        if (i >= this.tabsContainer.getChildCount()) {
            return;
        }
        int i4 = 0;
        while (true) {
            boolean z = true;
            if (i4 >= this.tabsContainer.getChildCount()) {
                break;
            }
            View childAt2 = this.tabsContainer.getChildAt(i4);
            if (i4 != i) {
                z = false;
            }
            childAt2.setSelected(z);
            i4++;
        }
        if (this.expandStickerAnimator == null) {
            if (i2 == i && i > 1) {
                scrollToChild(i - 1);
            } else {
                scrollToChild(i);
            }
        }
        invalidate();
    }

    public void invalidateTabs() {
        int childCount = this.tabsContainer.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.tabsContainer.getChildAt(i).invalidate();
        }
    }

    public void setCurrentPosition(int i) {
        this.currentPosition = i;
    }

    public void setIndicatorHeight(int i) {
        this.indicatorHeight = i;
        invalidate();
    }

    public void setIndicatorColor(int i) {
        invalidate();
    }

    public void setUnderlineColor(int i) {
        this.underlineColor = i;
        invalidate();
    }

    public void setUnderlineColorResource(int i) {
        this.underlineColor = getResources().getColor(i);
        invalidate();
    }

    public void setUnderlineHeight(int i) {
        if (this.underlineHeight != i) {
            this.underlineHeight = i;
            invalidate();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return checkLongPress(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return checkLongPress(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public boolean checkLongPress(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.draggingView == null) {
            this.longClickRunning = true;
            AndroidUtilities.runOnUIThread(this.longClickRunnable, 500L);
            this.pressedX = motionEvent.getX();
            this.pressedY = motionEvent.getY();
        }
        if (this.longClickRunning && motionEvent.getAction() == 2 && (Math.abs(motionEvent.getX() - this.pressedX) > this.touchSlop || Math.abs(motionEvent.getY() - this.pressedY) > this.touchSlop)) {
            this.longClickRunning = false;
            AndroidUtilities.cancelRunOnUIThread(this.longClickRunnable);
        }
        if (motionEvent.getAction() == 2 && this.draggingView != null) {
            int ceil = ((int) Math.ceil((getScrollX() + motionEvent.getX()) / getTabSize())) - 1;
            int i = this.currentDragPosition;
            if (ceil != i) {
                if (ceil < i) {
                    while (!canSwap(ceil) && ceil != this.currentDragPosition) {
                        ceil++;
                    }
                } else {
                    while (!canSwap(ceil) && ceil != this.currentDragPosition) {
                        ceil--;
                    }
                }
            }
            if (this.currentDragPosition != ceil && canSwap(ceil)) {
                for (int i2 = 0; i2 < this.tabsContainer.getChildCount(); i2++) {
                    if (i2 != this.currentDragPosition) {
                        ((StickerTabView) this.tabsContainer.getChildAt(i2)).saveXPosition();
                    }
                }
                this.startDragFromX += (ceil - this.currentDragPosition) * getTabSize();
                this.currentDragPosition = ceil;
                this.tabsContainer.removeView(this.draggingView);
                this.tabsContainer.addView(this.draggingView, this.currentDragPosition);
                invalidate();
            }
            this.draggindViewDxOnScreen = this.pressedX - motionEvent.getX();
            float x = motionEvent.getX();
            if (x < this.draggingView.getMeasuredWidth() / 2.0f) {
                startScroll(false);
            } else if (x > getMeasuredWidth() - (this.draggingView.getMeasuredWidth() / 2.0f)) {
                startScroll(true);
            } else {
                stopScroll();
            }
            this.tabsContainer.invalidate();
            invalidateOverlays();
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            stopScroll();
            AndroidUtilities.cancelRunOnUIThread(this.longClickRunnable);
            if (this.draggingView != null) {
                int i3 = this.startDragFromPosition;
                int i4 = this.currentDragPosition;
                if (i3 != i4) {
                    stickerSetPositionChanged(i3, i4);
                    for (int i5 = 0; i5 < this.tabsContainer.getChildCount(); i5++) {
                        this.tabsContainer.getChildAt(i5).setTag(C3634R.C3637id.index_tag, Integer.valueOf(i5));
                    }
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ScrollSlidingTabStrip.this.lambda$checkLongPress$8(valueAnimator);
                    }
                });
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ScrollSlidingTabStrip.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ScrollSlidingTabStrip scrollSlidingTabStrip = ScrollSlidingTabStrip.this;
                        if (scrollSlidingTabStrip.draggingView != null) {
                            scrollSlidingTabStrip.invalidateOverlays();
                            ScrollSlidingTabStrip.this.draggingView.invalidate();
                            ScrollSlidingTabStrip.this.tabsContainer.invalidate();
                            ScrollSlidingTabStrip.this.invalidate();
                            ScrollSlidingTabStrip.this.draggingView = null;
                        }
                    }
                });
                ofFloat.start();
            }
            this.longClickRunning = false;
            invalidateOverlays();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLongPress$8(ValueAnimator valueAnimator) {
        this.draggingViewOutProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidateOverlays();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canSwap(int i) {
        if (this.dragEnabled && i >= 0 && i < this.tabsContainer.getChildCount()) {
            View childAt = this.tabsContainer.getChildAt(i);
            if (childAt instanceof StickerTabView) {
                StickerTabView stickerTabView = (StickerTabView) childAt;
                if (stickerTabView.type == 0 && !stickerTabView.isChatSticker) {
                    return true;
                }
            }
        }
        return false;
    }

    private void startScroll(boolean z) {
        this.scrollRight = z;
        if (this.scrollStartTime <= 0) {
            this.scrollStartTime = System.currentTimeMillis();
        }
        AndroidUtilities.runOnUIThread(this.scrollRunnable, 16L);
    }

    private void stopScroll() {
        this.scrollStartTime = -1L;
        AndroidUtilities.cancelRunOnUIThread(this.scrollRunnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDragging() {
        return this.draggingView != null;
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.longClickRunning = false;
        AndroidUtilities.cancelRunOnUIThread(this.longClickRunnable);
    }

    public void setDragEnabled(boolean z) {
        this.dragEnabled = z;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setImageReceiversLayerNum(int i) {
        this.imageReceiversPlayingNum = i;
    }
}
