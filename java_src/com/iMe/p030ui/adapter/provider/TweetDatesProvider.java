package com.iMe.p030ui.adapter.provider;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.twitter.TweetsDateItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TweetDatesProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetDatesProvider */
/* loaded from: classes3.dex */
public final class TweetDatesProvider extends BaseNodeProvider<TweetsDateItem> {
    private final int itemViewType = IdFabric$ViewTypes.TWEETS_DATE;
    private final int layoutId = C3634R.layout.fork_recycle_item_date;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TweetsDateItem) obj, (List<? extends Object>) list);
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
    public void convert(BaseViewHolder helper, TweetsDateItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3634R.C3637id.text_date;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, Theme.key_chat_serviceText), i).setText(i, item.getDate()), i, new Function1<TextView, Unit>() { // from class: com.iMe.ui.adapter.provider.TweetDatesProvider$convert$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextView textView) {
                invoke2(textView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(final TextView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (ViewCompat.isLaidOut(applyForView) && !applyForView.isLayoutRequested()) {
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_chat_serviceBackground)));
                    materialShapeDrawable.setCornerSize(applyForView.getHeight() / 2.0f);
                    applyForView.setBackground(materialShapeDrawable);
                    return;
                }
                applyForView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.adapter.provider.TweetDatesProvider$convert$1$invoke$$inlined$doOnLayout$1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                        Intrinsics.checkNotNullParameter(view, "view");
                        view.removeOnLayoutChangeListener(this);
                        TextView textView = applyForView;
                        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
                        materialShapeDrawable2.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_chat_serviceBackground)));
                        materialShapeDrawable2.setCornerSize(view.getHeight() / 2.0f);
                        textView.setBackground(materialShapeDrawable2);
                    }
                });
            }
        });
    }

    public void convert(BaseViewHolder helper, TweetsDateItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3634R.C3637id.text_date, item.getDate());
    }
}
