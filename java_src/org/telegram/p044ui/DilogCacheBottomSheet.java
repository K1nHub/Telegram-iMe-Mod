package org.telegram.p044ui;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.BottomSheet;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.CacheControlActivity;
import org.telegram.p044ui.CachedMediaLayout;
import org.telegram.p044ui.Cells.CheckBoxCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p044ui.Components.CombinedDrawable;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.NestedSizeNotifierLayout;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.Components.StorageDiagramView;
import org.telegram.p044ui.Storage.CacheModel;
/* renamed from: org.telegram.ui.DilogCacheBottomSheet */
/* loaded from: classes5.dex */
public class DilogCacheBottomSheet extends BottomSheetWithRecyclerListView {
    private CacheControlActivity.ClearCacheButton button;
    private final Delegate cacheDelegate;
    private final CacheModel cacheModel;
    CachedMediaLayout cachedMediaLayout;
    CheckBoxCell[] checkBoxes;
    private final StorageDiagramView circleDiagramView;
    private StorageDiagramView.ClearViewData[] clearViewData;
    long dialogId;
    CacheControlActivity.DialogFileEntities entities;
    private final boolean isArchive;
    LinearLayout linearLayout;

    /* renamed from: org.telegram.ui.DilogCacheBottomSheet$Delegate */
    /* loaded from: classes5.dex */
    public interface Delegate {
        void cleanupDialogFiles(CacheControlActivity.DialogFileEntities dialogFileEntities, StorageDiagramView.ClearViewData[] clearViewDataArr, CacheModel cacheModel);

        void onAvatarClick();
    }

    @Override // org.telegram.p044ui.Components.BottomSheetWithRecyclerListView, org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.p044ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        if (this.isArchive) {
            return LocaleController.getString("ArchivedChats", C3242R.string.ArchivedChats);
        }
        return getBaseFragment().getMessagesController().getFullName(this.dialogId);
    }

    @Override // org.telegram.p044ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter() {
        return new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.DilogCacheBottomSheet.1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                return i;
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View view;
                if (i == 0) {
                    view = DilogCacheBottomSheet.this.linearLayout;
                } else if (i == 2) {
                    view = DilogCacheBottomSheet.this.cachedMediaLayout;
                    RecyclerView.LayoutParams layoutParams = new RecyclerView.LayoutParams(-1, -2);
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = ((BottomSheet) DilogCacheBottomSheet.this).backgroundPaddingLeft;
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = ((BottomSheet) DilogCacheBottomSheet.this).backgroundPaddingLeft;
                    view.setLayoutParams(layoutParams);
                } else {
                    TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(viewGroup.getContext());
                    textInfoPrivacyCell.setFixedSize(12);
                    CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor("windowBackgroundGray")), Theme.getThemedDrawable(viewGroup.getContext(), C3242R.C3244drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    combinedDrawable.setFullsize(true);
                    textInfoPrivacyCell.setBackgroundDrawable(combinedDrawable);
                    view = textInfoPrivacyCell;
                }
                return new RecyclerListView.Holder(view);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return DilogCacheBottomSheet.this.cacheModel.isEmpty() ? 1 : 3;
            }
        };
    }

    public DilogCacheBottomSheet(BaseFragment baseFragment, CacheControlActivity.DialogFileEntities dialogFileEntities, final CacheModel cacheModel, final Delegate delegate, boolean z, boolean z2) {
        super(baseFragment, false, false, !cacheModel.isEmpty(), null);
        String string;
        String str;
        String str2;
        long j;
        this.clearViewData = new StorageDiagramView.ClearViewData[8];
        this.checkBoxes = new CheckBoxCell[8];
        this.isArchive = z2;
        this.cacheDelegate = delegate;
        this.entities = dialogFileEntities;
        this.cacheModel = cacheModel;
        this.dialogId = dialogFileEntities.dialogId;
        this.allowNestedScroll = false;
        updateTitle();
        setAllowNestedScroll(true);
        this.topPadding = 0.2f;
        Context context = baseFragment.getContext();
        fixNavigationBar();
        setApplyBottomPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        StorageDiagramView storageDiagramView = new StorageDiagramView(this, getContext(), dialogFileEntities.dialogId, z2) { // from class: org.telegram.ui.DilogCacheBottomSheet.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.Components.StorageDiagramView
            public void onAvatarClick() {
                delegate.onAvatarClick();
            }
        };
        this.circleDiagramView = storageDiagramView;
        storageDiagramView.setNotClickableAvatar(z);
        this.linearLayout.addView(storageDiagramView, LayoutHelper.createLinear(-2, -2, 1, 0, 16, 0, 16));
        CheckBoxCell checkBoxCell = null;
        for (int i = 0; i < 7; i++) {
            if (i == 0) {
                string = LocaleController.getString("LocalPhotoCache", C3242R.string.LocalPhotoCache);
                str = "statisticChartLine_lightblue";
            } else if (i == 1) {
                string = LocaleController.getString("LocalVideoCache", C3242R.string.LocalVideoCache);
                str = "statisticChartLine_blue";
            } else if (i == 2) {
                string = LocaleController.getString("LocalDocumentCache", C3242R.string.LocalDocumentCache);
                str = "statisticChartLine_green";
            } else if (i == 3) {
                string = LocaleController.getString("LocalMusicCache", C3242R.string.LocalMusicCache);
                str = "statisticChartLine_red";
            } else if (i == 4) {
                string = LocaleController.getString("LocalAudioCache", C3242R.string.LocalAudioCache);
                str = "statisticChartLine_lightgreen";
            } else if (i == 5) {
                string = LocaleController.getString("LocalStickersCache", C3242R.string.LocalStickersCache);
                str = "statisticChartLine_orange";
            } else {
                string = LocaleController.getString("LocalMiscellaneousCache", C3242R.string.LocalMiscellaneousCache);
                str = "statisticChartLine_purple";
            }
            CacheControlActivity.FileEntities fileEntities = dialogFileEntities.entitiesByType.get(i);
            if (fileEntities != null) {
                str2 = string;
                j = fileEntities.totalSize;
            } else {
                str2 = string;
                j = 0;
            }
            if (j > 0) {
                this.clearViewData[i] = new StorageDiagramView.ClearViewData(this.circleDiagramView);
                StorageDiagramView.ClearViewData[] clearViewDataArr = this.clearViewData;
                clearViewDataArr[i].size = j;
                clearViewDataArr[i].color = str;
                checkBoxCell = new CheckBoxCell(context, 4, 21, null);
                checkBoxCell.setTag(Integer.valueOf(i));
                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                this.linearLayout.addView(checkBoxCell, LayoutHelper.createLinear(-1, 50));
                checkBoxCell.setText(str2, AndroidUtilities.formatFileSize(j), true, true);
                checkBoxCell.setTextColor(Theme.getColor("dialogTextBlack"));
                checkBoxCell.setCheckBoxColor(str, "windowBackgroundWhiteGrayIcon", "checkboxCheck");
                checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DilogCacheBottomSheet$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DilogCacheBottomSheet.this.lambda$new$0(cacheModel, view);
                    }
                });
                this.checkBoxes[i] = checkBoxCell;
            } else {
                this.clearViewData[i] = null;
                this.checkBoxes[i] = null;
            }
        }
        if (checkBoxCell != null) {
            checkBoxCell.setNeedDivider(false);
        }
        this.circleDiagramView.setData(cacheModel, this.clearViewData);
        CachedMediaLayout cachedMediaLayout = new CachedMediaLayout(getContext(), baseFragment) { // from class: org.telegram.ui.DilogCacheBottomSheet.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.CachedMediaLayout, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec((((BottomSheetWithRecyclerListView) DilogCacheBottomSheet.this).contentHeight - C3306ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight, 1073741824));
            }
        };
        this.cachedMediaLayout = cachedMediaLayout;
        cachedMediaLayout.setBottomPadding(AndroidUtilities.m50dp(80));
        this.cachedMediaLayout.setCacheModel(cacheModel);
        this.cachedMediaLayout.setDelegate(new CachedMediaLayout.Delegate() { // from class: org.telegram.ui.DilogCacheBottomSheet.4
            @Override // org.telegram.p044ui.CachedMediaLayout.Delegate
            public void clear() {
            }

            @Override // org.telegram.p044ui.CachedMediaLayout.Delegate
            public void clearSelection() {
            }

            @Override // org.telegram.p044ui.CachedMediaLayout.Delegate
            public void onItemSelected(CacheControlActivity.DialogFileEntities dialogFileEntities2, CacheModel.FileInfo fileInfo, boolean z3) {
                if (fileInfo != null) {
                    cacheModel.toggleSelect(fileInfo);
                    DilogCacheBottomSheet.this.cachedMediaLayout.updateVisibleRows();
                    DilogCacheBottomSheet.this.syncCheckBoxes();
                    DilogCacheBottomSheet.this.button.setSize(true, DilogCacheBottomSheet.this.circleDiagramView.updateDescription());
                    DilogCacheBottomSheet.this.circleDiagramView.update(true);
                }
            }

            @Override // org.telegram.p044ui.CachedMediaLayout.Delegate
            public void dismiss() {
                DilogCacheBottomSheet.this.dismiss();
            }
        });
        NestedSizeNotifierLayout nestedSizeNotifierLayout = this.nestedSizeNotifierLayout;
        if (nestedSizeNotifierLayout != null) {
            nestedSizeNotifierLayout.setChildLayout(this.cachedMediaLayout);
        } else {
            createButton();
            this.linearLayout.addView(this.button, LayoutHelper.createLinear(-1, 72, 80));
        }
        if (this.button != null) {
            this.button.setSize(true, this.circleDiagramView.calculateSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(CacheModel cacheModel, View view) {
        int i = 0;
        while (true) {
            StorageDiagramView.ClearViewData[] clearViewDataArr = this.clearViewData;
            if (i < clearViewDataArr.length) {
                if (clearViewDataArr[i] != null) {
                    boolean z = clearViewDataArr[i].clear;
                }
                i++;
            } else {
                CheckBoxCell checkBoxCell = (CheckBoxCell) view;
                int intValue = ((Integer) checkBoxCell.getTag()).intValue();
                StorageDiagramView.ClearViewData[] clearViewDataArr2 = this.clearViewData;
                clearViewDataArr2[intValue].setClear(!clearViewDataArr2[intValue].clear);
                checkBoxCell.setChecked(this.clearViewData[intValue].clear, true);
                cacheModel.allFilesSelcetedByType(intValue, this.clearViewData[intValue].clear);
                this.cachedMediaLayout.update();
                this.button.setSize(true, this.circleDiagramView.updateDescription());
                this.circleDiagramView.update(true);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncCheckBoxes() {
        CheckBoxCell[] checkBoxCellArr = this.checkBoxes;
        if (checkBoxCellArr[0] != null) {
            CheckBoxCell checkBoxCell = checkBoxCellArr[0];
            StorageDiagramView.ClearViewData clearViewData = this.clearViewData[0];
            boolean z = this.cacheModel.allPhotosSelected;
            clearViewData.clear = z;
            checkBoxCell.setChecked(z, true);
        }
        CheckBoxCell[] checkBoxCellArr2 = this.checkBoxes;
        if (checkBoxCellArr2[1] != null) {
            CheckBoxCell checkBoxCell2 = checkBoxCellArr2[1];
            StorageDiagramView.ClearViewData clearViewData2 = this.clearViewData[1];
            boolean z2 = this.cacheModel.allVideosSelected;
            clearViewData2.clear = z2;
            checkBoxCell2.setChecked(z2, true);
        }
        CheckBoxCell[] checkBoxCellArr3 = this.checkBoxes;
        if (checkBoxCellArr3[2] != null) {
            CheckBoxCell checkBoxCell3 = checkBoxCellArr3[2];
            StorageDiagramView.ClearViewData clearViewData3 = this.clearViewData[2];
            boolean z3 = this.cacheModel.allDocumentsSelected;
            clearViewData3.clear = z3;
            checkBoxCell3.setChecked(z3, true);
        }
        CheckBoxCell[] checkBoxCellArr4 = this.checkBoxes;
        if (checkBoxCellArr4[3] != null) {
            CheckBoxCell checkBoxCell4 = checkBoxCellArr4[3];
            StorageDiagramView.ClearViewData clearViewData4 = this.clearViewData[3];
            boolean z4 = this.cacheModel.allMusicSelected;
            clearViewData4.clear = z4;
            checkBoxCell4.setChecked(z4, true);
        }
        CheckBoxCell[] checkBoxCellArr5 = this.checkBoxes;
        if (checkBoxCellArr5[4] != null) {
            CheckBoxCell checkBoxCell5 = checkBoxCellArr5[4];
            StorageDiagramView.ClearViewData clearViewData5 = this.clearViewData[4];
            boolean z5 = this.cacheModel.allVoiceSelected;
            clearViewData5.clear = z5;
            checkBoxCell5.setChecked(z5, true);
        }
    }

    @Override // org.telegram.p044ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        super.onViewCreated(frameLayout);
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.DilogCacheBottomSheet.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                DilogCacheBottomSheet dilogCacheBottomSheet = DilogCacheBottomSheet.this;
                NestedSizeNotifierLayout nestedSizeNotifierLayout = dilogCacheBottomSheet.nestedSizeNotifierLayout;
                if (nestedSizeNotifierLayout != null) {
                    dilogCacheBottomSheet.setShowShadow(!nestedSizeNotifierLayout.isPinnedToTop());
                }
            }
        });
        if (this.nestedSizeNotifierLayout != null) {
            createButton();
            frameLayout.addView(this.button, LayoutHelper.createFrame(-1, 72, 80));
        }
    }

    private void createButton() {
        CacheControlActivity.ClearCacheButton clearCacheButton = new CacheControlActivity.ClearCacheButton(getContext());
        this.button = clearCacheButton;
        clearCacheButton.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.DilogCacheBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DilogCacheBottomSheet.this.lambda$createButton$3(view);
            }
        });
        StorageDiagramView storageDiagramView = this.circleDiagramView;
        if (storageDiagramView != null) {
            this.button.setSize(true, storageDiagramView.calculateSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createButton$3(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getString("ClearCache", C3242R.string.ClearCache));
        builder.setMessage(LocaleController.getString("ClearCacheForChat", C3242R.string.ClearCacheForChat));
        builder.setNegativeButton(LocaleController.getString("Cancel", C3242R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DilogCacheBottomSheet$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DilogCacheBottomSheet.this.lambda$createButton$1(dialogInterface, i);
            }
        });
        builder.setPositiveButton(LocaleController.getString("Clear", C3242R.string.Clear), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.DilogCacheBottomSheet$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DilogCacheBottomSheet.this.lambda$createButton$2(dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        create.show();
        create.redPositive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createButton$1(DialogInterface dialogInterface, int i) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createButton$2(DialogInterface dialogInterface, int i) {
        dismiss();
        this.cacheDelegate.cleanupDialogFiles(this.entities, this.clearViewData, this.cacheModel);
    }
}