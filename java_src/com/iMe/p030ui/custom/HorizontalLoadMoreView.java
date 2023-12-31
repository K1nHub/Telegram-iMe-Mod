package com.iMe.p030ui.custom;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: HorizontalLoadMoreView.kt */
/* renamed from: com.iMe.ui.custom.HorizontalLoadMoreView */
/* loaded from: classes3.dex */
public final class HorizontalLoadMoreView extends BaseLoadMoreView implements KoinComponent {
    private final Lazy resourceManager$delegate;

    public HorizontalLoadMoreView() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.HorizontalLoadMoreView$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
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
        return AdapterUtilsKt.getItemView(parent, C3632R.layout.fork_view_horizontal_load_more);
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3632R.C3635id.load_more_loading_view);
        View findViewById = view.findViewById(C3632R.C3635id.loading_progress);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<ProgressBar>(R.id.loading_progress)");
        ViewExtKt.tintIndeterminateProgress((ProgressBar) findViewById, Theme.getColor(Theme.key_chats_actionBackground));
        TextView textView = (TextView) view.findViewById(C3632R.C3635id.loading_text);
        textView.setText(getResourceManager().getString(C3632R.string.common_progress_state_title));
        textView.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3632R.C3635id.load_more_load_complete_view);
        TextView textView = (TextView) view.findViewById(C3632R.C3635id.tv_load_complete);
        textView.setText(getResourceManager().getString(C3632R.string.brvah_load_complete));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3632R.C3635id.load_more_load_end_view);
        TextView textView = (TextView) view.findViewById(C3632R.C3635id.tv_load_end);
        textView.setText(getResourceManager().getString(C3632R.string.brvah_load_end));
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        return view;
    }

    @Override // com.chad.library.adapter.base.loadmore.BaseLoadMoreView
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        View view = holder.getView(C3632R.C3635id.load_more_load_fail_view);
        TextView textView = (TextView) view.findViewById(C3632R.C3635id.tv_prompt);
        textView.setText(getResourceManager().getString(C3632R.string.brvah_load_failed));
        textView.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        return view;
    }
}
