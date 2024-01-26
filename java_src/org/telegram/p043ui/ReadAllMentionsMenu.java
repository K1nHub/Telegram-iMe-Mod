package org.telegram.p043ui;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.ReadAllMentionsMenu */
/* loaded from: classes5.dex */
public class ReadAllMentionsMenu {
    public static ActionBarPopupWindow show(int i, Activity activity, INavigationLayout iNavigationLayout, FrameLayout frameLayout, View view, Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        int i2;
        String str;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(activity);
        actionBarPopupWindowLayout.setMinimumWidth(AndroidUtilities.m107dp(200));
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) activity, true, true, resourcesProvider);
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m107dp(200));
        if (i == 0) {
            i2 = C3632R.string.ReadAllReactions;
            str = "ReadAllReactions";
        } else {
            i2 = C3632R.string.ReadAllMentions;
            str = "ReadAllMentions";
        }
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(str, i2), C3632R.C3634drawable.msg_seen);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ReadAllMentionsMenu$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ReadAllMentionsMenu.lambda$show$0(runnable, view2);
            }
        });
        actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(220);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(1000), Integer.MIN_VALUE));
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        float x = ((view.getX() + view.getWidth()) - actionBarPopupWindowLayout.getMeasuredWidth()) + AndroidUtilities.m107dp(8);
        float y = view.getY() - actionBarPopupWindowLayout.getMeasuredHeight();
        if (AndroidUtilities.isTablet()) {
            ViewGroup view2 = iNavigationLayout.getView();
            x += view2.getX() + view2.getPaddingLeft();
            y += view2.getY() + view2.getPaddingTop();
        }
        actionBarPopupWindow.showAtLocation(frameLayout, 51, (int) x, (int) y);
        return actionBarPopupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$0(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
    }
}
