package org.fork.p046ui.view;

import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: FragmentPreviewMenu.kt */
/* renamed from: org.fork.ui.view.FragmentPreviewMenu */
/* loaded from: classes4.dex */
public final class FragmentPreviewMenu extends ActionBarPopupWindow.ActionBarPopupWindowLayout {
    private final Lazy closeItem$delegate;
    private final Lazy openItem$delegate;
    private final INavigationLayout parentActionBarLayout;
    private final BaseFragment previewFragment;
    private final Theme.ResourcesProvider resourcesProvider;

    public final INavigationLayout getParentActionBarLayout() {
        return this.parentActionBarLayout;
    }

    public final BaseFragment getPreviewFragment() {
        return this.previewFragment;
    }

    public final Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPreviewMenu(INavigationLayout parentActionBarLayout, BaseFragment previewFragment, Theme.ResourcesProvider resourcesProvider) {
        super(parentActionBarLayout.getView().getContext(), C3286R.C3288drawable.popup_fixed_alert, resourcesProvider);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(parentActionBarLayout, "parentActionBarLayout");
        Intrinsics.checkNotNullParameter(previewFragment, "previewFragment");
        this.parentActionBarLayout = parentActionBarLayout;
        this.previewFragment = previewFragment;
        this.resourcesProvider = resourcesProvider;
        lazy = LazyKt__LazyJVMKt.lazy(new FragmentPreviewMenu$openItem$2(this));
        this.openItem$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new FragmentPreviewMenu$closeItem$2(this));
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
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Open", C3286R.string.Open), C3286R.C3288drawable.msg_message);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda1
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
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Close", C3286R.string.Close), C3286R.C3288drawable.poll_remove);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda0
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
