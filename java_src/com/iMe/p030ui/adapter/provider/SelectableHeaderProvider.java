package com.iMe.p030ui.adapter.provider;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.ListPopupWindow;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.PopupFactoryKt;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: SelectableHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SelectableHeaderProvider */
/* loaded from: classes.dex */
public final class SelectableHeaderProvider extends BaseNodeProvider<SelectableHeaderItem> {
    private final int itemViewType;
    private final int layoutId;
    private ListPopupWindow popupWindow;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (SelectableHeaderItem) obj, (List<? extends Object>) list);
    }

    public SelectableHeaderProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.SELECTABLE_HEADER;
        this.layoutId = C3630R.layout.fork_recycle_item_wallet_dashboard_header_with_icon;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(final BaseViewHolder helper, final SelectableHeaderItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3630R.C3633id.text_wallet_header;
        int i2 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, i2), i).setText(i, this.resourceManager.getString(item.getTitleResId()));
        int i3 = C3630R.C3633id.header_info_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedImageColor(text.setImageResource(i3, item.getIcon()), i3, i2), C3630R.C3633id.linear_root, new Function1<LinearLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.SelectableHeaderProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LinearLayout linearLayout) {
                invoke2(linearLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(LinearLayout applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                final SelectableHeaderProvider selectableHeaderProvider = SelectableHeaderProvider.this;
                final SelectableHeaderItem selectableHeaderItem = item;
                final BaseViewHolder baseViewHolder = helper;
                ViewExtKt.safeThrottledClick$default(applyForView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.adapter.provider.SelectableHeaderProvider$convert$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(View view) {
                        invoke2(view);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(View it) {
                        ListPopupWindow listPopupWindow;
                        ListPopupWindow listPopupWindow2;
                        int collectionSizeOrDefault;
                        ResourceManager resourceManager;
                        Intrinsics.checkNotNullParameter(it, "it");
                        listPopupWindow = SelectableHeaderProvider.this.popupWindow;
                        if (listPopupWindow != null) {
                            listPopupWindow2 = SelectableHeaderProvider.this.popupWindow;
                            if (listPopupWindow2 != null) {
                                listPopupWindow2.dismiss();
                            }
                            SelectableHeaderProvider.this.popupWindow = null;
                            return;
                        }
                        List<Integer> options = selectableHeaderItem.getOptions();
                        SelectableHeaderProvider selectableHeaderProvider2 = SelectableHeaderProvider.this;
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(options, 10);
                        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                        for (Number number : options) {
                            int intValue = number.intValue();
                            resourceManager = selectableHeaderProvider2.resourceManager;
                            arrayList.add(resourceManager.getString(intValue));
                        }
                        SelectableHeaderProvider selectableHeaderProvider3 = SelectableHeaderProvider.this;
                        View view = baseViewHolder.getView(C3630R.C3633id.text_wallet_header);
                        Integer valueOf = Integer.valueOf(AndroidUtilities.m102dp(10));
                        final BaseViewHolder baseViewHolder2 = baseViewHolder;
                        final SelectableHeaderItem selectableHeaderItem2 = selectableHeaderItem;
                        final SelectableHeaderProvider selectableHeaderProvider4 = SelectableHeaderProvider.this;
                        ListPopupWindow createPopupWithOptions$default = PopupFactoryKt.createPopupWithOptions$default(view, arrayList, valueOf, null, new Function2<Integer, String, Unit>() { // from class: com.iMe.ui.adapter.provider.SelectableHeaderProvider.convert.1.1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
                                invoke(num.intValue(), str);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(int i4, String value) {
                                Intrinsics.checkNotNullParameter(value, "value");
                                BaseViewHolder.this.setText(C3630R.C3633id.text_wallet_header, value);
                                selectableHeaderItem2.getOnSelected().invoke(Integer.valueOf(i4), value);
                                selectableHeaderProvider4.popupWindow = null;
                            }
                        }, 4, null);
                        createPopupWithOptions$default.show();
                        selectableHeaderProvider3.popupWindow = createPopupWithOptions$default;
                    }
                }, 1, null);
            }
        });
    }

    public void convert(BaseViewHolder helper, SelectableHeaderItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3630R.C3633id.text_wallet_header, this.resourceManager.getString(item.getTitleResId()));
    }
}
