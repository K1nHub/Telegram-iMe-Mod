package org.telegram.p044ui.Components;

import android.content.Context;
import android.graphics.Typeface;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.AppIconsSelectorCell;
import org.telegram.p044ui.Components.Bulletin;
import org.telegram.p044ui.LauncherIconController;
/* renamed from: org.telegram.ui.Components.AppIconBulletinLayout */
/* loaded from: classes6.dex */
public class AppIconBulletinLayout extends Bulletin.ButtonLayout {
    public final AppIconsSelectorCell.AdaptiveIconImageView imageView;
    public final TextView textView;

    public AppIconBulletinLayout(Context context, LauncherIconController.LauncherIcon launcherIcon, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        AppIconsSelectorCell.AdaptiveIconImageView adaptiveIconImageView = new AppIconsSelectorCell.AdaptiveIconImageView(getContext());
        this.imageView = adaptiveIconImageView;
        TextView textView = new TextView(getContext());
        this.textView = textView;
        addView(adaptiveIconImageView, LayoutHelper.createFrameRelatively(30.0f, 30.0f, 8388627, 12.0f, 8.0f, 12.0f, 8.0f));
        textView.setGravity(8388611);
        textView.setPadding(0, AndroidUtilities.m54dp(8), 0, AndroidUtilities.m54dp(8));
        textView.setTextColor(getThemedColor(Theme.key_undo_infoColor));
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(Typeface.SANS_SERIF);
        addView(textView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 8388627, 56.0f, BitmapDescriptorFactory.HUE_RED, 16.0f, BitmapDescriptorFactory.HUE_RED));
        int i = launcherIcon.background;
        if (i == 0) {
            adaptiveIconImageView.setBackgroundColor(ContextCompat.getColor(context, launcherIcon.backgroundColor));
        } else {
            adaptiveIconImageView.setImageDrawable(ContextCompat.getDrawable(context, i));
        }
        adaptiveIconImageView.setOuterPadding(AndroidUtilities.m54dp(8));
        adaptiveIconImageView.setBackgroundOuterPadding(AndroidUtilities.m54dp(24));
        adaptiveIconImageView.setForeground(launcherIcon.foreground);
        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C3290R.string.AppIconChangedTo, LocaleController.getString(launcherIcon.title))));
    }
}
