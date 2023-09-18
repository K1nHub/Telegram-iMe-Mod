package com.iMe.utils.extentions.common;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.utils.base.SimpleBaseAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimpleInitExtensions.kt */
/* loaded from: classes6.dex */
public final class SimpleInitExtensionsKt {
    public static final <Item> void quickInit(RecyclerView recyclerView, List<? extends Item> items, int i, final Function3<? super View, ? super Item, ? super Integer, Unit> bind) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(bind, "bind");
        recyclerView.setAdapter(new SimpleBaseAdapter(items, i, new Function3<View, Item, Integer, Unit>() { // from class: com.iMe.utils.extentions.common.SimpleInitExtensionsKt$quickInit$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Object obj, Integer num) {
                invoke(view, (View) obj, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(View $receiver, Item item, int i2) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                bind.invoke($receiver, item, Integer.valueOf(i2));
            }
        }));
    }
}
