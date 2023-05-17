package com.iMe.p031ui.adapter.provider;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.ListPopupWindow;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.home.SelectableHeaderItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.PopupFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectableHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SelectableHeaderProvider$convert$1 */
/* loaded from: classes.dex */
public final class SelectableHeaderProvider$convert$1 extends Lambda implements Function1<LinearLayout, Unit> {
    final /* synthetic */ BaseViewHolder $helper;
    final /* synthetic */ SelectableHeaderItem $item;
    final /* synthetic */ SelectableHeaderProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectableHeaderProvider$convert$1(SelectableHeaderProvider selectableHeaderProvider, SelectableHeaderItem selectableHeaderItem, BaseViewHolder baseViewHolder) {
        super(1);
        this.this$0 = selectableHeaderProvider;
        this.$item = selectableHeaderItem;
        this.$helper = baseViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SelectableHeaderProvider.kt */
    /* renamed from: com.iMe.ui.adapter.provider.SelectableHeaderProvider$convert$1$1 */
    /* loaded from: classes.dex */
    public static final class C19871 extends Lambda implements Function1<View, Unit> {
        final /* synthetic */ BaseViewHolder $helper;
        final /* synthetic */ SelectableHeaderItem $item;
        final /* synthetic */ SelectableHeaderProvider this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19871(SelectableHeaderProvider selectableHeaderProvider, SelectableHeaderItem selectableHeaderItem, BaseViewHolder baseViewHolder) {
            super(1);
            this.this$0 = selectableHeaderProvider;
            this.$item = selectableHeaderItem;
            this.$helper = baseViewHolder;
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
            ListPopupWindow listPopupWindow3;
            ResourceManager resourceManager;
            Intrinsics.checkNotNullParameter(it, "it");
            listPopupWindow = this.this$0.popupWindow;
            if (listPopupWindow != null) {
                listPopupWindow2 = this.this$0.popupWindow;
                if (listPopupWindow2 != null) {
                    listPopupWindow2.dismiss();
                }
                this.this$0.popupWindow = null;
                return;
            }
            List<Integer> options = this.$item.getOptions();
            SelectableHeaderProvider selectableHeaderProvider = this.this$0;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(options, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Number number : options) {
                int intValue = number.intValue();
                resourceManager = selectableHeaderProvider.resourceManager;
                arrayList.add(resourceManager.getString(intValue));
            }
            this.this$0.popupWindow = PopupFactoryKt.createPopupWithOptions(this.$helper.getView(C3290R.C3293id.text_wallet_header), arrayList, new C19881(this.$helper, this.$item, this.this$0));
            listPopupWindow3 = this.this$0.popupWindow;
            if (listPopupWindow3 != null) {
                listPopupWindow3.show();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SelectableHeaderProvider.kt */
        /* renamed from: com.iMe.ui.adapter.provider.SelectableHeaderProvider$convert$1$1$1 */
        /* loaded from: classes.dex */
        public static final class C19881 extends Lambda implements Function2<Integer, String, Unit> {
            final /* synthetic */ BaseViewHolder $helper;
            final /* synthetic */ SelectableHeaderItem $item;
            final /* synthetic */ SelectableHeaderProvider this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19881(BaseViewHolder baseViewHolder, SelectableHeaderItem selectableHeaderItem, SelectableHeaderProvider selectableHeaderProvider) {
                super(2);
                this.$helper = baseViewHolder;
                this.$item = selectableHeaderItem;
                this.this$0 = selectableHeaderProvider;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
                invoke(num.intValue(), str);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this.$helper.setText(C3290R.C3293id.text_wallet_header, value);
                this.$item.getOnSelected().invoke(Integer.valueOf(i), value);
                this.this$0.popupWindow = null;
            }
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(LinearLayout linearLayout) {
        invoke2(linearLayout);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(LinearLayout applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        ViewExtKt.safeThrottledClick$default(applyForView, 0L, new C19871(this.this$0, this.$item, this.$helper), 1, null);
    }
}
