package org.telegram.p048ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.utils.extentions.common.ContextExtKt;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.NotificationsCheckCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_clearAllDrafts;
/* renamed from: org.telegram.ui.DataSettingsActivity */
/* loaded from: classes5.dex */
public class DataSettingsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] observers = {NotificationCenter.backupDidUpload};
    private int backupSaveAutoRow;
    private int backupSaveManuallyRow;
    private int backupSection2Row;
    private int backupSectionRow;
    private int callsSection2Row;
    private int callsSectionRow;
    private int clearDraftsRow;
    private int clearDraftsSectionRow;
    private int dataUsageRow;
    private int enableAllStreamInfoRow;
    private int enableAllStreamRow;
    private int enableCacheStreamRow;
    private int enableMkvRow;
    private int enableStreamRow;
    private int filesOriginalNameSavingEnabledRow;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int mediaDownloadSection2Row;
    private int mediaDownloadSectionRow;
    private int mobileRow;
    private AlertDialog progressDialog;
    private int proxyRow;
    private int proxySection2Row;
    private int proxySectionRow;
    private int quickRepliesRow;
    private int resetDownloadRow;
    private int roamingRow;
    private int rowCount;
    private int saveToGalleryChannelsRow;
    private int saveToGalleryDividerRow;
    private int saveToGalleryGroupsRow;
    private int saveToGalleryPeerRow;
    private int saveToGallerySectionRow;
    private ArrayList<File> storageDirs;
    private int storageNumRow;
    private boolean storageUsageLoading;
    private int storageUsageRow;
    private long storageUsageSize;
    private int streamSectionRow;
    private boolean updateStorageUsageAnimated;
    private boolean updateVoipUseLessData;
    private int usageSection2Row;
    private int usageSectionRow;
    private int useLessDataForCallsRow;
    private int wifiRow;
    private int autoplayHeaderRow = -1;
    private int autoplayGifsRow = -1;
    private int autoplayVideoRow = -1;
    private int autoplaySectionRow = -1;

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.backupDidUpload || getParentActivity() == null) {
            return;
        }
        AlertDialog alertDialog = this.progressDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        ContextExtKt.toast(AndroidUtilities.replaceTags(LocaleController.getInternalString(C3286R.string.cloud_albums_undo_forward_cloud)));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getInstance(this.currentAccount).addObservers(this, observers);
        DownloadController.getInstance(this.currentAccount).loadAutoDownloadConfig(true);
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.usageSectionRow = 0;
        int i2 = i + 1;
        this.rowCount = i2;
        this.storageUsageRow = i;
        this.rowCount = i2 + 1;
        this.dataUsageRow = i2;
        this.storageNumRow = -1;
        if (Build.VERSION.SDK_INT >= 19) {
            ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
            this.storageDirs = rootDirs;
            if (rootDirs.size() > 1) {
                int i3 = this.rowCount;
                this.rowCount = i3 + 1;
                this.storageNumRow = i3;
            }
        }
        if (this.storageNumRow == -1) {
            int i4 = this.rowCount;
            this.rowCount = i4 + 1;
            this.storageNumRow = i4;
        }
        int i5 = this.rowCount;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.filesOriginalNameSavingEnabledRow = i5;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.usageSection2Row = i6;
        int i8 = i7 + 1;
        this.rowCount = i8;
        this.backupSectionRow = i7;
        int i9 = i8 + 1;
        this.rowCount = i9;
        this.backupSaveAutoRow = i8;
        int i10 = i9 + 1;
        this.rowCount = i10;
        this.backupSaveManuallyRow = i9;
        int i11 = i10 + 1;
        this.rowCount = i11;
        this.backupSection2Row = i10;
        int i12 = i11 + 1;
        this.rowCount = i12;
        this.mediaDownloadSectionRow = i11;
        int i13 = i12 + 1;
        this.rowCount = i13;
        this.mobileRow = i12;
        int i14 = i13 + 1;
        this.rowCount = i14;
        this.wifiRow = i13;
        int i15 = i14 + 1;
        this.rowCount = i15;
        this.roamingRow = i14;
        int i16 = i15 + 1;
        this.rowCount = i16;
        this.resetDownloadRow = i15;
        int i17 = i16 + 1;
        this.rowCount = i17;
        this.mediaDownloadSection2Row = i16;
        int i18 = i17 + 1;
        this.rowCount = i18;
        this.saveToGallerySectionRow = i17;
        int i19 = i18 + 1;
        this.rowCount = i19;
        this.saveToGalleryPeerRow = i18;
        int i20 = i19 + 1;
        this.rowCount = i20;
        this.saveToGalleryGroupsRow = i19;
        int i21 = i20 + 1;
        this.rowCount = i21;
        this.saveToGalleryChannelsRow = i20;
        int i22 = i21 + 1;
        this.rowCount = i22;
        this.saveToGalleryDividerRow = i21;
        int i23 = i22 + 1;
        this.rowCount = i23;
        this.streamSectionRow = i22;
        int i24 = i23 + 1;
        this.rowCount = i24;
        this.enableStreamRow = i23;
        if (BuildVars.DEBUG_VERSION) {
            int i25 = i24 + 1;
            this.rowCount = i25;
            this.enableMkvRow = i24;
            this.rowCount = i25 + 1;
            this.enableAllStreamRow = i25;
        } else {
            this.enableAllStreamRow = -1;
            this.enableMkvRow = -1;
        }
        int i26 = this.rowCount;
        int i27 = i26 + 1;
        this.rowCount = i27;
        this.enableAllStreamInfoRow = i26;
        this.enableCacheStreamRow = -1;
        int i28 = i27 + 1;
        this.rowCount = i28;
        this.callsSectionRow = i27;
        int i29 = i28 + 1;
        this.rowCount = i29;
        this.useLessDataForCallsRow = i28;
        int i30 = i29 + 1;
        this.rowCount = i30;
        this.quickRepliesRow = i29;
        int i31 = i30 + 1;
        this.rowCount = i31;
        this.callsSection2Row = i30;
        int i32 = i31 + 1;
        this.rowCount = i32;
        this.proxySectionRow = i31;
        int i33 = i32 + 1;
        this.rowCount = i33;
        this.proxyRow = i32;
        int i34 = i33 + 1;
        this.rowCount = i34;
        this.proxySection2Row = i33;
        int i35 = i34 + 1;
        this.rowCount = i35;
        this.clearDraftsRow = i34;
        this.rowCount = i35 + 1;
        this.clearDraftsSectionRow = i35;
        return true;
    }

    private void loadCacheSize() {
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                DataSettingsActivity.this.lambda$loadCacheSize$0();
            }
        };
        AndroidUtilities.runOnUIThread(runnable, 100L);
        final long currentTimeMillis = System.currentTimeMillis();
        CacheControlActivity.calculateTotalSize(new Utilities.Callback() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                DataSettingsActivity.this.lambda$loadCacheSize$1(runnable, currentTimeMillis, (Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCacheSize$0() {
        int i;
        this.storageUsageLoading = true;
        if (this.listAdapter == null || (i = this.storageUsageRow) < 0) {
            return;
        }
        rebind(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCacheSize$1(Runnable runnable, long j, Long l) {
        int i;
        AndroidUtilities.cancelRunOnUIThread(runnable);
        this.updateStorageUsageAnimated = this.updateStorageUsageAnimated || System.currentTimeMillis() - j > 120;
        this.storageUsageSize = l.longValue();
        this.storageUsageLoading = false;
        if (this.listAdapter == null || (i = this.storageUsageRow) < 0) {
            return;
        }
        rebind(i);
    }

    private void rebind(int i) {
        if (this.listView == null || this.listAdapter == null) {
            return;
        }
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            RecyclerView.ViewHolder childViewHolder = this.listView.getChildViewHolder(this.listView.getChildAt(i2));
            if (childViewHolder != null && childViewHolder.getAdapterPosition() == i) {
                this.listAdapter.onBindViewHolder(childViewHolder, i);
                return;
            }
        }
    }

    private void rebindAll() {
        if (this.listView == null || this.listAdapter == null) {
            return;
        }
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            RecyclerView.ViewHolder childViewHolder = this.listView.getChildViewHolder(childAt);
            if (childViewHolder != null) {
                this.listAdapter.onBindViewHolder(childViewHolder, this.listView.getChildAdapterPosition(childAt));
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObservers(this, observers);
        CacheControlActivity.canceled = true;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString("DataSettings", C3286R.string.DataSettings));
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.DataSettingsActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    DataSettingsActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        ((FrameLayout) this.fragmentView).addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda10
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
                DataSettingsActivity.this.lambda$createView$10(context, view, i, f, f2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:80:0x024c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$10(android.content.Context r19, android.view.View r20, final int r21, float r22, float r23) {
        /*
            Method dump skipped, instructions count: 1295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DataSettingsActivity.lambda$createView$10(android.content.Context, android.view.View, int, float, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        getBackupController().backup(false);
        AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        this.progressDialog = alertDialog;
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(DialogInterface dialogInterface, int i) {
        DownloadController.Preset preset;
        DownloadController.Preset preset2;
        String str;
        SharedConfig.setFilesOriginalNameSavingEnabled(TelegramPreferenceKeys.Global.Default.isFilesOriginalNameSavingEnabled());
        this.listAdapter.notifyItemChanged(this.filesOriginalNameSavingEnabledRow);
        SharedPreferences.Editor edit = MessagesController.getMainSettings(this.currentAccount).edit();
        for (int i2 = 0; i2 < 3; i2++) {
            if (i2 == 0) {
                preset = DownloadController.getInstance(this.currentAccount).mobilePreset;
                preset2 = DownloadController.getInstance(this.currentAccount).mediumPreset;
                str = "mobilePreset";
            } else if (i2 == 1) {
                preset = DownloadController.getInstance(this.currentAccount).wifiPreset;
                preset2 = DownloadController.getInstance(this.currentAccount).highPreset;
                str = "wifiPreset";
            } else {
                preset = DownloadController.getInstance(this.currentAccount).roamingPreset;
                preset2 = DownloadController.getInstance(this.currentAccount).lowPreset;
                str = "roamingPreset";
            }
            preset.set(preset2);
            preset.enabled = preset2.isEnabled();
            DownloadController.getInstance(this.currentAccount).currentMobilePreset = 3;
            edit.putInt("currentMobilePreset", 3);
            DownloadController.getInstance(this.currentAccount).currentWifiPreset = 3;
            edit.putInt("currentWifiPreset", 3);
            DownloadController.getInstance(this.currentAccount).currentRoamingPreset = 3;
            edit.putInt("currentRoamingPreset", 3);
            edit.putString(str, preset.toString());
        }
        edit.commit();
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
        for (int i3 = 0; i3 < 3; i3++) {
            DownloadController.getInstance(this.currentAccount).savePresetToServer(i3);
        }
        this.listAdapter.notifyItemRangeChanged(this.mobileRow, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(SharedPreferences sharedPreferences, int i, DialogInterface dialogInterface, int i2) {
        int i3 = 3;
        if (i2 == 0) {
            i3 = 0;
        } else if (i2 != 1) {
            i3 = i2 != 2 ? i2 != 3 ? -1 : 2 : 1;
        }
        if (i3 != -1) {
            sharedPreferences.edit().putInt("VoipDataSaving", i3).commit();
            this.updateVoipUseLessData = true;
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(String str, AlertDialog.Builder builder, View view) {
        SharedConfig.storageCacheDir = str;
        SharedConfig.saveConfig();
        builder.getDismissRunnable().run();
        rebind(this.storageNumRow);
        ImageLoader.getInstance().checkMediaPaths(new Runnable() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                DataSettingsActivity.this.lambda$createView$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5() {
        CacheControlActivity.resetCalculatedTotalSIze();
        loadCacheSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(DialogInterface dialogInterface, int i) {
        getConnectionsManager().sendRequest(new TLRPC$TL_messages_clearAllDrafts(), new RequestDelegate() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                DataSettingsActivity.this.lambda$createView$8(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7() {
        getMediaDataController().clearAllDrafts(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                DataSettingsActivity.this.lambda$createView$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        loadCacheSize();
        rebindAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DataSettingsActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DataSettingsActivity.this.rowCount;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:111:0x03a2  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x02d5  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r19, int r20) {
            /*
                Method dump skipped, instructions count: 1548
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.DataSettingsActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 3) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                int adapterPosition = viewHolder.getAdapterPosition();
                if (adapterPosition != DataSettingsActivity.this.enableCacheStreamRow) {
                    if (adapterPosition != DataSettingsActivity.this.enableStreamRow) {
                        if (adapterPosition != DataSettingsActivity.this.enableAllStreamRow) {
                            if (adapterPosition != DataSettingsActivity.this.enableMkvRow) {
                                if (adapterPosition != DataSettingsActivity.this.autoplayGifsRow) {
                                    if (adapterPosition == DataSettingsActivity.this.autoplayVideoRow) {
                                        textCheckCell.setChecked(SharedConfig.isAutoplayVideo());
                                        return;
                                    }
                                    return;
                                }
                                textCheckCell.setChecked(SharedConfig.isAutoplayGifs());
                                return;
                            }
                            textCheckCell.setChecked(SharedConfig.streamMkv);
                            return;
                        }
                        textCheckCell.setChecked(SharedConfig.streamAllVideo);
                        return;
                    }
                    textCheckCell.setChecked(SharedConfig.streamMedia);
                    return;
                }
                textCheckCell.setChecked(SharedConfig.saveStreamMedia);
            }
        }

        public boolean isRowEnabled(int i) {
            if (i != DataSettingsActivity.this.resetDownloadRow) {
                return i == DataSettingsActivity.this.backupSaveAutoRow || i == DataSettingsActivity.this.backupSaveManuallyRow || i == DataSettingsActivity.this.filesOriginalNameSavingEnabledRow || i == DataSettingsActivity.this.mobileRow || i == DataSettingsActivity.this.roamingRow || i == DataSettingsActivity.this.wifiRow || i == DataSettingsActivity.this.storageUsageRow || i == DataSettingsActivity.this.useLessDataForCallsRow || i == DataSettingsActivity.this.dataUsageRow || i == DataSettingsActivity.this.proxyRow || i == DataSettingsActivity.this.clearDraftsRow || i == DataSettingsActivity.this.enableCacheStreamRow || i == DataSettingsActivity.this.enableStreamRow || i == DataSettingsActivity.this.enableAllStreamRow || i == DataSettingsActivity.this.enableMkvRow || i == DataSettingsActivity.this.quickRepliesRow || i == DataSettingsActivity.this.autoplayVideoRow || i == DataSettingsActivity.this.autoplayGifsRow || i == DataSettingsActivity.this.storageNumRow || i == DataSettingsActivity.this.saveToGalleryGroupsRow || i == DataSettingsActivity.this.saveToGalleryPeerRow || i == DataSettingsActivity.this.saveToGalleryChannelsRow;
            }
            DownloadController downloadController = DownloadController.getInstance(((BaseFragment) DataSettingsActivity.this).currentAccount);
            return (downloadController.lowPreset.equals(downloadController.getCurrentRoamingPreset()) && downloadController.lowPreset.isEnabled() == downloadController.roamingPreset.enabled && downloadController.mediumPreset.equals(downloadController.getCurrentMobilePreset()) && downloadController.mediumPreset.isEnabled() == downloadController.mobilePreset.enabled && downloadController.highPreset.equals(downloadController.getCurrentWiFiPreset()) && downloadController.highPreset.isEnabled() == downloadController.wifiPreset.enabled) ? false : true;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return isRowEnabled(viewHolder.getAdapterPosition());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View shadowSectionCell;
            if (i == 0) {
                shadowSectionCell = new ShadowSectionCell(this.mContext);
            } else if (i == 1) {
                shadowSectionCell = new TextSettingsCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 2) {
                shadowSectionCell = new HeaderCell(this.mContext, 22);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 3) {
                shadowSectionCell = new TextCheckCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 4) {
                shadowSectionCell = new TextInfoPrivacyCell(this.mContext);
                shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3286R.C3288drawable.greydivider, "windowBackgroundGrayShadow"));
            } else if (i == 5) {
                shadowSectionCell = new NotificationsCheckCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else {
                shadowSectionCell = new TextCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            }
            shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(shadowSectionCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == DataSettingsActivity.this.backupSection2Row || i == DataSettingsActivity.this.mediaDownloadSection2Row || i == DataSettingsActivity.this.usageSection2Row || i == DataSettingsActivity.this.callsSection2Row || i == DataSettingsActivity.this.proxySection2Row || i == DataSettingsActivity.this.autoplaySectionRow || i == DataSettingsActivity.this.clearDraftsSectionRow || i == DataSettingsActivity.this.saveToGalleryDividerRow) {
                return 0;
            }
            if (i == DataSettingsActivity.this.backupSectionRow || i == DataSettingsActivity.this.mediaDownloadSectionRow || i == DataSettingsActivity.this.streamSectionRow || i == DataSettingsActivity.this.callsSectionRow || i == DataSettingsActivity.this.usageSectionRow || i == DataSettingsActivity.this.proxySectionRow || i == DataSettingsActivity.this.autoplayHeaderRow || i == DataSettingsActivity.this.saveToGallerySectionRow) {
                return 2;
            }
            if (i == DataSettingsActivity.this.enableCacheStreamRow || i == DataSettingsActivity.this.enableStreamRow || i == DataSettingsActivity.this.enableAllStreamRow || i == DataSettingsActivity.this.enableMkvRow || i == DataSettingsActivity.this.autoplayGifsRow || i == DataSettingsActivity.this.autoplayVideoRow || i == DataSettingsActivity.this.filesOriginalNameSavingEnabledRow) {
                return 3;
            }
            if (i == DataSettingsActivity.this.enableAllStreamInfoRow) {
                return 4;
            }
            if (i == DataSettingsActivity.this.backupSaveAutoRow || i == DataSettingsActivity.this.mobileRow || i == DataSettingsActivity.this.wifiRow || i == DataSettingsActivity.this.roamingRow || i == DataSettingsActivity.this.saveToGalleryGroupsRow || i == DataSettingsActivity.this.saveToGalleryPeerRow || i == DataSettingsActivity.this.saveToGalleryChannelsRow) {
                return 5;
            }
            return (i == DataSettingsActivity.this.storageUsageRow || i == DataSettingsActivity.this.dataUsageRow || i == DataSettingsActivity.this.storageNumRow) ? 6 : 1;
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCheckCell.class, HeaderCell.class, NotificationsCheckCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        return arrayList;
    }
}
