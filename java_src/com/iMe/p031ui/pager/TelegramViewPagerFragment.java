package com.iMe.p031ui.pager;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.p024ui.view.FloatingActionButton;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.pager.TelegramViewPagerFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.FragmentContextView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ScrollSlidingTextTabStrip;
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment */
/* loaded from: classes3.dex */
public abstract class TelegramViewPagerFragment extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TelegramViewPagerFragment.class, "viewPages", "getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;", 0)), Reflection.property1(new PropertyReference1Impl(TelegramViewPagerFragment.class, "pagesData", "getPagesData()[Lcom/iMe/ui/pager/ViewPageData;", 0)), Reflection.property1(new PropertyReference1Impl(TelegramViewPagerFragment.class, "scrollSlidingTextTabStrip", "getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;", 0)), Reflection.property1(new PropertyReference1Impl(TelegramViewPagerFragment.class, "floatingActionButton", "getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;", 0))};
    private static final Interpolator interpolator;
    private int additionalPadding;
    private boolean animatingForward;
    private FragmentContextView fragmentContextView;
    private boolean tabsAnimationInProgress;
    private final ResettableLazy viewPages$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new TelegramViewPagerFragment$viewPages$2(this), 1, (Object) null);
    private final ResettableLazy pagesData$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new TelegramViewPagerFragment$pagesData$2(this), 1, (Object) null);
    private final ResettableLazy scrollSlidingTextTabStrip$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new TelegramViewPagerFragment$scrollSlidingTextTabStrip$2(this), 1, (Object) null);
    private final ResettableLazy floatingActionButton$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new TelegramViewPagerFragment$floatingActionButton$2(this), 1, (Object) null);
    private final Paint backgroundPaint = new Paint();
    private final TelegramViewPagerFragment$scrollY$1 scrollY = new AnimationProperties.FloatProperty<TelegramViewPagerFragment>() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$scrollY$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super("animationValue");
        }

        @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
        public void setValue(TelegramViewPagerFragment obj, float f) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            obj.setScrollY(f);
        }

        @Override // android.util.Property
        public Float get(TelegramViewPagerFragment obj) {
            Intrinsics.checkNotNullParameter(obj, "obj");
            return Float.valueOf(((BaseFragment) TelegramViewPagerFragment.this).actionBar.getTranslationY());
        }
    };

    protected int getAdditionalActionBarHeight() {
        return 0;
    }

    public abstract FragmentContextViewParams getFragmentContextViewParams();

    public abstract int getInitialTabId();

    public abstract String getToolbarTitle();

    public abstract ViewPageData[] initPageData();

    public abstract void onFabClick(int i);

    public abstract void onListItemClick(View view, int i, float f, float f2);

    public abstract boolean onListItemLongClick(View view, int i, float f, float f2);

    public abstract void onMenuItemClick(int i);

    static {
        new Companion(null);
        interpolator = TelegramViewPagerFragment$$ExternalSyntheticLambda1.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ViewPage[] getViewPages() {
        return (ViewPage[]) this.viewPages$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getCurrentTabId() {
        return getScrollSlidingTextTabStrip().getCurrentTabId();
    }

    private final ViewPageData[] getPagesData() {
        return (ViewPageData[]) this.pagesData$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScrollSlidingTextTabStrip getScrollSlidingTextTabStrip() {
        return (ScrollSlidingTextTabStrip) this.scrollSlidingTextTabStrip$delegate.getValue(this, $$delegatedProperties[2]);
    }

    private final FloatingActionButton getFloatingActionButton() {
        return (FloatingActionButton) this.floatingActionButton$delegate.getValue(this, $$delegatedProperties[3]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupListeners();
        updateFab(getInitialTabId());
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        ContentView contentView = new ContentView(this, parentActivity);
        for (ViewPage viewPage : getViewPages()) {
            contentView.addView(viewPage, LayoutHelper.createFrame(-1, -1));
        }
        if (getFragmentContextViewParams().getEnabled()) {
            FragmentContextView createFragmentContextView = createFragmentContextView(getFragmentContextViewParams());
            this.fragmentContextView = createFragmentContextView;
            contentView.addView(createFragmentContextView, LayoutHelper.createFrame(-1, 39, 51, 0, -39, 0, 0));
        }
        contentView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
        contentView.addView(getFloatingActionButton(), LayoutHelper.createFrame(56, 56, 85, 0, 0, 14, 14));
        return contentView;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return getScrollSlidingTextTabStrip().getCurrentTabId() == getScrollSlidingTextTabStrip().getFirstTabId();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return canBeginSlide();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        final FloatingActionButton floatingActionButton = getFloatingActionButton();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(view, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                FloatingActionButton.this.updateColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundWhite), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getScrollSlidingTextTabStrip(), 0, new Class[]{ScrollSlidingTextTabStrip.class}, new String[]{"selectorDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_actionBarTabLine), new ThemeDescription(getScrollSlidingTextTabStrip().getTabsContainer(), ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextView.class}, null, null, null, Theme.key_actionBarTabActiveText), new ThemeDescription(getScrollSlidingTextTabStrip().getTabsContainer(), ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextView.class}, null, null, null, Theme.key_actionBarTabUnactiveText), new ThemeDescription(getScrollSlidingTextTabStrip().getTabsContainer(), ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{TextView.class}, null, null, null, Theme.key_actionBarTabSelector), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerBackground), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"playButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerPlayPause), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerTitle), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_FASTSCROLL, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerPerformer), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"closeButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerClose), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_returnToCallBackground), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_returnToCallText));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ViewPage[] initPager() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        Activity parentActivity2 = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
        ViewPage viewPage = new ViewPage(this, parentActivity2);
        ViewExtKt.gone$default(viewPage, false, 1, null);
        Unit unit = Unit.INSTANCE;
        return new ViewPage[]{new ViewPage(this, parentActivity), viewPage};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScrollSlidingTextTabStrip initTabLayout() {
        ScrollSlidingTextTabStrip scrollSlidingTextTabStrip = new ScrollSlidingTextTabStrip(getParentActivity());
        scrollSlidingTextTabStrip.setInitialTabId(getInitialTabId());
        scrollSlidingTextTabStrip.setDelegate(new ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$initTabLayout$1$1
            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public /* synthetic */ void onSamePageSelected() {
                ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate.CC.$default$onSamePageSelected(this);
            }

            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public void onTabSelected(int i) {
                TelegramViewPagerFragment.this.updateFab(i);
            }

            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public void onPageSelected(int i, boolean z) {
                if (TelegramViewPagerFragment.this.getViewPages()[0].getSelectedType() == i) {
                    return;
                }
                TelegramViewPagerFragment.this.getViewPages()[1].setSelectedType(i);
                ViewExtKt.visible$default(TelegramViewPagerFragment.this.getViewPages()[1], false, 1, null);
                TelegramViewPagerFragment.this.switchToCurrentSelectedMode(true);
                TelegramViewPagerFragment.this.animatingForward = z;
            }

            @Override // org.telegram.p043ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
            public void onPageScrolled(float f) {
                int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                if (i == 0) {
                    if (TelegramViewPagerFragment.this.getViewPages()[1].getVisibility() == 8) {
                        return;
                    }
                }
                if (TelegramViewPagerFragment.this.animatingForward) {
                    TelegramViewPagerFragment.this.getViewPages()[0].setTranslationX((-f) * TelegramViewPagerFragment.this.getViewPages()[0].getMeasuredWidth());
                    TelegramViewPagerFragment.this.getViewPages()[1].setTranslationX(TelegramViewPagerFragment.this.getViewPages()[0].getMeasuredWidth() - (f * TelegramViewPagerFragment.this.getViewPages()[0].getMeasuredWidth()));
                } else {
                    TelegramViewPagerFragment.this.getViewPages()[0].setTranslationX(TelegramViewPagerFragment.this.getViewPages()[0].getMeasuredWidth() * f);
                    TelegramViewPagerFragment.this.getViewPages()[1].setTranslationX((f * TelegramViewPagerFragment.this.getViewPages()[0].getMeasuredWidth()) - TelegramViewPagerFragment.this.getViewPages()[0].getMeasuredWidth());
                }
                if (i == 0) {
                    TelegramViewPagerFragment.ViewPage viewPage = TelegramViewPagerFragment.this.getViewPages()[0];
                    TelegramViewPagerFragment.this.getViewPages()[0] = TelegramViewPagerFragment.this.getViewPages()[1];
                    TelegramViewPagerFragment.this.getViewPages()[1] = viewPage;
                    ViewExtKt.gone$default(TelegramViewPagerFragment.this.getViewPages()[1], false, 1, null);
                }
            }
        });
        ViewPageData[] pagesData = getPagesData();
        int length = pagesData.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            scrollSlidingTextTabStrip.addTextTab(i2, pagesData[i].getTabTitle());
            i++;
            i2++;
        }
        scrollSlidingTextTabStrip.finishAddingTabs();
        getViewPages()[0].setSelectedType(scrollSlidingTextTabStrip.getCurrentTabId());
        switchToCurrentSelectedMode(false);
        this.actionBar.addView(scrollSlidingTextTabStrip, LayoutHelper.createFrame(-1, 44, 83, 0, 0, 0, getAdditionalActionBarHeight()));
        return scrollSlidingTextTabStrip;
    }

    private final FragmentContextView createFragmentContextView(FragmentContextViewParams fragmentContextViewParams) {
        FragmentContextView fragmentContextView = new FragmentContextView(getParentActivity(), this, false);
        fragmentContextView.setSupportsCalls(fragmentContextViewParams.getSupportsCalls());
        fragmentContextView.setSupportsVoices(fragmentContextViewParams.getSupportsVoices());
        return fragmentContextView;
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setOccupyStatusBar(!AndroidUtilities.isTablet());
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setTitle(getToolbarTitle());
        c3484ActionBar.setExtraHeight(AndroidUtilities.m55dp(getAdditionalActionBarHeight() + 44.0f));
        c3484ActionBar.setAllowOverlayTitle(false);
        c3484ActionBar.setAddToContainer(false);
        c3484ActionBar.setClipContent(true);
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    TelegramViewPagerFragment.this.finishFragment();
                } else {
                    TelegramViewPagerFragment.this.onMenuItemClick(i);
                }
            }
        });
        ViewExtKt.visible$default(getScrollSlidingTextTabStrip(), false, 1, null);
        ViewParent parent = c3484ActionBar.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(c3484ActionBar);
        }
    }

    private final void setupListeners() {
        getFloatingActionButton().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TelegramViewPagerFragment.setupListeners$lambda$7(TelegramViewPagerFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7(TelegramViewPagerFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onFabClick(this$0.getViewPages()[0].getSelectedType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void switchToCurrentSelectedMode(boolean z) {
        int i = 0;
        for (ViewPage viewPage : getViewPages()) {
            viewPage.getListView().stopScroll();
        }
        ViewPage viewPage2 = getViewPages()[z ? 1 : 0];
        viewPage2.getListView().setPinnedHeaderShadowDrawable(null);
        ViewExtKt.visible$default(viewPage2.getListView(), false, 1, null);
        if (!(this.actionBar.getTranslationY() == BitmapDescriptorFactory.HUE_RED)) {
            viewPage2.getListViewLayoutManager().scrollToPositionWithOffset(0, (int) this.actionBar.getTranslationY());
        }
        RecyclerListView.SelectionAdapter selectionAdapter = (RecyclerListView.SelectionAdapter) viewPage2.getListView().getAdapter();
        ViewPageData[] pagesData = getPagesData();
        int length = pagesData.length;
        int i2 = 0;
        while (i < length) {
            ViewPageData viewPageData = pagesData[i];
            int i3 = i2 + 1;
            if (viewPage2.getSelectedType() == i2 && selectionAdapter != viewPageData.getListAdapter()) {
                viewPage2.getListView().setAdapter(viewPageData.getListAdapter());
            }
            i++;
            i2 = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkScroll(RecyclerView recyclerView) {
        int childCount = recyclerView.getChildCount();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            int bottom = childAt.getBottom();
            i = RangesKt___RangesKt.coerceAtMost(i, childAt.getTop());
            i2 = RangesKt___RangesKt.coerceAtLeast(bottom, i2);
        }
        if (i2 == 0 || i2 >= recyclerView.getMeasuredHeight() - recyclerView.getPaddingBottom()) {
            return;
        }
        resetScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setScrollY(float f) {
        this.actionBar.setTranslationY(f);
        FragmentContextView fragmentContextView = this.fragmentContextView;
        if (fragmentContextView != null) {
            fragmentContextView.setTranslationY(this.additionalPadding + f);
        }
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateFab(int i) {
        int fabIconResId = getPagesData()[i].getFabIconResId();
        FloatingActionButton floatingActionButton = getFloatingActionButton();
        floatingActionButton.setVisibility(fabIconResId != 0 ? 0 : 8);
        floatingActionButton.setIcon(fabIconResId);
    }

    protected final void resetScroll() {
        if (this.actionBar.getTranslationY() == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, this.scrollY, BitmapDescriptorFactory.HUE_RED));
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.setDuration(180L);
        animatorSet.start();
    }

    /* compiled from: TelegramViewPagerFragment.kt */
    /* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment$ViewPage */
    /* loaded from: classes3.dex */
    public final class ViewPage extends FrameLayout {
        private final Lazy listView$delegate;
        private final Lazy listViewLayoutManager$delegate;
        private int selectedType;
        final /* synthetic */ TelegramViewPagerFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewPage(TelegramViewPagerFragment telegramViewPagerFragment, Context context) {
            super(context);
            Lazy lazy;
            Lazy lazy2;
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = telegramViewPagerFragment;
            lazy = LazyKt__LazyJVMKt.lazy(new TelegramViewPagerFragment$ViewPage$listView$2(this));
            this.listView$delegate = lazy;
            lazy2 = LazyKt__LazyJVMKt.lazy(new TelegramViewPagerFragment$ViewPage$listViewLayoutManager$2(context));
            this.listViewLayoutManager$delegate = lazy2;
            addView(getListView(), LayoutHelper.createFrame(-1, -1.0f));
        }

        public final RecyclerListView getListView() {
            return (RecyclerListView) this.listView$delegate.getValue();
        }

        public final LinearLayoutManager getListViewLayoutManager() {
            return (LinearLayoutManager) this.listViewLayoutManager$delegate.getValue();
        }

        public final int getSelectedType() {
            return this.selectedType;
        }

        public final void setSelectedType(int i) {
            this.selectedType = i;
        }

        @Override // android.view.View
        public void setTranslationX(float f) {
            super.setTranslationX(f);
            if (this.this$0.tabsAnimationInProgress && this.this$0.getViewPages()[0] == this) {
                this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[1].selectedType, Math.abs(this.this$0.getViewPages()[0].getTranslationX()) / this.this$0.getViewPages()[0].getMeasuredWidth());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.ui.pager.TelegramViewPagerFragment$ViewPage$initListView$1, androidx.recyclerview.widget.RecyclerView, org.telegram.ui.Components.RecyclerListView] */
        public final RecyclerListView initListView() {
            final Context context = getContext();
            final TelegramViewPagerFragment telegramViewPagerFragment = this.this$0;
            final ?? r1 = new RecyclerListView(context) { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$ViewPage$initListView$1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    super.onLayout(z, i, i2, i3, i4);
                    TelegramViewPagerFragment.this.checkScroll(this);
                }
            };
            final TelegramViewPagerFragment telegramViewPagerFragment2 = this.this$0;
            r1.setScrollingTouchSlop(1);
            r1.setItemAnimator(null);
            r1.setClipToPadding(false);
            r1.setLayoutManager(getListViewLayoutManager());
            r1.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$ViewPage$initListView$2$1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                    if (i != 1) {
                        int i2 = (int) (-((BaseFragment) TelegramViewPagerFragment.this).actionBar.getTranslationY());
                        int currentActionBarHeight = C3484ActionBar.getCurrentActionBarHeight();
                        if (i2 == 0 || i2 == currentActionBarHeight) {
                            return;
                        }
                        if (i2 < currentActionBarHeight / 2) {
                            TelegramViewPagerFragment.this.getViewPages()[0].getListView().smoothScrollBy(0, -i2);
                        } else if (TelegramViewPagerFragment.this.getViewPages()[0].getListView().canScrollVertically(1)) {
                            TelegramViewPagerFragment.this.getViewPages()[0].getListView().smoothScrollBy(0, currentActionBarHeight - i2);
                        }
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                    if (recyclerView == TelegramViewPagerFragment.this.getViewPages()[0].getListView()) {
                        float translationY = ((BaseFragment) TelegramViewPagerFragment.this).actionBar.getTranslationY();
                        float f = translationY - i2;
                        if (f < (-C3484ActionBar.getCurrentActionBarHeight())) {
                            f = -C3484ActionBar.getCurrentActionBarHeight();
                        } else if (f > BitmapDescriptorFactory.HUE_RED) {
                            f = 0.0f;
                        }
                        if (f == translationY) {
                            return;
                        }
                        TelegramViewPagerFragment.this.setScrollY(f);
                    }
                }
            });
            r1.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda0
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
                    TelegramViewPagerFragment.ViewPage.initListView$lambda$2$lambda$0(TelegramViewPagerFragment.this, view, i, f, f2);
                }
            });
            r1.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                public final boolean onItemClick(View view, int i, float f, float f2) {
                    boolean initListView$lambda$2$lambda$1;
                    initListView$lambda$2$lambda$1 = TelegramViewPagerFragment.ViewPage.initListView$lambda$2$lambda$1(TelegramViewPagerFragment$ViewPage$initListView$1.this, telegramViewPagerFragment2, view, i, f, f2);
                    return initListView$lambda$2$lambda$1;
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                public /* synthetic */ void onLongClickRelease() {
                    RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onLongClickRelease(this);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                public /* synthetic */ void onMove(float f, float f2) {
                    RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onMove(this, f, f2);
                }
            });
            return r1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void initListView$lambda$2$lambda$0(TelegramViewPagerFragment this$0, View view, int i, float f, float f2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(view, "view");
            this$0.onListItemClick(view, i, f, f2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean initListView$lambda$2$lambda$1(TelegramViewPagerFragment$ViewPage$initListView$1 this_apply, TelegramViewPagerFragment this$0, View view, int i, float f, float f2) {
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this_apply.hideSelector(true);
            Intrinsics.checkNotNullExpressionValue(view, "view");
            return this$0.onListItemLongClick(view, i, f, f2);
        }
    }

    /* compiled from: TelegramViewPagerFragment.kt */
    /* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment$ContentView */
    /* loaded from: classes3.dex */
    private final class ContentView extends FrameLayout {
        private float additionalOffset;
        private boolean backAnimation;
        private boolean globalIgnoreLayout;
        private final Lazy maximumVelocity$delegate;
        private boolean maybeStartTracking;
        private boolean startedTracking;
        private int startedTrackingPointerId;
        private int startedTrackingX;
        private int startedTrackingY;
        private AnimatorSet tabsAnimation;
        final /* synthetic */ TelegramViewPagerFragment this$0;
        private VelocityTracker velocityTracker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContentView(TelegramViewPagerFragment telegramViewPagerFragment, Context context) {
            super(context);
            Lazy lazy;
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = telegramViewPagerFragment;
            lazy = LazyKt__LazyJVMKt.lazy(new TelegramViewPagerFragment$ContentView$maximumVelocity$2(telegramViewPagerFragment));
            this.maximumVelocity$delegate = lazy;
            setClipToPadding(false);
        }

        private final int getMaximumVelocity() {
            return ((Number) this.maximumVelocity$delegate.getValue()).intValue();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            measureChildWithMargins(((BaseFragment) this.this$0).actionBar, i, 0, i2, 0);
            int measuredHeight = ((BaseFragment) this.this$0).actionBar.getMeasuredHeight();
            this.globalIgnoreLayout = true;
            for (ViewPage viewPage : this.this$0.getViewPages()) {
                viewPage.getListView().setPadding(0, this.this$0.additionalPadding + measuredHeight, 0, AndroidUtilities.m55dp(4.0f));
            }
            this.globalIgnoreLayout = false;
            TelegramViewPagerFragment telegramViewPagerFragment = this.this$0;
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
                if (!(childAt.getVisibility() == 8) && childAt != ((BaseFragment) telegramViewPagerFragment).actionBar) {
                    measureChildWithMargins(childAt, i, 0, i2, 0);
                }
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            FragmentContextView fragmentContextView = this.this$0.fragmentContextView;
            if (fragmentContextView != null) {
                int measuredHeight = ((BaseFragment) this.this$0).actionBar.getMeasuredHeight();
                fragmentContextView.layout(fragmentContextView.getLeft(), fragmentContextView.getTop() + measuredHeight, fragmentContextView.getRight(), fragmentContextView.getBottom() + measuredHeight);
            }
        }

        @Override // android.view.View
        public void setPadding(int i, int i2, int i3, int i4) {
            this.this$0.additionalPadding = i2;
            FragmentContextView fragmentContextView = this.this$0.fragmentContextView;
            if (fragmentContextView != null) {
                fragmentContextView.setTranslationY(i2 + ((BaseFragment) this.this$0).actionBar.getTranslationY());
            }
            int measuredHeight = ((BaseFragment) this.this$0).actionBar.getMeasuredHeight();
            for (ViewPage viewPage : this.this$0.getViewPages()) {
                viewPage.getListView().setPadding(0, this.this$0.additionalPadding + measuredHeight, 0, AndroidUtilities.m55dp(4.0f));
            }
            requestLayout();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.dispatchDraw(canvas);
            if (((BaseFragment) this.this$0).parentLayout != null) {
                ((BaseFragment) this.this$0).parentLayout.drawHeaderShadow(canvas, ((BaseFragment) this.this$0).actionBar.getMeasuredHeight() + ((int) ((BaseFragment) this.this$0).actionBar.getTranslationY()));
            }
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.globalIgnoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            return checkTabsAnimationInProgress() || this.this$0.getScrollSlidingTextTabStrip().isAnimatingIndicator() || onTouchEvent(ev);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            this.this$0.backgroundPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, ((BaseFragment) this.this$0).actionBar.getMeasuredHeight() + ((BaseFragment) this.this$0).actionBar.getTranslationY(), getMeasuredWidth(), getMeasuredHeight(), this.this$0.backgroundPaint);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            float f;
            float f2;
            float measuredWidth;
            float coerceAtMost;
            int measuredWidth2;
            int coerceAtMost2;
            int coerceAtLeast;
            int roundToInt;
            if (motionEvent == null || this.startedTracking || motionEvent.getY() > ((BaseFragment) this.this$0).actionBar.getMeasuredHeight() + ((BaseFragment) this.this$0).actionBar.getTranslationY()) {
                if (motionEvent != null) {
                    if (this.velocityTracker == null) {
                        this.velocityTracker = VelocityTracker.obtain();
                    }
                    VelocityTracker velocityTracker = this.velocityTracker;
                    Intrinsics.checkNotNull(velocityTracker);
                    velocityTracker.addMovement(motionEvent);
                }
                if (motionEvent != null && motionEvent.getAction() == 0 && checkTabsAnimationInProgress()) {
                    this.startedTracking = true;
                    this.startedTrackingPointerId = motionEvent.getPointerId(0);
                    this.startedTrackingX = (int) motionEvent.getX();
                    if (this.this$0.animatingForward) {
                        if (this.startedTrackingX < this.this$0.getViewPages()[0].getMeasuredWidth() + this.this$0.getViewPages()[0].getTranslationX()) {
                            this.additionalOffset = this.this$0.getViewPages()[0].getTranslationX();
                        } else {
                            ViewPage viewPage = this.this$0.getViewPages()[0];
                            this.this$0.getViewPages()[0] = this.this$0.getViewPages()[1];
                            this.this$0.getViewPages()[1] = viewPage;
                            this.this$0.animatingForward = false;
                            this.additionalOffset = this.this$0.getViewPages()[0].getTranslationX();
                            this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[0].getSelectedType(), 1.0f);
                            this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[1].getSelectedType(), this.additionalOffset / this.this$0.getViewPages()[0].getMeasuredWidth());
                            this.this$0.switchToCurrentSelectedMode(true);
                        }
                    } else if (this.startedTrackingX < this.this$0.getViewPages()[1].getMeasuredWidth() + this.this$0.getViewPages()[1].getTranslationX()) {
                        ViewPage viewPage2 = this.this$0.getViewPages()[0];
                        this.this$0.getViewPages()[0] = this.this$0.getViewPages()[1];
                        this.this$0.getViewPages()[1] = viewPage2;
                        this.this$0.animatingForward = true;
                        this.additionalOffset = this.this$0.getViewPages()[0].getTranslationX();
                        this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[0].getSelectedType(), 1.0f);
                        this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[1].getSelectedType(), (-this.additionalOffset) / this.this$0.getViewPages()[0].getMeasuredWidth());
                        this.this$0.switchToCurrentSelectedMode(true);
                    } else {
                        this.additionalOffset = this.this$0.getViewPages()[0].getTranslationX();
                    }
                    AnimatorSet animatorSet = this.tabsAnimation;
                    Intrinsics.checkNotNull(animatorSet);
                    animatorSet.removeAllListeners();
                    AnimatorSet animatorSet2 = this.tabsAnimation;
                    Intrinsics.checkNotNull(animatorSet2);
                    animatorSet2.cancel();
                    this.this$0.tabsAnimationInProgress = false;
                } else if (motionEvent != null && motionEvent.getAction() == 0) {
                    this.additionalOffset = BitmapDescriptorFactory.HUE_RED;
                }
                if (motionEvent != null && motionEvent.getAction() == 0 && !this.startedTracking && !this.maybeStartTracking) {
                    if (this.this$0.getScrollSlidingTextTabStrip().getVisibility() == 0) {
                        this.startedTrackingPointerId = motionEvent.getPointerId(0);
                        this.maybeStartTracking = true;
                        this.startedTrackingX = (int) motionEvent.getX();
                        this.startedTrackingY = (int) motionEvent.getY();
                        VelocityTracker velocityTracker2 = this.velocityTracker;
                        Intrinsics.checkNotNull(velocityTracker2);
                        velocityTracker2.clear();
                        return this.startedTracking;
                    }
                }
                if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                    int x = (int) ((motionEvent.getX() - this.startedTrackingX) + this.additionalOffset);
                    int abs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
                    if (this.startedTracking && ((this.this$0.animatingForward && x > 0) || (!this.this$0.animatingForward && x < 0))) {
                        if (!prepareForMoving(motionEvent, x < 0)) {
                            this.maybeStartTracking = true;
                            this.startedTracking = false;
                            this.this$0.getViewPages()[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                            this.this$0.getViewPages()[1].setTranslationX(this.this$0.animatingForward ? this.this$0.getViewPages()[0].getMeasuredWidth() : -this.this$0.getViewPages()[0].getMeasuredWidth());
                            this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[1].getSelectedType(), BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    if (this.maybeStartTracking && !this.startedTracking) {
                        float pixelsInCM = AndroidUtilities.getPixelsInCM(0.3f, true);
                        int x2 = (int) (motionEvent.getX() - this.startedTrackingX);
                        if (Math.abs(x2) >= pixelsInCM && Math.abs(x2) > abs) {
                            prepareForMoving(motionEvent, x < 0);
                        }
                    } else if (this.startedTracking) {
                        float f3 = x;
                        this.this$0.getViewPages()[0].setTranslationX(f3);
                        if (this.this$0.animatingForward) {
                            this.this$0.getViewPages()[1].setTranslationX(this.this$0.getViewPages()[0].getMeasuredWidth() + f3);
                        } else {
                            this.this$0.getViewPages()[1].setTranslationX(f3 - this.this$0.getViewPages()[0].getMeasuredWidth());
                        }
                        this.this$0.getScrollSlidingTextTabStrip().selectTabWithId(this.this$0.getViewPages()[1].getSelectedType(), Math.abs(x) / this.this$0.getViewPages()[0].getMeasuredWidth());
                    }
                } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
                    VelocityTracker velocityTracker3 = this.velocityTracker;
                    Intrinsics.checkNotNull(velocityTracker3);
                    velocityTracker3.computeCurrentVelocity(1000, getMaximumVelocity());
                    if (motionEvent == null || motionEvent.getAction() == 3) {
                        f = 0.0f;
                        f2 = 0.0f;
                    } else {
                        VelocityTracker velocityTracker4 = this.velocityTracker;
                        Intrinsics.checkNotNull(velocityTracker4);
                        f = velocityTracker4.getXVelocity();
                        VelocityTracker velocityTracker5 = this.velocityTracker;
                        Intrinsics.checkNotNull(velocityTracker5);
                        f2 = velocityTracker5.getYVelocity();
                        if (!this.startedTracking && Math.abs(f) >= 3000.0f && Math.abs(f) > Math.abs(f2)) {
                            prepareForMoving(motionEvent, f < BitmapDescriptorFactory.HUE_RED);
                        }
                    }
                    if (this.startedTracking) {
                        float x3 = this.this$0.getViewPages()[0].getX();
                        this.tabsAnimation = new AnimatorSet();
                        boolean z = ((this.additionalOffset > BitmapDescriptorFactory.HUE_RED ? 1 : (this.additionalOffset == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) == 0) ? !(Math.abs(x3) >= ((float) this.this$0.getViewPages()[0].getMeasuredWidth()) / 3.0f || (Math.abs(f) >= 3500.0f && Math.abs(f) >= Math.abs(f2))) : !(Math.abs(f) <= 1500.0f ? !this.this$0.animatingForward ? this.this$0.getViewPages()[0].getX() < ((float) (this.this$0.getViewPages()[0].getMeasuredWidth() >> 1)) : this.this$0.getViewPages()[1].getX() > ((float) (this.this$0.getViewPages()[0].getMeasuredWidth() >> 1)) : !this.this$0.animatingForward ? f < BitmapDescriptorFactory.HUE_RED : f > BitmapDescriptorFactory.HUE_RED);
                        this.backAnimation = z;
                        if (z) {
                            measuredWidth = Math.abs(x3);
                            if (this.this$0.animatingForward) {
                                AnimatorSet animatorSet3 = this.tabsAnimation;
                                Intrinsics.checkNotNull(animatorSet3);
                                animatorSet3.playTogether(ObjectAnimator.ofFloat(this.this$0.getViewPages()[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.this$0.getViewPages()[1], View.TRANSLATION_X, this.this$0.getViewPages()[1].getMeasuredWidth()));
                            } else {
                                AnimatorSet animatorSet4 = this.tabsAnimation;
                                Intrinsics.checkNotNull(animatorSet4);
                                animatorSet4.playTogether(ObjectAnimator.ofFloat(this.this$0.getViewPages()[0], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.this$0.getViewPages()[1], View.TRANSLATION_X, -this.this$0.getViewPages()[1].getMeasuredWidth()));
                            }
                        } else {
                            measuredWidth = this.this$0.getViewPages()[0].getMeasuredWidth() - Math.abs(x3);
                            if (this.this$0.animatingForward) {
                                AnimatorSet animatorSet5 = this.tabsAnimation;
                                Intrinsics.checkNotNull(animatorSet5);
                                animatorSet5.playTogether(ObjectAnimator.ofFloat(this.this$0.getViewPages()[0], View.TRANSLATION_X, -this.this$0.getViewPages()[0].getMeasuredWidth()), ObjectAnimator.ofFloat(this.this$0.getViewPages()[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                            } else {
                                AnimatorSet animatorSet6 = this.tabsAnimation;
                                Intrinsics.checkNotNull(animatorSet6);
                                animatorSet6.playTogether(ObjectAnimator.ofFloat(this.this$0.getViewPages()[0], View.TRANSLATION_X, this.this$0.getViewPages()[0].getMeasuredWidth()), ObjectAnimator.ofFloat(this.this$0.getViewPages()[1], View.TRANSLATION_X, BitmapDescriptorFactory.HUE_RED));
                            }
                        }
                        AnimatorSet animatorSet7 = this.tabsAnimation;
                        Intrinsics.checkNotNull(animatorSet7);
                        animatorSet7.setInterpolator(TelegramViewPagerFragment.interpolator);
                        int measuredWidth3 = getMeasuredWidth();
                        int i = measuredWidth3 / 2;
                        coerceAtMost = RangesKt___RangesKt.coerceAtMost(1.0f, (measuredWidth * 1.0f) / measuredWidth3);
                        float f4 = i;
                        float distanceInfluenceForSnapDuration = f4 + (AndroidUtilities.distanceInfluenceForSnapDuration(coerceAtMost) * f4);
                        float abs2 = Math.abs(f);
                        if (abs2 > BitmapDescriptorFactory.HUE_RED) {
                            roundToInt = MathKt__MathJVMKt.roundToInt(Math.abs(distanceInfluenceForSnapDuration / abs2) * 1000.0f);
                            measuredWidth2 = roundToInt * 4;
                        } else {
                            measuredWidth2 = (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f);
                        }
                        coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(measuredWidth2, 600);
                        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION, coerceAtMost2);
                        AnimatorSet animatorSet8 = this.tabsAnimation;
                        Intrinsics.checkNotNull(animatorSet8);
                        animatorSet8.setDuration(coerceAtLeast);
                        AnimatorSet animatorSet9 = this.tabsAnimation;
                        Intrinsics.checkNotNull(animatorSet9);
                        final TelegramViewPagerFragment telegramViewPagerFragment = this.this$0;
                        animatorSet9.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.ui.pager.TelegramViewPagerFragment$ContentView$onTouchEvent$1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                boolean z2;
                                Intrinsics.checkNotNullParameter(animator, "animator");
                                TelegramViewPagerFragment.ContentView.this.tabsAnimation = null;
                                z2 = TelegramViewPagerFragment.ContentView.this.backAnimation;
                                if (!z2) {
                                    TelegramViewPagerFragment.ViewPage viewPage3 = telegramViewPagerFragment.getViewPages()[0];
                                    telegramViewPagerFragment.getViewPages()[0] = telegramViewPagerFragment.getViewPages()[1];
                                    telegramViewPagerFragment.getViewPages()[1] = viewPage3;
                                    telegramViewPagerFragment.getScrollSlidingTextTabStrip().selectTabWithId(telegramViewPagerFragment.getViewPages()[0].getSelectedType(), 1.0f);
                                }
                                ViewExtKt.gone$default(telegramViewPagerFragment.getViewPages()[1], false, 1, null);
                                telegramViewPagerFragment.tabsAnimationInProgress = false;
                                TelegramViewPagerFragment.ContentView.this.maybeStartTracking = false;
                                ((BaseFragment) telegramViewPagerFragment).actionBar.setEnabled(true);
                                telegramViewPagerFragment.getScrollSlidingTextTabStrip().setEnabled(true);
                            }
                        });
                        AnimatorSet animatorSet10 = this.tabsAnimation;
                        Intrinsics.checkNotNull(animatorSet10);
                        animatorSet10.start();
                        this.this$0.tabsAnimationInProgress = true;
                        this.startedTracking = false;
                    } else {
                        this.maybeStartTracking = false;
                        ((BaseFragment) this.this$0).actionBar.setEnabled(true);
                        this.this$0.getScrollSlidingTextTabStrip().setEnabled(true);
                    }
                    VelocityTracker velocityTracker6 = this.velocityTracker;
                    if (velocityTracker6 != null) {
                        Intrinsics.checkNotNull(velocityTracker6);
                        velocityTracker6.recycle();
                        this.velocityTracker = null;
                    }
                }
                return this.startedTracking;
            }
            return false;
        }

        private final boolean checkTabsAnimationInProgress() {
            if (this.this$0.tabsAnimationInProgress) {
                boolean z = true;
                if (this.backAnimation) {
                    if (Math.abs(this.this$0.getViewPages()[0].getTranslationX()) < 1.0f) {
                        this.this$0.getViewPages()[0].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        this.this$0.getViewPages()[1].setTranslationX(this.this$0.getViewPages()[0].getMeasuredWidth() * (this.this$0.animatingForward ? 1 : -1));
                    }
                    z = false;
                } else {
                    if (Math.abs(this.this$0.getViewPages()[1].getTranslationX()) < 1.0f) {
                        this.this$0.getViewPages()[0].setTranslationX(this.this$0.getViewPages()[0].getMeasuredWidth() * (this.this$0.animatingForward ? -1 : 1));
                        this.this$0.getViewPages()[1].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    }
                    z = false;
                }
                if (z) {
                    AnimatorSet animatorSet = this.tabsAnimation;
                    if (animatorSet != null) {
                        Intrinsics.checkNotNull(animatorSet);
                        animatorSet.cancel();
                        this.tabsAnimation = null;
                    }
                    this.this$0.tabsAnimationInProgress = false;
                }
                return this.this$0.tabsAnimationInProgress;
            }
            return false;
        }

        private final boolean prepareForMoving(MotionEvent motionEvent, boolean z) {
            int nextPageId = this.this$0.getScrollSlidingTextTabStrip().getNextPageId(z);
            if (nextPageId < 0) {
                return false;
            }
            getParent().requestDisallowInterceptTouchEvent(true);
            this.maybeStartTracking = false;
            this.startedTracking = true;
            this.startedTrackingX = (int) (motionEvent.getX() + this.additionalOffset);
            ((BaseFragment) this.this$0).actionBar.setEnabled(false);
            this.this$0.getScrollSlidingTextTabStrip().setEnabled(false);
            this.this$0.getViewPages()[1].setSelectedType(nextPageId);
            ViewExtKt.visible$default(this.this$0.getViewPages()[1], false, 1, null);
            this.this$0.animatingForward = z;
            this.this$0.switchToCurrentSelectedMode(true);
            if (z) {
                this.this$0.getViewPages()[1].setTranslationX(this.this$0.getViewPages()[0].getMeasuredWidth());
            } else {
                this.this$0.getViewPages()[1].setTranslationX(-this.this$0.getViewPages()[0].getMeasuredWidth());
            }
            return true;
        }
    }

    /* compiled from: TelegramViewPagerFragment.kt */
    /* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float interpolator$lambda$13(float f) {
        return ((float) Math.pow(f - 1.0f, 5)) + 1.0f;
    }
}
