package com.iMe.fork.p023ui.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.models.DrawerHeaderSettings;
import com.iMe.fork.p023ui.dialog.DrawerHeaderSettingsBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p030ui.drawer.DrawerAccountData;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.DrawerProfileCell;
import org.telegram.p043ui.Cells.NotificationsCheckCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet */
/* loaded from: classes3.dex */
public final class DrawerHeaderSettingsBottomSheet extends BottomSheet {
    private AlertDialog accountDataSelector;
    private int archiveRow;
    private int avatarRow;
    private final Lazy bottomButtonsContainer$delegate;
    private final Lazy currentSettings$delegate;
    private final Lazy currentUser$delegate;
    private final Lazy dynamicOrientationContainer$delegate;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Lazy newSettings$delegate;
    private final Lazy previewView$delegate;
    private final Lazy rootView$delegate;
    private int rowCount;
    private final Lazy saveButton$delegate;
    private int subtitleRow;
    private int titleRow;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerHeaderSettingsBottomSheet(Context context) {
        super(context, false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        Lazy lazy10;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TLRPC$User>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$currentUser$2
            @Override // kotlin.jvm.functions.Function0
            public final TLRPC$User invoke() {
                return UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser();
            }
        });
        this.currentUser$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<DrawerHeaderSettings>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$currentSettings$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DrawerHeaderSettings invoke() {
                return SharedConfig.getDrawerHeaderSettings();
            }
        });
        this.currentSettings$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<DrawerHeaderSettings>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$newSettings$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DrawerHeaderSettings invoke() {
                DrawerHeaderSettings currentSettings;
                currentSettings = DrawerHeaderSettingsBottomSheet.this.getCurrentSettings();
                Intrinsics.checkNotNullExpressionValue(currentSettings, "currentSettings");
                return DrawerHeaderSettings.copy$default(currentSettings, null, null, false, false, false, false, 63, null);
            }
        });
        this.newSettings$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initRootView;
                initRootView = DrawerHeaderSettingsBottomSheet.this.initRootView();
                return initRootView;
            }
        });
        this.rootView$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<LinearLayout>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout initDynamicOrientationContainer;
                initDynamicOrientationContainer = DrawerHeaderSettingsBottomSheet.this.initDynamicOrientationContainer();
                return initDynamicOrientationContainer;
            }
        });
        this.dynamicOrientationContainer$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<DrawerProfileCell>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$previewView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final DrawerProfileCell invoke() {
                DrawerProfileCell initPreviewView;
                initPreviewView = DrawerHeaderSettingsBottomSheet.this.initPreviewView();
                return initPreviewView;
            }
        });
        this.previewView$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = DrawerHeaderSettingsBottomSheet.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DrawerHeaderSettingsBottomSheet.ListAdapter invoke() {
                return new DrawerHeaderSettingsBottomSheet.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$bottomButtonsContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initBottomButtonsContainer;
                initBottomButtonsContainer = DrawerHeaderSettingsBottomSheet.this.initBottomButtonsContainer();
                return initBottomButtonsContainer;
            }
        });
        this.bottomButtonsContainer$delegate = lazy9;
        lazy10 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$saveButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initSaveButton;
                initSaveButton = DrawerHeaderSettingsBottomSheet.this.initSaveButton();
                return initSaveButton;
            }
        });
        this.saveButton$delegate = lazy10;
        setApplyTopPadding(false);
        setApplyBottomPadding(false);
        setCustomView(getRootView());
        setLandscapeMode(context.getResources().getConfiguration().orientation == 2);
    }

    private final TLRPC$User getCurrentUser() {
        return (TLRPC$User) this.currentUser$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DrawerHeaderSettings getCurrentSettings() {
        return (DrawerHeaderSettings) this.currentSettings$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DrawerHeaderSettings getNewSettings() {
        return (DrawerHeaderSettings) this.newSettings$delegate.getValue();
    }

    private final LinearLayout getRootView() {
        return (LinearLayout) this.rootView$delegate.getValue();
    }

    private final LinearLayout getDynamicOrientationContainer() {
        return (LinearLayout) this.dynamicOrientationContainer$delegate.getValue();
    }

    private final DrawerProfileCell getPreviewView() {
        return (DrawerProfileCell) this.previewView$delegate.getValue();
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    private final FrameLayout getBottomButtonsContainer() {
        return (FrameLayout) this.bottomButtonsContainer$delegate.getValue();
    }

    private final TextView getSaveButton() {
        return (TextView) this.saveButton$delegate.getValue();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AlertDialog alertDialog = this.accountDataSelector;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        this.accountDataSelector = null;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        setLandscapeMode(newConfig.orientation == 2);
    }

    private final void setLandscapeMode(boolean z) {
        getDynamicOrientationContainer().setOrientation(!z ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initRootView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        linearLayout.addView(getDynamicOrientationContainer());
        linearLayout.addView(getBottomButtonsContainer(), LayoutHelper.createLinear(-1, 52));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initDynamicOrientationContainer() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.addView(getPreviewView(), LayoutHelper.createLinear(-1, -2, 1.0f, 16));
        linearLayout.addView(getListView(), LayoutHelper.createLinear(-1, -2, 1.0f));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DrawerProfileCell initPreviewView() {
        DrawerProfileCell drawerProfileCell = new DrawerProfileCell(getContext(), null, true);
        drawerProfileCell.setUser(getCurrentUser(), false, getCurrentSettings());
        return drawerProfileCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        final RecyclerListView recyclerListView = new RecyclerListView(getContext());
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOverScrollMode(2);
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda2
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
                DrawerHeaderSettingsBottomSheet.initListView$lambda$6$lambda$5(DrawerHeaderSettingsBottomSheet.this, recyclerListView, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$6$lambda$5(final DrawerHeaderSettingsBottomSheet this$0, RecyclerListView this_apply, View view, final int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (view instanceof NotificationsCheckCell) {
            final boolean z = i == this$0.titleRow;
            NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
            if (notificationsCheckCell.isInSwitch(f)) {
                notificationsCheckCell.setChecked(!notificationsCheckCell.isChecked());
                if (z) {
                    this$0.getNewSettings().setShowTitle(!this$0.getNewSettings().isShowTitle());
                } else {
                    this$0.getNewSettings().setShowSubtitle(!this$0.getNewSettings().isShowSubtitle());
                }
                this$0.updateUI();
                return;
            }
            Context context = this_apply.getContext();
            DrawerHeaderSettings newSettings = this$0.getNewSettings();
            AlertDialog createDrawerAccountDataSelectDialog = AlertsCreator.createDrawerAccountDataSelectDialog(context, z, z ? newSettings.getTitle() : newSettings.getSubtitle(), new Callbacks$Callback1() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DrawerHeaderSettingsBottomSheet.initListView$lambda$6$lambda$5$lambda$3(z, this$0, i, (DrawerAccountData) obj);
                }
            });
            createDrawerAccountDataSelectDialog.show();
            this$0.accountDataSelector = createDrawerAccountDataSelectDialog;
        } else if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckBox();
            if (i == this$0.avatarRow) {
                this$0.getNewSettings().setShowAvatar(!this$0.getNewSettings().isShowAvatar());
            } else {
                this$0.getNewSettings().setShowArchive(!this$0.getNewSettings().isShowArchive());
            }
            this$0.updateUI();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$6$lambda$5$lambda$3(boolean z, DrawerHeaderSettingsBottomSheet this$0, int i, DrawerAccountData selectedDrawerAccountData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.getNewSettings().setShowTitle(true);
            DrawerHeaderSettings newSettings = this$0.getNewSettings();
            Intrinsics.checkNotNullExpressionValue(selectedDrawerAccountData, "selectedDrawerAccountData");
            newSettings.setTitle(selectedDrawerAccountData);
        } else {
            this$0.getNewSettings().setShowSubtitle(true);
            DrawerHeaderSettings newSettings2 = this$0.getNewSettings();
            Intrinsics.checkNotNullExpressionValue(selectedDrawerAccountData, "selectedDrawerAccountData");
            newSettings2.setSubtitle(selectedDrawerAccountData);
        }
        this$0.getListAdapter().notifyItemChanged(i);
        this$0.updateUI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initBottomButtonsContainer() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        int m107dp = AndroidUtilities.m107dp(8);
        frameLayout.setPadding(m107dp, m107dp, m107dp, m107dp);
        frameLayout.addView(createBottomButton(true), LayoutHelper.createFrame(-2, 36, 8388611));
        frameLayout.addView(getSaveButton(), LayoutHelper.createFrame(-2, 36, 8388613));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initSaveButton() {
        TextView createBottomButton = createBottomButton(false);
        ViewExtKt.disable(createBottomButton);
        return createBottomButton;
    }

    private final TextView createBottomButton(final boolean z) {
        String string;
        TextView textView = new TextView(getContext());
        ViewExtKt.setHorizontalPadding(textView, 10);
        textView.setGravity(17);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        if (z) {
            string = LocaleController.getString("Cancel", C3632R.string.Cancel);
        } else {
            string = LocaleController.getString("Save", C3632R.string.Save);
        }
        Intrinsics.checkNotNullExpressionValue(string, "if (cancel) {\n          … R.string.Save)\n        }");
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrawerHeaderSettingsBottomSheet.createBottomButton$lambda$10$lambda$9(z, this, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createBottomButton$lambda$10$lambda$9(boolean z, DrawerHeaderSettingsBottomSheet this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!z) {
            SharedConfig.setDrawerHeaderSettings(this$0.getNewSettings());
            NotificationCenter.getInstance(this$0.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        }
        this$0.dismiss();
    }

    private final void updateUI() {
        getPreviewView().setUser(getCurrentUser(), false, getNewSettings());
        ViewExtKt.setEnabledWithAlpha(getSaveButton(), !Intrinsics.areEqual(getNewSettings(), getCurrentSettings()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DrawerHeaderSettingsBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return true;
        }

        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            DrawerHeaderSettingsBottomSheet.this.rowCount = 0;
            DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet = DrawerHeaderSettingsBottomSheet.this;
            int i = drawerHeaderSettingsBottomSheet.rowCount;
            drawerHeaderSettingsBottomSheet.rowCount = i + 1;
            drawerHeaderSettingsBottomSheet.titleRow = i;
            DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet2 = DrawerHeaderSettingsBottomSheet.this;
            int i2 = drawerHeaderSettingsBottomSheet2.rowCount;
            drawerHeaderSettingsBottomSheet2.rowCount = i2 + 1;
            drawerHeaderSettingsBottomSheet2.subtitleRow = i2;
            DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet3 = DrawerHeaderSettingsBottomSheet.this;
            int i3 = drawerHeaderSettingsBottomSheet3.rowCount;
            drawerHeaderSettingsBottomSheet3.rowCount = i3 + 1;
            drawerHeaderSettingsBottomSheet3.avatarRow = i3;
            DrawerHeaderSettingsBottomSheet drawerHeaderSettingsBottomSheet4 = DrawerHeaderSettingsBottomSheet.this;
            int i4 = drawerHeaderSettingsBottomSheet4.rowCount;
            drawerHeaderSettingsBottomSheet4.rowCount = i4 + 1;
            drawerHeaderSettingsBottomSheet4.archiveRow = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DrawerHeaderSettingsBottomSheet.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            boolean z = true;
            if (i != DrawerHeaderSettingsBottomSheet.this.avatarRow && i != DrawerHeaderSettingsBottomSheet.this.archiveRow) {
                z = false;
            }
            return z ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            FrameLayout textCheckCell = i == IdFabric$ViewTypes.TEXT_CHECK_CELL ? new TextCheckCell(DrawerHeaderSettingsBottomSheet.this.getContext()) : new NotificationsCheckCell(DrawerHeaderSettingsBottomSheet.this.getContext());
            textCheckCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            boolean z;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                z = i == DrawerHeaderSettingsBottomSheet.this.avatarRow;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                String internalString = LocaleController.getInternalString(z ? C3632R.string.drawer_profile_cell_avatar : C3632R.string.drawer_profile_cell_archive);
                DrawerHeaderSettings newSettings = DrawerHeaderSettingsBottomSheet.this.getNewSettings();
                textCheckCell.setTextAndCheck(internalString, z ? newSettings.isShowAvatar() : newSettings.isShowArchive(), true);
            } else if (itemViewType == IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL && (view instanceof NotificationsCheckCell)) {
                z = i == DrawerHeaderSettingsBottomSheet.this.titleRow;
                DrawerHeaderSettings newSettings2 = DrawerHeaderSettingsBottomSheet.this.getNewSettings();
                DrawerAccountData title = z ? newSettings2.getTitle() : newSettings2.getSubtitle();
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                String internalString2 = LocaleController.getInternalString(z ? C3632R.string.drawer_profile_cell_alert_title : C3632R.string.drawer_profile_cell_alert_subtitle);
                String title2 = title.getTitle();
                DrawerHeaderSettings newSettings3 = DrawerHeaderSettingsBottomSheet.this.getNewSettings();
                notificationsCheckCell.setTextAndValueAndCheck(internalString2, title2, z ? newSettings3.isShowTitle() : newSettings3.isShowSubtitle(), true);
            }
        }
    }
}
