package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.backup.BackupWordView;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkContentBackupNumberWordBinding implements ViewBinding {
    private ForkContentBackupNumberWordBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, BackupWordView backupWordView) {
    }

    public static ForkContentBackupNumberWordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentBackupNumberWordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_content_backup_number_word, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentBackupNumberWordBinding bind(View view) {
        int i = C3630R.C3633id.text_number;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            i = C3630R.C3633id.view_backup_word;
            BackupWordView backupWordView = (BackupWordView) ViewBindings.findChildViewById(view, i);
            if (backupWordView != null) {
                return new ForkContentBackupNumberWordBinding((LinearLayout) view, appCompatTextView, backupWordView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
