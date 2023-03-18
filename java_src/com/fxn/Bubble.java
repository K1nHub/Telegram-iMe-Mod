package com.fxn;

import android.content.Context;
import android.graphics.drawable.PaintDrawable;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.fxn.parser.MenuItem;
import com.fxn.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Bubble.kt */
/* loaded from: classes.dex */
public final class Bubble extends FrameLayout {
    private View badgeNotification;
    private LinearLayout container;
    private final int dpAsPixels;
    private final int dpAsPixelsIcons;
    private final int dpAsPixelsVertical;
    private final int dpAsicon_padding;
    private ImageView icon;
    private FrameLayout iconWrapper;
    private MenuItem item;
    private TextView title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Bubble(Context context, MenuItem item) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
        this.icon = new ImageView(context);
        this.iconWrapper = new FrameLayout(context);
        View view = new View(context);
        PaintDrawable paintDrawable = new PaintDrawable(-65536);
        paintDrawable.setCornerRadius(UtilsKt.dpToPx(7, context));
        view.setBackground(paintDrawable);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(UtilsKt.dpToPx(7, context), UtilsKt.dpToPx(7, context));
        layoutParams.gravity = 8388661;
        view.setLayoutParams(layoutParams);
        view.setVisibility(this.item.getBadgeVisible() ? 0 : 8);
        this.badgeNotification = view;
        this.title = new TextView(context);
        this.container = new LinearLayout(context);
        int horizontal_padding = (int) this.item.getHorizontal_padding();
        this.dpAsPixels = horizontal_padding;
        int vertical_padding = (int) this.item.getVertical_padding();
        this.dpAsPixelsVertical = vertical_padding;
        int icon_size = (int) this.item.getIcon_size();
        this.dpAsPixelsIcons = icon_size;
        int icon_padding = (int) this.item.getIcon_padding();
        this.dpAsicon_padding = icon_padding;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams2.gravity = 17;
        setLayoutParams(layoutParams2);
        LinearLayout linearLayout = this.container;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        linearLayout.setPadding(horizontal_padding, vertical_padding, horizontal_padding, vertical_padding);
        layoutParams3.gravity = 17;
        linearLayout.setLayoutParams(layoutParams3);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(0);
        FrameLayout frameLayout = this.iconWrapper;
        ImageView imageView = this.icon;
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(icon_size, icon_size);
        layoutParams4.gravity = 16;
        imageView.setLayoutParams(layoutParams4);
        frameLayout.addView(this.icon);
        frameLayout.addView(this.badgeNotification);
        TextView textView = this.title;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
        textView.setPadding(icon_padding, 0, 0, 0);
        layoutParams5.gravity = 16;
        textView.setTextAlignment(1);
        textView.setLayoutParams(layoutParams5);
        textView.setMaxLines(1);
        textView.setTextSize(this.item.getTitle_size() / textView.getResources().getDisplayMetrics().scaledDensity);
        textView.setVisibility(8);
        if (this.item.getCustom_font() != 0) {
            try {
                textView.setTypeface(ResourcesCompat.getFont(context, this.item.getCustom_font()));
            } catch (Exception e) {
                Log.e("BubbleTabBar", "Could not get typeface: " + e.getMessage());
            }
        }
        setId(this.item.getId());
        setEnabled(this.item.getEnabled());
        this.title.setText(this.item.getTitle());
        this.title.setTextColor(this.item.getIconColor());
        this.icon.setImageResource(this.item.getIcon());
        if (isEnabled()) {
            UtilsKt.setColorStateListAnimator(this.icon, this.item.getIconColor(), this.item.getDisabled_icon_color());
        } else {
            this.icon.setColorFilter(this.item.getDisabled_icon_color());
            setOnClickListener(null);
        }
        this.container.addView(this.iconWrapper);
        this.container.addView(this.title);
        addView(this.container);
    }

    public final MenuItem getItem() {
        return this.item;
    }

    public final void setItem(MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "<set-?>");
        this.item = menuItem;
    }

    public final void setBadgeVisible(boolean z) {
        this.badgeNotification.setVisibility(z ? 0 : 8);
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.icon.jumpDrawablesToCurrentState();
        if (z || !isSelected()) {
            return;
        }
        setSelected(false);
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        if (z) {
            UtilsKt.expand(this.title, this.container, this.item.getTabBackground());
        } else {
            UtilsKt.collapse(this.title, this.container, this.item.getTabBackground());
        }
    }
}
