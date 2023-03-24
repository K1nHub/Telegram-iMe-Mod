package com.smedialink.p031ui.forward;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Property;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: CustomForwardSwitchArchiveImageView.kt */
/* renamed from: com.smedialink.ui.forward.CustomForwardSwitchArchiveImageView */
/* loaded from: classes3.dex */
public final class CustomForwardSwitchArchiveImageView extends ImageView {
    private boolean isArchive;
    private final AnimatorSet switchAnimator;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomForwardSwitchArchiveImageView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.switchAnimator = new AnimatorSet();
        setScaleType(ImageView.ScaleType.CENTER);
        setColorFilter(new PorterDuffColorFilter(Theme.getColor("actionBarDefaultTitle"), PorterDuff.Mode.SRC_IN));
        setBackground(Theme.createSelectorDrawable(Theme.getColor("actionBarActionModeDefaultSelector")));
        setImageResource(C3301R.C3303drawable.fork_custom_forward_switch_archive);
    }

    public final ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "actionBarActionModeDefaultSelector"));
        return arrayListOf;
    }

    public final boolean toggleArchive() {
        this.isArchive = !this.isArchive;
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat(ImageView.SCALE_X, BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat(ImageView.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
        Intrinsics.checkNotNullExpressionValue(ofPropertyValuesHolder, "ofPropertyValuesHolder(t…fFloat(SCALE_Y, SCALE_0))");
        ofPropertyValuesHolder.setDuration(200L);
        ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat(ImageView.SCALE_X, 1.0f), PropertyValuesHolder.ofFloat(ImageView.SCALE_Y, 1.0f));
        Intrinsics.checkNotNullExpressionValue(ofPropertyValuesHolder2, "ofPropertyValuesHolder(t…fFloat(SCALE_Y, SCALE_1))");
        ofPropertyValuesHolder2.setDuration(200L);
        setImageResource(this.isArchive ? C3301R.C3303drawable.fork_custom_forward_switch_main : C3301R.C3303drawable.fork_custom_forward_switch_archive);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(ofPropertyValuesHolder, ofPropertyValuesHolder2);
        Property property = ImageView.ROTATION;
        float[] fArr = new float[1];
        fArr[0] = this.isArchive ? 360.0f : -360.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, property, fArr);
        ofFloat.setDuration(450L);
        this.switchAnimator.playTogether(ofFloat, animatorSet);
        this.switchAnimator.start();
        return this.isArchive;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m51dp(36.0f), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m51dp(36.0f), 1073741824));
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.switchAnimator.cancel();
    }
}
