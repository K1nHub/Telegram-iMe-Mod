package org.fork.p046ui.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.fork.enums.SettingsToolsCategory;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: SettingsToolsActivity.kt */
/* renamed from: org.fork.ui.fragment.SettingsToolsActivity */
/* loaded from: classes4.dex */
public final class SettingsToolsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "listAdapter", "getListAdapter()Lorg/fork/ui/fragment/SettingsToolsActivity$ListAdapter;", 0))};
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SettingsToolsActivity$rootView$2(this), 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SettingsToolsActivity$listView$2(this), 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SettingsToolsActivity$listAdapter$2(this), 1, (Object) null);

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"), new ThemeDescription(getListView(), 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.fork.ui.fragment.SettingsToolsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SettingsToolsActivity.m2068initListView$lambda3$lambda2(SettingsToolsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListView$lambda-3$lambda-2  reason: not valid java name */
    public static final void m2068initListView$lambda3$lambda2(SettingsToolsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.values()[i]));
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setAllowOverlayTitle(true);
        c3222ActionBar.setTitle(LocaleController.getInternalString(C3158R.string.settings_tools));
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.SettingsToolsActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SettingsToolsActivity.this.finishFragment();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SettingsToolsActivity.kt */
    /* renamed from: org.fork.ui.fragment.SettingsToolsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        final /* synthetic */ SettingsToolsActivity this$0;

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(SettingsToolsActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return IdFabric$ViewTypes.TEXT_SETTINGS;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            TextCell textCell = new TextCell(this.this$0.getContext());
            textCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            Unit unit = Unit.INSTANCE;
            textCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            TextCell textCell = (TextCell) holder.itemView;
            SettingsToolsCategory settingsToolsCategory = SettingsToolsCategory.values()[i];
            textCell.setTextAndIcon(settingsToolsCategory.getTitle(), settingsToolsCategory.getIconResId(), i < getItemCount() - 1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SettingsToolsCategory.values().length;
        }
    }
}
