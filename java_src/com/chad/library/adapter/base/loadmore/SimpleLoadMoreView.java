package com.chad.library.adapter.base.loadmore;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: SimpleLoadMoreView.kt */
/* loaded from: classes.dex */
public final class SimpleLoadMoreView extends BaseLoadMoreView implements KoinComponent {
    private final Lazy resourceManager$delegate;

    public SimpleLoadMoreView() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new SimpleLoadMoreView$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getRootView(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return AdapterUtilsKt.getItemView(parent, C3290R.layout.fork_brvah_quick_view_load_more);
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3290R.C3293id.load_more_loading_view);
        View findViewById = view.findViewById(C3290R.C3293id.loading_progress);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<ProgressBar>(R.id.loading_progress)");
        ViewExtKt.tintIndeterminateProgress((ProgressBar) findViewById, Theme.getColor(Theme.key_chats_actionBackground));
        TextView textView = (TextView) view.findViewById(C3290R.C3293id.loading_text);
        textView.setText(getResourceManager().getString(C3290R.string.common_progress_state_title));
        textView.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3290R.C3293id.load_more_load_complete_view);
        TextView textView = (TextView) view.findViewById(C3290R.C3293id.tv_load_complete);
        textView.setText(getResourceManager().getString(C3290R.string.brvah_load_complete));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3290R.C3293id.load_more_load_end_view);
        TextView textView = (TextView) view.findViewById(C3290R.C3293id.tv_load_end);
        textView.setText(getResourceManager().getString(C3290R.string.brvah_load_end));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3290R.C3293id.load_more_load_fail_view);
        TextView textView = (TextView) view.findViewById(C3290R.C3293id.tv_prompt);
        textView.setText(getResourceManager().getString(C3290R.string.brvah_load_failed));
        textView.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        return view;
    }
}
