package org.telegram.p048ui.Components;

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
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import org.fork.controller.FiltersController;
import org.fork.enums.FilterTabNotificationMode;
import org.fork.enums.FilterTabWidthMode;
import org.fork.enums.SortingFilter;
import org.fork.models.SortingTabState;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimationProperties;
import org.telegram.p048ui.Components.FilterTabsView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFiltersOrder;
/* renamed from: org.telegram.ui.Components.FilterTabsView */
/* loaded from: classes6.dex */
public class FilterTabsView extends BlurredFrameLayout {
    private final Property<FilterTabsView, Float> COLORS;
    private String aActiveTextColorKey;
    private String aBackgroundColorKey;
    private String aTabLineColorKey;
    private String aUnactiveTextColorKey;
    private String activeTextColorKey;
    private ListAdapter adapter;
    private int additionalTabWidth;
    private int allTabsWidth;
    private boolean animatingIndicator;
    private float animatingIndicatorProgress;
    private Runnable animationRunnable;
    private float animationTime;
    private float animationValue;
    private String backgroundColorKey;
    private AnimatorSet colorChangeAnimator;
    private Paint counterPaint;
    private int currentPosition;
    private boolean customForwardArchive;
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
    private String selectorColorKey;
    private GradientDrawable selectorDrawable;
    private int tabDefaultMargin;
    private String tabLineColorKey;
    private int tabNoCounterMargin;
    private ArrayList<Tab> tabs;
    private TextPaint textCounterPaint;
    private TextPaint textPaint;
    private String unactiveTextColorKey;
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
        FORWARD,
        MANAGEMENT
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setIsEditing$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    protected void onDefaultTabMoved() {
    }

    static /* synthetic */ float access$3716(FilterTabsView filterTabsView, float f) {
        float f2 = filterTabsView.animationTime + f;
        filterTabsView.animationTime = f2;
        return f2;
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public int getSelectedTabAfterRemoveCurrent(boolean z) {
        if (z) {
            ArrayList<Tab> arrayList = this.tabs;
            return arrayList.get(arrayList.size() - 1).f1714id;
        }
        return this.positionToId.get(this.currentPosition, getFirstTabId());
    }

    public void updateLineCornerRadii() {
        this.selectorDrawable.setCornerRadii(isFilterTabsAtBottom() ? this.lineCornerRadiiForBottom : this.lineCornerRadiiForTop);
    }

    public void addIconTab(int i, int i2, int i3, int i4, boolean z, boolean z2) {
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
        TabWithIcon tabWithIcon = new TabWithIcon(i);
        tabWithIcon.outlinedDrawable = AppCompatResources.getDrawable(getContext(), i3).mutate();
        tabWithIcon.filledDrawable = AppCompatResources.getDrawable(getContext(), i4).mutate();
        tabWithIcon.isDefault = z;
        tabWithIcon.isLocked = z2;
        initTabCustomWidth();
        int width = this.allTabsWidth + tabWithIcon.getWidth(true) + AndroidUtilities.m50dp(this.tabDefaultMargin);
        this.allTabsWidth = width;
        this.allTabsWidth = tabWithIcon.fixWidthForNoCounterMode(width, AndroidUtilities.m50dp(this.tabDefaultMargin - this.tabNoCounterMargin));
        this.tabs.add(tabWithIcon);
    }

    public void updateBackground() {
        boolean isFilterTabsAtBottom = isFilterTabsAtBottom();
        this.withBackground = isFilterTabsAtBottom;
        if (isFilterTabsAtBottom) {
            setBackgroundColor(Theme.getColor(this.mode == TabMode.ARCHIVE ? "actionBarDefaultArchived" : "actionBarDefault"));
        } else {
            setBackgroundColor(0);
        }
    }

    public boolean isWithBackground() {
        return this.withBackground;
    }

    public void setCustomForwardArchive(boolean z) {
        this.customForwardArchive = z;
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
            addIconTab(generateIdWithExtra, generateIdWithExtra, type.getDefaultIconResId(), type.getFilledIconResId(), false, false);
        }
    }

    public boolean isLastTabSelected() {
        if (this.tabs.isEmpty()) {
            return true;
        }
        int i = this.selectedTabId;
        ArrayList<Tab> arrayList = this.tabs;
        return i == arrayList.get(arrayList.size() - 1).f1714id;
    }

    public int getTabsCount() {
        return this.tabs.size();
    }

    private void notifySwipeProgressChanged() {
        FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
        if (filterTabsViewDelegate != null) {
            filterTabsViewDelegate.onSwipeProgressChanged(this.animatingIndicatorProgress);
        }
    }

    private boolean isFilterTabsAtBottom() {
        TabMode tabMode = this.mode;
        if (tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE) {
            return SharedConfig.isFilterTabsAtBottomEnabled;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNoCounterMode() {
        TabMode tabMode = this.mode;
        return ((tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE) && SharedConfig.selectedFilterTabsNotificationMode == FilterTabNotificationMode.NUMBER) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCustomTabWidthMode() {
        TabMode tabMode = this.mode;
        return ((tabMode == TabMode.MAIN || tabMode == TabMode.ARCHIVE) && SharedConfig.selectedFilterTabWidthMode == FilterTabWidthMode.DEFAULT) ? false : true;
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

    public void initTabCustomWidth() {
        this.tabDefaultMargin = SharedConfig.selectedFilterTabWidthMode.getTabDefaultMargin();
        this.tabNoCounterMargin = SharedConfig.selectedFilterTabWidthMode.getTabNoCounterMargin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.FilterTabsView$TabWithIcon */
    /* loaded from: classes6.dex */
    public class TabWithIcon extends Tab {
        private Drawable filledDrawable;
        private Drawable outlinedDrawable;

        private TabWithIcon(int i) {
            super(i, "");
        }

        @Override // org.telegram.p048ui.Components.FilterTabsView.Tab
        public int getWidth(boolean z) {
            int i;
            int intrinsicWidth = (int) (this.outlinedDrawable.getIntrinsicWidth() * 0.9f);
            this.titleWidth = intrinsicWidth;
            if (z) {
                i = FilterTabsView.this.delegate.getTabCounter(this.f1714id);
                if (i < 0) {
                    i = 0;
                }
                if (z) {
                    this.counter = i;
                }
            } else {
                i = this.counter;
            }
            if (FilterTabsView.this.isNoCounterMode()) {
                return intrinsicWidth;
            }
            if (i > 0) {
                intrinsicWidth += Math.max(AndroidUtilities.m50dp(10), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(String.format("%d", Integer.valueOf(i))))) + AndroidUtilities.m50dp(10) + AndroidUtilities.m50dp(SharedConfig.selectedFilterTabWidthMode.getMarginIconAndCount());
            }
            if (FilterTabsView.this.isCustomTabWidthMode()) {
                return Math.max(AndroidUtilities.m50dp(SharedConfig.selectedFilterTabWidthMode != FilterTabWidthMode.MINIMUM ? 20 : 10), intrinsicWidth);
            }
            return Math.max(AndroidUtilities.m50dp(40), intrinsicWidth);
        }
    }

    public int getCurrentTabStableId() {
        return this.positionToStableId.get(this.currentPosition, -1);
    }

    public void selectTabWithStableId(int i) {
        for (int i2 = 0; i2 < this.tabs.size(); i2++) {
            if (this.positionToStableId.get(i2, -1) == i) {
                this.currentPosition = i2;
                this.selectedTabId = this.positionToId.get(i2);
                return;
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.FilterTabsView$Tab */
    /* loaded from: classes6.dex */
    public class Tab {
        public int counter;

        /* renamed from: id */
        public int f1714id;
        public boolean isDefault;
        public boolean isLocked;
        public String title;
        public int titleWidth;

        protected boolean isAllChatsTabTitleEnabled() {
            return this.isDefault && !(this instanceof TabWithIcon);
        }

        protected boolean isAllowEditing() {
            return (FilterTabsView.this.mode != TabMode.MAIN || this.isDefault || SortingFilter.isSortingFilter(false, this.f1714id)) ? false : true;
        }

        protected int fixWidthForNoCounterMode(int i, float f) {
            if (FilterTabsView.this.isNoCounterMode()) {
                int i2 = (int) (i - f);
                return isAllowEditing() ? (FilterTabsView.this.isEditing || FilterTabsView.this.editingStartAnimationProgress != BitmapDescriptorFactory.HUE_RED) ? (int) (i2 + (f * FilterTabsView.this.editingStartAnimationProgress)) : i2 : i2;
            }
            return i;
        }

        public Tab(int i, String str) {
            this.f1714id = i;
            this.title = str;
        }

        public int getWidth(boolean z) {
            int i;
            int ceil = (int) Math.ceil(FilterTabsView.this.textPaint.measureText(this.title));
            this.titleWidth = ceil;
            if (z) {
                i = FilterTabsView.this.delegate.getTabCounter(this.f1714id);
                if (i < 0) {
                    i = 0;
                }
                if (z) {
                    this.counter = i;
                }
            } else {
                i = this.counter;
            }
            if (FilterTabsView.this.isNoCounterMode()) {
                return ceil;
            }
            if (i > 0) {
                ceil += Math.max(AndroidUtilities.m50dp(10), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(String.format("%d", Integer.valueOf(i))))) + AndroidUtilities.m50dp(10) + AndroidUtilities.m50dp(SharedConfig.selectedFilterTabWidthMode.getMarginIconAndCount());
            }
            if (FilterTabsView.this.isCustomTabWidthMode()) {
                return Math.max(AndroidUtilities.m50dp(SharedConfig.selectedFilterTabWidthMode != FilterTabWidthMode.MINIMUM ? 20 : 10), ceil);
            }
            return Math.max(AndroidUtilities.m50dp(40), ceil);
        }

        public boolean setTitle(String str) {
            if (FilterTabsView.this.tabs.get(0) == this) {
                if (!isAllChatsTabTitleEnabled()) {
                    return false;
                }
                if (FilterTabsView.this.mode == TabMode.ARCHIVE || FilterTabsView.this.customForwardArchive) {
                    str = LocaleController.getString("FilterAllChats", C3301R.string.FilterAllChats);
                }
            }
            if (TextUtils.equals(this.title, str)) {
                return false;
            }
            this.title = str;
            return true;
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
            return this.currentTab.f1714id;
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
            setMeasuredDimension(this.currentTab.fixWidthForNoCounterMode(this.currentTab.getWidth(false) + AndroidUtilities.m50dp(FilterTabsView.this.tabDefaultMargin) + FilterTabsView.this.additionalTabWidth, AndroidUtilities.m50dp(FilterTabsView.this.tabDefaultMargin - FilterTabsView.this.tabNoCounterMargin)), View.MeasureSpec.getSize(i2));
        }

        /* JADX WARN: Removed duplicated region for block: B:183:0x0578  */
        /* JADX WARN: Removed duplicated region for block: B:187:0x0582  */
        /* JADX WARN: Removed duplicated region for block: B:200:0x05d3  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x05e7  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0676  */
        /* JADX WARN: Removed duplicated region for block: B:227:0x06bc  */
        /* JADX WARN: Removed duplicated region for block: B:236:0x06f3  */
        /* JADX WARN: Removed duplicated region for block: B:239:0x0706  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x070b  */
        /* JADX WARN: Removed duplicated region for block: B:245:0x0728 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:249:0x0732  */
        /* JADX WARN: Removed duplicated region for block: B:253:0x075a  */
        /* JADX WARN: Removed duplicated region for block: B:270:0x07bd  */
        /* JADX WARN: Removed duplicated region for block: B:273:0x07fb  */
        /* JADX WARN: Removed duplicated region for block: B:276:0x083a  */
        /* JADX WARN: Removed duplicated region for block: B:278:0x086e  */
        /* JADX WARN: Removed duplicated region for block: B:285:0x08b1 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:289:0x08be A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:307:0x09a0  */
        /* JADX WARN: Removed duplicated region for block: B:310:0x09b8  */
        /* JADX WARN: Removed duplicated region for block: B:314:0x09c6  */
        /* JADX WARN: Removed duplicated region for block: B:317:0x09e8  */
        /* JADX WARN: Removed duplicated region for block: B:320:0x0a04  */
        /* JADX WARN: Removed duplicated region for block: B:323:0x0a62  */
        /* JADX WARN: Removed duplicated region for block: B:324:0x0a95  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onDraw(android.graphics.Canvas r35) {
            /*
                Method dump skipped, instructions count: 2719
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.FilterTabsView.TabView.onDraw(android.graphics.Canvas):void");
        }

        public boolean animateChange() {
            boolean z;
            int i;
            String str;
            String str2;
            String str3;
            boolean z2;
            int i2 = this.currentTab.counter;
            int i3 = this.lastTabCount;
            if (i2 != i3) {
                this.animateTabCounter = true;
                this.animateFromTabCount = i3;
                this.animateFromCountWidth = this.lastCountWidth;
                this.animateFromCounterWidth = this.lastCounterWidth;
                if (i3 > 0 && i2 > 0) {
                    String valueOf = String.valueOf(i3);
                    String valueOf2 = String.valueOf(this.currentTab.counter);
                    if (valueOf.length() == valueOf2.length()) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(valueOf);
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(valueOf2);
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(valueOf2);
                        for (int i4 = 0; i4 < valueOf.length(); i4++) {
                            if (valueOf.charAt(i4) == valueOf2.charAt(i4)) {
                                int i5 = i4 + 1;
                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i4, i5, 0);
                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i4, i5, 0);
                            } else {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i4, i4 + 1, 0);
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
            } else {
                z = false;
            }
            int i6 = this.currentTab.counter;
            if (i6 > 0) {
                str = String.format("%d", Integer.valueOf(i6));
                i = Math.max(AndroidUtilities.m50dp(10), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(str))) + AndroidUtilities.m50dp(10);
            } else {
                i = 0;
                str = null;
            }
            int m51dp = this.currentTab.titleWidth + (i != 0 ? i + AndroidUtilities.m51dp(SharedConfig.selectedFilterTabWidthMode.getMarginIconAndCount() * (str != null ? 1.0f : FilterTabsView.this.editingStartAnimationProgress)) : 0);
            float f = this.lastTextX;
            if ((getMeasuredWidth() - m51dp) / 2 != f) {
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
                    CharSequence replaceEmoji = Emoji.replaceEmoji(str2, FilterTabsView.this.textPaint.getFontMetricsInt(), AndroidUtilities.m50dp(15), false);
                    SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(replaceEmoji);
                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(replaceEmoji);
                    if (indexOf != 0) {
                        spannableStringBuilder5.setSpan(new EmptyStubSpan(), 0, indexOf, 0);
                    }
                    if (str3.length() + indexOf != str2.length()) {
                        spannableStringBuilder5.setSpan(new EmptyStubSpan(), str3.length() + indexOf, str2.length(), 0);
                    }
                    spannableStringBuilder4.setSpan(new EmptyStubSpan(), indexOf, str3.length() + indexOf, 0);
                    this.titleAnimateInLayout = new StaticLayout(spannableStringBuilder4, FilterTabsView.this.textPaint, AndroidUtilities.m50dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder5, FilterTabsView.this.textPaint, AndroidUtilities.m50dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
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
                    this.titleAnimateInLayout = new StaticLayout(this.currentTab.title, FilterTabsView.this.textPaint, AndroidUtilities.m50dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleAnimateOutLayout = new StaticLayout(this.lastTitle, FilterTabsView.this.textPaint, AndroidUtilities.m50dp(400), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                    this.titleAnimateStableLayout = null;
                    this.animateTextChange = true;
                    this.titleXOffset = BitmapDescriptorFactory.HUE_RED;
                    this.animateFromTitleWidth = this.lastTitleWidth;
                }
                z = true;
            }
            if (m51dp == this.lastTabWidth && getMeasuredWidth() == this.lastWidth) {
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
            accessibilityNodeInfo.setSelected((this.currentTab == null || FilterTabsView.this.selectedTabId == -1 || this.currentTab.f1714id != FilterTabsView.this.selectedTabId) ? false : true);
            accessibilityNodeInfo.addAction(16);
            if (Build.VERSION.SDK_INT >= 21) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString("AccDescrOpenMenu2", C3301R.string.AccDescrOpenMenu2)));
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
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m51dp(f));
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
        this.tabLineColorKey = "actionBarTabLine";
        this.activeTextColorKey = "actionBarTabActiveText";
        this.unactiveTextColorKey = "actionBarTabUnactiveText";
        this.selectorColorKey = "actionBarTabSelector";
        this.backgroundColorKey = "actionBarDefault";
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
                    FilterTabsView.access$3716(FilterTabsView.this, ((float) elapsedRealtime) / 200.0f);
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
            @Override // org.telegram.p048ui.Components.AnimationProperties.FloatProperty
            public void setValue(FilterTabsView filterTabsView, float f) {
                FilterTabsView.this.animationValue = f;
                FilterTabsView.this.selectorDrawable.setColor(ColorUtils.blendARGB(Theme.getColor(FilterTabsView.this.tabLineColorKey), Theme.getColor(FilterTabsView.this.aTabLineColorKey), f));
                if (FilterTabsView.this.aBackgroundColorKey != null && FilterTabsView.this.isWithBackground()) {
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
        initTabCustomWidth();
        if (tabMode == TabMode.ARCHIVE) {
            this.backgroundColorKey = "actionBarDefaultArchived";
            this.selectorColorKey = "actionBarDefaultArchivedSelector";
        }
        updateBackground();
        this.textCounterPaint.setTextSize(AndroidUtilities.m50dp(13));
        this.textCounterPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textPaint.setTextSize(AndroidUtilities.m50dp(15));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.deletePaint.setStyle(Paint.Style.STROKE);
        this.deletePaint.setStrokeCap(Paint.Cap.ROUND);
        this.deletePaint.setStrokeWidth(AndroidUtilities.m51dp(1.5f));
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
            @Override // org.telegram.p048ui.Components.RecyclerListView
            public boolean allowSelectChildAtPosition(View view) {
                return FilterTabsView.this.isEnabled() && FilterTabsView.this.delegate.canPerformActions();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView
            public boolean canHighlightChildAt(View view, float f, float f2) {
                if (FilterTabsView.this.isEditing) {
                    TabView tabView = (TabView) view;
                    float m50dp = AndroidUtilities.m50dp(SharedConfig.selectedFilterTabWidthMode.getMarginIconAndCount());
                    if (tabView.rect.left - m50dp < f && tabView.rect.right + m50dp > f) {
                        return false;
                    }
                }
                return super.canHighlightChildAt(view, f, f2);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setClipChildren(false);
        C45974 c45974 = new C45974();
        this.itemAnimator = c45974;
        c45974.setDelayAnimations(false);
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
                        if (calculateDxToMakeVisible > 0 || (calculateDxToMakeVisible == 0 && view.getLeft() - AndroidUtilities.m50dp(21) < 0)) {
                            calculateDxToMakeVisible += AndroidUtilities.m50dp(60);
                        } else if (calculateDxToMakeVisible < 0 || (calculateDxToMakeVisible == 0 && view.getRight() + AndroidUtilities.m50dp(21) > FilterTabsView.this.getMeasuredWidth())) {
                            calculateDxToMakeVisible -= AndroidUtilities.m50dp(60);
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
        this.listView.setPadding(AndroidUtilities.m50dp(7), 0, AndroidUtilities.m50dp(7), 0);
        this.listView.setClipToPadding(false);
        this.listView.setDrawSelectorBehind(true);
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        listAdapter.setHasStableIds(true);
        this.listView.setAdapter(this.adapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                FilterTabsView.this.lambda$new$0(view, i, f, f2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListener
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
    public class C45974 extends DefaultItemAnimator {
        C45974() {
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
                        FilterTabsView.C45974.this.lambda$runPendingAnimations$0(valueAnimator);
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
                            FilterTabsView.C45974.lambda$animateMoveImpl$1(FilterTabsView.TabView.this, valueAnimator2);
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
                    float m50dp = AndroidUtilities.m50dp(SharedConfig.selectedFilterTabWidthMode.getMarginIconAndCount());
                    if (tabView.rect.left - m50dp >= f || tabView.rect.right + m50dp <= f) {
                        return;
                    }
                    this.delegate.onDeletePressed(tabView.currentTab.f1714id);
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

    private void scrollToTab(Tab tab, int i) {
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
        this.selectedTabId = tab.f1714id;
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
            this.delegate.onTabSelected(tab.f1714id);
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

    public void addTab(int i, int i2, String str, boolean z, boolean z2) {
        int size = this.tabs.size();
        if (size == 0 && this.selectedTabId == -1) {
            this.selectedTabId = i;
        }
        this.positionToId.put(size, i);
        this.positionToStableId.put(size, i2);
        this.idToPosition.put(i, size);
        int i3 = this.selectedTabId;
        if (i3 != -1 && i3 == i) {
            this.currentPosition = size;
        }
        Tab tab = new Tab(i, str);
        tab.isDefault = z;
        tab.isLocked = z2;
        int width = this.allTabsWidth + tab.getWidth(true) + AndroidUtilities.m50dp(this.tabDefaultMargin);
        this.allTabsWidth = width;
        this.allTabsWidth = tab.fixWidthForNoCounterMode(width, AndroidUtilities.m50dp(this.tabDefaultMargin - this.tabNoCounterMargin));
        this.tabs.add(tab);
    }

    public void finishAddingTabs(boolean z) {
        this.listView.setItemAnimator(z ? this.itemAnimator : null);
        this.adapter.notifyDataSetChanged();
    }

    public void animateColorsTo(String str, String str2, String str3, String str4, String str5) {
        AnimatorSet animatorSet = this.colorChangeAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.aTabLineColorKey = str;
        this.aActiveTextColorKey = str2;
        this.aUnactiveTextColorKey = str3;
        this.aBackgroundColorKey = str5;
        this.selectorColorKey = str4;
        this.listView.setSelectorDrawableColor(Theme.getColor(str4));
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
                FilterTabsView.this.aTabLineColorKey = null;
                FilterTabsView.this.aActiveTextColorKey = null;
                FilterTabsView.this.aUnactiveTextColorKey = null;
                FilterTabsView.this.aBackgroundColorKey = null;
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

    public String getSelectorColorKey() {
        return this.selectorColorKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabsWidths() {
        this.positionToX.clear();
        this.positionToWidth.clear();
        int m50dp = AndroidUtilities.m50dp(7);
        int size = this.tabs.size();
        for (int i = 0; i < size; i++) {
            int width = this.tabs.get(i).getWidth(false);
            this.positionToWidth.put(i, width);
            this.positionToX.put(i, (this.additionalTabWidth / 2) + m50dp);
            m50dp = this.tabs.get(i).fixWidthForNoCounterMode(m50dp + width + AndroidUtilities.m50dp(this.tabDefaultMargin) + this.additionalTabWidth, AndroidUtilities.m50dp(this.tabDefaultMargin - this.tabNoCounterMargin));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x014f  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r10, android.view.View r11, long r12) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.FilterTabsView.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (!this.tabs.isEmpty()) {
            int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.m50dp(7)) - AndroidUtilities.m50dp(7);
            Tab findDefaultTab = findDefaultTab();
            Tab tab = this.tabs.get(0);
            String str = "FilterAllChats";
            if (tab == findDefaultTab) {
                tab.setTitle(LocaleController.getString("FilterAllChats", C3301R.string.FilterAllChats));
            }
            int width = tab.getWidth(false);
            if (tab == findDefaultTab) {
                if (this.allTabsWidth > size) {
                    i3 = C3301R.string.FilterAllChatsShort;
                    str = "FilterAllChatsShort";
                } else {
                    i3 = C3301R.string.FilterAllChats;
                }
                tab.setTitle(LocaleController.getString(str, i3));
            }
            int width2 = (this.allTabsWidth - width) + tab.getWidth(false);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
        ArrayList<MessagesController.DialogFilter> arrayList = MessagesController.getInstance(UserConfig.selectedAccount).dialogFilters;
        int size2 = arrayList.size();
        for (int i2 = 0; i2 < size2; i2++) {
            MessagesController.DialogFilter dialogFilter = arrayList.get(i2);
            if (dialogFilter.isDefault()) {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(0);
            } else {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(dialogFilter.f1440id));
            }
        }
        MessagesController.getInstance(UserConfig.selectedAccount).lockFiltersInternal();
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tLRPC$TL_messages_updateDialogFiltersOrder, FilterTabsView$$ExternalSyntheticLambda0.INSTANCE);
        this.orderChanged = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
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
            if (r2 >= r0) goto L97
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r5 = r9.tabs
            java.lang.Object r5 = r5.get(r2)
            org.telegram.ui.Components.FilterTabsView$Tab r5 = (org.telegram.p048ui.Components.FilterTabsView.Tab) r5
            int r6 = r5.counter
            org.telegram.ui.Components.FilterTabsView$FilterTabsViewDelegate r7 = r9.delegate
            int r8 = r5.f1714id
            int r7 = r7.getTabCounter(r8)
            if (r6 == r7) goto L93
            org.telegram.ui.Components.FilterTabsView$FilterTabsViewDelegate r6 = r9.delegate
            int r7 = r5.f1714id
            int r6 = r6.getTabCounter(r7)
            if (r6 >= 0) goto L2b
            goto L93
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
            goto L93
        L3e:
            r9.invalidated = r4
            r9.requestLayout()
            r9.allTabsWidth = r1
            org.telegram.ui.Components.FilterTabsView$Tab r2 = r9.findDefaultTab()
            if (r2 == 0) goto L5a
            org.telegram.ui.Components.FilterTabsView$Tab r2 = r9.findDefaultTab()
            int r3 = org.telegram.messenger.C3301R.string.FilterAllChats
            java.lang.String r5 = "FilterAllChats"
            java.lang.String r3 = org.telegram.messenger.LocaleController.getString(r5, r3)
            r2.setTitle(r3)
        L5a:
            if (r1 >= r0) goto L91
            int r2 = r9.allTabsWidth
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r3 = r9.tabs
            java.lang.Object r3 = r3.get(r1)
            org.telegram.ui.Components.FilterTabsView$Tab r3 = (org.telegram.p048ui.Components.FilterTabsView.Tab) r3
            int r3 = r3.getWidth(r4)
            int r5 = r9.tabDefaultMargin
            int r5 = org.telegram.messenger.AndroidUtilities.m50dp(r5)
            int r3 = r3 + r5
            int r2 = r2 + r3
            r9.allTabsWidth = r2
            java.util.ArrayList<org.telegram.ui.Components.FilterTabsView$Tab> r2 = r9.tabs
            java.lang.Object r2 = r2.get(r1)
            org.telegram.ui.Components.FilterTabsView$Tab r2 = (org.telegram.p048ui.Components.FilterTabsView.Tab) r2
            int r3 = r9.allTabsWidth
            int r5 = r9.tabDefaultMargin
            int r6 = r9.tabNoCounterMargin
            int r5 = r5 - r6
            int r5 = org.telegram.messenger.AndroidUtilities.m50dp(r5)
            float r5 = (float) r5
            int r2 = r2.fixWidthForNoCounterMode(r3, r5)
            r9.allTabsWidth = r2
            int r1 = r1 + 1
            goto L5a
        L91:
            r3 = r4
            goto L97
        L93:
            int r2 = r2 + 1
            goto L9
        L97:
            if (r3 == 0) goto La5
            org.telegram.ui.Components.RecyclerListView r0 = r9.listView
            androidx.recyclerview.widget.DefaultItemAnimator r1 = r9.itemAnimator
            r0.setItemAnimator(r1)
            org.telegram.ui.Components.FilterTabsView$ListAdapter r0 = r9.adapter
            r0.notifyDataSetChanged()
        La5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.FilterTabsView.checkTabsCounter():void");
    }

    public void notifyTabCounterChanged(int i) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 < 0 || i2 >= this.tabs.size()) {
            return;
        }
        Tab tab = this.tabs.get(i2);
        if (tab.counter == this.delegate.getTabCounter(tab.f1714id) || this.delegate.getTabCounter(tab.f1714id) < 0) {
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
                findDefaultTab().setTitle(LocaleController.getString("FilterAllChats", C3301R.string.FilterAllChats));
            }
            int size = this.tabs.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.allTabsWidth += this.tabs.get(i3).getWidth(true) + AndroidUtilities.m50dp(this.tabDefaultMargin);
                this.allTabsWidth = this.tabs.get(i3).fixWidthForNoCounterMode(this.allTabsWidth, AndroidUtilities.m50dp(this.tabDefaultMargin - this.tabNoCounterMargin));
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

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
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
            ArrayList<MessagesController.DialogFilter> arrayList = MessagesController.getInstance(UserConfig.selectedAccount).dialogFilters;
            MessagesController.DialogFilter dialogFilter = arrayList.get(i3);
            MessagesController.DialogFilter dialogFilter2 = arrayList.get(i4);
            int i6 = dialogFilter.order;
            dialogFilter.order = dialogFilter2.order;
            dialogFilter2.order = i6;
            arrayList.set(i3, dialogFilter2);
            arrayList.set(i4, dialogFilter);
            Tab tab = (Tab) FilterTabsView.this.tabs.get(i);
            Tab tab2 = (Tab) FilterTabsView.this.tabs.get(i2);
            int i7 = tab.f1714id;
            tab.f1714id = tab2.f1714id;
            tab2.f1714id = i7;
            int i8 = FilterTabsView.this.positionToStableId.get(i);
            FilterTabsView.this.positionToStableId.put(i, FilterTabsView.this.positionToStableId.get(i2));
            FilterTabsView.this.positionToStableId.put(i2, i8);
            FilterTabsView.this.delegate.onPageReorder(tab2.f1714id, tab.f1714id);
            if (FilterTabsView.this.currentPosition == i) {
                FilterTabsView.this.currentPosition = i2;
                FilterTabsView.this.selectedTabId = tab.f1714id;
            } else if (FilterTabsView.this.currentPosition == i2) {
                FilterTabsView.this.currentPosition = i;
                FilterTabsView.this.selectedTabId = tab2.f1714id;
            }
            if (FilterTabsView.this.previousPosition == i) {
                FilterTabsView.this.previousPosition = i2;
                FilterTabsView.this.previousId = tab.f1714id;
            } else if (FilterTabsView.this.previousPosition == i2) {
                FilterTabsView.this.previousPosition = i;
                FilterTabsView.this.previousId = tab2.f1714id;
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
            ArrayList<MessagesController.DialogFilter> arrayList = MessagesController.getInstance(UserConfig.selectedAccount).dialogFilters;
            int i2 = FilterTabsView.this.positionToStableId.get(i);
            int i3 = ((Tab) FilterTabsView.this.tabs.get(i)).f1714id;
            for (int i4 = i - 1; i4 >= 0; i4--) {
                FilterTabsView.this.positionToStableId.put(i4 + 1, FilterTabsView.this.positionToStableId.get(i4));
            }
            MessagesController.DialogFilter remove = arrayList.remove(i);
            remove.order = 0;
            arrayList.add(0, remove);
            FilterTabsView.this.positionToStableId.put(0, i2);
            FilterTabsView.this.tabs.add(0, (Tab) FilterTabsView.this.tabs.remove(i));
            ((Tab) FilterTabsView.this.tabs.get(0)).f1714id = i3;
            for (int i5 = 0; i5 <= i; i5++) {
                ((Tab) FilterTabsView.this.tabs.get(i5)).f1714id = i5;
                arrayList.get(i5).order = i5;
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
            FilterTabsView.this.delegate.onPageReorder(((Tab) FilterTabsView.this.tabs.get(i)).f1714id, i3);
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
                if (FilterTabsView.this.isAllChatsTabEnabled() && MessagesController.getInstance(UserConfig.selectedAccount).premiumLocked && (!FilterTabsView.this.isEditing || (viewHolder.getAdapterPosition() == 0 && ((Tab) FilterTabsView.this.tabs.get(0)).isDefault))) {
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                }
                return ItemTouchHelper.Callback.makeMovementFlags(12, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (FilterTabsView.this.isAllChatsTabEnabled() && MessagesController.getInstance(UserConfig.selectedAccount).premiumLocked && (viewHolder.getAdapterPosition() == 0 || viewHolder2.getAdapterPosition() == 0)) {
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
        return findDefaultTab != null && findDefaultTab.f1714id == this.selectedTabId;
    }

    public int getDefaultTabId() {
        Tab findDefaultTab = findDefaultTab();
        if (findDefaultTab == null) {
            return -1;
        }
        return findDefaultTab.f1714id;
    }

    public boolean isEmpty() {
        return this.tabs.isEmpty();
    }

    public boolean isFirstTabSelected() {
        return this.tabs.isEmpty() || this.selectedTabId == this.tabs.get(0).f1714id;
    }

    public boolean isLocked(int i) {
        for (int i2 = 0; i2 < this.tabs.size(); i2++) {
            if (this.tabs.get(i2).f1714id == i) {
                return this.tabs.get(i2).isLocked;
            }
        }
        return false;
    }

    public void shakeLock(int i) {
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            if (this.listView.getChildAt(i2) instanceof TabView) {
                TabView tabView = (TabView) this.listView.getChildAt(i2);
                if (tabView.currentTab.f1714id == i) {
                    tabView.shakeLockIcon(1.0f, 0);
                    tabView.performHapticFeedback(3);
                    return;
                }
            }
        }
    }
}
