package org.fork.p046ui.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.p031ui.drawer.DrawerAccountData;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.models.DrawerHeaderSettings;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.DrawerProfileCell;
import org.telegram.p048ui.Cells.NotificationsCheckCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: DrawerHeaderSettingsBottomSheet.kt */
/* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet */
/* loaded from: classes4.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(DrawerHeaderSettingsBottomSheet$currentUser$2.INSTANCE);
        this.currentUser$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(DrawerHeaderSettingsBottomSheet$currentSettings$2.INSTANCE);
        this.currentSettings$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$newSettings$2(this));
        this.newSettings$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$rootView$2(this));
        this.rootView$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2(this));
        this.dynamicOrientationContainer$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$previewView$2(this));
        this.previewView$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$listView$2(this));
        this.listView$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$listAdapter$2(this));
        this.listAdapter$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$bottomButtonsContainer$2(this));
        this.bottomButtonsContainer$delegate = lazy9;
        lazy10 = LazyKt__LazyJVMKt.lazy(new DrawerHeaderSettingsBottomSheet$saveButton$2(this));
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

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
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
        linearLayout.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
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
            if (notificationsCheckCell.checkSwitchLocation(f)) {
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
            AlertDialog createDrawerAccountDataSelectDialog = AlertsCreator.createDrawerAccountDataSelectDialog(context, z, z ? newSettings.getTitle() : newSettings.getSubtitle(), new Callbacks$Callback1() { // from class: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    DrawerHeaderSettingsBottomSheet.initListView$lambda$6$lambda$5$lambda$3(z, this$0, i, (DrawerAccountData) obj);
                }
            });
            createDrawerAccountDataSelectDialog.show();
            this$0.accountDataSelector = createDrawerAccountDataSelectDialog;
        } else if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckbox();
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
        int m50dp = AndroidUtilities.m50dp(8);
        frameLayout.setPadding(m50dp, m50dp, m50dp, m50dp);
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
            string = LocaleController.getString("Cancel", C3301R.string.Cancel);
        } else {
            string = LocaleController.getString("Save", C3301R.string.Save);
        }
        Intrinsics.checkNotNullExpressionValue(string, "if (cancel) {\n          … R.string.Save)\n        }");
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor("dialogTextBlue2"));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda0
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
            NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
        }
        this$0.dismiss();
    }

    private final void updateUI() {
        getPreviewView().setUser(getCurrentUser(), false, getNewSettings());
        if (Intrinsics.areEqual(getNewSettings(), getCurrentSettings())) {
            ViewExtKt.disable(getSaveButton());
        } else {
            ViewExtKt.enable(getSaveButton());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DrawerHeaderSettingsBottomSheet.kt */
    /* renamed from: org.fork.ui.dialog.DrawerHeaderSettingsBottomSheet$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
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
            return z ? IdFabric$ViewTypes.TEXT_CHECK : IdFabric$ViewTypes.NOTIFICATION_CHECK;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            FrameLayout textCheckCell = i == IdFabric$ViewTypes.TEXT_CHECK ? new TextCheckCell(DrawerHeaderSettingsBottomSheet.this.getContext()) : new NotificationsCheckCell(DrawerHeaderSettingsBottomSheet.this.getContext());
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
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                z = i == DrawerHeaderSettingsBottomSheet.this.avatarRow;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                String internalString = LocaleController.getInternalString(z ? C3301R.string.drawer_profile_cell_avatar : C3301R.string.drawer_profile_cell_archive);
                DrawerHeaderSettings newSettings = DrawerHeaderSettingsBottomSheet.this.getNewSettings();
                textCheckCell.setTextAndCheck(internalString, z ? newSettings.isShowAvatar() : newSettings.isShowArchive(), true);
            } else if (itemViewType == IdFabric$ViewTypes.NOTIFICATION_CHECK && (view instanceof NotificationsCheckCell)) {
                z = i == DrawerHeaderSettingsBottomSheet.this.titleRow;
                DrawerHeaderSettings newSettings2 = DrawerHeaderSettingsBottomSheet.this.getNewSettings();
                DrawerAccountData title = z ? newSettings2.getTitle() : newSettings2.getSubtitle();
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                String internalString2 = LocaleController.getInternalString(z ? C3301R.string.drawer_profile_cell_alert_title : C3301R.string.drawer_profile_cell_alert_subtitle);
                String title2 = title.getTitle();
                DrawerHeaderSettings newSettings3 = DrawerHeaderSettingsBottomSheet.this.getNewSettings();
                notificationsCheckCell.setTextAndValueAndCheck(internalString2, title2, z ? newSettings3.isShowTitle() : newSettings3.isShowSubtitle(), true);
            }
        }
    }
}
