package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import androidx.core.content.ContextCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.Bulletin;
/* renamed from: org.telegram.ui.Components.SelectSendAsPremiumHintBulletinLayout */
/* loaded from: classes6.dex */
public class SelectSendAsPremiumHintBulletinLayout extends Bulletin.MultiLineLayout {
    public SelectSendAsPremiumHintBulletinLayout(Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        super(context, resourcesProvider);
        this.imageView.setImageDrawable(ContextCompat.getDrawable(context, C3158R.C3160drawable.msg_premium_prolfilestar));
        this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor("undo_infoColor"), PorterDuff.Mode.SRC_IN));
        this.textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C3158R.string.SelectSendAsPeerPremiumHint)));
        Bulletin.UndoButton undoButton = new Bulletin.UndoButton(context, true, resourcesProvider);
        undoButton.setText(LocaleController.getString(C3158R.string.SelectSendAsPeerPremiumOpen));
        undoButton.setUndoAction(runnable);
        setButton(undoButton);
    }
}
