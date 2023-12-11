package com.iMe.fork.p023ui.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.enums.SettingsToolsCategory;
import com.iMe.fork.p023ui.fragment.SettingsToolsActivity;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.StickerEmptyView;
/* compiled from: SettingsToolsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.SettingsToolsActivity */
/* loaded from: classes3.dex */
public final class SettingsToolsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/SettingsToolsActivity$ListAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsActivity.class, "stickerEmptyView", "getStickerEmptyView()Lorg/telegram/ui/Components/StickerEmptyView;", 0))};
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsActivity$rootView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            FrameLayout initRootView;
            initRootView = SettingsToolsActivity.this.initRootView();
            return initRootView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsActivity$listView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final RecyclerListView invoke() {
            RecyclerListView initListView;
            initListView = SettingsToolsActivity.this.initListView();
            return initListView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsActivity$listAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final SettingsToolsActivity.ListAdapter invoke() {
            return new SettingsToolsActivity.ListAdapter();
        }
    }, 1, (Object) null);
    private final ResettableLazy stickerEmptyView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<StickerEmptyView>() { // from class: com.iMe.fork.ui.fragment.SettingsToolsActivity$stickerEmptyView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final StickerEmptyView invoke() {
            StickerEmptyView initEmptyView;
            initEmptyView = SettingsToolsActivity.this.initEmptyView();
            return initEmptyView;
        }
    }, 1, (Object) null);

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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

    private final StickerEmptyView getStickerEmptyView() {
        return (StickerEmptyView) this.stickerEmptyView$delegate.getValue(this, $$delegatedProperties[3]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getStickerEmptyView());
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.SettingsToolsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SettingsToolsActivity.initListView$lambda$3$lambda$2(SettingsToolsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$3$lambda$2(SettingsToolsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(new SettingsToolsCategoryActivity(SettingsToolsCategory.values()[i]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StickerEmptyView initEmptyView() {
        StickerEmptyView stickerEmptyView = new StickerEmptyView(getParentActivity(), null, 1);
        stickerEmptyView.setAnimateLayoutChange(true);
        stickerEmptyView.title.setText(LocaleController.getString("SettingsNoResults", C3632R.string.SettingsNoResults));
        LinkSpanDrawable.LinksTextView subtitle = stickerEmptyView.subtitle;
        Intrinsics.checkNotNullExpressionValue(subtitle, "subtitle");
        ViewExtKt.gone$default(subtitle, false, 1, null);
        ViewExtKt.gone$default(stickerEmptyView, false, 1, null);
        return stickerEmptyView;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setTitle(LocaleController.getInternalString(C3632R.string.settings_tools));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.SettingsToolsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SettingsToolsActivity.this.finishFragment();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SettingsToolsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.SettingsToolsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return IdFabric$ViewTypes.TEXT_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            TextCell textCell = new TextCell(SettingsToolsActivity.this.getContext());
            textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            textCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            SettingsToolsCategory settingsToolsCategory = SettingsToolsCategory.values()[i];
            boolean z = i < getItemCount() - 1;
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type org.telegram.ui.Cells.TextCell");
            ((TextCell) view).setTextAndIcon(settingsToolsCategory.getTitle(), settingsToolsCategory.getIconResId(), z);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SettingsToolsCategory.values().length;
        }
    }
}
