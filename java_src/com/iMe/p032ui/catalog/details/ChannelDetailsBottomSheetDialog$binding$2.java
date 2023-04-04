package com.iMe.p032ui.catalog.details;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentChannelDetailsBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChannelDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.catalog.details.ChannelDetailsBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
public final class ChannelDetailsBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentChannelDetailsBinding> {
    final /* synthetic */ ChannelDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelDetailsBottomSheetDialog$binding$2(ChannelDetailsBottomSheetDialog channelDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = channelDetailsBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentChannelDetailsBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentChannelDetailsBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
