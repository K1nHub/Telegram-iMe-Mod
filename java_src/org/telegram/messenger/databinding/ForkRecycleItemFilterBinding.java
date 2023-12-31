package org.telegram.messenger.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.iMe.p030ui.topics.TopicView;
import java.util.Objects;
import org.telegram.messenger.C3632R;
/* loaded from: classes4.dex */
public final class ForkRecycleItemFilterBinding implements ViewBinding {
    private ForkRecycleItemFilterBinding(TopicView topicView, TopicView topicView2) {
    }

    public static ForkRecycleItemFilterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ForkRecycleItemFilterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3632R.layout.fork_recycle_item_filter, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ForkRecycleItemFilterBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        TopicView topicView = (TopicView) view;
        return new ForkRecycleItemFilterBinding(topicView, topicView);
    }
}
