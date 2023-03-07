package org.telegram.p048ui;

import android.content.Context;
import android.view.View;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ChooseSpeedLayout;
import org.telegram.p048ui.Components.PopupSwipeBackLayout;
/* renamed from: org.telegram.ui.ChooseSpeedLayout */
/* loaded from: classes5.dex */
public class ChooseSpeedLayout {
    ActionBarMenuSubItem[] speedItems = new ActionBarMenuSubItem[5];
    ActionBarPopupWindow.ActionBarPopupWindowLayout speedSwipeBackLayout;

    /* renamed from: org.telegram.ui.ChooseSpeedLayout$Callback */
    /* loaded from: classes5.dex */
    public interface Callback {
        void onSpeedSelected(float f);
    }

    public ChooseSpeedLayout(Context context, final PopupSwipeBackLayout popupSwipeBackLayout, final Callback callback) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context, 0, null);
        this.speedSwipeBackLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setFitItems(true);
        ActionBarMenuSubItem addItem = ActionBarMenuItem.addItem(this.speedSwipeBackLayout, C3158R.C3160drawable.msg_arrow_back, LocaleController.getString("Back", C3158R.string.Back), false, null);
        addItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseSpeedLayout$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PopupSwipeBackLayout.this.closeForeground();
            }
        });
        addItem.setColors(-328966, -328966);
        addItem.setSelectorColor(268435455);
        ActionBarMenuSubItem addItem2 = ActionBarMenuItem.addItem(this.speedSwipeBackLayout, C3158R.C3160drawable.msg_speed_0_2, LocaleController.getString("SpeedVerySlow", C3158R.string.SpeedVerySlow), false, null);
        addItem2.setColors(-328966, -328966);
        addItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseSpeedLayout$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseSpeedLayout.Callback.this.onSpeedSelected(0.25f);
            }
        });
        addItem2.setSelectorColor(268435455);
        this.speedItems[0] = addItem2;
        ActionBarMenuSubItem addItem3 = ActionBarMenuItem.addItem(this.speedSwipeBackLayout, C3158R.C3160drawable.msg_speed_slow, LocaleController.getString("SpeedSlow", C3158R.string.SpeedSlow), false, null);
        addItem3.setColors(-328966, -328966);
        addItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseSpeedLayout$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseSpeedLayout.Callback.this.onSpeedSelected(0.5f);
            }
        });
        addItem3.setSelectorColor(268435455);
        this.speedItems[1] = addItem3;
        ActionBarMenuSubItem addItem4 = ActionBarMenuItem.addItem(this.speedSwipeBackLayout, C3158R.C3160drawable.msg_speed_normal, LocaleController.getString("SpeedNormal", C3158R.string.SpeedNormal), false, null);
        addItem4.setColors(-328966, -328966);
        addItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseSpeedLayout$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseSpeedLayout.Callback.this.onSpeedSelected(1.0f);
            }
        });
        addItem4.setSelectorColor(268435455);
        this.speedItems[2] = addItem4;
        ActionBarMenuSubItem addItem5 = ActionBarMenuItem.addItem(this.speedSwipeBackLayout, C3158R.C3160drawable.msg_speed_fast, LocaleController.getString("SpeedFast", C3158R.string.SpeedFast), false, null);
        addItem5.setColors(-328966, -328966);
        addItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseSpeedLayout$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseSpeedLayout.Callback.this.onSpeedSelected(1.5f);
            }
        });
        addItem5.setSelectorColor(268435455);
        this.speedItems[3] = addItem5;
        ActionBarMenuSubItem addItem6 = ActionBarMenuItem.addItem(this.speedSwipeBackLayout, C3158R.C3160drawable.msg_speed_superfast, LocaleController.getString("SpeedVeryFast", C3158R.string.SpeedVeryFast), false, null);
        addItem6.setColors(-328966, -328966);
        addItem6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChooseSpeedLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseSpeedLayout.Callback.this.onSpeedSelected(2.0f);
            }
        });
        addItem6.setSelectorColor(268435455);
        this.speedItems[4] = addItem6;
    }

    public void update(float f) {
        for (int i = 0; i < this.speedItems.length; i++) {
            if ((i == 0 && Math.abs(f - 0.25f) < 0.001f) || ((i == 1 && Math.abs(f - 0.5f) < 0.001f) || ((i == 2 && Math.abs(f - 1.0f) < 0.001f) || ((i == 3 && Math.abs(f - 1.5f) < 0.001f) || (i == 4 && Math.abs(f - 2.0f) < 0.001f))))) {
                this.speedItems[i].setColors(-9718023, -9718023);
            } else {
                this.speedItems[i].setColors(-328966, -328966);
            }
        }
    }
}
