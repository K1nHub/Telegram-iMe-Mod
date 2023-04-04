package com.iMe.fork.p025ui.dialog;

import android.view.View;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.iMe.fork.enums.TelegramCacheType;
import com.iMe.fork.models.TelegramCacheData;
import com.iMe.fork.utils.Callbacks$Callback2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.StorageDiagramView;
/* compiled from: ClearCacheBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.ClearCacheBottomSheet */
/* loaded from: classes3.dex */
public final class ClearCacheBottomSheet extends BottomSheet {
    private final Lazy clearButton$delegate;
    private final EnumMap<TelegramCacheType, TelegramCacheData> data;
    private final Lazy diagramView$delegate;
    private final BaseFragment fragment;
    private final Callbacks$Callback2<List<TelegramCacheType>, List<TelegramCacheData>> onProcess;
    private final Lazy rootLinear$delegate;
    private final Lazy rootScrollingView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearCacheBottomSheet(BaseFragment fragment, EnumMap<TelegramCacheType, TelegramCacheData> data, Callbacks$Callback2<List<TelegramCacheType>, List<TelegramCacheData>> callbacks$Callback2) {
        super(fragment.getParentActivity(), false);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(data, "data");
        this.fragment = fragment;
        this.data = data;
        this.onProcess = callbacks$Callback2;
        lazy = LazyKt__LazyJVMKt.lazy(new ClearCacheBottomSheet$rootScrollingView$2(this));
        this.rootScrollingView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ClearCacheBottomSheet$rootLinear$2(this));
        this.rootLinear$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new ClearCacheBottomSheet$diagramView$2(this));
        this.diagramView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new ClearCacheBottomSheet$clearButton$2(this));
        this.clearButton$delegate = lazy4;
        setupBottomSheet();
        setupCategoryList();
        StorageDiagramView diagramView = getDiagramView();
        Collection<TelegramCacheData> values = data.values();
        Intrinsics.checkNotNullExpressionValue(values, "data.values");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(values, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TelegramCacheData telegramCacheData : values) {
            arrayList.add(telegramCacheData.getClearViewData());
        }
        diagramView.setData(null, (StorageDiagramView.ClearViewData[]) arrayList.toArray(new StorageDiagramView.ClearViewData[0]));
        getRootLinear().addView(getClearButton(), LayoutHelper.createLinear(-1, 50));
        setCustomView(getRootScrollingView());
    }

    private final NestedScrollView getRootScrollingView() {
        return (NestedScrollView) this.rootScrollingView$delegate.getValue();
    }

    private final LinearLayout getRootLinear() {
        return (LinearLayout) this.rootLinear$delegate.getValue();
    }

    private final StorageDiagramView getDiagramView() {
        return (StorageDiagramView) this.diagramView$delegate.getValue();
    }

    private final BottomSheet.BottomSheetCell getClearButton() {
        return (BottomSheet.BottomSheetCell) this.clearButton$delegate.getValue();
    }

    private final void setupBottomSheet() {
        setCanDismissWithSwipe(false);
        setApplyBottomPadding(false);
        setAllowNestedScroll(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NestedScrollView initRootScrollView() {
        NestedScrollView nestedScrollView = new NestedScrollView(getContext());
        nestedScrollView.setVerticalScrollBarEnabled(false);
        nestedScrollView.addView(getRootLinear());
        return nestedScrollView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initRootLinear() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(getDiagramView(), LayoutHelper.createLinear(-2, -2, 1, 0, 16, 0, 16));
        return linearLayout;
    }

    private final void setupCategoryList() {
        Iterator it = this.data.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            TelegramCacheType cacheType = (TelegramCacheType) entry.getKey();
            TelegramCacheData cacheData = (TelegramCacheData) entry.getValue();
            StorageDiagramView.ClearViewData clearViewData = new StorageDiagramView.ClearViewData(getDiagramView());
            clearViewData.color = cacheType.getColorKey();
            clearViewData.setSize(cacheData.getSize());
            cacheData.setClearViewData(clearViewData);
            Intrinsics.checkNotNullExpressionValue(cacheType, "cacheType");
            Intrinsics.checkNotNullExpressionValue(cacheData, "cacheData");
            getRootLinear().addView(createCategoryItem(cacheType, cacheData), LayoutHelper.createLinear(-1, 50));
        }
    }

    private final CheckBoxCell createCategoryItem(TelegramCacheType telegramCacheType, final TelegramCacheData telegramCacheData) {
        final CheckBoxCell checkBoxCell = new CheckBoxCell(getContext(), 4, 21, null);
        checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
        checkBoxCell.setText(telegramCacheType.title(), AndroidUtilities.formatFileSize(telegramCacheData.getSize()), true, true);
        checkBoxCell.setTextColor(Theme.getColor("dialogTextBlack"));
        checkBoxCell.setCheckBoxColor(telegramCacheType.getColorKey(), "windowBackgroundWhiteGrayIcon", "checkboxCheck");
        Set<TelegramCacheType> keySet = this.data.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "data.keys");
        checkBoxCell.setNeedDivider(telegramCacheType != CollectionsKt.last(keySet));
        checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClearCacheBottomSheet.createCategoryItem$lambda$6$lambda$5(ClearCacheBottomSheet.this, checkBoxCell, telegramCacheData, view);
            }
        });
        return checkBoxCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createCategoryItem$lambda$6$lambda$5(ClearCacheBottomSheet this$0, CheckBoxCell this_apply, TelegramCacheData cacheData, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(cacheData, "$cacheData");
        StorageDiagramView.ClearViewData clearViewData = cacheData.getClearViewData();
        Intrinsics.checkNotNull(clearViewData);
        this$0.switchCheckBox(this_apply, clearViewData);
    }

    private final void switchCheckBox(CheckBoxCell checkBoxCell, StorageDiagramView.ClearViewData clearViewData) {
        EnumMap<TelegramCacheType, TelegramCacheData> enumMap = this.data;
        int i = 0;
        if (!enumMap.isEmpty()) {
            Iterator it = enumMap.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                StorageDiagramView.ClearViewData clearViewData2 = ((TelegramCacheData) ((Map.Entry) it.next()).getValue()).getClearViewData();
                if (clearViewData2 != null ? clearViewData2.isClear() : false) {
                    i2++;
                }
            }
            i = i2;
        }
        if (i == 1 && clearViewData.isClear()) {
            AndroidUtilities.shakeView(checkBoxCell.getCheckBoxView());
            return;
        }
        clearViewData.setClear(!clearViewData.isClear());
        checkBoxCell.setChecked(clearViewData.isClear(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BottomSheet.BottomSheetCell initClearButton() {
        final BottomSheet.BottomSheetCell bottomSheetCell = new BottomSheet.BottomSheetCell(getContext(), 2);
        bottomSheetCell.setTextAndIcon(LocaleController.getString("ClearMediaCache", C3316R.string.ClearMediaCache), 0);
        bottomSheetCell.getTextView().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ClearCacheBottomSheet.initClearButton$lambda$13$lambda$12(ClearCacheBottomSheet.this, bottomSheetCell, view);
            }
        });
        return bottomSheetCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initClearButton$lambda$13$lambda$12(final ClearCacheBottomSheet this$0, BottomSheet.BottomSheetCell this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.dismiss();
        final AlertDialog alertDialog = new AlertDialog(this_apply.getContext(), 3);
        alertDialog.setCanCancel(false);
        alertDialog.showDelayed(500L);
        this$0.fragment.showDialog(alertDialog);
        EnumMap<TelegramCacheType, TelegramCacheData> enumMap = this$0.data;
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = enumMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            StorageDiagramView.ClearViewData clearViewData = ((TelegramCacheData) entry.getValue()).getClearViewData();
            if (clearViewData != null ? clearViewData.isClear() : false) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ClearCacheBottomSheet.initClearButton$lambda$13$lambda$12$lambda$11(ClearCacheBottomSheet.this, linkedHashMap, alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initClearButton$lambda$13$lambda$12$lambda$11(ClearCacheBottomSheet this$0, Map dataToDelete, final AlertDialog progressDialog) {
        List<TelegramCacheType> list;
        List<TelegramCacheData> list2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dataToDelete, "$dataToDelete");
        Intrinsics.checkNotNullParameter(progressDialog, "$progressDialog");
        Callbacks$Callback2<List<TelegramCacheType>, List<TelegramCacheData>> callbacks$Callback2 = this$0.onProcess;
        if (callbacks$Callback2 != null) {
            list = CollectionsKt___CollectionsKt.toList(dataToDelete.keySet());
            list2 = CollectionsKt___CollectionsKt.toList(dataToDelete.values());
            callbacks$Callback2.invoke(list, list2);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ClearCacheBottomSheet.initClearButton$lambda$13$lambda$12$lambda$11$lambda$10(AlertDialog.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initClearButton$lambda$13$lambda$12$lambda$11$lambda$10(AlertDialog progressDialog) {
        Intrinsics.checkNotNullParameter(progressDialog, "$progressDialog");
        progressDialog.dismiss();
    }

    /* compiled from: ClearCacheBottomSheet.kt */
    /* renamed from: com.iMe.fork.ui.dialog.ClearCacheBottomSheet$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
