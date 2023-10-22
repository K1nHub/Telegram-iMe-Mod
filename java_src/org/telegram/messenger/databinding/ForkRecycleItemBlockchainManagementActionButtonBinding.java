package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Cells.TextCell;
/* loaded from: classes4.dex */
public final class ForkRecycleItemBlockchainManagementActionButtonBinding implements ViewBinding {
    private ForkRecycleItemBlockchainManagementActionButtonBinding(TextCell textCell, TextCell textCell2) {
    }

    public static ForkRecycleItemBlockchainManagementActionButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemBlockchainManagementActionButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3630R.layout.fork_recycle_item_blockchain_management_action_button, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemBlockchainManagementActionButtonBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TextCell textCell = (TextCell) view;
        return new ForkRecycleItemBlockchainManagementActionButtonBinding(textCell, textCell);
    }
}
