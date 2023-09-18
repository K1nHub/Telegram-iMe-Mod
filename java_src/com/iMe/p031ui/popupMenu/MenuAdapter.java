package com.iMe.p031ui.popupMenu;

import android.content.Context;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
/* compiled from: MenuAdapter.kt */
/* renamed from: com.iMe.ui.popupMenu.MenuAdapter */
/* loaded from: classes4.dex */
public final class MenuAdapter extends BaseAdapter {
    private final Context context;
    private int maxWidth;
    private final List<MenuItem> menuItems;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public MenuAdapter(Context context, List<MenuItem> menuItems) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(menuItems, "menuItems");
        this.context = context;
        this.menuItems = menuItems;
        measureMaxWidth();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.menuItems.size();
    }

    @Override // android.widget.Adapter
    public MenuItem getItem(int i) {
        return this.menuItems.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(C3473R.layout.fork_custom_menu_item, viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(view, "from(context).inflate(R.…menu_item, parent, false)");
            viewHolder = new ViewHolder(view);
            view.setTag(viewHolder);
        } else {
            Object tag = view.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.ui.popupMenu.MenuAdapter.ViewHolder");
            viewHolder = (ViewHolder) tag;
        }
        MenuItem menuItem = this.menuItems.get(i);
        viewHolder.getIcon().setImageResource(menuItem.getIconResId());
        ImageViewExtKt.setTint(viewHolder.getIcon(), menuItem.getIconColor());
        viewHolder.getTitle().setText(menuItem.getTitle());
        viewHolder.getTitle().setTextColor(menuItem.getItemTextColor());
        return view;
    }

    public final int getMaxWidth() {
        return this.maxWidth;
    }

    private final void measureMaxWidth() {
        TextPaint textPaint = new TextPaint();
        TextView textView = new TextView(this.context);
        textPaint.setTextSize(textView.getTextSize());
        textPaint.setTypeface(textView.getTypeface());
        for (MenuItem menuItem : this.menuItems) {
            float measureText = textPaint.measureText(menuItem.getTitle());
            if (measureText > this.maxWidth) {
                this.maxWidth = (int) measureText;
            }
        }
    }

    /* compiled from: MenuAdapter.kt */
    /* renamed from: com.iMe.ui.popupMenu.MenuAdapter$ViewHolder */
    /* loaded from: classes4.dex */
    private static final class ViewHolder {
        private final ImageView icon;
        private final TextView title;

        public ViewHolder(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            View findViewById = view.findViewById(C3473R.C3476id.menu_item_icon);
            Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.menu_item_icon)");
            this.icon = (ImageView) findViewById;
            View findViewById2 = view.findViewById(C3473R.C3476id.menu_item_title);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.menu_item_title)");
            this.title = (TextView) findViewById2;
        }

        public final ImageView getIcon() {
            return this.icon;
        }

        public final TextView getTitle() {
            return this.title;
        }
    }
}
