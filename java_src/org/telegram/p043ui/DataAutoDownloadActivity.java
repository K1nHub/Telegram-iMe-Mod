package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.MaxFileSizeCell;
import org.telegram.p043ui.Cells.NotificationsCheckCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckBoxCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SlideChooseView;
import org.telegram.p043ui.DataAutoDownloadActivity;
/* renamed from: org.telegram.ui.DataAutoDownloadActivity */
/* loaded from: classes5.dex */
public class DataAutoDownloadActivity extends BaseFragment {
    private boolean animateChecked;
    private int autoDownloadRow;
    private int autoDownloadSectionRow;
    private int currentPresetNum;
    private int currentType;
    private DownloadController.Preset defaultPreset;
    private int filesRow;
    private String key;
    private String key2;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int photosRow;
    private int rowCount;
    private int storiesRow;
    private int typeHeaderRow;
    private DownloadController.Preset typePreset;
    private int typeSectionRow;
    private int usageHeaderRow;
    private int usageProgressRow;
    private int usageSectionRow;
    private int videosRow;
    private boolean wereAnyChanges;
    private ArrayList<DownloadController.Preset> presets = new ArrayList<>();
    private int selectedPreset = 1;
    private DownloadController.Preset lowPreset = DownloadController.getInstance(this.currentAccount).lowPreset;
    private DownloadController.Preset mediumPreset = DownloadController.getInstance(this.currentAccount).mediumPreset;
    private DownloadController.Preset highPreset = DownloadController.getInstance(this.currentAccount).highPreset;

    public DataAutoDownloadActivity(int i) {
        this.currentType = i;
        int i2 = this.currentType;
        if (i2 == 0) {
            this.currentPresetNum = DownloadController.getInstance(this.currentAccount).currentMobilePreset;
            this.typePreset = DownloadController.getInstance(this.currentAccount).mobilePreset;
            this.defaultPreset = this.mediumPreset;
            this.key = "mobilePreset";
            this.key2 = "currentMobilePreset";
        } else if (i2 == 1) {
            this.currentPresetNum = DownloadController.getInstance(this.currentAccount).currentWifiPreset;
            this.typePreset = DownloadController.getInstance(this.currentAccount).wifiPreset;
            this.defaultPreset = this.highPreset;
            this.key = "wifiPreset";
            this.key2 = "currentWifiPreset";
        } else {
            this.currentPresetNum = DownloadController.getInstance(this.currentAccount).currentRoamingPreset;
            this.typePreset = DownloadController.getInstance(this.currentAccount).roamingPreset;
            this.defaultPreset = this.lowPreset;
            this.key = "roamingPreset";
            this.key2 = "currentRoamingPreset";
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        fillPresets();
        updateRows();
        return true;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        int i = this.currentType;
        if (i == 0) {
            this.actionBar.setTitle(LocaleController.getString("AutoDownloadOnMobileData", C3632R.string.AutoDownloadOnMobileData));
        } else if (i == 1) {
            this.actionBar.setTitle(LocaleController.getString("AutoDownloadOnWiFiData", C3632R.string.AutoDownloadOnWiFiData));
        } else if (i == 2) {
            this.actionBar.setTitle(LocaleController.getString("AutoDownloadOnRoamingData", C3632R.string.AutoDownloadOnRoamingData));
        }
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.DataAutoDownloadActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    DataAutoDownloadActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setVerticalScrollBarEnabled(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        ((FrameLayout) this.fragmentView).addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i2, float f, float f2) {
                DataAutoDownloadActivity.this.lambda$createView$4(view, i2, f, f2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4  */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v40 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createView$4(final android.view.View r31, final int r32, float r33, float r34) {
        /*
            Method dump skipped, instructions count: 1515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.DataAutoDownloadActivity.lambda$createView$4(android.view.View, int, float, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(TextCheckBoxCell textCheckBoxCell, TextCheckBoxCell[] textCheckBoxCellArr, int i, MaxFileSizeCell[] maxFileSizeCellArr, TextCheckCell[] textCheckCellArr, final AnimatorSet[] animatorSetArr, View view) {
        if (view.isEnabled()) {
            boolean z = true;
            textCheckBoxCell.setChecked(!textCheckBoxCell.isChecked());
            int i2 = 0;
            while (true) {
                if (i2 >= textCheckBoxCellArr.length) {
                    z = false;
                    break;
                } else if (textCheckBoxCellArr[i2].isChecked()) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i != this.videosRow || maxFileSizeCellArr[0].isEnabled() == z) {
                return;
            }
            ArrayList<Animator> arrayList = new ArrayList<>();
            maxFileSizeCellArr[0].setEnabled(z, arrayList);
            if (maxFileSizeCellArr[0].getSize() > 2097152) {
                textCheckCellArr[0].setEnabled(z, arrayList);
            }
            if (animatorSetArr[0] != null) {
                animatorSetArr[0].cancel();
                animatorSetArr[0] = null;
            }
            animatorSetArr[0] = new AnimatorSet();
            animatorSetArr[0].playTogether(arrayList);
            animatorSetArr[0].addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.DataAutoDownloadActivity.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(animatorSetArr[0])) {
                        animatorSetArr[0] = null;
                    }
                }
            });
            animatorSetArr[0].setDuration(150L);
            animatorSetArr[0].start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$1(TextCheckCell[] textCheckCellArr, View view) {
        textCheckCellArr[0].setChecked(!textCheckCellArr[0].isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$2(BottomSheet.Builder builder, View view) {
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(TextCheckBoxCell[] textCheckBoxCellArr, int i, MaxFileSizeCell[] maxFileSizeCellArr, int i2, TextCheckCell[] textCheckCellArr, int i3, String str, String str2, BottomSheet.Builder builder, View view, View view2) {
        int i4 = this.currentPresetNum;
        if (i4 != 3) {
            if (i4 == 0) {
                this.typePreset.set(this.lowPreset);
            } else if (i4 == 1) {
                this.typePreset.set(this.mediumPreset);
            } else if (i4 == 2) {
                this.typePreset.set(this.highPreset);
            }
        }
        for (int i5 = 0; i5 < 4; i5++) {
            if (textCheckBoxCellArr[i5].isChecked()) {
                int[] iArr = this.typePreset.mask;
                iArr[i5] = iArr[i5] | i;
            } else {
                int[] iArr2 = this.typePreset.mask;
                iArr2[i5] = iArr2[i5] & (~i);
            }
        }
        if (maxFileSizeCellArr[0] != null) {
            maxFileSizeCellArr[0].getSize();
            this.typePreset.sizes[i2] = (int) maxFileSizeCellArr[0].getSize();
        }
        if (textCheckCellArr[0] != null) {
            if (i3 == this.videosRow) {
                this.typePreset.preloadVideo = textCheckCellArr[0].isChecked();
            } else {
                this.typePreset.preloadMusic = textCheckCellArr[0].isChecked();
            }
        }
        SharedPreferences.Editor edit = MessagesController.getMainSettings(this.currentAccount).edit();
        edit.putString(str, this.typePreset.toString());
        this.currentPresetNum = 3;
        edit.putInt(str2, 3);
        int i6 = this.currentType;
        if (i6 == 0) {
            DownloadController.getInstance(this.currentAccount).currentMobilePreset = this.currentPresetNum;
        } else if (i6 == 1) {
            DownloadController.getInstance(this.currentAccount).currentWifiPreset = this.currentPresetNum;
        } else {
            DownloadController.getInstance(this.currentAccount).currentRoamingPreset = this.currentPresetNum;
        }
        edit.commit();
        builder.getDismissRunnable().run();
        RecyclerView.ViewHolder findContainingViewHolder = this.listView.findContainingViewHolder(view);
        if (findContainingViewHolder != null) {
            this.animateChecked = true;
            this.listAdapter.onBindViewHolder(findContainingViewHolder, i3);
            this.animateChecked = false;
        }
        DownloadController.getInstance(this.currentAccount).checkAutodownloadSettings();
        this.wereAnyChanges = true;
        fillPresets();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        if (this.wereAnyChanges) {
            DownloadController.getInstance(this.currentAccount).savePresetToServer(this.currentType);
            this.wereAnyChanges = false;
        }
    }

    private void fillPresets() {
        this.presets.clear();
        this.presets.add(this.lowPreset);
        this.presets.add(this.mediumPreset);
        this.presets.add(this.highPreset);
        if (!this.typePreset.equals(this.lowPreset) && !this.typePreset.equals(this.mediumPreset) && !this.typePreset.equals(this.highPreset)) {
            this.presets.add(this.typePreset);
        }
        Collections.sort(this.presets, new Comparator() { // from class: org.telegram.ui.DataAutoDownloadActivity$$ExternalSyntheticLambda4
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$fillPresets$5;
                lambda$fillPresets$5 = DataAutoDownloadActivity.lambda$fillPresets$5((DownloadController.Preset) obj, (DownloadController.Preset) obj2);
                return lambda$fillPresets$5;
            }
        });
        int i = this.currentPresetNum;
        if (i == 0 || (i == 3 && this.typePreset.equals(this.lowPreset))) {
            this.selectedPreset = this.presets.indexOf(this.lowPreset);
        } else {
            int i2 = this.currentPresetNum;
            if (i2 == 1 || (i2 == 3 && this.typePreset.equals(this.mediumPreset))) {
                this.selectedPreset = this.presets.indexOf(this.mediumPreset);
            } else {
                int i3 = this.currentPresetNum;
                if (i3 == 2 || (i3 == 3 && this.typePreset.equals(this.highPreset))) {
                    this.selectedPreset = this.presets.indexOf(this.highPreset);
                } else {
                    this.selectedPreset = this.presets.indexOf(this.typePreset);
                }
            }
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerListView.findViewHolderForAdapterPosition(this.usageProgressRow);
            if (findViewHolderForAdapterPosition != null) {
                View view = findViewHolderForAdapterPosition.itemView;
                if (view instanceof SlideChooseView) {
                    updatePresetChoseView((SlideChooseView) view);
                    return;
                }
            }
            this.listAdapter.notifyItemChanged(this.usageProgressRow);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$fillPresets$5(DownloadController.Preset preset, DownloadController.Preset preset2) {
        int typeToIndex = DownloadController.typeToIndex(4);
        int typeToIndex2 = DownloadController.typeToIndex(8);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int[] iArr = preset.mask;
            if (i >= iArr.length) {
                break;
            }
            z = z;
            if ((iArr[i] & 4) != 0) {
                z = true;
            }
            z2 = z2;
            if ((iArr[i] & 8) != 0) {
                z2 = true;
            }
            if (z && z2) {
                break;
            }
            i++;
            z = z;
            z2 = z2;
        }
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            int[] iArr2 = preset2.mask;
            if (i2 >= iArr2.length) {
                break;
            }
            z3 = z3;
            if ((iArr2[i2] & 4) != 0) {
                z3 = true;
            }
            z4 = z4;
            if ((iArr2[i2] & 8) != 0) {
                z4 = true;
            }
            if (z3 && z4) {
                break;
            }
            i2++;
            z3 = z3;
            z4 = z4;
        }
        int i3 = (((z ? preset.sizes[typeToIndex] : 0L) + (z2 ? preset.sizes[typeToIndex2] : 0L) + (preset.preloadStories ? 1L : 0L)) > ((z3 ? preset2.sizes[typeToIndex] : 0L) + (z4 ? preset2.sizes[typeToIndex2] : 0L) + (preset2.preloadStories ? 1L : 0L)) ? 1 : (((z ? preset.sizes[typeToIndex] : 0L) + (z2 ? preset.sizes[typeToIndex2] : 0L) + (preset.preloadStories ? 1L : 0L)) == ((z3 ? preset2.sizes[typeToIndex] : 0L) + (z4 ? preset2.sizes[typeToIndex2] : 0L) + (preset2.preloadStories ? 1L : 0L)) ? 0 : -1));
        if (i3 > 0) {
            return 1;
        }
        return i3 < 0 ? -1 : 0;
    }

    private void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.autoDownloadRow = 0;
        int i2 = i + 1;
        this.rowCount = i2;
        this.autoDownloadSectionRow = i;
        if (this.typePreset.enabled) {
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.usageHeaderRow = i2;
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.usageProgressRow = i3;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.usageSectionRow = i4;
            int i6 = i5 + 1;
            this.rowCount = i6;
            this.typeHeaderRow = i5;
            int i7 = i6 + 1;
            this.rowCount = i7;
            this.photosRow = i6;
            int i8 = i7 + 1;
            this.rowCount = i8;
            this.videosRow = i7;
            int i9 = i8 + 1;
            this.rowCount = i9;
            this.filesRow = i8;
            int i10 = i9 + 1;
            this.rowCount = i10;
            this.storiesRow = i9;
            this.rowCount = i10 + 1;
            this.typeSectionRow = i10;
            return;
        }
        this.usageHeaderRow = -1;
        this.usageProgressRow = -1;
        this.usageSectionRow = -1;
        this.typeHeaderRow = -1;
        this.photosRow = -1;
        this.videosRow = -1;
        this.filesRow = -1;
        this.storiesRow = -1;
        this.typeSectionRow = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.DataAutoDownloadActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DataAutoDownloadActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String str;
            StringBuilder sb;
            StringBuilder sb2;
            int itemViewType = viewHolder.getItemViewType();
            int i2 = 0;
            if (itemViewType == 0) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                if (i == DataAutoDownloadActivity.this.autoDownloadRow) {
                    textCheckCell.setDrawCheckRipple(true);
                    textCheckCell.setTextAndCheck(LocaleController.getString("AutoDownloadMedia", C3632R.string.AutoDownloadMedia), DataAutoDownloadActivity.this.typePreset.enabled, false);
                    textCheckCell.setTag(Integer.valueOf(DataAutoDownloadActivity.this.typePreset.enabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                    textCheckCell.setBackgroundColor(Theme.getColor(DataAutoDownloadActivity.this.typePreset.enabled ? Theme.key_windowBackgroundChecked : Theme.key_windowBackgroundUnchecked));
                }
            } else if (itemViewType == 2) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i != DataAutoDownloadActivity.this.usageHeaderRow) {
                    if (i == DataAutoDownloadActivity.this.typeHeaderRow) {
                        headerCell.setText(LocaleController.getString("AutoDownloadTypes", C3632R.string.AutoDownloadTypes));
                        return;
                    }
                    return;
                }
                headerCell.setText(LocaleController.getString("AutoDownloadDataUsage", C3632R.string.AutoDownloadDataUsage));
            } else if (itemViewType == 3) {
                DataAutoDownloadActivity.this.updatePresetChoseView((SlideChooseView) viewHolder.itemView);
            } else {
                int i3 = -1;
                if (itemViewType != 4) {
                    if (itemViewType != 5) {
                        return;
                    }
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i != DataAutoDownloadActivity.this.typeSectionRow) {
                        if (i == DataAutoDownloadActivity.this.autoDownloadSectionRow) {
                            if (DataAutoDownloadActivity.this.usageHeaderRow == -1) {
                                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                                if (DataAutoDownloadActivity.this.currentType != 0) {
                                    if (DataAutoDownloadActivity.this.currentType != 1) {
                                        if (DataAutoDownloadActivity.this.currentType == 2) {
                                            textInfoPrivacyCell.setText(LocaleController.getString("AutoDownloadOnRoamingDataInfo", C3632R.string.AutoDownloadOnRoamingDataInfo));
                                        }
                                    } else {
                                        textInfoPrivacyCell.setText(LocaleController.getString("AutoDownloadOnWiFiDataInfo", C3632R.string.AutoDownloadOnWiFiDataInfo));
                                    }
                                } else {
                                    textInfoPrivacyCell.setText(LocaleController.getString("AutoDownloadOnMobileDataInfo", C3632R.string.AutoDownloadOnMobileDataInfo));
                                }
                                textInfoPrivacyCell.setImportantForAccessibility(1);
                                return;
                            }
                            textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                            textInfoPrivacyCell.setText(null);
                            textInfoPrivacyCell.setFixedSize(12);
                            if (Build.VERSION.SDK_INT >= 19) {
                                textInfoPrivacyCell.setImportantForAccessibility(4);
                                return;
                            } else {
                                textInfoPrivacyCell.setImportantForAccessibility(2);
                                return;
                            }
                        }
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString("AutoDownloadAudioInfo", C3632R.string.AutoDownloadAudioInfo));
                    textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setFixedSize(0);
                    textInfoPrivacyCell.setImportantForAccessibility(1);
                    return;
                }
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) viewHolder.itemView;
                notificationsCheckCell.setDrawLine(true);
                if (i != DataAutoDownloadActivity.this.photosRow) {
                    if (i != DataAutoDownloadActivity.this.videosRow) {
                        if (i == DataAutoDownloadActivity.this.storiesRow) {
                            string = LocaleController.getString("AutoDownloadStories", C3632R.string.AutoDownloadStories);
                            notificationsCheckCell.setDrawLine(false);
                        } else {
                            string = LocaleController.getString("AutoDownloadFiles", C3632R.string.AutoDownloadFiles);
                            i3 = 8;
                        }
                        str = string;
                    } else {
                        str = LocaleController.getString("AutoDownloadVideos", C3632R.string.AutoDownloadVideos);
                        i3 = 4;
                    }
                } else {
                    str = LocaleController.getString("AutoDownloadPhotos", C3632R.string.AutoDownloadPhotos);
                    i3 = 1;
                }
                DownloadController.Preset currentMobilePreset = DataAutoDownloadActivity.this.currentType == 0 ? DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).getCurrentMobilePreset() : DataAutoDownloadActivity.this.currentType == 1 ? DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).getCurrentWiFiPreset() : DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).getCurrentRoamingPreset();
                long j = currentMobilePreset.sizes[DownloadController.typeToIndex(i3)];
                StringBuilder sb3 = new StringBuilder();
                if (i != DataAutoDownloadActivity.this.storiesRow) {
                    int i4 = 0;
                    while (true) {
                        int[] iArr = currentMobilePreset.mask;
                        if (i4 >= iArr.length) {
                            break;
                        }
                        if ((iArr[i4] & i3) != 0) {
                            if (sb3.length() != 0) {
                                sb3.append(", ");
                            }
                            if (i4 == 0) {
                                sb3.append(LocaleController.getString("AutoDownloadContacts", C3632R.string.AutoDownloadContacts));
                            } else if (i4 == 1) {
                                sb3.append(LocaleController.getString("AutoDownloadPm", C3632R.string.AutoDownloadPm));
                            } else if (i4 == 2) {
                                sb3.append(LocaleController.getString("AutoDownloadGroups", C3632R.string.AutoDownloadGroups));
                            } else if (i4 == 3) {
                                sb3.append(LocaleController.getString("AutoDownloadChannels", C3632R.string.AutoDownloadChannels));
                            }
                            i2++;
                        }
                        i4++;
                    }
                    if (i2 == 4) {
                        sb3.setLength(0);
                        if (i == DataAutoDownloadActivity.this.photosRow) {
                            sb3.append(LocaleController.getString("AutoDownloadOnAllChats", C3632R.string.AutoDownloadOnAllChats));
                        } else {
                            sb3.append(LocaleController.formatString("AutoDownloadUpToOnAllChats", C3632R.string.AutoDownloadUpToOnAllChats, AndroidUtilities.formatFileSize(j)));
                        }
                    } else if (i2 != 0) {
                        if (i == DataAutoDownloadActivity.this.photosRow) {
                            sb = new StringBuilder(LocaleController.formatString("AutoDownloadOnFor", C3632R.string.AutoDownloadOnFor, sb3.toString()));
                        } else {
                            sb = new StringBuilder(LocaleController.formatString("AutoDownloadOnUpToFor", C3632R.string.AutoDownloadOnUpToFor, AndroidUtilities.formatFileSize(j), sb3.toString()));
                        }
                        sb2 = sb;
                    } else {
                        sb3.append(LocaleController.getString("AutoDownloadOff", C3632R.string.AutoDownloadOff));
                    }
                    sb2 = sb3;
                } else if (currentMobilePreset.preloadStories) {
                    sb2 = new StringBuilder(LocaleController.formatString("AutoDownloadOn", C3632R.string.AutoDownloadOn, sb3.toString()));
                    i2 = 1;
                } else {
                    sb = new StringBuilder(LocaleController.formatString("AutoDownloadOff", C3632R.string.AutoDownloadOff, sb3.toString()));
                    sb2 = sb;
                }
                if (DataAutoDownloadActivity.this.animateChecked) {
                    notificationsCheckCell.setChecked(i2 != 0);
                }
                notificationsCheckCell.setTextAndValueAndCheck(str, sb2, i2 != 0, 0, true, i != DataAutoDownloadActivity.this.storiesRow);
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == DataAutoDownloadActivity.this.photosRow || adapterPosition == DataAutoDownloadActivity.this.videosRow || adapterPosition == DataAutoDownloadActivity.this.filesRow || adapterPosition == DataAutoDownloadActivity.this.storiesRow;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(int i) {
            DownloadController.Preset preset = (DownloadController.Preset) DataAutoDownloadActivity.this.presets.get(i);
            if (preset == DataAutoDownloadActivity.this.lowPreset) {
                DataAutoDownloadActivity.this.currentPresetNum = 0;
            } else if (preset == DataAutoDownloadActivity.this.mediumPreset) {
                DataAutoDownloadActivity.this.currentPresetNum = 1;
            } else if (preset == DataAutoDownloadActivity.this.highPreset) {
                DataAutoDownloadActivity.this.currentPresetNum = 2;
            } else {
                DataAutoDownloadActivity.this.currentPresetNum = 3;
            }
            if (DataAutoDownloadActivity.this.currentType == 0) {
                DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).currentMobilePreset = DataAutoDownloadActivity.this.currentPresetNum;
            } else if (DataAutoDownloadActivity.this.currentType == 1) {
                DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).currentWifiPreset = DataAutoDownloadActivity.this.currentPresetNum;
            } else {
                DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).currentRoamingPreset = DataAutoDownloadActivity.this.currentPresetNum;
            }
            SharedPreferences.Editor edit = MessagesController.getMainSettings(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).edit();
            edit.putInt(DataAutoDownloadActivity.this.key2, DataAutoDownloadActivity.this.currentPresetNum);
            edit.commit();
            DownloadController.getInstance(((BaseFragment) DataAutoDownloadActivity.this).currentAccount).checkAutodownloadSettings();
            for (int i2 = 0; i2 < 4; i2++) {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = DataAutoDownloadActivity.this.listView.findViewHolderForAdapterPosition(DataAutoDownloadActivity.this.photosRow + i2);
                if (findViewHolderForAdapterPosition != null) {
                    DataAutoDownloadActivity.this.listAdapter.onBindViewHolder(findViewHolderForAdapterPosition, DataAutoDownloadActivity.this.photosRow + i2);
                }
            }
            DataAutoDownloadActivity.this.wereAnyChanges = true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            SlideChooseView slideChooseView;
            if (i == 0) {
                TextCheckCell textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setColors(Theme.key_windowBackgroundCheckText, Theme.key_switchTrackBlue, Theme.key_switchTrackBlueChecked, Theme.key_switchTrackBlueThumb, Theme.key_switchTrackBlueThumbChecked);
                textCheckCell.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textCheckCell.setHeight(56);
                slideChooseView = textCheckCell;
            } else if (i == 1) {
                slideChooseView = new ShadowSectionCell(this.mContext);
            } else if (i == 2) {
                View headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                slideChooseView = headerCell;
            } else if (i == 3) {
                SlideChooseView slideChooseView2 = new SlideChooseView(this.mContext);
                slideChooseView2.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.DataAutoDownloadActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.p043ui.Components.SlideChooseView.Callback
                    public final void onOptionSelected(int i2) {
                        DataAutoDownloadActivity.ListAdapter.this.lambda$onCreateViewHolder$0(i2);
                    }

                    @Override // org.telegram.p043ui.Components.SlideChooseView.Callback
                    public /* synthetic */ void onTouchEnd() {
                        SlideChooseView.Callback.CC.$default$onTouchEnd(this);
                    }
                });
                slideChooseView2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                slideChooseView = slideChooseView2;
            } else if (i == 4) {
                View notificationsCheckCell = new NotificationsCheckCell(this.mContext);
                notificationsCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                slideChooseView = notificationsCheckCell;
            } else {
                View textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                slideChooseView = textInfoPrivacyCell;
            }
            slideChooseView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(slideChooseView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == DataAutoDownloadActivity.this.autoDownloadRow) {
                return 0;
            }
            if (i == DataAutoDownloadActivity.this.usageSectionRow) {
                return 1;
            }
            if (i == DataAutoDownloadActivity.this.usageHeaderRow || i == DataAutoDownloadActivity.this.typeHeaderRow) {
                return 2;
            }
            if (i == DataAutoDownloadActivity.this.usageProgressRow) {
                return 3;
            }
            return (i == DataAutoDownloadActivity.this.photosRow || i == DataAutoDownloadActivity.this.videosRow || i == DataAutoDownloadActivity.this.filesRow || i == DataAutoDownloadActivity.this.storiesRow) ? 4 : 5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePresetChoseView(SlideChooseView slideChooseView) {
        String[] strArr = new String[this.presets.size()];
        for (int i = 0; i < this.presets.size(); i++) {
            DownloadController.Preset preset = this.presets.get(i);
            if (preset == this.lowPreset) {
                strArr[i] = LocaleController.getString("AutoDownloadLow", C3632R.string.AutoDownloadLow);
            } else if (preset == this.mediumPreset) {
                strArr[i] = LocaleController.getString("AutoDownloadMedium", C3632R.string.AutoDownloadMedium);
            } else if (preset == this.highPreset) {
                strArr[i] = LocaleController.getString("AutoDownloadHigh", C3632R.string.AutoDownloadHigh);
            } else {
                strArr[i] = LocaleController.getString("AutoDownloadCustom", C3632R.string.AutoDownloadCustom);
            }
        }
        slideChooseView.setOptions(this.selectedPreset, strArr);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, NotificationsCheckCell.class, SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i3 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2));
        int i4 = Theme.key_switchTrack;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhiteGrayText));
        return arrayList;
    }
}
