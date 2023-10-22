package com.iMe.p030ui.popupMenu;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: PopupMenuExt.kt */
/* renamed from: com.iMe.ui.popupMenu.PopupMenuExtKt */
/* loaded from: classes3.dex */
public final class PopupMenuExtKt {
    public static final void showPopupMenu(View view, final List<MenuItem> items) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        MenuAdapter menuAdapter = new MenuAdapter(context, items);
        final ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        listPopupWindow.setWidth(menuAdapter.getMaxWidth() + ViewExtKt.getDpToPx(124));
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(view);
        listPopupWindow.setVerticalOffset((-view.getHeight()) / 2);
        listPopupWindow.setHorizontalOffset((-listPopupWindow.getWidth()) + (view.getHeight() / 2));
        listPopupWindow.setAnimationStyle(C3630R.style.DropDownFromTopAnimation);
        listPopupWindow.setAdapter(menuAdapter);
        listPopupWindow.setBackgroundDrawable(createRoundedBackground(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground), 16.0f));
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.iMe.ui.popupMenu.PopupMenuExtKt$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                PopupMenuExtKt.showPopupMenu$lambda$1$lambda$0(items, listPopupWindow, adapterView, view2, i, j);
            }
        });
        listPopupWindow.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPopupMenu$lambda$1$lambda$0(List items, ListPopupWindow this_apply, AdapterView adapterView, View view, int i, long j) {
        Intrinsics.checkNotNullParameter(items, "$items");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        ((MenuItem) items.get(i)).getOnMenuClick().invoke();
        this_apply.dismiss();
    }

    private static final GradientDrawable createRoundedBackground(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(f);
        return gradientDrawable;
    }
}
