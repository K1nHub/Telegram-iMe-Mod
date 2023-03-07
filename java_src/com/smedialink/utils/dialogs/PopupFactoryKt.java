package com.smedialink.utils.dialogs;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.ListPopupWindow;
import com.smedialink.p031ui.translate.PopupOptionsAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: PopupFactory.kt */
/* loaded from: classes3.dex */
public final class PopupFactoryKt {
    public static final ListPopupWindow createPopupWithOptions(View view, final List<String> options, final Function2<? super Integer, ? super String, Unit> onSelected) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        final ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        listPopupWindow.setWidth(AndroidUtilities.displaySize.x / 2);
        listPopupWindow.setAnchorView(view);
        listPopupWindow.setBackgroundDrawable(new ColorDrawable(Theme.getColor("windowBackgroundWhite")));
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        listPopupWindow.setAdapter(new PopupOptionsAdapter(context, options));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.smedialink.utils.dialogs.PopupFactoryKt$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                PopupFactoryKt.m1830createPopupWithOptions$lambda1$lambda0(Function2.this, options, listPopupWindow, adapterView, view2, i, j);
            }
        });
        return listPopupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createPopupWithOptions$lambda-1$lambda-0  reason: not valid java name */
    public static final void m1830createPopupWithOptions$lambda1$lambda0(Function2 onSelected, List options, ListPopupWindow this_apply, AdapterView adapterView, View view, int i, long j) {
        Intrinsics.checkNotNullParameter(onSelected, "$onSelected");
        Intrinsics.checkNotNullParameter(options, "$options");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        onSelected.invoke(Integer.valueOf(i), options.get(i));
        this_apply.dismiss();
    }
}
