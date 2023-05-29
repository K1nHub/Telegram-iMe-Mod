package org.telegram.p044ui.ActionBar;

import android.content.Context;
import org.telegram.p044ui.ActionBar.AlertDialog;
/* renamed from: org.telegram.ui.ActionBar.DarkAlertDialog */
/* loaded from: classes5.dex */
public class DarkAlertDialog extends AlertDialog {
    public DarkAlertDialog(Context context, int i) {
        super(context, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.ActionBar.AlertDialog
    public int getThemedColor(int i) {
        if (i == Theme.key_dialogBackground) {
            return -14277082;
        }
        if (i == Theme.key_dialogTextBlack || i == Theme.key_dialogButton || i == Theme.key_dialogScrollGlow) {
            return -1;
        }
        return super.getThemedColor(i);
    }

    /* renamed from: org.telegram.ui.ActionBar.DarkAlertDialog$Builder */
    /* loaded from: classes5.dex */
    public static class Builder extends AlertDialog.Builder {
        public Builder(Context context) {
            super(new DarkAlertDialog(context, 0));
        }
    }
}
