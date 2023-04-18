package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import org.telegram.messenger.C3242R;
/* loaded from: classes4.dex */
public final class ForkContentBackupWordBinding implements ViewBinding {
    public final CardView cardWord;
    private final FrameLayout rootView;
    public final AppCompatTextView textWord;

    private ForkContentBackupWordBinding(FrameLayout frameLayout, CardView cardView, AppCompatTextView appCompatTextView) {
        this.rootView = frameLayout;
        this.cardWord = cardView;
        this.textWord = appCompatTextView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ForkContentBackupWordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentBackupWordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3242R.layout.fork_content_backup_word, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentBackupWordBinding bind(View view) {
        int i = C3242R.C3245id.card_word;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
        if (cardView != null) {
            i = C3242R.C3245id.text_word;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView != null) {
                return new ForkContentBackupWordBinding((FrameLayout) view, cardView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
