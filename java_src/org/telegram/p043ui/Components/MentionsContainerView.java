package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.SpannableString;
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
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.MentionsAdapter;
import org.telegram.p043ui.Adapters.PaddedListAdapter;
import org.telegram.p043ui.Cells.StickerCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.ContentPreviewViewer;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeImageSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_inlineBotSwitchPM;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.MentionsContainerView */
/* loaded from: classes6.dex */
public class MentionsContainerView extends BlurredFrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private MentionsAdapter adapter;
    private boolean allowBlur;
    BaseFragment baseFragment;
    private PhotoViewer.PhotoViewerProvider botContextProvider;
    private ArrayList<Object> botContextResults;
    private Integer color;
    private float containerBottom;
    private float containerPadding;
    private float containerTop;
    private Delegate delegate;
    private ExtendedGridLayoutManager gridLayoutManager;
    private float hideT;
    private boolean ignoreLayout;
    private LinearLayoutManager linearLayoutManager;
    private MentionsListView listView;
    private boolean listViewHiding;
    private float listViewPadding;
    private SpringAnimation listViewTranslationAnimator;
    private RecyclerListView.OnItemClickListener mentionsOnItemClickListener;
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

    /* renamed from: org.telegram.ui.Components.MentionsContainerView$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {

        /* renamed from: org.telegram.ui.Components.MentionsContainerView$Delegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$addEmojiToRecent(Delegate delegate, String str) {
            }

            public static void $default$onStickerSelected(Delegate delegate, TLRPC$TL_document tLRPC$TL_document, String str, Object obj) {
            }

            public static void $default$sendBotInlineResult(Delegate delegate, TLRPC$BotInlineResult tLRPC$BotInlineResult, boolean z, int i) {
            }
        }

        void addEmojiToRecent(String str);

        Paint.FontMetricsInt getFontMetrics();

        void onStickerSelected(TLRPC$TL_document tLRPC$TL_document, String str, Object obj);

        void replaceText(int i, int i2, CharSequence charSequence, boolean z);

        void sendBotInlineResult(TLRPC$BotInlineResult tLRPC$BotInlineResult, boolean z, int i);
    }

    public static /* synthetic */ void lambda$updateListViewTranslation$3(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
    }

    protected boolean canOpen() {
        return true;
    }

    protected void onAnimationScroll() {
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

    public MentionsContainerView(Context context, long j, int i, final BaseFragment baseFragment, SizeNotifierFrameLayout sizeNotifierFrameLayout, Theme.ResourcesProvider resourcesProvider) {
        super(context, sizeNotifierFrameLayout);
        this.shouldLiftMentions = false;
        this.rect = new Rect();
        this.ignoreLayout = false;
        this.scrollToFirst = false;
        this.shown = false;
        this.updateVisibilityRunnable = new Runnable() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MentionsContainerView.this.lambda$new$0();
            }
        };
        this.listViewHiding = false;
        this.hideT = BitmapDescriptorFactory.HUE_RED;
        this.switchLayoutManagerOnEnd = false;
        this.botContextProvider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.MentionsContainerView.5
            {
                MentionsContainerView.this = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:48:0x007d A[LOOP:0: B:34:0x0027->B:48:0x007d, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:50:0x0048 A[SYNTHETIC] */
            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public org.telegram.p043ui.PhotoViewer.PlaceProviderObject getPlaceForPhoto(org.telegram.messenger.MessageObject r5, org.telegram.tgnet.TLRPC$FileLocation r6, int r7, boolean r8) {
                /*
                    r4 = this;
                    r5 = 0
                    if (r7 < 0) goto L80
                    org.telegram.ui.Components.MentionsContainerView r6 = org.telegram.p043ui.Components.MentionsContainerView.this
                    java.util.ArrayList r6 = org.telegram.p043ui.Components.MentionsContainerView.access$700(r6)
                    int r6 = r6.size()
                    if (r7 < r6) goto L11
                    goto L80
                L11:
                    org.telegram.ui.Components.MentionsContainerView r6 = org.telegram.p043ui.Components.MentionsContainerView.this
                    org.telegram.ui.Components.MentionsContainerView$MentionsListView r6 = r6.getListView()
                    int r6 = r6.getChildCount()
                    org.telegram.ui.Components.MentionsContainerView r8 = org.telegram.p043ui.Components.MentionsContainerView.this
                    java.util.ArrayList r8 = org.telegram.p043ui.Components.MentionsContainerView.access$700(r8)
                    java.lang.Object r7 = r8.get(r7)
                    r8 = 0
                    r0 = r8
                L27:
                    if (r0 >= r6) goto L80
                    org.telegram.ui.Components.MentionsContainerView r1 = org.telegram.p043ui.Components.MentionsContainerView.this
                    org.telegram.ui.Components.MentionsContainerView$MentionsListView r1 = r1.getListView()
                    android.view.View r1 = r1.getChildAt(r0)
                    boolean r2 = r1 instanceof org.telegram.p043ui.Cells.ContextLinkCell
                    if (r2 == 0) goto L45
                    r2 = r1
                    org.telegram.ui.Cells.ContextLinkCell r2 = (org.telegram.p043ui.Cells.ContextLinkCell) r2
                    org.telegram.tgnet.TLRPC$BotInlineResult r3 = r2.getResult()
                    if (r3 != r7) goto L45
                    org.telegram.messenger.ImageReceiver r2 = r2.getPhotoImage()
                    goto L46
                L45:
                    r2 = r5
                L46:
                    if (r2 == 0) goto L7d
                    r5 = 2
                    int[] r5 = new int[r5]
                    r1.getLocationInWindow(r5)
                    org.telegram.ui.PhotoViewer$PlaceProviderObject r6 = new org.telegram.ui.PhotoViewer$PlaceProviderObject
                    r6.<init>()
                    r7 = r5[r8]
                    r6.viewX = r7
                    r7 = 1
                    r5 = r5[r7]
                    int r7 = android.os.Build.VERSION.SDK_INT
                    r0 = 21
                    if (r7 < r0) goto L61
                    goto L63
                L61:
                    int r8 = org.telegram.messenger.AndroidUtilities.statusBarHeight
                L63:
                    int r5 = r5 - r8
                    r6.viewY = r5
                    org.telegram.ui.Components.MentionsContainerView r5 = org.telegram.p043ui.Components.MentionsContainerView.this
                    org.telegram.ui.Components.MentionsContainerView$MentionsListView r5 = r5.getListView()
                    r6.parentView = r5
                    r6.imageReceiver = r2
                    org.telegram.messenger.ImageReceiver$BitmapHolder r5 = r2.getBitmapSafe()
                    r6.thumb = r5
                    int[] r5 = r2.getRoundRadius()
                    r6.radius = r5
                    return r6
                L7d:
                    int r0 = r0 + 1
                    goto L27
                L80:
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MentionsContainerView.C51735.getPlaceForPhoto(org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$FileLocation, int, boolean):org.telegram.ui.PhotoViewer$PlaceProviderObject");
            }

            @Override // org.telegram.p043ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p043ui.PhotoViewer.PhotoViewerProvider
            public void sendButtonPressed(int i2, VideoEditedInfo videoEditedInfo, boolean z, int i3, boolean z2, String str, boolean z3) {
                if (i2 < 0 || i2 >= MentionsContainerView.this.botContextResults.size()) {
                    return;
                }
                MentionsContainerView.this.delegate.sendBotInlineResult((TLRPC$BotInlineResult) MentionsContainerView.this.botContextResults.get(i2), z, i3);
            }
        };
        this.baseFragment = baseFragment;
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        this.resourcesProvider = resourcesProvider;
        this.drawBlur = false;
        this.isTopView = false;
        setVisibility(8);
        setWillNotDraw(false);
        this.listViewPadding = (int) Math.min(AndroidUtilities.m105dp(126.0f), AndroidUtilities.displaySize.y * 0.22f);
        MentionsListView mentionsListView = new MentionsListView(context, resourcesProvider);
        this.listView = mentionsListView;
        mentionsListView.setTranslationY(AndroidUtilities.m104dp(6));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: org.telegram.ui.Components.MentionsContainerView.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            {
                MentionsContainerView.this = this;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void setReverseLayout(boolean z) {
                super.setReverseLayout(z);
                MentionsContainerView.this.listView.setTranslationY((z ? -1 : 1) * AndroidUtilities.m104dp(6));
            }
        };
        this.linearLayoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context, 100, false, false) { // from class: org.telegram.ui.Components.MentionsContainerView.2
            private Size size = new Size();

            {
                MentionsContainerView.this = this;
            }

            @Override // org.telegram.p043ui.Components.ExtendedGridLayoutManager
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
                            size2.width = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.f1634w : 100.0f;
                            size2.height = closestPhotoSizeWithSize2 != null ? closestPhotoSizeWithSize2.f1633h : 100.0f;
                            while (i4 < tLRPC$BotInlineResult.document.attributes.size()) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$BotInlineResult.document.attributes.get(i4);
                                if ((tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size3 = this.size;
                                    size3.width = tLRPC$DocumentAttribute.f1613w;
                                    size3.height = tLRPC$DocumentAttribute.f1612h;
                                    break;
                                }
                                i4++;
                            }
                        } else if (tLRPC$BotInlineResult.content != null) {
                            while (i4 < tLRPC$BotInlineResult.content.attributes.size()) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute2 = tLRPC$BotInlineResult.content.attributes.get(i4);
                                if ((tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute2 instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size4 = this.size;
                                    size4.width = tLRPC$DocumentAttribute2.f1613w;
                                    size4.height = tLRPC$DocumentAttribute2.f1612h;
                                    break;
                                }
                                i4++;
                            }
                        } else if (tLRPC$BotInlineResult.thumb != null) {
                            while (i4 < tLRPC$BotInlineResult.thumb.attributes.size()) {
                                TLRPC$DocumentAttribute tLRPC$DocumentAttribute3 = tLRPC$BotInlineResult.thumb.attributes.get(i4);
                                if ((tLRPC$DocumentAttribute3 instanceof TLRPC$TL_documentAttributeImageSize) || (tLRPC$DocumentAttribute3 instanceof TLRPC$TL_documentAttributeVideo)) {
                                    Size size5 = this.size;
                                    size5.width = tLRPC$DocumentAttribute3.f1613w;
                                    size5.height = tLRPC$DocumentAttribute3.f1612h;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            TLRPC$Photo tLRPC$Photo = tLRPC$BotInlineResult.photo;
                            if (tLRPC$Photo != null && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, AndroidUtilities.photoSize.intValue())) != null) {
                                Size size6 = this.size;
                                size6.width = closestPhotoSizeWithSize.f1634w;
                                size6.height = closestPhotoSizeWithSize.f1633h;
                            }
                        }
                    }
                    return this.size;
                }
                this.size.width = getWidth();
                this.size.height = MentionsContainerView.this.paddedAdapter.getPadding();
                return this.size;
            }

            @Override // org.telegram.p043ui.Components.ExtendedGridLayoutManager
            public int getFlowItemCount() {
                if (MentionsContainerView.this.adapter.getBotContextSwitch() != null || MentionsContainerView.this.adapter.getBotWebViewSwitch() != null) {
                    return getItemCount() - 2;
                }
                return super.getFlowItemCount() - 1;
            }
        };
        this.gridLayoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.MentionsContainerView.3
            {
                MentionsContainerView.this = this;
            }

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
            {
                MentionsContainerView.this = this;
            }

            @Override // org.telegram.p043ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onItemCountUpdate(int i2, int i3) {
                if (MentionsContainerView.this.listView.getLayoutManager() == MentionsContainerView.this.gridLayoutManager || !MentionsContainerView.this.shown) {
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(MentionsContainerView.this.updateVisibilityRunnable);
                AndroidUtilities.runOnUIThread(MentionsContainerView.this.updateVisibilityRunnable, baseFragment.getFragmentBeginToShow() ? 0L : 100L);
            }

            @Override // org.telegram.p043ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
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

            @Override // org.telegram.p043ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
            public void onContextSearch(boolean z) {
                MentionsContainerView.this.onContextSearch(z);
            }

            @Override // org.telegram.p043ui.Adapters.MentionsAdapter.MentionsAdapterDelegate
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

    @Override // org.telegram.p043ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        PaddedListAdapter paddedListAdapter;
        float min;
        PaddedListAdapter paddedListAdapter2;
        boolean isReversed = isReversed();
        this.containerPadding = AndroidUtilities.m104dp(((this.adapter.isStickers() || this.adapter.isBotContext()) && this.adapter.isMediaLayout() && this.adapter.getBotContextSwitch() == null && this.adapter.getBotWebViewSwitch() == null ? 2 : 0) + 2);
        float m104dp = AndroidUtilities.m104dp(6);
        float f = this.containerTop;
        if (isReversed) {
            float min2 = Math.min(Math.max((float) BitmapDescriptorFactory.HUE_RED, (this.paddedAdapter.paddingViewAttached ? paddedListAdapter2.paddingView.getTop() : getHeight()) + this.listView.getTranslationY()) + this.containerPadding, (1.0f - this.hideT) * getHeight());
            Rect rect = this.rect;
            this.containerTop = BitmapDescriptorFactory.HUE_RED;
            int i = (int) BitmapDescriptorFactory.HUE_RED;
            int measuredWidth = getMeasuredWidth();
            this.containerBottom = min2;
            rect.set(0, i, measuredWidth, (int) min2);
            min = Math.min(m104dp, Math.abs(getMeasuredHeight() - this.containerBottom));
            if (min > BitmapDescriptorFactory.HUE_RED) {
                this.rect.top -= (int) min;
            }
        } else {
            if (this.listView.getLayoutManager() == this.gridLayoutManager) {
                this.containerPadding += AndroidUtilities.m104dp(2);
                m104dp += AndroidUtilities.m104dp(2);
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
            min = Math.min(m104dp, Math.abs(this.containerTop));
            if (min > BitmapDescriptorFactory.HUE_RED) {
                this.rect.bottom += (int) min;
            }
        }
        if (Math.abs(f - this.containerTop) > 0.1f) {
            onAnimationScroll();
        }
        if (this.paint == null) {
            Paint paint = new Paint(1);
            this.paint = paint;
            paint.setShadowLayer(AndroidUtilities.m104dp(4), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 503316480);
        }
        Paint paint2 = this.paint;
        Integer num = this.color;
        paint2.setColor(num != null ? num.intValue() : getThemedColor(Theme.key_chat_messagePanelBackground));
        if (this.allowBlur && SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null) {
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
            drawRoundRect(canvas, this.rect, min);
        }
        canvas.save();
        canvas.clipRect(this.rect);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public void drawRoundRect(Canvas canvas, Rect rect, float f) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(rect);
        canvas.drawRoundRect(rectF, f, f, this.paint);
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
                    mentionsListView.setTranslationY(isReversed ? -(this.listViewPadding + AndroidUtilities.m104dp(12)) : mentionsListView.computeVerticalScrollOffset() + this.listViewPadding);
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
        Runnable runnable = this.updateVisibilityRunnable;
        BaseFragment baseFragment = this.baseFragment;
        AndroidUtilities.runOnUIThread(runnable, (baseFragment == null || !baseFragment.getFragmentBeginToShow()) ? 100L : 0L);
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
                f = (-this.containerPadding) - AndroidUtilities.m104dp(6);
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
                    spring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda3
                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                        public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f7, float f8) {
                            MentionsContainerView.this.lambda$updateListViewTranslation$1(f5, f6, translationY, f4, dynamicAnimation, f7, f8);
                        }
                    });
                    if (z) {
                        this.listViewTranslationAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda1
                            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f7, float f8) {
                                MentionsContainerView.this.lambda$updateListViewTranslation$2(z, dynamicAnimation, z3, f7, f8);
                            }
                        });
                    }
                    this.listViewTranslationAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda2
                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                        public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f7, float f8) {
                            MentionsContainerView.lambda$updateListViewTranslation$3(dynamicAnimation, z3, f7, f8);
                        }
                    });
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

    public /* synthetic */ void lambda$updateListViewTranslation$1(float f, float f2, float f3, float f4, DynamicAnimation dynamicAnimation, float f5, float f6) {
        this.listView.setTranslationY(f5);
        onAnimationScroll();
        this.hideT = AndroidUtilities.lerp(f, f2, (f5 - f3) / (f4 - f3));
    }

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

    public void setDialogId(long j) {
        this.adapter.setDialogId(j);
    }

    public void withDelegate(final Delegate delegate) {
        this.delegate = delegate;
        MentionsListView listView = getListView();
        RecyclerListView.OnItemClickListener onItemClickListener = new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                MentionsContainerView.this.lambda$withDelegate$4(delegate, view, i);
            }
        };
        this.mentionsOnItemClickListener = onItemClickListener;
        listView.setOnItemClickListener(onItemClickListener);
        getListView().setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$withDelegate$5;
                lambda$withDelegate$5 = MentionsContainerView.this.lambda$withDelegate$5(view, motionEvent);
                return lambda$withDelegate$5;
            }
        });
    }

    public /* synthetic */ void lambda$withDelegate$4(Delegate delegate, View view, int i) {
        AnimatedEmojiSpan animatedEmojiSpan;
        if (i == 0 || getAdapter().isBannedInline()) {
            return;
        }
        int i2 = i - 1;
        Object item = getAdapter().getItem(i2);
        int resultStartPosition = getAdapter().getResultStartPosition();
        int resultLength = getAdapter().getResultLength();
        if (item instanceof TLRPC$TL_document) {
            if (view instanceof StickerCell) {
                ((StickerCell) view).getSendAnimationData();
            }
            TLRPC$TL_document tLRPC$TL_document = (TLRPC$TL_document) item;
            delegate.onStickerSelected(tLRPC$TL_document, MessageObject.findAnimatedEmojiEmoticon(tLRPC$TL_document), getAdapter().getItemParent(i2));
        } else if (item instanceof TLRPC$Chat) {
            String publicUsername = ChatObject.getPublicUsername((TLRPC$Chat) item);
            if (publicUsername != null) {
                delegate.replaceText(resultStartPosition, resultLength, "@" + publicUsername + " ", false);
            }
        } else if (item instanceof TLRPC$User) {
            TLRPC$User tLRPC$User = (TLRPC$User) item;
            if (UserObject.getPublicUsername(tLRPC$User) != null) {
                delegate.replaceText(resultStartPosition, resultLength, "@" + UserObject.getPublicUsername(tLRPC$User) + " ", false);
            } else {
                SpannableString spannableString = new SpannableString(UserObject.getFirstName(tLRPC$User, false) + " ");
                spannableString.setSpan(new URLSpanUserMention("" + tLRPC$User.f1749id, 3), 0, spannableString.length(), 33);
                delegate.replaceText(resultStartPosition, resultLength, spannableString, false);
            }
        } else if (item instanceof String) {
            delegate.replaceText(resultStartPosition, resultLength, item + " ", false);
        } else if (item instanceof MediaDataController.KeywordResult) {
            String str = ((MediaDataController.KeywordResult) item).emoji;
            delegate.addEmojiToRecent(str);
            if (str != null && str.startsWith("animated_")) {
                Paint.FontMetricsInt fontMetricsInt = null;
                try {
                    try {
                        fontMetricsInt = delegate.getFontMetrics();
                    } catch (Exception e) {
                        FileLog.m98e((Throwable) e, false);
                    }
                    long parseLong = Long.parseLong(str.substring(9));
                    TLRPC$Document findDocument = AnimatedEmojiDrawable.findDocument(UserConfig.selectedAccount, parseLong);
                    SpannableString spannableString2 = new SpannableString(MessageObject.findAnimatedEmojiEmoticon(findDocument));
                    if (findDocument != null) {
                        animatedEmojiSpan = new AnimatedEmojiSpan(findDocument, fontMetricsInt);
                    } else {
                        animatedEmojiSpan = new AnimatedEmojiSpan(parseLong, fontMetricsInt);
                    }
                    spannableString2.setSpan(animatedEmojiSpan, 0, spannableString2.length(), 33);
                    delegate.replaceText(resultStartPosition, resultLength, spannableString2, false);
                } catch (Exception unused) {
                    delegate.replaceText(resultStartPosition, resultLength, str, true);
                }
            } else {
                delegate.replaceText(resultStartPosition, resultLength, str, true);
            }
            updateVisibility(false);
        }
        if (item instanceof TLRPC$BotInlineResult) {
            TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) item;
            if ((tLRPC$BotInlineResult.type.equals("photo") && (tLRPC$BotInlineResult.photo != null || tLRPC$BotInlineResult.content != null)) || ((tLRPC$BotInlineResult.type.equals(AnalyticsEvent.SendClip.typeGif) && (tLRPC$BotInlineResult.document != null || tLRPC$BotInlineResult.content != null)) || (tLRPC$BotInlineResult.type.equals("video") && tLRPC$BotInlineResult.document != null))) {
                ArrayList<Object> arrayList = new ArrayList<>(getAdapter().getSearchResultBotContext());
                this.botContextResults = arrayList;
                PhotoViewer.getInstance().setParentActivity(this.baseFragment, this.resourcesProvider);
                PhotoViewer.getInstance().openPhotoForSelect(arrayList, getAdapter().getItemPosition(i2), 3, false, this.botContextProvider, null);
                return;
            }
            delegate.sendBotInlineResult(tLRPC$BotInlineResult, true, 0);
        }
    }

    public /* synthetic */ boolean lambda$withDelegate$5(View view, MotionEvent motionEvent) {
        return ContentPreviewViewer.getInstance().onTouch(motionEvent, getListView(), 0, this.mentionsOnItemClickListener, null, this.resourcesProvider);
    }

    /* renamed from: org.telegram.ui.Components.MentionsContainerView$MentionsListView */
    /* loaded from: classes6.dex */
    public class MentionsListView extends RecyclerListView {
        private boolean isDragging;
        private boolean isScrolling;
        private int lastHeight;
        private int lastWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MentionsListView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            MentionsContainerView.this = r1;
            setOnScrollListener(new RecyclerView.OnScrollListener(r1) { // from class: org.telegram.ui.Components.MentionsContainerView.MentionsListView.1
                {
                    MentionsListView.this = this;
                }

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
            addItemDecoration(new RecyclerView.ItemDecoration(r1) { // from class: org.telegram.ui.Components.MentionsContainerView.MentionsListView.2
                {
                    MentionsListView.this = this;
                }

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
                        rect.top = AndroidUtilities.m104dp(2);
                    } else if (i == 0) {
                        return;
                    } else {
                        i--;
                        if (!MentionsContainerView.this.gridLayoutManager.isFirstRow(i)) {
                            rect.top = AndroidUtilities.m104dp(2);
                        }
                    }
                    rect.right = MentionsContainerView.this.gridLayoutManager.isLastInRow(i) ? 0 : AndroidUtilities.m104dp(2);
                }
            });
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
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

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
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

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (MentionsContainerView.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
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

        @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            MentionsContainerView.this.invalidate();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i2);
            if (MentionsContainerView.this.paddedAdapter != null) {
                MentionsContainerView.this.paddedAdapter.setPadding(size);
            }
            MentionsContainerView.this.listViewPadding = (int) Math.min(AndroidUtilities.m105dp(126.0f), AndroidUtilities.displaySize.y * 0.22f);
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

    @Override // org.telegram.p043ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.p043ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.emojiLoaded) {
            getListView().invalidateViews();
        }
    }
}
