package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.backup.BackupWordView;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkContentWordSwitcherBinding implements ViewBinding {
    public final ConstraintLayout constraintWords;
    private final ConstraintLayout rootView;
    public final AppCompatTextView textTitle;

    private ForkContentWordSwitcherBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, BackupWordView backupWordView, BackupWordView backupWordView2, BackupWordView backupWordView3) {
        this.rootView = constraintLayout;
        this.constraintWords = constraintLayout2;
        this.textTitle = appCompatTextView;
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentWordSwitcherBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentWordSwitcherBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_content_word_switcher, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentWordSwitcherBinding bind(View view) {
        int i = C3632R.C3635id.constraint_words;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C3632R.C3635id.text_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                i = C3632R.C3635id.view_backup_word_1;
                BackupWordView backupWordView = (BackupWordView) ViewBindings.findChildViewById(view, i);
                if (backupWordView != null) {
                    i = C3632R.C3635id.view_backup_word_2;
                    BackupWordView backupWordView2 = (BackupWordView) ViewBindings.findChildViewById(view, i);
                    if (backupWordView2 != null) {
                        i = C3632R.C3635id.view_backup_word_3;
                        BackupWordView backupWordView3 = (BackupWordView) ViewBindings.findChildViewById(view, i);
                        if (backupWordView3 != null) {
                            return new ForkContentWordSwitcherBinding((ConstraintLayout) view, constraintLayout, appCompatTextView, backupWordView, backupWordView2, backupWordView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
