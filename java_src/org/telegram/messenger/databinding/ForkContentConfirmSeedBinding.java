package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.backup.switcher.BackupWordSwitcher;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkContentConfirmSeedBinding implements ViewBinding {
    private ForkContentConfirmSeedBinding(NestedScrollView nestedScrollView, BackupWordSwitcher backupWordSwitcher, BackupWordSwitcher backupWordSwitcher2, BackupWordSwitcher backupWordSwitcher3, BackupWordSwitcher backupWordSwitcher4, LinearLayout linearLayout) {
    }

    public static ForkContentConfirmSeedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentConfirmSeedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_content_confirm_seed, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentConfirmSeedBinding bind(View view) {
        int i = C3632R.C3635id.backup_word_switcher_1;
        BackupWordSwitcher backupWordSwitcher = (BackupWordSwitcher) ViewBindings.findChildViewById(view, i);
        if (backupWordSwitcher != null) {
            i = C3632R.C3635id.backup_word_switcher_2;
            BackupWordSwitcher backupWordSwitcher2 = (BackupWordSwitcher) ViewBindings.findChildViewById(view, i);
            if (backupWordSwitcher2 != null) {
                i = C3632R.C3635id.backup_word_switcher_3;
                BackupWordSwitcher backupWordSwitcher3 = (BackupWordSwitcher) ViewBindings.findChildViewById(view, i);
                if (backupWordSwitcher3 != null) {
                    i = C3632R.C3635id.backup_word_switcher_4;
                    BackupWordSwitcher backupWordSwitcher4 = (BackupWordSwitcher) ViewBindings.findChildViewById(view, i);
                    if (backupWordSwitcher4 != null) {
                        i = C3632R.C3635id.linear_switcher_wrapper;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            return new ForkContentConfirmSeedBinding((NestedScrollView) view, backupWordSwitcher, backupWordSwitcher2, backupWordSwitcher3, backupWordSwitcher4, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
