package com.iMe.fork.p023ui.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.fork.p023ui.dialog.SelectFabsBottomSheet;
import com.iMe.fork.p023ui.view.CircleCheckCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.filter.FilterFabExtKt;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: SelectFabsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectFabsBottomSheet */
/* loaded from: classes3.dex */
public final class SelectFabsBottomSheet extends BottomSheet {
    private final Lazy bottomShadow$delegate;
    private final Lazy fabs$delegate;
    private int itemWidth;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Callbacks$Callback1<Set<FilterFab>> listener;
    private final Lazy saveButton$delegate;
    private final Set<FilterFab> selectedFabs;

    static {
        new Companion(null);
    }

    public final Set<FilterFab> getSelectedFabs() {
        return this.selectedFabs;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectFabsBottomSheet(Context context, Set<FilterFab> selectedFabs, Callbacks$Callback1<Set<FilterFab>> listener) {
        super(context, false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(selectedFabs, "selectedFabs");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.selectedFabs = selectedFabs;
        this.listener = listener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends FilterFab>>() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$fabs$2
            @Override // kotlin.jvm.functions.Function0
            public final List<? extends FilterFab> invoke() {
                return FilterFab.Companion.getFabsList();
            }
        });
        this.fabs$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = SelectFabsBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SelectFabsBottomSheet.ListAdapter invoke() {
                return new SelectFabsBottomSheet.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$bottomShadow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initShadow;
                initShadow = SelectFabsBottomSheet.this.initShadow();
                return initShadow;
            }
        });
        this.bottomShadow$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$saveButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initSaveButton;
                initSaveButton = SelectFabsBottomSheet.this.initSaveButton();
                return initSaveButton;
            }
        });
        this.saveButton$delegate = lazy5;
        setTitle(LocaleController.getInternalString(C3634R.string.create_folder_change_fab_title), true);
        setApplyBottomPadding(false);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                this.itemWidth = (View.MeasureSpec.getSize(i) - AndroidUtilities.m104dp(28)) / 4;
                super.onMeasure(i, i2);
            }
        };
        frameLayout.addView(getListView(), LayoutHelper.createFrame(-1, -1, 48, 0, 0, 0, 48));
        frameLayout.addView(getBottomShadow(), LayoutHelper.createFrame(-1, AndroidUtilities.getShadowHeight(), 80, 0, 0, 0, 48));
        frameLayout.addView(getSaveButton(), LayoutHelper.createFrame(-1, 48, 80));
        frameLayout.post(new Runnable() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SelectFabsBottomSheet.lambda$2$lambda$1(SelectFabsBottomSheet.this);
            }
        });
        setCustomView(frameLayout);
        setupListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<FilterFab> getFabs() {
        return (List) this.fabs$delegate.getValue();
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final View getBottomShadow() {
        return (View) this.bottomShadow$delegate.getValue();
    }

    private final TextView getSaveButton() {
        return (TextView) this.saveButton$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$2$lambda$1(SelectFabsBottomSheet this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateLimitsUI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getContext());
        recyclerListView.setLayoutManager(new GridLayoutManager(recyclerListView.getContext(), 4));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setEnabled(true);
        recyclerListView.setOverScrollMode(2);
        recyclerListView.setPadding(AndroidUtilities.m104dp(10), 0, AndroidUtilities.m104dp(10), 0);
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$initListView$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                RecyclerView.ViewHolder childViewHolder = parent.getChildViewHolder(view);
                Intrinsics.checkNotNull(childViewHolder, "null cannot be cast to non-null type org.telegram.ui.Components.RecyclerListView.Holder");
                int adapterPosition = ((RecyclerListView.Holder) childViewHolder).getAdapterPosition() % 4;
                outRect.left = adapterPosition == 0 ? 0 : AndroidUtilities.m104dp(4);
                outRect.right = adapterPosition != 3 ? AndroidUtilities.m104dp(4) : 0;
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initShadow() {
        View view = new View(getContext());
        view.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSaveButton() {
        TextView textView = new TextView(getContext());
        ViewExtKt.setHorizontalPadding(textView, 18);
        textView.setAllCaps(true);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setGravity(17);
        textView.setBackground(Theme.createSelectorWithBackgroundDrawable(Theme.getColor(Theme.key_dialogBackground), Theme.getColor(Theme.key_listSelector)));
        textView.setText(LocaleController.getString("Save", C3634R.string.Save));
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2));
        return textView;
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SelectFabsBottomSheet.setupListeners$lambda$7(SelectFabsBottomSheet.this, view, i);
            }
        });
        getSaveButton().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFabsBottomSheet.setupListeners$lambda$8(SelectFabsBottomSheet.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7(SelectFabsBottomSheet this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FilterFab filterFab = this$0.getFabs().get(i);
        if (this$0.selectedFabs.size() != 5 || this$0.selectedFabs.contains(filterFab)) {
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.fork.ui.view.CircleCheckCell");
            CircleCheckCell circleCheckCell = (CircleCheckCell) view;
            circleCheckCell.setChecked(!circleCheckCell.isChecked());
            this$0.addOrEditSelectedFab(filterFab);
            this$0.updateLimitsUI();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8(SelectFabsBottomSheet this$0, View view) {
        SortedSet sortedSet;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Callbacks$Callback1<Set<FilterFab>> callbacks$Callback1 = this$0.listener;
        sortedSet = CollectionsKt___CollectionsJvmKt.toSortedSet(this$0.selectedFabs);
        callbacks$Callback1.invoke(sortedSet);
        this$0.dismiss();
    }

    private final void addOrEditSelectedFab(FilterFab filterFab) {
        if (this.selectedFabs.contains(filterFab)) {
            this.selectedFabs.remove(filterFab);
        } else {
            this.selectedFabs.add(filterFab);
        }
    }

    private final void updateLimitsUI() {
        TextView saveButton = getSaveButton();
        if (this.selectedFabs.isEmpty()) {
            saveButton.setEnabled(false);
            saveButton.setAlpha(0.5f);
        } else {
            saveButton.setEnabled(true);
            saveButton.setAlpha(1.0f);
        }
        RecyclerListView listView = getListView();
        int childCount = listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = listView.getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            if (this.selectedFabs.size() < 5) {
                childAt.setEnabled(true);
                childAt.setAlpha(1.0f);
            } else if (!this.selectedFabs.contains(getFabs().get(i))) {
                childAt.setEnabled(false);
                childAt.setAlpha(0.5f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SelectFabsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return false;
        }

        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SelectFabsBottomSheet.this.getFabs().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            final Context context = SelectFabsBottomSheet.this.getContext();
            final ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            final SelectFabsBottomSheet selectFabsBottomSheet = SelectFabsBottomSheet.this;
            return new RecyclerListView.Holder(new CircleCheckCell(context, scaleType) { // from class: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$ListAdapter$onCreateViewHolder$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(context, 36, scaleType);
                    Intrinsics.checkNotNullExpressionValue(context, "context");
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    int i4;
                    i4 = SelectFabsBottomSheet.this.itemWidth;
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(100), 1073741824));
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.fork.ui.view.CircleCheckCell");
            CircleCheckCell circleCheckCell = (CircleCheckCell) view;
            SelectFabsBottomSheet selectFabsBottomSheet = SelectFabsBottomSheet.this;
            FilterFab filterFab = (FilterFab) selectFabsBottomSheet.getFabs().get(i);
            circleCheckCell.setColor(Theme.getColor(Theme.key_chats_actionBackground));
            circleCheckCell.setFabIcon(filterFab);
            circleCheckCell.setName(FilterFabExtKt.nameResId(filterFab));
            circleCheckCell.setChecked(selectFabsBottomSheet.getSelectedFabs().contains(filterFab));
        }
    }

    /* compiled from: SelectFabsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.SelectFabsBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
