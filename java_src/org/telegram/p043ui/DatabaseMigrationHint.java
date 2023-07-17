package org.telegram.p043ui;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
/* renamed from: org.telegram.ui.DatabaseMigrationHint */
/* loaded from: classes5.dex */
public class DatabaseMigrationHint extends FrameLayout {
    LinearLayout container;
    TextView description1;
    TextView description2;
    RLottieImageView stickerView;
    TextView title;

    public DatabaseMigrationHint(Context context, int i) {
        super(context);
        LinearLayout linearLayout = new LinearLayout(context);
        this.container = linearLayout;
        linearLayout.setOrientation(1);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.stickerView = rLottieImageView;
        rLottieImageView.setAnimation(C3417R.raw.db_migration_placeholder, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        this.stickerView.getAnimatedDrawable().setAutoRepeat(1);
        this.stickerView.playAnimation();
        this.container.addView(this.stickerView, LayoutHelper.createLinear((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION, (int) ImageReceiver.DEFAULT_CROSSFADE_DURATION, 1));
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTextSize(1, 24.0f);
        this.title.setText(LocaleController.getString("OptimizingTelegram", C3417R.string.OptimizingTelegram));
        TextView textView2 = this.title;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView2.setTextColor(Theme.getColor(i2));
        this.title.setGravity(1);
        this.container.addView(this.title, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 50, 32, 50, 0));
        TextView textView3 = new TextView(context);
        this.description1 = textView3;
        textView3.setLineSpacing(AndroidUtilities.m54dp(2), 1.0f);
        this.description1.setTextSize(1, 14.0f);
        this.description1.setText(LocaleController.getString("OptimizingTelegramDescription1", C3417R.string.OptimizingTelegramDescription1));
        this.description1.setTextColor(Theme.getColor(i2));
        this.description1.setGravity(1);
        this.container.addView(this.description1, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 36, 20, 36, 0));
        TextView textView4 = new TextView(context);
        this.description2 = textView4;
        textView4.setTextSize(1, 14.0f);
        this.description2.setText(LocaleController.getString("OptimizingTelegramDescription2", C3417R.string.OptimizingTelegramDescription2));
        this.description2.setTextColor(Theme.getColor(i2));
        this.description2.setGravity(1);
        this.container.addView(this.description2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 36, 24, 36, 0));
        addView(this.container, LayoutHelper.createFrame(-1, -2, 16));
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        setOnTouchListener(new View.OnTouchListener(this) { // from class: org.telegram.ui.DatabaseMigrationHint.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }
}
