package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Stories.recorder.ButtonWithCounterView;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.ActionBtnCell */
/* loaded from: classes6.dex */
public class ActionBtnCell extends FrameLayout {
    private final View backgroundView;
    private final ButtonWithCounterView button;
    private final Paint dividerPaint;
    private boolean drawDivider;
    private final Theme.ResourcesProvider resourcesProvider;

    public ActionBtnCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dividerPaint = new Paint(1);
        this.resourcesProvider = resourcesProvider;
        View view = new View(context);
        this.backgroundView = view;
        addView(view, LayoutHelper.createLinear(-1, -1));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
        this.button = buttonWithCounterView;
        addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48, 17, 14, 0, 14, 0));
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.button.setOnClickListener(onClickListener);
    }

    public void setStartGiveAwayStyle(int i, boolean z) {
        this.drawDivider = true;
        this.button.withCounterIcon();
        this.button.setShowZero(true);
        this.button.setEnabled(true);
        this.button.setCount(i, z);
        this.button.setText(LocaleController.formatString("BoostingStartGiveaway", C3632R.string.BoostingStartGiveaway, new Object[0]), z);
        this.backgroundView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
    }

    public void setGiftPremiumStyle(int i, boolean z, boolean z2) {
        this.drawDivider = true;
        this.button.withCounterIcon();
        this.button.setShowZero(true);
        this.button.setEnabled(z2);
        this.button.setCount(i, z);
        this.button.setText(LocaleController.formatString("GiftPremium", C3632R.string.GiftPremium, new Object[0]), z);
        this.backgroundView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
    }

    public void setActivateForFreeStyle() {
        this.drawDivider = true;
        this.button.setEnabled(true);
        this.button.setText(LocaleController.formatString("GiftPremiumActivateForFree", C3632R.string.GiftPremiumActivateForFree, new Object[0]), false);
        this.backgroundView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            this.dividerPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
            this.dividerPaint.setAlpha(255);
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), 1.0f, this.dividerPaint);
        }
    }

    public void updateLoading(boolean z) {
        this.button.setLoading(z);
    }

    public boolean isLoading() {
        return this.button.isLoading();
    }

    public void updateCounter(int i) {
        this.button.setCount(i, true);
    }

    public void setOkStyle(boolean z) {
        this.drawDivider = false;
        this.button.setShowZero(false);
        this.button.setEnabled(true);
        this.button.setText(z ? LocaleController.formatString("BoostingUseLink", C3632R.string.BoostingUseLink, new Object[0]) : LocaleController.formatString("OK", C3632R.string.OK, new Object[0]), false);
    }

    public void setCloseStyle() {
        this.drawDivider = false;
        this.button.setShowZero(false);
        this.button.setEnabled(true);
        this.button.setText(LocaleController.formatString("Close", C3632R.string.Close, new Object[0]), false);
    }

    public void setCloseStyle(boolean z) {
        setCloseStyle();
        this.drawDivider = z;
    }
}
