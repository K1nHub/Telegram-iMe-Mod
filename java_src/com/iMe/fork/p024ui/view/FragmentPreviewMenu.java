package com.iMe.fork.p024ui.view;

import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: FragmentPreviewMenu.kt */
/* renamed from: com.iMe.fork.ui.view.FragmentPreviewMenu */
/* loaded from: classes3.dex */
public final class FragmentPreviewMenu extends ActionBarPopupWindow.ActionBarPopupWindowLayout {
    private final Lazy closeItem$delegate;
    private final Lazy openItem$delegate;
    private final BaseFragment previewFragment;
    private final Theme.ResourcesProvider resourcesProvider;

    public final BaseFragment getPreviewFragment() {
        return this.previewFragment;
    }

    public final Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPreviewMenu(INavigationLayout parentActionBarLayout, BaseFragment previewFragment, Theme.ResourcesProvider resourcesProvider) {
        super(parentActionBarLayout.getView().getContext(), C3419R.C3421drawable.popup_fixed_alert, resourcesProvider);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(parentActionBarLayout, "parentActionBarLayout");
        Intrinsics.checkNotNullParameter(previewFragment, "previewFragment");
        this.previewFragment = previewFragment;
        this.resourcesProvider = resourcesProvider;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ActionBarMenuSubItem>() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$openItem$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ActionBarMenuSubItem invoke() {
                ActionBarMenuSubItem initOpenItem;
                initOpenItem = FragmentPreviewMenu.this.initOpenItem();
                return initOpenItem;
            }
        });
        this.openItem$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ActionBarMenuSubItem>() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$closeItem$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ActionBarMenuSubItem invoke() {
                ActionBarMenuSubItem initCloseItem;
                initCloseItem = FragmentPreviewMenu.this.initCloseItem();
                return initCloseItem;
            }
        });
        this.closeItem$delegate = lazy2;
        addView(getOpenItem());
        addView(getCloseItem());
        setFitItems(true);
    }

    private final ActionBarMenuSubItem getOpenItem() {
        return (ActionBarMenuSubItem) this.openItem$delegate.getValue();
    }

    private final ActionBarMenuSubItem getCloseItem() {
        return (ActionBarMenuSubItem) this.closeItem$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarMenuSubItem initOpenItem() {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, false, this.resourcesProvider);
        actionBarMenuSubItem.setMinimumWidth(160);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("AccDescrOpenChat", C3419R.string.AccDescrOpenChat), C3419R.C3421drawable.msg_message);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentPreviewMenu.initOpenItem$lambda$1$lambda$0(FragmentPreviewMenu.this, view);
            }
        });
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initOpenItem$lambda$1$lambda$0(FragmentPreviewMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        INavigationLayout parentLayout = this$0.previewFragment.getParentLayout();
        if (parentLayout != null) {
            parentLayout.expandPreviewFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarMenuSubItem initCloseItem() {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), false, true, this.resourcesProvider);
        actionBarMenuSubItem.setMinimumWidth(160);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Back", C3419R.string.Back), C3419R.C3421drawable.ic_ab_back);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentPreviewMenu.initCloseItem$lambda$3$lambda$2(FragmentPreviewMenu.this, view);
            }
        });
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initCloseItem$lambda$3$lambda$2(FragmentPreviewMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.previewFragment.finishPreviewFragment();
    }
}
