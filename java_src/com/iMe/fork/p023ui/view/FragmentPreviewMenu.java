package com.iMe.fork.p023ui.view;

import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.p042ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p042ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.DialogsActivity;
import org.telegram.p042ui.LogoutActivity;
/* compiled from: FragmentPreviewMenu.kt */
/* renamed from: com.iMe.fork.ui.view.FragmentPreviewMenu */
/* loaded from: classes3.dex */
public final class FragmentPreviewMenu extends ActionBarPopupWindow.ActionBarPopupWindowLayout {
    private final Lazy closeItem$delegate;
    private final Lazy logoutItem$delegate;
    private final Lazy openItem$delegate;
    private final BaseFragment parentFragment;
    private final BaseFragment previewFragment;
    private final Theme.ResourcesProvider resourcesProvider;

    public final BaseFragment getPreviewFragment() {
        return this.previewFragment;
    }

    public final Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentPreviewMenu(BaseFragment parentFragment, BaseFragment previewFragment, Theme.ResourcesProvider resourcesProvider) {
        super(parentFragment.getParentActivity(), C3630R.C3632drawable.popup_fixed_alert, resourcesProvider);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(previewFragment, "previewFragment");
        this.parentFragment = parentFragment;
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
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ActionBarMenuSubItem>() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$logoutItem$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ActionBarMenuSubItem invoke() {
                ActionBarMenuSubItem initLogoutItem;
                initLogoutItem = FragmentPreviewMenu.this.initLogoutItem();
                return initLogoutItem;
            }
        });
        this.logoutItem$delegate = lazy3;
        addView(getOpenItem());
        addView(getCloseItem());
        setFitItems(true);
        if (previewFragment instanceof DialogsActivity) {
            ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(getContext(), resourcesProvider);
            gapView.setTag(C3630R.C3633id.fit_width_tag, 1);
            addView((View) gapView, LayoutHelper.createLinear(-1, 8));
            addView(getLogoutItem());
        }
    }

    private final ActionBarMenuSubItem getOpenItem() {
        return (ActionBarMenuSubItem) this.openItem$delegate.getValue();
    }

    private final ActionBarMenuSubItem getCloseItem() {
        return (ActionBarMenuSubItem) this.closeItem$delegate.getValue();
    }

    private final ActionBarMenuSubItem getLogoutItem() {
        return (ActionBarMenuSubItem) this.logoutItem$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarMenuSubItem initOpenItem() {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, false, this.resourcesProvider);
        actionBarMenuSubItem.setMinimumWidth(160);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Open", C3630R.string.Open), C3630R.C3632drawable.msg_message);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentPreviewMenu.initOpenItem$lambda$2$lambda$1(FragmentPreviewMenu.this, view);
            }
        });
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initOpenItem$lambda$2$lambda$1(FragmentPreviewMenu this$0, View view) {
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
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("Back", C3630R.string.Back), C3630R.C3632drawable.ic_ab_back);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentPreviewMenu.initCloseItem$lambda$4$lambda$3(FragmentPreviewMenu.this, view);
            }
        });
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initCloseItem$lambda$4$lambda$3(FragmentPreviewMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.previewFragment.finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarMenuSubItem initLogoutItem() {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), false, true, this.resourcesProvider);
        actionBarMenuSubItem.setMinimumWidth(160);
        int i = Theme.key_text_RedRegular;
        actionBarMenuSubItem.setColors(Theme.getColor(i), Theme.getColor(i));
        actionBarMenuSubItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i), 0.12f));
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("LogOut", C3630R.string.LogOut), C3630R.C3632drawable.msg_leave);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentPreviewMenu.initLogoutItem$lambda$7$lambda$6(FragmentPreviewMenu.this, view);
            }
        });
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initLogoutItem$lambda$7$lambda$6(final FragmentPreviewMenu this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.previewFragment.finishPreviewFragment();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.view.FragmentPreviewMenu$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                FragmentPreviewMenu.initLogoutItem$lambda$7$lambda$6$lambda$5(FragmentPreviewMenu.this);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initLogoutItem$lambda$7$lambda$6$lambda$5(FragmentPreviewMenu this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseFragment baseFragment = this$0.parentFragment;
        baseFragment.showDialog(LogoutActivity.makeLogOutDialog(baseFragment.getParentActivity(), this$0.previewFragment.getCurrentAccount()));
    }
}
