package com.iMe.fork.p023ui.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.dialog.SelectLanguageBottomSheet;
import com.iMe.fork.p023ui.view.EmptyView;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p030ui.contacts.view.TextCellWithRightImage;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SearchField;
/* compiled from: SelectLanguageBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet */
/* loaded from: classes3.dex */
public final class SelectLanguageBottomSheet extends BottomSheet {
    private final Lazy bottomShadow$delegate;
    private final Lazy cancelButton$delegate;
    private List<TranslationLanguageUiModel> filteredLanguages;
    private boolean ignoreLayout;
    private boolean isSearching;
    private int itemWidth;
    private final List<TranslationLanguageUiModel> languages;
    private final List<String> lastSelectLanguages;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private int scrollOffsetY;
    private final Lazy searchView$delegate;
    private final Callbacks$Callback1<String> selectLanguageDelegate;
    private String selectedLangCode;
    private AnimatorSet shadowAnimation;
    private boolean shadowShowed;
    private final Lazy topShadow$delegate;

    static {
        new Companion(null);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public final List<TranslationLanguageUiModel> getLanguages() {
        return this.languages;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectLanguageBottomSheet(Context context, List<TranslationLanguageUiModel> languages, String str, Callbacks$Callback1<String> selectLanguageDelegate) {
        super(context, true);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        List<TranslationLanguageUiModel> emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(languages, "languages");
        Intrinsics.checkNotNullParameter(selectLanguageDelegate, "selectLanguageDelegate");
        this.languages = languages;
        this.selectedLangCode = str;
        this.selectLanguageDelegate = selectLanguageDelegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$topShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = SelectLanguageBottomSheet.this.initShadow(true);
                return initShadow;
            }
        });
        this.topShadow$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SelectLanguageBottomSheet$initSearchView$1>() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$searchView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SelectLanguageBottomSheet$initSearchView$1 invoke() {
                SelectLanguageBottomSheet$initSearchView$1 initSearchView;
                initSearchView = SelectLanguageBottomSheet.this.initSearchView();
                return initSearchView;
            }
        });
        this.searchView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SelectLanguageBottomSheet$initListView$1>() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SelectLanguageBottomSheet$initListView$1 invoke() {
                SelectLanguageBottomSheet$initListView$1 initListView;
                initListView = SelectLanguageBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SelectLanguageBottomSheet.ListAdapter invoke() {
                return new SelectLanguageBottomSheet.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$bottomShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = SelectLanguageBottomSheet.this.initShadow(false);
                return initShadow;
            }
        });
        this.bottomShadow$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$cancelButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initCancelButton;
                initCancelButton = SelectLanguageBottomSheet.this.initCancelButton();
                return initCancelButton;
            }
        });
        this.cancelButton$delegate = lazy6;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.filteredLanguages = emptyList;
        this.lastSelectLanguages = getLastSelectionList();
        RootView rootView = new RootView();
        rootView.setWillNotDraw(false);
        rootView.addView(getTopShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 48, 0, 54, 0, 0));
        rootView.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, 54, 0, 48));
        rootView.addView(getSearchView(), LayoutHelper.createFrame(-1, 56, 48));
        rootView.addView(getBottomShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 80, 0, 0, 0, 48));
        rootView.addView(getCancelButton(), LayoutHelper.createFrame(-1, 48, 80));
        this.containerView = rootView;
        setupListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getTopShadow() {
        return (View) this.topShadow$delegate.getValue();
    }

    private final SelectLanguageBottomSheet$initSearchView$1 getSearchView() {
        return (SelectLanguageBottomSheet$initSearchView$1) this.searchView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SelectLanguageBottomSheet$initListView$1 getListView() {
        return (SelectLanguageBottomSheet$initListView$1) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final View getBottomShadow() {
        return (View) this.bottomShadow$delegate.getValue();
    }

    private final TextView getCancelButton() {
        return (TextView) this.cancelButton$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TranslationLanguageUiModel> getCurrentItemsList() {
        return this.isSearching ? this.filteredLanguages : getSelectedList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$initSearchView$1, org.telegram.ui.Components.SearchField] */
    public final SelectLanguageBottomSheet$initSearchView$1 initSearchView() {
        final Context context = getContext();
        final Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        ?? r2 = new SearchField(context, resourcesProvider) { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$initSearchView$1
            @Override // org.telegram.p043ui.Components.SearchField
            public void onTextChange(String str) {
                boolean isBlank;
                boolean z;
                boolean contains;
                if (str == null) {
                    return;
                }
                SelectLanguageBottomSheet selectLanguageBottomSheet = SelectLanguageBottomSheet.this;
                isBlank = StringsKt__StringsJVMKt.isBlank(str);
                selectLanguageBottomSheet.isSearching = !isBlank;
                z = SelectLanguageBottomSheet.this.isSearching;
                if (z) {
                    SelectLanguageBottomSheet selectLanguageBottomSheet2 = SelectLanguageBottomSheet.this;
                    List<TranslationLanguageUiModel> languages = selectLanguageBottomSheet2.getLanguages();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : languages) {
                        contains = StringsKt__StringsKt.contains((CharSequence) ((TranslationLanguageUiModel) obj).getDisplayLanguage(), (CharSequence) str, true);
                        if (contains) {
                            arrayList.add(obj);
                        }
                    }
                    selectLanguageBottomSheet2.filteredLanguages = arrayList;
                }
                SelectLanguageBottomSheet.this.getListAdapter().notifyDataSetChanged();
            }
        };
        r2.setHint(LocaleController.getInternalString(C3632R.string.translation_search_language));
        return r2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initCancelButton() {
        TextView textView = new TextView(getContext());
        ViewExtKt.setHorizontalPadding(textView, 18);
        textView.setAllCaps(true);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        textView.setBackground(Theme.createSelectorWithBackgroundDrawable(Theme.getColor(Theme.key_dialogBackground), Theme.getColor(Theme.key_listSelector)));
        textView.setText(LocaleController.getString("Cancel", C3632R.string.Cancel));
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectLanguageBottomSheet.initCancelButton$lambda$3$lambda$2(SelectLanguageBottomSheet.this, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initCancelButton$lambda$3$lambda$2(SelectLanguageBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.recyclerview.widget.RecyclerView, com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$initListView$1, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
    public final SelectLanguageBottomSheet$initListView$1 initListView() {
        final Context context = getContext();
        ?? r1 = new RecyclerListView(context) { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$initListView$1
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (SelectLanguageBottomSheet.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        r1.setLayoutManager(new LinearLayoutManager(r1.getContext()));
        r1.setAdapter(getListAdapter());
        r1.setVerticalScrollBarEnabled(false);
        r1.setClipToPadding(false);
        r1.setEnabled(true);
        r1.setGlowColor(Theme.getColor(Theme.key_dialogScrollGlow));
        return r1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initShadow(boolean z) {
        View view = new View(getContext());
        view.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        view.setVisibility(z ? 8 : 0);
        return view;
    }

    private final void setupListeners() {
        SelectLanguageBottomSheet$initListView$1 listView = getListView();
        listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$setupListeners$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                SelectLanguageBottomSheet.this.updateLayout();
            }
        });
        listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SelectLanguageBottomSheet.setupListeners$lambda$7$lambda$6(SelectLanguageBottomSheet.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7$lambda$6(SelectLanguageBottomSheet this$0, View view, int i) {
        boolean contains;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getCurrentItemsList().isEmpty()) {
            return;
        }
        String languageCode = this$0.getCurrentItemsList().get(i).getLanguageCode();
        this$0.selectedLangCode = languageCode;
        contains = CollectionsKt___CollectionsKt.contains(this$0.lastSelectLanguages, languageCode);
        if (!contains) {
            if (this$0.lastSelectLanguages.size() < 3) {
                this$0.lastSelectLanguages.add(String.valueOf(this$0.selectedLangCode));
            } else {
                this$0.lastSelectLanguages.set(0, String.valueOf(this$0.selectedLangCode));
            }
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this$0.lastSelectLanguages, "-", null, null, 0, null, null, 62, null);
            SharedConfig.setLastSelectedLanguage(joinToString$default);
        }
        this$0.getListAdapter().notifyDataSetChanged();
        this$0.dismiss();
        this$0.selectLanguageDelegate.invoke(this$0.selectedLangCode);
    }

    private final List<TranslationLanguageUiModel> getSelectedList() {
        List<TranslationLanguageUiModel> plus;
        boolean contains;
        boolean contains2;
        List<TranslationLanguageUiModel> list = this.languages;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            contains2 = CollectionsKt___CollectionsKt.contains(this.lastSelectLanguages, ((TranslationLanguageUiModel) obj).getLanguageCode());
            if (contains2) {
                arrayList.add(obj);
            }
        }
        List<TranslationLanguageUiModel> list2 = this.languages;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            contains = CollectionsKt___CollectionsKt.contains(this.lastSelectLanguages, ((TranslationLanguageUiModel) obj2).getLanguageCode());
            if (!contains) {
                arrayList2.add(obj2);
            }
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
        return plus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> getLastSelectionList() {
        List split$default;
        List<String> mutableList;
        String lastSelectedLanguage = SharedConfig.lastSelectedLanguage;
        Intrinsics.checkNotNullExpressionValue(lastSelectedLanguage, "lastSelectedLanguage");
        if (lastSelectedLanguage.length() > 0) {
            String lastSelectedLanguage2 = SharedConfig.lastSelectedLanguage;
            Intrinsics.checkNotNullExpressionValue(lastSelectedLanguage2, "lastSelectedLanguage");
            split$default = StringsKt__StringsKt.split$default((CharSequence) lastSelectedLanguage2, new String[]{"-"}, false, 0, 6, (Object) null);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) split$default);
            return mutableList;
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSelectedLanguagePosition(int i) {
        return Intrinsics.areEqual(getCurrentItemsList().get(i).getLanguageCode(), this.selectedLangCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLayout() {
        if (getListView().getChildCount() <= 0) {
            setScrollOffsetY(getListView().getPaddingTop());
            return;
        }
        int i = 0;
        View childAt = getListView().getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) getListView().findContainingViewHolder(childAt);
        int top = childAt.getTop();
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            runShadowAnimation(false);
            i = top;
        } else {
            runShadowAnimation(true);
        }
        if (this.scrollOffsetY != i) {
            setScrollOffsetY(i);
        }
    }

    private final void setScrollOffsetY(int i) {
        this.scrollOffsetY = i;
        getListView().setTopGlowOffset(i);
        float f = i;
        getSearchView().setTranslationY(f);
        getTopShadow().setTranslationY(f);
        this.containerView.invalidate();
    }

    private final void runShadowAnimation(final boolean z) {
        if (this.shadowShowed != z) {
            this.shadowShowed = z;
            if (z) {
                ViewExtKt.visible$default(getTopShadow(), false, 1, null);
            }
            AnimatorSet animatorSet = this.shadowAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            Animator[] animatorArr = new Animator[1];
            View topShadow = getTopShadow();
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            animatorArr[0] = ObjectAnimator.ofFloat(topShadow, property, fArr);
            animatorSet2.playTogether(animatorArr);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$runShadowAnimation$1$1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    AnimatorSet animatorSet3;
                    AnimatorSet animatorSet4;
                    View topShadow2;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    animatorSet3 = SelectLanguageBottomSheet.this.shadowAnimation;
                    if (animatorSet3 != null) {
                        animatorSet4 = SelectLanguageBottomSheet.this.shadowAnimation;
                        if (Intrinsics.areEqual(animatorSet4, animation)) {
                            if (!z) {
                                topShadow2 = SelectLanguageBottomSheet.this.getTopShadow();
                                ViewExtKt.invisible$default(topShadow2, false, 1, null);
                            }
                            SelectLanguageBottomSheet.this.shadowAnimation = null;
                        }
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                    AnimatorSet animatorSet3;
                    AnimatorSet animatorSet4;
                    Intrinsics.checkNotNullParameter(animation, "animation");
                    animatorSet3 = SelectLanguageBottomSheet.this.shadowAnimation;
                    if (animatorSet3 != null) {
                        animatorSet4 = SelectLanguageBottomSheet.this.shadowAnimation;
                        if (Intrinsics.areEqual(animatorSet4, animation)) {
                            SelectLanguageBottomSheet.this.shadowAnimation = null;
                        }
                    }
                }
            });
            animatorSet2.setDuration(150L);
            animatorSet2.start();
            this.shadowAnimation = animatorSet2;
        }
    }

    /* compiled from: SelectLanguageBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$RootView */
    /* loaded from: classes3.dex */
    private final class RootView extends FrameLayout {
        private boolean fullHeight;
        private int lastNotifyWidth;
        private final RectF rect;

        public RootView() {
            super(SelectLanguageBottomSheet.this.getContext());
            this.rect = new RectF();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            Intrinsics.checkNotNullParameter(ev, "ev");
            if (ev.getAction() == 0 && SelectLanguageBottomSheet.this.scrollOffsetY != 0 && ev.getY() < SelectLanguageBottomSheet.this.scrollOffsetY) {
                SelectLanguageBottomSheet.this.dismiss();
                return true;
            }
            return super.onInterceptTouchEvent(ev);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            return !SelectLanguageBottomSheet.this.isDismissed() && super.onTouchEvent(e);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int ceil;
            SelectLanguageBottomSheet.this.ignoreLayout = true;
            setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
            SelectLanguageBottomSheet.this.ignoreLayout = false;
            SelectLanguageBottomSheet.this.itemWidth = View.MeasureSpec.getSize(i) - AndroidUtilities.m107dp(28);
            if (!SelectLanguageBottomSheet.this.getCurrentItemsList().isEmpty()) {
                ceil = ((int) Math.ceil(SelectLanguageBottomSheet.this.getCurrentItemsList().size())) * AndroidUtilities.m107dp(50);
            } else {
                ceil = AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
            }
            int m107dp = AndroidUtilities.m107dp(110) + ceil + ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop + AndroidUtilities.statusBarHeight;
            int size = View.MeasureSpec.getSize(i2);
            int i3 = ((double) m107dp) < ((double) (((float) size) / 5.0f)) * 3.2d ? 0 : (size / 5) * 2;
            if (i3 != 0 && m107dp < size) {
                i3 -= size - m107dp;
            }
            if (i3 == 0) {
                i3 = ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop;
            }
            if (SelectLanguageBottomSheet.this.getListView().getPaddingTop() != i3) {
                SelectLanguageBottomSheet.this.ignoreLayout = true;
                SelectLanguageBottomSheet.this.getListView().setPadding(0, i3, 0, 0);
                SelectLanguageBottomSheet.this.ignoreLayout = false;
            }
            this.fullHeight = m107dp >= size;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(m107dp, size), 1073741824));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            if (this.lastNotifyWidth != i5) {
                this.lastNotifyWidth = i5;
                SelectLanguageBottomSheet.this.getListAdapter().notifyDataSetChanged();
            }
            super.onLayout(z, i, i2, i3, i4);
            SelectLanguageBottomSheet.this.updateLayout();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (SelectLanguageBottomSheet.this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float f;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            int m107dp = (SelectLanguageBottomSheet.this.scrollOffsetY - ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop) + AndroidUtilities.m107dp(6);
            int m107dp2 = (SelectLanguageBottomSheet.this.scrollOffsetY - ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop) - AndroidUtilities.m107dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m107dp(15) + ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop;
            int i2 = AndroidUtilities.statusBarHeight;
            int i3 = m107dp2 + i2;
            int i4 = m107dp + i2;
            int i5 = measuredHeight - i2;
            if (this.fullHeight) {
                int i6 = ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop + i3;
                int i7 = AndroidUtilities.statusBarHeight;
                if (i6 < i7 * 2) {
                    int min = Math.min(i7, ((i7 * 2) - i3) - ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop);
                    i3 -= min;
                    i5 += min;
                    f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                } else {
                    f = 1.0f;
                }
                int i8 = ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop + i3;
                int i9 = AndroidUtilities.statusBarHeight;
                i = i8 < i9 ? Math.min(i9, (i9 - i3) - ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop) : 0;
            } else {
                i = 0;
                f = 1.0f;
            }
            ((BottomSheet) SelectLanguageBottomSheet.this).shadowDrawable.setBounds(0, i3, getMeasuredWidth(), i5);
            ((BottomSheet) SelectLanguageBottomSheet.this).shadowDrawable.draw(canvas);
            if (!(f == 1.0f)) {
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_dialogBackground));
                this.rect.set(((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop + i3, getMeasuredWidth() - ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingLeft, ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingTop + i3 + AndroidUtilities.m107dp(24));
                canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(12) * f, AndroidUtilities.m107dp(12) * f, Theme.dialogs_onlineCirclePaint);
            }
            int m107dp3 = AndroidUtilities.m107dp(36);
            this.rect.set((getMeasuredWidth() - m107dp3) / 2.0f, i4, (getMeasuredWidth() + m107dp3) / 2.0f, i4 + AndroidUtilities.m107dp(4));
            Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_sheet_scrollUp));
            canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2), Theme.dialogs_onlineCirclePaint);
            if (i > 0) {
                int color = Theme.getColor(Theme.key_dialogBackground);
                Theme.dialogs_onlineCirclePaint.setColor(Color.argb(255, (int) (Color.red(color) * 0.8f), (int) (Color.green(color) * 0.8f), (int) (Color.blue(color) * 0.8f)));
                canvas.drawRect(((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - i, getMeasuredWidth() - ((BottomSheet) SelectLanguageBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, Theme.dialogs_onlineCirclePaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectLanguageBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return (viewHolder == null || viewHolder.getItemViewType() != IdFabric$ViewTypes.TEXT_CELL_WITH_RIGHT_IMAGE || SelectLanguageBottomSheet.this.isSelectedLanguagePosition(viewHolder.getAdapterPosition())) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (SelectLanguageBottomSheet.this.getCurrentItemsList().isEmpty()) {
                return 1;
            }
            return SelectLanguageBottomSheet.this.getCurrentItemsList().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return SelectLanguageBottomSheet.this.getCurrentItemsList().isEmpty() ? IdFabric$ViewTypes.EMPTY_VIEW : IdFabric$ViewTypes.TEXT_CELL_WITH_RIGHT_IMAGE;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout textCellWithRightImage;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.EMPTY_VIEW) {
                Context context = SelectLanguageBottomSheet.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                String internalString = LocaleController.getInternalString(C3632R.string.translation_search_language_empty);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…on_search_language_empty)");
                textCellWithRightImage = new EmptyView(context, internalString);
                textCellWithRightImage.setLayoutParams(LayoutHelper.createRecycler(-1, ImageReceiver.DEFAULT_CROSSFADE_DURATION));
            } else {
                Context context2 = SelectLanguageBottomSheet.this.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                textCellWithRightImage = new TextCellWithRightImage(context2, 23, true);
            }
            return new RecyclerListView.Holder(textCellWithRightImage);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int lastIndex;
            Intrinsics.checkNotNullParameter(holder, "holder");
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(SelectLanguageBottomSheet.this.getLastSelectionList());
            boolean z = lastIndex == i;
            int itemViewType = holder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.TEXT_CELL_WITH_RIGHT_IMAGE) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.ui.contacts.view.TextCellWithRightImage");
                TextCellWithRightImage textCellWithRightImage = (TextCellWithRightImage) view;
                SelectLanguageBottomSheet selectLanguageBottomSheet = SelectLanguageBottomSheet.this;
                textCellWithRightImage.setText(((TranslationLanguageUiModel) selectLanguageBottomSheet.getCurrentItemsList().get(i)).getDisplayLanguage(), z);
                textCellWithRightImage.setRightIconVisible(selectLanguageBottomSheet.isSelectedLanguagePosition(i));
                textCellWithRightImage.setRightIcon(C3632R.C3634drawable.ic_ab_done, Theme.getColor(Theme.key_chats_actionBackground));
            } else if (itemViewType == IdFabric$ViewTypes.EMPTY_VIEW) {
                View view2 = holder.itemView;
                Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type com.iMe.fork.ui.view.EmptyView");
                ((EmptyView) view2).getAnimationView().playAnimation();
            }
        }
    }

    /* compiled from: SelectLanguageBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectLanguageBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
