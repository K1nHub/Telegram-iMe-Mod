package org.telegram.p048ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.StatFs;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.CacheByChatsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.FilesMigrationService;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.CacheControlActivity;
import org.telegram.p048ui.CachedMediaLayout;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.AnimatedFloat;
import org.telegram.p048ui.Components.AnimatedTextView;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.CacheChart;
import org.telegram.p048ui.Components.CheckBox2;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.FlickerLoadingView;
import org.telegram.p048ui.Components.HideViewAfterAnimation;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p048ui.Components.LoadingDrawable;
import org.telegram.p048ui.Components.NestedSizeNotifierLayout;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.SlideChooseView;
import org.telegram.p048ui.Components.StorageDiagramView;
import org.telegram.p048ui.Components.StorageUsageView;
import org.telegram.p048ui.Components.TypefaceSpan;
import org.telegram.p048ui.Components.UndoView;
import org.telegram.p048ui.DilogCacheBottomSheet;
import org.telegram.p048ui.KeepMediaPopupView;
import org.telegram.p048ui.Storage.CacheModel;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.CacheControlActivity */
/* loaded from: classes5.dex */
public class CacheControlActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    public static volatile boolean canceled = false;
    private static Long lastDeviceTotalFreeSize;
    private static Long lastDeviceTotalSize;
    private static Long lastTotalSizeCalculated;
    private static long lastTotalSizeCalculatedTime;
    private ValueAnimator actionBarAnimator;
    private boolean actionBarShown;
    private float actionBarShownT;
    private ActionBarMenu actionMode;
    private TextView actionModeClearButton;
    private AnimatedTextView actionModeSubtitle;
    private AnimatedTextView actionModeTitle;
    private View actionTextView;
    private BottomSheet bottomSheet;
    private View bottomSheetView;
    private CacheChart cacheChart;
    private CacheChartHeader cacheChartHeader;
    CacheModel cacheModel;
    private UndoView cacheRemovedTooltip;
    private CachedMediaLayout cachedMediaLayout;
    private boolean changeStatusBar;
    private ClearCacheButtonInternal clearCacheButton;
    private ActionBarMenuSubItem clearDatabaseItem;
    long fragmentCreateTime;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private NestedSizeNotifierLayout nestedSizeNotifierLayout;
    private int[] percents;
    AlertDialog progressDialog;
    private float[] tempSizes;
    private boolean[] selected = {true, true, true, true, true, true, true, true, true};
    private long databaseSize = -1;
    private long cacheSize = -1;
    private long cacheEmojiSize = -1;
    private long cacheTempSize = -1;
    private long documentsSize = -1;
    private long audioSize = -1;
    private long musicSize = -1;
    private long photoSize = -1;
    private long videoSize = -1;
    private long stickersCacheSize = -1;
    private long totalSize = -1;
    private long totalDeviceSize = -1;
    private long totalDeviceFreeSize = -1;
    private long migrateOldFolderRow = -1;
    private boolean calculating = true;
    private boolean collapsed = true;
    private int sectionsStartRow = -1;
    private int sectionsEndRow = -1;
    private ArrayList<ItemInner> oldItems = new ArrayList<>();
    private ArrayList<ItemInner> itemInners = new ArrayList<>();
    private float actionBarShadowAlpha = 1.0f;

    /* renamed from: org.telegram.ui.CacheControlActivity$FileEntities */
    /* loaded from: classes5.dex */
    public static class FileEntities {
        public int count;
        public ArrayList<CacheModel.FileInfo> files = new ArrayList<>();
        public long totalSize;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean needDelayOpenAnimation() {
        return true;
    }

    static /* synthetic */ float access$516(CacheControlActivity cacheControlActivity, float f) {
        float f2 = cacheControlActivity.actionBarShadowAlpha + f;
        cacheControlActivity.actionBarShadowAlpha = f2;
        return f2;
    }

    static /* synthetic */ float access$524(CacheControlActivity cacheControlActivity, float f) {
        float f2 = cacheControlActivity.actionBarShadowAlpha - f;
        cacheControlActivity.actionBarShadowAlpha = f2;
        return f2;
    }

    private void updateDatabaseItemSize() {
        if (this.clearDatabaseItem != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) LocaleController.getString("ClearLocalDatabase", C3301R.string.ClearLocalDatabase));
            this.clearDatabaseItem.setText(spannableStringBuilder);
        }
    }

    public static void calculateTotalSize(final Utilities.Callback<Long> callback) {
        if (callback == null) {
            return;
        }
        Long l = lastTotalSizeCalculated;
        if (l != null) {
            callback.run(l);
            if (System.currentTimeMillis() - lastTotalSizeCalculatedTime < 5000) {
                return;
            }
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.lambda$calculateTotalSize$1(Utilities.Callback.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$calculateTotalSize$1(final Utilities.Callback callback) {
        canceled = false;
        long directorySize = getDirectorySize(FileLoader.checkDirectory(4), 5);
        long directorySize2 = getDirectorySize(FileLoader.checkDirectory(4), 4);
        long directorySize3 = getDirectorySize(FileLoader.checkDirectory(0), 0) + getDirectorySize(FileLoader.checkDirectory(100), 0);
        long directorySize4 = getDirectorySize(FileLoader.checkDirectory(2), 0) + getDirectorySize(FileLoader.checkDirectory(101), 0);
        long directorySize5 = getDirectorySize(FileLoader.checkDirectory(3), 1) + getDirectorySize(FileLoader.checkDirectory(5), 1);
        Long valueOf = Long.valueOf(directorySize + directorySize2 + directorySize4 + getDirectorySize(FileLoader.checkDirectory(1), 0) + directorySize3 + directorySize5 + getDirectorySize(FileLoader.checkDirectory(3), 2) + getDirectorySize(FileLoader.checkDirectory(5), 2) + getDirectorySize(new File(FileLoader.checkDirectory(4), "acache"), 0) + getDirectorySize(FileLoader.checkDirectory(4), 3));
        lastTotalSizeCalculated = valueOf;
        final long longValue = valueOf.longValue();
        lastTotalSizeCalculatedTime = System.currentTimeMillis();
        if (canceled) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.lambda$calculateTotalSize$0(Utilities.Callback.this, longValue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$calculateTotalSize$0(Utilities.Callback callback, long j) {
        callback.run(Long.valueOf(j));
    }

    public static void resetCalculatedTotalSIze() {
        lastTotalSizeCalculated = null;
    }

    public static void getDeviceTotalSize(Utilities.Callback2<Long, Long> callback2) {
        File file;
        long blockSize;
        long availableBlocks;
        long blockCount;
        Long l;
        Long l2 = lastDeviceTotalSize;
        if (l2 != null && (l = lastDeviceTotalFreeSize) != null) {
            if (callback2 != null) {
                callback2.run(l2, l);
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
            file = rootDirs.get(0);
            file.getAbsolutePath();
            if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
                int size = rootDirs.size();
                for (int i = 0; i < size; i++) {
                    File file2 = rootDirs.get(i);
                    if (file2.getAbsolutePath().startsWith(SharedConfig.storageCacheDir) && file2.canWrite()) {
                        file = file2;
                        break;
                    }
                }
            }
        } else {
            file = new File(SharedConfig.storageCacheDir);
        }
        try {
            StatFs statFs = new StatFs(file.getPath());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 18) {
                blockSize = statFs.getBlockSizeLong();
            } else {
                blockSize = statFs.getBlockSize();
            }
            if (i2 >= 18) {
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                availableBlocks = statFs.getAvailableBlocks();
            }
            if (i2 >= 18) {
                blockCount = statFs.getBlockCountLong();
            } else {
                blockCount = statFs.getBlockCount();
            }
            lastDeviceTotalSize = Long.valueOf(blockCount * blockSize);
            Long valueOf = Long.valueOf(availableBlocks * blockSize);
            lastDeviceTotalFreeSize = valueOf;
            if (callback2 != null) {
                callback2.run(lastDeviceTotalSize, valueOf);
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        canceled = false;
        getNotificationCenter().addObserver(this, NotificationCenter.didClearDatabase);
        this.databaseSize = MessagesStorage.getInstance(this.currentAccount).getDatabaseSize();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$onFragmentCreate$3();
            }
        });
        this.fragmentCreateTime = System.currentTimeMillis();
        updateRows(false);
        updateChart();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$3() {
        File file;
        long blockSize;
        long availableBlocks;
        long blockCount;
        this.cacheSize = getDirectorySize(FileLoader.checkDirectory(4), 5);
        if (canceled) {
            return;
        }
        this.cacheTempSize = getDirectorySize(FileLoader.checkDirectory(4), 4);
        if (canceled) {
            return;
        }
        long directorySize = getDirectorySize(FileLoader.checkDirectory(0), 0);
        this.photoSize = directorySize;
        this.photoSize = directorySize + getDirectorySize(FileLoader.checkDirectory(100), 0);
        if (canceled) {
            return;
        }
        long directorySize2 = getDirectorySize(FileLoader.checkDirectory(2), 0);
        this.videoSize = directorySize2;
        this.videoSize = directorySize2 + getDirectorySize(FileLoader.checkDirectory(101), 0);
        if (canceled) {
            return;
        }
        long directorySize3 = getDirectorySize(FileLoader.checkDirectory(3), 1);
        this.documentsSize = directorySize3;
        this.documentsSize = directorySize3 + getDirectorySize(FileLoader.checkDirectory(5), 1);
        if (canceled) {
            return;
        }
        long directorySize4 = getDirectorySize(FileLoader.checkDirectory(3), 2);
        this.musicSize = directorySize4;
        this.musicSize = directorySize4 + getDirectorySize(FileLoader.checkDirectory(5), 2);
        if (canceled) {
            return;
        }
        this.stickersCacheSize = getDirectorySize(new File(FileLoader.checkDirectory(4), "acache"), 0);
        if (canceled) {
            return;
        }
        this.cacheEmojiSize = getDirectorySize(FileLoader.checkDirectory(4), 3);
        if (canceled) {
            return;
        }
        this.stickersCacheSize += this.cacheEmojiSize;
        this.audioSize = getDirectorySize(FileLoader.checkDirectory(1), 0);
        if (canceled) {
            return;
        }
        Long valueOf = Long.valueOf(this.cacheSize + this.cacheTempSize + this.videoSize + this.audioSize + this.photoSize + this.documentsSize + this.musicSize + this.stickersCacheSize);
        lastTotalSizeCalculated = valueOf;
        this.totalSize = valueOf.longValue();
        lastTotalSizeCalculatedTime = System.currentTimeMillis();
        if (Build.VERSION.SDK_INT >= 19) {
            ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
            file = rootDirs.get(0);
            file.getAbsolutePath();
            if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
                int size = rootDirs.size();
                for (int i = 0; i < size; i++) {
                    File file2 = rootDirs.get(i);
                    if (file2.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                        file = file2;
                        break;
                    }
                }
            }
        } else {
            file = new File(SharedConfig.storageCacheDir);
        }
        try {
            StatFs statFs = new StatFs(file.getPath());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 18) {
                blockSize = statFs.getBlockSizeLong();
            } else {
                blockSize = statFs.getBlockSize();
            }
            if (i2 >= 18) {
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                availableBlocks = statFs.getAvailableBlocks();
            }
            if (i2 >= 18) {
                blockCount = statFs.getBlockCountLong();
            } else {
                blockCount = statFs.getBlockCount();
            }
            this.totalDeviceSize = blockCount * blockSize;
            this.totalDeviceFreeSize = availableBlocks * blockSize;
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$onFragmentCreate$2();
            }
        });
        loadDialogEntities();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$2() {
        resumeDelayedFragmentAnimation();
        this.calculating = false;
        updateRows(true);
        updateChart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChart() {
        CacheChart cacheChart = this.cacheChart;
        if (cacheChart != null) {
            boolean z = this.calculating;
            if (!z && this.totalSize > 0) {
                CacheChart.SegmentSize[] segmentSizeArr = new CacheChart.SegmentSize[9];
                for (int i = 0; i < this.itemInners.size(); i++) {
                    ItemInner itemInner = this.itemInners.get(i);
                    if (itemInner.viewType == 11) {
                        int i2 = itemInner.index;
                        if (i2 < 0) {
                            if (this.collapsed) {
                                segmentSizeArr[8] = CacheChart.SegmentSize.m26of(itemInner.size, this.selected[8]);
                            }
                        } else {
                            segmentSizeArr[i2] = CacheChart.SegmentSize.m26of(itemInner.size, this.selected[i2]);
                        }
                    }
                }
                if (System.currentTimeMillis() - this.fragmentCreateTime < 80) {
                    this.cacheChart.loadingFloat.set(BitmapDescriptorFactory.HUE_RED, true);
                }
                this.cacheChart.setSegments(this.totalSize, true, segmentSizeArr);
            } else if (z) {
                cacheChart.setSegments(-1L, true, new CacheChart.SegmentSize[0]);
            } else {
                cacheChart.setSegments(0L, true, new CacheChart.SegmentSize[0]);
            }
        }
        ClearCacheButtonInternal clearCacheButtonInternal = this.clearCacheButton;
        if (clearCacheButtonInternal == null || this.calculating) {
            return;
        }
        clearCacheButtonInternal.updateSize();
    }

    private void loadDialogEntities() {
        getFileLoader().getFileDatabase().getQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$loadDialogEntities$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogEntities$6() {
        getFileLoader().getFileDatabase().ensureDatabaseCreated();
        final CacheModel cacheModel = new CacheModel(false);
        LongSparseArray<DialogFileEntities> longSparseArray = new LongSparseArray<>();
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(4), 6, longSparseArray, null);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(0), 0, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(100), 0, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(2), 1, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(101), 1, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(1), 4, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(3), 2, longSparseArray, cacheModel);
        fillDialogsEntitiesRecursive(FileLoader.checkDirectory(5), 2, longSparseArray, cacheModel);
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < longSparseArray.size(); i++) {
            DialogFileEntities valueAt = longSparseArray.valueAt(i);
            arrayList.add(valueAt);
            if (getMessagesController().getUserOrChat(((DialogFileEntities) arrayList.get(i)).dialogId) == null) {
                long j = valueAt.dialogId;
                if (j > 0) {
                    arrayList2.add(Long.valueOf(j));
                } else {
                    arrayList3.add(Long.valueOf(j));
                }
            }
        }
        cacheModel.sortBySize();
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$loadDialogEntities$5(arrayList2, arrayList3, arrayList, cacheModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogEntities$5(ArrayList arrayList, ArrayList arrayList2, final ArrayList arrayList3, final CacheModel cacheModel) {
        final ArrayList<TLRPC$User> arrayList4 = new ArrayList<>();
        final ArrayList<TLRPC$Chat> arrayList5 = new ArrayList<>();
        if (!arrayList.isEmpty()) {
            try {
                getMessagesStorage().getUsersInternal(TextUtils.join(",", arrayList), arrayList4);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
        if (!arrayList2.isEmpty()) {
            try {
                getMessagesStorage().getChatsInternal(TextUtils.join(",", arrayList2), arrayList5);
            } catch (Exception e2) {
                FileLog.m45e(e2);
            }
        }
        int i = 0;
        while (i < arrayList3.size()) {
            if (((DialogFileEntities) arrayList3.get(i)).totalSize <= 0) {
                arrayList3.remove(i);
                i--;
            }
            i++;
        }
        sort(arrayList3);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$loadDialogEntities$4(arrayList4, arrayList5, arrayList3, cacheModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogEntities$4(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, CacheModel cacheModel) {
        boolean z;
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        DialogFileEntities dialogFileEntities = null;
        int i = 0;
        while (i < arrayList3.size()) {
            DialogFileEntities dialogFileEntities2 = (DialogFileEntities) arrayList3.get(i);
            if (getMessagesController().getUserOrChat(dialogFileEntities2.dialogId) == null) {
                dialogFileEntities2.dialogId = Long.MAX_VALUE;
                if (dialogFileEntities != null) {
                    dialogFileEntities.merge(dialogFileEntities2);
                    arrayList3.remove(i);
                    i--;
                    z = true;
                } else {
                    dialogFileEntities = dialogFileEntities2;
                    z = false;
                }
                if (z) {
                    sort(arrayList3);
                }
            }
            i++;
        }
        cacheModel.setEntities(arrayList3);
        if (canceled) {
            return;
        }
        setCacheModel(cacheModel);
        updateRows();
        updateChart();
        if (this.cacheChartHeader == null || this.calculating || System.currentTimeMillis() - this.fragmentCreateTime <= 120) {
            return;
        }
        CacheChartHeader cacheChartHeader = this.cacheChartHeader;
        long j = this.totalSize;
        boolean z2 = j > 0;
        long j2 = this.totalDeviceSize;
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = i2 <= 0 ? 0.0f : ((float) j) / ((float) j2);
        long j3 = this.totalDeviceFreeSize;
        if (j3 > 0 && j2 > 0) {
            f = ((float) (j2 - j3)) / ((float) j2);
        }
        cacheChartHeader.setData(z2, f2, f);
    }

    private void sort(ArrayList<DialogFileEntities> arrayList) {
        Collections.sort(arrayList, CacheControlActivity$$ExternalSyntheticLambda17.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sort$7(DialogFileEntities dialogFileEntities, DialogFileEntities dialogFileEntities2) {
        long j = dialogFileEntities2.totalSize;
        long j2 = dialogFileEntities.totalSize;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    public void setCacheModel(CacheModel cacheModel) {
        this.cacheModel = cacheModel;
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.setCacheModel(cacheModel);
        }
    }

    public void fillDialogsEntitiesRecursive(File file, int i, LongSparseArray<DialogFileEntities> longSparseArray, CacheModel cacheModel) {
        File[] listFiles;
        if (file == null || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (canceled) {
                return;
            }
            if (file2.isDirectory()) {
                fillDialogsEntitiesRecursive(file2, i, longSparseArray, cacheModel);
            } else if (!file2.getName().equals(".nomedia")) {
                FilePathDatabase.FileMeta fileDialogId = getFileLoader().getFileDatabase().getFileDialogId(file2, null);
                String lowerCase = file2.getName().toLowerCase();
                int i2 = (lowerCase.endsWith(".mp3") || lowerCase.endsWith(".m4a")) ? 3 : i;
                CacheModel.FileInfo fileInfo = new CacheModel.FileInfo(file2);
                fileInfo.type = i2;
                if (fileDialogId != null) {
                    fileInfo.dialogId = fileDialogId.dialogId;
                    fileInfo.messageId = fileDialogId.messageId;
                    fileInfo.messageType = fileDialogId.messageType;
                }
                fileInfo.size = file2.length();
                long j = fileInfo.dialogId;
                if (j != 0) {
                    DialogFileEntities dialogFileEntities = longSparseArray.get(j, null);
                    if (dialogFileEntities == null) {
                        dialogFileEntities = new DialogFileEntities(fileInfo.dialogId);
                        longSparseArray.put(fileInfo.dialogId, dialogFileEntities);
                    }
                    dialogFileEntities.addFile(fileInfo, i2);
                }
                if (cacheModel != null) {
                    cacheModel.add(i2, fileInfo);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatPercent(float f) {
        return formatPercent(f, true);
    }

    private String formatPercent(float f, boolean z) {
        if (!z || f >= 0.001f) {
            float round = Math.round(f * 100.0f);
            return (!z || round > BitmapDescriptorFactory.HUE_RED) ? String.format("%d%%", Integer.valueOf((int) round)) : String.format("<%d%%", 1);
        }
        return String.format("<%.1f%%", Float.valueOf(0.1f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getCheckBoxTitle(CharSequence charSequence, int i, boolean z) {
        SpannableString spannableString = new SpannableString(i <= 0 ? String.format("<%.1f%%", Float.valueOf(1.0f)) : String.format("%d%%", Integer.valueOf(i)));
        spannableString.setSpan(new RelativeSizeSpan(0.834f), 0, spannableString.length(), 33);
        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.append((CharSequence) "  ");
        spannableStringBuilder.append((CharSequence) spannableString);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        updateRows(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateRows(boolean r17) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.CacheControlActivity.updateRows(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateRows$8(ItemInner itemInner, ItemInner itemInner2) {
        return Long.compare(itemInner2.size, itemInner.size);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.didClearDatabase);
        try {
            AlertDialog alertDialog = this.progressDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
        } catch (Exception unused) {
        }
        this.progressDialog = null;
        canceled = true;
    }

    private static long getDirectorySize(File file, int i) {
        if (file == null || canceled) {
            return 0L;
        }
        if (file.isDirectory()) {
            return Utilities.getDirSize(file.getAbsolutePath(), i, false);
        }
        if (file.isFile()) {
            return 0 + file.length();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupFolders() {
        CacheModel cacheModel = this.cacheModel;
        if (cacheModel != null) {
            cacheModel.clearSelection();
        }
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.updateVisibleRows();
            this.cachedMediaLayout.showActionMode(false);
        }
        AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        this.progressDialog = alertDialog;
        alertDialog.setCanCancel(false);
        this.progressDialog.showDelayed(500L);
        getFileLoader().cancelLoadAllFiles();
        getFileLoader().getFileLoaderQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$cleanupFolders$10();
            }
        });
        setCacheModel(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupFolders$10() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$cleanupFolders$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* renamed from: cleanupFoldersInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$cleanupFolders$9() {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.CacheControlActivity.lambda$cleanupFolders$9():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupFoldersInternal$12(boolean z, final long j) {
        if (z) {
            ImageLoader.getInstance().clearMemory();
        }
        try {
            AlertDialog alertDialog = this.progressDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.progressDialog = null;
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        getMediaDataController().ringtoneDataStore.checkRingtoneSoundsLoaded();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$cleanupFoldersInternal$11(j);
            }
        }, 150L);
        MediaDataController.getInstance(this.currentAccount).chekAllMedia(true);
        loadDialogEntities();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupFoldersInternal$11(long j) {
        this.cacheRemovedTooltip.setInfoText(LocaleController.formatString("CacheWasCleared", C3301R.string.CacheWasCleared, AndroidUtilities.formatFileSize(j)));
        this.cacheRemovedTooltip.showWithAction(0L, 19, null, null);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        if (f > 0.5f && !this.changeStatusBar) {
            this.changeStatusBar = true;
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        }
        super.onTransitionAnimationProgress(z, f);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (this.changeStatusBar) {
            return AndroidUtilities.computePerceivedBrightness(Theme.getColor("windowBackgroundGray")) > 0.721f;
        }
        return super.isLightStatusBar();
    }

    private long size(int i) {
        switch (i) {
            case 0:
                return this.photoSize;
            case 1:
                return this.videoSize;
            case 2:
                return this.documentsSize;
            case 3:
                return this.musicSize;
            case 4:
                return this.audioSize;
            case 5:
                return this.stickersCacheSize;
            case 6:
                return this.cacheSize;
            case 7:
                return this.cacheTempSize;
            default:
                return 0L;
        }
    }

    private int sectionsSelected() {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            if (this.selected[i2] && size(i2) > 0) {
                i++;
            }
        }
        return i;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackgroundDrawable(null);
        this.actionBar.setCastShadows(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(true);
        this.actionBar.setTitleColor(ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhiteBlackText"), 0));
        this.actionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteBlackText"), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor("listSelectorSDK21"), false);
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(false);
        this.actionBar.setTitle(LocaleController.getString("StorageUsage", C3301R.string.StorageUsage));
        this.actionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.CacheControlActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i != -1) {
                    if (i == 1) {
                        CacheControlActivity.this.clearSelectedFiles();
                    } else if (i == 3) {
                        CacheControlActivity.this.clearDatabase();
                    }
                } else if (((BaseFragment) CacheControlActivity.this).actionBar.isActionModeShowed()) {
                    CacheModel cacheModel = CacheControlActivity.this.cacheModel;
                    if (cacheModel != null) {
                        cacheModel.clearSelection();
                    }
                    if (CacheControlActivity.this.cachedMediaLayout != null) {
                        CacheControlActivity.this.cachedMediaLayout.showActionMode(false);
                        CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                    }
                } else {
                    CacheControlActivity.this.finishFragment();
                }
            }
        });
        this.actionMode = this.actionBar.createActionMode();
        FrameLayout frameLayout = new FrameLayout(context);
        this.actionMode.addView(frameLayout, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.actionModeTitle = animatedTextView;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        animatedTextView.setAnimationProperties(0.35f, 0L, 350L, cubicBezierInterpolator);
        this.actionModeTitle.setTextSize(AndroidUtilities.m50dp(18));
        this.actionModeTitle.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.actionModeTitle.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        frameLayout.addView(this.actionModeTitle, LayoutHelper.createFrame(-1, 18, 19, 0, -11, 0, 0));
        AnimatedTextView animatedTextView2 = new AnimatedTextView(context, true, true, true);
        this.actionModeSubtitle = animatedTextView2;
        animatedTextView2.setAnimationProperties(0.35f, 0L, 350L, cubicBezierInterpolator);
        this.actionModeSubtitle.setTextSize(AndroidUtilities.m50dp(14));
        this.actionModeSubtitle.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        frameLayout.addView(this.actionModeSubtitle, LayoutHelper.createFrame(-1, 18, 19, 0, 10, 0, 0));
        TextView textView = new TextView(context);
        this.actionModeClearButton = textView;
        textView.setTextSize(1, 14.0f);
        this.actionModeClearButton.setPadding(AndroidUtilities.m50dp(14), 0, AndroidUtilities.m50dp(14), 0);
        this.actionModeClearButton.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.actionModeClearButton.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 6.0f));
        this.actionModeClearButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.actionModeClearButton.setGravity(17);
        this.actionModeClearButton.setText(LocaleController.getString("CacheClear", C3301R.string.CacheClear));
        this.actionModeClearButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CacheControlActivity.this.lambda$createView$13(view);
            }
        });
        frameLayout.addView(this.actionModeClearButton, LayoutHelper.createFrame(-2, 28, 21, 0, 0, 14, 0));
        ActionBarMenuSubItem addSubItem = this.actionBar.createMenu().addItem(2, C3301R.C3303drawable.ic_ab_other).addSubItem(3, C3301R.C3303drawable.msg_delete, LocaleController.getString("ClearLocalDatabase", C3301R.string.ClearLocalDatabase));
        this.clearDatabaseItem = addSubItem;
        addSubItem.setIconColor(Theme.getColor("dialogRedIcon"));
        this.clearDatabaseItem.setTextColor(Theme.getColor("dialogTextRed"));
        updateDatabaseItemSize();
        this.listAdapter = new ListAdapter(context);
        NestedSizeNotifierLayout nestedSizeNotifierLayout = new NestedSizeNotifierLayout(context) { // from class: org.telegram.ui.CacheControlActivity.2
            @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                boolean z = !isPinnedToTop();
                if (z || CacheControlActivity.this.actionBarShadowAlpha == BitmapDescriptorFactory.HUE_RED) {
                    if (z && CacheControlActivity.this.actionBarShadowAlpha != 1.0f) {
                        CacheControlActivity.access$516(CacheControlActivity.this, 0.16f);
                        invalidate();
                    }
                } else {
                    CacheControlActivity.access$524(CacheControlActivity.this, 0.16f);
                    invalidate();
                }
                CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                cacheControlActivity.actionBarShadowAlpha = Utilities.clamp(cacheControlActivity.actionBarShadowAlpha, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                if (((BaseFragment) CacheControlActivity.this).parentLayout != null) {
                    ((BaseFragment) CacheControlActivity.this).parentLayout.drawHeaderShadow(canvas, (int) (CacheControlActivity.this.actionBarShownT * 255.0f * CacheControlActivity.this.actionBarShadowAlpha), AndroidUtilities.statusBarHeight + C3366ActionBar.getCurrentActionBarHeight());
                }
            }
        };
        this.nestedSizeNotifierLayout = nestedSizeNotifierLayout;
        this.fragmentView = nestedSizeNotifierLayout;
        nestedSizeNotifierLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.CacheControlActivity.3
            @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (CacheControlActivity.this.sectionsStartRow >= 0 && CacheControlActivity.this.sectionsEndRow >= 0) {
                    drawSectionBackgroundExclusive(canvas, CacheControlActivity.this.sectionsStartRow - 1, CacheControlActivity.this.sectionsEndRow, Theme.getColor("windowBackgroundWhite"));
                }
                super.dispatchDraw(canvas);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(View view) {
                return view != CacheControlActivity.this.cacheChart;
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setVerticalScrollBarEnabled(false);
        this.listView.setClipToPadding(false);
        this.listView.setPadding(0, AndroidUtilities.statusBarHeight + (C3366ActionBar.getCurrentActionBarHeight() / 2), 0, 0);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        nestedSizeNotifierLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.listView.setAdapter(this.listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.CacheControlActivity.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                CacheControlActivity.this.listView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(cubicBezierInterpolator);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda20
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
                CacheControlActivity.this.lambda$createView$15(view, i, f, f2);
            }
        });
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.CacheControlActivity.5
            boolean pinned;

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                cacheControlActivity.updateActionBar(cacheControlActivity.layoutManager.findFirstVisibleItemPosition() > 0 || ((BaseFragment) CacheControlActivity.this).actionBar.isActionModeShowed());
                if (this.pinned != CacheControlActivity.this.nestedSizeNotifierLayout.isPinnedToTop()) {
                    this.pinned = CacheControlActivity.this.nestedSizeNotifierLayout.isPinnedToTop();
                    CacheControlActivity.this.nestedSizeNotifierLayout.invalidate();
                }
            }
        });
        nestedSizeNotifierLayout.addView(this.actionBar, LayoutHelper.createFrame(-1, -2));
        UndoView undoView = new UndoView(context);
        this.cacheRemovedTooltip = undoView;
        nestedSizeNotifierLayout.addView(undoView, LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
        this.nestedSizeNotifierLayout.setTargetListView(this.listView);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view) {
        clearSelectedFiles();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(View view, int i, float f, float f2) {
        if (getParentActivity() != null && i >= 0 && i < this.itemInners.size()) {
            ItemInner itemInner = this.itemInners.get(i);
            if (itemInner.viewType == 11 && (view instanceof CheckBoxCell)) {
                if (itemInner.index < 0) {
                    this.collapsed = !this.collapsed;
                    updateRows();
                    updateChart();
                    return;
                }
                toggleSection(itemInner, view);
                return;
            }
            DialogFileEntities dialogFileEntities = itemInner.entities;
            if (dialogFileEntities != null) {
                showClearCacheDialog(dialogFileEntities);
            } else if (itemInner.keepMediaType >= 0) {
                KeepMediaPopupView keepMediaPopupView = new KeepMediaPopupView(this, view.getContext());
                ActionBarPopupWindow createSimplePopup = AlertsCreator.createSimplePopup(this, keepMediaPopupView, view, f, f2);
                keepMediaPopupView.update(this.itemInners.get(i).keepMediaType);
                keepMediaPopupView.setParentWindow(createSimplePopup);
                keepMediaPopupView.setCallback(new KeepMediaPopupView.Callback() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda21
                    @Override // org.telegram.p048ui.KeepMediaPopupView.Callback
                    public final void onKeepMediaChange(int i2, int i3) {
                        CacheControlActivity.this.lambda$createView$14(i2, i3);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(int i, int i2) {
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelectedFiles() {
        if (this.cacheModel.getSelectedFiles() == 0 || getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getString("ClearCache", C3301R.string.ClearCache));
        builder.setMessage(LocaleController.getString("ClearCacheForChats", C3301R.string.ClearCacheForChats));
        builder.setPositiveButton(LocaleController.getString("Clear", C3301R.string.Clear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CacheControlActivity.this.lambda$clearSelectedFiles$16(dialogInterface, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearSelectedFiles$16(DialogInterface dialogInterface, int i) {
        DialogFileEntities removeSelectedFiles = this.cacheModel.removeSelectedFiles();
        if (removeSelectedFiles.totalSize > 0) {
            cleanupDialogFiles(removeSelectedFiles, null, null);
        }
        this.cacheModel.clearSelection();
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            cachedMediaLayout.update();
            this.cachedMediaLayout.showActionMode(false);
        }
        updateRows();
        updateChart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBar(boolean z) {
        if (z != this.actionBarShown) {
            ValueAnimator valueAnimator = this.actionBarAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = this.actionBarShownT;
            this.actionBarShown = z;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.actionBarAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    CacheControlActivity.this.lambda$updateActionBar$17(valueAnimator2);
                }
            });
            this.actionBarAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.actionBarAnimator.setDuration(380L);
            this.actionBarAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateActionBar$17(ValueAnimator valueAnimator) {
        this.actionBarShownT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.actionBar.setTitleColor(ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhiteBlackText"), (int) (this.actionBarShownT * 255.0f)));
        this.actionBar.setBackgroundColor(ColorUtils.setAlphaComponent(Theme.getColor("windowBackgroundWhite"), (int) (this.actionBarShownT * 255.0f)));
        this.fragmentView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClearCacheDialog(final DialogFileEntities dialogFileEntities) {
        if (this.totalSize <= 0 || getParentActivity() == null) {
            return;
        }
        DilogCacheBottomSheet dilogCacheBottomSheet = new DilogCacheBottomSheet(this, dialogFileEntities, dialogFileEntities.createCacheModel(), new DilogCacheBottomSheet.Delegate() { // from class: org.telegram.ui.CacheControlActivity.6
            @Override // org.telegram.p048ui.DilogCacheBottomSheet.Delegate
            public void onAvatarClick() {
                CacheControlActivity.this.bottomSheet.dismiss();
                Bundle bundle = new Bundle();
                long j = dialogFileEntities.dialogId;
                if (j > 0) {
                    bundle.putLong("user_id", j);
                } else {
                    bundle.putLong("chat_id", -j);
                }
                CacheControlActivity.this.presentFragment(new ProfileActivity(bundle, null));
            }

            @Override // org.telegram.p048ui.DilogCacheBottomSheet.Delegate
            public void cleanupDialogFiles(DialogFileEntities dialogFileEntities2, StorageDiagramView.ClearViewData[] clearViewDataArr, CacheModel cacheModel) {
                CacheControlActivity.this.cleanupDialogFiles(dialogFileEntities2, clearViewDataArr, cacheModel);
            }
        });
        this.bottomSheet = dilogCacheBottomSheet;
        showDialog(dilogCacheBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupDialogFiles(DialogFileEntities dialogFileEntities, StorageDiagramView.ClearViewData[] clearViewDataArr, CacheModel cacheModel) {
        FileEntities fileEntities;
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.showDelayed(500L);
        HashSet hashSet = new HashSet();
        long j = this.totalSize;
        for (int i = 0; i < 7; i++) {
            if ((clearViewDataArr == null || (clearViewDataArr[i] != null && clearViewDataArr[i].clear)) && (fileEntities = dialogFileEntities.entitiesByType.get(i)) != null) {
                hashSet.addAll(fileEntities.files);
                long j2 = dialogFileEntities.totalSize;
                long j3 = fileEntities.totalSize;
                dialogFileEntities.totalSize = j2 - j3;
                this.totalSize -= j3;
                this.totalDeviceFreeSize += j3;
                dialogFileEntities.entitiesByType.delete(i);
                if (i == 0) {
                    this.photoSize -= fileEntities.totalSize;
                } else if (i == 1) {
                    this.videoSize -= fileEntities.totalSize;
                } else if (i == 2) {
                    this.documentsSize -= fileEntities.totalSize;
                } else if (i == 3) {
                    this.musicSize -= fileEntities.totalSize;
                } else if (i == 4) {
                    this.audioSize -= fileEntities.totalSize;
                } else if (i == 5) {
                    this.stickersCacheSize -= fileEntities.totalSize;
                } else {
                    this.cacheSize -= fileEntities.totalSize;
                }
            }
        }
        if (dialogFileEntities.entitiesByType.size() == 0) {
            this.cacheModel.remove(dialogFileEntities);
        }
        updateRows();
        if (cacheModel != null) {
            Iterator<CacheModel.FileInfo> it = cacheModel.selectedFiles.iterator();
            while (it.hasNext()) {
                CacheModel.FileInfo next = it.next();
                if (!hashSet.contains(next)) {
                    long j4 = this.totalSize;
                    long j5 = next.size;
                    this.totalSize = j4 - j5;
                    this.totalDeviceFreeSize += j5;
                    hashSet.add(next);
                    dialogFileEntities.removeFile(next);
                    int i2 = next.type;
                    if (i2 == 0) {
                        this.photoSize -= next.size;
                    } else if (i2 == 1) {
                        this.videoSize -= next.size;
                    } else {
                        long j6 = next.size;
                        if (j6 == 2) {
                            this.documentsSize -= j6;
                        } else if (j6 == 3) {
                            this.musicSize -= j6;
                        } else if (j6 == 4) {
                            this.audioSize -= j6;
                        }
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            this.cacheModel.onFileDeleted((CacheModel.FileInfo) it2.next());
        }
        this.cacheRemovedTooltip.setInfoText(LocaleController.formatString("CacheWasCleared", C3301R.string.CacheWasCleared, AndroidUtilities.formatFileSize(j - this.totalSize)));
        this.cacheRemovedTooltip.showWithAction(0L, 19, null, null);
        final ArrayList arrayList = new ArrayList(hashSet);
        getFileLoader().getFileDatabase().removeFiles(arrayList);
        getFileLoader().cancelLoadAllFiles();
        getFileLoader().getFileLoaderQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$cleanupDialogFiles$19(arrayList, alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupDialogFiles$19(ArrayList arrayList, final AlertDialog alertDialog) {
        for (int i = 0; i < arrayList.size(); i++) {
            ((CacheModel.FileInfo) arrayList.get(i)).file.delete();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                CacheControlActivity.this.lambda$cleanupDialogFiles$18(alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupDialogFiles$18(AlertDialog alertDialog) {
        FileLoader.getInstance(this.currentAccount).checkCurrentDownloadsFiles();
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDatabase() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("LocalDatabaseClearTextTitle", C3301R.string.LocalDatabaseClearTextTitle));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) LocaleController.getString("LocalDatabaseClearText", C3301R.string.LocalDatabaseClearText));
        spannableStringBuilder.append((CharSequence) "\n\n");
        spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString("LocalDatabaseClearText2", C3301R.string.LocalDatabaseClearText2, AndroidUtilities.formatFileSize(this.databaseSize))));
        builder.setMessage(spannableStringBuilder);
        builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("CacheClear", C3301R.string.CacheClear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CacheControlActivity.this.lambda$clearDatabase$20(dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearDatabase$20(DialogInterface dialogInterface, int i) {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        this.progressDialog = alertDialog;
        alertDialog.setCanCancel(false);
        this.progressDialog.showDelayed(500L);
        MessagesController.getInstance(this.currentAccount).clearQueryTime();
        getMessagesStorage().clearLocalDatabase();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.listAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didClearDatabase) {
            try {
                AlertDialog alertDialog = this.progressDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            } catch (Exception e) {
                FileLog.m45e(e);
            }
            this.progressDialog = null;
            if (this.listAdapter != null) {
                this.databaseSize = MessagesStorage.getInstance(this.currentAccount).getDatabaseSize();
                updateDatabaseItemSize();
                updateRows();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.CacheControlActivity$CacheChartHeader */
    /* loaded from: classes5.dex */
    public class CacheChartHeader extends FrameLayout {
        View bottomImage;
        boolean firstSet;
        Paint loadingBackgroundPaint;
        LoadingDrawable loadingDrawable;
        AnimatedFloat loadingFloat;
        Float percent;
        AnimatedFloat percentAnimated;
        Paint percentPaint;
        RectF progressRect;
        private float[] radii;
        private Path roundPath;
        TextView[] subtitle;
        AnimatedTextView title;
        Float usedPercent;
        AnimatedFloat usedPercentAnimated;
        Paint usedPercentPaint;

        public CacheChartHeader(Context context) {
            super(context);
            this.subtitle = new TextView[3];
            this.progressRect = new RectF();
            this.loadingDrawable = new LoadingDrawable();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.percentAnimated = new AnimatedFloat(this, 450L, cubicBezierInterpolator);
            this.usedPercentAnimated = new AnimatedFloat(this, 450L, cubicBezierInterpolator);
            this.loadingFloat = new AnimatedFloat(this, 450L, cubicBezierInterpolator);
            this.loadingBackgroundPaint = new Paint(1);
            this.percentPaint = new Paint(1);
            this.usedPercentPaint = new Paint(1);
            this.firstSet = true;
            AnimatedTextView animatedTextView = new AnimatedTextView(context);
            this.title = animatedTextView;
            animatedTextView.setAnimationProperties(0.35f, 0L, 350L, cubicBezierInterpolator);
            this.title.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.title.setTextSize(AndroidUtilities.m50dp(20));
            this.title.setText(LocaleController.getString("StorageUsage", C3301R.string.StorageUsage));
            this.title.setGravity(17);
            this.title.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            addView(this.title, LayoutHelper.createFrame(-2, 26, 49));
            int i = 0;
            while (i < 3) {
                this.subtitle[i] = new TextView(context);
                this.subtitle[i].setTextSize(1, 13.0f);
                this.subtitle[i].setGravity(17);
                this.subtitle[i].setPadding(AndroidUtilities.m50dp(24), 0, AndroidUtilities.m50dp(24), 0);
                if (i == 0) {
                    this.subtitle[i].setText(LocaleController.getString("StorageUsageCalculating", C3301R.string.StorageUsageCalculating));
                } else if (i == 1) {
                    this.subtitle[i].setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.subtitle[i].setText(LocaleController.getString("StorageUsageTelegram", C3301R.string.StorageUsageTelegram));
                    this.subtitle[i].setVisibility(4);
                } else if (i == 2) {
                    this.subtitle[i].setText(LocaleController.getString("StorageCleared2", C3301R.string.StorageCleared2));
                    this.subtitle[i].setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.subtitle[i].setVisibility(4);
                }
                this.subtitle[i].setTextColor(Theme.getColor("windowBackgroundWhiteGrayText4"));
                addView(this.subtitle[i], LayoutHelper.createFrame(-2, -2, 17, 0, i == 2 ? 12 : -6, 0, 0));
                i++;
            }
            this.bottomImage = new View(this, context, CacheControlActivity.this) { // from class: org.telegram.ui.CacheControlActivity.CacheChartHeader.1
                @Override // android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2) + getPaddingLeft() + getPaddingRight(), 1073741824), i3);
                }
            };
            Drawable mutate = getContext().getResources().getDrawable(C3301R.C3303drawable.popup_fixed_alert2).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhite"), PorterDuff.Mode.MULTIPLY));
            this.bottomImage.setBackground(mutate);
            FrameLayout.LayoutParams createFrame = LayoutHelper.createFrame(-1, 24, 87);
            ((ViewGroup.MarginLayoutParams) createFrame).leftMargin = -this.bottomImage.getPaddingLeft();
            ((ViewGroup.MarginLayoutParams) createFrame).bottomMargin = -AndroidUtilities.m50dp(11);
            ((ViewGroup.MarginLayoutParams) createFrame).rightMargin = -this.bottomImage.getPaddingRight();
            addView(this.bottomImage, createFrame);
            this.loadingDrawable.setColors(Theme.getColor("actionBarActionModeDefaultSelector"), Theme.multAlpha(Theme.getColor("windowBackgroundWhiteGrayText4"), 0.2f));
            this.loadingDrawable.setRadiiDp(4.0f);
            this.loadingDrawable.setCallback(this);
        }

        public void setData(boolean z, float f, float f2) {
            String string;
            AnimatedTextView animatedTextView = this.title;
            if (z) {
                string = LocaleController.getString("StorageUsage", C3301R.string.StorageUsage);
            } else {
                string = LocaleController.getString("StorageCleared", C3301R.string.StorageCleared);
            }
            animatedTextView.setText(string);
            if (z) {
                if (f < 0.01f) {
                    this.subtitle[1].setText(LocaleController.formatString("StorageUsageTelegramLess", C3301R.string.StorageUsageTelegramLess, CacheControlActivity.this.formatPercent(f)));
                } else {
                    this.subtitle[1].setText(LocaleController.formatString("StorageUsageTelegram", C3301R.string.StorageUsageTelegram, CacheControlActivity.this.formatPercent(f)));
                }
                switchSubtitle(1);
            } else {
                switchSubtitle(2);
            }
            this.bottomImage.animate().cancel();
            if (this.firstSet) {
                this.bottomImage.setAlpha(z ? 1.0f : 0.0f);
            } else {
                this.bottomImage.animate().alpha(z ? 1.0f : 0.0f).setDuration(365L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
            this.firstSet = false;
            this.percent = Float.valueOf(f);
            this.usedPercent = Float.valueOf(f2);
            invalidate();
        }

        private void switchSubtitle(int i) {
            boolean z = System.currentTimeMillis() - CacheControlActivity.this.fragmentCreateTime > 40;
            updateViewVisible(this.subtitle[0], i == 0, z);
            updateViewVisible(this.subtitle[1], i == 1, z);
            updateViewVisible(this.subtitle[2], i == 2, z);
        }

        private void updateViewVisible(View view, boolean z, boolean z2) {
            if (view == null) {
                return;
            }
            if (view.getParent() == null) {
                z2 = false;
            }
            view.animate().setListener(null).cancel();
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!z2) {
                view.setVisibility(z ? 0 : 4);
                view.setTag(z ? 1 : null);
                view.setAlpha(z ? 1.0f : 0.0f);
                if (!z) {
                    f = AndroidUtilities.m50dp(8);
                }
                view.setTranslationY(f);
                invalidate();
            } else if (z) {
                if (view.getVisibility() != 0) {
                    view.setVisibility(0);
                    view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    view.setTranslationY(AndroidUtilities.m50dp(8));
                }
                view.animate().alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CacheControlActivity$CacheChartHeader$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        CacheControlActivity.CacheChartHeader.this.lambda$updateViewVisible$0(valueAnimator);
                    }
                }).start();
            } else {
                view.animate().alpha(BitmapDescriptorFactory.HUE_RED).translationY(AndroidUtilities.m50dp(8)).setListener(new HideViewAfterAnimation(view)).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(340L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.CacheControlActivity$CacheChartHeader$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        CacheControlActivity.CacheChartHeader.this.lambda$updateViewVisible$1(valueAnimator);
                    }
                }).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateViewVisible$0(ValueAnimator valueAnimator) {
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateViewVisible$1(ValueAnimator valueAnimator) {
            invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int size = View.MeasureSpec.getSize(i);
            int min = (int) Math.min(AndroidUtilities.m50dp(174), size * 0.8d);
            super.measureChildren(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
            int m50dp = AndroidUtilities.m50dp(72);
            int i4 = 0;
            int i5 = 0;
            while (true) {
                TextView[] textViewArr = this.subtitle;
                if (i4 >= textViewArr.length) {
                    setMeasuredDimension(size, m50dp + i5);
                    this.progressRect.set((size - min) / 2.0f, i3 - AndroidUtilities.m50dp(30), (size + min) / 2.0f, i3 - AndroidUtilities.m50dp(26));
                    return;
                }
                i5 = Math.max(i5, textViewArr[i4].getMeasuredHeight() - (i4 == 2 ? AndroidUtilities.m50dp(16) : 0));
                i4++;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            Paint paint;
            int i;
            Paint paint2;
            Paint paint3;
            float alpha = 1.0f - this.subtitle[2].getAlpha();
            float f = this.loadingFloat.set(this.percent == null ? 1.0f : 0.0f);
            AnimatedFloat animatedFloat = this.percentAnimated;
            Float f2 = this.percent;
            float f3 = animatedFloat.set(f2 == null ? 0.0f : f2.floatValue());
            AnimatedFloat animatedFloat2 = this.usedPercentAnimated;
            Float f4 = this.usedPercent;
            float f5 = animatedFloat2.set(f4 == null ? 0.0f : f4.floatValue());
            this.loadingBackgroundPaint.setColor(Theme.getColor("actionBarActionModeDefaultSelector"));
            this.loadingBackgroundPaint.setAlpha((int) (paint.getAlpha() * alpha));
            RectF rectF = AndroidUtilities.rectTmp;
            float f6 = 1.0f - f;
            float max = Math.max(this.progressRect.left + (Math.max(AndroidUtilities.m50dp(4), this.progressRect.width() * f5) * f6), this.progressRect.left + (Math.max(AndroidUtilities.m50dp(4), this.progressRect.width() * f3) * f6)) + AndroidUtilities.m50dp(1);
            RectF rectF2 = this.progressRect;
            rectF.set(max, rectF2.top, rectF2.right, rectF2.bottom);
            if (rectF.left >= rectF.right || rectF.width() <= AndroidUtilities.m50dp(3)) {
                i = 1;
            } else {
                i = 1;
                drawRoundRect(canvas, rectF, AndroidUtilities.m50dp(AndroidUtilities.lerp(1, 2, f)), AndroidUtilities.m50dp(2), this.loadingBackgroundPaint);
            }
            this.loadingDrawable.setBounds(this.progressRect);
            this.loadingDrawable.setAlpha((int) (255.0f * alpha * f));
            this.loadingDrawable.draw(canvas);
            this.usedPercentPaint.setColor(Theme.percentSV(Theme.getColor("radioBackgroundChecked"), Theme.getColor("actionBarActionModeDefaultSelector"), 0.922f, 1.8f));
            this.usedPercentPaint.setAlpha((int) (paint2.getAlpha() * alpha));
            float max2 = this.progressRect.left + (Math.max(AndroidUtilities.m50dp(4), this.progressRect.width() * f3) * f6) + AndroidUtilities.m50dp(i);
            RectF rectF3 = this.progressRect;
            rectF.set(max2, rectF3.top, rectF3.left + (Math.max(AndroidUtilities.m50dp(4), this.progressRect.width() * f5) * f6), this.progressRect.bottom);
            if (rectF.width() > AndroidUtilities.m50dp(3)) {
                drawRoundRect(canvas, rectF, AndroidUtilities.m50dp(i), AndroidUtilities.m50dp(f5 > 0.97f ? 2 : i), this.usedPercentPaint);
            }
            this.percentPaint.setColor(Theme.getColor("radioBackgroundChecked"));
            this.percentPaint.setAlpha((int) (paint3.getAlpha() * alpha));
            RectF rectF4 = this.progressRect;
            float f7 = rectF4.left;
            rectF.set(f7, rectF4.top, (f6 * Math.max(AndroidUtilities.m50dp(4), this.progressRect.width() * f3)) + f7, this.progressRect.bottom);
            drawRoundRect(canvas, rectF, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(f3 <= 0.97f ? i : 2), this.percentPaint);
            if (f > BitmapDescriptorFactory.HUE_RED || this.percentAnimated.isInProgress()) {
                invalidate();
            }
            super.dispatchDraw(canvas);
        }

        private void drawRoundRect(Canvas canvas, RectF rectF, float f, float f2, Paint paint) {
            Path path = this.roundPath;
            if (path == null) {
                this.roundPath = new Path();
            } else {
                path.rewind();
            }
            if (this.radii == null) {
                this.radii = new float[8];
            }
            float[] fArr = this.radii;
            fArr[7] = f;
            fArr[6] = f;
            fArr[1] = f;
            fArr[0] = f;
            fArr[5] = f2;
            fArr[4] = f2;
            fArr[3] = f2;
            fArr[2] = f2;
            this.roundPath.addRoundRect(rectF, fArr, Path.Direction.CW);
            canvas.drawPath(this.roundPath, paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal */
    /* loaded from: classes5.dex */
    public class ClearCacheButtonInternal extends ClearCacheButton {
        public ClearCacheButtonInternal(Context context) {
            super(context);
            ((ViewGroup.MarginLayoutParams) this.button.getLayoutParams()).topMargin = AndroidUtilities.m50dp(5);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$ClearCacheButtonInternal$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CacheControlActivity.ClearCacheButtonInternal.this.lambda$new$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            CacheControlActivity.this.cleanupFolders();
        }

        public void updateSize() {
            setSize(CacheControlActivity.this.isAllSectionsSelected(), (CacheControlActivity.this.selected[0] ? CacheControlActivity.this.photoSize : 0L) + (CacheControlActivity.this.selected[1] ? CacheControlActivity.this.videoSize : 0L) + (CacheControlActivity.this.selected[2] ? CacheControlActivity.this.documentsSize : 0L) + (CacheControlActivity.this.selected[3] ? CacheControlActivity.this.musicSize : 0L) + (CacheControlActivity.this.selected[4] ? CacheControlActivity.this.audioSize : 0L) + (CacheControlActivity.this.selected[5] ? CacheControlActivity.this.stickersCacheSize : 0L) + (CacheControlActivity.this.selected[6] ? CacheControlActivity.this.cacheSize : 0L) + (CacheControlActivity.this.selected[7] ? CacheControlActivity.this.cacheTempSize : 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAllSectionsSelected() {
        for (int i = 0; i < this.itemInners.size(); i++) {
            ItemInner itemInner = this.itemInners.get(i);
            if (itemInner.viewType == 11) {
                int i2 = itemInner.index;
                if (i2 < 0) {
                    i2 = this.selected.length - 1;
                }
                if (!this.selected[i2]) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: org.telegram.ui.CacheControlActivity$ClearCacheButton */
    /* loaded from: classes5.dex */
    public static class ClearCacheButton extends FrameLayout {
        FrameLayout button;
        TextView rtlTextView;
        AnimatedTextView.AnimatedTextDrawable textView;
        AnimatedTextView.AnimatedTextDrawable valueTextView;

        public ClearCacheButton(Context context) {
            super(context);
            FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.CacheControlActivity.ClearCacheButton.1
                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    int measuredWidth = (((getMeasuredWidth() - AndroidUtilities.m50dp(8)) - ((int) ClearCacheButton.this.valueTextView.getCurrentWidth())) + ((int) ClearCacheButton.this.textView.getCurrentWidth())) / 2;
                    if (LocaleController.isRTL) {
                        super.dispatchDraw(canvas);
                        return;
                    }
                    ClearCacheButton.this.textView.setBounds(0, 0, measuredWidth, getHeight());
                    ClearCacheButton.this.textView.draw(canvas);
                    ClearCacheButton.this.valueTextView.setBounds(measuredWidth + AndroidUtilities.m50dp(8), 0, getWidth(), getHeight());
                    ClearCacheButton.this.valueTextView.draw(canvas);
                }

                @Override // android.view.View
                protected boolean verifyDrawable(Drawable drawable) {
                    ClearCacheButton clearCacheButton = ClearCacheButton.this;
                    return drawable == clearCacheButton.valueTextView || drawable == clearCacheButton.textView || super.verifyDrawable(drawable);
                }

                @Override // android.view.View
                public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setClassName("android.widget.Button");
                }
            };
            this.button = frameLayout;
            frameLayout.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 8.0f));
            this.button.setFocusable(true);
            this.button.setFocusableInTouchMode(true);
            this.button.setImportantForAccessibility(1);
            if (LocaleController.isRTL) {
                TextView textView = new TextView(context);
                this.rtlTextView = textView;
                textView.setText(LocaleController.getString("ClearCache", C3301R.string.ClearCache));
                this.rtlTextView.setGravity(17);
                this.rtlTextView.setTextSize(1, 14.0f);
                this.rtlTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.rtlTextView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
                this.button.addView(this.rtlTextView, LayoutHelper.createFrame(-2, -1, 17));
            }
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.textView = animatedTextDrawable;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            animatedTextDrawable.setAnimationProperties(0.25f, 0L, 300L, cubicBezierInterpolator);
            this.textView.setCallback(this.button);
            this.textView.setTextSize(AndroidUtilities.m50dp(14));
            this.textView.setText(LocaleController.getString("ClearCache", C3301R.string.ClearCache));
            this.textView.setGravity(5);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setTextColor(Theme.getColor("featuredStickers_buttonText"));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.valueTextView = animatedTextDrawable2;
            animatedTextDrawable2.setAnimationProperties(0.25f, 0L, 300L, cubicBezierInterpolator);
            this.valueTextView.setCallback(this.button);
            this.valueTextView.setTextSize(AndroidUtilities.m50dp(14));
            this.valueTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.valueTextView.setTextColor(Theme.adaptHSV(Theme.getColor("featuredStickers_addButton"), -0.46f, 0.08f));
            this.valueTextView.setText("");
            setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            addView(this.button, LayoutHelper.createFrame(-1, 48, 119, 16, 16, 16, 16));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }

        public void setSize(boolean z, long j) {
            String string;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.textView;
            if (z) {
                string = LocaleController.getString("ClearCache", C3301R.string.ClearCache);
            } else {
                string = LocaleController.getString("ClearSelectedCache", C3301R.string.ClearSelectedCache);
            }
            animatedTextDrawable.setText(string);
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            this.valueTextView.setText(i <= 0 ? "" : AndroidUtilities.formatFileSize(j));
            setDisabled(i <= 0);
            this.button.invalidate();
            this.button.setContentDescription(TextUtils.concat(this.textView.getText(), "\t", this.valueTextView.getText()));
        }

        public void setDisabled(boolean z) {
            this.button.animate().cancel();
            this.button.animate().alpha(z ? 0.65f : 1.0f).start();
            this.button.setClickable(!z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isOtherSelected() {
        int i;
        int length = this.selected.length;
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < this.itemInners.size(); i2++) {
            ItemInner itemInner = this.itemInners.get(i2);
            if (itemInner.viewType == 11 && !itemInner.pad && (i = itemInner.index) >= 0) {
                zArr[i] = true;
            }
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (!zArr[i3] && !this.selected[i3]) {
                return false;
            }
        }
        return true;
    }

    private void toggleSection(ItemInner itemInner, View view) {
        boolean[] zArr;
        int i;
        int childAdapterPosition;
        int i2 = itemInner.index;
        if (i2 < 0) {
            toggleOtherSelected(view);
        } else if (this.selected[i2] && sectionsSelected() <= 1) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            if (view != null) {
                AndroidUtilities.shakeViewSpring(view, -3.0f);
            }
        } else {
            int i3 = 0;
            if (view instanceof CheckBoxCell) {
                boolean[] zArr2 = this.selected;
                int i4 = itemInner.index;
                boolean z = !zArr2[i4];
                zArr2[i4] = z;
                ((CheckBoxCell) view).setChecked(z, true);
            } else {
                this.selected[itemInner.index] = !zArr[i];
                int indexOf = this.itemInners.indexOf(itemInner);
                if (indexOf >= 0) {
                    for (int i5 = 0; i5 < this.listView.getChildCount(); i5++) {
                        View childAt = this.listView.getChildAt(i5);
                        if ((childAt instanceof CheckBoxCell) && indexOf == this.listView.getChildAdapterPosition(childAt)) {
                            ((CheckBoxCell) childAt).setChecked(this.selected[itemInner.index], true);
                        }
                    }
                }
            }
            if (itemInner.pad) {
                while (true) {
                    if (i3 >= this.listView.getChildCount()) {
                        break;
                    }
                    View childAt2 = this.listView.getChildAt(i3);
                    if ((childAt2 instanceof CheckBoxCell) && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt2)) >= 0 && childAdapterPosition < this.itemInners.size() && this.itemInners.get(childAdapterPosition).index < 0) {
                        ((CheckBoxCell) childAt2).setChecked(isOtherSelected(), true);
                        break;
                    }
                    i3++;
                }
            }
            updateChart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleOtherSelected(View view) {
        int i;
        int childAdapterPosition;
        int i2;
        boolean z;
        int i3;
        boolean isOtherSelected = isOtherSelected();
        if (isOtherSelected) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.itemInners.size()) {
                    z = false;
                    break;
                }
                ItemInner itemInner = this.itemInners.get(i4);
                if (itemInner.viewType == 11 && !itemInner.pad && (i3 = itemInner.index) >= 0 && this.selected[i3]) {
                    z = true;
                    break;
                }
                i4++;
            }
            if (!z) {
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                if (view != null) {
                    AndroidUtilities.shakeViewSpring(view, -3.0f);
                    return;
                }
                return;
            }
        }
        if (this.collapsed) {
            int length = this.selected.length;
            boolean[] zArr = new boolean[length];
            for (int i5 = 0; i5 < this.itemInners.size(); i5++) {
                ItemInner itemInner2 = this.itemInners.get(i5);
                if (itemInner2.viewType == 11 && !itemInner2.pad && (i2 = itemInner2.index) >= 0) {
                    zArr[i2] = true;
                }
            }
            for (int i6 = 0; i6 < length; i6++) {
                if (!zArr[i6]) {
                    this.selected[i6] = !isOtherSelected;
                }
            }
        } else {
            for (int i7 = 0; i7 < this.itemInners.size(); i7++) {
                ItemInner itemInner3 = this.itemInners.get(i7);
                if (itemInner3.viewType == 11 && itemInner3.pad && (i = itemInner3.index) >= 0) {
                    this.selected[i] = !isOtherSelected;
                }
            }
        }
        for (int i8 = 0; i8 < this.listView.getChildCount(); i8++) {
            View childAt = this.listView.getChildAt(i8);
            if ((childAt instanceof CheckBoxCell) && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt)) >= 0) {
                ItemInner itemInner4 = this.itemInners.get(childAdapterPosition);
                if (itemInner4.viewType == 11) {
                    int i9 = itemInner4.index;
                    if (i9 < 0) {
                        ((CheckBoxCell) childAt).setChecked(!isOtherSelected, true);
                    } else {
                        ((CheckBoxCell) childAt).setChecked(this.selected[i9], true);
                    }
                }
            }
        }
        updateChart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.CacheControlActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends AdapterWithDiffUtils {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return ((long) viewHolder.getAdapterPosition()) == CacheControlActivity.this.migrateOldFolderRow || (viewHolder.getItemViewType() == 2 && CacheControlActivity.this.totalSize > 0 && !CacheControlActivity.this.calculating) || viewHolder.getItemViewType() == 5 || viewHolder.getItemViewType() == 7 || viewHolder.getItemViewType() == 11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CacheControlActivity.this.itemInners.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreateViewHolder$0(int i) {
            if (i == 0) {
                SharedConfig.setKeepMedia(3);
            } else if (i == 1) {
                SharedConfig.setKeepMedia(0);
            } else if (i == 2) {
                SharedConfig.setKeepMedia(1);
            } else if (i == 3) {
                SharedConfig.setKeepMedia(2);
            }
        }

        /* renamed from: org.telegram.ui.CacheControlActivity$ListAdapter$1 */
        /* loaded from: classes5.dex */
        class C35721 extends CacheChart {
            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ int lambda$onSectionDown$0(int i) {
                return i;
            }

            @Override // org.telegram.p048ui.Components.CacheChart
            protected void onSectionClick(int i) {
            }

            C35721(Context context) {
                super(context);
            }

            @Override // org.telegram.p048ui.Components.CacheChart
            protected void onSectionDown(int i, boolean z) {
                if (!z) {
                    CacheControlActivity.this.listView.removeHighlightRow();
                    return;
                }
                final int i2 = -1;
                if (i == 8) {
                    i = -1;
                }
                int i3 = 0;
                while (true) {
                    if (i3 < CacheControlActivity.this.itemInners.size()) {
                        ItemInner itemInner = (ItemInner) CacheControlActivity.this.itemInners.get(i3);
                        if (itemInner != null && itemInner.viewType == 11 && itemInner.index == i) {
                            i2 = i3;
                            break;
                        }
                        i3++;
                    } else {
                        break;
                    }
                }
                if (i2 >= 0) {
                    CacheControlActivity.this.listView.highlightRow(new RecyclerListView.IntReturnCallback() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$1$$ExternalSyntheticLambda0
                        @Override // org.telegram.p048ui.Components.RecyclerListView.IntReturnCallback
                        public final int run() {
                            int lambda$onSectionDown$0;
                            lambda$onSectionDown$0 = CacheControlActivity.ListAdapter.C35721.lambda$onSectionDown$0(i2);
                            return lambda$onSectionDown$0;
                        }
                    }, 0);
                } else {
                    CacheControlActivity.this.listView.removeHighlightRow();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FrameLayout frameLayout;
            View view;
            if (i == 0) {
                FrameLayout textSettingsCell = new TextSettingsCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                frameLayout = textSettingsCell;
            } else {
                switch (i) {
                    case 2:
                        FrameLayout storageUsageView = new StorageUsageView(this.mContext);
                        storageUsageView.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = storageUsageView;
                        break;
                    case 3:
                        FrameLayout headerCell = new HeaderCell(this.mContext);
                        headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = headerCell;
                        break;
                    case 4:
                        SlideChooseView slideChooseView = new SlideChooseView(this.mContext);
                        slideChooseView.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        slideChooseView.setCallback(CacheControlActivity$ListAdapter$$ExternalSyntheticLambda3.INSTANCE);
                        int i2 = SharedConfig.keepMedia;
                        slideChooseView.setOptions(i2 == 3 ? 0 : i2 + 1, LocaleController.formatPluralString("Days", 3, new Object[0]), LocaleController.formatPluralString("Weeks", 1, new Object[0]), LocaleController.formatPluralString("Months", 1, new Object[0]), LocaleController.getString("KeepMediaForever", C3301R.string.KeepMediaForever));
                        frameLayout = slideChooseView;
                        break;
                    case 5:
                        FrameLayout userCell = new UserCell(CacheControlActivity.this.getContext(), CacheControlActivity.this.getResourceProvider());
                        userCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = userCell;
                        break;
                    case 6:
                        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(CacheControlActivity.this.getContext());
                        flickerLoadingView.setIsSingleCell(true);
                        flickerLoadingView.setItemsCount(3);
                        flickerLoadingView.setIgnoreHeightCheck(true);
                        flickerLoadingView.setViewType(25);
                        flickerLoadingView.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = flickerLoadingView;
                        break;
                    case 7:
                        FrameLayout textCell = new TextCell(this.mContext);
                        textCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = textCell;
                        break;
                    case 8:
                        FrameLayout frameLayout2 = CacheControlActivity.this.cachedMediaLayout = new CachedMediaLayout(this.mContext, CacheControlActivity.this) { // from class: org.telegram.ui.CacheControlActivity.ListAdapter.2
                            @Override // org.telegram.p048ui.CachedMediaLayout, android.widget.FrameLayout, android.view.View
                            protected void onMeasure(int i3, int i4) {
                                super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4) - (C3366ActionBar.getCurrentActionBarHeight() / 2), 1073741824));
                            }

                            @Override // org.telegram.p048ui.CachedMediaLayout
                            protected void showActionMode(boolean z) {
                                if (z) {
                                    CacheControlActivity.this.updateActionBar(true);
                                    ((BaseFragment) CacheControlActivity.this).actionBar.showActionMode();
                                    return;
                                }
                                ((BaseFragment) CacheControlActivity.this).actionBar.hideActionMode();
                            }
                        };
                        CacheControlActivity.this.cachedMediaLayout.setDelegate(new CachedMediaLayout.Delegate() { // from class: org.telegram.ui.CacheControlActivity.ListAdapter.3
                            @Override // org.telegram.p048ui.CachedMediaLayout.Delegate
                            public /* synthetic */ void dismiss() {
                                CachedMediaLayout.Delegate.CC.$default$dismiss(this);
                            }

                            @Override // org.telegram.p048ui.CachedMediaLayout.Delegate
                            public void onItemSelected(DialogFileEntities dialogFileEntities, CacheModel.FileInfo fileInfo, boolean z) {
                                if (dialogFileEntities == null) {
                                    if (fileInfo != null) {
                                        CacheControlActivity.this.cacheModel.toggleSelect(fileInfo);
                                        CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                                        CacheControlActivity.this.updateActionMode();
                                    }
                                } else if (CacheControlActivity.this.cacheModel.getSelectedFiles() <= 0 && !z) {
                                    CacheControlActivity.this.showClearCacheDialog(dialogFileEntities);
                                } else {
                                    CacheControlActivity.this.cacheModel.toggleSelect(dialogFileEntities);
                                    CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                                    CacheControlActivity.this.updateActionMode();
                                }
                            }

                            @Override // org.telegram.p048ui.CachedMediaLayout.Delegate
                            public void clear() {
                                CacheControlActivity.this.clearSelectedFiles();
                            }

                            @Override // org.telegram.p048ui.CachedMediaLayout.Delegate
                            public void clearSelection() {
                                CacheModel cacheModel = CacheControlActivity.this.cacheModel;
                                if (cacheModel == null || cacheModel.getSelectedFiles() <= 0) {
                                    return;
                                }
                                CacheControlActivity.this.cacheModel.clearSelection();
                                if (CacheControlActivity.this.cachedMediaLayout != null) {
                                    CacheControlActivity.this.cachedMediaLayout.showActionMode(false);
                                    CacheControlActivity.this.cachedMediaLayout.updateVisibleRows();
                                }
                            }
                        });
                        CacheControlActivity.this.cachedMediaLayout.setCacheModel(CacheControlActivity.this.cacheModel);
                        CacheControlActivity.this.nestedSizeNotifierLayout.setChildLayout(CacheControlActivity.this.cachedMediaLayout);
                        frameLayout2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout2.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                        frameLayout = frameLayout2;
                        break;
                    case 9:
                        view = CacheControlActivity.this.cacheChart = new C35721(this.mContext);
                        break;
                    case 10:
                        view = CacheControlActivity.this.cacheChartHeader = new CacheChartHeader(this.mContext);
                        break;
                    case 11:
                        FrameLayout checkBoxCell = new CheckBoxCell(this.mContext, 4, 21, CacheControlActivity.this.getResourceProvider());
                        checkBoxCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = checkBoxCell;
                        break;
                    case 12:
                        FlickerLoadingView flickerLoadingView2 = new FlickerLoadingView(CacheControlActivity.this.getContext());
                        flickerLoadingView2.setIsSingleCell(true);
                        flickerLoadingView2.setItemsCount(1);
                        flickerLoadingView2.setIgnoreHeightCheck(true);
                        flickerLoadingView2.setViewType(26);
                        flickerLoadingView2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        frameLayout = flickerLoadingView2;
                        break;
                    case 13:
                        view = CacheControlActivity.this.clearCacheButton = new ClearCacheButtonInternal(this.mContext);
                        break;
                    case 14:
                        SlideChooseView slideChooseView2 = new SlideChooseView(this.mContext);
                        slideChooseView2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                        float f = ((int) ((CacheControlActivity.this.totalDeviceSize / 1024) / 1024)) / 1000.0f;
                        final ArrayList arrayList = new ArrayList();
                        if (f <= 17.0f) {
                            arrayList.add(2);
                        }
                        if (f > 5.0f) {
                            arrayList.add(5);
                        }
                        if (f > 16.0f) {
                            arrayList.add(16);
                        }
                        if (f > 32.0f) {
                            arrayList.add(32);
                        }
                        arrayList.add(Integer.MAX_VALUE);
                        String[] strArr = new String[arrayList.size()];
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            if (((Integer) arrayList.get(i3)).intValue() == 1) {
                                strArr[i3] = String.format("300 MB", new Object[0]);
                            } else if (((Integer) arrayList.get(i3)).intValue() == Integer.MAX_VALUE) {
                                strArr[i3] = LocaleController.getString("NoLimit", C3301R.string.NoLimit);
                            } else {
                                strArr[i3] = String.format("%d GB", arrayList.get(i3));
                            }
                        }
                        slideChooseView2.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda2
                            @Override // org.telegram.p048ui.Components.SlideChooseView.Callback
                            public final void onOptionSelected(int i4) {
                                CacheControlActivity.ListAdapter.lambda$onCreateViewHolder$1(arrayList, i4);
                            }

                            @Override // org.telegram.p048ui.Components.SlideChooseView.Callback
                            public /* synthetic */ void onTouchEnd() {
                                SlideChooseView.Callback.CC.$default$onTouchEnd(this);
                            }
                        });
                        int indexOf = arrayList.indexOf(Integer.valueOf(SharedConfig.getPreferences().getInt("cache_limit", Integer.MAX_VALUE)));
                        if (indexOf < 0) {
                            indexOf = arrayList.size() - 1;
                        }
                        slideChooseView2.setOptions(indexOf, strArr);
                        frameLayout = slideChooseView2;
                        break;
                    default:
                        view = new TextInfoPrivacyCell(this.mContext);
                        break;
                }
                return new RecyclerListView.Holder(view);
            }
            view = frameLayout;
            return new RecyclerListView.Holder(view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onCreateViewHolder$1(ArrayList arrayList, int i) {
            SharedConfig.getPreferences().edit().putInt("cache_limit", ((Integer) arrayList.get(i)).intValue()).apply();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ItemInner itemInner = (ItemInner) CacheControlActivity.this.itemInners.get(i);
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (i == CacheControlActivity.this.migrateOldFolderRow) {
                    textSettingsCell.setTextAndValue(LocaleController.getString("MigrateOldFolder", C3301R.string.MigrateOldFolder), null, false);
                }
            } else if (itemViewType == 1) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                textInfoPrivacyCell.setText(AndroidUtilities.replaceTags(itemInner.text));
                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3301R.C3303drawable.greydivider, "windowBackgroundGrayShadow"));
            } else if (itemViewType == 2) {
                ((StorageUsageView) viewHolder.itemView).setStorageUsage(CacheControlActivity.this.calculating, CacheControlActivity.this.databaseSize, CacheControlActivity.this.totalSize, CacheControlActivity.this.totalDeviceFreeSize, CacheControlActivity.this.totalDeviceSize);
            } else if (itemViewType == 3) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                headerCell.setText(((ItemInner) CacheControlActivity.this.itemInners.get(i)).headerName);
                headerCell.setTopMargin(((ItemInner) CacheControlActivity.this.itemInners.get(i)).headerTopMargin);
                headerCell.setBottomMargin(((ItemInner) CacheControlActivity.this.itemInners.get(i)).headerBottomMargin);
            } else if (itemViewType == 7) {
                TextCell textCell = (TextCell) viewHolder.itemView;
                CacheByChatsController cacheByChatsController = CacheControlActivity.this.getMessagesController().getCacheByChatsController();
                int i2 = itemInner.keepMediaType;
                int size = cacheByChatsController.getKeepMediaExceptions(((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType).size();
                String formatPluralString = size > 0 ? LocaleController.formatPluralString("ExceptionShort", size, Integer.valueOf(size)) : null;
                String keepMediaString = CacheByChatsController.getKeepMediaString(cacheByChatsController.getKeepMedia(i2));
                if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType != 0) {
                    if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType != 1) {
                        if (((ItemInner) CacheControlActivity.this.itemInners.get(i)).keepMediaType == 2) {
                            textCell.setTextAndValueAndColorfulIcon(LocaleController.getString("CacheChannels", C3301R.string.CacheChannels), keepMediaString, true, C3301R.C3303drawable.msg_filled_menu_channels, CacheControlActivity.this.getThemedColor("statisticChartLine_golden"), true);
                        }
                    } else {
                        textCell.setTextAndValueAndColorfulIcon(LocaleController.getString("GroupChats", C3301R.string.GroupChats), keepMediaString, true, C3301R.C3303drawable.msg_filled_menu_groups, CacheControlActivity.this.getThemedColor("statisticChartLine_green"), true);
                    }
                } else {
                    textCell.setTextAndValueAndColorfulIcon(LocaleController.getString("PrivateChats", C3301R.string.PrivateChats), keepMediaString, true, C3301R.C3303drawable.msg_filled_menu_users, CacheControlActivity.this.getThemedColor("statisticChartLine_lightblue"), true);
                }
                textCell.setSubtitle(formatPluralString);
            } else if (itemViewType == 10) {
                if (CacheControlActivity.this.cacheChartHeader == null || CacheControlActivity.this.calculating) {
                    return;
                }
                CacheChartHeader cacheChartHeader = CacheControlActivity.this.cacheChartHeader;
                r3 = CacheControlActivity.this.totalSize > 0;
                int i3 = (CacheControlActivity.this.totalDeviceSize > 0L ? 1 : (CacheControlActivity.this.totalDeviceSize == 0L ? 0 : -1));
                float f = BitmapDescriptorFactory.HUE_RED;
                float f2 = i3 <= 0 ? 0.0f : ((float) CacheControlActivity.this.totalSize) / ((float) CacheControlActivity.this.totalDeviceSize);
                if (CacheControlActivity.this.totalDeviceFreeSize > 0 && CacheControlActivity.this.totalDeviceSize > 0) {
                    f = ((float) (CacheControlActivity.this.totalDeviceSize - CacheControlActivity.this.totalDeviceFreeSize)) / ((float) CacheControlActivity.this.totalDeviceSize);
                }
                cacheChartHeader.setData(r3, f2, f);
            } else if (itemViewType != 11) {
            } else {
                final CheckBoxCell checkBoxCell = (CheckBoxCell) viewHolder.itemView;
                boolean isOtherSelected = itemInner.index < 0 ? CacheControlActivity.this.isOtherSelected() : CacheControlActivity.this.selected[itemInner.index];
                CacheControlActivity cacheControlActivity = CacheControlActivity.this;
                CharSequence charSequence = itemInner.headerName;
                int[] iArr = cacheControlActivity.percents;
                int i4 = itemInner.index;
                CharSequence checkBoxTitle = cacheControlActivity.getCheckBoxTitle(charSequence, iArr[i4 < 0 ? 8 : i4], i4 < 0);
                String formatFileSize = AndroidUtilities.formatFileSize(itemInner.size);
                if (itemInner.index >= 0 ? !itemInner.last : !CacheControlActivity.this.collapsed) {
                    r3 = true;
                }
                checkBoxCell.setText(checkBoxTitle, formatFileSize, isOtherSelected, r3);
                checkBoxCell.setCheckBoxColor(itemInner.colorKey, "windowBackgroundWhiteGrayIcon", "checkboxCheck");
                checkBoxCell.setCollapsed(itemInner.index < 0 ? Boolean.valueOf(CacheControlActivity.this.collapsed) : null);
                if (itemInner.index == -1) {
                    checkBoxCell.setOnSectionsClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            CacheControlActivity.ListAdapter.this.lambda$onBindViewHolder$2(view);
                        }
                    }, new View.OnClickListener() { // from class: org.telegram.ui.CacheControlActivity$ListAdapter$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            CacheControlActivity.ListAdapter.this.lambda$onBindViewHolder$3(checkBoxCell, view);
                        }
                    });
                } else {
                    checkBoxCell.setOnSectionsClickListener(null, null);
                }
                checkBoxCell.setPad(itemInner.pad ? 1 : 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$2(View view) {
            CacheControlActivity cacheControlActivity = CacheControlActivity.this;
            cacheControlActivity.collapsed = !cacheControlActivity.collapsed;
            CacheControlActivity.this.updateRows();
            CacheControlActivity.this.updateChart();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$3(CheckBoxCell checkBoxCell, View view) {
            CacheControlActivity.this.toggleOtherSelected(checkBoxCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return ((ItemInner) CacheControlActivity.this.itemInners.get(i)).viewType;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionMode() {
        String formatPluralString;
        if (this.cacheModel.getSelectedFiles() > 0) {
            if (this.cachedMediaLayout != null) {
                if (!this.cacheModel.selectedDialogs.isEmpty()) {
                    Iterator<DialogFileEntities> it = this.cacheModel.entities.iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        DialogFileEntities next = it.next();
                        if (this.cacheModel.selectedDialogs.contains(Long.valueOf(next.dialogId))) {
                            i += next.filesCount;
                        }
                    }
                    int selectedFiles = this.cacheModel.getSelectedFiles() - i;
                    if (selectedFiles > 0) {
                        formatPluralString = String.format("%s, %s", LocaleController.formatPluralString("Chats", this.cacheModel.selectedDialogs.size(), Integer.valueOf(this.cacheModel.selectedDialogs.size())), LocaleController.formatPluralString("Files", selectedFiles, Integer.valueOf(selectedFiles)));
                    } else {
                        formatPluralString = LocaleController.formatPluralString("Chats", this.cacheModel.selectedDialogs.size(), Integer.valueOf(this.cacheModel.selectedDialogs.size()));
                    }
                } else {
                    formatPluralString = LocaleController.formatPluralString("Files", this.cacheModel.getSelectedFiles(), Integer.valueOf(this.cacheModel.getSelectedFiles()));
                }
                this.actionModeTitle.setText(AndroidUtilities.formatFileSize(this.cacheModel.getSelectedFilesSize()));
                this.actionModeSubtitle.setText(formatPluralString);
                this.cachedMediaLayout.showActionMode(true);
                return;
            }
            return;
        }
        this.cachedMediaLayout.showActionMode(false);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda19
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CacheControlActivity.this.lambda$getThemeDescriptions$21();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, SlideChooseView.class, StorageUsageView.class, HeaderCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"paintFill"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "player_progressBackground"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"paintProgress"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "player_progress"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"telegramCacheTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"freeSizeTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{StorageUsageView.class}, new String[]{"calculationgTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{CheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{CheckBoxCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{CheckBoxCell.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, new Class[]{StorageDiagramView.class}, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription((View) null, 0, new Class[]{TextCheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "dialogBackground"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_blue"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_green"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_red"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_golden"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_lightblue"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_lightgreen"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_orange"));
        arrayList.add(new ThemeDescription(this.bottomSheetView, 0, null, null, null, null, "statisticChartLine_indigo"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$21() {
        BottomSheet bottomSheet = this.bottomSheet;
        if (bottomSheet != null) {
            bottomSheet.setBackgroundColor(Theme.getColor("dialogBackground"));
        }
        View view = this.actionTextView;
        if (view != null) {
            view.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 4.0f));
        }
    }

    /* renamed from: org.telegram.ui.CacheControlActivity$UserCell */
    /* loaded from: classes5.dex */
    public static class UserCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        private boolean canDisable;
        protected CheckBox2 checkBox;
        public DialogFileEntities dialogFileEntities;
        private BackupImageView imageView;
        private boolean needDivider;
        private Theme.ResourcesProvider resourcesProvider;
        private TextView textView;
        private AnimatedTextView valueTextView;

        public UserCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setSingleLine();
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setTextSize(1, 16.0f);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText", resourcesProvider));
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView2, LayoutHelper.createFrame(-1, -1, (z ? 5 : 3) | 48, z ? 21 : 72, 0, z ? 72 : 21, 0));
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, !LocaleController.isRTL);
            this.valueTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.55f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.valueTextView.setTextSize(AndroidUtilities.m50dp(16));
            this.valueTextView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
            this.valueTextView.setTextColor(Theme.getColor("windowBackgroundWhiteValueText", resourcesProvider));
            AnimatedTextView animatedTextView2 = this.valueTextView;
            boolean z2 = LocaleController.isRTL;
            addView(animatedTextView2, LayoutHelper.createFrame(-2, -1, (z2 ? 3 : 5) | 48, z2 ? 21 : 72, 0, z2 ? 72 : 21, 0));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.getAvatarDrawable().setScaleSize(0.8f);
            addView(this.imageView, LayoutHelper.createFrame(38, 38, (LocaleController.isRTL ? 5 : 3) | 16, 17, 0, 17, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m50dp(50) + (this.needDivider ? 1 : 0));
            int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.m50dp(34);
            int i3 = measuredWidth / 2;
            if (this.imageView.getVisibility() == 0) {
                this.imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(38), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(38), 1073741824));
            }
            if (this.valueTextView.getVisibility() == 0) {
                this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                measuredWidth = (measuredWidth - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.m50dp(8);
            }
            int measuredWidth2 = this.valueTextView.getMeasuredWidth() + AndroidUtilities.m50dp(12);
            if (LocaleController.isRTL) {
                ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).leftMargin = measuredWidth2;
            } else {
                ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).rightMargin = measuredWidth2;
            }
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth - measuredWidth2, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            CheckBox2 checkBox2 = this.checkBox;
            if (checkBox2 != null) {
                checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(24), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(24), 1073741824));
            }
        }

        public BackupImageView getImageView() {
            return this.imageView;
        }

        public TextView getTextView() {
            return this.textView;
        }

        public void setCanDisable(boolean z) {
            this.canDisable = z;
        }

        public AnimatedTextView getValueTextView() {
            return this.valueTextView;
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
        }

        public void setTextValueColor(int i) {
            this.valueTextView.setTextColor(i);
        }

        public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z) {
            setTextAndValue(charSequence, charSequence2, false, z);
        }

        public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
            this.textView.setText(Emoji.replaceEmoji(charSequence, this.textView.getPaint().getFontMetricsInt(), AndroidUtilities.m50dp(16), false));
            if (charSequence2 != null) {
                this.valueTextView.setText(charSequence2, z);
                this.valueTextView.setVisibility(0);
            } else {
                this.valueTextView.setVisibility(4);
            }
            this.needDivider = z2;
            setWillNotDraw(!z2);
            requestLayout();
        }

        @Override // android.view.View
        public void setEnabled(boolean z) {
            super.setEnabled(z);
            float f = 0.5f;
            this.textView.setAlpha((z || !this.canDisable) ? 1.0f : 0.5f);
            if (this.valueTextView.getVisibility() == 0) {
                AnimatedTextView animatedTextView = this.valueTextView;
                if (z || !this.canDisable) {
                    f = 1.0f;
                }
                animatedTextView.setAlpha(f);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (this.needDivider) {
                canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(72), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(72) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            String str;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            StringBuilder sb = new StringBuilder();
            sb.append((Object) this.textView.getText());
            AnimatedTextView animatedTextView = this.valueTextView;
            if (animatedTextView == null || animatedTextView.getVisibility() != 0) {
                str = "";
            } else {
                str = "\n" + ((Object) this.valueTextView.getText());
            }
            sb.append(str);
            accessibilityNodeInfo.setText(sb.toString());
            accessibilityNodeInfo.setEnabled(isEnabled());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            TextView textView;
            if (i != NotificationCenter.emojiLoaded || (textView = this.textView) == null) {
                return;
            }
            textView.invalidate();
        }

        public void setChecked(boolean z, boolean z2) {
            CheckBox2 checkBox2 = this.checkBox;
            if (checkBox2 != null || z) {
                if (checkBox2 == null) {
                    CheckBox2 checkBox22 = new CheckBox2(getContext(), 21, this.resourcesProvider);
                    this.checkBox = checkBox22;
                    checkBox22.setColor(null, "windowBackgroundWhite", "checkboxCheck");
                    this.checkBox.setDrawUnchecked(false);
                    this.checkBox.setDrawBackgroundAsArc(3);
                    addView(this.checkBox, LayoutHelper.createFrame(24, 24, 0, 38, 25, 0, 0));
                }
                this.checkBox.setChecked(z, z2);
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        FilesMigrationService.FilesMigrationBottomSheet filesMigrationBottomSheet;
        if (i == 4) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= iArr.length) {
                    z = true;
                    break;
                } else if (iArr[i2] != 0) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z || Build.VERSION.SDK_INT < 30 || (filesMigrationBottomSheet = FilesMigrationService.filesMigrationBottomSheet) == null) {
                return;
            }
            filesMigrationBottomSheet.migrateOldFolder();
        }
    }

    /* renamed from: org.telegram.ui.CacheControlActivity$DialogFileEntities */
    /* loaded from: classes5.dex */
    public static class DialogFileEntities {
        public long dialogId;
        public final SparseArray<FileEntities> entitiesByType = new SparseArray<>();
        int filesCount;
        long totalSize;

        public DialogFileEntities(long j) {
            this.dialogId = j;
        }

        public void addFile(CacheModel.FileInfo fileInfo, int i) {
            FileEntities fileEntities = this.entitiesByType.get(i, null);
            if (fileEntities == null) {
                fileEntities = new FileEntities();
                this.entitiesByType.put(i, fileEntities);
            }
            fileEntities.count++;
            long j = fileInfo.size;
            fileEntities.totalSize += j;
            this.totalSize += j;
            this.filesCount++;
            fileEntities.files.add(fileInfo);
        }

        public void merge(DialogFileEntities dialogFileEntities) {
            for (int i = 0; i < dialogFileEntities.entitiesByType.size(); i++) {
                int keyAt = dialogFileEntities.entitiesByType.keyAt(i);
                FileEntities valueAt = dialogFileEntities.entitiesByType.valueAt(i);
                FileEntities fileEntities = this.entitiesByType.get(keyAt, null);
                if (fileEntities == null) {
                    fileEntities = new FileEntities();
                    this.entitiesByType.put(keyAt, fileEntities);
                }
                fileEntities.count += valueAt.count;
                fileEntities.totalSize += valueAt.totalSize;
                this.totalSize += valueAt.totalSize;
                fileEntities.files.addAll(valueAt.files);
            }
            this.filesCount += dialogFileEntities.filesCount;
        }

        public void removeFile(CacheModel.FileInfo fileInfo) {
            FileEntities fileEntities = this.entitiesByType.get(fileInfo.type, null);
            if (fileEntities != null && fileEntities.files.remove(fileInfo)) {
                fileEntities.count--;
                long j = fileEntities.totalSize;
                long j2 = fileInfo.size;
                fileEntities.totalSize = j - j2;
                this.totalSize -= j2;
                this.filesCount--;
            }
        }

        public boolean isEmpty() {
            return this.totalSize <= 0;
        }

        public CacheModel createCacheModel() {
            CacheModel cacheModel = new CacheModel(true);
            if (this.entitiesByType.get(0) != null) {
                cacheModel.media.addAll(this.entitiesByType.get(0).files);
            }
            if (this.entitiesByType.get(1) != null) {
                cacheModel.media.addAll(this.entitiesByType.get(1).files);
            }
            if (this.entitiesByType.get(2) != null) {
                cacheModel.documents.addAll(this.entitiesByType.get(2).files);
            }
            if (this.entitiesByType.get(3) != null) {
                cacheModel.music.addAll(this.entitiesByType.get(3).files);
            }
            if (this.entitiesByType.get(4) != null) {
                cacheModel.voice.addAll(this.entitiesByType.get(4).files);
            }
            cacheModel.selectAllFiles();
            cacheModel.sortBySize();
            return cacheModel;
        }
    }

    /* renamed from: org.telegram.ui.CacheControlActivity$ItemInner */
    /* loaded from: classes5.dex */
    public static class ItemInner extends AdapterWithDiffUtils.Item {
        String colorKey;
        DialogFileEntities entities;
        int headerBottomMargin;
        CharSequence headerName;
        int headerTopMargin;
        public int index;
        int keepMediaType;
        boolean last;
        public boolean pad;
        public long size;
        String text;

        public ItemInner(int i, String str, DialogFileEntities dialogFileEntities) {
            super(i, true);
            this.headerTopMargin = 15;
            this.headerBottomMargin = 0;
            this.keepMediaType = -1;
            this.headerName = str;
            this.entities = dialogFileEntities;
        }

        public ItemInner(int i, int i2) {
            super(i, true);
            this.headerTopMargin = 15;
            this.headerBottomMargin = 0;
            this.keepMediaType = -1;
            this.keepMediaType = i2;
        }

        private ItemInner(int i) {
            super(i, true);
            this.headerTopMargin = 15;
            this.headerBottomMargin = 0;
            this.keepMediaType = -1;
        }

        public static ItemInner asCheckBox(CharSequence charSequence, int i, long j, String str) {
            return asCheckBox(charSequence, i, j, str, false);
        }

        public static ItemInner asCheckBox(CharSequence charSequence, int i, long j, String str, boolean z) {
            ItemInner itemInner = new ItemInner(11);
            itemInner.index = i;
            itemInner.headerName = charSequence;
            itemInner.size = j;
            itemInner.colorKey = str;
            itemInner.last = z;
            return itemInner;
        }

        public static ItemInner asInfo(String str) {
            ItemInner itemInner = new ItemInner(1);
            itemInner.text = str;
            return itemInner;
        }

        public boolean equals(Object obj) {
            DialogFileEntities dialogFileEntities;
            DialogFileEntities dialogFileEntities2;
            if (this == obj) {
                return true;
            }
            if (obj != null && ItemInner.class == obj.getClass()) {
                ItemInner itemInner = (ItemInner) obj;
                int i = this.viewType;
                if (i == itemInner.viewType) {
                    if (i != 9 && i != 10) {
                        if (i == 5 && (dialogFileEntities = this.entities) != null && (dialogFileEntities2 = itemInner.entities) != null) {
                            return dialogFileEntities.dialogId == dialogFileEntities2.dialogId;
                        } else if (i != 8 && i != 4 && i != 2 && i != 0 && i != 13) {
                            if (i == 3) {
                                return Objects.equals(this.headerName, itemInner.headerName);
                            }
                            if (i == 1) {
                                return Objects.equals(this.text, itemInner.text);
                            }
                            return i == 11 ? this.index == itemInner.index && this.size == itemInner.size : i == 7 && this.keepMediaType == itemInner.keepMediaType;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
        if (cachedMediaLayout != null) {
            Rect rect = AndroidUtilities.rectTmp2;
            cachedMediaLayout.getHitRect(rect);
            if (rect.contains((int) motionEvent.getX(), ((int) motionEvent.getY()) - this.actionBar.getMeasuredHeight())) {
                return this.cachedMediaLayout.viewPagerFixed.isCurrentTabFirst();
            }
            return true;
        }
        return true;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        CacheModel cacheModel = this.cacheModel;
        if (cacheModel != null && !cacheModel.selectedFiles.isEmpty()) {
            this.cacheModel.clearSelection();
            CachedMediaLayout cachedMediaLayout = this.cachedMediaLayout;
            if (cachedMediaLayout != null) {
                cachedMediaLayout.showActionMode(false);
                this.cachedMediaLayout.updateVisibleRows();
            }
            return false;
        }
        return super.onBackPressed();
    }
}
