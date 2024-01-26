package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.TemplatesController;
import com.iMe.fork.enums.TemplatesSortingType;
import com.iMe.fork.p023ui.view.ChatAttachAlertTemplatesLayout;
import com.iMe.storage.domain.model.templates.TemplateModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Components.BotCommandsMenuView;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.FillLastLinearLayoutManager;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: ChatAttachAlertTemplatesLayout.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout */
/* loaded from: classes3.dex */
public final class ChatAttachAlertTemplatesLayout extends ChatAttachAlert.AttachAlertLayout implements NotificationCenter.NotificationCenterDelegate {
    private int bottomPaddingRow;
    private float currentPanTranslationProgress;
    private final BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate delegate;
    private final Lazy emptyView$delegate;
    private int headerRow;
    private boolean ignoreLayout;
    private final Lazy listAdapter$delegate;
    private final Lazy listLayoutManager$delegate;
    private final Lazy listView$delegate;
    private int rowCount;
    private final Lazy sortItem$delegate;
    private final List<TemplateModel> templates;
    private int templatesStartRow;
    private int topPadding;
    private int topPaddingRow;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean initEmptyView$lambda$6$lambda$5(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, org.koin.core.component.KoinComponent
    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, com.iMe.p030ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    public final BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertTemplatesLayout(ChatAttachAlert alert, Context context, Theme.ResourcesProvider resourcesProvider, BotCommandsMenuView.BotCommandsAdapter.TemplatesDelegate delegate) {
        super(alert, context, resourcesProvider);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Intrinsics.checkNotNullParameter(alert, "alert");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ActionBarMenuItem>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$sortItem$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ActionBarMenuItem invoke() {
                ActionBarMenuItem initSortItem;
                initSortItem = ChatAttachAlertTemplatesLayout.this.initSortItem();
                return initSortItem;
            }
        });
        this.sortItem$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$emptyView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initEmptyView;
                initEmptyView = ChatAttachAlertTemplatesLayout.this.initEmptyView();
                return initEmptyView;
            }
        });
        this.emptyView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ChatAttachAlertTemplatesLayout$initListLayoutManager$1>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$listLayoutManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatAttachAlertTemplatesLayout$initListLayoutManager$1 invoke() {
                ChatAttachAlertTemplatesLayout$initListLayoutManager$1 initListLayoutManager;
                initListLayoutManager = ChatAttachAlertTemplatesLayout.this.initListLayoutManager();
                return initListLayoutManager;
            }
        });
        this.listLayoutManager$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatAttachAlertTemplatesLayout.ListAdapter invoke() {
                return new ChatAttachAlertTemplatesLayout.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ChatAttachAlertTemplatesLayout$initListView$1>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatAttachAlertTemplatesLayout$initListView$1 invoke() {
                ChatAttachAlertTemplatesLayout$initListView$1 initListView;
                initListView = ChatAttachAlertTemplatesLayout.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy5;
        this.templates = new ArrayList();
        addView(getEmptyView(), LayoutHelper.createFrame(-1, -1));
        addView(getListView(), LayoutHelper.createFrame(-1, -1));
        setupListView();
        updateSortItem();
        loadTemplates();
        NotificationCenter.getInstance(this.parentAlert.getCurrentAccount()).addObserver(this, NotificationCenter.templatesDidChanged);
    }

    private final ActionBarMenuItem getSortItem() {
        return (ActionBarMenuItem) this.sortItem$delegate.getValue();
    }

    private final LinearLayout getEmptyView() {
        return (LinearLayout) this.emptyView$delegate.getValue();
    }

    private final ChatAttachAlertTemplatesLayout$initListLayoutManager$1 getListLayoutManager() {
        return (ChatAttachAlertTemplatesLayout$initListLayoutManager$1) this.listLayoutManager$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final ChatAttachAlertTemplatesLayout$initListView$1 getListView() {
        return (ChatAttachAlertTemplatesLayout$initListView$1) this.listView$delegate.getValue();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onMenuItemClick(int i) {
        if (i == 40) {
            this.delegate.didPressOpenTemplates(true);
            return;
        }
        int i2 = IdFabric$Menu.SORT;
        if (i < i2 || i >= TemplatesSortingType.values().length + i2) {
            return;
        }
        TemplatesSortingType templatesSortingType = TemplatesSortingType.values()[i - i2];
        SharedConfig.setSelectedTemplatesSortingType(templatesSortingType);
        getSortItem().setIcon(templatesSortingType.getIconResId());
        updateSortItem();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
        if (r2 != false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getCurrentItemTop() {
        /*
            r5 = this;
            com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListView$1 r0 = r5.getListView()
            int r0 = r0.getChildCount()
            r1 = 2147483647(0x7fffffff, float:NaN)
            r2 = 1
            if (r0 > r2) goto Lf
            return r1
        Lf:
            com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListView$1 r0 = r5.getListView()
            android.view.View r0 = r0.getChildAt(r2)
            if (r0 != 0) goto L1a
            return r1
        L1a:
            com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListView$1 r1 = r5.getListView()
            androidx.recyclerview.widget.RecyclerView$ViewHolder r1 = r1.findContainingViewHolder(r0)
            float r0 = r0.getY()
            int r0 = (int) r0
            r3 = 8
            int r3 = org.telegram.messenger.AndroidUtilities.m107dp(r3)
            int r0 = r0 - r3
            r3 = 0
            if (r0 <= 0) goto L40
            if (r1 == 0) goto L3b
            int r4 = r1.getAdapterPosition()
            if (r4 != r2) goto L3b
            r4 = r2
            goto L3c
        L3b:
            r4 = r3
        L3c:
            if (r4 == 0) goto L40
            r4 = r0
            goto L41
        L40:
            r4 = r3
        L41:
            if (r0 < 0) goto L50
            if (r1 == 0) goto L4c
            int r1 = r1.getAdapterPosition()
            if (r1 != r2) goto L4c
            goto L4d
        L4c:
            r2 = r3
        L4d:
            if (r2 == 0) goto L50
            goto L51
        L50:
            r0 = r4
        L51:
            r1 = 13
            int r1 = org.telegram.messenger.AndroidUtilities.m107dp(r1)
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.ChatAttachAlertTemplatesLayout.getCurrentItemTop():int");
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m107dp(17);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.topPadding;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreMeasure(int r4, int r5) {
        /*
            r3 = this;
            org.telegram.ui.Components.ChatAttachAlert r4 = r3.parentAlert
            org.telegram.ui.Components.SizeNotifierFrameLayout r4 = r4.sizeNotifierFrameLayout
            int r4 = r4.measureKeyboardHeight()
            r0 = 20
            int r0 = org.telegram.messenger.AndroidUtilities.m107dp(r0)
            r1 = 1
            r2 = 0
            if (r4 <= r0) goto L1e
            r4 = 52
            int r4 = org.telegram.messenger.AndroidUtilities.m107dp(r4)
            org.telegram.ui.Components.ChatAttachAlert r5 = r3.parentAlert
            r5.setAllowNestedScroll(r2)
            goto L45
        L1e:
            boolean r4 = org.telegram.messenger.AndroidUtilities.isTablet()
            if (r4 != 0) goto L32
            android.graphics.Point r4 = org.telegram.messenger.AndroidUtilities.displaySize
            int r0 = r4.x
            int r4 = r4.y
            if (r0 <= r4) goto L32
            float r4 = (float) r5
            r5 = 1080033280(0x40600000, float:3.5)
            float r4 = r4 / r5
            int r4 = (int) r4
            goto L36
        L32:
            int r5 = r5 / 5
            int r4 = r5 * 2
        L36:
            r5 = 13
            int r5 = org.telegram.messenger.AndroidUtilities.m107dp(r5)
            int r4 = r4 - r5
            if (r4 >= 0) goto L40
            r4 = r2
        L40:
            org.telegram.ui.Components.ChatAttachAlert r5 = r3.parentAlert
            r5.setAllowNestedScroll(r1)
        L45:
            r3.ignoreLayout = r1
            int r5 = r3.topPadding
            if (r5 == r4) goto L5e
            r3.topPadding = r4
            com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListView$1 r4 = r3.getListView()
            r5 = 0
            r4.setItemAnimator(r5)
            com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$ListAdapter r4 = r3.getListAdapter()
            int r5 = r3.topPaddingRow
            r4.notifyItemChanged(r5)
        L5e:
            r3.ignoreLayout = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.ChatAttachAlertTemplatesLayout.onPreMeasure(int, int):void");
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getButtonsHideOffset() {
        return AndroidUtilities.m107dp(70);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        NotificationCenter.getInstance(this.parentAlert.getCurrentAccount()).removeObserver(this, NotificationCenter.templatesDidChanged);
        this.parentAlert.actionBar.createMenu().removeView(getSortItem());
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        getListView().smoothScrollToPosition(1);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        C3704ActionBar c3704ActionBar = chatAttachAlert.actionBar;
        c3704ActionBar.setTitle(LocaleController.getInternalString(C3632R.string.chat_templates));
        c3704ActionBar.createMenu().setPadding(0, 0, chatAttachAlert.doneItem.getMeasuredWidth() + AndroidUtilities.m107dp(24), 0);
        ActionBarMenuItem doneItem = chatAttachAlert.doneItem;
        Intrinsics.checkNotNullExpressionValue(doneItem, "doneItem");
        ViewExtKt.visible$default(doneItem, false, 1, null);
        getListLayoutManager().scrollToPositionWithOffset(0, 0);
        updateEmptyView();
        updateSortItem();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        ChatAttachAlert chatAttachAlert = this.parentAlert;
        chatAttachAlert.actionBar.createMenu().setPadding(0, 0, 0, 0);
        ActionBarMenuItem doneItem = chatAttachAlert.doneItem;
        Intrinsics.checkNotNullExpressionValue(doneItem, "doneItem");
        ViewExtKt.invisible$default(doneItem, false, 1, null);
        ActionBarMenuItem sortItem = getSortItem();
        Intrinsics.checkNotNullExpressionValue(sortItem, "sortItem");
        ViewExtKt.gone$default(sortItem, false, 1, null);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateEmptyViewPosition();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onContainerTranslationUpdated(float f) {
        this.currentPanTranslationProgress = f;
        super.onContainerTranslationUpdated(f);
        updateEmptyViewPosition();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.templatesDidChanged) {
            loadTemplates();
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{Space.class}, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarMenuItem initSortItem() {
        return this.parentAlert.actionBar.createMenu().addItem(IdFabric$Menu.SORT, SharedConfig.selectedTemplatesSortingType.getIconResId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initEmptyView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        ViewExtKt.gone$default(linearLayout, false, 1, null);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        ImageView imageView = new ImageView(linearLayout.getContext());
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), PorterDuff.Mode.MULTIPLY));
        imageView.setImageResource(C3632R.C3634drawable.stickers_empty);
        linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -2));
        TextView textView = new TextView(linearLayout.getContext());
        ViewExtKt.withMediumTypeface(textView);
        textView.setText(LocaleController.getInternalString(C3632R.string.chat_templates_list_header));
        textView.setGravity(17);
        textView.setTextColor(getThemedColor(Theme.key_dialogEmptyText));
        textView.setTextSize(1, 17.0f);
        textView.setPadding(AndroidUtilities.m107dp(40), 0, AndroidUtilities.m107dp(40), 0);
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 17, 0, 11, 0, 0));
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean initEmptyView$lambda$6$lambda$5;
                initEmptyView$lambda$6$lambda$5 = ChatAttachAlertTemplatesLayout.initEmptyView$lambda$6$lambda$5(view, motionEvent);
                return initEmptyView$lambda$6$lambda$5;
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListView$1] */
    public final ChatAttachAlertTemplatesLayout$initListView$1 initListView() {
        final Context context = getContext();
        return new RecyclerListView(context) { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListView$1
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
            public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean z) {
                Intrinsics.checkNotNullParameter(child, "child");
                Intrinsics.checkNotNullParameter(rectangle, "rectangle");
                rectangle.bottom += AndroidUtilities.m107dp(60);
                return super.requestChildRectangleOnScreen(child, rectangle, z);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.telegram.ui.Components.FillLastLinearLayoutManager, com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListLayoutManager$1] */
    public final ChatAttachAlertTemplatesLayout$initListLayoutManager$1 initListLayoutManager() {
        final Context context = getContext();
        final int m107dp = AndroidUtilities.m107dp(53);
        final ChatAttachAlertTemplatesLayout$initListView$1 listView = getListView();
        ?? r3 = new FillLastLinearLayoutManager(context, m107dp, listView) { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListLayoutManager$1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(state, "state");
                Context context2 = recyclerView.getContext();
                final ChatAttachAlertTemplatesLayout chatAttachAlertTemplatesLayout = ChatAttachAlertTemplatesLayout.this;
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(context2) { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$initListLayoutManager$1$smoothScrollToPosition$linearSmoothScroller$1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i2) {
                        int i3;
                        Intrinsics.checkNotNullParameter(view, "view");
                        int calculateDyToMakeVisible = super.calculateDyToMakeVisible(view, i2);
                        i3 = ChatAttachAlertTemplatesLayout.this.topPadding;
                        return calculateDyToMakeVisible - (i3 - AndroidUtilities.m107dp(7));
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateTimeForDeceleration(int i2) {
                        return super.calculateTimeForDeceleration(i2) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                startSmoothScroll(linearSmoothScroller);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
            protected int[] getChildRectangleOnScreenScrollAmount(View child, Rect rect) {
                Intrinsics.checkNotNullParameter(child, "child");
                Intrinsics.checkNotNullParameter(rect, "rect");
                int[] iArr = new int[2];
                int height = getHeight() - getPaddingBottom();
                int top = (child.getTop() + rect.top) - child.getScrollY();
                int height2 = rect.height() + top;
                int i = top - 0;
                int min = Math.min(0, i);
                int max = Math.max(0, height2 - height);
                if (min == 0) {
                    min = Math.min(i, max);
                }
                iArr[1] = min;
                return iArr;
            }
        };
        r3.setSkipFirstItem();
        return r3;
    }

    private final void setupListView() {
        final ChatAttachAlertTemplatesLayout$initListView$1 listView = getListView();
        listView.setClipToPadding(false);
        listView.setVerticalScrollBarEnabled(false);
        listView.setPreserveFocusAfterLayout(true);
        listView.setAdapter(getListAdapter());
        listView.setLayoutManager(getListLayoutManager());
        listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ChatAttachAlertTemplatesLayout.setupListView$lambda$10$lambda$8(ChatAttachAlertTemplatesLayout.this, view, i);
            }
        });
        listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean z;
                z = ChatAttachAlertTemplatesLayout.setupListView$lambda$10$lambda$9(ChatAttachAlertTemplatesLayout.this, view, i);
                return z;
            }
        });
        listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$setupListView$1$3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                ChatAttachAlert chatAttachAlert;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                chatAttachAlert = ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertTemplatesLayout.this).parentAlert;
                chatAttachAlert.updateLayout(ChatAttachAlertTemplatesLayout.this, true, i2);
                ChatAttachAlertTemplatesLayout.this.updateEmptyViewPosition();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                ChatAttachAlert chatAttachAlert;
                ChatAttachAlert chatAttachAlert2;
                RecyclerListView.Holder holder;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if (i == 0) {
                    int m107dp = AndroidUtilities.m107dp(13);
                    chatAttachAlert = ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertTemplatesLayout.this).parentAlert;
                    int backgroundPaddingTop = chatAttachAlert.getBackgroundPaddingTop();
                    chatAttachAlert2 = ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertTemplatesLayout.this).parentAlert;
                    if (((chatAttachAlert2.scrollOffsetY[0] - backgroundPaddingTop) - m107dp) + backgroundPaddingTop >= C3704ActionBar.getCurrentActionBarHeight() || (holder = (RecyclerListView.Holder) findViewHolderForAdapterPosition(1)) == null || holder.itemView.getTop() <= AndroidUtilities.m107dp(53)) {
                        return;
                    }
                    smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m107dp(53));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListView$lambda$10$lambda$8(ChatAttachAlertTemplatesLayout this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof TemplateCell) {
            this$0.delegate.didPressSendMessage(((TemplateCell) view).getTemplate(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupListView$lambda$10$lambda$9(ChatAttachAlertTemplatesLayout this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof TemplateCell) {
            this$0.delegate.didPressSendMessage(((TemplateCell) view).getTemplate(), true);
        }
        return true;
    }

    private final void loadTemplates() {
        List<TemplateModel> list = this.templates;
        list.clear();
        list.addAll(TemplatesController.Companion.getInstance(this.parentAlert.getCurrentAccount()).getTemplatesList());
        updateRows();
        getListAdapter().notifyDataSetChanged();
        updateEmptyView();
        updateSortItem();
    }

    private final void updateSortItem() {
        ActionBarMenuItem updateSortItem$lambda$14 = getSortItem();
        Intrinsics.checkNotNullExpressionValue(updateSortItem$lambda$14, "updateSortItem$lambda$14");
        updateSortItem$lambda$14.setVisibility(this.templates.size() > 1 ? 0 : 8);
        updateSortItem$lambda$14.removeAllSubItems();
        TemplatesSortingType[] values = TemplatesSortingType.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            TemplatesSortingType templatesSortingType = values[i];
            boolean z = SharedConfig.selectedTemplatesSortingType == templatesSortingType;
            updateSortItem$lambda$14.addSubItem(IdFabric$Menu.SORT + templatesSortingType.ordinal(), z ? 0 : templatesSortingType.getIconResId(), LocaleController.getInternalString(templatesSortingType.getNameResId()), z).setChecked(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateEmptyViewPosition() {
        View childAt;
        if ((getEmptyView().getVisibility() == 0) && (childAt = getListView().getChildAt(1)) != null) {
            getEmptyView().setTranslationY((((getEmptyView().getMeasuredHeight() - getMeasuredHeight()) + childAt.getTop()) / 2.0f) - (this.currentPanTranslationProgress / 2));
        }
    }

    private final void updateEmptyView() {
        getEmptyView().setVisibility(this.templates.isEmpty() ? 0 : 8);
        updateEmptyViewPosition();
    }

    private final void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.topPaddingRow = 0;
        this.rowCount = i + 1;
        this.headerRow = i;
        if (this.templates.isEmpty()) {
            this.templatesStartRow = -1;
        } else {
            int i2 = this.rowCount;
            this.templatesStartRow = i2;
            this.rowCount = i2 + this.templates.size();
        }
        int i3 = this.rowCount;
        this.rowCount = i3 + 1;
        this.bottomPaddingRow = i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChatAttachAlertTemplatesLayout.kt */
    /* renamed from: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatAttachAlertTemplatesLayout.this.rowCount;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.TEMPLATE;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            HeaderCell headerCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TOP_PADDING) {
                final Context context = parent.getContext();
                final ChatAttachAlertTemplatesLayout chatAttachAlertTemplatesLayout = ChatAttachAlertTemplatesLayout.this;
                headerCell = new View(context) { // from class: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$ListAdapter$onCreateViewHolder$1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        int i4;
                        int size = View.MeasureSpec.getSize(i2);
                        i4 = ChatAttachAlertTemplatesLayout.this.topPadding;
                        setMeasuredDimension(size, i4);
                    }
                };
            } else if (i == IdFabric$ViewTypes.HEADER_CELL) {
                HeaderCell headerCell2 = new HeaderCell(parent.getContext(), Theme.key_windowBackgroundWhiteBlueHeader, 21, 7, false, ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertTemplatesLayout.this).resourcesProvider);
                headerCell2.getTextView().setGravity(48);
                headerCell = headerCell2;
            } else if (i == IdFabric$ViewTypes.BOTTOM_PADDING) {
                Context context2 = parent.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "parent.context");
                headerCell = new EmptyView(context2);
            } else {
                Context context3 = parent.getContext();
                Intrinsics.checkNotNullExpressionValue(context3, "parent.context");
                TemplateCell templateCell = new TemplateCell(context3);
                templateCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                headerCell = templateCell;
            }
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            if (view instanceof HeaderCell) {
                ((HeaderCell) view).setText(LocaleController.getInternalString(ChatAttachAlertTemplatesLayout.this.templates.isEmpty() ? C3632R.string.chat_templates_list_header : C3632R.string.chat_templates));
            } else if (view instanceof TemplateCell) {
                ((TemplateCell) view).bind((TemplateModel) ChatAttachAlertTemplatesLayout.this.templates.get(i - ChatAttachAlertTemplatesLayout.this.templatesStartRow), ChatAttachAlertTemplatesLayout.this.getDelegate());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == ChatAttachAlertTemplatesLayout.this.topPaddingRow ? IdFabric$ViewTypes.TOP_PADDING : i == ChatAttachAlertTemplatesLayout.this.headerRow ? IdFabric$ViewTypes.HEADER_CELL : i == ChatAttachAlertTemplatesLayout.this.bottomPaddingRow ? IdFabric$ViewTypes.BOTTOM_PADDING : IdFabric$ViewTypes.TEMPLATE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChatAttachAlertTemplatesLayout.kt */
    /* renamed from: com.iMe.fork.ui.view.ChatAttachAlertTemplatesLayout$EmptyView */
    /* loaded from: classes3.dex */
    public static final class EmptyView extends View {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyView(Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
        }
    }
}
