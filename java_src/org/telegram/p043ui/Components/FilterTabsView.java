package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Property;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.enums.FilterTabNotificationMode;
import com.iMe.fork.enums.FilterTabWidthMode;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.models.SortingTabState;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.FilterTabsView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFiltersOrder;
/* renamed from: org.telegram.ui.Components.FilterTabsView */
/* loaded from: classes6.dex */
public class FilterTabsView extends BlurredFrameLayout {
    private final Property<FilterTabsView, Float> COLORS;
    private int aActiveTextColorKey;
    private int aBackgroundColorKey;
    private int aTabLineColorKey;
    private int aUnactiveTextColorKey;
    private int activeTextColorKey;
    private ListAdapter adapter;
    private int additionalTabWidth;
    private int allTabsWidth;
    private boolean animatingIndicator;
    private float animatingIndicatorProgress;
    private Runnable animationRunnable;
    private float animationTime;
    private float animationValue;
    private int backgroundColorKey;
    private AnimatorSet colorChangeAnimator;
    private Paint counterPaint;
    private int currentPosition;
    private int customMarginAndCount;
    private int customMaxTabWidth;
    private int customTabDefaultMargin;
    private FilterTabsViewDelegate delegate;
    private Paint deletePaint;
    private float editingAnimationProgress;
    private boolean editingForwardAnimation;
    private float editingStartAnimationProgress;
    private SparseIntArray idToPosition;
    private boolean ignoreLayout;
    private CubicBezierInterpolator interpolator;
    private boolean invalidated;
    private boolean isEditing;
    private boolean isForwardToArchive;
    DefaultItemAnimator itemAnimator;
    private long lastAnimationTime;
    private long lastEditingAnimationTime;
    private LinearLayoutManager layoutManager;
    private final float[] lineCornerRadiiForBottom;
    private final float[] lineCornerRadiiForTop;
    private RecyclerListView listView;
    private Drawable lockDrawable;
    private int lockDrawableColor;
    private int manualScrollingToId;
    private int manualScrollingToPosition;
    private final TabMode mode;
    private boolean orderChanged;
    private SparseIntArray positionToId;
    private SparseIntArray positionToStableId;
    private SparseIntArray positionToWidth;
    private SparseIntArray positionToX;
    private int prevLayoutWidth;
    private int previousId;
    private int previousPosition;
    private int scrollingToChild;
    private int selectedTabId;
    private int selectorColorKey;
    private GradientDrawable selectorDrawable;
    private int tabLineColorKey;
    private int tabNoCounterMargin;
    private ArrayList<Tab> tabs;
    private TextPaint textCounterPaint;
    private TextPaint textPaint;
    private int unactiveTextColorKey;
    private boolean withBackground;

    /* renamed from: org.telegram.ui.Components.FilterTabsView$FilterTabsViewDelegate */
    /* loaded from: classes6.dex */
    public interface FilterTabsViewDelegate {
        boolean canPerformActions();

        boolean didSelectTab(TabView tabView, boolean z);

        int getTabCounter(int i);

        boolean isTabMenuVisible();

        void onDeletePressed(int i);

        void onPageReorder(int i, int i2);

        void onPageScrolled(float f);

        void onPageSelected(Tab tab, boolean z);

        void onSamePageSelected();

        void onSwipeProgressChanged(float f);

        void onTabSelected(int i);
    }

    /* renamed from: org.telegram.ui.Components.FilterTabsView$TabMode */
    /* loaded from: classes6.dex */
    public enum TabMode {
        MAIN,
        ARCHIVE,
        FORWARD
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setIsEditing$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    protected void onDefaultTabMoved() {
    }

    static /* synthetic */ float access$3416(FilterTabsView filterTabsView, float f) {
        float f2 = filterTabsView.animationTime + f;
        filterTabsView.animationTime = f2;
        return f2;
    }

    public void addTab(int i, int i2, String str, boolean z, boolean z2) {
        addTab(i, i2, str, z, z2, 0, 0);
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public int getSelectedTabAfterRemoveCurrent(boolean z) {
        if (z && !this.tabs.isEmpty()) {
            ArrayList<Tab> arrayList = this.tabs;
            return arrayList.get(arrayList.size() - 1).f1851id;
        }
        return this.positionToId.get(this.currentPosition, getFirstTabId());
    }

    public void updateLineCornerRadii() {
        this.selectorDrawable.setCornerRadii(isFilterTabsAtBottom() ? this.lineCornerRadiiForBottom : this.lineCornerRadiiForTop);
    }

    public void updateBackground() {
        boolean z = isFilterTabsAtBottom() || this.mode == TabMode.FORWARD;
        this.withBackground = z;
        if (z) {
            setBackgroundColor(Theme.getColor((this.mode == TabMode.ARCHIVE || this.isForwardToArchive) ? Theme.key_actionBarDefaultArchived : Theme.key_actionBarDefault));
        } else {
            setBackgroundColor(0);
        }
    }

    public boolean isWithBackground() {
        return this.withBackground;
    }

    public void setForwardToArchive(boolean z) {
        this.isForwardToArchive = z;
        updateBackground();
    }

    public int setSelectedTabId(int i) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 != -1) {
            this.selectedTabId = i;
            this.currentPosition = i2;
        }
        return i2;
    }

    public void addSortingTabs(List<SortingTabState> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            SortingFilter type = list.get(i).getType();
            int generateIdWithExtra = type.generateIdWithExtra();
            addTab(generateIdWithExtra, generateIdWithExtra, "", false, false, type.getDefaultIconResId(), type.getFilledIconResId());
        }
    }

    public boolean isLastTabSelected() {
        if (this.tabs.isEmpty()) {
            return false;
        }
        int i = this.selectedTabId;
        ArrayList<Tab> arrayList = this.tabs;
        return i == arrayList.get(arrayList.size() - 1).f1851id;
    }

    private void notifySwipeProgressChanged() {
        FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
        if (filterTabsViewDelegate != null) {
            filterTabsViewDelegate.onSwipeProgressChanged(this.animatingIndicatorProgress);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFilterTabsAtBottom() {
        TabMode tabMode = this.mode;
        if (tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE) {
            return SharedConfig.isFilterTabsAtBottomEnabled;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedCounter() {
        TabMode tabMode = this.mode;
        return (tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE) && SharedConfig.selectedFilterTabsNotificationMode == FilterTabNotificationMode.NUMBER;
    }

    private boolean isCustomTabWidthMode() {
        TabMode tabMode = this.mode;
        return (tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE || tabMode == TabMode.FORWARD) && SharedConfig.selectedFilterTabWidthMode != FilterTabWidthMode.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPointCounterMode() {
        TabMode tabMode = this.mode;
        return (tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE) && SharedConfig.selectedFilterTabsNotificationMode == FilterTabNotificationMode.POINT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAllChatsTabEnabled() {
        if (this.mode == TabMode.MAIN) {
            return FiltersController.getInstance(UserConfig.selectedAccount).isAllChatsTabEnabled();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFoldersFirst() {
        if (this.mode == TabMode.MAIN) {
            return FiltersController.getInstance(UserConfig.selectedAccount).isFoldersFirstEnabled();
        }
        return true;
    }

    public void updateCustomTabWidth() {
        if (!isCustomTabWidthMode()) {
            this.customMaxTabWidth = 0;
            this.customMarginAndCount = 0;
            this.customTabDefaultMargin = 0;
            this.tabNoCounterMargin = 18;
            return;
        }
        FilterTabWidthMode filterTabWidthMode = SharedConfig.selectedFilterTabWidthMode;
        FilterTabWidthMode filterTabWidthMode2 = FilterTabWidthMode.MEDIUM;
        this.customTabDefaultMargin = filterTabWidthMode == filterTabWidthMode2 ? 16 : 4;
        FilterTabWidthMode filterTabWidthMode3 = SharedConfig.selectedFilterTabWidthMode;
        this.tabNoCounterMargin = filterTabWidthMode3 == filterTabWidthMode2 ? 8 : 0;
        this.customMarginAndCount = filterTabWidthMode3 == filterTabWidthMode2 ? 6 : 2;
        this.customMaxTabWidth = filterTabWidthMode3 == filterTabWidthMode2 ? 20 : 10;
        invalidate();
    }

    public int getCurrentTabStableId() {
        return this.positionToStableId.get(this.currentPosition, -1);
    }

    public int getStableId(int i) {
        return this.positionToStableId.get(i, -1);
    }

    /* renamed from: org.telegram.ui.Components.FilterTabsView$Tab */
    /* loaded from: classes6.dex */
    public class Tab {
        public int counter;
        protected Drawable filledDrawable;

        /* renamed from: id */
        public int f1851id;
        public boolean isDefault;
        public boolean isLocked;
        protected Drawable outlinedDrawable;
        public String title;
        public int titleWidth;

        public Tab(int i, Drawable drawable, Drawable drawable2) {
            this.f1851id = i;
            this.title = "";
            this.outlinedDrawable = drawable;
            this.filledDrawable = drawable2;
        }

        protected boolean isIconTab() {
            return (this.outlinedDrawable == null || this.filledDrawable == null) ? false : true;
        }

        protected boolean isAllChatsTabTitleEnabled() {
            return this.isDefault && !isIconTab();
        }

        protected boolean isAllowEditing() {
            return (FilterTabsView.this.mode != TabMode.MAIN || this.isDefault || SortingFilter.isSortingFilter(false, this.f1851id)) ? false : true;
        }

        protected int getNoCounterMargin(boolean z) {
            if (FilterTabsView.this.isNeedCounter()) {
                return 0;
            }
            int m107dp = AndroidUtilities.m107dp(FilterTabsView.this.tabNoCounterMargin);
            if (z) {
                m107dp /= 2;
            }
            return isAllowEditing() ? (FilterTabsView.this.isEditing || FilterTabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED) ? (int) (m107dp * FilterTabsView.this.editingStartAnimationProgress) : m107dp : m107dp;
        }

        public Tab(int i, String str) {
            this.f1851id = i;
            this.title = str;
        }

        public int getWidth(boolean z) {
            int i;
            int intrinsicWidth = isIconTab() ? (int) (this.outlinedDrawable.getIntrinsicWidth() * 0.9f) : (int) Math.ceil(FilterTabsView.this.textPaint.measureText(this.title));
            this.titleWidth = intrinsicWidth;
            if (z) {
                i = FilterTabsView.this.delegate.getTabCounter(this.f1851id);
                if (i < 0) {
                    i = 0;
                }
                if (z) {
                    this.counter = i;
                }
            } else {
                i = this.counter;
            }
            if (i > 0 && FilterTabsView.this.isNeedCounter()) {
                intrinsicWidth += Math.max(AndroidUtilities.m107dp(10), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(String.format("%d", Integer.valueOf(i))))) + AndroidUtilities.m107dp(10) + AndroidUtilities.m107dp(FilterTabsView.this.customMarginAndCount != 0 ? FilterTabsView.this.customMarginAndCount : 6);
            }
            return Math.max(AndroidUtilities.m107dp(FilterTabsView.this.customMaxTabWidth != 0 ? FilterTabsView.this.customMaxTabWidth : 40), intrinsicWidth);
        }

        public boolean setTitle(String str) {
            if (this.isDefault && isAllChatsTabTitleEnabled() && !TextUtils.equals(this.title, str)) {
                this.title = str;
                return true;
            }
            return false;
        }
    }

    /* renamed from: org.telegram.ui.Components.FilterTabsView$TabView */
    /* loaded from: classes6.dex */
    public class TabView extends View {
        public boolean animateChange;
        private float animateFromCountWidth;
        private float animateFromCounterWidth;
        int animateFromTabCount;
        private float animateFromTabWidth;
        float animateFromTextX;
        private int animateFromTitleWidth;
        private float animateFromWidth;
        boolean animateTabCounter;
        private boolean animateTabWidth;
        private boolean animateTextChange;
        private boolean animateTextChangeOut;
        boolean animateTextX;
        public ValueAnimator changeAnimator;
        public float changeProgress;
        private int currentPosition;
        private Tab currentTab;
        private String currentText;
        StaticLayout inCounter;
        private int lastCountWidth;
        private float lastCounterWidth;
        int lastTabCount;
        private float lastTabWidth;
        float lastTextX;
        String lastTitle;
        private int lastTitleWidth;
        private float lastWidth;
        private float locIconXOffset;
        StaticLayout outCounter;
        private float progressToLocked;
        private RectF rect;
        StaticLayout stableCounter;
        private int tabWidth;
        private int textHeight;
        private StaticLayout textLayout;
        private int textOffsetX;
        private StaticLayout titleAnimateInLayout;
        private StaticLayout titleAnimateOutLayout;
        private StaticLayout titleAnimateStableLayout;
        private float titleXOffset;

        public TabView(Context context) {
            super(context);
            this.rect = new RectF();
            this.lastTabCount = -1;
        }

        public void setTab(Tab tab, int i) {
            this.currentTab = tab;
            this.currentPosition = i;
            setContentDescription(tab.title);
            requestLayout();
        }

        @Override // android.view.View
        public int getId() {
            return this.currentTab.f1851id;
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.animateChange = false;
            this.animateTabCounter = false;
            this.animateTextChange = false;
            this.animateTextX = false;
            this.animateTabWidth = false;
            ValueAnimator valueAnimator = this.changeAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.changeAnimator.removeAllUpdateListeners();
                this.changeAnimator.cancel();
                this.changeAnimator = null;
            }
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(((this.currentTab.getWidth(false) + AndroidUtilities.m107dp(FilterTabsView.this.customTabDefaultMargin != 0 ? FilterTabsView.this.customTabDefaultMargin : 32)) + FilterTabsView.this.additionalTabWidth) - this.currentTab.getNoCounterMargin(false), View.MeasureSpec.getSize(i2));
        }

        /* JADX WARN: Removed duplicated region for block: B:187:0x057d  */
        /* JADX WARN: Removed duplicated region for block: B:188:0x058d  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x05ca  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x05de  */
        /* JADX WARN: Removed duplicated region for block: B:220:0x066d  */
        /* JADX WARN: Removed duplicated region for block: B:231:0x06a6  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x06ad  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x06c7  */
        /* JADX WARN: Removed duplicated region for block: B:245:0x06ff  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x0712  */
        /* JADX WARN: Removed duplicated region for block: B:251:0x0717  */
        /* JADX WARN: Removed duplicated region for block: B:252:0x0724  */
        /* JADX WARN: Removed duplicated region for block: B:255:0x0735 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:259:0x073f  */
        /* JADX WARN: Removed duplicated region for block: B:263:0x0766  */
        /* JADX WARN: Removed duplicated region for block: B:280:0x07c9  */
        /* JADX WARN: Removed duplicated region for block: B:283:0x0808  */
        /* JADX WARN: Removed duplicated region for block: B:286:0x0848  */
        /* JADX WARN: Removed duplicated region for block: B:288:0x087c  */
        /* JADX WARN: Removed duplicated region for block: B:295:0x08bf A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:299:0x08cc A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:316:0x09ad  */
        /* JADX WARN: Removed duplicated region for block: B:319:0x09c5  */
        /* JADX WARN: Removed duplicated region for block: B:323:0x09d3  */
        /* JADX WARN: Removed duplicated region for block: B:326:0x09f5  */
        /* JADX WARN: Removed duplicated region for block: B:329:0x0a11  */
        /* JADX WARN: Removed duplicated region for block: B:332:0x0a6f  */
        /* JADX WARN: Removed duplicated region for block: B:333:0x0aa2  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r31) {
            /*
                Method dump skipped, instructions count: 2732
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.FilterTabsView.TabView.onDraw(android.graphics.Canvas):void");
        }

        public boolean animateChange() {
            boolean z;
            int i;
            String str;
            String str2;
            String str3;
            boolean z2;
            if (this.currentTab.counter == this.lastTabCount || !FilterTabsView.this.isNeedCounter()) {
                z = false;
            } else {
                this.animateTabCounter = true;
                int i2 = this.lastTabCount;
                this.animateFromTabCount = i2;
                this.animateFromCountWidth = this.lastCountWidth;
                this.animateFromCounterWidth = this.lastCounterWidth;
                if (i2 > 0 && this.currentTab.counter > 0) {
                    String valueOf = String.valueOf(i2);
                    String valueOf2 = String.valueOf(this.currentTab.counter);
                    if (valueOf.length() == valueOf2.length()) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(valueOf);
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(valueOf2);
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(valueOf2);
                        for (int i3 = 0; i3 < valueOf.length(); i3++) {
                            if (valueOf.charAt(i3) == valueOf2.charAt(i3)) {
                                int i4 = i3 + 1;
                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i3, i4, 0);
                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i3, i4, 0);
                            } else {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i3, i3 + 1, 0);
                            }
                        }
                        int ceil = (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(valueOf));
                        this.outCounter = new StaticLayout(spannableStringBuilder, FilterTabsView.this.textCounterPaint, ceil, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.stableCounter = new StaticLayout(spannableStringBuilder3, FilterTabsView.this.textCounterPaint, ceil, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.inCounter = new StaticLayout(spannableStringBuilder2, FilterTabsView.this.textCounterPaint, ceil, Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    } else {
                        this.outCounter = new StaticLayout(valueOf, FilterTabsView.this.textCounterPaint, (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(valueOf)), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                        this.inCounter = new StaticLayout(valueOf2, FilterTabsView.this.textCounterPaint, (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(valueOf2)), Layout.Alignment.ALIGN_CENTER, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    }
                }
                z = true;
            }
            if (this.currentTab.counter <= 0 || !FilterTabsView.this.isNeedCounter()) {
                i = 0;
                str = null;
            } else {
                str = String.format("%d", Integer.valueOf(this.currentTab.counter));
                i = Math.max(AndroidUtilities.m107dp(10), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(str))) + AndroidUtilities.m107dp(10);
            }
            int m108dp = this.currentTab.titleWidth + (i != 0 ? i + AndroidUtilities.m108dp((FilterTabsView.this.customMarginAndCount != 0 ? FilterTabsView.this.customMarginAndCount : 6) * (str != null ? 1.0f : FilterTabsView.this.editingStartAnimationProgress)) : 0);
            float f = this.lastTextX;
            if ((getMeasuredWidth() - m108dp) / 2 != f) {
                this.animateTextX = true;
                this.animateFromTextX = f;
                z = true;
            }
            String str4 = this.lastTitle;
            if (str4 != null && !this.currentTab.title.equals(str4)) {
                if (this.lastTitle.length() > this.currentTab.title.length()) {
                    str2 = this.lastTitle;
                    str3 = this.currentTab.title;
                    z2 = true;
                } else {
                    str2 = this.currentTab.title;
                    str3 = this.lastTitle;
                    z2 = false;
                }
                int indexOf = str2.indexOf(str3);
                float f2 = BitmapDescriptorFactory.HUE_RED;
                if (indexOf >= 0) {
                    CharSequence replaceEmoji = Emoji.replaceEmoji((CharSequence) str2, FilterTabsView.this.textPaint.getFontMetricsInt(), AndroidUtilities.m107dp(15), false);
                    SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(replaceEmoji);
                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(replaceEmoji);
                    if (indexOf != 0) {
                        spannableStringBuilder5.setSpan(new EmptyStubSpan(), 0, indexOf, 0);
                    }
                    if (str3.length() + indexOf != str2.length()) {
                        spannableStringBuilder5.setSpan(new EmptyStubSpan(), str3.length() + indexOf, str2.length(), 0);
                    }
                    spannableStringBuilder4.setSpan(new EmptyStubSpan(), indexOf, str3.length() + indexOf, 0);
                    this.titleAnimateInLayout = new StaticLayout(spannableStringBuilder4, FilterTabsView.this.textPaint, AndroidUtilities.m107dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder5, FilterTabsView.this.textPaint, AndroidUtilities.m107dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleAnimateStableLayout = staticLayout;
                    this.animateTextChange = true;
                    this.animateTextChangeOut = z2;
                    if (indexOf != 0) {
                        f2 = -staticLayout.getPrimaryHorizontal(indexOf);
                    }
                    this.titleXOffset = f2;
                    this.animateFromTitleWidth = this.lastTitleWidth;
                    this.titleAnimateOutLayout = null;
                } else {
                    this.titleAnimateInLayout = new StaticLayout(this.currentTab.title, FilterTabsView.this.textPaint, AndroidUtilities.m107dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleAnimateOutLayout = new StaticLayout(this.lastTitle, FilterTabsView.this.textPaint, AndroidUtilities.m107dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleAnimateStableLayout = null;
                    this.animateTextChange = true;
                    this.titleXOffset = BitmapDescriptorFactory.HUE_RED;
                    this.animateFromTitleWidth = this.lastTitleWidth;
                }
                z = true;
            }
            if (m108dp == this.lastTabWidth && getMeasuredWidth() == this.lastWidth) {
                return z;
            }
            this.animateTabWidth = true;
            this.animateFromTabWidth = this.lastTabWidth;
            this.animateFromWidth = this.lastWidth;
            return true;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setSelected((this.currentTab == null || FilterTabsView.this.selectedTabId == -1 || this.currentTab.f1851id != FilterTabsView.this.selectedTabId) ? false : true);
            accessibilityNodeInfo.addAction(16);
            if (Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccDescrOpenMenu2", C3632R.string.AccDescrOpenMenu2)));
            } else {
                accessibilityNodeInfo.addAction(32);
            }
            if (this.currentTab != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.currentTab.title);
                Tab tab = this.currentTab;
                int i = tab != null ? tab.counter : 0;
                if (i > 0) {
                    sb.append("\n");
                    sb.append(LocaleController.formatPluralString("AccDescrUnreadCount", i, new Object[0]));
                }
                accessibilityNodeInfo.setContentDescription(sb);
            }
        }

        public void clearTransitionParams() {
            this.animateChange = false;
            this.animateTabCounter = false;
            this.animateTextChange = false;
            this.animateTextX = false;
            this.animateTabWidth = false;
            this.changeAnimator = null;
            invalidate();
        }

        public void shakeLockIcon(final float f, final int i) {
            if (i == 6) {
                this.locIconXOffset = BitmapDescriptorFactory.HUE_RED;
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(f));
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FilterTabsView$TabView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    FilterTabsView.TabView.this.lambda$shakeLockIcon$0(valueAnimator);
                }
            });
            animatorSet.playTogether(ofFloat);
            animatorSet.setDuration(50L);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.FilterTabsView.TabView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabView tabView = TabView.this;
                    int i2 = i;
                    tabView.shakeLockIcon(i2 == 5 ? 0.0f : -f, i2 + 1);
                    TabView.this.locIconXOffset = BitmapDescriptorFactory.HUE_RED;
                    TabView.this.invalidate();
                }
            });
            animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shakeLockIcon$0(ValueAnimator valueAnimator) {
            this.locIconXOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    public FilterTabsView(Context context, TabMode tabMode, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context, sizeNotifierFrameLayout);
        float[] reversedArray;
        this.textPaint = new TextPaint(1);
        this.textCounterPaint = new TextPaint(1);
        this.deletePaint = new TextPaint(1);
        this.counterPaint = new Paint(1);
        this.tabs = new ArrayList<>();
        this.selectedTabId = -1;
        this.manualScrollingToPosition = -1;
        this.manualScrollingToId = -1;
        this.scrollingToChild = -1;
        this.tabLineColorKey = Theme.key_actionBarTabLine;
        this.activeTextColorKey = Theme.key_actionBarTabActiveText;
        this.unactiveTextColorKey = Theme.key_actionBarTabUnactiveText;
        this.selectorColorKey = Theme.key_actionBarTabSelector;
        this.backgroundColorKey = Theme.key_actionBarDefault;
        this.aTabLineColorKey = -1;
        this.aActiveTextColorKey = -1;
        this.aUnactiveTextColorKey = -1;
        this.aBackgroundColorKey = -1;
        this.interpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.positionToId = new SparseIntArray(5);
        this.positionToStableId = new SparseIntArray(5);
        this.idToPosition = new SparseIntArray(5);
        this.positionToWidth = new SparseIntArray(5);
        this.positionToX = new SparseIntArray(5);
        this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Components.FilterTabsView.1
            @Override // java.lang.Runnable
            public void run() {
                if (FilterTabsView.this.animatingIndicator) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - FilterTabsView.this.lastAnimationTime;
                    if (elapsedRealtime > 17) {
                        elapsedRealtime = 17;
                    }
                    FilterTabsView.access$3416(FilterTabsView.this, ((float) elapsedRealtime) / 200.0f);
                    FilterTabsView filterTabsView = FilterTabsView.this;
                    filterTabsView.setAnimationIdicatorProgress(filterTabsView.interpolator.getInterpolation(FilterTabsView.this.animationTime));
                    if (FilterTabsView.this.animationTime > 1.0f) {
                        FilterTabsView.this.animationTime = 1.0f;
                    }
                    if (FilterTabsView.this.animationTime < 1.0f) {
                        AndroidUtilities.runOnUIThread(FilterTabsView.this.animationRunnable);
                        return;
                    }
                    FilterTabsView.this.animatingIndicator = false;
                    FilterTabsView.this.setEnabled(true);
                    if (FilterTabsView.this.delegate != null) {
                        FilterTabsView.this.delegate.onPageScrolled(1.0f);
                    }
                }
            }
        };
        this.COLORS = new AnimationProperties.FloatProperty<FilterTabsView>("animationValue") { // from class: org.telegram.ui.Components.FilterTabsView.2
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
            public void setValue(FilterTabsView filterTabsView, float f) {
                FilterTabsView.this.animationValue = f;
                FilterTabsView.this.selectorDrawable.setColor(ColorUtils.blendARGB(Theme.getColor(FilterTabsView.this.tabLineColorKey), Theme.getColor(FilterTabsView.this.aTabLineColorKey), f));
                if (FilterTabsView.this.aBackgroundColorKey != -1 && FilterTabsView.this.isWithBackground()) {
                    filterTabsView.setBackgroundColor(ColorUtils.blendARGB(Theme.getColor(FilterTabsView.this.backgroundColorKey), Theme.getColor(FilterTabsView.this.aBackgroundColorKey), f));
                }
                FilterTabsView.this.listView.invalidateViews();
                FilterTabsView.this.listView.invalidate();
                filterTabsView.invalidate();
            }

            @Override // android.util.Property
            public Float get(FilterTabsView filterTabsView) {
                return Float.valueOf(FilterTabsView.this.animationValue);
            }
        };
        this.mode = tabMode;
        updateCustomTabWidth();
        if (tabMode == TabMode.ARCHIVE) {
            this.backgroundColorKey = Theme.key_actionBarDefaultArchived;
            this.selectorColorKey = Theme.key_actionBarDefaultArchivedSelector;
        }
        updateBackground();
        this.textCounterPaint.setTextSize(AndroidUtilities.m107dp(13));
        this.textCounterPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textPaint.setTextSize(AndroidUtilities.m107dp(15));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.deletePaint.setStyle(Paint.Style.STROKE);
        this.deletePaint.setStrokeCap(Paint.Cap.ROUND);
        this.deletePaint.setStrokeWidth(AndroidUtilities.m108dp(1.5f));
        this.selectorDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
        float dpf2 = AndroidUtilities.dpf2(3.0f);
        GradientDrawable gradientDrawable = this.selectorDrawable;
        float[] fArr = {dpf2, dpf2, dpf2, dpf2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
        this.lineCornerRadiiForTop = fArr;
        gradientDrawable.setCornerRadii(fArr);
        reversedArray = ArraysKt___ArraysKt.reversedArray(fArr);
        this.lineCornerRadiiForBottom = reversedArray;
        updateLineCornerRadii();
        this.selectorDrawable.setColor(Theme.getColor(this.tabLineColorKey));
        setHorizontalScrollBarEnabled(false);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.FilterTabsView.3
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                FilterTabsView.this.invalidate();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView
            public boolean allowSelectChildAtPosition(View view) {
                return FilterTabsView.this.isEnabled() && FilterTabsView.this.delegate.canPerformActions();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView
            public boolean canHighlightChildAt(View view, float f, float f2) {
                if (FilterTabsView.this.isEditing) {
                    TabView tabView = (TabView) view;
                    float m107dp = AndroidUtilities.m107dp(FilterTabsView.this.customMarginAndCount != 0 ? FilterTabsView.this.customMarginAndCount : 6);
                    if (tabView.rect.left - m107dp < f && tabView.rect.right + m107dp > f) {
                        return false;
                    }
                }
                return super.canHighlightChildAt(view, f, f2);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setClipChildren(false);
        C50644 c50644 = new C50644();
        this.itemAnimator = c50644;
        c50644.setDelayAnimations(false);
        this.listView.setItemAnimator(this.itemAnimator);
        this.listView.setSelectorType(8);
        this.listView.setSelectorRadius(6);
        this.listView.setSelectorDrawableColor(Theme.getColor(this.selectorColorKey));
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false) { // from class: org.telegram.ui.Components.FilterTabsView.5
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.FilterTabsView.5.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                    protected void onTargetFound(View view, RecyclerView.State state2, RecyclerView.SmoothScroller.Action action) {
                        int calculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
                        if (calculateDxToMakeVisible > 0 || (calculateDxToMakeVisible == 0 && view.getLeft() - AndroidUtilities.m107dp(21) < 0)) {
                            calculateDxToMakeVisible += AndroidUtilities.m107dp(60);
                        } else if (calculateDxToMakeVisible < 0 || (calculateDxToMakeVisible == 0 && view.getRight() + AndroidUtilities.m107dp(21) > FilterTabsView.this.getMeasuredWidth())) {
                            calculateDxToMakeVisible -= AndroidUtilities.m107dp(60);
                        }
                        int calculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
                        int max = Math.max(180, calculateTimeForDeceleration((int) Math.sqrt((calculateDxToMakeVisible * calculateDxToMakeVisible) + (calculateDyToMakeVisible * calculateDyToMakeVisible))));
                        if (max > 0) {
                            action.update(-calculateDxToMakeVisible, -calculateDyToMakeVisible, max, this.mDecelerateInterpolator);
                        }
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                startSmoothScroll(linearSmoothScroller);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
                if (FilterTabsView.this.delegate.isTabMenuVisible()) {
                    i = 0;
                }
                return super.scrollHorizontallyBy(i, recycler, state);
            }
        };
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(this.listView);
        this.listView.setPadding(AndroidUtilities.m107dp(7), 0, AndroidUtilities.m107dp(7), 0);
        this.listView.setClipToPadding(false);
        this.listView.setDrawSelectorBehind(true);
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        listAdapter.setHasStableIds(true);
        this.listView.setAdapter(this.adapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                FilterTabsView.this.lambda$new$0(view, i, f, f2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean lambda$new$1;
                lambda$new$1 = FilterTabsView.this.lambda$new$1(view, i);
                return lambda$new$1;
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.FilterTabsView.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                FilterTabsView.this.invalidate();
            }
        });
        addView(this.listView, LayoutHelper.createFrame(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.FilterTabsView$4 */
    /* loaded from: classes6.dex */
    public class C50644 extends DefaultItemAnimator {
        C50644() {
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void runPendingAnimations() {
            boolean z = !this.mPendingRemovals.isEmpty();
            boolean z2 = !this.mPendingMoves.isEmpty();
            boolean z3 = !this.mPendingChanges.isEmpty();
            boolean z4 = !this.mPendingAdditions.isEmpty();
            if (z || z2 || z4 || z3) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.1f);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FilterTabsView$4$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        FilterTabsView.C50644.this.lambda$runPendingAnimations$0(valueAnimator);
                    }
                });
                ofFloat.setDuration(getMoveDuration());
                ofFloat.start();
            }
            super.runPendingAnimations();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$runPendingAnimations$0(ValueAnimator valueAnimator) {
            FilterTabsView.this.listView.invalidate();
            FilterTabsView.this.invalidate();
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
        public boolean animateMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                int translationX = i + ((int) view.getTranslationX());
                int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
                resetAnimation(viewHolder);
                int i5 = i3 - translationX;
                int i6 = i4 - translationY;
                if (i5 != 0) {
                    view.setTranslationX(-i5);
                }
                if (i6 != 0) {
                    view.setTranslationY(-i6);
                }
                TabView tabView = (TabView) viewHolder.itemView;
                boolean animateChange = tabView.animateChange();
                if (animateChange) {
                    tabView.changeProgress = BitmapDescriptorFactory.HUE_RED;
                    tabView.animateChange = true;
                    FilterTabsView.this.invalidate();
                }
                if (i5 == 0 && i6 == 0 && !animateChange) {
                    dispatchMoveFinished(viewHolder);
                    return false;
                }
                this.mPendingMoves.add(new DefaultItemAnimator.MoveInfo(viewHolder, translationX, translationY, i3, i4));
                return true;
            }
            return super.animateMove(viewHolder, itemHolderInfo, i, i2, i3, i4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void animateMoveImpl(RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo) {
            super.animateMoveImpl(viewHolder, moveInfo);
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                final TabView tabView = (TabView) view;
                if (tabView.animateChange) {
                    ValueAnimator valueAnimator = tabView.changeAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.removeAllListeners();
                        tabView.changeAnimator.removeAllUpdateListeners();
                        tabView.changeAnimator.cancel();
                    }
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FilterTabsView$4$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            FilterTabsView.C50644.lambda$animateMoveImpl$1(FilterTabsView.TabView.this, valueAnimator2);
                        }
                    });
                    ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Components.FilterTabsView.4.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            tabView.clearTransitionParams();
                        }
                    });
                    tabView.changeAnimator = ofFloat;
                    ofFloat.setDuration(getMoveDuration());
                    ofFloat.start();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$animateMoveImpl$1(TabView tabView, ValueAnimator valueAnimator) {
            tabView.changeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            tabView.invalidate();
        }

        @Override // androidx.recyclerview.widget.SimpleItemAnimator
        public void onMoveFinished(RecyclerView.ViewHolder viewHolder) {
            super.onMoveFinished(viewHolder);
            viewHolder.itemView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                ((TabView) view).clearTransitionParams();
            }
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void endAnimation(RecyclerView.ViewHolder viewHolder) {
            super.endAnimation(viewHolder);
            viewHolder.itemView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                ((TabView) view).clearTransitionParams();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
        FilterTabsViewDelegate filterTabsViewDelegate;
        if (this.delegate.canPerformActions()) {
            TabView tabView = (TabView) view;
            if (this.isEditing) {
                if (tabView.currentTab.isAllowEditing()) {
                    if (isAllChatsTabEnabled() && i == 0) {
                        return;
                    }
                    int i2 = this.customMarginAndCount;
                    if (i2 == 0) {
                        i2 = 6;
                    }
                    float m107dp = AndroidUtilities.m107dp(i2);
                    if (tabView.rect.left - m107dp >= f || tabView.rect.right + m107dp <= f) {
                        return;
                    }
                    this.delegate.onDeletePressed(tabView.currentTab.f1851id);
                }
            } else if (i != this.currentPosition || (filterTabsViewDelegate = this.delegate) == null) {
                scrollToTab(tabView.currentTab, i);
            } else {
                filterTabsViewDelegate.onSamePageSelected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i) {
        if (this.delegate.canPerformActions() && !this.isEditing) {
            if (this.delegate.didSelectTab((TabView) view, i == this.currentPosition)) {
                this.listView.hideSelector(true);
                return true;
            }
        }
        return false;
    }

    public void setDelegate(FilterTabsViewDelegate filterTabsViewDelegate) {
        this.delegate = filterTabsViewDelegate;
    }

    public boolean isAnimatingIndicator() {
        return this.animatingIndicator;
    }

    public void stopAnimatingIndicator() {
        this.animatingIndicator = false;
    }

    public void scrollToTab(Tab tab, int i) {
        if (tab.isLocked) {
            FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
            if (filterTabsViewDelegate != null) {
                filterTabsViewDelegate.onPageSelected(tab, false);
                return;
            }
            return;
        }
        int i2 = this.currentPosition;
        boolean z = i2 < i;
        this.scrollingToChild = -1;
        this.previousPosition = i2;
        this.previousId = this.selectedTabId;
        this.currentPosition = i;
        this.selectedTabId = tab.f1851id;
        if (this.animatingIndicator) {
            AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
            this.animatingIndicator = false;
        }
        this.animationTime = BitmapDescriptorFactory.HUE_RED;
        this.animatingIndicatorProgress = BitmapDescriptorFactory.HUE_RED;
        this.animatingIndicator = true;
        setEnabled(false);
        AndroidUtilities.runOnUIThread(this.animationRunnable, 16L);
        FilterTabsViewDelegate filterTabsViewDelegate2 = this.delegate;
        if (filterTabsViewDelegate2 != null) {
            filterTabsViewDelegate2.onPageSelected(tab, z);
            this.delegate.onTabSelected(tab.f1851id);
            notifySwipeProgressChanged();
        }
        scrollToChild(i);
    }

    public void selectFirstTab() {
        if (this.tabs.isEmpty()) {
            return;
        }
        scrollToTab(this.tabs.get(0), 0);
    }

    public boolean isFirstTab() {
        return this.currentPosition <= 0;
    }

    public void selectLastTab() {
        if (this.tabs.isEmpty()) {
            return;
        }
        ArrayList<Tab> arrayList = this.tabs;
        scrollToTab(arrayList.get(arrayList.size() - 1), this.tabs.size() - 1);
    }

    public void setAnimationIdicatorProgress(float f) {
        this.animatingIndicatorProgress = f;
        notifySwipeProgressChanged();
        this.listView.invalidateViews();
        invalidate();
        FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
        if (filterTabsViewDelegate != null) {
            filterTabsViewDelegate.onPageScrolled(f);
        }
    }

    public Drawable getSelectorDrawable() {
        return this.selectorDrawable;
    }

    public RecyclerListView getTabsContainer() {
        return this.listView;
    }

    public int getNextPageId(boolean z) {
        return this.positionToId.get(this.currentPosition + (z ? 1 : -1), -1);
    }

    public void removeTabs() {
        this.tabs.clear();
        this.positionToId.clear();
        this.idToPosition.clear();
        this.positionToWidth.clear();
        this.positionToX.clear();
        this.allTabsWidth = 0;
    }

    public boolean hasTab(int i) {
        return this.idToPosition.get(i, -1) != -1;
    }

    public void resetTabId() {
        this.selectedTabId = -1;
    }

    public void addTab(int i, int i2, String str, boolean z, boolean z2, int i3, int i4) {
        int size = this.tabs.size();
        if (size == 0 && this.selectedTabId == -1) {
            this.selectedTabId = i;
        }
        this.positionToId.put(size, i);
        this.positionToStableId.put(size, i2);
        this.idToPosition.put(i, size);
        int i5 = this.selectedTabId;
        if (i5 != -1 && i5 == i) {
            this.currentPosition = size;
        }
        Tab tab = (i3 == 0 || i4 == 0) ? new Tab(i, str) : new Tab(i, AppCompatResources.getDrawable(getContext(), i3).mutate(), AppCompatResources.getDrawable(getContext(), i4).mutate());
        tab.isDefault = z;
        tab.isLocked = z2;
        int i6 = this.allTabsWidth;
        int width = tab.getWidth(true);
        int i7 = this.customTabDefaultMargin;
        if (i7 == 0) {
            i7 = 32;
        }
        int m107dp = i6 + width + AndroidUtilities.m107dp(i7);
        this.allTabsWidth = m107dp;
        this.allTabsWidth = m107dp - tab.getNoCounterMargin(false);
        this.tabs.add(tab);
    }

    public int getTabsCount() {
        return this.tabs.size();
    }

    public Tab getTab(int i) {
        if (i < 0 || i >= getTabsCount()) {
            return null;
        }
        return this.tabs.get(i);
    }

    public void finishAddingTabs(boolean z) {
        this.listView.setItemAnimator(z ? this.itemAnimator : null);
        this.adapter.notifyDataSetChanged();
    }

    public void animateColorsTo(int i, int i2, int i3, int i4, int i5) {
        AnimatorSet animatorSet = this.colorChangeAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.aTabLineColorKey = i;
        this.aActiveTextColorKey = i2;
        this.aUnactiveTextColorKey = i3;
        this.aBackgroundColorKey = i5;
        this.selectorColorKey = i4;
        this.listView.setSelectorDrawableColor(Theme.getColor(i4));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.colorChangeAnimator = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this, this.COLORS, BitmapDescriptorFactory.HUE_RED, 1.0f));
        this.colorChangeAnimator.setDuration(200L);
        this.colorChangeAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.FilterTabsView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FilterTabsView filterTabsView = FilterTabsView.this;
                filterTabsView.tabLineColorKey = filterTabsView.aTabLineColorKey;
                FilterTabsView filterTabsView2 = FilterTabsView.this;
                filterTabsView2.backgroundColorKey = filterTabsView2.aBackgroundColorKey;
                FilterTabsView filterTabsView3 = FilterTabsView.this;
                filterTabsView3.activeTextColorKey = filterTabsView3.aActiveTextColorKey;
                FilterTabsView filterTabsView4 = FilterTabsView.this;
                filterTabsView4.unactiveTextColorKey = filterTabsView4.aUnactiveTextColorKey;
                FilterTabsView.this.aTabLineColorKey = -1;
                FilterTabsView.this.aActiveTextColorKey = -1;
                FilterTabsView.this.aUnactiveTextColorKey = -1;
                FilterTabsView.this.aBackgroundColorKey = -1;
            }
        });
        this.colorChangeAnimator.start();
    }

    public int getCurrentTabId() {
        return this.selectedTabId;
    }

    public int getFirstTabId() {
        if (this.positionToId.size() > 0) {
            return this.positionToId.valueAt(0);
        }
        return 0;
    }

    public int getSelectorColorKey() {
        return this.selectorColorKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabsWidths() {
        this.positionToX.clear();
        this.positionToWidth.clear();
        int m107dp = AndroidUtilities.m107dp(7);
        int size = this.tabs.size();
        for (int i = 0; i < size; i++) {
            int width = this.tabs.get(i).getWidth(false);
            this.positionToWidth.put(i, width);
            this.positionToX.put(i, (this.additionalTabWidth / 2) + m107dp);
            int i2 = this.customTabDefaultMargin;
            if (i2 == 0) {
                i2 = 32;
            }
            m107dp = (m107dp + ((width + AndroidUtilities.m107dp(i2)) + this.additionalTabWidth)) - this.tabs.get(i).getNoCounterMargin(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0122  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r12, android.view.View r13, long r14) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.FilterTabsView.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.tabs.isEmpty()) {
            int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.m107dp(7)) - AndroidUtilities.m107dp(7);
            Tab findDefaultTab = findDefaultTab();
            if (findDefaultTab == null) {
                findDefaultTab = this.tabs.get(0);
            }
            if (findDefaultTab == null) {
                super.onMeasure(i, i2);
                return;
            }
            int i3 = C3632R.string.FilterAllChats;
            String str = "FilterAllChats";
            findDefaultTab.setTitle(LocaleController.getString("FilterAllChats", i3));
            int width = findDefaultTab.getWidth(false);
            if (this.allTabsWidth > size) {
                i3 = C3632R.string.FilterAllChatsShort;
                str = "FilterAllChatsShort";
            }
            findDefaultTab.setTitle(LocaleController.getString(str, i3));
            int width2 = (this.allTabsWidth - width) + findDefaultTab.getWidth(false);
            int i4 = this.additionalTabWidth;
            int size2 = width2 < size ? (size - width2) / this.tabs.size() : 0;
            this.additionalTabWidth = size2;
            if (i4 != size2) {
                this.ignoreLayout = true;
                RecyclerView.ItemAnimator itemAnimator = this.listView.getItemAnimator();
                this.listView.setItemAnimator(null);
                this.adapter.notifyDataSetChanged();
                this.listView.setItemAnimator(itemAnimator);
                this.ignoreLayout = false;
            }
            updateTabsWidths();
            this.invalidated = false;
        }
        super.onMeasure(i, i2);
    }

    private Tab findDefaultTab() {
        for (int i = 0; i < this.tabs.size(); i++) {
            if (this.tabs.get(i).isDefault) {
                return this.tabs.get(i);
            }
        }
        return null;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    private void scrollToChild(int i) {
        if (this.tabs.isEmpty() || this.scrollingToChild == i || i < 0 || i >= this.tabs.size()) {
            return;
        }
        this.scrollingToChild = i;
        this.listView.smoothScrollToPosition(i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        if (this.prevLayoutWidth != i5) {
            this.prevLayoutWidth = i5;
            this.scrollingToChild = -1;
            if (this.animatingIndicator) {
                AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                this.animatingIndicator = false;
                setEnabled(true);
                FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
                if (filterTabsViewDelegate != null) {
                    filterTabsViewDelegate.onPageScrolled(1.0f);
                }
            }
        }
    }

    public void selectTabWithId(int i, float f) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 < 0) {
            return;
        }
        if (f < BitmapDescriptorFactory.HUE_RED) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.manualScrollingToPosition = i2;
            this.manualScrollingToId = i;
        } else {
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
        }
        this.animatingIndicatorProgress = f;
        notifySwipeProgressChanged();
        this.listView.invalidateViews();
        invalidate();
        scrollToChild(i2);
        if (f >= 1.0f) {
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
            this.currentPosition = i2;
            if (this.selectedTabId != i) {
                this.delegate.onTabSelected(i);
            }
            this.selectedTabId = i;
        }
    }

    public boolean isEditing() {
        return this.isEditing;
    }

    public void setIsEditing(boolean z) {
        this.isEditing = z;
        this.editingForwardAnimation = true;
        this.listView.invalidateViews();
        invalidate();
        if (this.isEditing) {
            int size = this.tabs.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Tab tab = this.tabs.get(i);
                if (tab != null && tab.isAllowEditing()) {
                    this.listView.smoothScrollToPosition(i);
                    break;
                }
                i++;
            }
        }
        if (this.isEditing || !this.orderChanged) {
            return;
        }
        MessagesStorage.getInstance(UserConfig.selectedAccount).saveDialogFiltersOrder();
        TLRPC$TL_messages_updateDialogFiltersOrder tLRPC$TL_messages_updateDialogFiltersOrder = new TLRPC$TL_messages_updateDialogFiltersOrder();
        ArrayList<MessagesController.DialogFilter> dialogFilters = MessagesController.getInstance(UserConfig.selectedAccount).getDialogFilters();
        int size2 = dialogFilters.size();
        for (int i2 = 0; i2 < size2; i2++) {
            MessagesController.DialogFilter dialogFilter = dialogFilters.get(i2);
            if (dialogFilter.isDefault()) {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(0);
            } else {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(dialogFilter.f1538id));
            }
        }
        MessagesController.getInstance(UserConfig.selectedAccount).lockFiltersInternal();
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_messages_updateDialogFiltersOrder, new RequestDelegate() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilterTabsView.lambda$setIsEditing$2(tLObject, tLRPC$TL_error);
            }
        });
        this.orderChanged = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkTabsCounter() {
        /*
            r9 = this;
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r0 = r9.tabs
            int r0 = r0.size()
            r1 = 0
            r2 = r1
            r3 = r2
        L9:
            r4 = 1
            if (r2 >= r0) goto L92
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r5 = r9.tabs
            java.lang.Object r5 = r5.get(r2)
            org.telegram.ui.Components.FilterTabsView$Tab r5 = (org.telegram.p043ui.Components.FilterTabsView.Tab) r5
            int r6 = r5.counter
            org.telegram.ui.Components.FilterTabsView$FilterTabsViewDelegate r7 = r9.delegate
            int r8 = r5.f1851id
            int r7 = r7.getTabCounter(r8)
            if (r6 == r7) goto L8e
            org.telegram.ui.Components.FilterTabsView$FilterTabsViewDelegate r6 = r9.delegate
            int r7 = r5.f1851id
            int r6 = r6.getTabCounter(r7)
            if (r6 >= 0) goto L2b
            goto L8e
        L2b:
            android.util.SparseIntArray r3 = r9.positionToWidth
            int r3 = r3.get(r2)
            int r5 = r5.getWidth(r4)
            if (r3 != r5) goto L3e
            boolean r3 = r9.invalidated
            if (r3 == 0) goto L3c
            goto L3e
        L3c:
            r3 = r4
            goto L8e
        L3e:
            r9.invalidated = r4
            r9.requestLayout()
            r9.allTabsWidth = r1
            org.telegram.ui.Components.FilterTabsView$Tab r2 = r9.findDefaultTab()
            if (r2 == 0) goto L5a
            org.telegram.ui.Components.FilterTabsView$Tab r2 = r9.findDefaultTab()
            int r3 = org.telegram.messenger.C3632R.string.FilterAllChats
            java.lang.String r5 = "FilterAllChats"
            java.lang.String r3 = org.telegram.messenger.LocaleController.getString(r5, r3)
            r2.setTitle(r3)
        L5a:
            r2 = r1
        L5b:
            if (r2 >= r0) goto L8c
            int r3 = r9.allTabsWidth
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r5 = r9.tabs
            java.lang.Object r5 = r5.get(r2)
            org.telegram.ui.Components.FilterTabsView$Tab r5 = (org.telegram.p043ui.Components.FilterTabsView.Tab) r5
            int r5 = r5.getWidth(r4)
            int r6 = r9.customTabDefaultMargin
            if (r6 == 0) goto L70
            goto L72
        L70:
            r6 = 32
        L72:
            int r6 = org.telegram.messenger.AndroidUtilities.m107dp(r6)
            int r5 = r5 + r6
            int r3 = r3 + r5
            r9.allTabsWidth = r3
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r5 = r9.tabs
            java.lang.Object r5 = r5.get(r2)
            org.telegram.ui.Components.FilterTabsView$Tab r5 = (org.telegram.p043ui.Components.FilterTabsView.Tab) r5
            int r5 = r5.getNoCounterMargin(r1)
            int r3 = r3 - r5
            r9.allTabsWidth = r3
            int r2 = r2 + 1
            goto L5b
        L8c:
            r3 = r4
            goto L92
        L8e:
            int r2 = r2 + 1
            goto L9
        L92:
            if (r3 == 0) goto La0
            org.telegram.ui.Components.RecyclerListView r0 = r9.listView
            androidx.recyclerview.widget.DefaultItemAnimator r1 = r9.itemAnimator
            r0.setItemAnimator(r1)
            org.telegram.ui.Components.FilterTabsView$ListAdapter r0 = r9.adapter
            r0.notifyDataSetChanged()
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.FilterTabsView.checkTabsCounter():void");
    }

    public void notifyTabCounterChanged(int i) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 < 0 || i2 >= this.tabs.size()) {
            return;
        }
        Tab tab = this.tabs.get(i2);
        if (tab.counter == this.delegate.getTabCounter(tab.f1851id) || this.delegate.getTabCounter(tab.f1851id) < 0) {
            return;
        }
        this.listView.invalidateViews();
        if (this.positionToWidth.get(i2) != tab.getWidth(true) || this.invalidated) {
            this.invalidated = true;
            requestLayout();
            this.listView.setItemAnimator(this.itemAnimator);
            this.adapter.notifyDataSetChanged();
            this.allTabsWidth = 0;
            if (findDefaultTab() != null) {
                findDefaultTab().setTitle(LocaleController.getString("FilterAllChats", C3632R.string.FilterAllChats));
            }
            int size = this.tabs.size();
            for (int i3 = 0; i3 < size; i3++) {
                int i4 = this.allTabsWidth;
                int width = this.tabs.get(i3).getWidth(true);
                int i5 = this.customTabDefaultMargin;
                if (i5 == 0) {
                    i5 = 32;
                }
                int m107dp = i4 + width + AndroidUtilities.m107dp(i5);
                this.allTabsWidth = m107dp;
                this.allTabsWidth = m107dp - this.tabs.get(i3).getNoCounterMargin(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.FilterTabsView$ListAdapter */
    /* loaded from: classes6.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FilterTabsView.this.tabs.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return FilterTabsView.this.positionToStableId.get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(new TabView(this.mContext));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TabView tabView = (TabView) viewHolder.itemView;
            int id = tabView.currentTab != null ? tabView.getId() : -1;
            tabView.setTab((Tab) FilterTabsView.this.tabs.get(i), i);
            if (id != tabView.getId()) {
                tabView.progressToLocked = tabView.currentTab.isLocked ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
        }

        public void swapElements(int i, int i2) {
            int i3;
            int i4;
            int size = FilterTabsView.this.tabs.size();
            if (FilterTabsView.this.isAllChatsTabEnabled()) {
                i3 = i;
                i4 = i2;
            } else {
                i3 = i + 1;
                i4 = i2 + 1;
                size++;
            }
            int activeSortingTabsCount = FiltersController.getInstance(UserConfig.selectedAccount).getActiveSortingTabsCount(false);
            int i5 = size - activeSortingTabsCount;
            if (!FilterTabsView.this.isFoldersFirst()) {
                i3 -= activeSortingTabsCount;
                i4 -= activeSortingTabsCount;
            }
            if (i3 < 0 || i4 < 0 || i3 >= i5 || i4 >= i5 || i3 == 0 || i4 == 0) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = MessagesController.getInstance(UserConfig.selectedAccount).getDialogFilters();
            MessagesController.DialogFilter dialogFilter = dialogFilters.get(i3);
            MessagesController.DialogFilter dialogFilter2 = dialogFilters.get(i4);
            int i6 = dialogFilter.order;
            dialogFilter.order = dialogFilter2.order;
            dialogFilter2.order = i6;
            dialogFilters.set(i3, dialogFilter2);
            dialogFilters.set(i4, dialogFilter);
            Tab tab = (Tab) FilterTabsView.this.tabs.get(i);
            Tab tab2 = (Tab) FilterTabsView.this.tabs.get(i2);
            int i7 = tab.f1851id;
            tab.f1851id = tab2.f1851id;
            tab2.f1851id = i7;
            int i8 = FilterTabsView.this.positionToStableId.get(i);
            FilterTabsView.this.positionToStableId.put(i, FilterTabsView.this.positionToStableId.get(i2));
            FilterTabsView.this.positionToStableId.put(i2, i8);
            FilterTabsView.this.delegate.onPageReorder(tab2.f1851id, tab.f1851id);
            if (FilterTabsView.this.currentPosition == i) {
                FilterTabsView.this.currentPosition = i2;
                FilterTabsView.this.selectedTabId = tab.f1851id;
            } else if (FilterTabsView.this.currentPosition == i2) {
                FilterTabsView.this.currentPosition = i;
                FilterTabsView.this.selectedTabId = tab2.f1851id;
            }
            if (FilterTabsView.this.previousPosition == i) {
                FilterTabsView.this.previousPosition = i2;
                FilterTabsView.this.previousId = tab.f1851id;
            } else if (FilterTabsView.this.previousPosition == i2) {
                FilterTabsView.this.previousPosition = i;
                FilterTabsView.this.previousId = tab2.f1851id;
            }
            FilterTabsView.this.tabs.set(i, tab2);
            FilterTabsView.this.tabs.set(i2, tab);
            FilterTabsView.this.updateTabsWidths();
            FilterTabsView.this.orderChanged = true;
            FilterTabsView.this.listView.setItemAnimator(FilterTabsView.this.itemAnimator);
            notifyItemMoved(i, i2);
        }

        public void moveElementToStart(int i) {
            int size = FilterTabsView.this.tabs.size();
            if (i < 0 || i >= size) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = MessagesController.getInstance(UserConfig.selectedAccount).getDialogFilters();
            int i2 = FilterTabsView.this.positionToStableId.get(i);
            int i3 = ((Tab) FilterTabsView.this.tabs.get(i)).f1851id;
            for (int i4 = i - 1; i4 >= 0; i4--) {
                FilterTabsView.this.positionToStableId.put(i4 + 1, FilterTabsView.this.positionToStableId.get(i4));
            }
            MessagesController.DialogFilter remove = dialogFilters.remove(i);
            remove.order = 0;
            dialogFilters.add(0, remove);
            FilterTabsView.this.positionToStableId.put(0, i2);
            FilterTabsView.this.tabs.add(0, (Tab) FilterTabsView.this.tabs.remove(i));
            ((Tab) FilterTabsView.this.tabs.get(0)).f1851id = i3;
            for (int i5 = 0; i5 <= i; i5++) {
                ((Tab) FilterTabsView.this.tabs.get(i5)).f1851id = i5;
                dialogFilters.get(i5).order = i5;
            }
            int i6 = 0;
            while (i6 <= i) {
                if (FilterTabsView.this.currentPosition == i6) {
                    FilterTabsView filterTabsView = FilterTabsView.this;
                    filterTabsView.currentPosition = filterTabsView.selectedTabId = i6 == i ? 0 : i6 + 1;
                }
                if (FilterTabsView.this.previousPosition == i6) {
                    FilterTabsView filterTabsView2 = FilterTabsView.this;
                    filterTabsView2.previousPosition = filterTabsView2.previousId = i6 == i ? 0 : i6 + 1;
                }
                i6++;
            }
            notifyItemMoved(i, 0);
            FilterTabsView.this.delegate.onPageReorder(((Tab) FilterTabsView.this.tabs.get(i)).f1851id, i3);
            FilterTabsView.this.updateTabsWidths();
            FilterTabsView.this.orderChanged = true;
            FilterTabsView.this.listView.setItemAnimator(FilterTabsView.this.itemAnimator);
        }
    }

    /* renamed from: org.telegram.ui.Components.FilterTabsView$TouchHelperCallback */
    /* loaded from: classes6.dex */
    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        private Runnable resetDefaultPosition = new Runnable() { // from class: org.telegram.ui.Components.FilterTabsView$TouchHelperCallback$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FilterTabsView.TouchHelperCallback.this.lambda$new$0();
            }
        };

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return FilterTabsView.this.isEditing;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (!(view instanceof TabView) || ((TabView) view).currentTab.isAllowEditing()) {
                if (FilterTabsView.this.isAllChatsTabEnabled() && MessagesController.getInstance(UserConfig.selectedAccount).premiumFeaturesBlocked() && (!FilterTabsView.this.isEditing || (viewHolder.getAdapterPosition() == 0 && ((Tab) FilterTabsView.this.tabs.get(0)).isDefault))) {
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                }
                return ItemTouchHelper.Callback.makeMovementFlags(12, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (FilterTabsView.this.isAllChatsTabEnabled() && MessagesController.getInstance(UserConfig.selectedAccount).premiumFeaturesBlocked() && (viewHolder.getAdapterPosition() == 0 || viewHolder2.getAdapterPosition() == 0)) {
                return false;
            }
            FilterTabsView.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                return;
            }
            for (int i = 0; i < FilterTabsView.this.tabs.size(); i++) {
                if (((Tab) FilterTabsView.this.tabs.get(i)).isDefault && i != 0) {
                    FilterTabsView.this.adapter.moveElementToStart(i);
                    FilterTabsView.this.listView.scrollToPosition(0);
                    FilterTabsView.this.onDefaultTabMoved();
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                FilterTabsView.this.listView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
                viewHolder.itemView.setBackgroundColor(Theme.getColor(FilterTabsView.this.backgroundColorKey));
            } else {
                AndroidUtilities.cancelRunOnUIThread(this.resetDefaultPosition);
                AndroidUtilities.runOnUIThread(this.resetDefaultPosition, 320L);
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
            viewHolder.itemView.setBackground(null);
        }
    }

    public RecyclerListView getListView() {
        return this.listView;
    }

    public boolean currentTabIsDefault() {
        Tab findDefaultTab = findDefaultTab();
        return findDefaultTab != null && findDefaultTab.f1851id == this.selectedTabId;
    }

    public int getDefaultTabId() {
        Tab findDefaultTab = findDefaultTab();
        if (findDefaultTab == null) {
            return -1;
        }
        return findDefaultTab.f1851id;
    }

    public boolean isEmpty() {
        return this.tabs.isEmpty();
    }

    public boolean isFirstTabSelected() {
        return this.tabs.isEmpty() || this.selectedTabId == this.tabs.get(0).f1851id;
    }

    public boolean isLocked(int i) {
        for (int i2 = 0; i2 < this.tabs.size(); i2++) {
            if (this.tabs.get(i2).f1851id == i) {
                return this.tabs.get(i2).isLocked;
            }
        }
        return false;
    }

    public void shakeLock(int i) {
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            if (this.listView.getChildAt(i2) instanceof TabView) {
                TabView tabView = (TabView) this.listView.getChildAt(i2);
                if (tabView.currentTab.f1851id == i) {
                    tabView.shakeLockIcon(1.0f, 0);
                    tabView.performHapticFeedback(3);
                    return;
                }
            }
        }
    }
}
