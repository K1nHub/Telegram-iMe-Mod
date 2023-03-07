package com.smedialink.p031ui.catalog.tabs.user_channels;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCatalogUserChannelsBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogUserChannelsFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$binding$2 */
/* loaded from: classes3.dex */
public final class CatalogUserChannelsFragment$binding$2 extends Lambda implements Function0<ForkFragmentCatalogUserChannelsBinding> {
    final /* synthetic */ CatalogUserChannelsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogUserChannelsFragment$binding$2(CatalogUserChannelsFragment catalogUserChannelsFragment) {
        super(0);
        this.this$0 = catalogUserChannelsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCatalogUserChannelsBinding invoke() {
        return ForkFragmentCatalogUserChannelsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
