package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.iMe.p030ui.custom.BigActionButton;
import org.telegram.messenger.C3630R;
/* loaded from: classes4.dex */
public final class ForkContentCryptoboxStatusInfoBinding implements ViewBinding {
    public final BigActionButton buttonOk;
    public final RecyclerView recyclerStatuses;
    private final NestedScrollView rootView;
    public final AppCompatTextView textTitle;

    private ForkContentCryptoboxStatusInfoBinding(NestedScrollView nestedScrollView, BigActionButton bigActionButton, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.rootView = nestedScrollView;
        this.buttonOk = bigActionButton;
        this.recyclerStatuses = recyclerView;
        this.textTitle = appCompatTextView;
    }

    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static ForkContentCryptoboxStatusInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkContentCryptoboxStatusInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_content_cryptobox_status_info, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkContentCryptoboxStatusInfoBinding bind(View view) {
        int i = C3630R.C3633id.button_ok;
        BigActionButton bigActionButton = (BigActionButton) ViewBindings.findChildViewById(view, i);
        if (bigActionButton != null) {
            i = C3630R.C3633id.recycler_statuses;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                i = C3630R.C3633id.text_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                if (appCompatTextView != null) {
                    return new ForkContentCryptoboxStatusInfoBinding((NestedScrollView) view, bigActionButton, recyclerView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
