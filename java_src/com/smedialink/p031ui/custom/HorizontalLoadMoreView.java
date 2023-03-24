package com.smedialink.p031ui.custom;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: HorizontalLoadMoreView.kt */
/* renamed from: com.smedialink.ui.custom.HorizontalLoadMoreView */
/* loaded from: classes3.dex */
public final class HorizontalLoadMoreView extends BaseLoadMoreView implements KoinComponent {
    private final Lazy resourceManager$delegate;

    public HorizontalLoadMoreView() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new HorizontalLoadMoreView$special$$inlined$inject$default$1(this, null, null));
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
        return AdapterUtilsKt.getItemView(parent, C3301R.layout.fork_view_horizontal_load_more);
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3301R.C3304id.load_more_loading_view);
        View findViewById = view.findViewById(C3301R.C3304id.loading_progress);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<ProgressBar>(R.id.loading_progress)");
        ViewExtKt.tintIndeterminateProgress((ProgressBar) findViewById, Theme.getColor("chats_actionBackground"));
        TextView textView = (TextView) view.findViewById(C3301R.C3304id.loading_text);
        textView.setText(getResourceManager().getString(C3301R.string.common_progress_state_title));
        textView.setTextColor(Theme.getColor("chat_messagePanelText"));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3301R.C3304id.load_more_load_complete_view);
        TextView textView = (TextView) view.findViewById(C3301R.C3304id.tv_load_complete);
        textView.setText(getResourceManager().getString(C3301R.string.brvah_load_complete));
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3301R.C3304id.load_more_load_end_view);
        TextView textView = (TextView) view.findViewById(C3301R.C3304id.tv_load_end);
        textView.setText(getResourceManager().getString(C3301R.string.brvah_load_end));
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3301R.C3304id.load_more_load_fail_view);
        TextView textView = (TextView) view.findViewById(C3301R.C3304id.tv_prompt);
        textView.setText(getResourceManager().getString(C3301R.string.brvah_load_failed));
        textView.setTextColor(Theme.getColor("chat_messagePanelText"));
        return view;
    }
}
