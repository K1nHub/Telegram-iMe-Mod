package com.iMe.utils.dialogs;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.ListPopupWindow;
import com.iMe.p030ui.translate.PopupOptionsAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: PopupFactory.kt */
/* loaded from: classes4.dex */
public final class PopupFactoryKt {
    public static /* synthetic */ ListPopupWindow createPopupWithOptions$default(View view, List list, Integer num, Integer num2, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            num2 = null;
        }
        return createPopupWithOptions(view, list, num, num2, function2);
    }

    public static final ListPopupWindow createPopupWithOptions(View view, final List<String> options, Integer num, Integer num2, final Function2<? super Integer, ? super String, Unit> onSelected) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        final ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        listPopupWindow.setWidth(AndroidUtilities.displaySize.x / 2);
        listPopupWindow.setAnchorView(view);
        int m102dp = AndroidUtilities.m102dp(6);
        listPopupWindow.setBackgroundDrawable(Theme.createRoundRectDrawable(m102dp, m102dp, Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground)));
        if (num != null) {
            listPopupWindow.setVerticalOffset(num.intValue());
        }
        if (num2 != null) {
            listPopupWindow.setHorizontalOffset(num2.intValue());
        }
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        listPopupWindow.setAdapter(new PopupOptionsAdapter(context, options));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.iMe.utils.dialogs.PopupFactoryKt$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                PopupFactoryKt.createPopupWithOptions$lambda$1$lambda$0(Function2.this, options, listPopupWindow, adapterView, view2, i, j);
            }
        });
        return listPopupWindow;
    }

    public static final void createPopupWithOptions$lambda$1$lambda$0(Function2 onSelected, List options, ListPopupWindow this_apply, AdapterView adapterView, View view, int i, long j) {
        Intrinsics.checkNotNullParameter(onSelected, "$onSelected");
        Intrinsics.checkNotNullParameter(options, "$options");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        onSelected.invoke(Integer.valueOf(i), options.get(i));
        this_apply.dismiss();
    }
}
