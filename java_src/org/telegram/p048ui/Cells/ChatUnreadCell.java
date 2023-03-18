package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.ChatUnreadCell */
/* loaded from: classes5.dex */
public class ChatUnreadCell extends FrameLayout {
    private FrameLayout backgroundLayout;
    private ImageView imageView;
    private Theme.ResourcesProvider resourcesProvider;
    private TextView textView;

    public ChatUnreadCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context);
        this.backgroundLayout = frameLayout;
        frameLayout.setBackgroundResource(C3286R.C3288drawable.newmsg_divider);
        this.backgroundLayout.getBackground().setColorFilter(new PorterDuffColorFilter(getColor("chat_unreadMessagesStartBackground"), PorterDuff.Mode.MULTIPLY));
        addView(this.backgroundLayout, LayoutHelper.createFrame(-1, 27, 51, 0, 7, 0, 0));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setImageResource(C3286R.C3288drawable.ic_ab_new);
        this.imageView.setColorFilter(new PorterDuffColorFilter(getColor("chat_unreadMessagesStartArrowIcon"), PorterDuff.Mode.MULTIPLY));
        this.imageView.setPadding(0, AndroidUtilities.m50dp(2), 0, 0);
        this.backgroundLayout.addView(this.imageView, LayoutHelper.createFrame(-2, -2, 21, 0, 0, 10, 0));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setPadding(0, 0, 0, AndroidUtilities.m50dp(1));
        this.textView.setTextSize(1, 14.0f);
        this.textView.setTextColor(getColor("chat_unreadMessagesStartText"));
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.textView, LayoutHelper.createFrame(-2, -2, 17));
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    public ImageView getImageView() {
        return this.imageView;
    }

    public TextView getTextView() {
        return this.textView;
    }

    public FrameLayout getBackgroundLayout() {
        return this.backgroundLayout;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(40), 1073741824));
    }

    private int getColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }
}
