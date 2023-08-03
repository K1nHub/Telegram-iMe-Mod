package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Bulletin;
/* renamed from: org.telegram.ui.Components.SelectSendAsPremiumHintBulletinLayout */
/* loaded from: classes6.dex */
public class SelectSendAsPremiumHintBulletinLayout extends Bulletin.MultiLineLayout {
    public SelectSendAsPremiumHintBulletinLayout(Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        super(context, resourcesProvider);
        this.imageView.setImageDrawable(ContextCompat.getDrawable(context, C3419R.C3421drawable.msg_premium_prolfilestar));
        this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_undo_infoColor), PorterDuff.Mode.SRC_IN));
        this.textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3419R.string.SelectSendAsPeerPremiumHint)));
        Bulletin.UndoButton undoButton = new Bulletin.UndoButton(context, true, resourcesProvider);
        undoButton.setText(LocaleController.getString(C3419R.string.SelectSendAsPeerPremiumOpen));
        undoButton.setUndoAction(runnable);
        setButton(undoButton);
    }
}
