package org.telegram.p044ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.TelegramPreferenceKeys;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3361ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.NotificationsCheckCell;
import org.telegram.p044ui.Cells.ShadowSectionCell;
import org.telegram.p044ui.Cells.TextCell;
import org.telegram.p044ui.Cells.TextCheckCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.Cells.TextSettingsCell;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RecyclerListView;
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
    private int resetDownloadRow = -1;
    private int autoplayHeaderRow = -1;
    private int autoplayGifsRow = -1;
    private int autoplayVideoRow = -1;
    private int autoplaySectionRow = -1;
    private int quickRepliesRow = -1;

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.backupDidUpload || getParentActivity() == null) {
            return;
        }
        AlertDialog alertDialog = this.progressDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        BulletinFactory.m29of(this).createSimpleBulletin(C3295R.raw.info, AndroidUtilities.replaceTags(LocaleController.getInternalString(C3295R.string.cloud_albums_undo_forward_cloud))).show();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getInstance(this.currentAccount).addObservers(this, observers);
        DownloadController.getInstance(this.currentAccount).loadAutoDownloadConfig(true);
        updateRows(true);
        return true;
    }

    private void updateRows(boolean z) {
        int i;
        boolean z2 = false;
        this.rowCount = 0;
        int i2 = 0 + 1;
        this.rowCount = i2;
        this.usageSectionRow = 0;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.storageUsageRow = i2;
        this.rowCount = i3 + 1;
        this.dataUsageRow = i3;
        this.storageNumRow = -1;
        if (Build.VERSION.SDK_INT >= 19) {
            ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
            this.storageDirs = rootDirs;
            if (rootDirs.size() > 1) {
                int i4 = this.rowCount;
                this.rowCount = i4 + 1;
                this.storageNumRow = i4;
            }
        }
        if (this.storageNumRow == -1) {
            int i5 = this.rowCount;
            this.rowCount = i5 + 1;
            this.storageNumRow = i5;
        }
        int i6 = this.rowCount;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.filesOriginalNameSavingEnabledRow = i6;
        int i8 = i7 + 1;
        this.rowCount = i8;
        this.usageSection2Row = i7;
        int i9 = i8 + 1;
        this.rowCount = i9;
        this.backupSectionRow = i8;
        int i10 = i9 + 1;
        this.rowCount = i10;
        this.backupSaveAutoRow = i9;
        int i11 = i10 + 1;
        this.rowCount = i11;
        this.backupSaveManuallyRow = i10;
        int i12 = i11 + 1;
        this.rowCount = i12;
        this.backupSection2Row = i11;
        int i13 = i12 + 1;
        this.rowCount = i13;
        this.mediaDownloadSectionRow = i12;
        int i14 = i13 + 1;
        this.rowCount = i14;
        this.mobileRow = i13;
        int i15 = i14 + 1;
        this.rowCount = i15;
        this.wifiRow = i14;
        this.rowCount = i15 + 1;
        this.roamingRow = i15;
        DownloadController downloadController = getDownloadController();
        if (downloadController.lowPreset.equals(downloadController.getCurrentRoamingPreset()) && downloadController.lowPreset.isEnabled() == downloadController.roamingPreset.enabled && downloadController.mediumPreset.equals(downloadController.getCurrentMobilePreset()) && downloadController.mediumPreset.isEnabled() == downloadController.mobilePreset.enabled && downloadController.highPreset.equals(downloadController.getCurrentWiFiPreset()) && downloadController.highPreset.isEnabled() == downloadController.wifiPreset.enabled) {
            z2 = true;
        }
        int i16 = this.resetDownloadRow;
        if (z2) {
            i = -1;
        } else {
            i = this.rowCount;
            this.rowCount = i + 1;
        }
        this.resetDownloadRow = i;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null && !z) {
            if (i16 < 0 && i >= 0) {
                listAdapter.notifyItemChanged(this.roamingRow);
                this.listAdapter.notifyItemInserted(this.resetDownloadRow);
            } else if (i16 < 0 || i >= 0) {
                z = true;
            } else {
                listAdapter.notifyItemChanged(this.roamingRow);
                this.listAdapter.notifyItemRemoved(i16);
            }
        }
        int i17 = this.rowCount;
        int i18 = i17 + 1;
        this.rowCount = i18;
        this.mediaDownloadSection2Row = i17;
        int i19 = i18 + 1;
        this.rowCount = i19;
        this.saveToGallerySectionRow = i18;
        int i20 = i19 + 1;
        this.rowCount = i20;
        this.saveToGalleryPeerRow = i19;
        int i21 = i20 + 1;
        this.rowCount = i21;
        this.saveToGalleryGroupsRow = i20;
        int i22 = i21 + 1;
        this.rowCount = i22;
        this.saveToGalleryChannelsRow = i21;
        int i23 = i22 + 1;
        this.rowCount = i23;
        this.saveToGalleryDividerRow = i22;
        int i24 = i23 + 1;
        this.rowCount = i24;
        this.streamSectionRow = i23;
        int i25 = i24 + 1;
        this.rowCount = i25;
        this.enableStreamRow = i24;
        if (BuildVars.DEBUG_VERSION) {
            int i26 = i25 + 1;
            this.rowCount = i26;
            this.enableMkvRow = i25;
            this.rowCount = i26 + 1;
            this.enableAllStreamRow = i26;
        } else {
            this.enableAllStreamRow = -1;
            this.enableMkvRow = -1;
        }
        int i27 = this.rowCount;
        int i28 = i27 + 1;
        this.rowCount = i28;
        this.enableAllStreamInfoRow = i27;
        this.enableCacheStreamRow = -1;
        int i29 = i28 + 1;
        this.rowCount = i29;
        this.callsSectionRow = i28;
        int i30 = i29 + 1;
        this.rowCount = i30;
        this.useLessDataForCallsRow = i29;
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
        ListAdapter listAdapter2 = this.listAdapter;
        if (listAdapter2 == null || !z) {
            return;
        }
        listAdapter2.notifyDataSetChanged();
    }

    private void loadCacheSize() {
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda5
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

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObservers(this, observers);
        CacheControlActivity.canceled = true;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C3295R.C3297drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString("DataSettings", C3295R.string.DataSettings));
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3361ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.DataSettingsActivity.1
            @Override // org.telegram.p044ui.ActionBar.C3361ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    DataSettingsActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.DataSettingsActivity.2
            @Override // org.telegram.p044ui.Components.RecyclerListView
            public Integer getSelectorColor(int i) {
                if (i == DataSettingsActivity.this.resetDownloadRow) {
                    return Integer.valueOf(Theme.multAlpha(getThemedColor(Theme.key_text_RedRegular), 0.1f));
                }
                return Integer.valueOf(getThemedColor(Theme.key_listSelector));
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        ((FrameLayout) this.fragmentView).addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda10
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                DataSettingsActivity.this.lambda$createView$9(context, view, i, f, f2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0256  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$9(android.content.Context r21, android.view.View r22, final int r23, float r24, float r25) {
        /*
            Method dump skipped, instructions count: 1321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DataSettingsActivity.lambda$createView$9(android.content.Context, android.view.View, int, float, float):void");
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
        updateRows(false);
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
    public /* synthetic */ void lambda$createView$5(final String str, boolean z, final AlertDialog.Builder builder, View view) {
        if (TextUtils.equals(SharedConfig.storageCacheDir, str)) {
            return;
        }
        if (!z) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getContext());
            builder2.setTitle(LocaleController.getString("DecreaseSpeed", C3295R.string.DecreaseSpeed));
            builder2.setMessage(LocaleController.getString("SdCardAlert", C3295R.string.SdCardAlert));
            builder2.setPositiveButton(LocaleController.getString("Proceed", C3295R.string.Proceed), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DataSettingsActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    DataSettingsActivity.this.setStorageDirectory(str);
                    builder.getDismissRunnable().run();
                }
            });
            builder2.setNegativeButton(LocaleController.getString("Back", C3295R.string.Back), null);
            builder2.show();
            return;
        }
        setStorageDirectory(str);
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(DialogInterface dialogInterface, int i) {
        getConnectionsManager().sendRequest(new TLRPC$TL_messages_clearAllDrafts(), new RequestDelegate() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                DataSettingsActivity.this.lambda$createView$7(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6() {
        getMediaDataController().clearAllDrafts(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                DataSettingsActivity.this.lambda$createView$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStorageDirectory(String str) {
        SharedConfig.storageCacheDir = str;
        SharedConfig.saveConfig();
        if (str != null) {
            SharedConfig.readOnlyStorageDirAlertShowed = false;
        }
        rebind(this.storageNumRow);
        ImageLoader.getInstance().checkMediaPaths(new Runnable() { // from class: org.telegram.ui.DataSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                DataSettingsActivity.this.lambda$setStorageDirectory$10();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStorageDirectory$10() {
        CacheControlActivity.resetCalculatedTotalSIze();
        loadCacheSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onDialogDismiss(Dialog dialog) {
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        loadCacheSize();
        rebindAll();
        updateRows(false);
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
        /* JADX WARN: Removed duplicated region for block: B:116:0x03b7  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x02e9  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r20, int r21) {
            /*
                Method dump skipped, instructions count: 1570
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.DataSettingsActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
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
            return i == DataSettingsActivity.this.backupSaveAutoRow || i == DataSettingsActivity.this.backupSaveManuallyRow || i == DataSettingsActivity.this.filesOriginalNameSavingEnabledRow || i == DataSettingsActivity.this.mobileRow || i == DataSettingsActivity.this.roamingRow || i == DataSettingsActivity.this.wifiRow || i == DataSettingsActivity.this.storageUsageRow || i == DataSettingsActivity.this.useLessDataForCallsRow || i == DataSettingsActivity.this.dataUsageRow || i == DataSettingsActivity.this.proxyRow || i == DataSettingsActivity.this.clearDraftsRow || i == DataSettingsActivity.this.enableCacheStreamRow || i == DataSettingsActivity.this.enableStreamRow || i == DataSettingsActivity.this.enableAllStreamRow || i == DataSettingsActivity.this.enableMkvRow || i == DataSettingsActivity.this.quickRepliesRow || i == DataSettingsActivity.this.autoplayVideoRow || i == DataSettingsActivity.this.autoplayGifsRow || i == DataSettingsActivity.this.storageNumRow || i == DataSettingsActivity.this.saveToGalleryGroupsRow || i == DataSettingsActivity.this.saveToGalleryPeerRow || i == DataSettingsActivity.this.saveToGalleryChannelsRow || i == DataSettingsActivity.this.resetDownloadRow;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
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
                shadowSectionCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 2) {
                shadowSectionCell = new HeaderCell(this.mContext, 22);
                shadowSectionCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 3) {
                shadowSectionCell = new TextCheckCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 4) {
                shadowSectionCell = new TextInfoPrivacyCell(this.mContext);
                shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3295R.C3297drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
            } else if (i == 5) {
                shadowSectionCell = new NotificationsCheckCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                shadowSectionCell = new TextCell(this.mContext);
                shadowSectionCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
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

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCheckCell.class, HeaderCell.class, NotificationsCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3361ActionBar c3361ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3361ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_switchTrack;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        int i6 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i7 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        return arrayList;
    }
}
