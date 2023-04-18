package org.telegram.p044ui.Cells;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.HeaderCell */
/* loaded from: classes5.dex */
public class HeaderCell extends FrameLayout {
    private ImageView expandImageView;
    private int height;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private SimpleTextView textView2;

    public void setText2Color(String str) {
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView == null) {
            return;
        }
        simpleTextView.setTextColor(Theme.getColor(str));
    }

    public void setText2Gravity(int i) {
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView == null) {
            return;
        }
        simpleTextView.setGravity(i);
    }

    public void removeText2TopMargin() {
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView == null) {
            return;
        }
        ((FrameLayout.LayoutParams) simpleTextView.getLayoutParams()).topMargin = 0;
    }

    public void setExpandableMode(boolean z, boolean z2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        if (z) {
            this.expandImageView.setVisibility(0);
            this.expandImageView.setRotation(z2 ? BitmapDescriptorFactory.HUE_RED : -90.0f);
            int i = layoutParams.rightMargin;
            int i2 = layoutParams.topMargin;
            layoutParams.leftMargin = i + (i2 * 2);
            layoutParams.bottomMargin = z2 ? 0 : i2;
        } else {
            this.expandImageView.setVisibility(8);
            layoutParams.leftMargin = layoutParams.rightMargin;
            layoutParams.bottomMargin = 0;
        }
        this.textView.setLayoutParams(layoutParams);
    }

    public void removeTopMargin() {
        setTopMargin(0, false);
    }

    public void setTopMargin(int i) {
        setTopMargin(i, true);
    }

    public HeaderCell(Context context) {
        this(context, "windowBackgroundWhiteBlueHeader", 21, 15, false, null);
    }

    public HeaderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, "windowBackgroundWhiteBlueHeader", 21, 15, false, resourcesProvider);
    }

    public HeaderCell(Context context, int i) {
        this(context, "windowBackgroundWhiteBlueHeader", i, 15, false, null);
    }

    public HeaderCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        this(context, "windowBackgroundWhiteBlueHeader", i, 15, false, resourcesProvider);
    }

    public HeaderCell(Context context, String str, int i, int i2, boolean z) {
        this(context, str, i, i2, z, null);
    }

    public HeaderCell(Context context, String str, int i, int i2, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, str, i, i2, 0, z, resourcesProvider);
    }

    public HeaderCell(Context context, String str, int i, int i2, int i3, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.height = 40;
        this.resourcesProvider = resourcesProvider;
        ImageView imageView = new ImageView(context);
        this.expandImageView = imageView;
        imageView.setImageResource(C3242R.C3244drawable.arrow_more);
        this.expandImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(str), PorterDuff.Mode.MULTIPLY));
        this.expandImageView.setVisibility(8);
        addView(this.expandImageView, LayoutHelper.createFrame(-2, -2, 51, i - 4, i2, 0, 0));
        TextView textView = new TextView(getContext());
        this.textView = textView;
        textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setMinHeight(AndroidUtilities.m50dp(this.height - i2));
        this.textView.setTextColor(getThemedColor(str));
        this.textView.setTag(str);
        addView(this.textView, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 5 : 3) | 48, i, i2, i, z ? 0 : i3));
        if (z) {
            SimpleTextView simpleTextView = new SimpleTextView(getContext());
            this.textView2 = simpleTextView;
            simpleTextView.setTextSize(13);
            this.textView2.setGravity((LocaleController.isRTL ? 3 : 5) | 48);
            addView(this.textView2, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 3 : 5) | 48, i, 21, i, i3));
        }
        ViewCompat.setAccessibilityHeading(this, true);
    }

    public void setHeight(int i) {
        TextView textView = this.textView;
        this.height = i;
        textView.setMinHeight(AndroidUtilities.m50dp(i) - ((FrameLayout.LayoutParams) this.textView.getLayoutParams()).topMargin);
    }

    public void setTopMargin(int i, boolean z) {
        ((FrameLayout.LayoutParams) this.textView.getLayoutParams()).topMargin = AndroidUtilities.m50dp(i);
        if (z) {
            setHeight(this.height);
        }
    }

    public void setBottomMargin(int i) {
        ((FrameLayout.LayoutParams) this.textView.getLayoutParams()).bottomMargin = AndroidUtilities.m50dp(i);
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView != null) {
            ((FrameLayout.LayoutParams) simpleTextView.getLayoutParams()).bottomMargin = AndroidUtilities.m50dp(i);
        }
    }

    public void setEnabled(boolean z, ArrayList<Animator> arrayList) {
        if (arrayList != null) {
            TextView textView = this.textView;
            Property property = View.ALPHA;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(textView, property, fArr));
            return;
        }
        this.textView.setAlpha(z ? 1.0f : 0.5f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    public void setTextSize(float f) {
        this.textView.setTextSize(1, f);
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setText(CharSequence charSequence) {
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setText(charSequence);
    }

    public void setText2(CharSequence charSequence) {
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView == null) {
            return;
        }
        simpleTextView.setText(charSequence);
    }

    public TextView getTextView() {
        return this.textView;
    }

    public SimpleTextView getTextView2() {
        return this.textView2;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            accessibilityNodeInfo.setHeading(true);
        } else if (i >= 19 && (collectionItemInfo = accessibilityNodeInfo.getCollectionItemInfo()) != null) {
            accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(collectionItemInfo.getRowIndex(), collectionItemInfo.getRowSpan(), collectionItemInfo.getColumnIndex(), collectionItemInfo.getColumnSpan(), true));
        }
        accessibilityNodeInfo.setEnabled(true);
    }

    private int getThemedColor(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Integer color = resourcesProvider != null ? resourcesProvider.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }
}
